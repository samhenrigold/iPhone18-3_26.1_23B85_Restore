unint64_t sub_1CF4E901C()
{
  result = qword_1EC4C09A0;
  if (!qword_1EC4C09A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C09A0);
  }

  return result;
}

double keypath_getTm@<D0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;

  return result;
}

void keypath_get_3Tm(void *a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1 + *a2;
  swift_beginAccess();
  v5 = *(v4 + 8);
  *a3 = *v4;
  *(a3 + 8) = v5;
}

void keypath_set_4Tm(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *a2 + *a5;
  swift_beginAccess();
  *v7 = v5;
  *(v7 + 8) = v6;
}

double keypath_get_9Tm@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);

  return result;
}

id keypath_get_13Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

uint64_t getEnumTagSinglePayload for FPCKPhase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FPCKPhase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1CF4E938C(uint64_t a1)
{
  result = sub_1CF9E5CF8();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1CF4E9EB0()
{
  result = qword_1EC4C0A88;
  if (!qword_1EC4C0A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0A88);
  }

  return result;
}

unint64_t sub_1CF4E9F08()
{
  result = qword_1EC4C0A90;
  if (!qword_1EC4C0A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0A90);
  }

  return result;
}

unint64_t sub_1CF4E9F60()
{
  result = qword_1EC4C0A98;
  if (!qword_1EC4C0A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0A98);
  }

  return result;
}

unint64_t sub_1CF4E9FB8()
{
  result = qword_1EC4C0AA0;
  if (!qword_1EC4C0AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0AA0);
  }

  return result;
}

unint64_t sub_1CF4EA010()
{
  result = qword_1EC4C0AA8;
  if (!qword_1EC4C0AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0AA8);
  }

  return result;
}

unint64_t sub_1CF4EA068()
{
  result = qword_1EC4C0AB0;
  if (!qword_1EC4C0AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0AB0);
  }

  return result;
}

unint64_t sub_1CF4EA0C0()
{
  result = qword_1EC4C0AB8;
  if (!qword_1EC4C0AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0AB8);
  }

  return result;
}

unint64_t sub_1CF4EA118()
{
  result = qword_1EC4C0AC0;
  if (!qword_1EC4C0AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0AC0);
  }

  return result;
}

unint64_t sub_1CF4EA170()
{
  result = qword_1EC4C0AC8;
  if (!qword_1EC4C0AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0AC8);
  }

  return result;
}

unint64_t sub_1CF4EA1C8()
{
  result = qword_1EC4C0AD0;
  if (!qword_1EC4C0AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0AD0);
  }

  return result;
}

unint64_t sub_1CF4EA220()
{
  result = qword_1EC4C0AD8;
  if (!qword_1EC4C0AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0AD8);
  }

  return result;
}

unint64_t sub_1CF4EA278()
{
  result = qword_1EC4C0AE0;
  if (!qword_1EC4C0AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0AE0);
  }

  return result;
}

unint64_t sub_1CF4EA2D0()
{
  result = qword_1EC4C0AE8;
  if (!qword_1EC4C0AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0AE8);
  }

  return result;
}

unint64_t sub_1CF4EA328()
{
  result = qword_1EC4C0AF0;
  if (!qword_1EC4C0AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0AF0);
  }

  return result;
}

unint64_t sub_1CF4EA380()
{
  result = qword_1EC4C0AF8;
  if (!qword_1EC4C0AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0AF8);
  }

  return result;
}

unint64_t sub_1CF4EA3D8()
{
  result = qword_1EC4C0B00;
  if (!qword_1EC4C0B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0B00);
  }

  return result;
}

unint64_t sub_1CF4EA430()
{
  result = qword_1EC4C0B08;
  if (!qword_1EC4C0B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0B08);
  }

  return result;
}

unint64_t sub_1CF4EA488()
{
  result = qword_1EC4C0B10;
  if (!qword_1EC4C0B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0B10);
  }

  return result;
}

unint64_t sub_1CF4EA4DC()
{
  result = qword_1EC4C0D50;
  if (!qword_1EC4C0D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0D50);
  }

  return result;
}

uint64_t sub_1CF4EA570()
{
  v1 = *(v0 + 8);

  return v1;
}

void sub_1CF4EA5A0(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2)
{
  v3 = *v2;

  MEMORY[0x1D3868CC0](10, 0xE100000000000000);
  v11 = sub_1CF9E6888();
  a2, v4, v5, v6, v7, v8, v9, v10;
  [v3 put_];
}

uint64_t sub_1CF4EA624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v13 = *(v5 + 8);
  v14 = *(v5 + 16);
  v11 = *v5;

  result = MEMORY[0x1D3868CC0](a1, a2);
  a5[3] = a3;
  a5[4] = a4;
  *a5 = v11;
  a5[1] = v13;
  a5[2] = v14;
  return result;
}

id sub_1CF4EA6B0@<X0>(void *a1@<X0>, void *a2@<X1>, id *a3@<X8>)
{
  v5 = *v3;
  *a3 = *v3;
  a3[1] = a1;
  a3[3] = &type metadata for SubFPCTLTermDumper;
  a3[4] = &off_1F4C03038;
  a3[2] = a2;

  return v5;
}

void sub_1CF4EA71C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ItemMetadata(319);
    if (v2 <= 0x3F)
    {
      sub_1CF24F8BC(319, &unk_1EC4C0F60, &type metadata for DocumentContent);
      if (v3 <= 0x3F)
      {
        sub_1CF24F8BC(319, &qword_1EDEA3740, MEMORY[0x1E69E6530]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1CF4EA80C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_1CF9E5CF8() - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v6 + 80);
  if (v9 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = *(v8 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  if (v9)
  {
    v15 = 7;
  }

  else
  {
    v15 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = v10 + v11;
  v17 = v10 + 7;
  v18 = *(v8 + 80);
  v19 = *(v8 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v20 = v18 + 16;
  v21 = v18 + 12;
  if (v14 >= a2)
  {
    goto LABEL_34;
  }

  v12 = *(v8 + 64);
  v22 = ((((v20 + ((v17 + (v16 & ~v11)) & 0xFFFFFFFFFFFFFFF8)) & v19) + ((((((((((v15 + v12 + ((v18 + ((((((((v12 + ((v12 + v18 + (v21 & ~v18)) & ~v18) + 12) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8) + 21) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 10) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 10;
  if (v22 <= 3)
  {
    v23 = ((a2 - v14 + 0xFFFF) >> 16) + 1;
  }

  else
  {
    v23 = 2;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v26 = *(a1 + v22);
      if (!*(a1 + v22))
      {
        goto LABEL_34;
      }
    }

    else
    {
      v26 = *(a1 + v22);
      if (!v26)
      {
        goto LABEL_34;
      }
    }

LABEL_30:
    v28 = (v26 - 1) << (8 * v22);
    if (v22 <= 3)
    {
      v29 = *a1;
    }

    else
    {
      v28 = 0;
      v29 = *a1;
    }

    return v14 + (v29 | v28) + 1;
  }

  if (v25)
  {
    v26 = *(a1 + v22);
    if (*(a1 + v22))
    {
      goto LABEL_30;
    }
  }

LABEL_34:
  if (v7 == v14)
  {
    v30 = *(v6 + 48);

    return v30(a1, v7, v5);
  }

  else
  {
    v31 = (v17 + ((a1 + v16) & ~v11)) & 0xFFFFFFFFFFFFFFF8;
    if ((v13 & 0x80000000) != 0)
    {
      v33 = *(v8 + 48);

      return v33((v21 + ((v20 + v31) & v19)) & ~v18);
    }

    else
    {
      v32 = *(v31 + 8);
      if (v32 >= 0xFFFFFFFF)
      {
        LODWORD(v32) = -1;
      }

      return (v32 + 1);
    }
  }
}

void sub_1CF4EAB28(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v33 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_1CF9E5CF8() - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v8 + 80);
  if (v11 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  if (v9 <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v9;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v10 + 80);
  v18 = *(v10 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v19 = ((v17 + ((((((((*(v10 + 64) + ((*(v10 + 64) + v17 + ((v17 + 12) & ~v17)) & ~v17) + 12) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8) + 21) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 10) & ~v17) + *(v10 + 64);
  if (v11)
  {
    v20 = ((v17 + ((((((((*(v10 + 64) + ((*(v10 + 64) + v17 + ((v17 + 12) & ~v17)) & ~v17) + 12) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8) + 21) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 10) & ~v17) + *(v10 + 64);
  }

  else
  {
    v20 = v19 + 1;
  }

  v21 = ((((v17 + 16 + ((v12 + 7 + ((v12 + v13) & ~v13)) & 0xFFFFFFFFFFFFFFF8)) & v18) + ((((((((((v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 10;
  if (v16 >= a3)
  {
    v24 = 0;
    if (v16 >= a2)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v21 <= 3)
    {
      v22 = ((a3 - v16 + 0xFFFF) >> 16) + 1;
    }

    else
    {
      v22 = 2;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    if (v16 >= a2)
    {
LABEL_26:
      if (v24 > 1)
      {
        if (v24 != 2)
        {
          *(a1 + v21) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_41;
        }

        *(a1 + v21) = 0;
      }

      else if (v24)
      {
        *(a1 + v21) = 0;
        if (!a2)
        {
          return;
        }

LABEL_41:
        if (v9 == v16)
        {
          v27 = *(v33 + 56);

          v27(a1, a2, v9, v7);
        }

        else
        {
          v28 = ((v12 + 7 + ((a1 + v12 + v13) & ~v13)) & 0xFFFFFFFFFFFFFFF8);
          if ((v15 & 0x80000000) != 0)
          {
            v29 = ((v28 + v17 + 16) & v18);
            if (v14 >= a2)
            {
              v32 = *(v10 + 56);

              v32((v29 + v17 + 12) & ~v17, a2);
            }

            else
            {
              v30 = (((((((((v19 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 19) & 0xFFFFFFF8) + 25) & 0xFFFFFFF8;
              if (v30 != -16)
              {
                v31 = ~v14 + a2;
                bzero(v29, (v30 + 16));
                *v29 = v31;
              }
            }
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *v28 = a2 & 0x7FFFFFFF;
            v28[1] = 0;
          }

          else
          {
            v28[1] = (a2 - 1);
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }
  }

  v25 = ~v16 + a2;
  bzero(a1, v21);
  if (v21 <= 3)
  {
    v26 = HIWORD(v25) + 1;
  }

  else
  {
    v26 = 1;
  }

  if (v21 <= 3)
  {
    *a1 = v25;
    if (v24 > 1)
    {
LABEL_36:
      if (v24 == 2)
      {
        *(a1 + v21) = v26;
      }

      else
      {
        *(a1 + v21) = v26;
      }

      return;
    }
  }

  else
  {
    *a1 = v25;
    if (v24 > 1)
    {
      goto LABEL_36;
    }
  }

  if (v24)
  {
    *(a1 + v21) = v26;
  }
}

uint64_t sub_1CF4EAF10(int *a1)
{
  v3 = *(v1 + a1[10]);
  if ((~v3 & 0xF000000000000007) != 0)
  {

    sub_1CF18B5CC(v3);
    v7 = v6;
    MEMORY[0x1D3868CC0]();
    sub_1CF4EB118(v3);
    v7, v8, v9, v10, v11, v12, v13, v14;
    v4 = 32;
    v5 = 0xE100000000000000;
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  if (*(v1 + a1[11] + 8))
  {
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  else
  {
    v17 = sub_1CF9E7F98();
    v19 = v18;
    MEMORY[0x1D3868CC0](v17);
    v19, v20, v21, v22, v23, v24, v25, v26;
    v15 = 0x49657571696E7520;
    v16 = 0xEA00000000003A44;
  }

  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](14953, 0xE200000000000000);
  sub_1CF9E7FD8();
  MEMORY[0x1D3868CC0](574254624, 0xE400000000000000);
  MEMORY[0x1D3868CC0](*(v1 + a1[8]), *(v1 + a1[8] + 8));
  MEMORY[0x1D3868CC0](980426786, 0xE400000000000000);
  sub_1CF9E7FD8();
  MEMORY[0x1D3868CC0](32, 0xE100000000000000);
  v27 = sub_1CF0720C8();
  v29 = v28;
  MEMORY[0x1D3868CC0](v27);
  v29, v30, v31, v32, v33, v34, v35, v36;
  MEMORY[0x1D3868CC0](v4, v5);
  v5, v37, v38, v39, v40, v41, v42, v43;
  MEMORY[0x1D3868CC0](v15, v16);
  v16, v44, v45, v46, v47, v48, v49, v50;
  return 0;
}

double sub_1CF4EB118(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }

  return result;
}

void sub_1CF4EB130(void *a1, uint64_t a2)
{
  v3 = v2;
  sub_1CF9E7948();
  0xE000000000000000, v5, v6, v7, v8, v9, v10, v11;
  v12 = [v2 description];
  v13 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v15 = v14;

  MEMORY[0x1D3868CC0](v13, v15);
  v15, v16, v17, v18, v19, v20, v21, v22;
  MEMORY[0x1D3868CC0](0x3A64695B20, 0xE500000000000000);
  v79 = v3;
  v23 = NSFileProviderItemIdentifier.description.getter(*&v3[OBJC_IVAR____TtC18FileProviderDaemon19LocalRootEnumerator_rootID]);
  v25 = v24;
  MEMORY[0x1D3868CC0](v23);
  v25, v26, v27, v28, v29, v30, v31, v32;
  MEMORY[0x1D3868CC0](0x3A6D6F726620, 0xE600000000000000);
  v77 = a2;
  v33 = NSFileProviderPage.description.getter(a2);
  v35 = v34;
  MEMORY[0x1D3868CC0](v33);
  v35, v36, v37, v38, v39, v40, v41, v42;
  MEMORY[0x1D3868CC0](93, 0xE100000000000000);
  sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v43 = qword_1EDEBB5A0;
  v44 = sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1CF9FA440;
  sub_1CEFFD0A8();
  v46 = sub_1CF9E7718();
  v48 = v47;
  v49 = MEMORY[0x1E69E6158];
  *(v45 + 56) = MEMORY[0x1E69E6158];
  v50 = sub_1CEFD51C4();
  *(v45 + 32) = v46;
  *(v45 + 40) = v48;
  v51 = v43;
  *(v45 + 96) = v49;
  *(v45 + 104) = v50;
  *(v45 + 64) = v50;
  *(v45 + 72) = 0xD000000000000015;
  *(v45 + 80) = 0x80000001CFA50130;

  sub_1CF9E6018("[DEBUG] ┏%@ %@", 16, 0, &dword_1CEFC7000, v43, v44, v45);
  v45, v52, v53, v54, v55, v56, v57, v58;
  sub_1CF4EB4B0(v77, v79, a1);
  0x80000001CFA50130, v59, v60, v61, v62, v63, v64, v65;
  v66 = sub_1CF9E7298();
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_1CF9FA450;
  v68 = sub_1CF9E7718();
  *(v67 + 56) = v49;
  *(v67 + 64) = v50;
  *(v67 + 32) = v68;
  *(v67 + 40) = v69;
  sub_1CF9E6018("[DEBUG] ┗%@", 13, 0, &dword_1CEFC7000, v51, v66, v67);
  v67, v70, v71, v72, v73, v74, v75, v76;
}

void sub_1CF4EB4B0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v130 = a3;
  v131 = a2;
  v132 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v145 = v128 - v6;
  v7 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v144 = (v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v143 = v128 - v10;
  v142 = sub_1CF9E5A58();
  v11 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v141 = v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v140 = v128 - v14;
  v15 = type metadata accessor for LocalContainer(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v139 = v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v19 = sub_1CF9E6888();
  v20 = [v18 initWithSuiteName_];

  if (v20)
  {
    v21 = sub_1CF9E6888();
    v22 = [v20 BOOLForKey_];

    if (v22)
    {
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      v23 = qword_1EDEBB5A0;
      v24 = sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1CF9FA450;
      *(v25 + 56) = MEMORY[0x1E69E6158];
      *(v25 + 64) = sub_1CEFD51C4();
      *(v25 + 32) = 0x1000000000000088;
      *(v25 + 40) = 0x80000001CFA50150;
      sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v23, v24, v25);
      v25, v26, v27, v28, v29, v30, v31, v32;
      goto LABEL_31;
    }
  }

  v33 = sub_1CF9E5B88();
  v35 = v34;
  v36 = sub_1CF9E5B48();
  sub_1CEFE4714(v33, v35);
  sub_1CF4EC20C();
  if ((sub_1CF9E7568() & 1) == 0 && (sub_1CF9E7568() & 1) == 0)
  {

LABEL_31:
    v117 = v130;
    goto LABEL_32;
  }

  v129 = v36;
  v37 = v131 + OBJC_IVAR____TtC18FileProviderDaemon19LocalRootEnumerator_containerSnapshot;
  swift_beginAccess();
  v38 = *(v37 + *(type metadata accessor for LocalContainerSnapshot(0) + 32));
  v39 = MEMORY[0x1E69E7CC0];
  v147 = MEMORY[0x1E69E7CC0];
  v40 = *v38->tree;
  if (v40)
  {
    v128[1] = v4;
    v41 = *(v15 + 28);
    v137 = *(v15 + 24);
    v138 = v41;
    v42 = v38 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v43 = *(v16 + 72);
    v135 = (v11 + 16);
    v136 = v43;
    v134 = (v11 + 8);
    v128[0] = v38;

    v133 = MEMORY[0x1E69E7CC0];
    v44 = v140;
    do
    {
      v146 = v40;
      v52 = v139;
      sub_1CF00BE10(v42, v139, type metadata accessor for LocalContainer);
      v53 = *v135;
      v54 = v142;
      (*v135)(v44, v52 + v138, v142);
      v55 = v143;
      sub_1CF00BE10(v52 + v137, v143, type metadata accessor for LocalDomain);
      v56 = v141;
      v53(v141, v44, v54);
      v57 = v144;
      sub_1CF00BE10(v55, v144, type metadata accessor for LocalDomain);
      v58 = type metadata accessor for VFSItem(0);
      v59 = v145;
      (*(*(v58 - 8) + 56))(v145, 1, 1, v58);
      v60 = objc_allocWithZone(type metadata accessor for LocalItem(0));
      v61 = sub_1CF001704(v56, v57, v59);
      sub_1CF00F2A4(v55, type metadata accessor for LocalDomain);
      (*v134)(v44, v54);
      v62 = sub_1CF00F2A4(v52, type metadata accessor for LocalContainer);
      if (v61)
      {
        MEMORY[0x1D3868FA0](v62);
        if (*((v147 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v147 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1CF9E6D88();
        }

        sub_1CF9E6DE8();
        v133 = v147;
      }

      v42 += v136;
      v40 = v146 - 1;
    }

    while (v146 != 1);
    v128[0], v45, v46, v47, v48, v49, v50, v51;
    v39 = v133;
  }

  v147 = 0;
  v148 = 0xE000000000000000;
  sub_1CF9E7948();
  v148, v63, v64, v65, v66, v67, v68, v69;
  v147 = 0x20676E69646E6573;
  v148 = 0xE800000000000000;
  if (v39 >> 62)
  {
    v70 = sub_1CF9E7818();
  }

  else
  {
    v70 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v149 = v70;
  v71 = sub_1CF9E7F98();
  v73 = v72;
  MEMORY[0x1D3868CC0](v71);
  v73, v74, v75, v76, v77, v78, v79, v80;
  MEMORY[0x1D3868CC0](0x6E6961746E6F6320, 0xEA00000000007265);
  if (v70 == 1)
  {
    v81 = 0;
  }

  else
  {
    v81 = 115;
  }

  if (v70 == 1)
  {
    v82 = 0xE000000000000000;
  }

  else
  {
    v82 = 0xE100000000000000;
  }

  MEMORY[0x1D3868CC0](v81, v82);
  v82, v83, v84, v85, v86, v87, v88, v89;
  v90 = v147;
  v91 = v148;
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v92 = qword_1EDEBB5A0;
  v93 = sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_1CF9FA450;
  *(v94 + 56) = MEMORY[0x1E69E6158];
  *(v94 + 64) = sub_1CEFD51C4();
  *(v94 + 32) = v90;
  *(v94 + 40) = v91;
  sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v92, v93, v94);
  v94, v95, v96, v97, v98, v99, v100, v101;

  if (v39 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF580, &qword_1CFA01DB0);
    v109 = sub_1CF9E7B78();
    v39, v110, v111, v112, v113, v114, v115, v116;
  }

  else
  {
    sub_1CF9E8068();
    v109 = v39;
  }

  v117 = v130;
  v118 = v129;
  v39, v102, v103, v104, v105, v106, v107, v108;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF580, &qword_1CFA01DB0);
  v119 = sub_1CF9E6D28();
  v109, v120, v121, v122, v123, v124, v125, v126;
  [v117 didEnumerateItems_];

LABEL_32:
  v127 = *(v131 + OBJC_IVAR____TtC18FileProviderDaemon19LocalRootEnumerator_fileEnumerator);
  sub_1CF4F6AD0(v117, v132);
}

uint64_t sub_1CF4EC0B0(uint64_t a1)
{
  result = type metadata accessor for LocalDomain(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for LocalContainerSnapshot(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1CF4EC1A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0FE0, qword_1CFA07EC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1CF4EC20C()
{
  result = qword_1EDEAB510;
  if (!qword_1EDEAB510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEAB510);
  }

  return result;
}

uint64_t sub_1CF4EC270()
{
  sub_1CF9E81D8();
  sub_1CF9E69C8();
  0xE100000000000000, v0, v1, v2, v3, v4, v5, v6;
  return sub_1CF9E8228();
}

void sub_1CF4EC2CC(uint64_t a1)
{
  sub_1CF9E69C8();

  0xE100000000000000, v1, v2, v3, v4, v5, v6, v7;
}

uint64_t sub_1CF4EC30C(uint64_t a1)
{
  sub_1CF9E81D8();
  sub_1CF9E69C8();
  0xE100000000000000, v1, v2, v3, v4, v5, v6, v7;
  return sub_1CF9E8228();
}

unint64_t sub_1CF4EC364@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CF4F0080(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1CF4EC3B0@<X0>(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CF4F0080(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CF4EC3D8(uint64_t a1)
{
  v2 = sub_1CF00F0FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF4EC414(uint64_t a1)
{
  v2 = sub_1CF00F0FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1CF4EC450(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C10D8, &qword_1CFA080E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF00F0FC();
  sub_1CF9E82A8();
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;
  LOBYTE(v26) = 0;
  sub_1CF9E7EB8();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
    v10, v18, v19, v20, v21, v22, v23, v24;
  }

  else
  {
    v10, v11, v12, v13, v14, v15, v16, v17;
    v26 = *(v3 + 8);
    v25[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C10D0, &unk_1CF9FEEF0);
    sub_1CF00F168(&qword_1EC4C10E0, MEMORY[0x1E69E6160], MEMORY[0x1E69E7C70]);
    sub_1CF9E7F08();
    type metadata accessor for LocalContainer(0);
    LOBYTE(v26) = 2;
    sub_1CF9E5A58();
    sub_1CF00CC8C(&qword_1EC4BEAA0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1CF9E7F08();
    LOBYTE(v26) = 3;
    type metadata accessor for LocalDomain(0);
    sub_1CF00CC8C(&unk_1EC4C1090, type metadata accessor for LocalDomain, &unk_1CFA08590);
    sub_1CF9E7F08();
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1CF4EC72C()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](60, 0xE100000000000000);
  MEMORY[0x1D3868CC0](0x6E6F436C61636F4CLL, 0xEE0072656E696174);
  MEMORY[0x1D3868CC0](58, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C10F0, &unk_1CFA080E8);
  sub_1CF9E7B58();
  MEMORY[0x1D3868CC0](979659040, 0xE400000000000000);
  v1 = NSFileProviderItemIdentifier.description.getter(*v0);
  v3 = v2;
  MEMORY[0x1D3868CC0](v1);
  v3, v4, v5, v6, v7, v8, v9, v10;
  MEMORY[0x1D3868CC0](574255136, 0xE400000000000000);
  type metadata accessor for LocalContainer(0);
  v11 = sub_1CF9E5A18();
  v13 = v12;
  MEMORY[0x1D3868CC0](v11);
  v13, v14, v15, v16, v17, v18, v19, v20;
  MEMORY[0x1D3868CC0](15906, 0xE200000000000000);
  return 0;
}

uint64_t sub_1CF4EC878()
{
  sub_1CF9E81D8();
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v1 = v0;
  sub_1CF9E69C8();
  v1, v2, v3, v4, v5, v6, v7, v8;
  sub_1CF9E59F8();
  return sub_1CF9E8228();
}

uint64_t sub_1CF4EC8F4(uint64_t a1)
{
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v2 = v1;
  sub_1CF9E69C8();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return sub_1CF9E59F8();
}

uint64_t sub_1CF4EC958(uint64_t a1)
{
  sub_1CF9E81D8();
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v2 = v1;
  sub_1CF9E69C8();
  v2, v3, v4, v5, v6, v7, v8, v9;
  sub_1CF9E59F8();
  return sub_1CF9E8228();
}

uint64_t sub_1CF4EC9F0()
{
  v1 = v0;
  v147 = *MEMORY[0x1E69E9840];
  v2 = sub_1CF9E53C8();
  v141 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v140 = &v137 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v137 - v5;
  v142 = sub_1CF9E5A58();
  v144 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v8 = &v137 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v137 - v10;
  if ((*(v1 + *(type metadata accessor for LocalContainerSnapshot(0) + 24)) & 1) == 0)
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/LocalContainer.swift", 100, 2, 419);
  }

  sub_1CF00C970(v1, v11);
  v143 = v11;
  sub_1CF9E5988();
  v12 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v13 = sub_1CF9E5928();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF610, &qword_1CFA01DD0);
  inited = swift_initStackObject();
  v15 = *MEMORY[0x1E696A370];
  *(inited + 32) = *MEMORY[0x1E696A370];
  v139 = xmmword_1CF9FA450;
  *(inited + 16) = xmmword_1CF9FA450;
  *(inited + 64) = MEMORY[0x1E69E6530];
  *(inited + 40) = 493;
  v16 = v15;
  v17 = sub_1CF4E2F64(inited);
  swift_setDeallocating();
  sub_1CEFCCC44(inited + 32, &unk_1EC4C1120, &qword_1CFA07BA0);
  type metadata accessor for FileAttributeKey(0);
  sub_1CF00CC8C(&unk_1EC4BF620, type metadata accessor for FileAttributeKey, &unk_1CF9F9AE0);
  v18 = sub_1CF9E6618();
  v17, v19, v20, v21, v22, v23, v24, v25;
  v145 = 0;
  LODWORD(v17) = [v12 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:v18 error:&v145];

  v26 = v145;
  if (v17)
  {
    sub_1CF9E56C8();
    swift_allocObject();
    v27 = v26;
    sub_1CF9E56B8();
    sub_1CF00CC8C(&unk_1EC4C1130, type metadata accessor for LocalContainerSnapshot, &unk_1CFA08060);
    v96 = sub_1CF9E56A8();
    v98 = v97;
    v99 = v143;
    v100 = sub_1CF9E5BB8();
    v138 = v98;
    sub_1CF7E2388(v100);
    v145 = 0;
    v146 = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0x2065746F7277, 0xE600000000000000);
    v101 = sub_1CF9E5AB8();
    v103 = v102;
    MEMORY[0x1D3868CC0](v101);
    v103, v104, v105, v106, v107, v108, v109, v110;
    MEMORY[0x1D3868CC0](0x6B736964206E6F20, 0xEC00000020746120);
    sub_1CF00CC8C(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v111 = v142;
    v112 = sub_1CF9E7F98();
    v114 = v113;
    MEMORY[0x1D3868CC0](v112);
    v114, v115, v116, v117, v118, v119, v120, v121;
    MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA504B0);
    MEMORY[0x1D3868CC0](*(v1 + 32), *(v1 + 40));
    MEMORY[0x1D3868CC0](0x6E69616D6F642022, 0xE800000000000000);
    v122 = v96;
    v123 = v145;
    v124 = v146;
    v125 = v99;
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    v126 = qword_1EDEBB5A0;
    v127 = sub_1CF9E7298();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v128 = swift_allocObject();
    *(v128 + 16) = v139;
    *(v128 + 56) = MEMORY[0x1E69E6158];
    *(v128 + 64) = sub_1CEFD51C4();
    *(v128 + 32) = v123;
    *(v128 + 40) = v124;
    sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v126, v127, v128);
    v128, v129, v130, v131, v132, v133, v134, v135;
    sub_1CEFE4714(v122, v138);

    v136 = *(v144 + 8);
    v136(v8, v111);
    return (v136)(v125, v111);
  }

  else
  {
    v28 = v145;
    v29 = sub_1CF9E57F8();

    swift_willThrow();
    v30 = *(v144 + 8);
    v31 = v8;
    v32 = v142;
    v30(v31, v142);
    v145 = 0;
    v146 = 0xE000000000000000;
    sub_1CF9E7948();
    v146, v33, v34, v35, v36, v37, v38, v39;
    v145 = 0xD000000000000017;
    v146 = 0x80000001CFA50490;
    sub_1CF9E5A18();
    v41 = v40;
    v42 = sub_1CF9E6888();
    v41, v43, v44, v45, v46, v47, v48, v49;
    v50 = [v42 fp_prettyPath];

    v51 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v53 = v52;

    MEMORY[0x1D3868CC0](v51, v53);
    v53, v54, v55, v56, v57, v58, v59, v60;
    v61 = v145;
    v62 = v146;
    v145 = v29;
    v63 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    if (swift_dynamicCast())
    {
      v64 = *(v141 + 8);
      v141 += 8;
      *&v139 = v64;
      v64(v6, v2);
      v145 = v29;
      v65 = v29;
      swift_dynamicCast();
      sub_1CF00CC8C(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      sub_1CF9E57A8();
      v66 = sub_1CF9E6148();
      if (sub_1CF008830(v66, MEMORY[0x1E69E7CD0]))
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        v67 = qword_1EDEBB5A0;
        v68 = sub_1CF9E7298();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v69 = swift_allocObject();
        *(v69 + 16) = xmmword_1CF9FA440;
        *(v69 + 56) = MEMORY[0x1E69E6158];
        *(v69 + 64) = sub_1CEFD51C4();
        *(v69 + 32) = v61;
        *(v69 + 40) = v62;
        v70 = v140;
        sub_1CF9E57A8();
        v71 = sub_1CF9E6148();
        v72 = MEMORY[0x1E69E7358];
        *(v69 + 96) = MEMORY[0x1E69E72F0];
        *(v69 + 104) = v72;
        *(v69 + 72) = v71;
        sub_1CF9E6018("[DEBUG] %@ %{errno}d", 20, 2, &dword_1CEFC7000, v67, v68, v69);
      }

      else
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        v92 = qword_1EDEBB5A0;
        v93 = sub_1CF9E72A8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v69 = swift_allocObject();
        *(v69 + 16) = xmmword_1CF9FA440;
        *(v69 + 56) = MEMORY[0x1E69E6158];
        *(v69 + 64) = sub_1CEFD51C4();
        *(v69 + 32) = v61;
        *(v69 + 40) = v62;
        v70 = v140;
        sub_1CF9E57A8();
        v94 = sub_1CF9E6148();
        v95 = MEMORY[0x1E69E7358];
        *(v69 + 96) = MEMORY[0x1E69E72F0];
        *(v69 + 104) = v95;
        *(v69 + 72) = v94;
        sub_1CF9E6018("[ERROR] %@ %{errno}d", 20, 2, &dword_1CEFC7000, v92, v93, v69);
      }

      v69, v73, v74, v75, v76, v77, v78, v79;

      v30(v143, v142);
      return (v139)(v70, v2);
    }

    else
    {
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      v80 = qword_1EDEBB5A0;
      v81 = sub_1CF9E72A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_1CF9FA440;
      *(v82 + 56) = MEMORY[0x1E69E6158];
      *(v82 + 64) = sub_1CEFD51C4();
      *(v82 + 32) = v61;
      *(v82 + 40) = v62;
      v83 = sub_1CF9E57E8();
      *(v82 + 96) = sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
      *(v82 + 104) = sub_1CF326DD0();
      *(v82 + 72) = v83;
      sub_1CF9E6018("[ERROR] %@ %@", 13, 2, &dword_1CEFC7000, v80, v81, v82);
      v82, v84, v85, v86, v87, v88, v89, v90;

      return (v30)(v143, v32);
    }
  }
}

uint64_t sub_1CF4ED57C()
{
  v1 = *v0;
  sub_1CF9E81D8();
  v2 = 0xE200000000000000;
  if (v1 != 2)
  {
    v2 = 0xE100000000000000;
  }

  if (v1 <= 1)
  {
    v3 = 0xE100000000000000;
  }

  else
  {
    v3 = v2;
  }

  sub_1CF9E69C8();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1CF9E8228();
}

void sub_1CF4ED60C(uint64_t a1)
{
  v2 = 0xE200000000000000;
  if (*v1 != 2)
  {
    v2 = 0xE100000000000000;
  }

  if (*v1 <= 1u)
  {
    v3 = 0xE100000000000000;
  }

  else
  {
    v3 = v2;
  }

  sub_1CF9E69C8();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

uint64_t sub_1CF4ED688(uint64_t a1)
{
  v2 = *v1;
  sub_1CF9E81D8();
  v3 = 0xE200000000000000;
  if (v2 != 2)
  {
    v3 = 0xE100000000000000;
  }

  if (v2 <= 1)
  {
    v4 = 0xE100000000000000;
  }

  else
  {
    v4 = v3;
  }

  sub_1CF9E69C8();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1CF9E8228();
}

unint64_t sub_1CF4ED714@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CF4F00CC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1CF4ED744(uint64_t *a1@<X8>)
{
  v2 = 0xE100000000000000;
  v3 = 118;
  v4 = 0xE200000000000000;
  v5 = 30323;
  if (*v1 != 2)
  {
    v5 = 99;
    v4 = 0xE100000000000000;
  }

  if (*v1)
  {
    v3 = 100;
    v2 = 0xE100000000000000;
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

unint64_t sub_1CF4ED790@<X0>(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CF4F00CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CF4ED7B8(uint64_t a1)
{
  v2 = sub_1CF00E0A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF4ED7F4(uint64_t a1)
{
  v2 = sub_1CF00E0A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF4ED830(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1088, &qword_1CFA080C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF00E0A8();
  sub_1CF9E82A8();
  v15 = 0;
  sub_1CF9E7EE8();
  if (!v2)
  {
    v14 = 1;
    type metadata accessor for LocalDomain(0);
    sub_1CF00CC8C(&unk_1EC4C1090, type metadata accessor for LocalDomain, &unk_1CFA08590);
    sub_1CF9E7F08();
    v9 = type metadata accessor for LocalContainerSnapshot(0);
    v13 = 2;
    sub_1CF9E5D98();
    sub_1CF00CC8C(&qword_1EDEAECC8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1CF9E7F08();
    v12 = *(v3 + *(v9 + 32));
    v11[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1080, &qword_1CFA080B8);
    sub_1CF00E98C(&qword_1EC4C10A0, &qword_1EC4C10A8, &unk_1CFA07FA8, MEMORY[0x1E69E6300]);
    sub_1CF9E7F08();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1CF4EDAEC()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](60, 0xE100000000000000);
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA07F10);
  MEMORY[0x1D3868CC0](58, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C10B0, &qword_1CFA080C8);
  sub_1CF9E7B58();
  MEMORY[0x1D3868CC0](32, 0xE100000000000000);
  v1 = type metadata accessor for LocalContainerSnapshot(0);
  sub_1CF9E5D98();
  sub_1CF00CC8C(&qword_1EDEAECB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v2 = sub_1CF9E7F98();
  v4 = v3;
  MEMORY[0x1D3868CC0](v2);
  v4, v5, v6, v7, v8, v9, v10, v11;
  MEMORY[0x1D3868CC0](32, 0xE100000000000000);
  v12 = *(v0 + *(v1 + 32));
  v13 = sub_1CF9E7F98();
  v15 = v14;
  MEMORY[0x1D3868CC0](v13);
  v15, v16, v17, v18, v19, v20, v21, v22;
  MEMORY[0x1D3868CC0](0x6E6961746E6F6320, 0xEA00000000007265);
  if (*(v12 + 16) == 1)
  {
    v23 = 0;
  }

  else
  {
    v23 = 115;
  }

  if (*(v12 + 16) == 1)
  {
    v24 = 0xE000000000000000;
  }

  else
  {
    v24 = 0xE100000000000000;
  }

  MEMORY[0x1D3868CC0](v23, v24);
  v24, v25, v26, v27, v28, v29, v30, v31;
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return 0;
}

void sub_1CF4EDCE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C10F8, &qword_1CFA080F8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for LocalContainerSnapshot(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v12 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    sub_1CEFCCBDC(a2, v7, &unk_1EC4C10F8, &qword_1CFA080F8);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_1CEFCCC44(v7, &unk_1EC4C10F8, &qword_1CFA080F8);
    }

    else
    {
      sub_1CF0008F4(v7, v11, type metadata accessor for LocalContainerSnapshot);
      if (sub_1CF9E5D48())
      {
        sub_1CF4EC9F0();
      }

      sub_1CF0005D0(v11, type metadata accessor for LocalContainerSnapshot);
    }
  }
}

void sub_1CF4EDEA8(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  if (*(v3 + *(type metadata accessor for LocalContainerSnapshot(0) + 20)) != 1)
  {
    goto LABEL_22;
  }

  v62 = a2;
  v14 = *(a1 + 16);
  if (!v14)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v15 = 0;
  v16 = a1 + 32;
  v17 = MEMORY[0x1E69E7CC0];
  do
  {
    v18 = v15;
    while (1)
    {
      if (v18 >= v14)
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/LocalContainer.swift", 100, 2, 397);
      }

      v15 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_21;
      }

      v19 = *(v16 + 8 * v18);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v21 = v20;
      v22 = v19;
      v23 = sub_1CF9E6AE8();
      v21, v24, v25, v26, v27, v28, v29, v30;
      if (v23)
      {
        break;
      }

      ++v18;
      if (v15 == v14)
      {
        goto LABEL_17;
      }
    }

    v61 = a3;
    v31 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v33 = v32;
    v34 = sub_1CF4F5F14(1uLL, v31, v32);
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v33, v35, v37, v39, v41, v42, v43, v44;
    v45 = MEMORY[0x1D3868C10](v34, v36, v38, v40);
    v47 = v46;
    v40, v46, v48, v49, v50, v51, v52, v53;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1CF0710C0(0, *v17->tree + 1, 1, v17, v10, v11, v12, v13);
    }

    v55 = *v17->tree;
    v54 = *v17->tester;
    a3 = v61;
    if (v55 >= v54 >> 1)
    {
      v17 = sub_1CF0710C0((v54 > 1), v55 + 1, 1, v17, v10, v11, v12, v13);
    }

    *v17->tree = v55 + 1;
    v56 = v17 + 16 * v55;
    *(v56 + 4) = v45;
    *(v56 + 5) = v47;
  }

  while (v15 != v14);
LABEL_17:
  if (*v17->tree)
  {
    v57 = [objc_opt_self() legacyDefaultManager];
    v58 = sub_1CF9E6D28();
    v59 = swift_allocObject();
    v59[2] = v17;
    v59[3] = v62;
    v59[4] = a3;
    aBlock[4] = sub_1CF4F11D0;
    aBlock[5] = v59;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CF00A468;
    aBlock[3] = &block_descriptor_51;
    v60 = _Block_copy(aBlock);

    [v57 deleteSearchableItemsWithSpotlightDomainIdentifiers:v58 completionHandler:v60];
    _Block_release(v60);
  }

  else
  {
    v17, v7, v8, v9, v10, v11, v12, v13;
    v62(0);
  }
}

uint64_t sub_1CF4EE1BC(id a1, uint64_t a2, uint64_t (*a3)(id))
{
  if (a1)
  {
    v6 = a1;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA50470);
    v7 = MEMORY[0x1E69E6158];
    v8 = MEMORY[0x1D3868FE0](a2, MEMORY[0x1E69E6158]);
    v10 = v9;
    MEMORY[0x1D3868CC0](v8);
    v10, v11, v12, v13, v14, v15, v16, v17;
    MEMORY[0x1D3868CC0](0x2064656C69616620, 0xED00002068746977);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    sub_1CF9E7B58();
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    v18 = qword_1EDEBB5A0;
    v19 = sub_1CF9E72A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1CF9FA450;
    *(v20 + 56) = v7;
    *(v20 + 64) = sub_1CEFD51C4();
    *(v20 + 32) = 0;
    *(v20 + 40) = 0xE000000000000000;
    sub_1CF9E6018("[ERROR] %@", 10, 2, &dword_1CEFC7000, v18, v19, v20);
    v20, v21, v22, v23, v24, v25, v26, v27;
  }

  else
  {
    sub_1CF9E7948();
    0xE000000000000000, v28, v29, v30, v31, v32, v33, v34;
    v35 = MEMORY[0x1E69E6158];
    v36 = MEMORY[0x1D3868FE0](a2, MEMORY[0x1E69E6158]);
    v38 = v37;
    MEMORY[0x1D3868CC0](v36);
    v38, v39, v40, v41, v42, v43, v44, v45;
    MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA50450);
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    v46 = qword_1EDEBB5A0;
    v47 = sub_1CF9E7298();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1CF9FA450;
    *(v48 + 56) = v35;
    *(v48 + 64) = sub_1CEFD51C4();
    *(v48 + 32) = 0xD000000000000017;
    *(v48 + 40) = 0x80000001CFA50430;
    sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v46, v47, v48);
    v48, v49, v50, v51, v52, v53, v54, v55;
  }

  return a3(a1);
}

char *sub_1CF4EE4F4(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v70 = sub_1CF9E7318();
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CF9E6448();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v68 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CF9E7388();
  v65 = *(v7 - 8);
  v66 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v67 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E5D98();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEFFD374(a1, &v2[OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_domain], type metadata accessor for LocalDomain);
  v13 = [objc_allocWithZone(MEMORY[0x1E69672B8]) init];
  v14 = OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_appRegistry;
  *&v2[OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_appRegistry] = v13;
  sub_1CF9E5D88();
  (*(v10 + 32))(&v2[OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_version], v12, v9);
  v72 = v2;
  v15 = [*&v2[v14] listOfMonitoredApps];
  sub_1CEFD57E0(0, &qword_1EDEA36F8, 0x1E69672B0);
  v16 = sub_1CF9E6D48();

  if (v16 >> 62)
  {
LABEL_28:
    v24 = sub_1CF9E7818();
    if (v24)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v24 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
LABEL_3:
      v25 = 0;
      v26 = v16 & 0xC000000000000001;
      v73 = v16 & 0xFFFFFFFFFFFFFF8;
      v27 = MEMORY[0x1E69E7CC8];
      v75 = v24;
      v76 = v16;
      v74 = v16 & 0xC000000000000001;
      while (1)
      {
        if (v26)
        {
          v28 = MEMORY[0x1D3869C30](v25, v16);
        }

        else
        {
          if (v25 >= *(v73 + 16))
          {
            goto LABEL_26;
          }

          v28 = *(v16 + 8 * v25 + 32);
        }

        v29 = v28;
        v30 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        if (sub_1CF4F0118(v28, a1))
        {
          break;
        }

LABEL_5:
        ++v25;
        if (v30 == v24)
        {
          goto LABEL_30;
        }
      }

      v31 = a1;
      v32 = [v29 bundleID];
      a1 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v34 = v33;

      v16 = v29;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v78 = v27;
      v43 = sub_1CEFE4328(a1, v34);
      v44 = v27[2];
      v45 = (v36 & 1) == 0;
      v46 = v44 + v45;
      if (__OFADD__(v44, v45))
      {
        goto LABEL_25;
      }

      v47 = v36;
      if (v27[3] < v46)
      {
        sub_1CF7C65E0(v46, isUniquelyReferenced_nonNull_native);
        v48 = sub_1CEFE4328(a1, v34);
        if ((v47 & 1) != (v36 & 1))
        {
          result = sub_1CF9E8108();
          __break(1u);
          return result;
        }

        v43 = v48;
        if ((v47 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_19:
        v34, v36, v37, v38, v39, v40, v41, v42;
        v27 = v78;
        v49 = *(v78 + 56);
        v50 = *(v49 + 8 * v43);
        *(v49 + 8 * v43) = v16;

LABEL_23:
        a1 = v31;
        v24 = v75;
        v16 = v76;
        v26 = v74;
        goto LABEL_5;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        if (v36)
        {
          goto LABEL_19;
        }
      }

      else
      {
        sub_1CF7D08C0();
        if (v47)
        {
          goto LABEL_19;
        }
      }

LABEL_21:
      v27 = v78;
      *(v78 + 8 * (v43 >> 6) + 64) |= 1 << v43;
      v51 = (v27[6] + 16 * v43);
      *v51 = a1;
      v51[1] = v34;
      *(v27[7] + 8 * v43) = v16;

      v52 = v27[2];
      v53 = __OFADD__(v52, 1);
      v54 = v52 + 1;
      if (v53)
      {
        goto LABEL_27;
      }

      v27[2] = v54;
      goto LABEL_23;
    }
  }

  v27 = MEMORY[0x1E69E7CC8];
LABEL_30:
  v16, v17, v18, v19, v20, v21, v22, v23;
  v55 = v72;
  *&v72[OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_monitoredAppsByID] = v27;
  v78 = 0;
  v79 = 0xE000000000000000;
  sub_1CF9E7948();
  v79, v56, v57, v58, v59, v60, v61, v62;
  v78 = 0xD00000000000001FLL;
  v79 = 0x80000001CFA502D0;
  MEMORY[0x1D3868CC0](*(a1 + 32), *(a1 + 40));
  sub_1CEFD57E0(0, &qword_1EDEAED70, 0x1E69E9610);
  (*(v65 + 104))(v67, *MEMORY[0x1E69E8098], v66);
  sub_1CF9E63F8();
  v78 = MEMORY[0x1E69E7CC0];
  sub_1CF00CC8C(&qword_1EDEAED80, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF500, &unk_1CF9FE770);
  sub_1CF4F0754();
  sub_1CF9E77B8();
  *&v55[OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_queue] = sub_1CF9E73B8();
  v77.receiver = v55;
  v77.super_class = ObjectType;
  v63 = objc_msgSendSuper2(&v77, sel_init);
  [*&v63[OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_appRegistry] setDelegate_];
  sub_1CF0005D0(a1, type metadata accessor for LocalDomain);
  return v63;
}

void sub_1CF4EEB60(unint64_t a1, uint64_t a2, _BYTE *a3)
{
  v54 = a3;
  v5 = sub_1CF9E5D98();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v47 = v9;
  v48 = v8;
  v46 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_28:
    v10 = sub_1CF9E7818();
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_3:
      v11 = 0;
      v12 = OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_domain;
      v13 = a1 & 0xC000000000000001;
      v55 = OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_monitoredAppsByID;
      v49 = a1 & 0xFFFFFFFFFFFFFF8;
      v50 = a1 & 0xC000000000000001;
      v52 = v10;
      v53 = a1;
      v51 = OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_domain;
      while (1)
      {
        if (v13)
        {
          v14 = MEMORY[0x1D3869C30](v11, a1, v6);
        }

        else
        {
          if (v11 >= *(v49 + 16))
          {
            goto LABEL_26;
          }

          v14 = *(a1 + 8 * v11 + 32);
        }

        v15 = v14;
        v16 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        if (sub_1CF4F0118(v14, a2 + v12))
        {
          break;
        }

LABEL_5:
        ++v11;
        if (v16 == v10)
        {
          goto LABEL_29;
        }
      }

      v17 = [v15 bundleID];
      a1 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v19 = v18;

      v20 = v55;
      swift_beginAccess();
      v21 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = *(a2 + v20);
      v23 = v56;
      v24 = a2;
      *(a2 + v20) = 0x8000000000000000;
      v32 = sub_1CEFE4328(a1, v19);
      v33 = v23[2];
      v34 = (v25 & 1) == 0;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
        goto LABEL_25;
      }

      a2 = v25;
      if (v23[3] < v35)
      {
        sub_1CF7C65E0(v35, isUniquelyReferenced_nonNull_native);
        v36 = sub_1CEFE4328(a1, v19);
        if ((a2 & 1) != (v25 & 1))
        {
          sub_1CF9E8108();
          __break(1u);
          return;
        }

        v32 = v36;
        if ((a2 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_19:
        v19, v25, v26, v27, v28, v29, v30, v31;
        v37 = v56;
        v38 = v56[7];
        v39 = *(v38 + 8 * v32);
        *(v38 + 8 * v32) = v21;

LABEL_23:
        a2 = v24;
        *(v24 + v55) = v37;
        swift_endAccess();

        a1 = v53;
        *v54 = 1;
        v12 = v51;
        v10 = v52;
        v13 = v50;
        goto LABEL_5;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        if (v25)
        {
          goto LABEL_19;
        }
      }

      else
      {
        sub_1CF7D08C0();
        if (a2)
        {
          goto LABEL_19;
        }
      }

LABEL_21:
      v37 = v56;
      v56[(v32 >> 6) + 8] |= 1 << v32;
      v40 = (v37[6] + 16 * v32);
      *v40 = a1;
      v40[1] = v19;
      *(v37[7] + 8 * v32) = v21;
      v41 = v37[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_27;
      }

      v37[2] = v43;
      goto LABEL_23;
    }
  }

LABEL_29:
  if (*v54)
  {
    v44 = v46;
    sub_1CF9E5D88();
    v45 = OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_version;
    swift_beginAccess();
    (*(v47 + 40))(a2 + v45, v44, v48);
    swift_endAccess();
  }
}

void sub_1CF4EEF68(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = sub_1CF9E5D98();
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_monitoredAppsByID;
    v10 = (a1 + 40);
    do
    {
      v19 = *(v10 - 1);
      v18 = *v10;
      swift_beginAccess();

      v20 = sub_1CEFE4328(v19, v18);
      if (v21)
      {
        v22 = v20;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = *(a2 + v9);
        v46 = v31;
        *(a2 + v9) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1CF7D08C0();
          v31 = v46;
        }

        *(*(v31 + 48) + 16 * v22 + 8), v24, v25, v26, v27, v28, v29, v30;
        v32 = *(*(v31 + 56) + 8 * v22);
        sub_1CF1CFB64(v22, v31);
        *(a2 + v9) = v31;
        swift_endAccess();

        v18, v33, v34, v35, v36, v37, v38, v39;
        *a3 = 1;
      }

      else
      {
        swift_endAccess();
        v18, v11, v12, v13, v14, v15, v16, v17;
      }

      v10 += 2;
      --v8;
    }

    while (v8);
  }

  if (*a3)
  {
    v40 = v43;
    sub_1CF9E5D88();
    v41 = OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_version;
    swift_beginAccess();
    (*(v44 + 40))(a2 + v41, v40, v45);
    swift_endAccess();
  }
}

void sub_1CF4EF1D8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_monitoredAppsByID;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  while (v8)
  {
    v11 = v10;
LABEL_10:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = *(*(v5 + 56) + ((v11 << 9) | (8 * v12)));
    v14 = a2();

    if ((v14 & 1) == 0)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      goto LABEL_11;
    }

    v8 = *(v5 + 64 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_1CF4EF2F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_monitoredAppsByID;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (*(v9 + 16) && (v10 = sub_1CEFE4328(a2, a3), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    v13 = v12;
  }

  else
  {
    v12 = 0;
  }

  *a4 = v12;
  return swift_endAccess();
}

uint64_t sub_1CF4EF3B0()
{
  v0 = sub_1CF9E7318();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1CF9E6448();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1CF9E7388();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEFD57E0(0, &qword_1EDEAED70, 0x1E69E9610);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8098], v2);
  sub_1CF9E63F8();
  v7[1] = MEMORY[0x1E69E7CC0];
  sub_1CF00CC8C(&qword_1EDEAED80, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF500, &unk_1CF9FE770);
  sub_1CF4F0754();
  sub_1CF9E77B8();
  result = sub_1CF9E73B8();
  qword_1EDEA56C8 = result;
  return result;
}

void sub_1CF4EF5F0(void *a1, uint64_t a2, NSObject *a3)
{
  v6 = sub_1CF9E53C8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v59[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v59[-v11];
  if (a1)
  {
    v63 = 0;
    v64 = 0xE000000000000000;
    v13 = a1;
    sub_1CF9E7948();
    v64, v14, v15, v16, v17, v18, v19, v20;
    v63 = 0xD000000000000019;
    v64 = 0x80000001CFA503E0;
    v21 = NSFileProviderItemIdentifier.description.getter(a2);
    v23 = v22;
    MEMORY[0x1D3868CC0](v21);
    v23, v24, v25, v26, v27, v28, v29, v30;
    v32 = v63;
    v31 = v64;
    v63 = a1;
    v33 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    if (swift_dynamicCast())
    {
      v62 = *(v7 + 8);
      v62(v12, v6);
      v63 = a1;
      v34 = a1;
      swift_dynamicCast();
      sub_1CF00CC8C(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      sub_1CF9E57A8();
      v35 = sub_1CF9E6148();
      if (sub_1CF008830(v35, MEMORY[0x1E69E7CD0]))
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        v61 = qword_1EDEBB5A0;
        v60 = sub_1CF9E7298();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_1CF9FA440;
        *(v36 + 56) = MEMORY[0x1E69E6158];
        *(v36 + 64) = sub_1CEFD51C4();
        *(v36 + 32) = v32;
        *(v36 + 40) = v31;
        sub_1CF9E57A8();
        v37 = sub_1CF9E6148();
        v38 = MEMORY[0x1E69E7358];
        *(v36 + 96) = MEMORY[0x1E69E72F0];
        *(v36 + 104) = v38;
        *(v36 + 72) = v37;
        sub_1CF9E6018("[DEBUG] %@ %{errno}d", 20, 2, &dword_1CEFC7000, v61, v60, v36);
      }

      else
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        v61 = qword_1EDEBB5A0;
        v60 = sub_1CF9E72A8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_1CF9FA440;
        *(v36 + 56) = MEMORY[0x1E69E6158];
        *(v36 + 64) = sub_1CEFD51C4();
        *(v36 + 32) = v32;
        *(v36 + 40) = v31;
        sub_1CF9E57A8();
        v50 = sub_1CF9E6148();
        v51 = MEMORY[0x1E69E7358];
        *(v36 + 96) = MEMORY[0x1E69E72F0];
        *(v36 + 104) = v51;
        *(v36 + 72) = v50;
        sub_1CF9E6018("[ERROR] %@ %{errno}d", 20, 2, &dword_1CEFC7000, v61, v60, v36);
      }

      v36, v52, v53, v54, v55, v56, v57, v58;
      v62(v9, v6);
    }

    else
    {
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      v39 = qword_1EDEBB5A0;
      v40 = sub_1CF9E72A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_1CF9FA440;
      *(v41 + 56) = MEMORY[0x1E69E6158];
      *(v41 + 64) = sub_1CEFD51C4();
      *(v41 + 32) = v32;
      *(v41 + 40) = v31;
      v42 = sub_1CF9E57E8();
      *(v41 + 96) = sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
      *(v41 + 104) = sub_1CF326DD0();
      *(v41 + 72) = v42;
      sub_1CF9E6018("[ERROR] %@ %@", 13, 2, &dword_1CEFC7000, v39, v40, v41);

      v41, v43, v44, v45, v46, v47, v48, v49;
    }
  }

  dispatch_group_leave(a3);
}

uint64_t sub_1CF4EFBE4(uint64_t a1)
{
  result = type metadata accessor for LocalDomain(319);
  if (v2 <= 0x3F)
  {
    result = sub_1CF9E5D98();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1CF4EFCF4(uint64_t a1)
{
  type metadata accessor for LocalDomain(319);
  if (v1 <= 0x3F)
  {
    sub_1CF9E5D98();
    if (v2 <= 0x3F)
    {
      sub_1CF4EFDA0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1CF4EFDA0(uint64_t a1)
{
  if (!qword_1EDEA37E0)
  {
    type metadata accessor for LocalContainer(255);
    v1 = sub_1CF9E6E58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDEA37E0);
    }
  }
}

void sub_1CF4EFDF8(uint64_t a1)
{
  type metadata accessor for NSFileProviderItemIdentifier(319);
  if (v1 <= 0x3F)
  {
    sub_1CF4EFEB4();
    if (v2 <= 0x3F)
    {
      type metadata accessor for LocalDomain(319);
      if (v3 <= 0x3F)
      {
        sub_1CF9E5A58();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1CF4EFEB4()
{
  if (!qword_1EDEAEDB8)
  {
    v0 = sub_1CF9E75D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEAEDB8);
    }
  }
}

uint64_t sub_1CF4EFF4C(void *a1, void *a2)
{
  v4 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v6 = v5;
  v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v15 = v8;
  if (v4 == v7 && v6 == v8)
  {
    v6, v8, v9, v10, v11, v12, v13, v14;
    v15, v32, v33, v34, v35, v36, v37, v38;
  }

  else
  {
    v17 = sub_1CF9E8048();
    v6, v18, v19, v20, v21, v22, v23, v24;
    v15, v25, v26, v27, v28, v29, v30, v31;
    if ((v17 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v39 = a1[2];
  v40 = a2[2];
  if (v39)
  {
    if (!v40 || (a1[1] != a2[1] || v39 != v40) && (sub_1CF9E8048() & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v40)
  {
LABEL_18:
    v42 = 0;
    return v42 & 1;
  }

  v41 = type metadata accessor for LocalContainer(0);
  if ((sub_1CF4F6890(a1 + *(v41 + 24), a2 + *(v41 + 24)) & 1) == 0 || (sub_1CF9E59A8() & 1) == 0)
  {
    goto LABEL_18;
  }

  v42 = *(a1 + *(v41 + 32)) ^ *(a2 + *(v41 + 32)) ^ 1;
  return v42 & 1;
}

unint64_t sub_1CF4F0080(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2)
{
  v3 = sub_1CF9E7C78();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1CF4F00CC(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2)
{
  v3 = sub_1CF9E7C78();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

BOOL sub_1CF4F0118(void *a1, uint64_t a2)
{
  v87 = *MEMORY[0x1E69E9840];
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v85[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a2 + *(type metadata accessor for LocalDomain(0) + 36)) != 1)
  {
    return 0;
  }

  v8 = [a1 isManaged];
  v9 = &unk_1CF9FA000;
  v10 = MEMORY[0x1E69E6158];
  if (v8)
  {
    v11 = [a1 documentsURL];
    sub_1CF9E59D8();

    v12 = sub_1CF9E5A18();
    v14 = v13;
    v15 = (*(v5 + 8))(v7, v4);
    memset(v86, 0, sizeof(v86));
    MEMORY[0x1EEE9AC00](v15);
    *&v85[-32] = v12;
    *&v85[-24] = v14;
    *&v85[-16] = v86;
    sub_1CEFE1894(sub_1CF4F07B8);
    v14, v16, v17, v18, v19, v20, v21, v22;
    v23 = LODWORD(v86[0]) == *(a2 + 8);
    v9 = &unk_1CF9FA000;
  }

  else
  {
    v23 = 1;
  }

  *&v86[0] = 0;
  *(&v86[0] + 1) = 0xE000000000000000;
  sub_1CF9E7948();
  *(&v86[0] + 1), v24, v25, v26, v27, v28, v29, v30;
  *&v86[0] = 0x206C6C6977;
  *(&v86[0] + 1) = 0xE500000000000000;
  if (v23)
  {
    v31 = 0x726F74696E6F6DLL;
  }

  else
  {
    v31 = 0x65726F6E6769;
  }

  if (v23)
  {
    v32 = 0xE700000000000000;
  }

  else
  {
    v32 = 0xE600000000000000;
  }

  MEMORY[0x1D3868CC0](v31, v32);
  v32, v33, v34, v35, v36, v37, v38, v39;
  MEMORY[0x1D3868CC0](32, 0xE100000000000000);
  v40 = [a1 isManaged];
  v41 = v40 == 0;
  if (v40)
  {
    v42 = 0x20646567616E616DLL;
  }

  else
  {
    v42 = 0;
  }

  if (v41)
  {
    v43 = 0xE000000000000000;
  }

  else
  {
    v43 = 0xE800000000000000;
  }

  MEMORY[0x1D3868CC0](v42, v43);
  v43, v44, v45, v46, v47, v48, v49, v50;
  MEMORY[0x1D3868CC0](0x7262696C20707061, 0xEF20746120797261);
  v51 = [a1 documentsURL];
  sub_1CF9E59D8();

  v52 = sub_1CF9E5A18();
  v54 = v53;
  (*(v5 + 8))(v7, v4);
  MEMORY[0x1D3868CC0](v52, v54);
  v54, v55, v56, v57, v58, v59, v60, v61;
  MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
  v62 = [a1 bundleID];
  v63 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v65 = v64;

  MEMORY[0x1D3868CC0](v63, v65);
  v65, v66, v67, v68, v69, v70, v71, v72;
  v73 = v86[0];
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v74 = qword_1EDEBB5A0;
  v75 = sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v76 = swift_allocObject();
  *(v76 + 16) = v9[69];
  *(v76 + 56) = v10;
  *(v76 + 64) = sub_1CEFD51C4();
  *(v76 + 32) = v73;
  sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v74, v75, v76);
  v76, v77, v78, v79, v80, v81, v82, v83;
  return v23;
}

unint64_t sub_1CF4F0754()
{
  result = qword_1EDEAEDA0;
  if (!qword_1EDEAEDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BF500, &unk_1CF9FE770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAEDA0);
  }

  return result;
}

void sub_1CF4F07B8(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = sub_1CF9E6978();
  LODWORD(v3) = lstat((v4 + 32), v3);

  *a1 = v3;
}

void sub_1CF4F0814(uint64_t a1)
{
  v2 = sub_1CF9E6498();
  v68 = *(v2 - 8);
  v69 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v66 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v67 = &v61 - v5;
  aBlock = 0;
  v71 = 0xE000000000000000;
  sub_1CF9E7948();
  v71, v6, v7, v8, v9, v10, v11, v12;
  aBlock = 0xD000000000000016;
  v71 = 0x80000001CFA50390;
  type metadata accessor for NSFileProviderItemIdentifier(0);
  v14 = MEMORY[0x1D3868FE0](a1, v13);
  v16 = v15;
  MEMORY[0x1D3868CC0](v14);
  v16, v17, v18, v19, v20, v21, v22, v23;
  v24 = aBlock;
  v25 = v71;
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v26 = qword_1EDEBB5A0;
  v27 = sub_1CF9E7298();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v28 = swift_allocObject();
  v63 = xmmword_1CF9FA450;
  *(v28 + 16) = xmmword_1CF9FA450;
  *(v28 + 56) = MEMORY[0x1E69E6158];
  v62 = sub_1CEFD51C4();
  *(v28 + 64) = v62;
  *(v28 + 32) = v24;
  *(v28 + 40) = v25;
  v65 = v26;
  sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v26, v27, v28);
  v28, v29, v30, v31, v32, v33, v34, v35;
  v36 = dispatch_group_create();
  v37 = [objc_opt_self() legacyDefaultManager];
  v38 = *(a1 + 16);
  if (v38)
  {
    v39 = (a1 + 32);
    do
    {
      v40 = *v39++;
      v41 = v40;
      dispatch_group_enter(v36);
      v42 = swift_allocObject();
      *(v42 + 16) = v41;
      *(v42 + 24) = v36;
      v74 = sub_1CF4F102C;
      v75 = v42;
      aBlock = MEMORY[0x1E69E9820];
      v71 = 1107296256;
      v72 = sub_1CF00A468;
      v73 = &block_descriptor_32;
      v43 = _Block_copy(&aBlock);
      v44 = v41;
      v45 = v36;

      [v37 signalEnumeratorForContainerItemIdentifier:v44 completionHandler:v43];
      _Block_release(v43);

      --v38;
    }

    while (v38);
  }

  v46 = v66;
  sub_1CF9E6478();
  v47 = v67;
  sub_1CF9E64C8();
  v48 = *(v68 + 8);
  v49 = v46;
  v50 = v69;
  v48(v49, v69);
  sub_1CF9E72E8();
  v48(v47, v50);
  if (sub_1CF9E6398())
  {
    v51 = sub_1CF9E72B8();
    v52 = swift_allocObject();
    *(v52 + 16) = v63;
    v53 = v62;
    *(v52 + 56) = MEMORY[0x1E69E6158];
    *(v52 + 64) = v53;
    *(v52 + 32) = 0xD000000000000024;
    *(v52 + 40) = 0x80000001CFA503B0;
    sub_1CF9E6018("[CRIT] %@", 9, 2, &dword_1CEFC7000, v65, v51, v52);

    v52, v54, v55, v56, v57, v58, v59, v60;
  }

  else
  {
  }
}

void sub_1CF4F0C40(uint64_t a1)
{
  v22 = 0;
  v3 = *&v1[OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_queue];
  v4 = swift_allocObject();
  v4[2] = a1;
  v4[3] = v1;
  v4[4] = &v22;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1CF4F1074;
  *(v5 + 24) = v4;
  aBlock[4] = sub_1CF1C0B54;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFFD02C;
  aBlock[3] = &block_descriptor_42;
  v6 = _Block_copy(aBlock);

  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else if (v22 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1770, &qword_1CFA05A80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1CF9FA440;
    v10 = *MEMORY[0x1E6967258];
    v11 = *MEMORY[0x1E6967298];
    *(v9 + 32) = *MEMORY[0x1E6967258];
    *(v9 + 40) = v11;
    v12 = v10;
    v13 = v11;
    sub_1CF4F0814(v9);

    v9, v14, v15, v16, v17, v18, v19, v20;
  }

  else
  {
  }
}

void sub_1CF4F0E30(uint64_t a1)
{
  v22 = 0;
  v3 = *&v1[OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_queue];
  v4 = swift_allocObject();
  v4[2] = a1;
  v4[3] = v1;
  v4[4] = &v22;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1CF4F1020;
  *(v5 + 24) = v4;
  aBlock[4] = sub_1CF1C0B54;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFFD02C;
  aBlock[3] = &block_descriptor_26_0;
  v6 = _Block_copy(aBlock);

  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else if (v22 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1770, &qword_1CFA05A80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1CF9FA440;
    v10 = *MEMORY[0x1E6967258];
    v11 = *MEMORY[0x1E6967298];
    *(v9 + 32) = *MEMORY[0x1E6967258];
    *(v9 + 40) = v11;
    v12 = v10;
    v13 = v11;
    sub_1CF4F0814(v9);

    v9, v14, v15, v16, v17, v18, v19, v20;
  }

  else
  {
  }
}

uint64_t objectdestroy_18Tm(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1CF4F1080(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C10F8, &qword_1CFA080F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1CF4F10F0(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C10F8, &qword_1CFA080F8) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for LocalContainerSnapshot(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  sub_1CF4EDCE8(a1, v1 + v4, v7);
}

unint64_t sub_1CF4F1200()
{
  result = qword_1EC4C1150;
  if (!qword_1EC4C1150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1150);
  }

  return result;
}

unint64_t sub_1CF4F1258()
{
  result = qword_1EC4C1158;
  if (!qword_1EC4C1158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1158);
  }

  return result;
}

unint64_t sub_1CF4F12B0()
{
  result = qword_1EDEA7A90;
  if (!qword_1EDEA7A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA7A90);
  }

  return result;
}

unint64_t sub_1CF4F1308()
{
  result = qword_1EDEA7A98;
  if (!qword_1EDEA7A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA7A98);
  }

  return result;
}

unint64_t sub_1CF4F1360()
{
  result = qword_1EDEA5500;
  if (!qword_1EDEA5500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA5500);
  }

  return result;
}

unint64_t sub_1CF4F13B8()
{
  result = qword_1EDEA5508;
  if (!qword_1EDEA5508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA5508);
  }

  return result;
}

uint64_t sub_1CF4F1430()
{
  v1 = sub_1CF9E53C8();
  v34[2] = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v34[3] = v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v34 - v5;
  v7 = sub_1CF9E5A58();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_isTrashed] != 1)
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/LocalItem.swift", 95, 2, 519);
  }

  v11 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fileURL;
  swift_beginAccess();
  sub_1CEFCCBDC(&v0[v11], v6, &unk_1EC4BE310, qword_1CF9FCBE0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1CEFCCC44(v6, &unk_1EC4BE310, qword_1CF9FCBE0);
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_1CF9E7948();
    v37, v16, v17, v18, v19, v20, v21, v22;
    v36 = 0x20676E697373696DLL;
    v37 = 0xEF206E6F204C5255;
    v23 = [v0 description];
    v24 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v26 = v25;

    MEMORY[0x1D3868CC0](v24, v26);
    v26, v27, v28, v29, v30, v31, v32, v33;
    sub_1CF9E7B68();
    __break(1u);
LABEL_7:
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 39);
  }

  v12 = *(v8 + 32);
  v35 = v7;
  v13 = v12(v10, v6);
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1CF9E5848();
  if ((v14 & 1) == 0)
  {
    goto LABEL_7;
  }

  MEMORY[0x1EEE9AC00](v14);
  sub_1CF9E59B8();
  return (*(v8 + 8))(v10, v35);
}

id sub_1CF4F1CC8()
{
  v1 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem____lazy_storage___containerItem;
  v2 = *&v0[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem____lazy_storage___containerItem];
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_1CF4F470C(v0);
    v4 = *&v0[v1];
    *&v0[v1] = v3;
    v5 = v3;
    sub_1CF00D644(v4);
  }

  sub_1CF2B1FC4(v2);
  return v3;
}

uint64_t sub_1CF4F1D38()
{
  v1 = v0;
  v2 = sub_1CF9E53C8();
  MEMORY[0x1EEE9AC00](v2);
  v33[4] = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v33 - v6;
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_isTrashed])
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/LocalItem.swift", 95, 2, 557);
  }

  v12 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fileURL;
  swift_beginAccess();
  sub_1CEFCCBDC(&v1[v12], v7, &unk_1EC4BE310, qword_1CF9FCBE0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1CEFCCC44(v7, &unk_1EC4BE310, qword_1CF9FCBE0);
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_1CF9E7948();
    v35, v15, v16, v17, v18, v19, v20, v21;
    v34 = 0x20676E697373696DLL;
    v35 = 0xEF206E6F204C5255;
    v22 = [v1 description];
    v23 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v25 = v24;

    MEMORY[0x1D3868CC0](v23, v25);
    v25, v26, v27, v28, v29, v30, v31, v32;
    sub_1CF9E7B68();
    __break(1u);
LABEL_7:
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 39);
  }

  (*(v9 + 32))(v11, v7, v8);
  v13 = sub_1CF9E5848();
  if ((v13 & 1) == 0)
  {
    goto LABEL_7;
  }

  MEMORY[0x1EEE9AC00](v13);
  sub_1CF9E59B8();
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1CF4F257C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v69 = a3;
  v8 = sub_1CF9E53C8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v67 - v13;
  if (qword_1EC4BCD50 != -1)
  {
    swift_once();
  }

  if (sub_1CEFDB148(a1, a2, qword_1EC4C1718))
  {
    LODWORD(v72) = 22;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF00BC08(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    sub_1CF9E57D8();
    v15 = v14;
    sub_1CF9E53A8();
    (*(v9 + 8))(v14, v8);
LABEL_19:
    swift_willThrow();
    return v15;
  }

  v67[1] = a4;
  v68 = v9;
  v16 = sub_1CF008708(&unk_1F4BED780);
  v17 = sub_1CF9E6978();
  v15 = fgetxattr(v69, (v17 + 32), 0, 0, 0, 0);

  if ((v15 & 0x8000000000000000) != 0)
  {
    if (MEMORY[0x1D38683F0](v18))
    {
      v33 = MEMORY[0x1D38683F0]();
      v34 = sub_1CF008830(v33, v16);
      v16, v35, v36, v37, v38, v39, v40, v41;
      if (!v34)
      {
        MEMORY[0x1D38683F0]();
        v52 = sub_1CF9E6138();
        if ((v52 & 0x100000000) != 0)
        {
          v53 = 22;
        }

        else
        {
          v53 = v52;
        }

        LODWORD(v71) = v53;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF00BC08(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
        sub_1CF9E57D8();
        v15 = v11;
        sub_1CF9E53A8();
        (*(v68 + 8))(v11, v8);
        goto LABEL_19;
      }

      return 0;
    }

    else
    {
      v16, v26, v27, v28, v29, v30, v31, v32;
      return 0;
    }
  }

  else
  {
    v16, v19, v20, v21, v22, v23, v24, v25;
    v72 = v15;
    if (v15)
    {
      if (v15 > 0x8000)
      {
        LODWORD(v71) = 34;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF00BC08(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
        sub_1CF9E57D8();
        v15 = v14;
        sub_1CF9E53A8();
        (*(v68 + 8))(v14, v8);
        goto LABEL_19;
      }

      v42 = sub_1CF9E6DB8();
      *v42->tree = v15;
      bzero(&v42[1], v15);
      v15 = v67;
      v71 = v42;
      MEMORY[0x1EEE9AC00](v43);
      LODWORD(v67[-6]) = v69;
      v67[-5] = a1;
      v67[-4] = a2;
      v67[-3] = &v71;
      v67[-2] = &v72;
      v44 = sub_1CF5162A0(sub_1CF4F6270);
      if (v4)
      {
        v71, v45, v46, v47, v48, v49, v50, v51;
      }

      else
      {
        v72 = v44;
        v55 = v71;
        v56 = v44;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C11D8, &unk_1CFA084E0);
        v57 = sub_1CF51FAD8(&v55[1], v56);
        v59 = v58;
        sub_1CF4F6134(&qword_1EC4C11F8, &unk_1EDEAB3A0, MEMORY[0x1E6969558], MEMORY[0x1E69E6330]);
        sub_1CF9E5668();
        sub_1CEFE4714(v57, v59);
        v15 = v70;
        v55, v60, v61, v62, v63, v64, v65, v66;
      }
    }
  }

  return v15;
}

unint64_t sub_1CF4F2A94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v69 = a3;
  v8 = sub_1CF9E53C8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v67 - v13;
  if (qword_1EC4BCD50 != -1)
  {
    swift_once();
  }

  if (sub_1CEFDB148(a1, a2, qword_1EC4C1718))
  {
    LODWORD(v72) = 22;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF00BC08(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    sub_1CF9E57D8();
    v15 = v14;
    sub_1CF9E53A8();
    (*(v9 + 8))(v14, v8);
LABEL_19:
    swift_willThrow();
    return v15;
  }

  v67[1] = a4;
  v68 = v9;
  v16 = sub_1CF008708(&unk_1F4BED7A8);
  v17 = sub_1CF9E6978();
  v15 = fgetxattr(v69, (v17 + 32), 0, 0, 0, 0);

  if ((v15 & 0x8000000000000000) != 0)
  {
    if (MEMORY[0x1D38683F0](v18))
    {
      v33 = MEMORY[0x1D38683F0]();
      v34 = sub_1CF008830(v33, v16);
      v16, v35, v36, v37, v38, v39, v40, v41;
      if (!v34)
      {
        MEMORY[0x1D38683F0]();
        v52 = sub_1CF9E6138();
        if ((v52 & 0x100000000) != 0)
        {
          v53 = 22;
        }

        else
        {
          v53 = v52;
        }

        LODWORD(v71) = v53;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF00BC08(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
        sub_1CF9E57D8();
        v15 = v11;
        sub_1CF9E53A8();
        (*(v68 + 8))(v11, v8);
        goto LABEL_19;
      }

      return 0;
    }

    else
    {
      v16, v26, v27, v28, v29, v30, v31, v32;
      return 0;
    }
  }

  else
  {
    v16, v19, v20, v21, v22, v23, v24, v25;
    v72 = v15;
    if (v15)
    {
      if (v15 > 0x8000)
      {
        LODWORD(v71) = 34;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF00BC08(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
        sub_1CF9E57D8();
        v15 = v14;
        sub_1CF9E53A8();
        (*(v68 + 8))(v14, v8);
        goto LABEL_19;
      }

      v42 = sub_1CF9E6DB8();
      *v42->tree = v15;
      bzero(&v42[1], v15);
      v15 = v67;
      v71 = v42;
      MEMORY[0x1EEE9AC00](v43);
      LODWORD(v67[-6]) = v69;
      v67[-5] = a1;
      v67[-4] = a2;
      v67[-3] = &v71;
      v67[-2] = &v72;
      v44 = sub_1CF5162A0(sub_1CF4F60D4);
      if (v4)
      {
        v71, v45, v46, v47, v48, v49, v50, v51;
      }

      else
      {
        v72 = v44;
        v55 = v71;
        v56 = v44;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
        v57 = sub_1CF51FAD8(&v55[1], v56);
        v59 = v58;
        sub_1CEFE7C14(&qword_1EDEAB660, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
        sub_1CF9E5668();
        sub_1CEFE4714(v57, v59);
        v15 = v70;
        v55, v60, v61, v62, v63, v64, v65, v66;
      }
    }
  }

  return v15;
}

void sub_1CF4F2F98(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, uint64_t a3, unint64_t a4, int a5)
{
  v87 = a5;
  v89 = *MEMORY[0x1E69E9840];
  v10 = sub_1CF9E53C8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1CEFF05F4(a3, a4);

  sub_1CEFF05F4(a3, a4);
  if (qword_1EC4BCD50 != -1)
  {
    swift_once();
  }

  if (sub_1CEFDB148(a1, a2, qword_1EC4C1718))
  {
    a2, v14, v15, v16, v17, v18, v19, v20;
    LODWORD(v88) = 22;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF00BC08(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    sub_1CF9E57D8();
    sub_1CF9E53A8();
    (*(v11 + 8))(v13, v10);
    swift_willThrow();
    sub_1CEFE48D8(a3, a4);
LABEL_5:
    a2, v21, v22, v23, v24, v25, v26, v27;
    sub_1CEFE48D8(a3, a4);
    return;
  }

  if (a4 >> 60 != 15)
  {
    *&v88 = a3;
    *(&v88 + 1) = a4;
    sub_1CEFE42D4(a3, a4);
    sub_1CF190A74();
    v42 = sub_1CF9E56A8();
    if (v5)
    {
      a2, v43, v44, v45, v46, v47, v48, v49;
      sub_1CEFE48D8(a3, a4);
      a2, v50, v51, v52, v53, v54, v55, v56;
      sub_1CEFE48D8(a3, a4);
      sub_1CEFE4714(v88, *(&v88 + 1));
      return;
    }

    v57 = v42;
    v58 = v43;
    v59 = sub_1CEFE4714(v88, *(&v88 + 1));
    v60 = v58 >> 62;
    if ((v58 >> 62) > 1)
    {
      if (v60 != 2)
      {
        *(&v88 + 6) = 0;
        *&v88 = 0;
        MEMORY[0x1EEE9AC00](v59);
        *(&v85 - 12) = v87;
        *(&v85 - 5) = a1;
        *(&v85 - 4) = a2;
        *(&v85 - 3) = &v88;
        *(&v85 - 2) = &v88;
        goto LABEL_26;
      }

      v63 = *(v57 + 16);
      v85 = *(v57 + 24);
      v86 = v57;
      v64 = sub_1CF9E5498();
      if (v64)
      {
        v65 = sub_1CF9E54C8();
        if (__OFSUB__(v63, v65))
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        v64 += v63 - v65;
      }

      if (!__OFSUB__(v85, v63))
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (!v60)
      {
        *&v88 = v57;
        WORD4(v88) = v58;
        BYTE10(v88) = BYTE2(v58);
        BYTE11(v88) = BYTE3(v58);
        BYTE12(v88) = BYTE4(v58);
        BYTE13(v88) = BYTE5(v58);
        MEMORY[0x1EEE9AC00](v59);
        *(&v85 - 12) = v87;
        *(&v85 - 5) = a1;
        *(&v85 - 4) = a2;
        *(&v85 - 3) = v62;
        *(&v85 - 2) = v61;
LABEL_26:
        sub_1CEFE1894(sub_1CF4F6258);
        a2, v70, v71, v72, v73, v74, v75, v76;
        v84 = v57;
        goto LABEL_27;
      }

      v66 = v57;
      v85 = (v57 >> 32) - v57;
      v86 = v57;
      if (v57 >> 32 >= v57)
      {
        v64 = sub_1CF9E5498();
        if (!v64)
        {
LABEL_24:
          v68 = sub_1CF9E54B8();
          MEMORY[0x1EEE9AC00](v68);
          *(&v85 - 12) = v87;
          *(&v85 - 5) = a1;
          *(&v85 - 4) = a2;
          *(&v85 - 3) = v64;
          *(&v85 - 2) = v69;
          sub_1CEFE1894(sub_1CF4F6258);
          a2, v77, v78, v79, v80, v81, v82, v83;
          v84 = v86;
LABEL_27:
          sub_1CEFE4714(v84, v58);
          sub_1CEFE48D8(a3, a4);
          goto LABEL_5;
        }

        v67 = sub_1CF9E54C8();
        if (!__OFSUB__(v66, v67))
        {
          v64 += v66 - v67;
          goto LABEL_24;
        }

LABEL_31:
        __break(1u);
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  sub_1CF55A020(a1, a2, v87);
  a2, v28, v29, v30, v31, v32, v33, v34;
  if (!v5)
  {
    goto LABEL_5;
  }

  sub_1CEFE48D8(a3, a4);
  a2, v35, v36, v37, v38, v39, v40, v41;
}

void sub_1CF4F3594(uint64_t a1, uint64_t a2, _TtC18FileProviderDaemon8FSTester *a3, uint64_t a4)
{
  v5 = a4;
  v34[2] = *MEMORY[0x1E69E9840];
  v9 = sub_1CF9E53C8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC4BCD50 != -1)
  {
    swift_once();
  }

  if (sub_1CEFDB148(a1, a2, qword_1EC4C1718))
  {
    LODWORD(v34[0]) = 22;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF00BC08(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    sub_1CF9E57D8();
    sub_1CF9E53A8();
    (*(v10 + 8))(v12, v9);
    swift_willThrow();
    return;
  }

  if (!a3)
  {
    sub_1CF55A020(a1, a2, v5);
    return;
  }

  v34[0] = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C11D8, &unk_1CFA084E0);
  sub_1CF4F6134(&unk_1EC4C11E0, &qword_1EDEAB3D0, MEMORY[0x1E6969538], MEMORY[0x1E69E6300]);
  v13 = sub_1CF9E56A8();
  if (v4)
  {
    v34[0], v14, v15, v16, v17, v18, v19, v20;
    return;
  }

  v21 = v13;
  v22 = v14;
  v34[0], v14, v15, v16, v17, v18, v19, v20;
  v24 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v24 != 2)
    {
      memset(v34, 0, 14);
      MEMORY[0x1EEE9AC00](v23);
      *(&v33 - 12) = v5;
      *(&v33 - 5) = a1;
      *(&v33 - 4) = a2;
      *(&v33 - 3) = v34;
      *(&v33 - 2) = v34;
      goto LABEL_24;
    }

    v27 = *(v21 + 16);
    v33 = *(v21 + 24);
    v28 = sub_1CF9E5498();
    if (v28)
    {
      v29 = sub_1CF9E54C8();
      if (__OFSUB__(v27, v29))
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v28 += v27 - v29;
    }

    if (!__OFSUB__(v33, v27))
    {
      goto LABEL_17;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v24)
  {
    v33 = (v21 >> 32) - v21;
    if (v21 >> 32 >= v21)
    {
      v28 = sub_1CF9E5498();
      if (v28)
      {
        v32 = sub_1CF9E54C8();
        if (!__OFSUB__(v21, v32))
        {
          v28 += v21 - v32;
          goto LABEL_17;
        }

LABEL_28:
        __break(1u);
      }

LABEL_17:
      v30 = sub_1CF9E54B8();
      MEMORY[0x1EEE9AC00](v30);
      *(&v33 - 12) = v5;
      *(&v33 - 5) = a1;
      *(&v33 - 4) = a2;
      *(&v33 - 3) = v28;
      *(&v33 - 2) = v31;
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_26;
  }

  v34[0] = v21;
  LOWORD(v34[1]) = v22;
  BYTE2(v34[1]) = BYTE2(v22);
  BYTE3(v34[1]) = BYTE3(v22);
  BYTE4(v34[1]) = BYTE4(v22);
  BYTE5(v34[1]) = BYTE5(v22);
  MEMORY[0x1EEE9AC00](v23);
  *(&v33 - 12) = v5;
  *(&v33 - 5) = a1;
  *(&v33 - 4) = a2;
  *(&v33 - 3) = v26;
  *(&v33 - 2) = v25;
LABEL_24:
  sub_1CEFE1894(sub_1CF4F6258);
  sub_1CEFE4714(v21, v22);
}

void sub_1CF4F3AB0(uint64_t a1, uint64_t a2, _TtC18FileProviderDaemon8FSTester *a3, uint64_t a4)
{
  v5 = a4;
  v38[2] = *MEMORY[0x1E69E9840];
  v9 = sub_1CF9E53C8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC4BCD50 != -1)
  {
    swift_once();
  }

  if (sub_1CEFDB148(a1, a2, qword_1EC4C1718))
  {
    LODWORD(v38[0]) = 22;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF00BC08(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    sub_1CF9E57D8();
    sub_1CF9E53A8();
    (*(v10 + 8))(v12, v9);
    swift_willThrow();
    return;
  }

  if (!a3)
  {
    sub_1CF55A020(a1, a2, v5);
    return;
  }

  v38[0] = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFE7C14(&qword_1EDEA3780, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  v13 = sub_1CF9E56A8();
  if (v4)
  {
    v38[0], v14, v15, v16, v17, v18, v19, v20;
    return;
  }

  v21 = v13;
  v22 = v14;
  v38[0], v14, v15, v16, v17, v18, v19, v20;
  v24 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v24 != 2)
    {
      memset(v38, 0, 14);
      MEMORY[0x1EEE9AC00](v23);
      *(&v37 - 12) = v5;
      *(&v37 - 5) = a1;
      *(&v37 - 4) = a2;
      *(&v37 - 3) = v38;
      *(&v37 - 2) = v38;
      v27 = sub_1CF4F6258;
      goto LABEL_24;
    }

    v28 = *(v21 + 16);
    v37 = *(v21 + 24);
    v29 = sub_1CF9E5498();
    if (v29)
    {
      v30 = sub_1CF9E54C8();
      if (__OFSUB__(v28, v30))
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v29 += v28 - v30;
    }

    if (!__OFSUB__(v37, v28))
    {
      v31 = sub_1CF9E54B8();
      MEMORY[0x1EEE9AC00](v31);
      *(&v37 - 12) = v5;
      *(&v37 - 5) = a1;
      *(&v37 - 4) = a2;
      *(&v37 - 3) = v29;
      *(&v37 - 2) = v32;
      v27 = sub_1CF4F60BC;
      goto LABEL_24;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v24)
  {
    v37 = (v21 >> 32) - v21;
    if (v21 >> 32 >= v21)
    {
      v33 = sub_1CF9E5498();
      if (!v33)
      {
LABEL_22:
        v35 = sub_1CF9E54B8();
        MEMORY[0x1EEE9AC00](v35);
        *(&v37 - 12) = v5;
        *(&v37 - 5) = a1;
        *(&v37 - 4) = a2;
        *(&v37 - 3) = v33;
        *(&v37 - 2) = v36;
        v27 = sub_1CF4F6258;
        goto LABEL_24;
      }

      v34 = sub_1CF9E54C8();
      if (!__OFSUB__(v21, v34))
      {
        v33 += v21 - v34;
        goto LABEL_22;
      }

LABEL_28:
      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

  v38[0] = v21;
  LOWORD(v38[1]) = v22;
  BYTE2(v38[1]) = BYTE2(v22);
  BYTE3(v38[1]) = BYTE3(v22);
  BYTE4(v38[1]) = BYTE4(v22);
  BYTE5(v38[1]) = BYTE5(v22);
  MEMORY[0x1EEE9AC00](v23);
  *(&v37 - 12) = v5;
  *(&v37 - 5) = a1;
  *(&v37 - 4) = a2;
  *(&v37 - 3) = v26;
  *(&v37 - 2) = v25;
  v27 = sub_1CF4F6258;
LABEL_24:
  sub_1CEFE1894(v27);
  sub_1CEFE4714(v21, v22);
}

uint64_t sub_1CF4F41C0(uint64_t a1)
{
  v2 = sub_1CF9E5A58();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v69 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v69 - v10;
  sub_1CF9E56C8();
  swift_allocObject();
  v71 = sub_1CF9E56B8();
  type metadata accessor for LocalContainer(0);
  sub_1CEFFBA1C(v11);
  sub_1CEFFBA1C(v5);
  sub_1CF9E5988();
  v12 = *(v3 + 8);
  v72 = v2;
  v12(v5, v2);
  v13 = sub_1CF9E5A18();
  v15 = v14;
  v16 = sub_1CF9E5A18();
  v24 = v17;
  if (v13 == v16 && v15 == v17)
  {
    v41 = a1;
    v15, v17, v18, v19, v20, v21, v22, v23;
    v24, v44, v45, v46, v47, v48, v49, v50;
  }

  else
  {
    v26 = sub_1CF9E8048();
    v15, v27, v28, v29, v30, v31, v32, v33;
    v24, v34, v35, v36, v37, v38, v39, v40;
    v41 = a1;
    if ((v26 & 1) == 0)
    {
      v70 = sub_1CF7E2460();
      v43 = v42;
      goto LABEL_9;
    }
  }

  v70 = 0;
  v43 = 0;
LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C11C8, &qword_1CFA084D8);
  sub_1CF9E5CF8();
  v51 = swift_allocObject();
  v69 = xmmword_1CF9FA450;
  *(v51 + 16) = xmmword_1CF9FA450;
  sub_1CF9E5CE8();
  sub_1CF4F3594(0xD000000000000017, 0x80000001CFA3F6B0, v51, v41);
  v51, v52, v53, v54, v55, v56, v57, v58;
  if (v43)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C11D0, &unk_1CF9FE760);
    v59 = swift_allocObject();
    *(v59 + 16) = v69;
    *(v59 + 32) = v70;
    *(v59 + 40) = v43;
    v43 = v59;
  }

  sub_1CF4F3AB0(0xD00000000000001ALL, 0x80000001CFA50E50, v43, v41);

  v43, v60, v61, v62, v63, v64, v65, v66;
  v67 = v72;
  v12(v8, v72);
  v12(v11, v67);
  return 0;
}

uint64_t sub_1CF4F45A0(uint64_t a1)
{
  v1 = a1;
  sub_1CF55A020(0xD000000000000017, 0x80000001CFA3F6B0, a1);
  sub_1CF55A020(0xD00000000000001ALL, 0x80000001CFA50E50, v1);
  return 0;
}

void sub_1CF4F4634(int a1, Class *a2)
{
  sub_1CF9E5688();
  swift_allocObject();
  v4 = sub_1CF9E5678();
  v5 = sub_1CF4F2A94(0xD00000000000001ALL, 0x80000001CFA50E50, a1, v4);

  if (v5)
  {
    if (*v5->tree)
    {
      isa = v5[1].super.isa;
      v6 = *v5[1]._anon_8;

      v5, v8, v9, v10, v11, v12, v13, v14;
      v15 = a2[1];
      *a2 = isa;
      a2[1] = v6;
      v15, v16, v17, v18, v19, v20, v21, v22;
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1CF4F470C(char *a1)
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v61 = &v58 - v3;
  v4 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v59 = (&v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v58 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1188, &unk_1CFA084B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v58 - v9;
  v11 = type metadata accessor for LocalItemContext(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v58 - v15;
  v17 = sub_1CF9E5A58();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v63 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v58 = &v58 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v58 - v23;
  v25 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fileURL;
  swift_beginAccess();
  sub_1CEFCCBDC(&a1[v25], v16, &unk_1EC4BE310, qword_1CF9FCBE0);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1CEFCCC44(v16, &unk_1EC4BE310, qword_1CF9FCBE0);
    v65 = 0;
    v66 = 0xE000000000000000;
    sub_1CF9E7948();
    v66, v40, v41, v42, v43, v44, v45, v46;
    v65 = 0x20676E697373696DLL;
    v66 = 0xEF206E6F204C5255;
    v47 = [a1 description];
    v48 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v50 = v49;

    MEMORY[0x1D3868CC0](v48, v50);
    v50, v51, v52, v53, v54, v55, v56, v57;
    result = sub_1CF9E7B68();
    __break(1u);
  }

  else
  {
    (*(v18 + 32))(v24, v16, v17);
    v26 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_domain;
    sub_1CF00409C(&a1[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_domain], v10);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      (*(v18 + 8))(v24, v17);
      sub_1CEFCCC44(v10, &qword_1EC4C1188, &unk_1CFA084B0);
      return 0;
    }

    v27 = v64;
    sub_1CF005114(v10, v64, type metadata accessor for LocalItemContext);
    if (*(v27 + *(v11 + 32)))
    {
      sub_1CF000630(v27, type metadata accessor for LocalItemContext);
      (*(v18 + 8))(v24, v17);
      return 0;
    }

    v29 = type metadata accessor for LocalContainer(0);
    v30 = *(v18 + 16);
    v31 = v58;
    v30(v58, v27 + *(v29 + 28), v17);
    v32 = &a1[v26];
    v33 = v60;
    sub_1CF001614(v32, v60, type metadata accessor for LocalDomain);
    v30(v63, v31, v17);
    v34 = v59;
    sub_1CF001614(v33, v59, type metadata accessor for LocalDomain);
    v35 = type metadata accessor for VFSItem(0);
    v36 = v61;
    (*(*(v35 - 8) + 56))(v61, 1, 1, v35);
    v37 = objc_allocWithZone(ObjectType);
    v38 = sub_1CF001704(v63, v34, v36);
    sub_1CF000630(v33, type metadata accessor for LocalDomain);
    v39 = *(v18 + 8);
    v39(v31, v17);
    sub_1CF000630(v27, type metadata accessor for LocalItemContext);
    v39(v24, v17);
    return v38;
  }

  return result;
}

void sub_1CF4F4DA8(uint64_t a1)
{
  sub_1CF9E5FF8();
  if (v1 <= 0x3F)
  {
    sub_1CF4F5028(319, &qword_1EDEAFE00, MEMORY[0x1E6969530]);
    if (v2 <= 0x3F)
    {
      sub_1CF4F5028(319, &qword_1EDEAB438, MEMORY[0x1E6968A70]);
      if (v3 <= 0x3F)
      {
        sub_1CF4F5028(319, &qword_1EDEAFE20, MEMORY[0x1E6968FB0]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for LocalDomain(319);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1CF4F5028(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CF9E75D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1CF4F507C(uint64_t a1, char a2, uint64_t a3)
{
  LOBYTE(v17) = a2;
  v18 = VFSItemID.description.getter(a1);
  MEMORY[0x1D3868CC0](47, 0xE100000000000000);
  v3 = sub_1CF9E6888();
  v4 = [v3 fp_obfuscatedFilename];

  v5 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v7 = v6;

  MEMORY[0x1D3868CC0](v5, v7);
  v7, v8, v9, v10, v11, v12, v13, v14;
  return v18;
}

void sub_1CF4F5130(uint64_t a1)
{
  v2 = a1;
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v7 = swift_slowAlloc();
      sub_1CF4F54B4(v7, v4, v2);
      MEMORY[0x1D386CDC0](v7, -1, -1);
      return;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v6 = v8 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_1CF4F5290(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }
}

void sub_1CF4F5290(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v38 = 0;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v16 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_12:
    v19 = v16 | (v3 << 6);
    v20 = (*(a3 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = (*(a3 + 56) + 16 * v19);
    v24 = *v23;
    v25 = v23[1];

    sub_1CEFE42D4(v24, v25);
    if ((sub_1CF9E6AE8() & 1) != 0 || (sub_1CF9E6AE8() & 1) != 0 || (v21 == 0xD000000000000029 ? (v26 = 0x80000001CFA50C70 == v22) : (v26 = 0), v26))
    {
      sub_1CEFE4714(v24, v25);
      v22, v9, v10, v11, v12, v13, v14, v15;
    }

    else
    {
      v27 = sub_1CF9E8048();
      sub_1CEFE4714(v24, v25);
      v22, v28, v29, v30, v31, v32, v33, v34;
      if ((v27 & 1) == 0)
      {
        *(result + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        if (__OFADD__(v38++, 1))
        {
          __break(1u);
LABEL_22:
          sub_1CF0435B0(result, a2, v38, a3);
          return;
        }
      }
    }
  }

  v17 = v3;
  while (1)
  {
    v3 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      goto LABEL_22;
    }

    v18 = *(v4 + 8 * v3);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v7 = (v18 - 1) & v18;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void *sub_1CF4F54B4(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_1CF4F5290(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_1CF4F552C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B48, &unk_1CFA079E0);
  result = sub_1CF9E7BE8();
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
  v35 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = 16 * (v13 | (v11 << 6));
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + v16);
    v22 = v21[1];
    v36 = *v21;
    sub_1CF9E81D8();

    sub_1CF9E69C8();
    result = sub_1CF9E8228();
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
    v31 = 16 * v26;
    v32 = (*(v9 + 48) + v31);
    *v32 = v19;
    v32[1] = v20;
    v33 = (*(v9 + 56) + v31);
    *v33 = v36;
    v33[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v35;
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

uint64_t sub_1CF4F5784(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C11A8, &qword_1CFA084C8);
  result = sub_1CF9E7BE8();
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
  v31 = v4;
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
    v32 = *(v17 + 8 * v16);
    sub_1CF9E81D8();

    sub_1CF9E69C8();
    result = sub_1CF9E8228();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    *(*(v9 + 56) + 8 * v24) = v32;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
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

uint64_t sub_1CF4F59C0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C11A0, &qword_1CFA07A40);
  result = sub_1CF9E7BE8();
  v8 = result;
  if (a2 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a1;
  }

  v10 = 0;
  v11 = result + 64;
  v48 = result;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v49 = (v9 - 1) & v9;
LABEL_16:
    v15 = 16 * (v12 | (v10 << 6));
    v16 = *(v4 + 48) + v15;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 9);
    v20 = (*(v4 + 56) + v15);
    v21 = v20[1];
    v50 = *v20;
    sub_1CF9E81D8();
    if (v19)
    {
      MEMORY[0x1D386A470](1);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v22 = v4;
      v24 = v23;

      sub_1CEFD0988(v17, v18, 1);
      sub_1CF9E69C8();
      v25 = v24;
      v4 = v22;
      v25, v26, v27, v28, v29, v30, v31, v32;
    }

    else
    {
      MEMORY[0x1D386A470](0);
      if (v18)
      {
        if (v18 == 1)
        {
          MEMORY[0x1D386A470](1);
          MEMORY[0x1D386A4A0](v17);
        }

        else
        {
          if (v17)
          {
            v33 = 3;
          }

          else
          {
            v33 = 2;
          }

          MEMORY[0x1D386A470](v33);
        }
      }

      else
      {
        MEMORY[0x1D386A470](0);
        sub_1CF9E8208();
      }
    }

    result = sub_1CF9E8228();
    v8 = v48;
    v34 = -1 << *(v48 + 32);
    v35 = result & ~v34;
    v36 = v35 >> 6;
    if (((-1 << v35) & ~*(v11 + 8 * (v35 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v34) >> 6;
      v38 = v21;
      while (++v36 != v40 || (v39 & 1) == 0)
      {
        v41 = v36 == v40;
        if (v36 == v40)
        {
          v36 = 0;
        }

        v39 |= v41;
        v42 = *(v11 + 8 * v36);
        if (v42 != -1)
        {
          v37 = __clz(__rbit64(~v42)) + (v36 << 6);
          goto LABEL_37;
        }
      }

      goto LABEL_42;
    }

    v37 = __clz(__rbit64((-1 << v35) & ~*(v11 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
    v38 = v21;
LABEL_37:
    *(v11 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
    v43 = 16 * v37;
    v44 = *(v48 + 48) + v43;
    *v44 = v17;
    *(v44 + 8) = v18;
    *(v44 + 9) = v19;
    v45 = (*(v48 + 56) + v43);
    *v45 = v50;
    v45[1] = v38;
    ++*(v48 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_43;
    }

    v9 = v49;
    if (!v5)
    {
      return v8;
    }
  }

  v13 = v10;
  while (1)
  {
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v10 >= a2)
    {
      return v8;
    }

    v14 = a1[v10];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v49 = (v14 - 1) & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_1CF4F5CF4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0DC0, &qword_1CFA07C50);
  result = sub_1CF9E7BE8();
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    sub_1CEFF6FC0(*(v4 + 56) + 16 * v16, v28);
    sub_1CEFF701C(v28, v27);
    result = sub_1CF9E81C8();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    result = sub_1CEFF701C(v27, *(v9 + 56) + 16 * v21);
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

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

unint64_t sub_1CF4F5F14(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

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
  result = sub_1CF9E6A08();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1CF9E6B58();
}

void sub_1CF4F5FC4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = __CFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v3;
  }
}

unint64_t sub_1CF4F601C()
{
  result = qword_1EDEAEC28[0];
  if (!qword_1EDEAEC28[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BF250, &unk_1CFA01B50);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEAEC28);
  }

  return result;
}

uint64_t sub_1CF4F6080@<X0>(_DWORD *a1@<X8>)
{
  result = fpfs_pkg_promote();
  *a1 = result;
  return result;
}

uint64_t sub_1CF4F6134(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C11D8, &unk_1CFA084E0);
    sub_1CF00BC08(a2, MEMORY[0x1E6969530], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CF4F61D0(uint64_t a1)
{
  result = type metadata accessor for LocalContainer(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CF4F62B0(uint64_t a1)
{
  result = sub_1CF9E5A58();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CF4F6354()
{
  sub_1CF9E81D8();
  sub_1CF9E69C8();
  0xE100000000000000, v0, v1, v2, v3, v4, v5, v6;
  return sub_1CF9E8228();
}

void sub_1CF4F63B0(uint64_t a1)
{
  sub_1CF9E69C8();

  0xE100000000000000, v1, v2, v3, v4, v5, v6, v7;
}

uint64_t sub_1CF4F63F0(uint64_t a1)
{
  sub_1CF9E81D8();
  sub_1CF9E69C8();
  0xE100000000000000, v1, v2, v3, v4, v5, v6, v7;
  return sub_1CF9E8228();
}

unint64_t sub_1CF4F6448@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CF4F696C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1CF4F6494@<X0>(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CF4F696C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CF4F64BC(uint64_t a1)
{
  v2 = sub_1CF00E7B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF4F64F8(uint64_t a1)
{
  v2 = sub_1CF00E7B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF4F6534(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1208, &qword_1CFA085F0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF00E7B8();
  sub_1CF9E82A8();
  v8[15] = 0;
  sub_1CF9E7EE8();
  if (!v1)
  {
    v8[14] = 1;
    sub_1CF9E7EB8();
    v8[13] = 2;
    sub_1CF9E7EB8();
    type metadata accessor for LocalDomain(0);
    v8[12] = 3;
    sub_1CF9E5A58();
    sub_1CF00E824(&qword_1EC4BEAA0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1CF9E7F08();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1CF4F6770()
{
  MEMORY[0x1D3868CC0](60, 0xE100000000000000);
  MEMORY[0x1D3868CC0](0x6D6F446C61636F4CLL, 0xEB000000006E6961);
  MEMORY[0x1D3868CC0](58, 0xE100000000000000);
  v2 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1210, &qword_1CFA085F8);
  sub_1CF9E7B58();
  MEMORY[0x1D3868CC0](32, 0xE100000000000000);
  MEMORY[0x1D3868CC0](v2[2], v2[3]);
  MEMORY[0x1D3868CC0](8736, 0xE200000000000000);
  MEMORY[0x1D3868CC0](v2[4], v2[5]);
  MEMORY[0x1D3868CC0](15906, 0xE200000000000000);
  return 0;
}

uint64_t sub_1CF4F6890(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8) && (*(a1 + 16) == *(a2 + 16) ? (v4 = *(a1 + 24) == *(a2 + 24)) : (v4 = 0), (v4 || (sub_1CF9E8048() & 1) != 0) && (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) || (sub_1CF9E8048() & 1) != 0)) && (v5 = type metadata accessor for LocalDomain(0), (sub_1CF9E59A8() & 1) != 0))
  {
    v6 = *(a1 + *(v5 + 36)) ^ *(a2 + *(v5 + 36)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

unint64_t sub_1CF4F696C(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2)
{
  v3 = sub_1CF9E7C78();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1CF4F69CC()
{
  result = qword_1EC4C1218;
  if (!qword_1EC4C1218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1218);
  }

  return result;
}

unint64_t sub_1CF4F6A24()
{
  result = qword_1EDEAA318;
  if (!qword_1EDEAA318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAA318);
  }

  return result;
}

unint64_t sub_1CF4F6A7C()
{
  result = qword_1EDEAA320;
  if (!qword_1EDEAA320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAA320);
  }

  return result;
}

uint64_t sub_1CF4F6AD0(void *a1, uint64_t a2)
{
  v3 = v2;
  v125 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0FE0, qword_1CFA07EC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v120 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v120 - v12;
  v14 = type metadata accessor for FSChangeToken(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v126 = v13;
  v16(v13, 1, 1, v14);
  v17 = sub_1CF9E5B88();
  v19 = v18;
  v20 = sub_1CF9E5B48();
  sub_1CEFE4714(v17, v19);
  v21 = *MEMORY[0x1E6967200];
  sub_1CEFD57E0(0, &unk_1EDEA3450, 0x1E695DEF0);
  v22 = v21;
  v23 = sub_1CF9E7568();

  if (v23 & 1) != 0 || (v24 = *MEMORY[0x1E6967208], v25 = sub_1CF9E7568(), v24, (v25) || (v26 = sub_1CF9E5B88(), sub_1CF01426C(v26, v27, v10), v28 = v126, sub_1CEFDA9E0(v10, v126, &unk_1EC4C0FE0, qword_1CFA07EC0), sub_1CEFCCBDC(v28, v7, &unk_1EC4C0FE0, qword_1CFA07EC0), LODWORD(v28) = (*(v15 + 48))(v7, 1, v14), sub_1CEFCCC44(v7, &unk_1EC4C0FE0, qword_1CFA07EC0), v28 != 1))
  {
    v124 = v20;
    v127 = 0;
    v128 = 0xE000000000000000;
    sub_1CF9E7948();
    v128, v45, v46, v47, v48, v49, v50, v51;
    v127 = 0xD000000000000015;
    v128 = 0x80000001CFA50130;
    v52 = [v3 description];
    v53 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v55 = v54;

    MEMORY[0x1D3868CC0](v53, v55);
    v55, v56, v57, v58, v59, v60, v61, v62;
    MEMORY[0x1D3868CC0](0x3A64695B20, 0xE500000000000000);
    v123 = v3;
    v63 = NSFileProviderItemIdentifier.description.getter(*&v3[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_observedID]);
    v65 = v64;
    MEMORY[0x1D3868CC0](v63);
    v65, v66, v67, v68, v69, v70, v71, v72;
    MEMORY[0x1D3868CC0](0x3A6D6F726620, 0xE600000000000000);
    v73 = NSFileProviderPage.description.getter(a2);
    v75 = v74;
    MEMORY[0x1D3868CC0](v73);
    v75, v76, v77, v78, v79, v80, v81, v82;
    MEMORY[0x1D3868CC0](93, 0xE100000000000000);
    v83 = v128;
    v121 = v127;
    v84 = sub_1CEFFCE80();
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    v85 = qword_1EDEBB5A0;
    v86 = sub_1CF9E7298();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_1CF9FA440;
    v127 = v84;
    sub_1CEFFD0A8();
    v88 = sub_1CF9E7718();
    v122 = v84;
    v90 = v89;
    v91 = MEMORY[0x1E69E6158];
    *(v87 + 56) = MEMORY[0x1E69E6158];
    v92 = sub_1CEFD51C4();
    *(v87 + 32) = v88;
    *(v87 + 40) = v90;
    *(v87 + 96) = v91;
    *(v87 + 104) = v92;
    v93 = v121;
    *(v87 + 64) = v92;
    *(v87 + 72) = v93;
    *(v87 + 80) = v83;

    sub_1CF9E6018("[DEBUG] ┏%@ %@", 16, 0, &dword_1CEFC7000, v85, v86, v87);
    v87, v94, v95, v96, v97, v98, v99, v100;
    v44 = v126;
    sub_1CF4F7BEC(v123, v125, v126);
    v83, v101, v102, v103, v104, v105, v106, v107;
    v108 = sub_1CF9E7298();
    v109 = swift_allocObject();
    *(v109 + 16) = xmmword_1CF9FA450;
    v127 = v122;
    v110 = sub_1CF9E7718();
    *(v109 + 56) = MEMORY[0x1E69E6158];
    *(v109 + 64) = v92;
    *(v109 + 32) = v110;
    *(v109 + 40) = v111;
    sub_1CF9E6018("[DEBUG] ┗%@", 13, 0, &dword_1CEFC7000, v85, v108, v109);

    v109, v112, v113, v114, v115, v116, v117, v118;
  }

  else
  {
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    v29 = qword_1EDEBB5A0;
    v30 = sub_1CF9E72A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1CF9FA450;
    *(v31 + 56) = MEMORY[0x1E69E6158];
    *(v31 + 64) = sub_1CEFD51C4();
    *(v31 + 32) = 0xD000000000000035;
    *(v31 + 40) = 0x80000001CFA500D0;
    sub_1CF9E6018("[ERROR] %@", 10, 2, &dword_1CEFC7000, v29, v30, v31);
    v31, v32, v33, v34, v35, v36, v37, v38;
    v39 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v40 = sub_1CF9E6888();
    v41 = [v39 initWithDomain:v40 code:-1002 userInfo:0];

    v42 = v41;
    v43 = sub_1CF9E57E8();

    [v125 finishEnumeratingWithError_];
    v44 = v126;
  }

  return sub_1CEFCCC44(v44, &unk_1EC4C0FE0, qword_1CFA07EC0);
}

uint64_t sub_1CF4F71D0()
{
  v1 = v0;
  v24[1] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23[-v6];
  *&v9 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v11 = &v23[-v10];
  if (([v1 respondsToSelector_] & 1) == 0)
  {
    __break(1u);
  }

  v12 = [v1 fileURL];
  if (v12)
  {
    v13 = v12;
    sub_1CF9E59D8();

    v14 = sub_1CF9E5A58();
    (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
  }

  else
  {
    v14 = sub_1CF9E5A58();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  }

  sub_1CF007D78(v7, v11);
  v15 = [objc_opt_self() fp_defaultManager];
  sub_1CEFCCBDC(v11, v4, &unk_1EC4BE310, qword_1CF9FCBE0);
  sub_1CF9E5A58();
  v16 = *(v14 - 8);
  v17 = 0;
  if ((*(v16 + 48))(v4, 1, v14) != 1)
  {
    v17 = sub_1CF9E5928();
    (*(v16 + 8))(v4, v14);
  }

  v24[0] = 0;
  v18 = [v15 permanentStorageForItemAtURL:v17 allocateIfNone:0 error:v24];

  if (v18)
  {
    v19 = v24[0];
  }

  else
  {
    v20 = v24[0];
    v21 = sub_1CF9E57F8();

    swift_willThrow();
  }

  return sub_1CEFCCC44(v11, &unk_1EC4BE310, qword_1CF9FCBE0);
}

uint64_t sub_1CF4F74D4()
{
  v1 = v0;
  v30[1] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v29[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29[-v6];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29[-v9];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29[-v12];
  *&v15 = MEMORY[0x1EEE9AC00](v14).n128_u64[0];
  v17 = &v29[-v16];
  if (([v1 respondsToSelector_] & 1) == 0)
  {
    __break(1u);
  }

  v18 = [v1 fileURL];
  if (v18)
  {
    v19 = v18;
    sub_1CF9E59D8();

    v20 = sub_1CF9E5A58();
    (*(*(v20 - 8) + 56))(v7, 0, 1, v20);
  }

  else
  {
    v20 = sub_1CF9E5A58();
    (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  }

  sub_1CF007D78(v7, v10);
  sub_1CF007D78(v10, v13);
  sub_1CF007D78(v13, v17);
  v21 = [objc_opt_self() fp_defaultManager];
  sub_1CEFCCBDC(v17, v4, &unk_1EC4BE310, qword_1CF9FCBE0);
  sub_1CF9E5A58();
  v22 = *(v20 - 8);
  v23 = 0;
  if ((*(v22 + 48))(v4, 1, v20) != 1)
  {
    v23 = sub_1CF9E5928();
    (*(v22 + 8))(v4, v20);
  }

  v30[0] = 0;
  v24 = [v21 permanentStorageForItemAtURL:v23 allocateIfNone:0 error:v30];

  if (v24)
  {
    v25 = v30[0];
  }

  else
  {
    v26 = v30[0];
    v27 = sub_1CF9E57F8();

    swift_willThrow();
  }

  return sub_1CEFCCC44(v17, &unk_1EC4BE310, qword_1CF9FCBE0);
}

void sub_1CF4F7838(unint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC18FileProviderDaemon27LocalChangesObserverContext_shouldUpdateFileIDInGenstore) != 1)
  {
    goto LABEL_11;
  }

  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_11:
    v5 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon27LocalChangesObserverContext_observer);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF580, &qword_1CFA01DB0);
    v6 = sub_1CF9E6D28();
    [v5 didUpdateItems_];

    return;
  }

  v3 = sub_1CF9E7818();
  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1D3869C30](v4, a1);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      ++v4;
      swift_dynamicCastObjCProtocolUnconditional();
      sub_1CF4F74D4();
      swift_unknownObjectRelease();
    }

    while (v3 != v4);
    goto LABEL_11;
  }

  __break(1u);
}

void *sub_1CF4F7A10(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon27LocalChangesObserverContext_observer);
    v5 = sub_1CF9E57E8();
    [v4 finishEnumeratingWithError_];

    MEMORY[0x1EEE9AC00](v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1278, qword_1CFA08838);
    sub_1CF9E7398();

    return swift_unknownObjectWeakAssign();
  }

  return result;
}

id sub_1CF4F7BB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocalChangesObserverContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1CF4F7BEC(char *a1, void *a2, uint64_t a3)
{
  v510 = a3;
  v511 = a2;
  v505 = type metadata accessor for FSDirectoryEnumerator(0);
  v506 = *(v505 - 8);
  MEMORY[0x1EEE9AC00](v505);
  v507 = v4;
  v508 = &v489 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v514 = (&v489 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v502 = &v489 - v8;
  v9 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v501 = (&v489 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v500 = (&v489 - v12);
  v516 = sub_1CF9E5A58();
  *&v515 = *(v516 - 8);
  MEMORY[0x1EEE9AC00](v516);
  v518 = &v489 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v498 = &v489 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v499 = &v489 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0FE0, qword_1CFA07EC0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v497 = &v489 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v504 = &v489 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v489 - v23;
  v25 = type metadata accessor for FSChangeToken(0);
  v26 = *(v25 - 1);
  MEMORY[0x1EEE9AC00](v25);
  *&v509 = &v489 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v503 = &v489 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v489 - v31;
  v33 = sub_1CF9E5D98();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v489 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FSEventReader(0);
  v512 = &a1[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_domain];
  v513 = a1;
  v37 = *&a1[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_domain + 8];
  sub_1CF01A820(v37, v32);
  v38 = v33;
  v39 = v34;
  if ((*(v34 + 48))(v32, 1, v38) == 1)
  {
    sub_1CEFCCC44(v32, &unk_1EC4BEDE0, qword_1CF9FA390);
    v519 = 0;
    v520 = 0xE000000000000000;
    sub_1CF9E7948();
    v520, v40, v41, v42, v43, v44, v45, v46;
    v519 = 0xD00000000000001ALL;
    v520 = 0x80000001CFA51050;
    LODWORD(v521) = v37;
    v47 = sub_1CF9E7F98();
    v49 = v48;
    MEMORY[0x1D3868CC0](v47);
    v49, v50, v51, v52, v53, v54, v55, v56;
    v57 = v519;
    v58 = v520;
    if (qword_1EDEA3408 != -1)
    {
      goto LABEL_86;
    }

    goto LABEL_3;
  }

  (*(v34 + 32))(v36, v32, v38);
  sub_1CEFCCBDC(v510, v24, &unk_1EC4C0FE0, qword_1CFA07EC0);
  v74 = *(v26 + 48);
  v492 = v26 + 48;
  v491 = v74;
  v75 = v74(v24, 1, v25);
  v76 = v36;
  v496 = v38;
  v495 = v39;
  if (v75 == 1)
  {
    v489 = v26;
    v493 = v25;
    sub_1CEFCCC44(v24, &unk_1EC4C0FE0, qword_1CFA07EC0);
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    v77 = qword_1EDEBB5A0;
    v78 = sub_1CF9E7298();
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v80 = swift_allocObject();
    v509 = xmmword_1CF9FA450;
    *(v80 + 16) = xmmword_1CF9FA450;
    *(v80 + 56) = MEMORY[0x1E69E6158];
    v81 = sub_1CEFD51C4();
    *(v80 + 64) = v81;
    *(v80 + 32) = 0xD000000000000012;
    *(v80 + 40) = 0x80000001CFA51140;
    v494 = v77;
    sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v77, v78, v80);
    v80, v82, v83, v84, v85, v86, v87, v88;
    CurrentEventId = FSEventsGetCurrentEventId();
    v90 = OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_itemURL;
    v91 = v513;
    v92 = sub_1CF9E5928();
    LOBYTE(v80) = [v92 fp_isFolder];

    v490 = v76;
    if ((v80 & 1) == 0)
    {
      v514 = v81;
      v518 = v79;
      v169 = v515;
      v170 = *(v515 + 16);
      v171 = &v91[v90];
      v172 = v499;
      v173 = v516;
      v170(v499, v171, v516);
      v174 = v500;
      sub_1CF00BE78(v512, v500, type metadata accessor for LocalDomain);
      v175 = v498;
      v170(v498, v172, v173);
      v176 = v501;
      sub_1CF00BE78(v174, v501, type metadata accessor for LocalDomain);
      v177 = type metadata accessor for VFSItem(0);
      v178 = v502;
      (*(*(v177 - 8) + 56))(v502, 1, 1, v177);
      v179 = objc_allocWithZone(type metadata accessor for LocalItem(0));
      v180 = v175;
      v181 = v490;
      v182 = sub_1CF001704(v180, v176, v178);
      sub_1CF00F304(v174, type metadata accessor for LocalDomain);
      (*(v169 + 8))(v172, v173);
      v183 = v511;
      if (v182)
      {
        v184 = sub_1CF9E7298();
        v185 = swift_allocObject();
        *(v185 + 16) = v509;
        v186 = v514;
        *(v185 + 56) = MEMORY[0x1E69E6158];
        *(v185 + 64) = v186;
        *(v185 + 32) = 0xD000000000000011;
        *(v185 + 40) = 0x80000001CFA51160;
        sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v494, v184, v185);
        v185, v187, v188, v189, v190, v191, v192, v193;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
        v194 = swift_allocObject();
        *(v194 + 16) = xmmword_1CFA00250;
        *(v194 + 32) = v182;
        v195 = v182;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF580, &qword_1CFA01DB0);
        v196 = sub_1CF9E6D28();
        v194, v197, v198, v199, v200, v201, v202, v203;
        [v183 didEnumerateItems_];
      }

      [v183 finishEnumeratingUpToPage_];
      (*(v495 + 8))(v181, v496);
      return;
    }

    v93 = CurrentEventId;
    v94 = v516;
  }

  else
  {
    v95 = v509;
    sub_1CF00F23C(v24, v509, type metadata accessor for FSChangeToken);
    v96 = v36;
    if ((sub_1CF9E5D48() & 1) == 0)
    {
      v519 = 0;
      v520 = 0xE000000000000000;
      sub_1CF9E7948();
      v520, v204, v205, v206, v207, v208, v209, v210;
      v519 = 0xD000000000000015;
      v520 = 0x80000001CFA51070;
      sub_1CF00FE88(&qword_1EDEAECB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v211 = v496;
      v212 = sub_1CF9E7F98();
      v214 = v213;
      MEMORY[0x1D3868CC0](v212);
      v214, v215, v216, v217, v218, v219, v220, v221;
      MEMORY[0x1D3868CC0](540945696, 0xE400000000000000);
      v222 = sub_1CF9E7F98();
      v224 = v223;
      MEMORY[0x1D3868CC0](v222);
      v224, v225, v226, v227, v228, v229, v230, v231;
      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      v232 = v95;
      v233 = v519;
      v234 = v520;
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      v235 = qword_1EDEBB5A0;
      v236 = sub_1CF9E7288();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v237 = swift_allocObject();
      *(v237 + 16) = xmmword_1CF9FA450;
      *(v237 + 56) = MEMORY[0x1E69E6158];
      *(v237 + 64) = sub_1CEFD51C4();
      *(v237 + 32) = v233;
      *(v237 + 40) = v234;
      sub_1CF9E6018("[INFO] %@", 9, 2, &dword_1CEFC7000, v235, v236, v237);
      v237, v238, v239, v240, v241, v242, v243, v244;
      v245 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v246 = sub_1CF9E6888();
      v247 = [v245 initWithDomain:v246 code:-1002 userInfo:0];

      v248 = v247;
      v249 = sub_1CF9E57E8();

      [v511 finishEnumeratingWithError_];
      sub_1CF00F304(v232, type metadata accessor for FSChangeToken);
      (*(v495 + 8))(v96, v211);
      return;
    }

    v489 = v26;
    v490 = v36;
    v519 = 0;
    v520 = 0xE000000000000000;
    sub_1CF9E7948();
    v520, v97, v98, v99, v100, v101, v102, v103;
    v519 = 0xD00000000000001ELL;
    v520 = 0x80000001CFA511F0;
    v521 = *(v95 + v25[8]);
    v104 = sub_1CF9E7F98();
    v106 = v105;
    MEMORY[0x1D3868CC0](v104);
    v106, v107, v108, v109, v110, v111, v112, v113;
    v114 = v95;
    v115 = v519;
    v116 = v520;
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    v117 = qword_1EDEBB5A0;
    v118 = sub_1CF9E7298();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v119 = swift_allocObject();
    *(v119 + 16) = xmmword_1CF9FA450;
    *(v119 + 56) = MEMORY[0x1E69E6158];
    *(v119 + 64) = sub_1CEFD51C4();
    *(v119 + 32) = v115;
    *(v119 + 40) = v116;
    v494 = v117;
    sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v117, v118, v119);
    v119, v120, v121, v122, v123, v124, v125, v126;
    v493 = v25;
    v93 = *(v114 + v25[5]);
    CurrentEventId = *(v114 + v25[6]);
    sub_1CF00F304(v114, type metadata accessor for FSChangeToken);
    v94 = v516;
    v91 = v513;
  }

  v127 = *&v91[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_observedID];
  v128 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v130 = v129;
  v132 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v138 = v131;
  v501 = v93;
  if (v128 == v132 && v130 == v131)
  {
    v130, v131, v132, v133, v134, v135, v136, v137;
    v138, v139, v140, v141, v142, v143, v144, v145;
    v146 = v511;
LABEL_19:
    v163 = *&v91[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_urls];

    v164 = 1;
    goto LABEL_20;
  }

  v147 = sub_1CF9E8048();
  v148 = v127;
  v130, v149, v150, v151, v152, v153, v154, v155;
  v138, v156, v157, v158, v159, v160, v161, v162;
  if (v147)
  {

LABEL_18:
    v146 = v511;
    v91 = v513;
    goto LABEL_19;
  }

  v406 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v408 = v407;
  v410 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v411 = v406;
  v412 = v409;
  if (v411 == v410 && v408 == v409)
  {

    v408, v413, v414, v415, v416, v417, v418, v419;
    v412, v420, v421, v422, v423, v424, v425, v426;
LABEL_79:
    v91 = v513;
    v163 = *&v513[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_urls];

    v164 = 0;
    v146 = v511;
    goto LABEL_20;
  }

  v437 = sub_1CF9E8048();
  v408, v438, v439, v440, v441, v442, v443, v444;
  v412, v445, v446, v447, v448, v449, v450, v451;
  if (v437)
  {

    goto LABEL_79;
  }

  v452 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v454 = v453;
  v455 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v457 = v456;
  if (v452 == v455 && v454 == v456)
  {

    v454, v458, v459, v460, v461, v462, v463, v464;
    v457, v465, v466, v467, v468, v469, v470, v471;
    goto LABEL_18;
  }

  v472 = sub_1CF9E8048();

  v454, v473, v474, v475, v476, v477, v478, v479;
  v457, v480, v481, v482, v483, v484, v485, v486;
  v146 = v511;
  v91 = v513;
  if (v472)
  {
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
  v487 = v515;
  v488 = (*(v515 + 80) + 32) & ~*(v515 + 80);
  v163 = swift_allocObject();
  *(v163 + 16) = xmmword_1CF9FA450;
  (*(v487 + 16))(v163 + v488, &v91[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_itemURL], v94);
  v164 = 0;
LABEL_20:
  v165 = v510;
  v166 = swift_allocObject();
  v502 = v166;
  *(v166 + 16) = MEMORY[0x1E69E7CC0];
  v500 = (v166 + 16);
  v167 = v493;
  if (v491(v165, 1, v493))
  {
    v168 = 0;
  }

  else
  {
    v168 = *(v165 + v167[8]);
  }

  if (([v146 respondsToSelector_] & 1) == 0)
  {
    goto LABEL_32;
  }

  v250 = [v146 suggestedPageSize];
  if (v250 < 0)
  {
    __break(1u);
LABEL_32:
    v250 = 200;
  }

  v499 = CurrentEventId;
  v251 = v505;
  v252 = v514;
  sub_1CF00BE78(v512, v514 + *(v505 + 20), type metadata accessor for LocalDomain);
  v253 = (v252 + v251[9]);
  *v252 = v163;
  *(v252 + v251[6]) = v164;
  v254 = v251[7];
  v498 = v168;
  *(v252 + v254) = v168;
  *(v252 + v251[8]) = v250;
  *v253 = sub_1CF4F9A04;
  v253[1] = 0;
  v255 = swift_allocObject();
  v256 = v502;
  *(v255 + 16) = v91;
  *(v255 + 24) = v256;
  v257 = v508;
  sub_1CF00BE78(v252, v508, type metadata accessor for FSDirectoryEnumerator);
  v258 = (*(v506 + 80) + 16) & ~*(v506 + 80);
  v259 = (v507 + v258 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = v164;
  v260 = swift_allocObject();
  sub_1CF00F23C(v257, v260 + v258, type metadata accessor for FSDirectoryEnumerator);
  *&v509 = v260;
  v261 = (v260 + v259);
  *v261 = sub_1CF4FB258;
  v261[1] = v255;
  v262 = 3;
  if (!v58)
  {
    v262 = 7;
  }

  v507 = v262;
  v519 = 0;
  v505 = v250;
  LOBYTE(v521) = v250 != 0;
  v263 = *(v163 + 16);
  v264 = v513;

  v506 = v255;

  if (!v263)
  {
LABEL_53:

    v294 = v519;
    v519 = 0;
    v520 = 0xE000000000000000;
    sub_1CF9E7948();
    v520, v295, v296, v297, v298, v299, v300, v301;
    v521 = 0x20676E69646E6573;
    v522 = 0xE800000000000000;
    v302 = v500;
    swift_beginAccess();
    if (*v302 >> 62)
    {
      v303 = sub_1CF9E7818();
    }

    else
    {
      v303 = *((*v302 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v523 = v303;
    v304 = sub_1CF9E7F98();
    v306 = v305;
    MEMORY[0x1D3868CC0](v304);
    v306, v307, v308, v309, v310, v311, v312, v313;
    MEMORY[0x1D3868CC0](0x6D65746920, 0xE500000000000000);
    if (*v302 >> 62)
    {
      v314 = sub_1CF9E7818();
    }

    else
    {
      v314 = *((*v302 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v518 = v294;
    v315 = v314 == 1;
    if (v314 == 1)
    {
      v316 = 0;
    }

    else
    {
      v316 = 115;
    }

    if (v315)
    {
      v317 = 0xE000000000000000;
    }

    else
    {
      v317 = 0xE100000000000000;
    }

    MEMORY[0x1D3868CC0](v316, v317);
    v317, v318, v319, v320, v321, v322, v323, v324;
    v325 = v521;
    v326 = v522;
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    v327 = sub_1CF9E7298();
    v516 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v328 = swift_allocObject();
    v515 = xmmword_1CF9FA450;
    *(v328 + 16) = xmmword_1CF9FA450;
    *(v328 + 56) = MEMORY[0x1E69E6158];
    v513 = sub_1CEFD51C4();
    *(v328 + 64) = v513;
    *(v328 + 32) = v325;
    *(v328 + 40) = v326;
    sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v494, v327, v328);
    v328, v329, v330, v331, v332, v333, v334, v335;
    v336 = *v302;
    v337 = v493;
    if (*v302 >> 62)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF580, &qword_1CFA01DB0);
      v345 = sub_1CF9E7B78();
    }

    else
    {
      swift_bridgeObjectRetain_n();
      sub_1CF9E8068();
      v345 = v336;
    }

    v346 = v495;
    v336, v338, v339, v340, v341, v342, v343, v344;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF580, &qword_1CFA01DB0);
    v347 = sub_1CF9E6D28();
    v345, v348, v349, v350, v351, v352, v353, v354;
    [v511 didEnumerateItems_];

    v355 = v504;
    v356 = v490;
    v357 = v496;
    (*(v346 + 16))(v504, v490, v496);
    v358 = *(v346 + 56);
    v359 = v503;
    v358(v503, 1, 1, v357);
    v360 = v337[9];
    v358((v355 + v360), 1, 1, v357);
    *(v355 + v337[5]) = v501;
    *(v355 + v337[6]) = v499;
    *(v355 + v337[7]) = 0;
    v57 = v518;
    *(v355 + v337[8]) = v518;
    sub_1CEFDA9E0(v359, v355 + v360, &unk_1EC4BEDE0, qword_1CF9FA390);
    (*(v489 + 56))(v355, 0, 1, v337);
    v361 = v510;
    sub_1CEFDA9E0(v355, v510, &unk_1EC4C0FE0, qword_1CFA07EC0);
    v362 = v498;
    if (v57 >= v498)
    {
      if (v57 - v498 == v505)
      {
        v400 = v497;
        sub_1CEFCCBDC(v361, v497, &unk_1EC4C0FE0, qword_1CFA07EC0);
        v293 = (v491)(v400, 1, v337);
        if (v293 == 1)
        {
          __break(1u);
LABEL_91:
          objc_autoreleasePoolPop(v293);
          (*v57)(v518, v516);
          __break(1u);
        }

        else
        {
          v401 = v356;
          v402 = sub_1CF018EB8();
          v404 = v403;
          v405 = sub_1CF9E5B48();
          sub_1CEFE4714(v402, v404);
          sub_1CF00F304(v400, type metadata accessor for FSChangeToken);
          [v511 finishEnumeratingUpToPage_];

          (*(v346 + 8))(v401, v357);
          sub_1CF00F304(v514, type metadata accessor for FSDirectoryEnumerator);
        }

        return;
      }

      v427 = sub_1CF9E7298();
      v428 = swift_allocObject();
      *(v428 + 16) = v515;
      v429 = v513;
      *(v428 + 56) = MEMORY[0x1E69E6158];
      *(v428 + 64) = v429;
      *(v428 + 32) = 0xD000000000000016;
      *(v428 + 40) = 0x80000001CFA51180;
      sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v494, v427, v428);
      v428, v430, v431, v432, v433, v434, v435, v436;
      [v511 finishEnumeratingUpToPage_];
    }

    else
    {
      v521 = 0;
      v522 = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA511A0);
      v523 = v57;
      v363 = sub_1CF9E7F98();
      v365 = v364;
      MEMORY[0x1D3868CC0](v363);
      v365, v366, v367, v368, v369, v370, v371, v372;
      MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA511C0);
      v523 = v362;
      v373 = sub_1CF9E7F98();
      v375 = v374;
      MEMORY[0x1D3868CC0](v373);
      v375, v376, v377, v378, v379, v380, v381, v382;
      v383 = v521;
      v384 = v522;
      v385 = sub_1CF9E7288();
      v386 = swift_allocObject();
      *(v386 + 16) = v515;
      v387 = v513;
      *(v386 + 56) = MEMORY[0x1E69E6158];
      *(v386 + 64) = v387;
      *(v386 + 32) = v383;
      *(v386 + 40) = v384;
      sub_1CF9E6018("[INFO] %@", 9, 2, &dword_1CEFC7000, v494, v385, v386);
      v386, v388, v389, v390, v391, v392, v393, v394;
      v395 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v396 = sub_1CF9E6888();
      v397 = [v395 initWithDomain:v396 code:-1002 userInfo:0];

      v398 = v397;
      v399 = sub_1CF9E57E8();

      [v511 finishEnumeratingWithError_];
    }

    (*(v346 + 8))(v356, v357);
    sub_1CF00F304(v514, type metadata accessor for FSDirectoryEnumerator);

    return;
  }

  v265 = 0;
  v512 = "[DEBUG] ┏%@ %@";
  v513 = (v515 + 16);
  v508 = "itForStabilization";
  v57 = (v515 + 8);
  v266 = v516;
  while (v265 < *(v163 + 16))
  {
    (*(v515 + 16))(v518, v163 + ((*(v515 + 80) + 32) & ~*(v515 + 80)) + *(v515 + 72) * v265, v266);
    if (v521 != 1)
    {
      (*v57)(v518, v266);
      goto LABEL_53;
    }

    v267 = objc_autoreleasePoolPush();
    v268 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v269 = sub_1CF9E6888();
    v270 = [v268 initWithSuiteName_];

    if (!v270 || (v271 = sub_1CF9E6888(), v272 = [v270 BOOLForKey_], v270, v271, !v272))
    {
      if (sub_1CF9E58E8() == 0x68736172542ELL && v273 == 0xE600000000000000)
      {
        0xE600000000000000, 0xE600000000000000, v274, v275, v276, v277, v278, v279;
LABEL_46:
        v58 = 7;
        goto LABEL_49;
      }

      v280 = v273;
      v281 = sub_1CF9E8048();
      v280, v282, v283, v284, v285, v286, v287, v288;
      if (v281)
      {
        goto LABEL_46;
      }
    }

    v289 = sub_1CF9E5928();
    v290 = [v289 fp_isAppInboxOrDescendants];

    v58 = v507;
    if (v290)
    {
      v58 = 8;
    }

LABEL_49:
    objc_autoreleasePoolPop(v267);
    if ((v58 & 8) == 0)
    {
      v291 = objc_autoreleasePoolPush();
      MEMORY[0x1EEE9AC00](v291);
      v292 = v517;
      *(&v489 - 8) = v518;
      *(&v489 - 7) = &v519;
      *(&v489 - 6) = v514;
      *(&v489 - 5) = &v521;
      *(&v489 - 4) = v58;
      *(&v489 - 3) = sub_1CF326E94;
      *(&v489 - 2) = v509;
      *(&v489 - 8) = (~v58 & 6) == 0;
      sub_1CF9E59B8();
      v517 = v292;
      v293 = v291;
      if (v292)
      {
        goto LABEL_91;
      }

      objc_autoreleasePoolPop(v291);
    }

    v266 = v516;
    ++v265;
    (*v57)(v518, v516);
    if (v263 == v265)
    {
      goto LABEL_53;
    }
  }

  __break(1u);
LABEL_86:
  swift_once();
LABEL_3:
  v59 = qword_1EDEBB5A0;
  v60 = sub_1CF9E72A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1CF9FA450;
  *(v61 + 56) = MEMORY[0x1E69E6158];
  *(v61 + 64) = sub_1CEFD51C4();
  *(v61 + 32) = v57;
  *(v61 + 40) = v58;
  sub_1CF9E6018("[ERROR] %@", 10, 2, &dword_1CEFC7000, v59, v60, v61);
  v61, v62, v63, v64, v65, v66, v67, v68;
  v69 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v70 = sub_1CF9E6888();
  v71 = [v69 initWithDomain:v70 code:-1005 userInfo:0];

  v72 = v71;
  v73 = sub_1CF9E57E8();

  [v511 finishEnumeratingWithError_];
}

uint64_t sub_1CF4F9A04()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1CF9E6888();
  v2 = [v0 initWithSuiteName_];

  if (!v2 || (v3 = sub_1CF9E6888(), v4 = [v2 BOOLForKey_], v2, v3, (v4 & 1) == 0))
  {
    if (sub_1CF9E58E8() == 0x68736172542ELL && v5 == 0xE600000000000000)
    {
      0xE600000000000000, 0xE600000000000000, v6, v7, v8, v9, v10, v11;
      return 7;
    }

    v12 = v5;
    v13 = sub_1CF9E8048();
    v12, v14, v15, v16, v17, v18, v19, v20;
    if (v13)
    {
      return 7;
    }
  }

  v22 = sub_1CF9E5928();
  v23 = [v22 fp_isAppInboxOrDescendants];

  if (v23)
  {
    return 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CF4F9B50(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v8 = v7;
  v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v17 = v10;
  if (v6 == v9 && v8 == v10)
  {
    v8, v10, v11, v12, v13, v14, v15, v16;
    v17, v34, v35, v36, v37, v38, v39, v40;
LABEL_8:
    if (a1[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_isFolder] != 1)
    {
      return 1;
    }

    goto LABEL_9;
  }

  v19 = sub_1CF9E8048();
  v8, v20, v21, v22, v23, v24, v25, v26;
  v17, v27, v28, v29, v30, v31, v32, v33;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (*(a2 + OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_shouldUpdateFileIDInGenstore) == 1)
  {
    sub_1CF4F71D0();
  }

  swift_beginAccess();
  v41 = a1;
  MEMORY[0x1D3868FA0]();
  if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1CF9E6D88();
  }

  sub_1CF9E6DE8();
  swift_endAccess();
  return 1;
}

void sub_1CF4F9CF8(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, id))
{
  swift_unknownObjectRetain();
  v9 = a4;
  v10 = a1;
  a5(a3, v9);
  swift_unknownObjectRelease();
}

void sub_1CF4F9F5C(uint64_t a1)
{
  v41 = sub_1CF9E63A8();
  v2 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1CF9E6448();
  v4 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_notifier);
  if (v6)
  {
    v7 = OBJC_IVAR____TtC18FileProviderDaemon17FSChangesNotifier_reader;
    sub_1CF02AA74();
    *(*(v6 + v7) + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_delegate + 8) = 0;
    swift_unknownObjectWeakAssign();
  }

  v8 = OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_enumerators;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if ((v9 & 0xC000000000000001) != 0)
  {

    sub_1CF9E7808();
    type metadata accessor for FSChangesEnumerator(0);
    sub_1CF00FE88(&unk_1EC4C1258, type metadata accessor for FSChangesEnumerator, MEMORY[0x1E69E81B8]);
    sub_1CF9E7038();
    v9 = v47;
    v10 = v48;
    v12 = v49;
    v11 = v50;
    v13 = v51;
  }

  else
  {
    v14 = -1 << *(v9 + 32);
    v10 = v9 + 56;
    v12 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(v9 + 56);

    v11 = 0;
  }

  v31[1] = v12;
  v32 = (v12 + 64) >> 6;
  v35 = v46;
  v34 = (v2 + 8);
  v33 = (v4 + 8);
  v37 = v9;
  v36 = v10;
  while (v9 < 0)
  {
    v28 = sub_1CF9E7838();
    if (!v28 || (v44 = v28, type metadata accessor for FSChangesEnumerator(0), swift_dynamicCast(), v27 = aBlock[0], v25 = v11, v26 = v13, !aBlock[0]))
    {
LABEL_23:
      sub_1CEFCB59C(v9);
      return;
    }

LABEL_20:
    objc_sync_enter(v27);
    v29 = OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_source;
    v30 = *&v27[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_source];
    v43 = v26;
    if (v30)
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1CF9E7448();
      swift_unknownObjectRelease();
      if (*&v27[v29])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_1CF9E7418();
        swift_unknownObjectRelease();
      }
    }

    *&v27[v29] = 0;
    swift_unknownObjectRelease();
    v17 = OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_reader;
    v18 = *&v27[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_reader];
    v42 = *(v18 + 24);
    v46[2] = sub_1CF02AEF0;
    v46[3] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    v46[0] = sub_1CEFCA444;
    v46[1] = &block_descriptor_20_0;
    v19 = _Block_copy(aBlock);
    swift_retain_n();
    v20 = v38;
    sub_1CF9E63F8();
    v44 = MEMORY[0x1E69E7CC0];
    sub_1CF00FE88(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CF00FED0(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
    v21 = v40;
    v22 = v41;
    sub_1CF9E77B8();
    MEMORY[0x1D3869630](0, v20, v21, v19);
    _Block_release(v19);
    (*v34)(v21, v22);
    (*v33)(v20, v39);

    *(*&v27[v17] + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_delegate + 8) = 0;
    swift_unknownObjectWeakAssign();
    objc_sync_exit(v27);

    v11 = v25;
    v13 = v43;
    v9 = v37;
    v10 = v36;
  }

  v23 = v11;
  v24 = v13;
  v25 = v11;
  if (v13)
  {
LABEL_16:
    v26 = (v24 - 1) & v24;
    v27 = *(*(v9 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));
    if (!v27)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= v32)
    {
      goto LABEL_23;
    }

    v24 = *(v10 + 8 * v25);
    ++v23;
    if (v24)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_1CF4FA688(uint64_t a1)
{
  result = sub_1CF9E5A58();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for LocalDomain(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1CF4FA78C(uint64_t a1, uint64_t (*a2)(void *), uint64_t a3, uint64_t a4)
{
  v77 = a4;
  v80 = a3;
  v81 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0FE0, qword_1CFA07EC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v79 = (&v74 - v6);
  v7 = type metadata accessor for FSChangeToken(0);
  v78 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v74 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v74 - v17;
  v19 = sub_1CF9E5D98();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FSEventReader(0);
  v23 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_domain + 8);
  sub_1CF01A820(v23, v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_1CEFCCC44(v18, &unk_1EC4BEDE0, qword_1CF9FA390);
    v82 = 0;
    v83 = 0xE000000000000000;
    sub_1CF9E7948();
    v83, v24, v25, v26, v27, v28, v29, v30;
    v82 = 0xD00000000000001ALL;
    v83 = 0x80000001CFA51050;
    v84 = v23;
    v31 = sub_1CF9E7F98();
    v33 = v32;
    MEMORY[0x1D3868CC0](v31);
    v33, v34, v35, v36, v37, v38, v39, v40;
    v41 = v82;
    v42 = v83;
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    v43 = qword_1EDEBB5A0;
    v44 = sub_1CF9E72A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1CF9FA450;
    *(v45 + 56) = MEMORY[0x1E69E6158];
    *(v45 + 64) = sub_1CEFD51C4();
    *(v45 + 32) = v41;
    *(v45 + 40) = v42;
    sub_1CF9E6018("[ERROR] %@", 10, 2, &dword_1CEFC7000, v43, v44, v45);
    v45, v46, v47, v48, v49, v50, v51, v52;
    return v81(0);
  }

  else
  {
    v75 = v9;
    (*(v20 + 32))(v22, v18, v19);
    CurrentEventId = FSEventsGetCurrentEventId();
    v55 = *(v20 + 16);
    v76 = v22;
    v74 = v55;
    v55(v12, v22, v19);
    v56 = *(v20 + 56);
    v56(v15, 1, 1, v19);
    v57 = v7[9];
    v56(&v12[v57], 1, 1, v19);
    *&v12[v7[5]] = CurrentEventId;
    *&v12[v7[6]] = CurrentEventId;
    v12[v7[7]] = 0;
    *&v12[v7[8]] = 0;
    sub_1CEFDA9E0(v15, &v12[v57], &unk_1EC4BEDE0, qword_1CF9FA390);
    v58 = sub_1CF018EB8();
    v60 = v59;
    v61 = sub_1CF9E5B48();
    sub_1CEFE4714(v58, v60);
    v62 = v61;
    v63 = sub_1CF9E5B88();
    v64 = v79;
    sub_1CF01426C(v63, v65, v79);
    if ((*(v78 + 6))(v64, 1, v7) == 1)
    {
      sub_1CEFCCC44(v64, &unk_1EC4C0FE0, qword_1CFA07EC0);
      v81(0);
    }

    else
    {
      v78 = type metadata accessor for FSChangeToken;
      v66 = v75;
      sub_1CF00F23C(v64, v75, type metadata accessor for FSChangeToken);
      v79 = v56;
      v67 = v7[9];
      sub_1CEFCCC44(v66 + v67, &unk_1EC4BEDE0, qword_1CF9FA390);
      v68 = v77 + OBJC_IVAR____TtC18FileProviderDaemon19LocalRootEnumerator_containerSnapshot;
      swift_beginAccess();
      v69 = type metadata accessor for LocalContainerSnapshot(0);
      v74(v66 + v67, v68 + *(v69 + 28), v19);
      v79((v66 + v67), 0, 1, v19);
      v70 = sub_1CF018EB8();
      v72 = v71;
      v73 = sub_1CF9E5B48();
      sub_1CEFE4714(v70, v72);
      v81(v73);

      sub_1CF00F304(v66, v78);
    }

    (*(v20 + 8))(v76, v19);
    return sub_1CF00F304(v12, type metadata accessor for FSChangeToken);
  }
}

uint64_t sub_1CF4FADF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FSChangeToken(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v55 - v11;
  v13 = sub_1CF9E5D98();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FSEventReader(0);
  v17 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_domain + 8);
  sub_1CF01A820(v17, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1CEFCCC44(v12, &unk_1EC4BEDE0, qword_1CF9FA390);
    v57 = 0;
    v58 = 0xE000000000000000;
    sub_1CF9E7948();
    v58, v18, v19, v20, v21, v22, v23, v24;
    v57 = 0xD00000000000001ALL;
    v58 = 0x80000001CFA51050;
    v56 = v17;
    v25 = sub_1CF9E7F98();
    v27 = v26;
    MEMORY[0x1D3868CC0](v25);
    v27, v28, v29, v30, v31, v32, v33, v34;
    v35 = v57;
    v36 = v58;
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    v37 = qword_1EDEBB5A0;
    v38 = sub_1CF9E72A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1CF9FA450;
    *(v39 + 56) = MEMORY[0x1E69E6158];
    *(v39 + 64) = sub_1CEFD51C4();
    *(v39 + 32) = v35;
    *(v39 + 40) = v36;
    sub_1CF9E6018("[ERROR] %@", 10, 2, &dword_1CEFC7000, v37, v38, v39);
    v39, v40, v41, v42, v43, v44, v45, v46;
    return (*(a2 + 16))(a2, 0);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    CurrentEventId = FSEventsGetCurrentEventId();
    (*(v14 + 16))(v6, v16, v13);
    v49 = *(v14 + 56);
    v49(v9, 1, 1, v13);
    v55 = a2;
    v50 = v4[9];
    v49(&v6[v50], 1, 1, v13);
    *&v6[v4[5]] = CurrentEventId;
    *&v6[v4[6]] = CurrentEventId;
    v6[v4[7]] = 0;
    *&v6[v4[8]] = 0;
    sub_1CEFDA9E0(v9, &v6[v50], &unk_1EC4BEDE0, qword_1CF9FA390);
    v51 = sub_1CF018EB8();
    v53 = v52;
    v54 = sub_1CF9E5B48();
    sub_1CEFE4714(v51, v53);
    (*(v55 + 16))(v55, v54);

    (*(v14 + 8))(v16, v13);
    return sub_1CF00F304(v6, type metadata accessor for FSChangeToken);
  }
}

void sub_1CF4FB2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(a4 + 8))(a3, a4);
  v10 = v9;
  v25 = v8;
  v26 = v9;

  MEMORY[0x1D3868CC0](a1, a2);
  v10, v11, v12, v13, v14, v15, v16, v17;
  (*(a4 + 16))(v25, v26, a3, a4);

  v26, v18, v19, v20, v21, v22, v23, v24;
}

uint64_t sub_1CF4FB38C(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  (*(a7 + 24))(v9, a1, a2, a5, a7);
  a3(v9);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_1CF4FB418(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  MEMORY[0x1D3868CC0](a1, a2);
  MEMORY[0x1D3868CC0](10, 0xE100000000000000);
  return swift_endAccess();
}

uint64_t sub_1CF4FB48C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = *v5;
  v13 = v5[1];
  v14 = v5[2];

  result = MEMORY[0x1D3868CC0](a1, a2);
  a5[3] = a3;
  a5[4] = a4;
  *a5 = v11;
  a5[1] = v13;
  a5[2] = v14;
  return result;
}

uint64_t sub_1CF4FB518(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 40), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocClassInstance();
}

uint64_t sub_1CF4FB57C()
{
  v1 = *(*v0 + 32);

  return v1;
}

uint64_t sub_1CF4FB5B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = *v3;
  a3[1] = a1;
  a3[3] = &type metadata for SubStringDumper;
  a3[4] = &off_1F4C03848;
  a3[2] = a2;
}

void sub_1CF4FB608(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1CF9E6938();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  v24 = a2;

  MEMORY[0x1D3868CC0](10, 0xE100000000000000);
  v10 = v24;
  v11 = *(v3 + 16);
  sub_1CF9E6918();
  v12 = sub_1CF9E68C8();
  v14 = v13;
  (*(v7 + 8))(v9, v6);
  if (v14 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v10, v15, v16, v17, v18, v19, v20, v21;
    v22 = sub_1CF9E5B48();
    sub_1CEFE48D8(v12, v14);
    [v11 writeData_];
  }
}

uint64_t sub_1CF4FB774()
{
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocClassInstance();
}

uint64_t sub_1CF4FB7D8()
{
  v1 = *(*v0 + 24);

  return v1;
}

void *sub_1CF4FB830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v12 = *(*v4 + 24);
  v13 = *(*v4 + 32);
  v9 = *(*v4 + 16);

  MEMORY[0x1D3868CC0](a1, a2);
  v10 = type metadata accessor for FileDumper();
  result = swift_allocObject();
  result[2] = v9;
  result[3] = v12;
  result[4] = v13;
  a4[3] = v10;
  a4[4] = a3;
  *a4 = result;
  return result;
}

uint64_t OS_dispatch_queue.init(label:qos:attributes:target:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v22 = a1;
  v23 = a2;
  v21 = sub_1CF9E7388();
  v7 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E7318();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E6448();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  (*(v15 + 16))(&v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v14, v16);
  (*(v11 + 16))(v13, a4, v10);
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8098], v21);
  v18 = sub_1CF9E73B8();
  (*(v11 + 8))(a4, v10);
  (*(v15 + 8))(a3, v14);
  return v18;
}

void sub_1CF4FBB4C(dispatch_time_t a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClassUnconditional();

  dispatch_source_set_timer(v2, a1, 0xFFFFFFFFFFFFFFFFLL, 0);
}

uint64_t static DispatchQoS.current.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1CF9E63D8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  qos_class_self();
  sub_1CF9E63B8();
  v7 = *(v4 + 48);
  if (v7(v2, 1, v3) == 1)
  {
    (*(v4 + 104))(v6, *MEMORY[0x1E69E7FA0], v3);
    if (v7(v2, 1, v3) != 1)
    {
      sub_1CF4FBD5C(v2);
    }
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
  }

  return sub_1CF9E6428();
}

uint64_t sub_1CF4FBD5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void OS_dispatch_queue.asyncAndWaitWithLogs<A>(_:quiet:function:block:)(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v53 = a5;
  v47 = a3;
  v48 = a4;
  v16 = a1;
  if (!a1)
  {
    v16 = fpfs_current_log();
  }

  v17 = a1;
  v18 = fpfs_adopt_log();
  v19 = v18;
  v51 = 0;
  v52 = 1;
  if ((a2 & 1) == 0)
  {
    v49 = sub_1CF9E73C8();
    v50 = v20;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v21 = sub_1CF9E7988();
    v46 = a6;
    v23 = v22;
    MEMORY[0x1D3868CC0](v21);
    v23, v24, v25, v26, v27, v28, v29, v30;
    sub_1CF9E6978();
    v50, v31, v32, v33, v34, v35, v36, v37;
    v38 = __fp_log_fork();

    v51 = v38;
    v52 = 0;
  }

  MEMORY[0x1EEE9AC00](v18);
  v42[6] = a8;
  v42[7] = v16;
  v42[8] = &v51;
  v42[9] = v9;
  v42[10] = v47;
  v42[11] = v48;
  v43 = v53;
  v44 = a6;
  v45 = a7;
  MEMORY[0x1EEE9AC00](v39);
  v42[2] = a8;
  sub_1CF4FBFE0(sub_1CF4FC60C, v40, sub_1CF4FC644, v42, a8, a9);
  v41 = fpfs_adopt_log();
}

void sub_1CF4FBFE0(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(id)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v28 = a6;
  v26[1] = a4;
  v27 = a3;
  v30 = sub_1CF9E75D8();
  v10 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v26 - v15;
  v17 = *(a5 - 8);
  (*(v17 + 56))(v26 - v15, 1, 1, a5, v14);
  v32 = 0;
  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = v16;
  v18[4] = a1;
  v18[5] = a2;
  v18[6] = &v32;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1CF4FCF7C;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1CEFFD054;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFFD02C;
  aBlock[3] = &block_descriptor_9_1;
  v20 = _Block_copy(aBlock);

  FPDispatchAsyncAndWait(v6, v20);
  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v22 = v32;
    if (v32)
    {
      v23 = v32;
      v24 = v29;
      v27(v22);
      if (v24)
      {

        (*(v10 + 8))(v16, v30);
LABEL_9:

        return;
      }

      v25 = v30;
LABEL_8:

      (*(v10 + 8))(v16, v25);
      goto LABEL_9;
    }

    v25 = v30;
    (*(v10 + 16))(v12, v16, v30);
    if ((*(v17 + 48))(v12, 1, a5) != 1)
    {
      (*(v17 + 32))(v28, v12, a5);
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_1CF4FC32C(uint64_t a1, void (*a2)(__n128), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1CF9E75D8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v14 - v11;
  a2(v10);
  (*(*(a5 - 8) + 56))(v12, 0, 1, a5);
  return (*(v9 + 40))(a1, v12, v8);
}

void sub_1CF4FC474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  v9 = fpfs_adopt_log();
  if ((*(a2 + 8) & 1) == 0)
  {
    sub_1CF9E73C8();
    v30 = v10;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v11 = sub_1CF9E7988();
    v13 = v12;
    MEMORY[0x1D3868CC0](v11);
    v13, v14, v15, v16, v17, v18, v19, v20;
    sub_1CF9E6978();
    v30, v21, v22, v23, v24, v25, v26, v27;
    __fp_log_adopt();
  }

  a7();
  if (v29)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      __fp_leave_section_Debug();
    }
  }

  else if ((*(a2 + 8) & 1) == 0)
  {
    __fp_leave_section_Debug();
  }

  v28 = fpfs_adopt_log();
}

uint64_t sub_1CF4FC6F8(const void *a1, uint64_t a2)
{
  v3 = sub_1CF9E63A8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CF9E6448();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a1);
  sub_1CF9E6418();
  v13[1] = MEMORY[0x1E69E7CC0];
  sub_1CF010454(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CF01049C();
  sub_1CF9E77B8();
  sub_1CF9E7408();
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

BOOL static DispatchQoS.< infix(_:_:)()
{
  v0 = sub_1CF9E63D8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  sub_1CF9E6438();
  v7 = sub_1CF9E63C8();
  v8 = *(v1 + 8);
  v8(v6, v0);
  sub_1CF9E6438();
  v9 = sub_1CF9E63C8();
  v8(v3, v0);
  return v7 < v9;
}

BOOL sub_1CF4FCA9C()
{
  v0 = sub_1CF9E63D8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  sub_1CF9E6438();
  v7 = sub_1CF9E63C8();
  v8 = *(v1 + 8);
  v8(v6, v0);
  sub_1CF9E6438();
  v9 = sub_1CF9E63C8();
  v8(v3, v0);
  return v7 < v9;
}

BOOL sub_1CF4FCBD4()
{
  v0 = sub_1CF9E63D8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  sub_1CF9E6438();
  v7 = sub_1CF9E63C8();
  v8 = *(v1 + 8);
  v8(v6, v0);
  sub_1CF9E6438();
  v9 = sub_1CF9E63C8();
  v8(v3, v0);
  return v7 >= v9;
}

BOOL sub_1CF4FCD0C()
{
  v0 = sub_1CF9E63D8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  sub_1CF9E6438();
  v7 = sub_1CF9E63C8();
  v8 = *(v1 + 8);
  v8(v6, v0);
  sub_1CF9E6438();
  v9 = sub_1CF9E63C8();
  v8(v3, v0);
  return v7 >= v9;
}

BOOL sub_1CF4FCE44()
{
  v0 = sub_1CF9E63D8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  sub_1CF9E6438();
  v7 = sub_1CF9E63C8();
  v8 = *(v1 + 8);
  v8(v6, v0);
  sub_1CF9E6438();
  v9 = sub_1CF9E63C8();
  v8(v3, v0);
  return v7 < v9;
}

uint64_t BitSet.init(bit:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = a1;
  v13 = a4;
  v14 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = swift_checkMetadataState();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  swift_getAssociatedConformanceWitness();
  sub_1CF9E80D8();
  sub_1CF9E8018();
  v15 = v12;
  sub_1CF056E98();
  sub_1CF9E76D8();
  (*(v6 + 8))(v8, v5);
  return sub_1CF9E82D8();
}

uint64_t CustomStringConvertibleBitSet.bitSetDescription.getter@<X0>(uint64_t a2@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v4 = *(*(TupleTypeMetadata2 - 8) + 56);

  return v4(a2, 1, 1, TupleTypeMetadata2);
}

uint64_t CustomStringConvertibleBitSet.description.getter(unsigned int (*a1)(char *, uint64_t, uint64_t), uint64_t a2)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = sub_1CF9E75D8();
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v54 - v7;
  v9 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v56 = &v54 - v14;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = (&v54 - v17);
  (*(a2 + 32))(a1, a2, v16);
  v19 = *(v9 + 48);
  if (v19(v8, 1, TupleTypeMetadata2) == 1)
  {
    v20 = *(TupleTypeMetadata2 + 48);
    *v18 = 0;
    v18[1] = 0xE000000000000000;
    (*(*(a1 - 1) + 16))(v18 + v20, v2, a1);
    if (v19(v8, 1, TupleTypeMetadata2) != 1)
    {
      (*(v54 + 8))(v8, v55);
    }
  }

  else
  {
    (*(v9 + 32))(v18, v8, TupleTypeMetadata2);
  }

  v21 = *(a2 + 8);
  v22 = sub_1CF9E7798();
  if (v22)
  {
    (*(v9 + 16))(v12, v18, TupleTypeMetadata2);
    v23 = *v12;
    (*(*(a1 - 1) + 8))(v12 + *(TupleTypeMetadata2 + 48), a1);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v22);
    *(&v54 - 2) = a1;
    *(&v54 - 1) = a2;
    v25 = sub_1CF4FDC40(sub_1CF4FDC20, (&v54 - 4), a1, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], *(v21 + 16), MEMORY[0x1E69E7410], v24);
    v57 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
    sub_1CF0711CC();
    v23 = sub_1CF9E67D8();
    v27 = v26;
    v25, v26, v28, v29, v30, v31, v32, v33;
    v34 = v56;
    (*(v9 + 16))(v56, v18, TupleTypeMetadata2);
    v36 = *v34;
    v35 = *(v34 + 1);
    v35, v37, v38, v39, v40, v41, v42, v43;
    if ((v35 & 0x2000000000000000) != 0)
    {
      v44 = (v35 >> 56) & 0xF;
    }

    else
    {
      v44 = v36 & 0xFFFFFFFFFFFFLL;
    }

    (*(*(a1 - 1) + 8))(&v34[*(TupleTypeMetadata2 + 48)], a1);
    if (v44)
    {
      v45 = v18[1];
      v57 = *v18;
      v58 = v45;

      MEMORY[0x1D3868CC0](124, 0xE100000000000000);
      MEMORY[0x1D3868CC0](v23, v27);
      v27, v46, v47, v48, v49, v50, v51, v52;
      v23 = v57;
    }
  }

  (*(v9 + 8))(v18, TupleTypeMetadata2);
  return v23;
}

uint64_t BitSet.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  return (*(v4 + 32))(a2, v7, a1);
}

uint64_t BitSetIterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = *(a1 + 16);
  v4 = sub_1CF9E75D8();
  v18 = *(v4 - 8);
  v19 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - v5;
  v7 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v17 - v10;
  if (sub_1CF9E7798())
  {
    v12 = *(*(v3 - 8) + 56);
    v13 = v20;

    return v12(v13, 1, 1, v3);
  }

  else
  {
    sub_1CF9E6C28();
    swift_getAssociatedConformanceWitness();
    v15 = sub_1CF9E76C8();
    (*(v9 + 8))(v11, AssociatedTypeWitness);
    v16 = v20;
    BitSet.init(bit:)(v15, v7, v20);
    sub_1CF9E7788();
    (*(v18 + 8))(v6, v19);
    return (*(*(v3 - 8) + 56))(v16, 0, 1, v3);
  }
}

uint64_t sub_1CF4FDAC8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  result = (*(a2 + 24))(a1, a2, v7);
  if (!v9)
  {
    sub_1CF9E6C28();
    swift_getAssociatedConformanceWitness();
    v10 = sub_1CF9E6B28();
    v12 = v11;
    MEMORY[0x1D3868CC0](v10);
    v12, v13, v14, v15, v16, v17, v18, v19;
    result = 30768;
    v9 = 0xE200000000000000;
  }

  *a3 = result;
  a3[1] = v9;
  return result;
}

uint64_t sub_1CF4FDC40(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = &v42 - v14;
  v46 = a5;
  v44 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v42 - v18;
  v19 = sub_1CF9E75D8();
  v47 = *(v19 - 8);
  v48 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v50 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v49 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v55 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v31 = &v42 - v30;
  v32 = sub_1CF9E6B78();
  v63 = sub_1CF9E7A88();
  v58 = sub_1CF9E7A98();
  sub_1CF9E7A38();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_1CF9E6B68();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1CF9E7618();
      result = (*v34)(v23, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v23, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v23, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v23, AssociatedTypeWitness);
      sub_1CF9E7A78();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_1CF9E7618();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_1CF9E7A78();
      sub_1CF9E7618();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

uint64_t sub_1CF4FE334(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CF4FE3A4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1CF4FE4E4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_1CF4FE730(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1360, &qword_1CFA08B48);
  v20 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v19 - v5;
  v7 = *v2;
  v8 = v2[1];
  v9 = v2[4];
  v19[0] = v2[3];
  v26 = *(v2 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF50D090();

  sub_1CF9E82A8();
  v21 = v7;
  v22 = v8;
  v23 = v2[2];
  v24 = v19[0];
  v25 = v9;
  v27 = 0;
  sub_1CF1FE5D4();
  v10 = v19[1];
  sub_1CF9E7F08();
  v25, v11, v12, v13, v14, v15, v16, v17;
  if (!v10)
  {
    LOBYTE(v21) = v26;
    v27 = 1;
    sub_1CF50D138();
    sub_1CF9E7F08();
  }

  return (*(v20 + 8))(v6, v4);
}

void sub_1CF4FE904(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1340, &qword_1CFA08B40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF50D090();
  sub_1CF9E8298();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v24 = 0;
    sub_1CF1FE628();
    sub_1CF9E7D88();
    v9 = v25;
    v10 = v27;
    v11 = v29;
    v22 = v28;
    v23 = v26;
    v24 = 1;
    sub_1CF50D0E4();
    sub_1CF9E7D88();
    (*(v6 + 8))(v8, v5);
    v12 = v25;
    v13 = v22;
    v14 = v23;
    *a2 = v9;
    *(a2 + 8) = v14;
    *(a2 + 16) = v10;
    *(a2 + 24) = v13;
    *(a2 + 32) = v11;
    *(a2 + 40) = v12;

    __swift_destroy_boxed_opaque_existential_1(a1);
    v11, v15, v16, v17, v18, v19, v20, v21;
  }
}

uint64_t sub_1CF4FEB14()
{
  if (*v0)
  {
    return 1684957547;
  }

  else
  {
    return 0x656C646E6168;
  }
}

void sub_1CF4FEB44(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, char *a3@<X8>, int64_t a4@<X2>, int64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  v12 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
  if (v12 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a4, a5, a6, a7, a8, a9;
    v13 = 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {
    0xE400000000000000, a2, a4, a5, a6, a7, a8, a9;
    v13 = 1;
  }

  else
  {
    v14 = sub_1CF9E8048();
    a2, v15, v16, v17, v18, v19, v20, v21;
    if (v14)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  *a3 = v13;
}

uint64_t sub_1CF4FEC1C(uint64_t a1)
{
  v2 = sub_1CF50D090();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF4FEC58(uint64_t a1)
{
  v2 = sub_1CF50D090();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1CF4FECC4(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, unint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v417 = a3;
  v395 = a7;
  *&v407 = a5;
  *(&v407 + 1) = a6;
  LODWORD(v418) = a4;
  v415 = a2;
  v392 = a9;
  v439[5] = *MEMORY[0x1E69E9840];
  v12 = sub_1CF9E6938();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v387 = &v369 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E6118();
  v385 = *(v14 - 8);
  v386 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v384 = &v369 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v400 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE000, &unk_1CFA006A0);
  MEMORY[0x1EEE9AC00](v400);
  v388 = (&v369 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v393 = (&v369 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v397 = (&v369 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v396 = (&v369 - v22);
  MEMORY[0x1EEE9AC00](v23);
  v406 = (&v369 - v24);
  v401 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE2F0, qword_1CFA04220);
  MEMORY[0x1EEE9AC00](v401);
  v391 = &v369 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v390 = (&v369 - v27);
  MEMORY[0x1EEE9AC00](v28);
  v399 = &v369 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v402 = &v369 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = &v369 - v33;
  v35 = sub_1CF9E5A58();
  v36 = *(v35 - 8);
  v411 = v35;
  v412 = v36;
  MEMORY[0x1EEE9AC00](v35);
  v410 = &v369 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v405 = &v369 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v389 = &v369 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v398 = &v369 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v369 - v45;
  v47 = type metadata accessor for VFSItem(0);
  v413 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v394 = &v369 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v409 = (&v369 - v50);
  v404 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED00, &unk_1CFA006E0);
  MEMORY[0x1EEE9AC00](v404);
  v403 = &v369 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v408 = &v369 - v53;
  v54 = sub_1CF9E53C8();
  v55 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v369 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v414 = v47;
  v58 = a1 + *(v47 + 28);
  if (*(v58 + *(type metadata accessor for ItemMetadata(0) + 80)) == 1)
  {
    LODWORD(v430) = 22;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF00BC50(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    sub_1CF9E57D8();
    sub_1CF9E53A8();
    (*(v55 + 8))(v57, v54);
LABEL_3:
    swift_willThrow();
    return;
  }

  v380 = v57;
  v381 = v55;
  v382 = v54;
  v383 = a8;
  v65 = v415[2];
  v425 = v417;
  LOBYTE(v426) = v418;
  v434 = 0u;
  v435 = 0u;
  v432 = 0u;
  v433 = 0u;
  v430 = 0u;
  v431 = 0u;
  sub_1CEFDAA48(&v425, &v430, v439, v59, v60, v61, v62, v63, v64);
  v66 = v439[0];
  v439[4], v67, v68, v69, v70, v71, v72, v73;
  v74 = v416;
  sub_1CF263ADC(v66, 0, 2049, v46);
  if (v74)
  {
    return;
  }

  v75 = v413[6];
  v415 = v413 + 6;
  v416 = v65;
  v379 = v75;
  if (v75(v46, 1, v414) == 1)
  {
    sub_1CEFCCC44(v46, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v76 = swift_allocObject();
    *(v76 + 16) = 2049;
    v77 = v76 | 0x7000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
    swift_allocError();
    v79 = v78;
    sub_1CF1B8150();
    v80 = swift_allocError();
    *v81 = v77;
    *&v430 = v66;
    BYTE8(v430) = 1;
    *(&v430 + 9) = v439[0];
    HIDWORD(v430) = *(v439 + 3);
    v431 = 0u;
    v432 = 0u;
    v433 = 0u;
    v434 = 0u;
    v435 = 0u;
    v436 = 0u;
    v437 = v80;
    sub_1CF2A8DE0(&v430);
    *v79 = v430;
    v82 = v431;
    v83 = v432;
    v84 = v434;
    *(v79 + 48) = v433;
    *(v79 + 64) = v84;
    *(v79 + 16) = v82;
    *(v79 + 32) = v83;
    v85 = v435;
    v86 = v436;
    v87 = v437;
    *(v79 + 128) = v438;
    *(v79 + 96) = v86;
    *(v79 + 112) = v87;
    *(v79 + 80) = v85;
    goto LABEL_3;
  }

  v88 = v46;
  v89 = v409;
  sub_1CEFE4D30(v88, v409, type metadata accessor for VFSItem);
  isEscapingClosureAtFileLocation = v416;
  v91 = objc_sync_enter(v416);
  if (v91)
  {
    goto LABEL_104;
  }

  v378 = 0;
  v92 = objc_sync_exit(isEscapingClosureAtFileLocation);
  if (v92)
  {
    MEMORY[0x1EEE9AC00](v92);
    v367 = isEscapingClosureAtFileLocation;
    goto LABEL_109;
  }

  sub_1CF25116C(v34);
  v94 = v411;
  v93 = v412;
  if ((*(v412 + 48))(v34, 1, v411) == 1)
  {
    sub_1CEFCCC44(v34, &unk_1EC4BE310, qword_1CF9FCBE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
    swift_allocError();
    v96 = v95;
    sub_1CF1B8150();
    v97 = swift_allocError();
    *v98 = 0xB000000000000008;
    *&v430 = v66;
    BYTE8(v430) = 1;
    *(&v430 + 9) = v439[0];
    HIDWORD(v430) = *(v439 + 3);
    v431 = 0u;
    v432 = 0u;
    v433 = 0u;
    v434 = 0u;
    v435 = 0u;
    v436 = 0u;
    v437 = v97;
    sub_1CF2A8DE0(&v430);
    *v96 = v430;
    v99 = v431;
    v100 = v432;
    v101 = v434;
    *(v96 + 48) = v433;
    *(v96 + 64) = v101;
    *(v96 + 16) = v99;
    *(v96 + 32) = v100;
    v102 = v435;
    v103 = v436;
    v104 = v437;
    *(v96 + 128) = v438;
    *(v96 + 96) = v103;
    *(v96 + 112) = v104;
    *(v96 + 80) = v102;
    swift_willThrow();
    sub_1CEFE51CC(v89, type metadata accessor for VFSItem);
    return;
  }

  v106 = v404;
  v105 = v405;
  v107 = *(v93 + 32);
  v375 = *(v404 + 12);
  v376 = v93 + 32;
  v377 = v107;
  v107(v405, v34, v94);
  v430 = v407;
  v439[0] = 47;
  v439[1] = 0xE100000000000000;
  v425 = 58;
  v426 = 0xE100000000000000;
  v367 = sub_1CEFE4E68();
  v368 = v367;
  *&v366 = MEMORY[0x1E69E6158];
  *(&v366 + 1) = v367;
  sub_1CF9E7668();
  v109 = v108;
  v110 = v94;
  v111 = v89;
  v112 = v408;
  sub_1CF9E5958();
  v109, v113, v114, v115, v116, v117, v118, v119;
  v120 = *(v93 + 8);
  v412 = v93 + 8;
  v405 = v120;
  (v120)(v105, v110);
  sub_1CEFE4D30(v111, v112 + v375, type metadata accessor for VFSItem);
  v121 = v112;
  v122 = v416;
  v123 = v403;
  sub_1CEFCCBDC(v121, v403, &unk_1EC4BED00, &unk_1CFA006E0);
  v124 = *(v106 + 12);
  v377(v410, v123, v110);
  sub_1CEFE51CC(&v123[v124], type metadata accessor for VFSItem);
  sub_1CF9E5A18();
  v126 = v125;
  v127 = qword_1EDEBBE70;
  swift_beginAccess();
  v128 = *&v127[v122];
  v129 = __CFADD__(v128, 1);
  v130 = v128 + 1;
  if (v129)
  {
    __break(1u);
    goto LABEL_94;
  }

  *&v127[v122] = v130;
  v131 = objc_sync_enter(v122);
  if (v131)
  {
    MEMORY[0x1EEE9AC00](v131);
    v367 = v122;
    goto LABEL_107;
  }

  v403 = v127;
  v409 = *(v122 + 160);

  v132 = objc_sync_exit(v122);
  if (v132)
  {
    MEMORY[0x1EEE9AC00](v132);
    v367 = v122;
    goto LABEL_109;
  }

  v133 = type metadata accessor for VFSFileTree(0);
  Strong = swift_unknownObjectWeakLoadStrong();
  v135 = *(v122 + 288);
  v136 = fpfs_openflags(0x208000u);
  sub_1CF9E6978();
  v370 = v136;
  v137 = openat_s();

  v369 = v133;
  if (v137 < 0)
  {
    v173 = MEMORY[0x1D38683F0](v138);
    *&v432 = 0;
    v430 = 0u;
    v431 = 0u;
    BYTE8(v432) = 19;
    v167 = sub_1CF19BBE4(v173, &v430);
    sub_1CF1969CC(&v430);
    swift_willThrow();
    v126, v174, v175, v176, v177, v178, v179, v180;
    v378 = 0;
    v170 = v411;
    v171 = v402;
    goto LABEL_25;
  }

  v126, v139, v140, v141, v142, v143, v144, v145;
  v146 = v409;
  os_unfair_lock_lock(v409 + 14);
  v147 = *&v146[16]._os_unfair_lock_opaque;
  v148 = *&v146[18]._os_unfair_lock_opaque;
  LODWORD(v377) = LOBYTE(v146[22]._os_unfair_lock_opaque);
  LODWORD(v376) = BYTE1(v146[22]._os_unfair_lock_opaque);
  LODWORD(v375) = BYTE2(v146[22]._os_unfair_lock_opaque);

  v149 = *&v146[20]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v146 + 14);
  v372 = &v369;
  MEMORY[0x1EEE9AC00](v150);
  LODWORD(v404) = v137;
  *(&v369 - 10) = v133;
  *(&v369 - 18) = v137;
  *(&v369 - 8) = v146;
  *(&v369 - 7) = Strong;
  v374 = Strong;
  *(&v369 - 6) = v135;
  *(&v369 - 40) = 2;
  v366 = xmmword_1CFA08A20;
  LOBYTE(v367) = -1;
  v368 = 0;
  *&v432 = v147;
  *(&v432 + 1) = v148;
  *&v430 = MEMORY[0x1E69E9820];
  *(&v430 + 1) = 1107296256;
  *&v431 = sub_1CEFDB088;
  *(&v431 + 1) = &block_descriptor_174_0;
  v151 = _Block_copy(&v430);
  v373 = v148;

  v371 = v151;
  v425 = v151;
  v426 = v149;
  v427 = v377;
  v428 = v376;
  v429 = v375;
  sub_1CEFDB034();
  v152 = swift_allocError();
  *v153 = 6;
  *(v153 + 8) = 0u;
  *(v153 + 24) = 0u;
  *(v153 + 40) = 19;
  v154 = v406;
  *v406 = v152;
  swift_storeEnumTagMultiPayload();
  v155 = swift_allocObject();
  v155[2] = v154;
  v155[3] = sub_1CEFDB808;
  v155[4] = &v369 - 12;
  v156 = swift_allocObject();
  *(v156 + 16) = sub_1CEFDB37C;
  *(v156 + 24) = v155;
  *&v432 = sub_1CF1DBD5C;
  *(&v432 + 1) = v156;
  *&v430 = MEMORY[0x1E69E9820];
  *(&v430 + 1) = 1107296256;
  *&v431 = sub_1CEFDB270;
  *(&v431 + 1) = &block_descriptor_184;
  v157 = _Block_copy(&v430);

  v158 = fpfs_fgetfileattrs_detailed();
  _Block_release(v157);
  LOBYTE(v157) = swift_isEscapingClosureAtFileLocation();

  if (v157)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  if (v158)
  {
    swift_getErrorValue();
    v159 = v419;
    v160 = swift_allocError();
    *v161 = 6;
    *(v161 + 8) = 0u;
    *(v161 + 24) = 0u;
    *(v161 + 40) = 19;
    v162 = v158;
    v163 = sub_1CF199074(v160, v159);

    v164 = v396;
    *v396 = v163;
    swift_storeEnumTagMultiPayload();
    v165 = v164;
    v154 = v406;
    sub_1CEFDA9E0(v165, v406, &qword_1EC4BE000, &unk_1CFA006A0);
  }

  v166 = v397;
  sub_1CEFCCBDC(v154, v397, &qword_1EC4BE000, &unk_1CFA006A0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    v181 = v166;
    v182 = v154;
    v171 = v402;
    sub_1CEFE55D0(v181, v402, &unk_1EC4BE2F0, qword_1CFA04220);
    sub_1CEFCCC44(v182, &qword_1EC4BE000, &unk_1CFA006A0);

    _Block_release(v371);

    v172 = v410;
    v122 = v416;
    goto LABEL_23;
  }

  *&v430 = *v166;
  v167 = v430;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  swift_willThrowTypedImpl();

  sub_1CEFCCC44(v154, &qword_1EC4BE000, &unk_1CFA006A0);

  _Block_release(v371);

  v168 = v167;
  LODWORD(v430) = sub_1CF9E52A8();
  sub_1CF196978();
  v169 = sub_1CF9E5658();

  v170 = v411;
  v122 = v416;
  v171 = v402;
  if (v169)
  {

    *v171 = xmmword_1CF9FD940;
    *(v171 + 16) = 2;
    swift_storeEnumTagMultiPayload();
    v172 = v410;
LABEL_23:
    close(v404);

    swift_unknownObjectRelease();
    goto LABEL_27;
  }

  close(v404);
LABEL_25:
  v172 = v410;
  v183 = v167;
  LODWORD(v430) = sub_1CF9E5328();
  sub_1CF196978();
  v184 = sub_1CF9E5658();

  swift_unknownObjectRelease();

  if ((v184 & 1) == 0)
  {
    (v405)(v172, v170);
    sub_1CEFCCC44(v408, &unk_1EC4BED00, &unk_1CFA006E0);
    return;
  }

  *v171 = xmmword_1CF9FD930;
  *(v171 + 16) = 2;
  swift_storeEnumTagMultiPayload();
LABEL_27:
  v185 = v399;
  sub_1CEFE55D0(v171, v399, &unk_1EC4BE2F0, qword_1CFA04220);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v187 = (v413 + 7);
  if (EnumCaseMultiPayload == 1)
  {
    sub_1CEFCCC44(v185, &unk_1EC4BE2F0, qword_1CFA04220);
    v188 = 1;
    v189 = v398;
  }

  else
  {
    v189 = v398;
    sub_1CEFE4D30(v185, v398, type metadata accessor for VFSItem);
    v188 = 0;
  }

  v190 = *v187;
  v191 = v414;
  (*v187)(v189, v188, 1, v414);
  if (v379(v189, 1, v191) != 1)
  {
    v194 = v394;
    sub_1CEFE4D30(v189, v394, type metadata accessor for VFSItem);
    v195 = *v194;
    v196 = *(v194 + 8);
    v197 = *(&v407 + 1);

    v198 = sub_1CF252CF4();
    *&v430 = v195;
    BYTE8(v430) = v196;
    *&v431 = v407;
    *(&v431 + 1) = v197;
    *&v432 = v417;
    BYTE8(v432) = v418;
    *&v433 = v198;
    *(&v433 + 1) = v199;
    *&v434 = 0;
    sub_1CF2B0E80(&v430);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
    swift_allocError();
    *v200 = v430;
    v201 = v432;
    v202 = v434;
    v203 = v431;
    *(v200 + 48) = v433;
    *(v200 + 64) = v202;
    *(v200 + 16) = v203;
    *(v200 + 32) = v201;
    v205 = v436;
    v204 = v437;
    v206 = v435;
    *(v200 + 128) = v438;
    *(v200 + 96) = v205;
    *(v200 + 112) = v204;
    *(v200 + 80) = v206;
    swift_willThrow();
    sub_1CEFE51CC(v194, type metadata accessor for VFSItem);
LABEL_37:
    v207 = v172;
LABEL_38:
    (v405)(v207, v411);
    sub_1CEFCCC44(v408, &unk_1EC4BED00, &unk_1CFA006E0);
    return;
  }

  sub_1CEFCCC44(v189, &unk_1EC4BEC00, &unk_1CF9FCB60);
  isEscapingClosureAtFileLocation = *(v122 + 256);
  v91 = sub_1CF4D463C();
  if (v395 > 1u)
  {
    v192 = v403;
    if (v395 == 2)
    {
      v417 = v187;
      v418 = v190;
      v208 = [objc_opt_self() defaultManager];
      sub_1CF9E5A18();
      v210 = v209;
      isEscapingClosureAtFileLocation = sub_1CF9E6888();
      v211 = v210;
      v212 = v383;
      v211, v213, v214, v215, v216, v217, v218, v219;
      if ((~v212 & 0xF000000000000007) == 0)
      {
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      if (v212 >> 62 == 1)
      {
        v220 = *((v212 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v221 = *((v212 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        sub_1CEFE42D4(v220, v221);
        sub_1CF9E6918();
        sub_1CF9E68D8();
        v223 = v222;
        v91 = sub_1CEFE4714(v220, v221);
        if (!v223)
        {
LABEL_102:
          __break(1u);
          goto LABEL_103;
        }

        v224 = sub_1CF9E6888();
        v223, v225, v226, v227, v228, v229, v230, v231;
        *&v430 = 0;
        v232 = [v208 createSymbolicLinkAtPath:isEscapingClosureAtFileLocation withDestinationPath:v224 error:&v430];

        v233 = v430;
        v172 = v410;
        v122 = v416;
        if (v232)
        {
          v234 = v430;
LABEL_46:
          v190 = v418;
          goto LABEL_61;
        }

LABEL_54:
        v243 = v233;
        sub_1CF9E57F8();

        swift_willThrow();
        goto LABEL_37;
      }
    }

    else
    {
      if ((~v383 & 0xF000000000000007) == 0)
      {
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

      if (v383 >> 62 == 1)
      {
        v235 = v190;
        v240 = *((v383 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v241 = *((v383 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        sub_1CEFE42D4(v240, v241);
        v242 = v378;
        sub_1CF9E5908();
        v378 = v242;
        if (v242)
        {
          sub_1CEFE4714(v240, v241);
          (v405)(v172, v411);
          goto LABEL_53;
        }

        v417 = v187;
        sub_1CEFE4714(v240, v241);
        goto LABEL_60;
      }
    }

    LODWORD(v368) = 0;
    v367 = 217;
    goto LABEL_111;
  }

  v192 = v403;
  if (v395)
  {
    v235 = v190;
    v417 = v187;
    v236 = [objc_opt_self() defaultManager];
    v237 = sub_1CF9E5928();
    *&v430 = 0;
    v238 = [v236 createDirectoryAtURL:v237 withIntermediateDirectories:0 attributes:0 error:&v430];

    v233 = v430;
    if (v238)
    {
      v239 = v430;
LABEL_60:
      v190 = v235;
      goto LABEL_61;
    }

    goto LABEL_54;
  }

  isEscapingClosureAtFileLocation = v412;
  if ((~v383 & 0xF000000000000007) == 0)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v193 = v378;
  sub_1CF18B04C(v172, 1, v383);
  v378 = v193;
  if (v193)
  {
    (v405)(v172, v411);
LABEL_53:
    sub_1CEFCCC44(v408, &unk_1EC4BED00, &unk_1CFA006E0);
    return;
  }

  v417 = v187;
  if (a10)
  {
    v418 = v190;
    sub_1CF9E5A18();
    v245 = v244;
    v423 = 0;
    v424 = 1;
    v425 = 0;
    v246 = swift_allocObject();
    v246[2] = &v423;
    v246[3] = sub_1CF5013B8;
    v246[4] = 0;
    v246[5] = &v425;
    v247 = swift_allocObject();
    *(v247 + 16) = sub_1CF50EB64;
    *(v247 + 24) = v246;
    *&v432 = sub_1CF50EB9C;
    *(&v432 + 1) = v247;
    *&v430 = MEMORY[0x1E69E9820];
    *(&v430 + 1) = 1107296256;
    *&v431 = sub_1CF005DF8;
    *(&v431 + 1) = &block_descriptor_212;
    v248 = _Block_copy(&v430);

    v122 = sub_1CF9E6978();
    v249 = fpfs_openat();

    _Block_release(v248);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    if (v425)
    {
LABEL_58:
      swift_willThrow();
      v245, v257, v258, v259, v260, v261, v262, v263;
      v207 = v410;
      goto LABEL_38;
    }

    if ((v249 & 0x80000000) == 0)
    {
      v172 = v410;
      v122 = v416;
      if (v424)
      {
LABEL_103:
        __break(1u);
LABEL_104:
        MEMORY[0x1EEE9AC00](v91);
        v367 = isEscapingClosureAtFileLocation;
        goto LABEL_107;
      }

      v245, v250, v251, v252, v253, v254, v255, v256;
      goto LABEL_46;
    }

    if (MEMORY[0x1D38683F0](v91))
    {
      if (MEMORY[0x1D38683F0]() == 9939394)
      {
        [objc_opt_self() fp:2 errorForDataProtectionClass:?];
      }

      else
      {
        MEMORY[0x1D38683F0]();
        v323 = sub_1CF9E6138();
        if ((v323 & 0x100000000) != 0)
        {
          LODWORD(v430) = 22;
        }

        else
        {
          LODWORD(v430) = v323;
        }

        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF00BC50(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
        v324 = v380;
        v325 = v382;
        sub_1CF9E57D8();
        sub_1CF9E53A8();
        (*(v381 + 8))(v324, v325);
      }

      goto LABEL_58;
    }

    *&v430 = 0;
    *(&v430 + 1) = 0xE000000000000000;
    sub_1CF9E7948();
    *(&v430 + 1), v326, v327, v328, v329, v330, v331, v332;
    *&v430 = 0xD00000000000001ALL;
    *(&v430 + 1) = 0x80000001CFA2DF30;
    v420 = v249;
    v333 = sub_1CF9E7F98();
    v335 = v334;
    MEMORY[0x1D3868CC0](v333);
    v335, v336, v337, v338, v339, v340, v341, v342;
    MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
    v343 = v430;
    v344 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v345 = sub_1CF9E6108();
    v346 = sub_1CF9E72B8();
    *(&v343 + 1), v347, v348, v349, v350, v351, v352, v353;
    if (os_log_type_enabled(v345, v346))
    {
      v354 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      *&v430 = v122;
      *v354 = 136315650;
      v355 = sub_1CF9E7988();
      v357 = v356;
      v358 = sub_1CEFD0DF0(v355, v356, &v430);
      v357, v359, v360, v361, v362, v363, v364, v365;
      *(v354 + 4) = v358;
      *(v354 + 12) = 2048;
      *(v354 + 14) = 315;
      *(v354 + 22) = 2080;
      *(v354 + 24) = sub_1CEFD0DF0(v343, *(&v343 + 1), &v430);
      _os_log_impl(&dword_1CEFC7000, v345, v346, "[ASSERT] ‼️  %s:%lu: %s", v354, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v122, -1, -1);
      MEMORY[0x1D386CDC0](v354, -1, -1);
    }

    (*(v385 + 8))(v384, v386);
    LODWORD(v368) = 0;
    v367 = 315;
LABEL_111:
    v268 = sub_1CF9E7B68();
    __break(1u);
    goto LABEL_112;
  }

LABEL_61:
  sub_1CF9E5A18();
  v265 = *&v192[v122];
  v129 = __CFADD__(v265, 1);
  v266 = v265 + 1;
  if (v129)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v267 = v264;
  v418 = v190;
  *&v192[v122] = v266;
  v268 = objc_sync_enter(v122);
  if (v268)
  {
LABEL_112:
    MEMORY[0x1EEE9AC00](v268);
    v367 = v122;
LABEL_107:
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v366, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v269 = *(v122 + 160);

  v270 = objc_sync_exit(v122);
  if (v270)
  {
    MEMORY[0x1EEE9AC00](v270);
    v367 = v122;
LABEL_109:
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v366, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v271 = swift_unknownObjectWeakLoadStrong();
  v272 = *(v122 + 288);
  sub_1CF9E6978();
  v273 = openat_s();

  if ((v273 & 0x80000000) == 0)
  {
    v267, v275, v276, v277, v278, v279, v280, v281;
    os_unfair_lock_lock((v269 + 56));
    v283 = *(v269 + 64);
    v282 = *(v269 + 72);
    LODWORD(v413) = *(v269 + 88);
    LODWORD(v416) = v273;
    LODWORD(v409) = *(v269 + 89);
    DWORD2(v407) = *(v269 + 90);

    v284 = *(v269 + 80);
    os_unfair_lock_unlock((v269 + 56));
    v404 = &v369;
    MEMORY[0x1EEE9AC00](v285);
    *(&v369 - 10) = v369;
    *(&v369 - 18) = v273;
    *(&v369 - 8) = v269;
    *(&v369 - 7) = v271;
    *&v407 = v271;
    *(&v369 - 6) = v272;
    *(&v369 - 40) = 2;
    v366 = xmmword_1CFA08A20;
    LOBYTE(v367) = -1;
    v368 = 0;
    *&v432 = v283;
    *(&v432 + 1) = v282;
    *&v430 = MEMORY[0x1E69E9820];
    *(&v430 + 1) = 1107296256;
    *&v431 = sub_1CEFDB088;
    *(&v431 + 1) = &block_descriptor_190_1;
    v286 = _Block_copy(&v430);
    v406 = v282;

    v403 = v286;
    v425 = v286;
    v426 = v284;
    v427 = v413;
    v428 = v409;
    v429 = BYTE8(v407);
    sub_1CEFDB034();
    v287 = swift_allocError();
    *v288 = 6;
    *(v288 + 8) = 0u;
    *(v288 + 24) = 0u;
    *(v288 + 40) = 19;
    v289 = v393;
    *v393 = v287;
    swift_storeEnumTagMultiPayload();
    v290 = swift_allocObject();
    v290[2] = v289;
    v290[3] = sub_1CF2B9F90;
    v290[4] = &v369 - 12;
    v291 = swift_allocObject();
    *(v291 + 16) = sub_1CF1DBD3C;
    *(v291 + 24) = v290;
    v413 = v290;
    *&v432 = sub_1CF1DBD5C;
    *(&v432 + 1) = v291;
    *&v430 = MEMORY[0x1E69E9820];
    *(&v430 + 1) = 1107296256;
    *&v431 = sub_1CEFDB270;
    *(&v431 + 1) = &block_descriptor_201;
    v292 = _Block_copy(&v430);

    v293 = fpfs_fgetfileattrs_detailed();
    _Block_release(v292);
    LOBYTE(v292) = swift_isEscapingClosureAtFileLocation();

    if ((v292 & 1) == 0)
    {
      v294 = v393;
      if (v293)
      {
        swift_getErrorValue();
        v409 = v421;
        v295 = v422;
        v296 = swift_allocError();
        *v297 = 6;
        *(v297 + 8) = 0u;
        *(v297 + 24) = 0u;
        *(v297 + 40) = 19;
        v298 = v293;
        v299 = sub_1CF199074(v296, v295);

        v300 = v396;
        *v396 = v299;
        swift_storeEnumTagMultiPayload();
        sub_1CEFDA9E0(v300, v294, &qword_1EC4BE000, &unk_1CFA006A0);
      }

      v301 = v388;
      sub_1CEFCCBDC(v294, v388, &qword_1EC4BE000, &unk_1CFA006A0);
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        v306 = v390;
        sub_1CEFE55D0(v301, v390, &unk_1EC4BE2F0, qword_1CFA04220);
        sub_1CEFCCC44(v294, &qword_1EC4BE000, &unk_1CFA006A0);

        _Block_release(v403);

        v172 = v410;
        v307 = v416;
        goto LABEL_73;
      }

      *&v430 = *v301;
      v302 = v430;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      swift_willThrowTypedImpl();

      sub_1CEFCCC44(v294, &qword_1EC4BE000, &unk_1CFA006A0);

      _Block_release(v403);

      v303 = v302;
      LODWORD(v430) = sub_1CF9E52A8();
      sub_1CF196978();
      v304 = sub_1CF9E5658();

      v172 = v410;
      if (v304)
      {
        v305 = v416;

        v306 = v390;
        *v390 = xmmword_1CF9FD940;
        *(v306 + 16) = 2;
        swift_storeEnumTagMultiPayload();
        v307 = v305;
LABEL_73:
        close(v307);

        swift_unknownObjectRelease();
        goto LABEL_77;
      }

      close(v416);
      goto LABEL_75;
    }

LABEL_96:
    __break(1u);
  }

  v308 = MEMORY[0x1D38683F0](v274);
  *&v432 = 0;
  v430 = 0u;
  v431 = 0u;
  BYTE8(v432) = 19;
  v302 = sub_1CF19BBE4(v308, &v430);
  sub_1CF1969CC(&v430);
  swift_willThrow();
  v267, v309, v310, v311, v312, v313, v314, v315;
  v378 = 0;
LABEL_75:
  v316 = v302;
  LODWORD(v430) = sub_1CF9E5328();
  sub_1CF196978();
  v317 = sub_1CF9E5658();

  swift_unknownObjectRelease();

  if (v317)
  {

    v306 = v390;
    *v390 = xmmword_1CF9FD930;
    *(v306 + 16) = 2;
    swift_storeEnumTagMultiPayload();
LABEL_77:
    v318 = v411;
    v319 = v391;
    v320 = v389;
    sub_1CEFE55D0(v306, v391, &unk_1EC4BE2F0, qword_1CFA04220);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1CEFCCC44(v319, &unk_1EC4BE2F0, qword_1CFA04220);
      v321 = 1;
    }

    else
    {
      sub_1CEFE4D30(v319, v320, type metadata accessor for VFSItem);
      v321 = 0;
    }

    isEscapingClosureAtFileLocation = v412;
    v322 = v414;
    v418(v320, v321, 1, v414);
    v91 = (v379)(v320, 1, v322);
    if (v91 != 1)
    {
      (v405)(v172, v318);
      sub_1CEFCCC44(v408, &unk_1EC4BED00, &unk_1CFA006E0);
      sub_1CEFE4D30(v320, v392, type metadata accessor for VFSItem);
      return;
    }

    goto LABEL_98;
  }

  (v405)(v172, v411);
  sub_1CEFCCC44(v408, &unk_1EC4BED00, &unk_1CFA006E0);
}

uint64_t sub_1CF5013B8@<X0>(_DWORD *a1@<X8>)
{
  result = sub_1CEFE1894(sub_1CF50E98C);
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

void sub_1CF501408(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X8>)
{
  LODWORD(v155) = a4;
  v158 = a3;
  v150 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1310, &qword_1CFA08AC8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v132 = (&v116 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v10 = *(v9 - 8);
  v151 = v9;
  v152 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v127 = (&v116 - v11);
  v12 = sub_1CF9E6388();
  v148 = *(v12 - 8);
  v149 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v147 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v145 = &v116 - v15;
  v146 = sub_1CF9E6498();
  v144 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v143 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v139 = &v116 - v18;
  v137 = sub_1CF9E63D8();
  v136 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v138 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_1CF9E6448();
  v141 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v140 = &v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_1CF9E73D8();
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v133 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v130 = &v116 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v128 = &v116 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v131 = &v116 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v129 = &v116 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v154 = &v116 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v156 = &v116 - v33;
  v34 = sub_1CF9E5A58();
  v159 = *(v34 - 8);
  v160 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v116 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for VFSItem(0);
  v153 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v39 = (&v116 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v116 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1330, &unk_1CFA13480);
  v44 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v116 - v45;
  v157 = a1;
  v47 = v161;
  sub_1CF50BCA0(a2, &v116 - v45);
  if (v47)
  {
    return;
  }

  v121 = v39;
  v48 = v158;
  v122 = v44;
  v123 = v43;
  v124 = v37;
  v126 = v36;
  v125 = v46;
  v49 = a2;
  v161 = v42;
  sub_1CF0015AC(a2, v42, type metadata accessor for VFSItem);
  v50 = *(v157 + 16);
  v51 = objc_sync_enter(v50);
  if (v51)
  {
LABEL_42:
    MEMORY[0x1EEE9AC00](v51);
    *(&v116 - 2) = v50;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v116 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v52 = objc_sync_exit(v50);
  v54 = v159;
  v53 = v160;
  v55 = v126;
  v56 = v156;
  if (v52)
  {
    MEMORY[0x1EEE9AC00](v52);
    *(&v116 - 2) = v50;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v116 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  sub_1CF25116C(v156);
  v51 = (*(v54 + 48))(v56, 1, v53);
  if (v51 == 1)
  {
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  (*(v54 + 32))(v55, v56, v53);
  sub_1CF50E358(v48, v155 & 1, v55);
  v57 = v154;
  sub_1CF264F9C(2, 2049, 2129920, v154);
  v158 = 0;
  v58 = v153 + 48;
  v59 = *(v153 + 48);
  if (v59(v57, 1, v124) == 1)
  {
    v117 = v59;
    v157 = v58;
    sub_1CEFCCC44(v57, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v60 = v152;
    goto LABEL_23;
  }

  v61 = v121;
  sub_1CEFE4D30(v57, v121, type metadata accessor for VFSItem);
  isa = v61->isa;
  v63 = *v49;
  v64 = *(v49 + 8);
  v60 = v152;
  if (!LOBYTE(v61[1].isa))
  {
    if (*(v49 + 8) || isa != v63)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (LOBYTE(v61[1].isa) != 1)
  {
    if (isa)
    {
      if (v64 != 2 || v63 != 1)
      {
        goto LABEL_22;
      }
    }

    else if (v64 != 2 || v63)
    {
      goto LABEL_22;
    }

LABEL_21:
    v65 = v125;
    v66 = v150;
    sub_1CEFCCBDC(v125, v150, &qword_1EC4C1330, &unk_1CFA13480);
    (*(v122 + 56))(v66, 0, 1, v123);
    updated = type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation(0);
    v68 = *(updated + 20);
    sub_1CF0015AC(v61, v66 + v68, type metadata accessor for VFSItem);
    (*(v153 + 56))(v66 + v68, 0, 1, v124);
    sub_1CF717E1C(v49);
    sub_1CEFE51CC(v61, type metadata accessor for VFSItem);
    (*(v54 + 8))(v55, v160);
    sub_1CEFE51CC(v161, type metadata accessor for VFSItem);
    sub_1CEFCCC44(v65, &qword_1EC4C1330, &unk_1CFA13480);
    *(v66 + *(updated + 24)) = v162;
    return;
  }

  if (v64 == 1 && isa == v63)
  {
    goto LABEL_21;
  }

LABEL_22:
  v117 = v59;
  v157 = v58;
  sub_1CEFE51CC(v61, type metadata accessor for VFSItem);
LABEL_23:
  v119 = *v49;
  v120 = v49;
  v118 = *(v49 + 8);
  v69 = dispatch_group_create();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0660, qword_1CFA08B60);
  v70 = swift_allocBox();
  v71 = *(v60 + 56);
  v154 = v72;
  v71(v72, 1, 1, v151);
  dispatch_group_enter(v69);
  v73 = swift_allocObject();
  *(v73 + 16) = v70;
  *(v73 + 24) = v69;
  v74 = v73;
  sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v156 = v50;
  v75 = v50[27];
  v162 = MEMORY[0x1E69E7CC0];
  sub_1CF00BC50(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
  v155 = v70;

  v121 = v69;
  v76 = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0, MEMORY[0x1E69E6328]);
  v77 = v133;
  v78 = v135;
  sub_1CF9E77B8();
  v79 = sub_1CF9E73E8();

  (*(v134 + 8))(v77, v78);
  qos_class_self();
  v80 = v139;
  sub_1CF9E63B8();
  v81 = v136;
  v82 = *(v136 + 48);
  v83 = v137;
  v84 = v82(v80, 1, v137);
  v85 = v147;
  v86 = v143;
  if (v84 == 1)
  {
    (*(v81 + 104))(v138, *MEMORY[0x1E69E7FA0], v83);
    v87 = v82(v80, 1, v83);
    v89 = v148;
    v88 = v149;
    if (v87 != 1)
    {
      sub_1CEFCCC44(v80, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v81 + 32))(v138, v80, v83);
    v89 = v148;
    v88 = v149;
  }

  ObjectType = swift_getObjectType();
  v91 = v140;
  sub_1CF9E6428();
  v92 = swift_allocObject();
  v93 = v119;
  *(v92 + 16) = v156;
  *(v92 + 24) = v93;
  *(v92 + 32) = v118;
  *(v92 + 40) = 0u;
  *(v92 + 56) = 0u;
  *(v92 + 72) = 0u;
  *(v92 + 88) = 0u;
  *(v92 + 104) = 0u;
  *(v92 + 120) = 0u;
  *(v92 + 136) = 0;
  *(v92 + 144) = 2049;
  *(v92 + 152) = v79;
  *(v92 + 160) = sub_1CF50EBA0;
  *(v92 + 168) = v74;

  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v91, sub_1CF50EB68, v92, ObjectType);

  (*(v141 + 8))(v91, v142);
  sub_1CF9E6478();
  v94 = v86;
  v95 = v145;
  sub_1CEFD5B64(v145);
  sub_1CEFD5BD8(v85);
  MEMORY[0x1D3869770](v94, v95, v85, ObjectType);
  v96 = *(v89 + 8);
  v96(v85, v88);
  v96(v95, v88);
  (*(v144 + 8))(v94, v146);
  sub_1CF9E7448();

  swift_unknownObjectRelease();
  v97 = v121;
  sub_1CF9E72F8();
  v98 = v154;
  swift_beginAccess();
  if ((*(v152 + 48))(v98, 1, v151))
  {

    v99 = v153;
    v100 = v129;
    v101 = v124;
    (*(v153 + 56))(v129, 1, 1, v124);

    v102 = v123;
    v103 = v122;
    v104 = v120;
  }

  else
  {
    v105 = v98;
    v106 = v127;
    sub_1CEFCCBDC(v105, v127, &unk_1EC4BF310, &unk_1CF9FDB30);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v99 = v153;
    v102 = v123;
    v103 = v122;
    v104 = v120;
    if (EnumCaseMultiPayload == 1)
    {
      v163 = *v106;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      swift_willThrowTypedImpl();

      (*(v159 + 8))(v126, v160);
      sub_1CEFE51CC(v161, type metadata accessor for VFSItem);
      sub_1CEFCCC44(v125, &qword_1EC4C1330, &unk_1CFA13480);

      return;
    }

    v108 = v106;
    v100 = v129;
    sub_1CEFE55D0(v108, v129, &unk_1EC4BEC00, &unk_1CF9FCB60);

    v101 = v124;
  }

  v50 = v132;
  sub_1CEFCCBDC(v125, v132, &qword_1EC4C1330, &unk_1CFA13480);
  (*(v103 + 56))(v50, 0, 1, v102);
  v109 = v128;
  sub_1CEFCCBDC(v100, v128, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v110 = v117;
  v51 = (v117)(v109, 1, v101);
  v111 = v131;
  if (v51 == 1)
  {
    goto LABEL_41;
  }

  sub_1CEFE4D30(v109, v131, type metadata accessor for VFSItem);
  (*(v99 + 56))(v111, 0, 1, v101);
  v112 = v130;
  sub_1CEFCCBDC(v100, v130, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if (v110(v112, 1, v101) == 1)
  {
    sub_1CEFCCC44(v112, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v113 = v150;
    if (qword_1EDEABDE0 != -1)
    {
      swift_once();
    }

    v114 = qword_1EDEABDE8;
    sub_1CEFCCC44(v100, &unk_1EC4BEC00, &unk_1CF9FCB60);
    (*(v159 + 8))(v126, v160);
    sub_1CEFE51CC(v161, type metadata accessor for VFSItem);
    sub_1CEFCCC44(v125, &qword_1EC4C1330, &unk_1CFA13480);
  }

  else
  {
    sub_1CF717E1C(v104);
    sub_1CEFCCC44(v100, &unk_1EC4BEC00, &unk_1CF9FCB60);
    (*(v159 + 8))(v126, v160);
    sub_1CEFE51CC(v161, type metadata accessor for VFSItem);
    sub_1CEFCCC44(v125, &qword_1EC4C1330, &unk_1CFA13480);
    sub_1CEFE51CC(v112, type metadata accessor for VFSItem);
    v114 = v163;
    v113 = v150;
  }

  sub_1CEFE55D0(v50, v113, &qword_1EC4C1310, &qword_1CFA08AC8);
  v115 = type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation(0);
  sub_1CEFE55D0(v111, v113 + *(v115 + 20), &unk_1EC4BEC00, &unk_1CF9FCB60);
  *(v113 + *(v115 + 24)) = v114;
}

_OWORD *sub_1CF5028E0(__int128 *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  LODWORD(v87) = a4;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1380, &qword_1CFA08B78);
  MEMORY[0x1EEE9AC00](v90);
  v81 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v82 = &v78 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v83 = &v78 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v88 = &v78 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v78 - v16;
  v18 = type metadata accessor for VFSItem(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a1 + 3);
  v22 = *(a1 + 4);
  v24 = *(a1 + 40);
  v89 = *a2;
  v96 = *(a2 + 8);
  v25 = a3[1];
  v86 = *a3;
  v26 = v4;
  v27 = *(v4 + 16);
  v97 = v24;
  v85 = *a1;
  *(&v28 + 1) = *(&v85 + 1);
  v92 = v85;
  *&v28 = *(a1 + 2);
  v84 = v28;
  v93 = v28;
  v94 = v23;
  v95 = v22;

  v29 = v91;
  sub_1CF263024(&v97, &v92, 2049, v17);
  v95, v30, v31, v32, v33, v34, v35, v36;
  if (!v29)
  {
    v79 = v25;
    v80 = v26;
    v37 = v96;
    v38 = v90;
    v91 = v21;
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {
      sub_1CEFCCC44(v17, &unk_1EC4BEC00, &unk_1CF9FCB60);
      v39 = (v24 - 1) < 2 || v84 == 0;
      v40 = v39;
      if (v39)
      {
        v41 = v85;
      }

      else
      {
        v41 = v84;
      }

      v27 = &unk_1CFA08B50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
      swift_allocError();
      *v42 = v41;
      *(v42 + 8) = v40;
      *(v42 + 16) = 0u;
      *(v42 + 32) = 0u;
      *(v42 + 48) = 0u;
      *(v42 + 64) = 0u;
      *(v42 + 80) = 0u;
      *(v42 + 96) = 0u;
      *(v42 + 112) = 0u;
      sub_1CF2A8DE0(v42);
      swift_willThrow();
    }

    else
    {
      v43 = v91;
      v44 = sub_1CEFE4D30(v17, v91, type metadata accessor for VFSItem);
      v45 = v37;
      v46 = v38;
      MEMORY[0x1EEE9AC00](v44);
      *(&v78 - 8) = v80;
      *(&v78 - 7) = v47;
      *(&v78 - 48) = v48;
      v49 = v79;
      *(&v78 - 5) = v86;
      *(&v78 - 4) = v49;
      *(&v78 - 3) = v43;
      *(&v78 - 16) = v87 & 1;
      v50 = v88;
      sub_1CF714E9C(v88, v88 + v51, v52, v53, sub_1CF50E934, (&v78 - 10));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1388, &unk_1CFA08B80);
      v55 = *(type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation(0) - 8);
      v56 = *(v55 + 72);
      v57 = (*(v55 + 80) + 32) & ~*(v55 + 80);
      if (v45 == 255)
      {
        v87 = v56;
        v27 = swift_allocObject();
        v27[1] = xmmword_1CF9FA440;
        v72 = v27 + v57;
        v69 = v83;
        sub_1CEFCCBDC(v50, v83, &qword_1EC4C1380, &qword_1CFA08B78);
        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1390, &unk_1CFA13500);
        LODWORD(v89) = *(v73 + 48);
        v96 = *(v46 + 48);
        sub_1CEFE4D30(v69, v27 + v57, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
        v74 = v82;
        sub_1CEFCCBDC(v50, v82, &qword_1EC4C1380, &qword_1CFA08B78);
        v75 = *(v73 + 48);
        v71 = v74;
        v67 = *(v46 + 48);
        sub_1CEFE4D30(v71 + v75, &v72[v87], type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
        sub_1CEFCCC44(v50, &qword_1EC4C1380, &qword_1CFA08B78);
      }

      else
      {
        v87 = 2 * v56;
        v58 = v56;
        v27 = swift_allocObject();
        v27[1] = xmmword_1CF9FC3C0;
        v59 = v83;
        sub_1CEFCCBDC(v50, v83, &qword_1EC4C1380, &qword_1CFA08B78);
        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1390, &unk_1CFA13500);
        LODWORD(v89) = *(v60 + 48);
        v96 = *(v38 + 48);
        v61 = v59;
        v62 = v27 + v57;
        sub_1CEFE4D30(v61, v27 + v57, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
        v63 = v82;
        sub_1CEFCCBDC(v50, v82, &qword_1EC4C1380, &qword_1CFA08B78);
        v64 = *(v60 + 48);
        LODWORD(v86) = *(v46 + 48);
        sub_1CEFE4D30(v63 + v64, v27 + v57 + v58, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
        v65 = v81;
        sub_1CEFCCBDC(v50, v81, &qword_1EC4C1380, &qword_1CFA08B78);
        v66 = *(v60 + 48);
        v67 = v86;
        v68 = &v62[v87];
        v69 = v83;
        sub_1CEFE4D30(v65 + *(v46 + 48), v68, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
        sub_1CEFCCC44(v50, &qword_1EC4C1380, &qword_1CFA08B78);
        v70 = v65 + v66;
        v71 = v63;
        sub_1CEFE51CC(v70, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
        sub_1CEFE51CC(v65, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
      }

      v76 = v69 + v89;
      v77 = v69 + v96;
      sub_1CEFE51CC(v71 + v67, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
      sub_1CEFE51CC(v71, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
      sub_1CEFE51CC(v77, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
      sub_1CEFE51CC(v76, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
      sub_1CEFE51CC(v91, type metadata accessor for VFSItem);
    }
  }

  return v27;
}