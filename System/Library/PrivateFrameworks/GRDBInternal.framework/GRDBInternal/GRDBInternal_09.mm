uint64_t sub_1B21BC734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v46[0] = a4;

  sub_1B21BFA60(v46);
  v10 = v6;
  if (!v6)
  {
    v11 = v46[0];
    v12 = *(v46[0] + 16);
    v13 = MEMORY[0x1E69E7CC0];
    v43 = a2;
    v44 = a3;
    if (v12)
    {
      v48 = a5;
      v46[0] = MEMORY[0x1E69E7CC0];
      sub_1B216EF70(0, v12, 0);
      v14 = v46[0];
      v15 = (v11 + 56);
      do
      {
        v17 = *(v15 - 3);
        v16 = *(v15 - 2);
        v19 = *(v15 - 1);
        v18 = *v15;
        v46[0] = v14;
        v21 = *(v14 + 16);
        v20 = *(v14 + 24);

        if (v21 >= v20 >> 1)
        {
          sub_1B216EF70(v20 > 1, v21 + 1, 1);
          v14 = v46[0];
        }

        v15 += 5;
        *(v14 + 16) = v21 + 1;
        v22 = (v14 + 32 * v21);
        v22[4] = v17;
        v22[5] = v16;
        v22[6] = v19;
        v22[7] = v18;
        --v12;
      }

      while (v12);

      a2 = v43;
      a3 = v44;
      v13 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      v14 = MEMORY[0x1E69E7CC0];
    }

    v23 = *(v14 + 16);
    v24 = v23 + 1;
    v25 = 56;
    while (--v24)
    {
      v26 = *(v14 + v25);
      v25 += 32;
      if (!v26)
      {
        Database.primaryKey(_:)();
        v37 = v46[0];
        if (v47)
        {
          if (v47 == 1)
          {
            v38 = v46[0];
          }

          else
          {
            v38 = &unk_1F2968E50;
          }
        }

        else
        {
          v39 = v46[1];
          sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
          v38 = swift_allocObject();
          v38[1] = xmmword_1B22546B0;
          *(v38 + 4) = v37;
          *(v38 + 5) = v39;
        }

        v29 = sub_1B21B95B0(v38, v14);

        goto LABEL_28;
      }
    }

    if (!v23)
    {

      v29 = MEMORY[0x1E69E7CC0];
LABEL_28:
      *a6 = a1;
      a6[1] = a2;
      a6[2] = a3;
      a6[3] = v29;
    }

    v46[0] = v13;
    v27 = v14;
    sub_1B216ECE4(0, v23, 0);
    v28 = 0;
    v29 = v46[0];
    v45 = v27;
    v10 = (v27 + 56);
    while (v28 < *(v45 + 16))
    {
      v30 = v23;
      v31 = *v10;
      if (!*v10)
      {
        goto LABEL_30;
      }

      v32 = *(v10 - 2);
      v48 = *(v10 - 3);
      v33 = *(v10 - 1);
      v46[0] = v29;
      v35 = *(v29 + 16);
      v34 = *(v29 + 24);

      if (v35 >= v34 >> 1)
      {
        sub_1B216ECE4(v34 > 1, v35 + 1, 1);
        v29 = v46[0];
      }

      ++v28;
      *(v29 + 16) = v35 + 1;
      v36 = (v29 + 32 * v35);
      v36[4] = v48;
      v36[5] = v32;
      v36[6] = v33;
      v36[7] = v31;
      v10 += 4;
      v23 = v30;
      if (v30 == v28)
      {

        a2 = v43;
        a3 = v44;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Database.foreignKeyViolations()()
{
  sub_1B2113180();
  v2 = sub_1B21473DC(v1, 0xD000000000000018, v0 | 0x8000000000000000, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC8], v4, sub_1B21BED30);
  sub_1B212AC5C(v4, &qword_1EB7A1370, &unk_1B2257580);

  return v2;
}

uint64_t Database.foreignKeyViolations(in:)()
{
  sub_1B2117A7C();
  result = sub_1B213DA88();
  if (v1)
  {
    return v0;
  }

  v5 = result;
  v18 = v2;
  v6 = 0;
  v7 = *(result + 16);
  for (i = result + 40; ; i += 16)
  {
    if (v7 == v6)
    {

      sub_1B21AC298();
      sub_1B2118078();
      swift_allocError();
      sub_1B21AB9A4(v3, v18, v13);
      swift_willThrow();
      return v0;
    }

    if (v6 >= *(v5 + 16))
    {
      break;
    }

    v9 = sub_1B2117214();
    sub_1B213E100(v9, v10);
    if (sub_1B213E114(1, v3, v18))
    {

      v14 = sub_1B2117214();
      v0 = sub_1B21BCC98(v14, v15, v3, v18);
      v16 = sub_1B2117214();
      sub_1B213EA54(v16, v17);

      return v0;
    }

    v11 = sub_1B2117214();
    result = sub_1B213EA54(v11, v12);
    ++v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21BCC98(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B2252CD0();

  *&v16[0] = 0x20414D47415250;
  *(&v16[0] + 1) = 0xE700000000000000;
  v9 = 0xE400000000000000;
  v10 = 1886217588;
  if (a2 != 1)
  {
    v10 = a1;
    v9 = a2;
  }

  if (a2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1852399981;
  }

  if (a2)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  sub_1B213E100(a1, a2);
  MEMORY[0x1B2741EB0](v11, v12);

  MEMORY[0x1B2741EB0](0xD000000000000013, 0x80000001B226E4E0);
  v18 = 34;
  v19 = 0xE100000000000000;
  MEMORY[0x1B2741EB0](a3, a4);
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);

  MEMORY[0x1B2741EB0](41, 0xE100000000000000);
  v13 = v16[0];
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v14 = sub_1B21473DC(v4, v13, *(&v13 + 1), MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC8], v16, sub_1B21BED30);
  sub_1B212AC5C(v16, &qword_1EB7A1370, &unk_1B2257580);

  return v14;
}

void *sub_1B21BCE80()
{
  result = sub_1B223CD28(&v5);
  if (!v0)
  {
    v2 = v6;
    if (v6)
    {
      v9 = v8;
      v3 = v5;
      LOBYTE(v7) = v7 & 1;
      sub_1B21AC298();
      sub_1B2118078();
      swift_allocError();
      ForeignKeyViolation.databaseError(_:)(v4);
      sub_1B21C2698(v3, v2);
      return swift_willThrow();
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.checkForeignKeys(in:)(Swift::String in)
{
  Database.foreignKeyViolations(in:)();
  if (!v1)
  {
    sub_1B21BCE80();
  }
}

double ForeignKeyViolation.databaseError(_:)@<D0>(uint64_t a1@<X8>)
{
  sub_1B21C2AC0();
  v3 = ForeignKeyViolation.failureDescription(_:)(v2);
  *a1 = 787;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  return result;
}

uint64_t sub_1B21BD090()
{
  result = sub_1B213DA88();
  v2 = v0;
  if (v0)
  {
    return v27;
  }

  v3 = result;
  v4 = 0;
  v22 = *(result + 16);
  v21 = result;
LABEL_3:
  if (v4 == v22)
  {

    return 0;
  }

  if (v4 < *(v3 + 16))
  {
    v5 = sub_1B2116164();
    sub_1B213E100(v5, v6);
    sub_1B2116164();
    v7 = sub_1B213DF08();
    v23 = v4 + 1;
    v8 = sub_1B2116164();
    sub_1B213EA54(v8, v9);
    sub_1B2117214();
    v26 = sub_1B2252220();
    v24 = v10;
    v11 = 1 << *(v7 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v7 + 56);
    v14 = (v11 + 63) >> 6;

    while (v13)
    {
LABEL_15:
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v17 = (*(v7 + 48) + ((v2 << 12) | (v16 << 6)));
      v27 = v17[2];
      if (*v17 != 0x656C626174 || v17[1] != 0xE500000000000000)
      {
        result = sub_1B22531F0();
        if ((result & 1) == 0)
        {
          continue;
        }
      }

      if (sub_1B2252220() == v26 && v19 == v24)
      {

LABEL_29:

        return v27;
      }

      v25 = sub_1B22531F0();

      if (v25)
      {

        goto LABEL_29;
      }
    }

    v4 = v23;
    while (1)
    {
      v15 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v15 >= v14)
      {

        v2 = 0;
        v3 = v21;
        goto LABEL_3;
      }

      v13 = *(v7 + 56 + 8 * v15);
      ++v2;
      if (v13)
      {
        v2 = v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1B21BD3B8()
{
  sub_1B2117A7C();
  v2 = Database.tableExists(_:)(v1);
  if (!v3)
  {
    if (v2)
    {
      sub_1B2122C80();
      Database.primaryKey(_:)();
      v0 = v27;
      if (!v30)
      {
        sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
        sub_1B2113B74();
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_1B22546B0;
        *(v26 + 32) = v27;
        *(v26 + 40) = v29;
        return v26;
      }

      if (v30 == 1)
      {
        if ((v29 & 1) == 0)
        {
          return v0;
        }

        sub_1B213CC80();
      }

      else
      {
        v5 = v27;
        v6 = v29;
        v7 = 2;
      }

      sub_1B21424A0(v5, v6, v7);
      return &unk_1F2968EB0;
    }

    v8 = sub_1B2122C80();
    v14 = Database.columns(in:)(v8, v9);
    v15 = *(v14 + 16);
    if (v15)
    {
      v28 = MEMORY[0x1E69E7CC0];
      sub_1B2116B10(0, v15, 0, v10, v11, v12, v13);
      v0 = v28;
      v16 = (v14 + 64);
      do
      {
        v18 = *(v16 - 1);
        v17 = *v16;
        v20 = *(v28 + 16);
        v19 = *(v28 + 24);

        if (v20 >= v19 >> 1)
        {
          sub_1B2116B10(v19 > 1, v20 + 1, 1, v21, v22, v23, v24);
        }

        *(v28 + 16) = v20 + 1;
        v25 = v28 + 16 * v20;
        *(v25 + 32) = v18;
        *(v25 + 40) = v17;
        v16 += 11;
        --v15;
      }

      while (v15);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v0;
}

uint64_t ColumnInfo.init(row:)@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1B212F0BC(6580579, 0xE300000000000000);
  *(a2 + 24) = sub_1B212D190(1701667182);
  *(a2 + 32) = v3;
  *(a2 + 40) = sub_1B212D190(1701869940);
  *(a2 + 48) = v4;
  *(a2 + 56) = sub_1B21322A0(0x6C6C756E746F6ELL) & 1;
  *(a2 + 64) = sub_1B21496F4();
  *(a2 + 72) = v5;
  *(a2 + 80) = sub_1B212F0BC(27504, 0xE200000000000000);
  v6 = sub_1B2149894();
  v8 = v7;

  *(a2 + 8) = v6;
  *(a2 + 16) = v8 & 1;
  return result;
}

uint64_t ForeignKeyViolation.originTable.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ForeignKeyViolation.originRowID.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t ForeignKeyViolation.destinationTable.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ForeignKeyViolation.init(row:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 72) <= 0)
  {
    goto LABEL_27;
  }

  v2 = a1;
  v4 = *(a1 + 64);
  if (v4)
  {
    if (sqlite3_column_type(*(a1 + 64), 0) == 5)
    {
LABEL_30:
      v51[0] = 0uLL;
      v19 = sub_1B213CF20();
      RowDecodingContext.init(row:key:)(v19, v51, v52);
      sub_1B21A2FC0();
      sub_1B2118078();
      swift_allocError();
      v20 = sub_1B2117CCC();
      v22 = 0;
LABEL_32:
      v24 = sub_1B21320F0(v20, v22, v21);
      sub_1B21C2AD4(v24, v25, v26, v27, v28, v29, v30, v31, v44, v45, v46, v47, v48, v49, v50);
      v32 = MEMORY[0x1E69E6158];
LABEL_34:
      sub_1B2183238(v32, v51, &v46, v2);
      sub_1B2113A44(v46, v47, v48);
      sub_1B218450C(v52);
      swift_willThrow();
      while (1)
      {
        sub_1B213CE18();
        swift_unexpectedError();
        __break(1u);
      }
    }

    if (!sqlite3_column_text(v4, 0))
    {
      __break(1u);
      goto LABEL_26;
    }

    v5 = sub_1B2252400();
  }

  else
  {
    v5 = sub_1B212614C();
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  if (*(v2 + 72) <= 1)
  {
    sub_1B2111608();
    v18 = 803;
    goto LABEL_29;
  }

  v7 = *(v2 + 64);
  if (v7)
  {
    v8 = 1;
    if (sqlite3_column_type(*(v2 + 64), 1) == 5)
    {
      v9 = 0;
    }

    else
    {
      v9 = sqlite3_column_int64(v7, 1);
      v8 = 0;
    }
  }

  else
  {
    sub_1B21B9F7C();
    v8 = v10;
  }

  *(a2 + 16) = v9;
  *(a2 + 24) = v8 & 1;
  if (*(v2 + 72) <= 2)
  {
LABEL_27:
    sub_1B2111608();
    v18 = 825;
LABEL_29:
    v44 = v18;
    sub_1B2112A88();
    sub_1B2252EC0();
    __break(1u);
    goto LABEL_30;
  }

  v11 = *(v2 + 64);
  if (v11)
  {
    if (sqlite3_column_type(*(v2 + 64), 2) == 5)
    {
      v51[0] = xmmword_1B225B1F0;
      v23 = sub_1B213CF20();
      RowDecodingContext.init(row:key:)(v23, v51, v52);
      sub_1B21A2FC0();
      sub_1B2118078();
      swift_allocError();
      v20 = sub_1B2117CCC();
      v22 = 2;
      goto LABEL_32;
    }

    if (sqlite3_column_text(v11, 2))
    {
      v12 = sub_1B2252400();
      goto LABEL_19;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v12 = sub_1B212614C();
LABEL_19:
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  if (*(v2 + 72) <= 3)
  {
    goto LABEL_27;
  }

  v14 = *(v2 + 64);
  if (!v14)
  {
    sub_1B21B9DB8();
    goto LABEL_24;
  }

  if (sqlite3_column_type(*(v2 + 64), 3) == 5)
  {
    v51[0] = xmmword_1B225B340;
    v33 = sub_1B213CF20();
    RowDecodingContext.init(row:key:)(v33, v51, v52);
    sub_1B21A2FC0();
    sub_1B2118078();
    swift_allocError();
    v34 = sub_1B2117CCC();
    v36 = sub_1B21320F0(v34, 3, v35);
    sub_1B21C2AD4(v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
    v32 = MEMORY[0x1E69E6530];
    goto LABEL_34;
  }

  v15 = sqlite3_column_int64(v14, 3);
LABEL_24:
  v16 = v15;

  *(a2 + 48) = v16;
  return result;
}

unint64_t ForeignKeyViolation.description.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  if (*(v0 + 24))
  {
    sub_1B2252CD0();

    v9 = 0xD000000000000028;
    v3 = sub_1B2113B50();
    MEMORY[0x1B2741EB0](v3);
    v4 = sub_1B2124218();
    MEMORY[0x1B2741EB0](v4);
    MEMORY[0x1B2741EB0](v1, v2);
  }

  else
  {
    v9 = 0;
    sub_1B2252CD0();
    sub_1B212D858();
    MEMORY[0x1B2741EB0](0xD000000000000028);
    v5 = sub_1B2113B50();
    MEMORY[0x1B2741EB0](v5);
    v6 = sub_1B2124218();
    MEMORY[0x1B2741EB0](v6);
    MEMORY[0x1B2741EB0](v1, v2);
    MEMORY[0x1B2741EB0](0x776F72206E69202CLL, 0xEB00000000206469);
    v7 = sub_1B2252FD0();
    MEMORY[0x1B2741EB0](v7);
  }

  return v9;
}

void *ForeignKeyViolation.failureDescription(_:)(uint64_t a1)
{
  v3 = v1[1];
  v62 = *v1;
  v63 = v3;
  v64 = v1[2];
  v65 = *(v1 + 6);
  v4 = v3;
  v5 = BYTE8(v3);
  if (BYTE8(v3))
  {
    v6 = 0;
  }

  else
  {
    v60 = v63;
    result = sub_1B21BE1FC(a1, &v62, &v58, &v54);
    if (v2)
    {
      return result;
    }

    v6 = v54;
  }

  v8 = v62;
  v9 = Database.foreignKeys(on:)(v62, *(&v62 + 1));
  if (v2)
  {
  }

  v53 = v4;
  v10 = (v9 + 32);
  v11 = v65;
  v12 = *(v9 + 16) + 1;
  do
  {
    if (!--v12)
    {

      goto LABEL_13;
    }

    v13 = v10 + 4;
    v14 = *v10;
    v10 += 4;
  }

  while (v14 != v65);
  v15 = *(v13 - 2);
  v52 = *(v13 - 3);
  v16 = *(v13 - 1);

  if (v15)
  {
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_1B2252CD0();
    v58 = v54;
    v59 = v55;
    sub_1B212D858();
    MEMORY[0x1B2741EB0](0xD000000000000028);
    MEMORY[0x1B2741EB0](v8, *(&v8 + 1));
    v17 = MEMORY[0x1B2741EB0](40, 0xE100000000000000);
    v54 = v11;
    v55 = v52;
    v56 = v15;
    v57 = v16;
    v66 = ForeignKeyInfo.originColumns.getter(v17, v18, v19, v20, v21, v22, v23);
    sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B211AB74(qword_1ED85E790, &qword_1EB7A0DA0, &qword_1B2254340, MEMORY[0x1E69E6310]);
    v24 = sub_1B2252250();
    v26 = v25;

    MEMORY[0x1B2741EB0](v24, v26);

    MEMORY[0x1B2741EB0](0x206F742029, 0xE500000000000000);
    MEMORY[0x1B2741EB0](v64, *(&v64 + 1));
    v27 = MEMORY[0x1B2741EB0](40, 0xE100000000000000);
    v54 = v11;
    v55 = v52;
    v56 = v15;
    v57 = v16;
    v34 = ForeignKeyInfo.destinationColumns.getter(v27, v28, v29, v30, v31, v32, v33);
    sub_1B21C20A4(v11, v52, v15);
    v66 = v34;
    v35 = sub_1B2252250();
    v37 = v36;

    MEMORY[0x1B2741EB0](v35, v37);

    MEMORY[0x1B2741EB0](41, 0xE100000000000000);
    v38 = v58;
    v39 = v59;
    goto LABEL_14;
  }

LABEL_13:
  v54 = 0;
  v55 = 0xE000000000000000;
  sub_1B2252CD0();

  v54 = 0xD000000000000028;
  v55 = 0x80000001B226E430;
  MEMORY[0x1B2741EB0](v8, *(&v8 + 1));
  v40 = sub_1B2124218();
  MEMORY[0x1B2741EB0](v40);
  MEMORY[0x1B2741EB0](v64, *(&v64 + 1));
  v38 = v54;
  v39 = v55;
LABEL_14:
  v60 = v38;
  v61 = v39;
  if (v6)
  {
    v54 = 0x206E69202CLL;
    v55 = 0xE500000000000000;

    v48 = Row.description.getter(v41, v42, v43, v44, v45, v46, v47);
    v50 = v49;

    MEMORY[0x1B2741EB0](v48, v50);

    MEMORY[0x1B2741EB0](v54, v55);

LABEL_18:

    return v60;
  }

  if ((v5 & 1) == 0)
  {
    v54 = 0x776F72206E69202CLL;
    v55 = 0xEB00000000206469;
    v58 = v53;
    v51 = sub_1B2252FD0();
    MEMORY[0x1B2741EB0](v51);

    MEMORY[0x1B2741EB0](v54, v55);
    goto LABEL_18;
  }

  return v60;
}

uint64_t sub_1B21BE1FC@<X0>(uint64_t a1@<X1>, void *a2@<X2>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  type metadata accessor for Row();
  sub_1B2252CD0();

  strcpy(v13, "SELECT * FROM ");
  HIBYTE(v13[0]) = -18;
  MEMORY[0x1B2741EB0](*a2, a2[1]);
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);

  MEMORY[0x1B2741EB0](0x7220455245485720, 0xEF203D206469776FLL);
  v9 = sub_1B2252FD0();
  MEMORY[0x1B2741EB0](v9);

  v10 = v13[0];
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  v15[0] = MEMORY[0x1E69E7CC0];
  v15[1] = MEMORY[0x1E69E7CC8];
  v11 = static Row.fetchOne(_:sql:arguments:adapter:)(a1, v10, *(&v10 + 1), v15, v13);

  result = sub_1B212AC5C(v13, &qword_1EB7A1370, &unk_1B2257580);
  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    *a4 = v11;
  }

  return result;
}

uint64_t ForeignKeyInfo.originColumns.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(v7 + 24);
  v11 = MEMORY[0x1E69E7CC0];
  if (*(v10 + 16))
  {
    sub_1B21C2A9C(a1, a2, a3, a4, a5, a6, a7);
    v11 = v21;
    do
    {
      sub_1B21C2A78();
      if (v8 >= v9 >> 1)
      {
        sub_1B213CC80();
        sub_1B2116B10(v13, v14, v15, v16, v17, v18, v19);
        v11 = v21;
      }

      sub_1B2146AC0();
    }

    while (!v12);
  }

  return v11;
}

uint64_t ForeignKeyInfo.destinationColumns.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(v7 + 24);
  v11 = MEMORY[0x1E69E7CC0];
  if (*(v10 + 16))
  {
    sub_1B21C2A9C(a1, a2, a3, a4, a5, a6, a7);
    v11 = v21;
    do
    {
      sub_1B21C2A78();
      if (v8 >= v9 >> 1)
      {
        sub_1B213CC80();
        sub_1B2116B10(v13, v14, v15, v16, v17, v18, v19);
        v11 = v21;
      }

      sub_1B2146AC0();
    }

    while (!v12);
  }

  return v11;
}

uint64_t sub_1B21BE504()
{
  v1 = *v0;
  if (!*(v0 + 16))
  {
    goto LABEL_7;
  }

  result = 0x6469776F72;
  if (*(v0 + 16) == 1 && (v0[1] & 1) == 0)
  {
    if (*(v1 + 16) != 1)
    {
      return 0;
    }

    v1 = *(v1 + 32);
LABEL_7:

    return v1;
  }

  return result;
}

uint64_t sub_1B21BE5E4()
{
  sub_1B211D964();
  v3 = *v2 == *v0 && v1[1] == v0[1];
  if (!v3 && (sub_1B22531F0() & 1) == 0)
  {
    return 0;
  }

  v4 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v4 && (sub_1B22531F0() & 1) == 0)
  {
    return 0;
  }

  v5 = v1[5];
  v6 = v0[5];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = v1[4] == v0[4] && v5 == v6;
    if (!v7 && (sub_1B22531F0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = v1[7];
  v9 = v0[7];
  if (v8)
  {
    if (v9)
    {
      v10 = v1[6] == v0[6] && v8 == v9;
      if (v10 || (sub_1B22531F0() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v9)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1B21BE6C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B22531F0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_1B22531F0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656D616E5F6C6274 && a2 == 0xE800000000000000;
      if (v7 || (sub_1B22531F0() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 7106931 && a2 == 0xE300000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1B22531F0();

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

uint64_t sub_1B21BE828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B21BE6C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B21BE870@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B21BE820();
  *a1 = result;
  return result;
}

uint64_t sub_1B21BE898(uint64_t a1)
{
  v2 = sub_1B2148074();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B21BE8D4(uint64_t a1)
{
  v2 = sub_1B2148074();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B21BE910(void *a1)
{
  v3 = sub_1B21619D8(&qword_1EB7A2210, qword_1B225B970);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  sub_1B21139A0(a1, a1[3]);
  sub_1B2148074();
  sub_1B22534C0();
  v8[15] = 0;
  sub_1B2252F90();
  if (!v1)
  {
    v8[14] = 1;
    sub_1B2252F90();
    v8[13] = 2;
    sub_1B2252F80();
    v8[12] = 3;
    sub_1B2252F80();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1B21BEAC4()
{
  sub_1B2253420();
  sub_1B21483F8(v1);
  return sub_1B2253470();
}

double sub_1B21BEB04@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1B2147D80(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_1B21BEBFC(uint64_t a1)
{
  v2 = v1[1];
  v6 = *v1;
  v7 = v2;
  v3 = v1[3];
  v8 = v1[2];
  v9 = v3;
  sub_1B2253420();
  sub_1B21483F8(v5);
  return sub_1B2253470();
}

double sub_1B21BEC4C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  type metadata accessor for RowDecoder();
  swift_initStackObject();
  sub_1B2147C54(a1, v7);

  v4 = v7[1];
  *a2 = v7[0];
  a2[1] = v4;
  result = *&v8;
  v6 = v9;
  a2[2] = v8;
  a2[3] = v6;
  return result;
}

uint64_t *sub_1B21BED30(uint64_t a1, uint64_t *a2)
{
  result = sub_1B2146A54(&v7);
  if (v2)
  {
    return a2;
  }

  if (!v8[5])
  {
    sub_1B2122784(v8, v6);
    sub_1B21619D8(&qword_1EB7A2200, &qword_1B225B6D8);
    swift_allocObject();

    a2 = sub_1B214786C(v5, 0, 0, v6);
    sub_1B2142D18(&v7);
    return a2;
  }

  __break(1u);
  return result;
}

void sub_1B21BF790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v109 = a3;
  v4 = v3;
  v8 = v3[5];
  v7 = v3[6];
  sub_1B21139A0(v3 + 2, v8);
  v9 = (*(v7 + 88))(a1, a2, v8, v7);
  if (v10)
  {
    sub_1B2122220();

    sub_1B21234B8(v11, v12, v13, v14, v15, v16, v17, v18, v69, v74, v79, v84, v88, v92, v95, v98, v101);
    sub_1B21A2FC0();
    sub_1B2118078();
    swift_allocError();
    v20 = static RowDecodingError.columnNotFound(_:context:)(a1, a2, &v101, v19);
    sub_1B2116188(v20, v21, v22, v23, v24, v25, v26, v27, v70, v75, v80, v85, v89, v93, v96, v99, v101, v102, v103, v104, v105);
LABEL_10:
    sub_1B218450C(v108);
    swift_willThrow();
    return;
  }

  v28 = v9;
  v29 = v4[8];
  if (!v29)
  {
    sub_1B21B9DB8();
    return;
  }

  sub_1B212CFF8();
  if (v30 != v31)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  sub_1B212CE28();
  if (!(v30 ^ v31 | v32))
  {
    goto LABEL_14;
  }

  if (sqlite3_column_type(v29, v28) == 5 || sqlite3_column_int64(v29, v28) < 0)
  {
    sub_1B21120CC();

    sub_1B21C2A60(v33, v34, v35, v36, v37, v38, v39, v40, v69, v74, v79, v84, v88, v92, v95, v98);
    sub_1B21A2FC0();
    sub_1B2118078();
    swift_allocError();
    sub_1B2115158(v41, v42, v43, v44, v45, v46, v47, v48, v71, v76, v81, v86, v90, v94, v97, v100, *&v101, *&v102, *&v103, *&v104, *&v105, *(&v105 + 1), v106, v107, v108[0], v108[1], v108[2], v108[3], v108[4]);
    v50 = sub_1B21320F0(v29, v28, v49);
    sub_1B2116654(v50, v51, v52, v53, v54, v55, v56, v57, v72, v77, v82, v87, v91);
    sub_1B21143AC();
    v61 = sub_1B2183238(v109, v58, v59, v60);
    sub_1B2144090(v61, v62, v63, v64, v65, v66, v67, v68, v73, v78, v83);
    goto LABEL_10;
  }
}

unint64_t sub_1B21BF944(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1B21BF968(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B21BF988(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      type metadata accessor for Row();
      result = sub_1B2252610();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1B21BF9E4(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1B21A1588();
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1B21BFACC(v6);
  return sub_1B2252D70();
}

uint64_t sub_1B21BFA60(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B21A15A0();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1B21BFBAC(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1B21BFACC(unint64_t *a1)
{
  v3 = a1[1];
  result = sub_1B2252FC0();
  if (result < v3)
  {
    v5 = result;
    v6 = sub_1B21BF988(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    result = sub_1B21C0888(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    return sub_1B21BFCB0(0, v3, 1, a1);
  }

  return result;
}

uint64_t sub_1B21BFBAC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B2252FC0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1B21619D8(&qword_1EB7A0EF8, &qword_1B2254610);
        v6 = sub_1B2252610();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1B21C1104(v7, v8, a1, v4);
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
    return sub_1B21BFDA8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B21BFCB0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    v6 = *a4;
    v7 = (*a4 + 8 * a3 - 8);
    v8 = result - a3;
LABEL_4:
    v9 = *(v6 + 8 * v5);
    v10 = v8;
    v15 = v7;
    while (1)
    {
      v17 = v9;
      v16 = *v7;

      v11 = sub_1B21BB15C(&v17, &v16);

      if (v4)
      {
        break;
      }

      if (v11)
      {
        if (!v6)
        {
          __break(1u);
          return result;
        }

        v12 = *v7;
        v9 = v7[1];
        *v7 = v9;
        v7[1] = v12;
        --v7;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v5;
      v7 = v15 + 1;
      --v8;
      if (v5 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_1B21BFDA8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 40 * a3 + 32);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 8);
        v11 = *(v9 + 16);
        v12 = *(v9 - 16);
        *(v9 + 8) = *(v9 - 32);
        v13 = *(v9 + 24);
        *(v9 + 24) = v12;
        *(v9 + 40) = *v9;
        *(v9 - 32) = v10;
        *(v9 - 24) = v11;
        *(v9 - 16) = v13;
        *v9 = v7;
        v9 -= 40;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 40;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1B21BFE34(uint64_t *result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v82 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *(*a3 + 88 * v6);
        v10 = 88 * v8;
        v11 = (*a3 + 88 * v8);
        v14 = *v11;
        v13 = v11 + 22;
        v12 = v14;
        v15 = v8 + 2;
        v16 = v9;
        while (1)
        {
          v17 = v15;
          if (++v6 >= v5)
          {
            break;
          }

          v18 = *v13;
          v13 += 11;
          v19 = (v9 < v12) ^ (v18 >= v16);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v6 = v5;
LABEL_9:
        if (v9 < v12)
        {
          if (v6 < v8)
          {
            goto LABEL_110;
          }

          if (v8 < v6)
          {
            if (v5 >= v17)
            {
              v5 = v17;
            }

            v20 = 88 * v5 - 88;
            v21 = v6;
            v22 = v8;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_115;
                }

                memcpy(__dst, (v23 + v10), sizeof(__dst));
                memmove((v23 + v10), (v23 + v20), 0x58uLL);
                memcpy((v23 + v20), __dst, 0x58uLL);
              }

              ++v22;
              v20 -= 88;
              v10 += 88;
            }

            while (v22 < v21);
            v5 = a3[1];
          }
        }
      }

      if (v6 < v5)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_109;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_111;
          }

          if (v8 + a4 >= v5)
          {
            v24 = v5;
          }

          else
          {
            v24 = v8 + a4;
          }

          if (v24 < v8)
          {
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
            return;
          }

          if (v6 != v24)
          {
            v78 = v7;
            v25 = *a3;
            v26 = *a3 + 88 * v6;
            v27 = v8 - v6;
            do
            {
              v28 = v27;
              v29 = v26;
              do
              {
                if (*v29 >= *(v29 - 11))
                {
                  break;
                }

                if (!v25)
                {
                  goto LABEL_113;
                }

                memcpy(__dst, v29, sizeof(__dst));
                memcpy(v29, v29 - 11, 0x58uLL);
                memcpy(v29 - 11, __dst, 0x58uLL);
                v29 -= 11;
              }

              while (!__CFADD__(v28++, 1));
              ++v6;
              v26 += 88;
              --v27;
            }

            while (v6 != v24);
            v6 = v24;
            v7 = v78;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_108;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B2161EC4(0, v7[2] + 1, 1, v7);
        v7 = v74;
      }

      v32 = v7[2];
      v31 = v7[3];
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        sub_1B2161EC4(v31 > 1, v32 + 1, 1, v7);
        v7 = v75;
      }

      v7[2] = v33;
      v34 = v7 + 4;
      v35 = &v7[2 * v32 + 4];
      *v35 = v8;
      v35[1] = v6;
      v79 = *result;
      if (!*result)
      {
        goto LABEL_116;
      }

      if (v32)
      {
        while (1)
        {
          v36 = v33 - 1;
          v37 = &v34[2 * v33 - 2];
          v38 = &v7[2 * v33];
          if (v33 >= 4)
          {
            break;
          }

          if (v33 == 3)
          {
            v39 = v7[4];
            v40 = v7[5];
            v49 = __OFSUB__(v40, v39);
            v41 = v40 - v39;
            v42 = v49;
LABEL_57:
            if (v42)
            {
              goto LABEL_98;
            }

            v54 = *v38;
            v53 = v38[1];
            v55 = __OFSUB__(v53, v54);
            v56 = v53 - v54;
            v57 = v55;
            if (v55)
            {
              goto LABEL_101;
            }

            v58 = v37[1];
            v59 = v58 - *v37;
            if (__OFSUB__(v58, *v37))
            {
              goto LABEL_104;
            }

            if (__OFADD__(v56, v59))
            {
              goto LABEL_106;
            }

            if (v56 + v59 >= v41)
            {
              if (v41 < v59)
              {
                v36 = v33 - 2;
              }

              goto LABEL_79;
            }

            goto LABEL_72;
          }

          if (v33 < 2)
          {
            goto LABEL_100;
          }

          v61 = *v38;
          v60 = v38[1];
          v49 = __OFSUB__(v60, v61);
          v56 = v60 - v61;
          v57 = v49;
LABEL_72:
          if (v57)
          {
            goto LABEL_103;
          }

          v63 = *v37;
          v62 = v37[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_105;
          }

          if (v64 < v56)
          {
            goto LABEL_86;
          }

LABEL_79:
          if (v36 - 1 >= v33)
          {
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
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
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
            goto LABEL_112;
          }

          if (!*a3)
          {
            goto LABEL_114;
          }

          v68 = v7;
          v69 = &v34[2 * v36 - 2];
          v70 = *v69;
          v71 = &v34[2 * v36];
          v72 = v71[1];
          sub_1B21C18A4((*a3 + 88 * *v69), (*a3 + 88 * *v71), (*a3 + 88 * v72), v79);
          if (v4)
          {
            goto LABEL_91;
          }

          if (v72 < v70)
          {
            goto LABEL_93;
          }

          v73 = v68[2];
          if (v36 > v73)
          {
            goto LABEL_94;
          }

          *v69 = v70;
          v69[1] = v72;
          if (v36 >= v73)
          {
            goto LABEL_95;
          }

          v33 = v73 - 1;
          memmove(&v34[2 * v36], v71 + 2, 16 * (v73 - 1 - v36));
          v7 = v68;
          v68[2] = v73 - 1;
          if (v73 <= 2)
          {
            goto LABEL_86;
          }
        }

        v43 = &v34[2 * v33];
        v44 = *(v43 - 8);
        v45 = *(v43 - 7);
        v49 = __OFSUB__(v45, v44);
        v46 = v45 - v44;
        if (v49)
        {
          goto LABEL_96;
        }

        v48 = *(v43 - 6);
        v47 = *(v43 - 5);
        v49 = __OFSUB__(v47, v48);
        v41 = v47 - v48;
        v42 = v49;
        if (v49)
        {
          goto LABEL_97;
        }

        v50 = v38[1];
        v51 = v50 - *v38;
        if (__OFSUB__(v50, *v38))
        {
          goto LABEL_99;
        }

        v49 = __OFADD__(v41, v51);
        v52 = v41 + v51;
        if (v49)
        {
          goto LABEL_102;
        }

        if (v52 >= v46)
        {
          v66 = *v37;
          v65 = v37[1];
          v49 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v49)
          {
            goto LABEL_107;
          }

          if (v41 < v67)
          {
            v36 = v33 - 2;
          }

          goto LABEL_79;
        }

        goto LABEL_57;
      }

LABEL_86:
      v5 = a3[1];
      if (v6 >= v5)
      {
        v82 = v7;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_117;
  }

  sub_1B21C1630(&v82, *result, a3, sub_1B21C18A4);
LABEL_91:
}

void sub_1B21C035C(uint64_t *result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v81 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *(*a3 + 88 * v6 + 80);
        v10 = 88 * v8;
        v11 = *a3 + 88 * v8;
        v12 = *(v11 + 80);
        v13 = (v11 + 256);
        v14 = v8 + 2;
        v15 = v9;
        while (1)
        {
          v16 = v14;
          if (++v6 >= v5)
          {
            break;
          }

          v17 = *v13;
          v13 += 11;
          v18 = (v9 < v12) ^ (v17 >= v15);
          ++v14;
          v15 = v17;
          if ((v18 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v6 = v5;
LABEL_9:
        if (v9 < v12)
        {
          if (v6 < v8)
          {
            goto LABEL_110;
          }

          if (v8 < v6)
          {
            if (v5 >= v16)
            {
              v5 = v16;
            }

            v19 = 88 * v5 - 88;
            v20 = v6;
            v21 = v8;
            do
            {
              if (v21 != --v20)
              {
                v22 = *a3;
                if (!*a3)
                {
                  goto LABEL_115;
                }

                memcpy(__dst, (v22 + v10), sizeof(__dst));
                memmove((v22 + v10), (v22 + v19), 0x58uLL);
                memcpy((v22 + v19), __dst, 0x58uLL);
              }

              ++v21;
              v19 -= 88;
              v10 += 88;
            }

            while (v21 < v20);
            v5 = a3[1];
          }
        }
      }

      if (v6 < v5)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_109;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_111;
          }

          if (v8 + a4 >= v5)
          {
            v23 = v5;
          }

          else
          {
            v23 = v8 + a4;
          }

          if (v23 < v8)
          {
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
            return;
          }

          if (v6 != v23)
          {
            v77 = v7;
            v24 = *a3;
            v25 = *a3 + 88 * v6;
            v26 = v8 - v6;
            do
            {
              v27 = v26;
              v28 = v25;
              do
              {
                if (v28[10] >= *(v28 - 1))
                {
                  break;
                }

                if (!v24)
                {
                  goto LABEL_113;
                }

                memcpy(__dst, v28, sizeof(__dst));
                memcpy(v28, v28 - 11, 0x58uLL);
                memcpy(v28 - 11, __dst, 0x58uLL);
                v28 -= 11;
              }

              while (!__CFADD__(v27++, 1));
              ++v6;
              v25 += 88;
              --v26;
            }

            while (v6 != v23);
            v6 = v23;
            v7 = v77;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_108;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B2161EC4(0, v7[2] + 1, 1, v7);
        v7 = v73;
      }

      v31 = v7[2];
      v30 = v7[3];
      v32 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        sub_1B2161EC4(v30 > 1, v31 + 1, 1, v7);
        v7 = v74;
      }

      v7[2] = v32;
      v33 = v7 + 4;
      v34 = &v7[2 * v31 + 4];
      *v34 = v8;
      v34[1] = v6;
      v78 = *result;
      if (!*result)
      {
        goto LABEL_116;
      }

      if (v31)
      {
        while (1)
        {
          v35 = v32 - 1;
          v36 = &v33[2 * v32 - 2];
          v37 = &v7[2 * v32];
          if (v32 >= 4)
          {
            break;
          }

          if (v32 == 3)
          {
            v38 = v7[4];
            v39 = v7[5];
            v48 = __OFSUB__(v39, v38);
            v40 = v39 - v38;
            v41 = v48;
LABEL_57:
            if (v41)
            {
              goto LABEL_98;
            }

            v53 = *v37;
            v52 = v37[1];
            v54 = __OFSUB__(v52, v53);
            v55 = v52 - v53;
            v56 = v54;
            if (v54)
            {
              goto LABEL_101;
            }

            v57 = v36[1];
            v58 = v57 - *v36;
            if (__OFSUB__(v57, *v36))
            {
              goto LABEL_104;
            }

            if (__OFADD__(v55, v58))
            {
              goto LABEL_106;
            }

            if (v55 + v58 >= v40)
            {
              if (v40 < v58)
              {
                v35 = v32 - 2;
              }

              goto LABEL_79;
            }

            goto LABEL_72;
          }

          if (v32 < 2)
          {
            goto LABEL_100;
          }

          v60 = *v37;
          v59 = v37[1];
          v48 = __OFSUB__(v59, v60);
          v55 = v59 - v60;
          v56 = v48;
LABEL_72:
          if (v56)
          {
            goto LABEL_103;
          }

          v62 = *v36;
          v61 = v36[1];
          v48 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v48)
          {
            goto LABEL_105;
          }

          if (v63 < v55)
          {
            goto LABEL_86;
          }

LABEL_79:
          if (v35 - 1 >= v32)
          {
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
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
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
            goto LABEL_112;
          }

          if (!*a3)
          {
            goto LABEL_114;
          }

          v67 = v7;
          v68 = &v33[2 * v35 - 2];
          v69 = *v68;
          v70 = &v33[2 * v35];
          v71 = v70[1];
          sub_1B21C1A48((*a3 + 88 * *v68), (*a3 + 88 * *v70), (*a3 + 88 * v71), v78);
          if (v4)
          {
            goto LABEL_91;
          }

          if (v71 < v69)
          {
            goto LABEL_93;
          }

          v72 = v67[2];
          if (v35 > v72)
          {
            goto LABEL_94;
          }

          *v68 = v69;
          v68[1] = v71;
          if (v35 >= v72)
          {
            goto LABEL_95;
          }

          v32 = v72 - 1;
          memmove(&v33[2 * v35], v70 + 2, 16 * (v72 - 1 - v35));
          v7 = v67;
          v67[2] = v72 - 1;
          if (v72 <= 2)
          {
            goto LABEL_86;
          }
        }

        v42 = &v33[2 * v32];
        v43 = *(v42 - 8);
        v44 = *(v42 - 7);
        v48 = __OFSUB__(v44, v43);
        v45 = v44 - v43;
        if (v48)
        {
          goto LABEL_96;
        }

        v47 = *(v42 - 6);
        v46 = *(v42 - 5);
        v48 = __OFSUB__(v46, v47);
        v40 = v46 - v47;
        v41 = v48;
        if (v48)
        {
          goto LABEL_97;
        }

        v49 = v37[1];
        v50 = v49 - *v37;
        if (__OFSUB__(v49, *v37))
        {
          goto LABEL_99;
        }

        v48 = __OFADD__(v40, v50);
        v51 = v40 + v50;
        if (v48)
        {
          goto LABEL_102;
        }

        if (v51 >= v45)
        {
          v65 = *v36;
          v64 = v36[1];
          v48 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v48)
          {
            goto LABEL_107;
          }

          if (v40 < v66)
          {
            v35 = v32 - 2;
          }

          goto LABEL_79;
        }

        goto LABEL_57;
      }

LABEL_86:
      v5 = a3[1];
      if (v6 >= v5)
      {
        v81 = v7;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_117;
  }

  sub_1B21C1630(&v81, *result, a3, sub_1B21C1A48);
LABEL_91:
}

uint64_t sub_1B21C0888(char **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v112 = a3;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_100:
    v102 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_133;
      }

      goto LABEL_102;
    }

    goto LABEL_142;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = (v7 + 1);
    if (v7 + 1 >= v6)
    {
      goto LABEL_22;
    }

    v102 = v6;
    v11 = *v112;
    *&v111[0] = *(*v112 + 8 * v10);
    *&v107 = *(v11 + 8 * v7);

    v12 = sub_1B21BB15C(v111, &v107);
    if (v5)
    {
    }

    v4 = v12;
    v96 = v8;

    v13 = 8 * v9;
    v14 = (v11 + 8 * v9 + 16);
    v15 = v9 + 2;
    v16 = v102;
    do
    {
      v17 = v15;
      if ((v10 + 1) >= v16)
      {
        v10 = v16;
        if ((v4 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_9:
        v19 = v9;
        if (v10 >= v9)
        {
          v8 = v96;
          if (v9 < v10)
          {
            if (v16 >= v17)
            {
              v20 = v17;
            }

            else
            {
              v20 = v16;
            }

            v21 = 8 * v20 - 8;
            v22 = v10;
            do
            {
              if (v19 != --v22)
              {
                v23 = *v112;
                if (!*v112)
                {
                  goto LABEL_140;
                }

                v24 = *(v23 + v13);
                *(v23 + v13) = *(v23 + v21);
                *(v23 + v21) = v24;
              }

              ++v19;
              v21 -= 8;
              v13 += 8;
            }

            while (v19 < v22);
          }

          goto LABEL_22;
        }

LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        sub_1B2252EC0();
        __break(1u);
LABEL_144:
        v107 = 0uLL;
        LOBYTE(v108) = 1;
LABEL_146:

        RowDecodingContext.init(row:key:)(v91, &v107, v111);
        sub_1B21A2FC0();
        swift_allocError();
        v93 = v92;
        v107 = v111[0];
        v108 = v111[1];
        v109 = v111[2];
        v110 = v111[3];
        sub_1B21320F0(v4, 0, &v105);
        v103 = v105;
        v104 = v106;
        sub_1B2183238(MEMORY[0x1E69E6530], &v107, &v103, v93);
        sub_1B2113A44(v103, *(&v103 + 1), v104);
        sub_1B218450C(v111);
        swift_willThrow();
LABEL_147:
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      *&v111[0] = *v14;
      *&v107 = *(v14 - 1);

      v18 = sub_1B21BB15C(v111, &v107);

      ++v14;
      ++v10;
      v15 = v17 + 1;
      v16 = v102;
    }

    while (((v4 ^ v18) & 1) == 0);
    if (v4)
    {
      goto LABEL_9;
    }

LABEL_21:
    v8 = v96;
LABEL_22:
    v25 = v112[1];
    if (v10 < v25)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_132;
      }

      if (&v10[-v9] < a4)
      {
        v26 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          __break(1u);
        }

        else
        {
          if (v26 >= v25)
          {
            v26 = v112[1];
          }

          if (v26 >= v9)
          {
            if (v10 == v26)
            {
              goto LABEL_48;
            }

            v97 = v8;
            v27 = *v112;
            v28 = (*v112 + 8 * v10 - 8);
            v95 = v9;
            v29 = v9 - v10;
            v99 = v26;
            while (1)
            {
              v100 = v28;
              v102 = v10;
              v30 = *(v27 + 8 * v10);
              v31 = v29;
              do
              {
                if (*(v30 + 9) < 1)
                {
                  goto LABEL_143;
                }

                v32 = *v28;
                v4 = *(v30 + 8);
                if (v4)
                {

                  if (sqlite3_column_type(v4, 0) == 5)
                  {
                    goto LABEL_144;
                  }

                  v33 = sqlite3_column_int64(v4, 0);
                }

                else
                {

                  v4 = v30;
                  sub_1B21B9DB8();
                  if (v5)
                  {
                    goto LABEL_147;
                  }
                }

                v34 = v33;
                if (*(v32 + 9) < 1)
                {
                  goto LABEL_143;
                }

                v4 = *(v32 + 8);
                if (v4)
                {
                  if (sqlite3_column_type(*(v32 + 8), 0) == 5)
                  {
                    v107 = 0uLL;
                    LOBYTE(v108) = 1;
                    goto LABEL_146;
                  }

                  v35 = sqlite3_column_int64(v4, 0);
                }

                else
                {
                  sub_1B21B9DB8();
                  if (v5)
                  {
                    goto LABEL_147;
                  }
                }

                v4 = v35;

                if (v34 >= v4)
                {
                  break;
                }

                if (!v27)
                {
                  goto LABEL_137;
                }

                v36 = *v28;
                v30 = v28[1];
                *v28 = v30;
                v28[1] = v36;
                --v28;
              }

              while (!__CFADD__(v31++, 1));
              v10 = v102 + 1;
              v28 = v100 + 1;
              --v29;
              if (v102 + 1 == v99)
              {
                v10 = v99;
                v9 = v95;
                v8 = v97;
                goto LABEL_48;
              }
            }
          }
        }

        __break(1u);
        goto LABEL_136;
      }
    }

LABEL_48:
    if (v10 < v9)
    {
      goto LABEL_131;
    }

    v102 = v10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B2161EC4(0, *(v8 + 2) + 1, 1, v8);
      v8 = v81;
    }

    v39 = *(v8 + 2);
    v38 = *(v8 + 3);
    v40 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      sub_1B2161EC4(v38 > 1, v39 + 1, 1, v8);
      v8 = v82;
    }

    *(v8 + 2) = v40;
    v41 = v8 + 32;
    v42 = &v8[16 * v39 + 32];
    *v42 = v9;
    *(v42 + 1) = v102;
    v101 = *a1;
    if (!*a1)
    {
      goto LABEL_141;
    }

    if (v39)
    {
      break;
    }

LABEL_97:
    v6 = v112[1];
    v7 = v102;
    if (v102 >= v6)
    {
      goto LABEL_100;
    }
  }

  while (1)
  {
    v43 = v40 - 1;
    v44 = &v41[16 * v40 - 16];
    v45 = &v8[16 * v40];
    if (v40 >= 4)
    {
      v50 = &v41[16 * v40];
      v51 = *(v50 - 8);
      v52 = *(v50 - 7);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_119;
      }

      v55 = *(v50 - 6);
      v54 = *(v50 - 5);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_120;
      }

      v57 = *(v45 + 1);
      v58 = v57 - *v45;
      if (__OFSUB__(v57, *v45))
      {
        goto LABEL_122;
      }

      v56 = __OFADD__(v48, v58);
      v59 = v48 + v58;
      if (v56)
      {
        goto LABEL_125;
      }

      if (v59 >= v53)
      {
        v73 = *v44;
        v72 = *(v44 + 1);
        v56 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v56)
        {
          goto LABEL_130;
        }

        if (v48 < v74)
        {
          v43 = v40 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

    if (v40 == 3)
    {
      v46 = *(v8 + 4);
      v47 = *(v8 + 5);
      v56 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      v49 = v56;
LABEL_68:
      if (v49)
      {
        goto LABEL_121;
      }

      v61 = *v45;
      v60 = *(v45 + 1);
      v62 = __OFSUB__(v60, v61);
      v63 = v60 - v61;
      v64 = v62;
      if (v62)
      {
        goto LABEL_124;
      }

      v65 = *(v44 + 1);
      v66 = v65 - *v44;
      if (__OFSUB__(v65, *v44))
      {
        goto LABEL_127;
      }

      if (__OFADD__(v63, v66))
      {
        goto LABEL_129;
      }

      if (v63 + v66 >= v48)
      {
        if (v48 < v66)
        {
          v43 = v40 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_83;
    }

    if (v40 < 2)
    {
      goto LABEL_123;
    }

    v68 = *v45;
    v67 = *(v45 + 1);
    v56 = __OFSUB__(v67, v68);
    v63 = v67 - v68;
    v64 = v56;
LABEL_83:
    if (v64)
    {
      goto LABEL_126;
    }

    v70 = *v44;
    v69 = *(v44 + 1);
    v56 = __OFSUB__(v69, v70);
    v71 = v69 - v70;
    if (v56)
    {
      goto LABEL_128;
    }

    if (v71 < v63)
    {
      goto LABEL_97;
    }

LABEL_90:
    if (v43 - 1 >= v40)
    {
      break;
    }

    if (!*v112)
    {
      goto LABEL_138;
    }

    v75 = &v41[16 * v43 - 16];
    v76 = *v75;
    v77 = &v41[16 * v43];
    v78 = *(v77 + 1);
    sub_1B21C1BEC((*v112 + 8 * *v75), (*v112 + 8 * *v77), (*v112 + 8 * v78), v101);
    if (v5)
    {
    }

    if (v78 < v76)
    {
      goto LABEL_113;
    }

    v4 = v8;
    v79 = *(v8 + 2);
    if (v43 > v79)
    {
      goto LABEL_114;
    }

    *v75 = v76;
    *(v75 + 1) = v78;
    if (v43 >= v79)
    {
      goto LABEL_115;
    }

    v40 = v79 - 1;
    sub_1B21A00E4(v77 + 16, v79 - 1 - v43, &v41[16 * v43]);
    *(v4 + 2) = v79 - 1;
    v80 = v79 > 2;
    v8 = v4;
    if (!v80)
    {
      goto LABEL_97;
    }
  }

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
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  v8 = sub_1B21A00CC();
LABEL_102:
  v83 = v8 + 16;
  v84 = *(v8 + 2);
  while (v84 >= 2)
  {
    if (!*v112)
    {
      goto LABEL_139;
    }

    v4 = v8;
    v85 = &v8[16 * v84];
    v86 = *v85;
    v87 = &v83[2 * v84];
    v88 = *(v87 + 1);
    sub_1B21C1BEC((*v112 + 8 * *v85), (*v112 + 8 * *v87), (*v112 + 8 * v88), v102);
    if (v5)
    {
      break;
    }

    if (v88 < v86)
    {
      goto LABEL_116;
    }

    if (v84 - 2 >= *v83)
    {
      goto LABEL_117;
    }

    *v85 = v86;
    *(v85 + 1) = v88;
    v89 = *v83 - v84;
    if (*v83 < v84)
    {
      goto LABEL_118;
    }

    v84 = *v83 - 1;
    sub_1B21A00E4(v87 + 16, v89, v87);
    *v83 = v84;
    v8 = v4;
  }
}

void sub_1B21C1104(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v94 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v89 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 40 * v9 + 32);
        v11 = *a3 + 40 * v7;
        v12 = *(v11 + 32);
        v13 = (v11 + 112);
        v14 = v7 + 2;
        v15 = v10;
        while (1)
        {
          v16 = v14;
          if (++v9 >= v6)
          {
            break;
          }

          v17 = *v13;
          v13 += 5;
          v18 = (v10 < v12) ^ (v17 >= v15);
          ++v14;
          v15 = v17;
          if ((v18 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v12)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v16)
            {
              v6 = v16;
            }

            v19 = 40 * v6 - 8;
            v20 = 40 * v7 + 32;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v20);
                v25 = (v23 + v19);
                v26 = *(v24 - 4);
                v27 = *(v24 - 3);
                v28 = *v24;
                v29 = *(v24 - 1);
                v30 = *v25;
                v31 = *(v25 - 1);
                *(v24 - 2) = *(v25 - 2);
                *(v24 - 1) = v31;
                *v24 = v30;
                *(v25 - 4) = v26;
                *(v25 - 3) = v27;
                *(v25 - 1) = v29;
                *v25 = v28;
              }

              ++v22;
              v19 -= 40;
              v20 += 40;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v32 = *a3;
            v33 = *a3 + 40 * v9 - 8;
            v34 = v7 - v9;
            do
            {
              v35 = *(v32 + 40 * v9 + 32);
              v36 = v34;
              v37 = v33;
              do
              {
                if (v35 >= *v37)
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_111;
                }

                v38 = *(v37 + 8);
                v39 = *(v37 + 16);
                v40 = *(v37 - 16);
                *(v37 + 8) = *(v37 - 32);
                v41 = *(v37 + 24);
                *(v37 + 24) = v40;
                *(v37 + 40) = *v37;
                *(v37 - 32) = v38;
                *(v37 - 24) = v39;
                *(v37 - 16) = v41;
                *v37 = v35;
                v37 -= 40;
              }

              while (!__CFADD__(v36++, 1));
              ++v9;
              v33 += 40;
              --v34;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v91 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B2161EC4(0, v8[2] + 1, 1, v8);
        v8 = v87;
      }

      v44 = v8[2];
      v43 = v8[3];
      v45 = v44 + 1;
      if (v44 >= v43 >> 1)
      {
        sub_1B2161EC4(v43 > 1, v44 + 1, 1, v8);
        v8 = v88;
      }

      v8[2] = v45;
      v46 = v8 + 4;
      v47 = &v8[2 * v44 + 4];
      *v47 = v7;
      v47[1] = v91;
      v92 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v44)
      {
        while (1)
        {
          v48 = v45 - 1;
          v49 = &v46[2 * v45 - 2];
          v50 = &v8[2 * v45];
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v51 = v8[4];
            v52 = v8[5];
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_56:
            if (v54)
            {
              goto LABEL_96;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_99;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_104;
            }

            if (v68 + v71 >= v53)
            {
              if (v53 < v71)
              {
                v48 = v45 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v45 < 2)
          {
            goto LABEL_98;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_71:
          if (v69)
          {
            goto LABEL_101;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_103;
          }

          if (v76 < v68)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v48 - 1 >= v45)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
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
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v80 = &v46[2 * v48 - 2];
          v81 = *v80;
          v82 = &v46[2 * v48];
          v83 = v82[1];
          sub_1B21C1EFC((*a3 + 40 * *v80), (*a3 + 40 * *v82), *a3 + 40 * v83, v92);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v83 < v81)
          {
            goto LABEL_91;
          }

          v84 = v8;
          v85 = v8[2];
          if (v48 > v85)
          {
            goto LABEL_92;
          }

          *v80 = v81;
          v80[1] = v83;
          if (v48 >= v85)
          {
            goto LABEL_93;
          }

          v45 = v85 - 1;
          memmove(&v46[2 * v48], v82 + 2, 16 * (v85 - 1 - v48));
          v84[2] = v85 - 1;
          v86 = v85 > 2;
          v8 = v84;
          v5 = 0;
          if (!v86)
          {
            goto LABEL_85;
          }
        }

        v55 = &v46[2 * v45];
        v56 = *(v55 - 8);
        v57 = *(v55 - 7);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_94;
        }

        v60 = *(v55 - 6);
        v59 = *(v55 - 5);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_95;
        }

        v62 = v50[1];
        v63 = v62 - *v50;
        if (__OFSUB__(v62, *v50))
        {
          goto LABEL_97;
        }

        v61 = __OFADD__(v53, v63);
        v64 = v53 + v63;
        if (v61)
        {
          goto LABEL_100;
        }

        if (v64 >= v58)
        {
          v78 = *v49;
          v77 = v49[1];
          v61 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v61)
          {
            goto LABEL_105;
          }

          if (v53 < v79)
          {
            v48 = v45 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v91;
      a4 = v89;
      if (v91 >= v6)
      {
        v94 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_1B21C176C(&v94, *result, a3);
LABEL_89:
}

uint64_t sub_1B21C1630(uint64_t *a1, uint64_t a2, void *a3, void (*a4)(uint64_t, unint64_t, int64_t, uint64_t))
{
  i = a1;
  v17 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1B21A00CC();
    v17 = result;
  }

  v13 = i;
  *i = v17;
  v7 = (v17 + 16);
  for (i = *(v17 + 16); ; *v7 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v13 = v17;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v8 = (v17 + 16 * i);
    v9 = *v8;
    v10 = &v7[2 * i];
    v11 = v10[1];
    a4(*a3 + 88 * *v8, *a3 + 88 * *v10, *a3 + 88 * v11, a2);
    if (v4)
    {
      goto LABEL_10;
    }

    if (v11 < v9)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v7)
    {
      goto LABEL_12;
    }

    *v8 = v9;
    v8[1] = v11;
    v12 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v10, v10 + 2, 16 * v12);
  }

  *v13 = v17;
  __break(1u);
  return result;
}

uint64_t sub_1B21C176C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1B21A00CC();
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1B21C1EFC((*a3 + 40 * *v4), (*a3 + 40 * *v9), *a3 + 40 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1B21C18A4(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 88;
  v9 = (a3 - a2) / 88;
  if (v8 < v9)
  {
    sub_1B2149AC8(a1, (a2 - a1) / 88, a4);
    v10 = &v4[88 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 88;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 88;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 88;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    memmove(v7, v12, 0x58uLL);
    goto LABEL_13;
  }

  sub_1B2149AC8(a2, (a3 - a2) / 88, a4);
  v10 = &v4[88 * v9];
LABEL_15:
  v14 = v6 - 88;
  for (v5 -= 88; v10 > v4 && v6 > v7; v5 -= 88)
  {
    if (*(v10 - 11) < *v14)
    {
      v13 = v5 + 88 == v6;
      v6 -= 88;
      if (!v13)
      {
        memmove(v5, v14, 0x58uLL);
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 88)
    {
      memmove(v5, v10 - 88, 0x58uLL);
    }

    v10 -= 88;
  }

LABEL_28:
  v16 = (v10 - v4) / 88;
  if (v6 != v4 || v6 >= &v4[88 * v16])
  {
    memmove(v6, v4, 88 * v16);
  }

  return 1;
}

uint64_t sub_1B21C1A48(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 88;
  v9 = (a3 - a2) / 88;
  if (v8 < v9)
  {
    sub_1B2149AC8(a1, (a2 - a1) / 88, a4);
    v10 = &v4[88 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*(v6 + 10) >= *(v4 + 10))
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 88;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 88;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 88;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    memmove(v7, v12, 0x58uLL);
    goto LABEL_13;
  }

  sub_1B2149AC8(a2, (a3 - a2) / 88, a4);
  v10 = &v4[88 * v9];
LABEL_15:
  for (v5 -= 88; v10 > v4 && v6 > v7; v5 -= 88)
  {
    if (*(v10 - 1) < *(v6 - 1))
    {
      v15 = v6 - 88;
      v13 = v5 + 88 == v6;
      v6 -= 88;
      if (!v13)
      {
        memmove(v5, v15, 0x58uLL);
        v6 = v15;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 88)
    {
      memmove(v5, v10 - 88, 0x58uLL);
    }

    v10 -= 88;
  }

LABEL_28:
  v16 = (v10 - v4) / 88;
  if (v6 != v4 || v6 >= &v4[88 * v16])
  {
    memmove(v6, v4, 88 * v16);
  }

  return 1;
}

uint64_t sub_1B21C1BEC(char *a1, char *a2, char *a3, char *a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 8;
  v10 = (a3 - a2) / 8;
  if (v9 < v10)
  {
    sub_1B224B140(a1, (a2 - a1) / 8, a4);
    v12 = a4;
    for (i = &a4[8 * v9]; ; i = v15)
    {
      if (v12 >= i || v7 >= v6)
      {
        v7 = v8;
        goto LABEL_30;
      }

      v15 = i;
      v16 = v6;
      v48 = *v7;
      v17 = v12;
      v47 = *v12;

      v18 = sub_1B21BB15C(&v48, &v47);
      if (v4)
      {

        v12 = v17;
        v39 = (v15 - v17) / 8;
        v40 = v8 < v17 || v8 >= &v17[v39];
        if (v40 || v8 != v17)
        {
          v37 = 8 * v39;
          v38 = v8;
          goto LABEL_50;
        }

        return 1;
      }

      v19 = v18;

      if ((v19 & 1) == 0)
      {
        break;
      }

      v20 = v7;
      v21 = v8 == v7++;
      v12 = v17;
      if (!v21)
      {
        goto LABEL_13;
      }

LABEL_14:
      v8 += 8;
      v6 = v16;
    }

    v20 = v17;
    v12 = v17 + 1;
    if (v8 == v17)
    {
      goto LABEL_14;
    }

LABEL_13:
    *v8 = *v20;
    goto LABEL_14;
  }

  sub_1B224B140(a2, (a3 - a2) / 8, a4);
  v12 = a4;
  i = &a4[8 * v10];
  v23 = -a4;
  v44 = v8;
  v45 = a4;
LABEL_16:
  v24 = v7 - 1;
  v25 = v6 - 8;
  v26 = &i[v23];
  v46 = v7;
  while (1)
  {
    if (i <= v12 || v7 <= v8)
    {
LABEL_30:
      v35 = (i - v12) / 8;
      v36 = v7 < v12 || v7 >= &v12[v35];
      if (v36 || v7 != v12)
      {
        v37 = 8 * v35;
        v38 = v7;
        goto LABEL_50;
      }

      return 1;
    }

    v28 = v25;
    v29 = v5;
    v30 = i;
    v31 = i - 8;
    v48 = *(i - 1);
    v32 = v24;
    v47 = *v24;

    v33 = sub_1B21BB15C(&v48, &v47);
    if (v29)
    {
      break;
    }

    v34 = v33;

    if (v34)
    {
      v6 = v28;
      v12 = v45;
      v21 = v28 + 8 == v46;
      v7 = v32;
      v8 = v44;
      i = v30;
      v5 = 0;
      if (!v21)
      {
        *v6 = *v32;
        v7 = v32;
      }

      goto LABEL_16;
    }

    v24 = v32;
    if (v30 != v28 + 8)
    {
      *v28 = *v31;
    }

    v25 = v28 - 8;
    v26 -= 8;
    i = v31;
    v8 = v44;
    v12 = v45;
    v7 = v46;
    v5 = 0;
  }

  v41 = v26 / 8;
  v12 = v45;
  v38 = v46;
  if (v46 < v45 || v46 >= &v45[8 * (v26 / 8)])
  {
    memmove(v46, v45, 8 * v41);
  }

  else if (v46 != v45)
  {
    v37 = 8 * v41;
LABEL_50:
    memmove(v38, v12, v37);
  }

  return 1;
}

uint64_t sub_1B21C1EFC(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 40;
  v9 = (a3 - a2) / 40;
  if (v8 < v9)
  {
    sub_1B2158F60(a1, (a2 - a1) / 40, a4);
    v10 = &v4[40 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*(v6 + 4) >= *(v4 + 4))
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 40;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 40;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 40;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    v15 = *(v12 + 1);
    *(v7 + 4) = *(v12 + 4);
    *v7 = v14;
    *(v7 + 1) = v15;
    goto LABEL_13;
  }

  sub_1B2158F60(a2, (a3 - a2) / 40, a4);
  v10 = &v4[40 * v9];
LABEL_15:
  for (v5 -= 40; v10 > v4 && v6 > v7; v5 -= 40)
  {
    if (*(v10 - 1) < *(v6 - 1))
    {
      v19 = v6 - 40;
      v13 = v5 + 40 == v6;
      v6 -= 40;
      if (!v13)
      {
        v20 = *v19;
        v21 = *(v19 + 1);
        *(v5 + 32) = *(v19 + 4);
        *v5 = v20;
        *(v5 + 16) = v21;
        v6 = v19;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 40))
    {
      v17 = *(v10 - 40);
      v18 = *(v10 - 24);
      *(v5 + 32) = *(v10 - 1);
      *v5 = v17;
      *(v5 + 16) = v18;
    }

    v10 -= 40;
  }

LABEL_28:
  v22 = (v10 - v4) / 40;
  if (v6 != v4 || v6 >= &v4[40 * v22])
  {
    memmove(v6, v4, 40 * v22);
  }

  return 1;
}

uint64_t sub_1B21C20A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1B21C20F0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_1B21C2130(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B21C2184(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1B21C21C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B21C2214(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1B21C2254(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B21C22AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1B21C22EC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1B21C2348(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B21C2360(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B21C23B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1B21C2410(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1B21C2440()
{
  result = qword_1ED85E818;
  if (!qword_1ED85E818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85E818);
  }

  return result;
}

void *sub_1B21C2494(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_1B2252C20();
    if (v4)
    {
      v5 = v4;
      v2 = sub_1B219E138();
      sub_1B2170E34((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t (*sub_1B21C2528(uint64_t a1, unint64_t a2, uint64_t a3))()
{
  sub_1B211D920(a1, a2, a3);
  if (v6)
  {
  }

  else
  {
    v7 = MEMORY[0x1B27427E0](v5, v4);
  }

  *v3 = v7;
  return sub_1B21C2A54;
}

uint64_t (*sub_1B21C2590(uint64_t a1, unint64_t a2, uint64_t a3))()
{
  sub_1B211D920(a1, a2, a3);
  if (v6)
  {
  }

  else
  {
    v7 = MEMORY[0x1B27427E0](v5, v4);
  }

  *v3 = v7;
  return sub_1B21C25F8;
}

unint64_t sub_1B21C2600()
{
  result = qword_1EB7A21E0;
  if (!qword_1EB7A21E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A21E0);
  }

  return result;
}

uint64_t sub_1B21C2654(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1B21C2698(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SchemaInfo.SchemaObject.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for SchemaInfo.SchemaObject.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B21C2840(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1B21C2880(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B21C28F0()
{
  result = qword_1EB7A2208;
  if (!qword_1EB7A2208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A2208);
  }

  return result;
}

unint64_t sub_1B21C2948()
{
  result = qword_1ED85E0A8;
  if (!qword_1ED85E0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85E0A8);
  }

  return result;
}

unint64_t sub_1B21C29A0()
{
  result = qword_1ED85DF08[0];
  if (!qword_1ED85DF08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED85DF08);
  }

  return result;
}

unint64_t sub_1B21C29F8()
{
  result = qword_1ED85E0A0;
  if (!qword_1ED85E0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85E0A0);
  }

  return result;
}

const char *sub_1B21C2A60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, __int128);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);

  return RowDecodingContext.init(row:key:)(a1, va, va1);
}

uint64_t sub_1B21C2A78()
{
}

void sub_1B21C2A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  sub_1B2116B10(0, v7, 0, a4, a5, a6, a7);
}

void sub_1B21C2AF4()
{
  sub_1B2111640();
  v4 = v0;
  if (*(v0 + 112) || (*(v0 + 161) & 1) == 0 || *(*(v0 + 72) + 16))
  {
    goto LABEL_15;
  }

  v120 = v2;
  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v7 = *(v5 + 16);
  v8 = (v5 + 40);
  if (v7)
  {
    while (*(v6 + 16))
    {
      v10 = *(v8 - 1);
      v9 = *v8;

      sub_1B211E590();
      if ((v3 & 1) == 0)
      {
        goto LABEL_24;
      }

      sub_1B2118084();
      memcpy(v11, v12, v13);
      sub_1B2118084();
      memcpy(v14, v15, v16);
      sub_1B2118084();
      memmove(v17, v18, v19);
      __dst[0] = v10;
      __dst[1] = v9;
      memcpy(&__dst[2], __src, 0xD2uLL);

      sub_1B2181728(v97, v95);
      sub_1B2181728(v98, v95);
      sub_1B212AC5C(__dst, &qword_1EB7A13A8, &qword_1B2257E40);
      memcpy(&v100[1], v98, 0xD2uLL);
      *&v100[0] = v10;
      *(&v100[0] + 1) = v9;
      sub_1B212AC5C(v100, &qword_1EB7A13A8, &qword_1B2257E40);
      if (LOBYTE(v100[1]) != 2 && LOBYTE(v100[1]) != 3)
      {
        goto LABEL_15;
      }

      v8 += 2;
      if (!--v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_10:
  (*(v0 + 24))(v100, v120);
  if (v1)
  {
LABEL_16:
    sub_1B2112FDC();
    return;
  }

  v20 = *(*&v100[0] + 16);
  if (v20 == 1)
  {
    memcpy(__dst, (*&v100[0] + 32), 0xB8uLL);
    memcpy(v98, (*&v100[0] + 32), 0xB8uLL);
    v21 = *(v0 + 104);
    sub_1B213A774(__dst, v97);
    sub_1B2178DE4(v21, v94);
    memcpy(v100, v98, 0xB8uLL);
    sub_1B213A5CC(v100);
    memcpy(v95, v94, 0xA3uLL);
    memcpy(__src, v94, 0xA3uLL);
    if (sub_1B2171378(__src) != 1)
    {
      v101 = *(v0 + 56);
      v102 = *(v0 + 64);
      v22 = *v0;
      v23 = *(v0 + 24);
      v93 = *(v0 + 16);
      v24 = *(v0 + 32);
      v91 = *(v4 + 40);
      v92 = v22;
      *(v90 + 15) = *(v4 + 80);
      v90[0] = *(v4 + 65);
      v25 = *(v4 + 105);
      v26 = *(v4 + 121);
      v27 = *(v4 + 137);
      *(v89 + 9) = *(v4 + 146);
      v88 = v26;
      v89[0] = v27;
      v87 = v25;
      sub_1B2136148(v4, v97);
      sub_1B214C808(&v101);
      sub_1B21A3F40();
      v29 = v28;
      v31 = v30;

      memcpy(v98, __src, 0xA3uLL);
      if (sub_1B213EA68(v98) == 1)
      {
        v52 = v92;
        v56 = v91;
        *v59 = v90[0];
        v63 = v87;
        v53 = v93;
        v54 = v23;
        v55 = v24;
        v32 = MEMORY[0x1E69E7CC0];
        v57 = MEMORY[0x1E69E7CC0];
        v58 = 0;
        *&v59[15] = *(v90 + 15);
        v60 = v29;
        v61 = v31;
        v62 = 0;
        v64 = v88;
        v65[0] = v89[0];
        *(v65 + 9) = *(v89 + 9);
        sub_1B2115660();
        v33 = swift_allocObject();
        *(v33 + 16) = &unk_1F2969118;
        sub_1B2111904();
        v34 = v23;
        v35 = swift_allocObject();
        *(v35 + 16) = sub_1B21C8708;
        *(v35 + 24) = v33;
        sub_1B2136148(&v52, v97);

        v97[0] = v92;
        *&v97[1] = v93;
        *(&v97[1] + 1) = v34;
        *(&v97[2] + 8) = v91;
        *&v97[2] = v24;
        *(&v97[3] + 1) = v32;
        LOBYTE(v97[4]) = 0;
        *(&v97[4] + 1) = v90[0];
        *&v97[5] = *(v90 + 15);
        *(&v97[5] + 1) = v29;
        *&v97[6] = v31;
        BYTE8(v97[6]) = 0;
        *(&v97[9] + 2) = *(v89 + 9);
        *(&v97[8] + 9) = v89[0];
        *(&v97[7] + 9) = v88;
        *(&v97[6] + 9) = v87;
        sub_1B2137224(v97);
      }

      else
      {
        v66 = v92;
        v70 = v91;
        *v73 = v90[0];
        v77 = v87;
        v67 = v93;
        v68 = v23;
        v69 = v24;
        v71 = MEMORY[0x1E69E7CC0];
        v72 = 0;
        *&v73[15] = *(v90 + 15);
        v74 = v29;
        v75 = v31;
        v76 = 0;
        v78 = v88;
        v79[0] = v89[0];
        *(v79 + 9) = *(v89 + 9);
        sub_1B21619D8(&qword_1EB7A0E70, &unk_1B225D330);
        v51 = v23;
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_1B22546B0;
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_1B22546B0;
        memcpy((v44 + 32), v98, 0xA3uLL);
        *&v97[0] = 0x544E554F43;
        *(&v97[0] + 1) = 0xE500000000000000;
        LOWORD(v97[1]) = 257;
        *(&v97[1] + 1) = v44;
        sub_1B2179374(v97);
        memcpy((v43 + 32), v97, 0xA3uLL);
        sub_1B2115660();
        v45 = v31;
        v46 = swift_allocObject();
        *(v46 + 16) = v43;
        v86 = v67;
        v84 = v70;
        v85 = v66;
        v83[0] = *v73;
        *(v83 + 15) = *&v73[15];
        *(v82 + 9) = *(v79 + 9);
        v81 = v78;
        v82[0] = v79[0];
        v80 = v77;
        sub_1B2111904();
        v35 = swift_allocObject();
        *(v35 + 16) = sub_1B21C8708;
        *(v35 + 24) = v46;
        v31 = v45;
        sub_1B2122B00(v95, &v52, &qword_1EB7A2240, &unk_1B225BB50);
        sub_1B2136148(&v66, &v52);

        v52 = v92;
        v53 = v93;
        v54 = v51;
        v55 = v24;
        v56 = v91;
        v57 = MEMORY[0x1E69E7CC0];
        v58 = 0;
        *v59 = v90[0];
        *&v59[15] = *(v90 + 15);
        v60 = v29;
        v61 = v45;
        v62 = 0;
        *(v65 + 9) = *(v89 + 9);
        v65[0] = v89[0];
        v64 = v88;
        v63 = v87;
        sub_1B2137224(&v52);
        v91 = v84;
        v92 = v85;
        v93 = v86;
        v90[0] = v83[0];
        *(v90 + 15) = *(v83 + 15);
        *(v89 + 9) = *(v82 + 9);
        v88 = v81;
        v89[0] = v82[0];
        v87 = v80;
      }

      v105 = v92;
      v109 = v91;
      *v112 = v90[0];
      v116 = v87;
      v106 = v93;
      v107 = sub_1B2139E50;
      v108 = v35;
      v110 = MEMORY[0x1E69E7CC0];
      v111 = 0;
      *&v112[15] = *(v90 + 15);
      v113 = v29;
      v114 = v31;
      v115 = 0;
      v117 = v88;
      *v118 = v89[0];
      *&v118[9] = *(v89 + 9);
      sub_1B219631C(v120, 1);
      sub_1B2146AD8(v52);
LABEL_25:
      v47 = v3;
      sub_1B2142D18(&v52);
      if ((v47 & 1) == 0)
      {

        sub_1B212AC5C(v95, &qword_1EB7A2240, &unk_1B225BB50);
        sub_1B2111A68();
        sub_1B2137224(v48);
        goto LABEL_16;
      }

      __break(1u);
      goto LABEL_30;
    }

    goto LABEL_19;
  }

  if (v20)
  {
    if ((*(v0 + 104) & 1) == 0)
    {
      v103 = *(v0 + 56);
      v104 = *(v0 + 64);
      v97[0] = *v0;
      *&v97[1] = *(v0 + 16);
      v95[0] = *(v0 + 40);
      __src[0] = *(v0 + 65);
      *(__src + 15) = *(v0 + 80);
      v36 = *(v0 + 120);
      *v98 = *(v0 + 104);
      *&v98[16] = v36;
      *&v98[32] = *(v0 + 136);
      *&v98[42] = *(v0 + 146);
      sub_1B2136148(v0, __dst);
      sub_1B214C808(&v103);
      sub_1B21A3F40();
      v38 = v37;
      v40 = v39;

      sub_1B2115660();
      v41 = swift_allocObject();
      *(v41 + 16) = &unk_1F29691E0;
      sub_1B2111904();
      v42 = swift_allocObject();
      *(v42 + 16) = sub_1B21C81C0;
      *(v42 + 24) = v41;

      v100[0] = v97[0];
      *&v100[1] = *&v97[1];
      *(&v100[1] + 1) = sub_1B2139E50;
      *&v100[2] = v42;
      *(&v100[2] + 8) = v95[0];
      *(&v100[3] + 1) = MEMORY[0x1E69E7CC0];
      LOBYTE(v100[4]) = 0;
      *(&v100[4] + 1) = __src[0];
      *&v100[5] = *(__src + 15);
      *(&v100[5] + 1) = v38;
      *&v100[6] = v40;
      *(&v100[9] + 2) = *&v98[42];
      *(&v100[8] + 8) = *&v98[32];
      *(&v100[7] + 8) = *&v98[16];
      *(&v100[6] + 8) = *v98;
      memcpy(v119, v100, sizeof(v119));
      sub_1B2136148(v100, __dst);
      sub_1B219631C(v120, 1);
      sub_1B2146AD8(*v98);
      v50 = v49;
      sub_1B2137224(v100);
      sub_1B2142D18(v98);
      if ((v50 & 1) == 0)
      {
        sub_1B2137224(v100);

        goto LABEL_16;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_19:

LABEL_15:
    sub_1B21C57FC();
    goto LABEL_16;
  }

LABEL_31:
  sub_1B2111608();
  sub_1B2112A88();
  sub_1B2252EC0();
  __break(1u);
}

uint64_t sub_1B21C35B0@<X0>(uint64_t (*a1)(uint64_t a1)@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(v4 + 40);
  if (v8)
  {
    v9 = *(v4 + 48);
    sub_1B2113B74();
    v10 = swift_allocObject();
    v10[2] = v8;
    v10[3] = v9;
    v10[4] = a1;
    v10[5] = a2;
    a1 = sub_1B21C81A0;
  }

  else
  {
    v10 = a2;
  }

  v11 = *(v4 + 16);
  v16 = *v4;
  v17 = v11;
  v18 = *(v4 + 32);
  memcpy(__dst, (v4 + 56), sizeof(__dst));
  sub_1B2136148(v4, v14);
  v12 = v17;
  *a3 = v16;
  *(a3 + 16) = v12;
  *(a3 + 32) = v18;
  *(a3 + 40) = a1;
  *(a3 + 48) = v10;
  memcpy((a3 + 56), __dst, 0x6AuLL);
}

__n128 sub_1B21C36A4@<Q0>(uint64_t a1@<X8>)
{
  v22 = *(v1 + 144);
  v21 = *(v1 + 160);
  v6 = *(v1 + 161);
  v19 = *(v1 + 112);
  v20 = *(v1 + 128);
  if (v6)
  {
    v18 = *(v1 + 72);
    sub_1B2122CA4();
    v24 = *(v1 + 56);
    v25 = *(v1 + 64);
    sub_1B2136148(v1, v23);
    sub_1B214C808(&v24);
    sub_1B21A3F40();
    v8 = v7;
    v10 = v9;

    v11 = 0;
    v12 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v8 = *(v1 + 88);
    v10 = *(v1 + 96);
    v18 = *(v1 + 72);
    v11 = *(v1 + 64);
    v12 = *(v1 + 56);
    sub_1B2122CA4();
    sub_1B2136148(v1, v23);
  }

  v13 = *(v1 + 104);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v15;
  *(a1 + 40) = v17;
  *(a1 + 48) = v16;
  *(a1 + 56) = v12;
  *(a1 + 64) = v11;
  *(a1 + 72) = v18;
  *(a1 + 88) = v8;
  *(a1 + 96) = v10;
  *(a1 + 104) = v13;
  *(a1 + 112) = v19;
  *(a1 + 128) = v20;
  result = v22;
  *(a1 + 144) = v22;
  *(a1 + 160) = v21;
  *(a1 + 161) = v6;
  return result;
}

void sub_1B21C37F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B2181728(a1, v89);
  sub_1B21C77F4();
  sub_1B213CB94(v89, v6, v7, v8, v9, v10, v11, v12, v30, v33, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88);
  if (sub_1B2181784(v89) == 1)
  {
    sub_1B213CB94(&v63, v13, v14, v15, v16, v17, v18, v19, v31, v34, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88);
    sub_1B212AC5C(&v63, &qword_1EB7A13B0, &unk_1B2257E48);

    sub_1B21449A8();
    v20 = *(*v3 + 16);
    sub_1B2144A08();
    v21 = *v3;
    *(v21 + 16) = v20 + 1;
    v22 = v21 + 16 * v20;
    *(v22 + 32) = a2;
    *(v22 + 40) = a3;
    *v3 = v21;
  }

  else
  {
    sub_1B213CB94(&v36, v13, v14, v15, v16, v17, v18, v19, v31, v34, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88);
    sub_1B213CB94(&v63, v23, v24, v25, v26, v27, v28, v29, v32, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88);
    if (sub_1B2181784(&v63) != 1)
    {
      sub_1B212AC5C(&v36, &qword_1EB7A13B0, &unk_1B2257E48);
      sub_1B2111608();
      sub_1B2112A88();
      sub_1B2252EC0();
      __break(1u);
    }
  }
}

uint64_t sub_1B21C3948(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  for (i = (a3 + 40); ; i += 2)
  {
    if (v6 == v5)
    {
      return 0;
    }

    v8 = *i;
    v11[0] = *(i - 1);
    v11[1] = v8;

    v9 = a1(v11);

    if (v3)
    {
      return result;
    }

    if (v9)
    {
      break;
    }

    ++v5;
  }

  return v5;
}

unint64_t sub_1B21C3A04(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  result = sub_1B2116B08();
  v6 = result;
  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1B27427E0](v7, a3);
      goto LABEL_6;
    }

    if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v8 = *(a3 + 8 * v7 + 32);

LABEL_6:
    v12 = v8;
    v9 = a1(&v12);

    if (v3)
    {
      return result;
    }

    if (v9)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

void *sub_1B21C3B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B2115660();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v9 = *(v2 + 24);
  v11 = *v2;
  v12 = *(v2 + 16);
  memcpy(__dst, (v2 + 40), sizeof(__dst));
  sub_1B2111904();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1B214D320;
  *(v6 + 24) = v5;

  sub_1B2136148(v2, v8);
  sub_1B212AC5C(&v9, &qword_1EB7A2230, &unk_1B225BB20);
  *a2 = v11;
  *(a2 + 16) = v12;
  *(a2 + 24) = sub_1B2139E50;
  *(a2 + 32) = v6;
  return memcpy((a2 + 40), __dst, 0x7AuLL);
}

uint64_t sub_1B21C3C14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1B213A1C8();
    v3 = v11;
    v5 = (a2 + 32);
    do
    {
      memcpy(__dst, v5, 0xA3uLL);
      sub_1B2127DC0(__dst, __src);
      v11 = v3;
      v6 = *(v3 + 16);
      if (v6 >= *(v3 + 24) >> 1)
      {
        sub_1B213A1C8();
        v3 = v11;
      }

      memcpy(v8, __dst, 0xA3uLL);
      sub_1B214D464(v8);
      memcpy(__src, v8, sizeof(__src));
      *(v3 + 16) = v6 + 1;
      memcpy((v3 + 184 * v6 + 32), __src, 0xB8uLL);
      v5 += 168;
      --v2;
    }

    while (v2);
  }

  return v3;
}

void sub_1B21C3D34()
{
  sub_1B2111640();
  v1 = v0;
  v3 = v2;
  sub_1B2118084();
  memcpy(v4, v5, v6);
  v7 = *(v1 + 16);
  v29[0] = *v1;
  v29[1] = v7;
  v29[2] = *(v1 + 32);
  v8 = v31;
  v17 = v32;
  v16 = v33;
  memcpy(__dst, (v1 + 48), 0x58uLL);
  __dst[11] = v31;
  __dst[12] = v32;
  LOBYTE(__dst[13]) = v33;
  *(&__dst[13] + 1) = *(v1 + 153);
  *(&__dst[15] + 1) = *(v1 + 169);
  *(&__dst[17] + 1) = *(v1 + 185);
  *(&__dst[18] + 2) = *(v1 + 194);
  sub_1B2115660();
  v9 = swift_allocObject();
  *(v9 + 16) = MEMORY[0x1E69E7CC0];
  memcpy(__src, &__dst[5], sizeof(__src));
  sub_1B2111904();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1B214D320;
  *(v10 + 24) = v9;
  sub_1B2181728(v30, v18);
  sub_1B2136148(__dst, v18);

  v35[0] = *(v1 + 48);
  *&v35[1] = *(v1 + 64);
  *(&v35[1] + 1) = sub_1B2139E50;
  *&v35[2] = v10;
  memcpy(&v35[2] + 8, __src, 0x7AuLL);
  memcpy(&v29[3], v35, 0x58uLL);
  v26 = *(&v35[6] + 9);
  v27 = *(&v35[7] + 9);
  v28[0] = *(&v35[8] + 9);
  *(v28 + 9) = *(&v35[9] + 2);
  sub_1B2136148(v35, v18);
  sub_1B21A44DC();
  v12 = v11;
  v14 = v13;
  sub_1B2137224(v35);

  memcpy(v18, (v1 + 48), sizeof(v18));
  v19 = v8;
  v20 = v17;
  v21 = v16;
  v22 = *(v1 + 153);
  v23 = *(v1 + 169);
  v24[0] = *(v1 + 185);
  *(v24 + 9) = *(v1 + 194);
  sub_1B2137224(v18);
  memcpy(v3, v29, 0x88uLL);
  *(v3 + 136) = v12;
  *(v3 + 144) = v14;
  *(v3 + 152) = 0;
  v15 = v27;
  *(v3 + 153) = v26;
  *(v3 + 169) = v15;
  *(v3 + 185) = v28[0];
  *(v3 + 194) = *(v28 + 9);
  sub_1B2112FDC();
}

void sub_1B21C3FEC()
{
  sub_1B2111F14();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  memcpy(v100, v0, 0xD2uLL);
  if (LOBYTE(v100[0]) == 2)
  {
    sub_1B21619D8(&qword_1EB7A0ED0, &unk_1B225BAF0);
    v6 = swift_allocObject();
    v71 = xmmword_1B22546B0;
    *(v6 + 16) = xmmword_1B22546B0;
    v7 = v5;
    v8 = v100[1];
    v9 = v100[2];
    v10 = v100[3];
    v11 = v100[4];
    v12 = v100[5];
    memcpy(&v72[7], v1 + 48, 0xA2uLL);
    sub_1B21619D8(&qword_1EB7A0F50, &qword_1B2254C10);
    v13 = swift_allocObject();
    *(v13 + 16) = v71;
    *(v13 + 32) = v7;
    *(v13 + 40) = v3;
    *(v13 + 48) = 3;
    *(v13 + 56) = v8;
    *(v13 + 64) = v9;
    *(v13 + 72) = v10;
    *(v13 + 80) = v11;
    *(v13 + 88) = v12;
    memcpy((v13 + 89), v72, 0xA9uLL);
    *(v13 + 258) = 1;
    *(v6 + 32) = v13;
    v14 = sub_1B2115FBC();
    sub_1B2181640(v14, v15, v10, v11, v12);
    sub_1B2136148(&v100[6], v92);

LABEL_20:
    sub_1B2111588();
    return;
  }

  sub_1B2137278();
  v17 = v16;
  v18 = *(v16 + 16);
  if (!v18)
  {

    goto LABEL_20;
  }

  v67 = v5;
  v68 = v3;
  v99 = MEMORY[0x1E69E7CC0];
  sub_1B216EF90(0, v18, 0);
  v19 = 0;
  v20 = v99;
  v64 = v18 - 1;
  v65 = 0;
  v63 = xmmword_1B22546B0;
  v66 = v17;
  while (v19 < *(v17 + 16))
  {
    v21 = *(v17 + 8 * v19 + 32);
    if (!*(v21 + 16))
    {
      goto LABEL_22;
    }

    v70 = v19;
    *&v71 = v20;
    memcpy(v92, (v21 + 32), 0xE3uLL);
    v22 = BYTE2(v92[28]);
    v23 = v92[0];
    v24 = v92[1];
    v25 = LOBYTE(v92[2]);
    v69 = v21;

    sub_1B21819B8(v92, v91);
    sub_1B2209B4C((v22 & 1) == 0, v23, v24, v25, v26, v27, v28, v29);
    v31 = v30;
    v33 = v32;
    sub_1B2181A14(v92);
    memcpy(v90, v100, sizeof(v90));
    v34 = v100[17];
    v35 = v100[18];
    v87 = *&v100[19];
    v88 = *&v100[21];
    v89[0] = *&v100[23];
    *(v89 + 10) = *(&v100[24] + 2);
    memcpy(v93, &v100[6], sizeof(v93));
    v94 = v100[17];
    v95 = v100[18];
    v96 = *&v100[19];
    v97 = *&v100[21];
    v98[0] = *&v100[23];
    *(v98 + 10) = *(&v100[24] + 2);
    memcpy(v86, &v100[6], sizeof(v86));
    v83 = *&v100[19];
    v84 = *&v100[21];
    v85[0] = *&v100[23];
    *(v85 + 10) = *(&v100[24] + 2);
    v82[0] = v31;
    v82[1] = v33;
    sub_1B2181728(v100, v91);
    sub_1B2136148(v93, v91);
    v36 = sub_1B211E590();
    if (v37)
    {
      v38 = v36;
      v62[5] = v33;
      swift_isUniquelyReferenced_nonNull_native();
      v75[0] = v35;
      sub_1B21619D8(&qword_1EB7A13C0, &qword_1B2257E60);
      sub_1B2252E70();
      v39 = v75[0];

      memcpy(v91, (*(v39 + 56) + 216 * v38), 0xD2uLL);
      v40 = sub_1B2252E90();
      MEMORY[0x1EEE9AC00](v40);
      v62[2] = v82;
      v41 = v65;
      v42 = sub_1B21C3948(sub_1B2158EB4, v62, v34);
      if (v43)
      {
        goto LABEL_24;
      }

      v44 = v42;
      v45 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B2195620();
        v34 = v61;
      }

      v46 = *(v34 + 16);
      if (v44 >= v46)
      {
        goto LABEL_23;
      }

      v65 = v41;
      v47 = v46 - 1;
      sub_1B215A618((v34 + 16 * v44 + 48), v46 - 1 - v44, (v34 + 16 * v44 + 32));
      *(v34 + 16) = v47;

      sub_1B218179C(v91);
    }

    else
    {

      v45 = v34;
      v39 = v35;
    }

    memcpy(v76, &v90[48], sizeof(v76));
    v77 = v45;
    v78 = v35;
    v79 = v87;
    v80 = v88;
    v81[0] = v89[0];
    *(v81 + 10) = *(v89 + 10);
    sub_1B2137224(v76);
    memcpy(&v90[48], v86, 0x58uLL);
    v87 = v83;
    v88 = v84;
    v89[0] = v85[0];
    *(v89 + 10) = *(v85 + 10);
    memcpy(v91, v90, 0x88uLL);
    *&v91[19] = v83;
    v91[17] = v34;
    v91[18] = v39;
    *&v91[21] = v84;
    *&v91[23] = v85[0];
    *(&v91[24] + 2) = *(v85 + 10);
    v48 = LOBYTE(v91[0]) > 1u;
    v49 = v91[1];
    v50 = v91[2];
    v51 = v91[3];
    v52 = v91[4];
    v53 = v91[5];
    memcpy(&v74[7], &v91[6], 0xA2uLL);
    memcpy(v75, v74, 0xA9uLL);
    sub_1B21619D8(&qword_1EB7A0F50, &qword_1B2254C10);
    v54 = swift_allocObject();
    *(v54 + 16) = v63;
    v55 = v68;
    *(v54 + 32) = v67;
    *(v54 + 40) = v55;
    *(v54 + 48) = 3;
    *(v54 + 56) = v49;
    *(v54 + 64) = v50;
    *(v54 + 72) = v51;
    *(v54 + 80) = v52;
    *(v54 + 88) = v53;
    memcpy((v54 + 89), v75, 0xA9uLL);
    *(v54 + 258) = v48;
    v73 = v54;

    v56 = v69;

    sub_1B2181640(v49, v50, v51, v52, v53);
    sub_1B2136148(&v91[6], v74);

    sub_1B216CEF8(v56);
    sub_1B218179C(v91);

    v57 = v73;
    v20 = v71;
    v99 = v71;
    v59 = *(v71 + 16);
    v58 = *(v71 + 24);
    if (v59 >= v58 >> 1)
    {
      v60 = sub_1B211156C(v58);
      sub_1B216EF90(v60, v59 + 1, 1);
      v20 = v99;
    }

    *(v20 + 16) = v59 + 1;
    *(v20 + 8 * v59 + 32) = v57;
    if (v64 == v70)
    {

      goto LABEL_20;
    }

    v19 = v70 + 1;
    v17 = v66;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

void sub_1B21C4698()
{
  sub_1B2111F14();
  v2 = v1;
  v4 = v3;
  v6 = *v5;
  if (v1 >= 2u)
  {
    if (v1 == 2)
    {
      v0 = 0;
    }

    else
    {
      v7 = *(v6 + 16);
      if (!v7)
      {
        goto LABEL_40;
      }

      v0 = *(v6 + 232 * v7 + 26) ^ 1u;
    }
  }

  else
  {
    v0 = 1;
  }

  v8 = *(v6 + 16);
  if (!v8)
  {
    __break(1u);
    goto LABEL_34;
  }

  v9 = v6 + 32 + 232 * v8;
  v10 = *(v9 - 232);
  v11 = *(v9 - 224);
  v12 = *(v9 - 216);
  sub_1B21C8064(v10, v11, *(v9 - 216));
  sub_1B2209B4C(v0 & 1, v10, v11, v12, v13, v14, v15, v16);
  v18 = v17;
  v0 = v19;
  sub_1B21C807C(v10, v11, v12);
  v20 = *(v6 + 16);
  if (!v20)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v55 = v18;
  v21 = v6 + 32 + 232 * v20;
  v22 = *(v21 - 208);
  v23 = *(v21 - 200);
  v24 = *(v21 - 192);
  v25 = *(v21 - 184);
  v26 = *(v21 - 176);
  memcpy(__dst, (v21 - 168), 0xA2uLL);
  if (v2 != 2)
  {
    if (LOBYTE(__dst[13]) == 1 || __dst[14] | __dst[16])
    {
      sub_1B211481C();
      sub_1B2112A88();
    }

    else
    {
      if ((__dst[20] & 0x100) != 0)
      {
        goto LABEL_13;
      }

      sub_1B2111608();
      sub_1B2112A88();
    }

    sub_1B212E2BC();
    sub_1B2252EC0();
    __break(1u);
    return;
  }

LABEL_13:
  memcpy(&__src[7], __dst, 0xA2uLL);
  LOBYTE(v61[0]) = v2;
  v61[1] = v22;
  v61[2] = v23;
  v61[3] = v24;
  v61[4] = v25;
  LOBYTE(v61[5]) = v26;
  memcpy(&v61[5] + 1, __src, 0xA9uLL);
  sub_1B2181640(v22, v23, v24, v25, v26);
  sub_1B2136148(__dst, v59);

  sub_1B2228DB4(1, v6);
  if (v27 == v28 >> 1)
  {
    memcpy(v59, v61, 0xD2uLL);
    sub_1B21C4D40(v56, v59, v55, v0);

    swift_unknownObjectRelease();
    sub_1B218179C(v61);
    v29 = v56[160];
    v30 = v56[161];
    v32 = *&v56[128];
    v31 = *&v56[144];
    v33 = *&v56[112];
    v34 = v56[104];
    v36 = *&v56[72];
    v35 = *&v56[88];
    v37 = *&v56[56];
    v38 = v56[64];
    v40 = *&v56[24];
    v39 = *&v56[40];
    v41 = *v56;
    v42 = *&v56[8];
    v43 = *&v56[16];
    goto LABEL_32;
  }

  v44 = v27;
  if (v28)
  {
    v47 = v28 >> 1;
    sub_1B2253280();
    swift_unknownObjectRetain_n();
    v48 = swift_dynamicCastClass();
    if (!v48)
    {
      swift_unknownObjectRelease();
      v48 = MEMORY[0x1E69E7CC0];
    }

    v6 = *(v48 + 16);

    if (__OFSUB__(v47, v44))
    {
      goto LABEL_41;
    }

    if (v6 != v47 - v44)
    {
      goto LABEL_42;
    }

    v46 = swift_dynamicCastClass();
    if (!v46)
    {
      swift_unknownObjectRelease();
      v46 = MEMORY[0x1E69E7CC0];
    }

    goto LABEL_23;
  }

  while (1)
  {
    sub_1B216E78C();
    v46 = v45;
LABEL_23:
    v49 = *(v46 + 16);
    if (v49)
    {
      v6 = MEMORY[0x1E69E7CC0];
      memcpy(v58, (v46 + 32 + 232 * v49 - 168), sizeof(v58));
      sub_1B2115660();
      v50 = swift_allocObject();
      *(v50 + 16) = v6;
      *v64 = *v58;
      *&v64[16] = *&v58[16];
      memcpy(v65, &v58[40], 0x7AuLL);
      sub_1B2111904();
      v51 = swift_allocObject();
      *(v51 + 16) = sub_1B214D370;
      *(v51 + 24) = v50;
      sub_1B2136148(v58, v56);

      v70 = *v64;
      v71 = *&v64[16];
      v72 = sub_1B2139E50;
      v73 = v51;
      memcpy(v74, v65, sizeof(v74));
      memcpy(v56, v61, 0xD2uLL);
      sub_1B21C4D40(v64, v56, v55, v0);
      sub_1B2137224(&v70);

      v52 = *(v46 + 16);
      if (v52)
      {
        v53 = v46 + 32 + 232 * v52;
        memcpy(v59, (v53 - 232), 0xE3uLL);
        v0 = v57;
        memcpy(v57, (v53 - 232), 0xE3uLL);
        memcpy(v60, (v53 - 168), 0xA2uLL);
        sub_1B21819B8(v59, v56);
        sub_1B2137224(v60);
        memcpy(&v57[64], v64, 0xA2uLL);
        v6 = *(v46 + 16);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_26;
        }

        goto LABEL_37;
      }
    }

    else
    {
LABEL_35:
      __break(1u);
    }

    __break(1u);
LABEL_37:
    sub_1B21956E4();
    v46 = v54;
LABEL_26:
    if (!v6)
    {
      __break(1u);
      goto LABEL_39;
    }

    if (v6 <= *(v46 + 16))
    {
      break;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    swift_unknownObjectRelease();
  }

  memcpy(v56, (v46 + 232 * v6 - 200), sizeof(v56));
  memcpy((v46 + 232 * v6 - 200), v57, 0xE3uLL);
  sub_1B2181A14(v56);

  sub_1B21C4698();
  sub_1B218179C(v61);
  swift_unknownObjectRelease();

  if (v2 == 2)
  {
    v32 = v66;
    v31 = v67;
    v29 = v68;
    v30 = v69;
  }

  else
  {
    v31 = v67;
    v29 = v68;
    v30 = v69;
    v32 = v66;
  }

  v33 = *&v65[112];
  v34 = v65[104];
  v35 = *&v65[88];
  v36 = *&v65[72];
  v38 = v65[64];
  v39 = *&v65[40];
  v40 = *&v65[24];
  v41 = *v65;
  v42 = *&v65[8];
  v37 = *&v65[56];
  v43 = *&v65[16];
LABEL_32:
  v59[0] = v30;
  *v4 = v41;
  *(v4 + 8) = v42;
  *(v4 + 16) = v43;
  *(v4 + 24) = v40;
  *(v4 + 40) = v39;
  *(v4 + 56) = v37;
  *(v4 + 64) = v38;
  *(v4 + 72) = v36;
  *(v4 + 88) = v35;
  *(v4 + 104) = v34;
  *(v4 + 112) = v33;
  *(v4 + 128) = v32;
  *(v4 + 144) = v31;
  *(v4 + 160) = v29;
  *(v4 + 161) = v30;
  sub_1B2111588();
}

uint64_t *sub_1B21C4D40@<X0>(uint64_t *__return_ptr a1@<X8>, void *__src@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  memcpy(v28, __src, 0xD2uLL);
  memcpy(v26, v4, 0xA2uLL);
  v25[0] = a3;
  v25[1] = a4;
  sub_1B2136148(v4, v29);
  sub_1B21C7D54(v24);
  memcpy(v29, v24, 0xD2uLL);
  if (sub_1B2181784(v29) == 1)
  {
    memcpy(v27, v24, 0xD2uLL);
    sub_1B212AC5C(v27, &qword_1EB7A13B0, &unk_1B2257E48);
    sub_1B21C37F8(v28, a3, a4);
    return memcpy(a1, v26, 0xA2uLL);
  }

  v8 = v4[11];
  memcpy(v22, v24, 0xD2uLL);
  v9 = memcpy(v23, v24, sizeof(v23));
  MEMORY[0x1EEE9AC00](v9);
  v18 = v25;
  v10 = sub_1B21C3948(sub_1B2158ED4, &v17, v8);
  if (v11)
  {
    goto LABEL_11;
  }

  v12 = v10;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B2195620();
    v8 = v16;
  }

  v13 = *(v8 + 16);
  if (v12 >= v13)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = v13 - 1;
  sub_1B215A618((v8 + 16 * v12 + 48), v13 - 1 - v12, (v8 + 16 * v12 + 32));
  *(v8 + 16) = v14;

  v26[11] = v8;
  sub_1B21C5070();
  memcpy(v21, v20, 0xD2uLL);
  if (sub_1B2181784(v21) != 1)
  {
    memcpy(v27, v21, 0xD2uLL);
    sub_1B21C37F8(v27, a3, a4);
    sub_1B212AC5C(v22, &qword_1EB7A13B0, &unk_1B2257E48);
    sub_1B212AC5C(v20, &qword_1EB7A13B0, &unk_1B2257E48);
    return memcpy(a1, v26, 0xA2uLL);
  }

LABEL_12:
  v27[0] = 0;
  v27[1] = 0xE000000000000000;
  sub_1B2252CD0();
  MEMORY[0x1B2741EB0](0xD000000000000015, 0x80000001B226E700);
  MEMORY[0x1B2741EB0](a3, a4);
  MEMORY[0x1B2741EB0](0xD00000000000004FLL, 0x80000001B226E720);
  v19 = 0;
  v18 = 501;
  result = sub_1B2252EC0();
  __break(1u);
  return result;
}

void sub_1B21C5070()
{
  sub_1B2111F14();
  v49 = v1;
  v48 = *v2;
  v3 = *(v2 + 2);
  v50 = *(v2 + 1);
  v4 = *(v2 + 3);
  v5 = *(v2 + 4);
  v6 = v2[40];
  memcpy(__dst, v2 + 48, sizeof(__dst));
  v47 = *v0;
  v8 = *(v0 + 8);
  v7 = *(v0 + 16);
  v9 = *(v0 + 24);
  v10 = *(v0 + 32);
  v11 = *(v0 + 40);
  memcpy(v61, (v0 + 48), sizeof(v61));
  *v53 = v8;
  *&v53[8] = v7;
  *&v53[16] = v9;
  *&v53[24] = v10;
  v53[32] = v11;
  __src[0] = v50;
  __src[1] = v3;
  __src[2] = v4;
  __src[3] = v5;
  LOBYTE(__src[4]) = v6;
  sub_1B2123378();
  sub_1B2181640(v12, v13, v14, v15, v16);
  v17 = sub_1B21440A8();
  sub_1B2181640(v17, v18, v19, v20, v21);
  sub_1B21C7460(__src, v55);
  sub_1B2123378();
  sub_1B21816DC(v22, v23, v24, v25, v26);
  v27 = sub_1B21440A8();
  sub_1B21816DC(v27, v28, v29, v30, v31);
  v32 = v55[32];
  if (v55[32] > 0xFDu)
  {
    sub_1B21C805C(v53);
    v33 = v49;
LABEL_14:
    memcpy(v33, v53, 0xD2uLL);
    sub_1B2111588();
    return;
  }

  v34 = *v55;
  v35 = *&v55[8];
  v36 = *&v55[16];
  v37 = *&v55[24];
  sub_1B21C607C();
  memcpy(v55, __src, sizeof(v55));
  if (sub_1B2117000(v55) == 1)
  {
    v38 = sub_1B212D004();
    sub_1B21C8094(v38, v39, v36, v37, v32);
LABEL_8:
    sub_1B21C805C(v53);
LABEL_13:
    v33 = v49;
    goto LABEL_14;
  }

  memcpy(v59, v55, sizeof(v59));
  v40 = v55[104];
  v58[0] = *&v55[105];
  *(v58 + 3) = *&v55[108];
  v46 = *&v55[128];
  v51 = *&v55[112];
  v56 = *&v55[144];
  v57 = v55[160];
  v41 = v55[161];
  v42 = sub_1B21C7618(v48, v47);
  if (v42 == 2)
  {
LABEL_12:
    memcpy(&v52[7], v59, 0x68uLL);
    *&v53[192] = v56;
    v53[208] = v57;
    v53[0] = v42;
    *&v53[8] = v34;
    *&v53[16] = v35;
    *&v53[24] = v36;
    *&v53[32] = v37;
    v53[40] = v32;
    memcpy(&v53[41], v52, 0x6FuLL);
    v53[152] = v40;
    *&v53[153] = v58[0];
    *&v53[156] = *(v58 + 3);
    *&v53[176] = v46;
    *&v53[160] = v51;
    v53[209] = v41;
    nullsub_1();
    goto LABEL_13;
  }

  if (v42 == 4)
  {
    v43 = sub_1B212D004();
    sub_1B21C8094(v43, v44, v36, v37, v32);
    sub_1B212AC5C(__src, &qword_1EB7A2218, &qword_1B225BB00);
    goto LABEL_8;
  }

  if ((v40 & 1) != 0 || (sub_1B2121FD4(v51, v46), (v45 & 1) == 0))
  {
    sub_1B211481C();
    sub_1B2112A88();
  }

  else
  {
    if (v41)
    {
      goto LABEL_12;
    }

    sub_1B2111608();
    sub_1B2112A88();
  }

  sub_1B212E2BC();
  sub_1B2252EC0();
  __break(1u);
}

double sub_1B21C53BC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v9 = *(v3 + 88);
  v10 = *(v5 + 96);
  memcpy(__dst, v5, sizeof(__dst));
  v11 = *(v5 + 120);
  v25 = *(v5 + 104);
  v26 = v11;
  v27[0] = *(v5 + 136);
  *(v27 + 10) = *(v5 + 146);
  v18[2] = a1;
  v18[3] = a2;
  sub_1B2136148(v5, v19);
  sub_1B21A4EA0(v9, v10, sub_1B21C8148, v18);
  if (v4)
  {
    memcpy(v19, __dst, sizeof(v19));
    v20 = v9;
    v21 = v10;
    v22 = v25;
    v23 = v26;
    v24[0] = v27[0];
    *(v24 + 10) = *(v27 + 10);
    sub_1B2137224(v19);
  }

  else
  {
    v15 = v12;
    v16 = v13;

    memcpy(a3, __dst, 0x58uLL);
    *(a3 + 88) = v15;
    *(a3 + 96) = v16;
    v17 = v26;
    *(a3 + 104) = v25;
    *(a3 + 120) = v17;
    *(a3 + 136) = v27[0];
    result = *(v27 + 10);
    *(a3 + 146) = *(v27 + 10);
  }

  return result;
}

void sub_1B21C55C8()
{
  sub_1B2111640();
  v7 = *v4;
  v8 = *(*v4 + 16);
  if (!v8)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = v5;
  v1 = v4;
  v18 = v6;
  v0 = v7 + 32;
  memcpy(__dst, (v7 + 32 + 232 * v8 - 168), sizeof(__dst));
  sub_1B2115660();
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  v24 = *__dst;
  v25 = *&__dst[16];
  memcpy(v23, &__dst[40], sizeof(v23));
  sub_1B2111904();
  v2 = swift_allocObject();
  *(v2 + 16) = v9;
  *(v2 + 24) = v3;
  sub_1B2136148(__dst, v26);

  v10 = *(v7 + 16);
  if (!v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = v0 + 232 * v10;
  memcpy(v26, (v11 - 232), 0xE3uLL);
  v12 = *(v11 - 216);
  *v21 = *(v11 - 232);
  *&v21[16] = v12;
  v13 = *(v11 - 184);
  *&v21[32] = *(v11 - 200);
  *&v21[48] = v13;
  memcpy(__src, (v11 - 128), sizeof(__src));
  LOBYTE(v3) = BYTE2(v26[28]);
  v14 = *(v11 - 152);
  v27 = *(v11 - 168);
  v28 = v14;
  v29 = *&v26[11];
  memcpy(v30, __src, sizeof(v30));
  sub_1B21819B8(v26, v19);
  sub_1B2137224(&v27);
  *&v21[64] = v24;
  *&v21[80] = v25;
  v0 = *(v7 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v7;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v0)
    {
      goto LABEL_5;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_9:
  sub_1B21956E4();
  v7 = v17;
  *v1 = v17;
  if (!v0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (v0 <= *(v7 + 16))
  {
    v16 = v7 + 232 * v0;
    memcpy(v19, (v16 - 200), 0xE3uLL);
    memcpy((v16 - 200), v21, 0x58uLL);
    *(v16 - 112) = v18;
    *(v16 - 104) = v2;
    memcpy((v16 - 96), v23, 0x7AuLL);
    *(v16 + 26) = v3;
    sub_1B2181A14(v19);
    *v1 = v7;
    sub_1B2112FDC();
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t *sub_1B21C57FC()
{
  v2 = MEMORY[0x1E69E7CC0];
  sub_1B2127C14();
  v27 = v3;
  v4._object = 0x80000001B226E860;
  v4._countAndFlagsBits = 0xD000000000000016;
  SQLInterpolation.appendLiteral(_:)(v4);
  v32 = *(v0 + 56);
  v33 = *(v0 + 64);
  sub_1B2136148(v0, v25);
  sub_1B214C808(&v32);
  v5 = *(v0 + 16);
  v21 = *v0;
  v22 = v5;
  v23 = *(v0 + 32);
  v24 = *(v0 + 48);
  *v26 = *(v0 + 65);
  *&v26[15] = *(v0 + 80);
  *(&v25[2] + 10) = *(v0 + 146);
  v6 = *(v0 + 136);
  v7 = *(v0 + 104);
  v25[1] = *(v0 + 120);
  v25[2] = v6;
  v25[0] = v7;
  sub_1B21A3F40();
  v9 = v8;
  v11 = v10;

  __src[0] = v21;
  __src[1] = v22;
  __src[2] = v23;
  *&__src[3] = v24;
  *(&__src[3] + 1) = v2;
  LOBYTE(__src[4]) = 0;
  *(&__src[4] + 1) = *v26;
  *&__src[5] = *&v26[15];
  *(&__src[5] + 1) = v9;
  *&__src[6] = v11;
  *(&__src[9] + 2) = *(&v25[2] + 10);
  *(&__src[8] + 8) = v25[2];
  *(&__src[7] + 8) = v25[1];
  *(&__src[6] + 8) = v25[0];
  memcpy(__dst, __src, 0xA2uLL);
  sub_1B214C410(__dst);
  memcpy(v36, __dst, sizeof(v36));
  v12 = v27;
  sub_1B2136148(__src, v25);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B2127C14();
    v12 = v19;
  }

  v13 = *(v12 + 16);
  if (v13 >= *(v12 + 24) >> 1)
  {
    sub_1B2127C14();
    v12 = v20;
  }

  sub_1B2137224(__src);
  memcpy(v25, v36, 0xA2uLL);
  sub_1B216EDC0(v25);
  *(v12 + 16) = v13 + 1;
  memcpy((v12 + 184 * v13 + 32), v25, 0xB8uLL);
  v27 = v12;
  v14._countAndFlagsBits = 41;
  v14._object = 0xE100000000000000;
  SQLInterpolation.appendLiteral(_:)(v14);
  *&v23 = 0;
  v21 = 0u;
  v22 = 0u;
  memset(v28, 0, sizeof(v28));
  v29 = 0;
  v30 = v27;
  sub_1B2142B5C(&v21, v28);
  v31 = 2;
  v15 = v28;
  sub_1B2146A54(&v21);
  if (v1 || (v15 = sub_1B2181098(), v17 = v16, result = sub_1B2142D18(&v21), (v17 & 1) == 0))
  {
    sub_1B212AC5C(v28, &qword_1EB7A2248, &unk_1B225BB60);
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B21C5B9C()
{
  sub_1B2111F14();
  v4 = v3;
  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = v2;
    v7 = v1;
    v8 = v0;
    v18 = v3;
    v26 = MEMORY[0x1E69E7CC0];
    sub_1B213CA68();
    v9 = v26;
    v10 = (v6 + 56);
    do
    {
      v11 = *(v10 - 3);
      v12 = *(v10 - 2);
      v13 = *v10;
      v21[0] = *(v10 - 1);
      v21[1] = v13;
      v21[2] = v7;
      sub_1B213CBE4(v21);
      memcpy(v20, v21, 0xA3uLL);
      v22[0] = v11;
      v22[1] = v12;
      v22[2] = v8;
      sub_1B213CBE4(v22);
      memcpy(v19, v22, sizeof(v19));
      memcpy(v23, v21, sizeof(v23));
      memcpy(v24, v22, sizeof(v24));
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      swift_retain_n();
      sub_1B212AC5C(v23, &qword_1EB7A1CE0, &qword_1B225BAB0);
      sub_1B21353B0(0, v20, v25);

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      v26 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1B211156C(v14);
        sub_1B213CA68();
        v9 = v26;
      }

      *(v9 + 16) = v15 + 1;
      v0 = memcpy((v9 + 168 * v15 + 32), v25, 0xA3uLL);
      v10 += 4;
      --v5;
    }

    while (v5);
    v4 = v18;
  }

  if (qword_1ED85DC80 != -1)
  {
    v0 = swift_once();
  }

  *v23 = xmmword_1ED85DC88;
  *&v23[16] = xmmword_1ED85DC98;
  *&v23[32] = word_1ED85DCA8;
  v23[34] = byte_1ED85DCAA;
  MEMORY[0x1EEE9AC00](v0);
  sub_1B21619D8(&qword_1EB7A1CD8, &unk_1B225EDE0);
  sub_1B21C7FF8();
  swift_getKeyPath();

  sub_1B224F214();
  v17 = v16;

  sub_1B213B4BC(v23, v17, v4);

  sub_1B2111588();
}

uint64_t sub_1B21C5E98(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v8 || (v9 = sub_1B22531F0(), result = 0, (v9 & 1) != 0))
  {
    if (v2)
    {
      if (v5)
      {
        if (sub_1B21B8000(v2, v5))
        {
          if (!v3)
          {
            sub_1B2181698(v2);
            if (!v6)
            {
              sub_1B2181698(v5);
              sub_1B2181698(v2);
              sub_1B211A378(v5, 0);
LABEL_24:

              goto LABEL_25;
            }

            goto LABEL_16;
          }

          if (v6)
          {
            v11 = sub_1B21B8000(v3, v6);
            v12 = sub_1B2115C84();
            sub_1B2181698(v12);
            v13 = sub_1B2115FBC();
            sub_1B2181698(v13);
            v14 = sub_1B2115C84();
            sub_1B2181698(v14);
            v15 = sub_1B2115FBC();
            sub_1B211A378(v15, v16);
            if (v11)
            {
              goto LABEL_24;
            }

            goto LABEL_17;
          }
        }

        v18 = sub_1B2115C84();
        sub_1B2181698(v18);
LABEL_16:
        v19 = sub_1B2115FBC();
        sub_1B2181698(v19);
        sub_1B2181698(v2);
        v20 = sub_1B2115FBC();
        sub_1B211A378(v20, v21);
LABEL_17:

        v22 = sub_1B2115C84();
LABEL_20:
        sub_1B211A378(v22, v23);
        return 0;
      }

      sub_1B2181698(v2);
      sub_1B2181698(0);
      v24 = sub_1B2115C84();
      sub_1B2181698(v24);
    }

    else
    {
      sub_1B2181698(0);
      if (!v5)
      {
        sub_1B2181698(0);
LABEL_25:
        v27 = sub_1B2115C84();
        sub_1B211A378(v27, v28);
        return v4 ^ v7 ^ 1u;
      }

      v17 = sub_1B2115FBC();
      sub_1B2181698(v17);
    }

    v25 = sub_1B2115C84();
    sub_1B211A378(v25, v26);
    v22 = sub_1B2115FBC();
    goto LABEL_20;
  }

  return result;
}

void sub_1B21C607C()
{
  sub_1B2111F14();
  v2 = v1;
  isUniquelyReferenced_nonNull_native = v3;
  v5 = sub_1B21C72D8(*v1, v2[1], v2[2], *v0, *(v0 + 8), *(v0 + 16));
  if (!v6)
  {
    sub_1B21C80A8(v241);
LABEL_110:
    memcpy(isUniquelyReferenced_nonNull_native, v241, 0xA2uLL);
    sub_1B2111588();
    return;
  }

  v8 = *(v0 + 40);
  v9 = *(v2 + 5);
  v10 = vmovn_s64(vceqzq_s64(vzip1q_s64(v9, v8)));
  v11 = v2[6];
  v207 = v0;
  v208 = v2;
  v197 = v7;
  v198 = isUniquelyReferenced_nonNull_native;
  v196 = v6;
  v193 = v5;
  if (v10.i8[4])
  {
    if (v10.i8[0])
    {
      v194 = 0;
      v195 = v2[6];
      goto LABEL_11;
    }

    v12 = v2[5];
    v233 = *(v2 + 5);
    v195 = v2[6];
    goto LABEL_9;
  }

  v233 = *(v2 + 5);
  if (v10.i8[0])
  {
    v12 = *(v0 + 40);
    v195 = *(v0 + 48);
LABEL_9:
    v194 = v12;
    sub_1B2112328(v8.i64[0], *(v0 + 48));
    v9.i64[0] = v233;
    goto LABEL_11;
  }

  sub_1B2113B74();
  *v230 = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = *v230;
  *(v14 + 32) = v233;
  v195 = v14;

  v9.i64[0] = v233;
  v194 = sub_1B21C873C;
LABEL_11:
  sub_1B2112328(v9.i64[0], v11);
  sub_1B21359AC();
  v16 = v15;
  v18 = v17;
  v19 = *(v0 + 88);
  v20 = *(v19 + 16);
  if (!v20)
  {
LABEL_61:
    v118 = v208[11];
    v119 = *(v118 + 16);
    if (v119)
    {
      v120 = (v118 + 40);
      v121 = v208[12];
      while (*(v121 + 16))
      {
        v123 = *(v120 - 1);
        v122 = *v120;

        sub_1B212D004();
        sub_1B211E590();
        if ((v124 & 1) == 0)
        {
          goto LABEL_114;
        }

        sub_1B2118084();
        memcpy(v125, v126, v127);
        sub_1B2118084();
        memcpy(v128, v129, v130);
        sub_1B2118084();
        memmove(v131, v132, v133);
        *v245 = v123;
        *&v245[8] = v122;
        sub_1B21145E0();

        sub_1B2181728(v243, __dst);
        sub_1B2181728(__src, __dst);
        sub_1B212AC5C(v245, &qword_1EB7A13A8, &qword_1B2257E40);
        memcpy(__dst, __src, 0xD2uLL);
        if (v18[2] && (sub_1B212D004(), v134 = sub_1B211E590(), (v135 & 1) != 0))
        {
          memcpy(v242, (v18[7] + 216 * v134), 0xD2uLL);
          sub_1B2113B80();

          sub_1B218179C(__dst);
          v136 = v242;
        }

        else
        {
          v235 = v119;
          v137 = v121;
          v138 = v16;
          sub_1B2181728(__dst, v242);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v241 = v18;
          sub_1B212D004();
          v139 = sub_1B211E590();
          if (__OFADD__(v18[2], (v140 & 1) == 0))
          {
            goto LABEL_117;
          }

          v16 = v139;
          v141 = v140;
          sub_1B21619D8(&qword_1EB7A13C0, &qword_1B2257E60);
          v142 = v241;
          if (sub_1B2252E70())
          {
            v142 = *v241;
            sub_1B212D004();
            v143 = sub_1B211E590();
            if ((v141 & 1) != (v144 & 1))
            {
              goto LABEL_123;
            }

            v16 = v143;
          }

          if (v141)
          {
            goto LABEL_124;
          }

          v18 = *v241;
          sub_1B212DEFC(*v241 + 8 * (v16 >> 6));
          v146 = (v145 + 16 * v16);
          *v146 = v123;
          v146[1] = v122;
          memcpy((v18[7] + 216 * v16), __dst, 0xD2uLL);
          v147 = v18[2];
          v79 = __OFADD__(v147, 1);
          v148 = v147 + 1;
          if (v79)
          {
            goto LABEL_118;
          }

          v18[2] = v148;
          swift_bridgeObjectRetain_n();
          v16 = v138;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1B2117CF0();
            v16 = v150;
          }

          v121 = v137;
          v119 = v235;
          sub_1B2115F0C();
          if (v82)
          {
            sub_1B211D970();
            v16 = v151;
          }

          *(v16 + 16) = v142;
          v149 = v16 + 16 * isUniquelyReferenced_nonNull_native;
          *(v149 + 32) = v123;
          *(v149 + 40) = v122;

          v136 = __dst;
        }

        sub_1B218179C(v136);
        v120 += 2;
        if (!--v119)
        {
          goto LABEL_80;
        }
      }

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
      sub_1B2253390();
      __break(1u);
LABEL_124:
      v190 = (*(*v241 + 56) + 216 * v16);
      goto LABEL_126;
    }

LABEL_80:
    v152 = swift_allocObject();
    memcpy((v152 + 16), v208, 0xA2uLL);
    v236 = v152;
    memcpy((v152 + 184), v207, 0xA2uLL);
    v153 = v208[7];
    if (*(v153 + 16))
    {
      v154 = *(v208 + 64);
    }

    else
    {
      v153 = v207[7];
      v154 = *(v207 + 64);
    }

    v229 = v154;
    v232 = v153;

    if (v207[13])
    {
      v227 = 1;
      v155 = v208;
    }

    else
    {
      v155 = v208;
      v227 = *(v208 + 104);
    }

    v215 = v16;
    v156 = v155[14];
    v157 = v155[15];
    v158 = v156;
    v221 = v157;
    if (!v156)
    {
      v158 = v207[14];
      v157 = v207[15];
      sub_1B2112328(v158, v157);
    }

    v223 = v157;
    v225 = v158;
    __dst[0] = *(v207 + 8);
    v160 = v155[16];
    v159 = v155[17];
    v161 = *&__dst[0];
    if (*&__dst[0])
    {
      v162 = *(&__dst[0] + 1);
      if (v160)
      {
        sub_1B2113B74();
        v163 = swift_allocObject();
        v163[2] = v161;
        v163[3] = v162;
        v163[4] = v160;
        v163[5] = v159;
        sub_1B2122B00(__dst, v245, &qword_1EB7A2228, &unk_1B225BB10);
        v161 = sub_1B21C873C;
        v162 = v163;
LABEL_94:
        v164 = v159;

LABEL_95:
        v165 = *(v208 + 161);
        v206 = *(v207 + 161);
        if (v165)
        {
          v166 = v207;
        }

        else
        {
          v166 = v208;
        }

        v219 = *(v166 + 160);
        v217 = v166[19];
        v210 = v166[18];
        v167 = v207[10];
        v243[0] = v207[9];
        v242[0] = v167;
        *__src = v243[0];
        *&__src[8] = v167;
        sub_1B2136148(v208, v245);
        sub_1B2136148(v207, v245);
        sub_1B2112328(v156, v221);
        sub_1B2112328(v160, v164);
        sub_1B2122B00(v243, v245, &qword_1EB7A0DA0, &qword_1B2254340);
        sub_1B2122B00(v242, v245, &qword_1EB7A2220, &qword_1B225BB08);
        sub_1B21A6528();
        v168 = sub_1B21143BC();
        sub_1B2112F4C(v168, v169);
        LOBYTE(v238[0]) = v165 & v206;
        *v245 = v193;
        *&v245[8] = v196;
        *&v245[16] = v197;
        *&v245[24] = sub_1B21C80B0;
        *&v245[32] = v236;
        *&v245[40] = v194;
        *&v245[48] = v195;
        *&v245[56] = v232;
        v245[64] = v229;
        *&v245[72] = *__src;
        *&v245[88] = v215;
        *&v245[96] = v18;
        v245[104] = v227;
        *&v245[112] = v225;
        *&v245[120] = v223;
        *&v245[128] = v161;
        *&v245[136] = v162;
        *&v245[144] = v210;
        *&v245[152] = v217;
        v245[160] = v219;
        v245[161] = v165 & v206;
        nullsub_1();
        memcpy(v241, v245, 0xA2uLL);
        goto LABEL_109;
      }
    }

    else
    {
      if (!v160)
      {
        v161 = 0;
        v164 = v155[17];
        v162 = v164;
        goto LABEL_95;
      }

      v161 = v155[16];
      v162 = v155[17];
    }

    sub_1B2122B00(__dst, v245, &qword_1EB7A2228, &unk_1B225BB10);
    goto LABEL_94;
  }

  v21 = *(v0 + 96);
  v22 = v2[12];
  v23 = (v19 + 40);
  v203 = v21;
  v204 = v22;
  while (1)
  {
    if (!*(v21 + 16))
    {
      goto LABEL_115;
    }

    v24 = *(v23 - 1);
    isUniquelyReferenced_nonNull_native = *v23;

    sub_1B211E590();
    if ((v25 & 1) == 0)
    {
      goto LABEL_116;
    }

    sub_1B2118084();
    memcpy(v26, v27, v28);
    sub_1B2118084();
    memcpy(v29, v30, v31);
    sub_1B2118084();
    memmove(v32, v33, v34);
    *v245 = v24;
    *&v245[8] = isUniquelyReferenced_nonNull_native;
    sub_1B21145E0();

    sub_1B2181728(v243, v241);
    sub_1B2181728(__src, v241);
    sub_1B212AC5C(v245, &qword_1EB7A13A8, &qword_1B2257E40);
    memcpy(__dst, __src, 0xD2uLL);
    v231 = v23;
    v234 = v24;
    if (*(v22 + 16))
    {
      v35 = sub_1B211E590();
      if (v36)
      {
        break;
      }
    }

    v61 = v22;
    v62 = v21;
    v63 = v20;
    v64 = v16;
    sub_1B2181728(__dst, v242);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    *v241 = v18;
    v65 = isUniquelyReferenced_nonNull_native;
    sub_1B211E590();
    sub_1B21120DC();
    if (__OFADD__(v68, v69))
    {
      goto LABEL_119;
    }

    isUniquelyReferenced_nonNull_native = v66;
    v70 = v67;
    sub_1B21619D8(&qword_1EB7A13C0, &qword_1B2257E60);
    v71 = v241;
    if (sub_1B2252E70())
    {
      v71 = *v241;
      v72 = v65;
      v73 = sub_1B211E590();
      if ((v70 & 1) != (v74 & 1))
      {
        goto LABEL_123;
      }

      isUniquelyReferenced_nonNull_native = v73;
      v16 = v64;
      v75 = v63;
    }

    else
    {
      v16 = v64;
      v75 = v63;
      v72 = v65;
    }

    if (v70)
    {
      v190 = (*(*v241 + 56) + 216 * isUniquelyReferenced_nonNull_native);
LABEL_126:
      memcpy(v242, v190, 0xD2uLL);
      memcpy(v190, __dst, 0xD2uLL);
      v191 = v242;
      goto LABEL_127;
    }

    v21 = v62;
    v18 = *v241;
    sub_1B212DEFC(*v241 + 8 * (isUniquelyReferenced_nonNull_native >> 6));
    v77 = (v76 + 16 * isUniquelyReferenced_nonNull_native);
    *v77 = v234;
    v77[1] = v72;
    memcpy((v18[7] + 216 * isUniquelyReferenced_nonNull_native), __dst, 0xD2uLL);
    v78 = v18[2];
    v79 = __OFADD__(v78, 1);
    v80 = v78 + 1;
    if (v79)
    {
      goto LABEL_120;
    }

    v22 = v61;
    v18[2] = v80;
    swift_bridgeObjectRetain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B2117CF0();
      v16 = v114;
    }

    v81 = v231;
    sub_1B2115F0C();
    if (v82)
    {
      sub_1B211D970();
      v16 = v115;
    }

    *(v16 + 16) = v71;
    v83 = v16 + 16 * isUniquelyReferenced_nonNull_native;
    *(v83 + 32) = v234;
    *(v83 + 40) = v72;

    sub_1B218179C(__dst);
LABEL_60:
    v23 = v81 + 2;
    v20 = v75 - 1;
    if (!v20)
    {
      goto LABEL_61;
    }
  }

  v218 = isUniquelyReferenced_nonNull_native;
  memcpy(v242, (*(v22 + 56) + 216 * v35), 0xD2uLL);
  v37 = v242[2];
  v38 = v242[3];
  v39 = v242[5];
  v40 = *&__dst[2];
  v216 = v20;
  v224 = v242[5];
  v226 = v242[4];
  v228 = v242[2];
  v220 = v242[1];
  v222 = v242[3];
  if (SBYTE8(__dst[2]) < 0)
  {
    v202 = *&__dst[1];
    if ((SLOBYTE(v242[5]) & 0x80000000) == 0)
    {
      v183 = *(&__dst[0] + 1);
      v184 = *(&__dst[1] + 1);
      v211 = BYTE8(__dst[2]);
      sub_1B2181640(*(&__dst[0] + 1), *&__dst[1], *(&__dst[1] + 1), *&__dst[2], SBYTE8(__dst[2]));
      sub_1B2118368();
      sub_1B2181640(v185, v186, v187, v188, v189);
      sub_1B2113B80();
      sub_1B2112F4C(v194, v195);

      sub_1B21816DC(v183, v202, v184, v40, v211);
      sub_1B2118368();
      goto LABEL_103;
    }

    v213 = *(&__dst[0] + 1);
    v84 = *(&__dst[1] + 1);
    v199 = *(&__dst[1] + 1);
    v200 = *&__dst[2];
    v85 = *&__dst[2];
    v86 = BYTE8(__dst[2]);
    sub_1B2181640(v242[1], v242[2], v242[3], v242[4], v242[5]);
    sub_1B2181640(v213, v202, v84, v85, v86);
    sub_1B2118368();
    sub_1B2181640(v87, v88, v89, v90, v91);
    sub_1B2113B80();
    sub_1B21816DC(v213, v202, v199, v200, v86);
    sub_1B2118368();
    sub_1B21816DC(v92, v93, v94, v95, v96);
  }

  else
  {
    if (SLOBYTE(v242[5]) < 0)
    {
      v173 = *(&__dst[0] + 1);
      v174 = __dst[1];
      v175 = *&__dst[2];
      v201 = *&__dst[2];
      v176 = BYTE8(__dst[2]);
      sub_1B2181640(*(&__dst[0] + 1), *&__dst[1], *(&__dst[1] + 1), *&__dst[2], SBYTE8(__dst[2]));
      sub_1B2181640(v173, v174, *(&v174 + 1), v175, v176);
      sub_1B2181640(v220, v37, v38, v226, v39);
      sub_1B2113B80();
      sub_1B2112F4C(v194, v195);

      sub_1B21816DC(v173, v174, *(&v174 + 1), v201, v176);

      sub_1B21816DC(v173, v174, *(&v174 + 1), v201, v176);
      v170 = v220;
      v172 = v37;
      v171 = v38;
      goto LABEL_102;
    }

    v212 = v16;
    v238[0] = *(&__dst[0] + 1);
    *&v238[1] = __dst[1];
    v238[3] = *&__dst[2];
    LOBYTE(v238[4]) = BYTE8(__dst[2]) & 1;
    v239[0] = v242[1];
    v239[1] = v242[2];
    v239[2] = v242[3];
    v239[3] = v242[4];
    LOBYTE(v239[4]) = v242[5] & 1;
    v41 = v242[1];
    v42 = *(&__dst[0] + 1);
    v43 = __dst[1];
    v44 = BYTE8(__dst[2]);
    sub_1B2181640(*(&__dst[0] + 1), *&__dst[1], *(&__dst[1] + 1), *&__dst[2], SBYTE8(__dst[2]));
    v45 = sub_1B2116668();
    sub_1B2181640(v45, v46, v47, v48, v44);
    sub_1B2181640(v41, v228, v222, v226, v224);
    v49 = sub_1B2116668();
    sub_1B2181640(v49, v50, v51, v52, v44);
    sub_1B2181640(v41, v228, v222, v226, v224);
    sub_1B2113B80();
    v205 = sub_1B21C5E98(v238, v239);
    v53 = sub_1B2116668();
    sub_1B21816DC(v53, v54, v55, v56, v44);
    sub_1B21816DC(v41, v228, v222, v226, v224);
    sub_1B21816DC(v220, v228, v222, v226, v224);
    v57 = sub_1B2116668();
    sub_1B21816DC(v57, v58, v59, v60, v44);
    if ((v205 & 1) == 0)
    {
      sub_1B2112F4C(v194, v195);

      v179 = sub_1B2116668();
      sub_1B21816DC(v179, v180, v181, v182, v44);

      goto LABEL_108;
    }

    v220 = v42;
    v222 = *(&v43 + 1);
    v226 = v40;
    v228 = v43;
    v224 = v44;
    v16 = v212;
  }

  memcpy(v249, &v242[6], sizeof(v249));
  memcpy(v250, &__dst[3], sizeof(v250));
  sub_1B21C607C();
  memcpy(v248, v247, sizeof(v248));
  v21 = v203;
  v22 = v204;
  if (sub_1B2117000(v248) == 1)
  {
    sub_1B2112F4C(v194, v195);

    v170 = v220;
    v171 = v222;
    v172 = v228;
LABEL_102:
    v177 = v226;
    v178 = v224;
LABEL_103:
    sub_1B21816DC(v170, v172, v171, v177, v178);
LABEL_108:
    sub_1B218179C(v242);
    sub_1B218179C(__dst);

    sub_1B21C80A8(v241);
LABEL_109:
    isUniquelyReferenced_nonNull_native = v198;
    goto LABEL_110;
  }

  isUniquelyReferenced_nonNull_native = v248[104];
  v97 = v248[161];
  v98 = v242[0];
  v209 = *&v248[128];
  v214 = *&v248[112];
  switch(LOBYTE(__dst[0]))
  {
    case 1:
      if (LOBYTE(v242[0]) >= 2u)
      {
        goto LABEL_107;
      }

      v98 = 1;
      goto LABEL_45;
    case 2:
      if (LOBYTE(v242[0]) != 2)
      {
        if (LOBYTE(v242[0]) == 3)
        {
LABEL_112:
          sub_1B2122568();
LABEL_131:
          sub_1B2112A88();
          goto LABEL_132;
        }

LABEL_107:
        sub_1B2112F4C(v194, v195);

        sub_1B212AC5C(v247, &qword_1EB7A2218, &qword_1B225BB00);
        sub_1B21816DC(v220, v228, v222, v226, v224);

        goto LABEL_108;
      }

      v99 = v16;
LABEL_48:
      memcpy(v239 + 7, v248, 0x68uLL);
      *&v241[192] = *&v248[144];
      v241[208] = v248[160];
      v241[0] = v98;
      *&v241[1] = v240[0];
      *&v241[4] = *(v240 + 3);
      *&v241[8] = v220;
      *&v241[16] = v228;
      *&v241[24] = v222;
      *&v241[32] = v226;
      v241[40] = v224;
      memcpy(&v241[41], v239, 0x6FuLL);
      v241[152] = isUniquelyReferenced_nonNull_native;
      *&v241[153] = *&v248[105];
      *&v241[156] = *&v248[108];
      *&v241[160] = v214;
      *&v241[176] = v209;
      v241[209] = v97;
      sub_1B2181728(v241, v238);
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v237 = v18;
      v101 = sub_1B211E590();
      if (__OFADD__(v18[2], (v102 & 1) == 0))
      {
        goto LABEL_121;
      }

      isUniquelyReferenced_nonNull_native = v101;
      v103 = v102;
      sub_1B21619D8(&qword_1EB7A13C0, &qword_1B2257E60);
      v104 = &v237;
      if (sub_1B2252E70())
      {
        v104 = v237;
        v105 = v234;
        v106 = v218;
        v107 = sub_1B211E590();
        if ((v103 & 1) != (v108 & 1))
        {
          goto LABEL_123;
        }

        isUniquelyReferenced_nonNull_native = v107;
        v16 = v99;
        v75 = v216;
      }

      else
      {
        v16 = v99;
        v75 = v216;
        v106 = v218;
        v105 = v234;
      }

      if ((v103 & 1) == 0)
      {
        v18 = v237;
        sub_1B212DEFC(&v237[isUniquelyReferenced_nonNull_native >> 6]);
        v110 = (v109 + 16 * isUniquelyReferenced_nonNull_native);
        *v110 = v105;
        v110[1] = v106;
        memcpy((v18[7] + 216 * isUniquelyReferenced_nonNull_native), v241, 0xD2uLL);
        v111 = v18[2];
        v79 = __OFADD__(v111, 1);
        v112 = v111 + 1;
        if (v79)
        {
          goto LABEL_122;
        }

        v18[2] = v112;
        swift_bridgeObjectRetain_n();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B2117CF0();
          v16 = v116;
        }

        sub_1B2115F0C();
        if (v82)
        {
          sub_1B211D970();
          v16 = v117;
        }

        *(v16 + 16) = v104;
        v113 = v16 + 16 * isUniquelyReferenced_nonNull_native;
        *(v113 + 32) = v105;
        *(v113 + 40) = v106;
        sub_1B218179C(v242);
        sub_1B218179C(v241);

        sub_1B218179C(__dst);
        v81 = v231;
        goto LABEL_60;
      }

      v192 = (v237[7] + 216 * isUniquelyReferenced_nonNull_native);
      memcpy(v238, v192, 0xD2uLL);
      memcpy(v192, v241, 0xD2uLL);
      v191 = v238;
LABEL_127:
      sub_1B218179C(v191);
      sub_1B2111608();
      sub_1B2112A88();
LABEL_132:
      sub_1B2252EC0();
      __break(1u);

      __break(1u);
      return;
    case 3:
      if (LOBYTE(v242[0]) == 3)
      {
        goto LABEL_45;
      }

      if (LOBYTE(v242[0]) != 2)
      {
        goto LABEL_107;
      }

      goto LABEL_112;
    default:
      if (LOBYTE(v242[0]) >= 2u)
      {
        goto LABEL_107;
      }

LABEL_45:
      if (v248[104])
      {
        goto LABEL_131;
      }

      sub_1B2121FD4(*&v248[112], *&v248[128]);
      if (v100)
      {
        v99 = v16;
        if (v97)
        {
          goto LABEL_48;
        }
      }

      goto LABEL_112;
  }
}

uint64_t sub_1B21C72D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a4;
  v9 = a4 == a1 && a5 == a2;
  if (!v9 && (sub_1B22531F0() & 1) == 0)
  {
    return 0;
  }

  if (!a6)
  {
    if (!a3)
    {

      return v7;
    }

    goto LABEL_11;
  }

  if (!a3)
  {
LABEL_11:

    return v7;
  }

  v11 = sub_1B21DA3B0(v10);

  if (!v11)
  {

    return 0;
  }

  return v7;
}

void *sub_1B21C73D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = (*(a2 + 24))(&v9);
  if (!v4)
  {
    result = v9;
    if (v9[2])
    {
      *a4 = v9;
    }

    else
    {

      return (*(a3 + 24))(a1);
    }
  }

  return result;
}

uint64_t sub_1B21C7460@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);
  v8 = *v2;
  v9 = *(v2 + 8);
  v11 = *(v2 + 16);
  v10 = *(v2 + 24);
  v12 = *(v2 + 32);
  if (v12 < 0)
  {
    if (v7 < 0)
    {
      v66 = sub_1B21143BC();
      sub_1B211FE3C(v66, v67);
      v68 = sub_1B2112A98();
      sub_1B2181640(v68, v69, v70, v71, v72);
      v73 = sub_1B211756C();
      sub_1B2181640(v73, v74, v75, v76, v77);
      v78 = sub_1B2112A98();
      sub_1B21816DC(v78, v79, v80, v81, v82);
      v83 = sub_1B211756C();
      result = sub_1B21816DC(v83, v84, v85, v86, v87);
      *a2 = v4;
      *(a2 + 8) = v3;
      *(a2 + 16) = v6;
      *(a2 + 24) = v2;
      *(a2 + 32) = v7;
      return result;
    }

    goto LABEL_8;
  }

  if (v7 < 0)
  {
LABEL_8:
    sub_1B2181640(*v2, *(v2 + 8), *(v2 + 16), v10, v12);
    v51 = sub_1B211756C();
    sub_1B2181640(v51, v52, v53, v54, v55);
    v56 = sub_1B2112A98();
    sub_1B21816DC(v56, v57, v58, v59, v60);
    v61 = sub_1B211756C();
    result = sub_1B21816DC(v61, v62, v63, v64, v65);
    goto LABEL_9;
  }

  v92[0] = *v2;
  v92[1] = v9;
  v92[2] = v11;
  v92[3] = v10;
  v93 = v12 & 1;
  v90[0] = v4;
  v90[1] = v3;
  v90[2] = v6;
  v90[3] = v5;
  v91 = v7 & 1;
  v13 = sub_1B21143BC();
  sub_1B211FE3C(v13, v14);
  v15 = sub_1B2112A98();
  sub_1B2181640(v15, v16, v17, v18, v19);
  v20 = sub_1B2112A98();
  sub_1B2181640(v20, v21, v22, v23, v24);
  v25 = sub_1B211756C();
  sub_1B2181640(v25, v26, v27, v28, v29);
  v88 = sub_1B21C5E98(v92, v90);
  v30 = sub_1B2112A98();
  sub_1B21816DC(v30, v31, v32, v33, v34);
  v35 = sub_1B211756C();
  sub_1B21816DC(v35, v36, v37, v38, v39);
  v40 = sub_1B211756C();
  sub_1B21816DC(v40, v41, v42, v43, v44);
  v45 = sub_1B2112A98();
  result = sub_1B21816DC(v45, v46, v47, v48, v49);
  if ((v88 & 1) == 0)
  {
LABEL_9:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = -2;
    return result;
  }

  *a2 = v8;
  *(a2 + 8) = v9;
  *(a2 + 16) = v11;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;

  return sub_1B2181698(v11);
}

uint64_t sub_1B21C7618(uint64_t result, char a2)
{
  switch(a2)
  {
    case 1:
      goto LABEL_11;
    case 2:
      if (result == 2)
      {
        return result;
      }

      if (result != 3)
      {
        return 4;
      }

      goto LABEL_10;
    case 3:
      if (result == 3)
      {
        return result;
      }

      if (result != 2)
      {
        return 4;
      }

LABEL_10:
      sub_1B2111608();
      sub_1B2112A88();
      sub_1B212E2BC();
      LOBYTE(result) = sub_1B2252EC0();
      __break(1u);
LABEL_11:
      if ((result & 0xFE) != 0)
      {
        return 4;
      }

      else
      {
        return 1;
      }

    default:
      if (result == 1)
      {
        return 1;
      }

      else
      {
        return 4 * (result != 0);
      }
  }
}

void sub_1B21C76E0()
{
  sub_1B2117A9C();
  sub_1B212D590();
  sub_1B21120DC();
  if (__OFADD__(v6, v7))
  {
    __break(1u);
LABEL_11:
    sub_1B2253390();
    __break(1u);
    return;
  }

  v8 = v4;
  v9 = v5;
  v10 = sub_1B21619D8(&qword_1EB7A1BD8, &qword_1B225A4B0);
  if (sub_1B214CC10(v10))
  {
    v1 = v22;
    sub_1B211E590();
    sub_1B2114080();
    if (!v12)
    {
      goto LABEL_11;
    }

    v8 = v11;
  }

  if (v9)
  {
    v1 = v22;
    v13 = (*(v22 + 56) + 176 * v8);
    v14 = sub_1B2115FBC();
    memmove(v14, v15, 0xABuLL);
    memcpy(v13, v3, 0xABuLL);
    nullsub_1();
  }

  else
  {
    v16 = sub_1B211F680();
    sub_1B21CBFCC(v16, v17, v18, v19, v20);
    sub_1B21C8120(v21);
    memcpy(v2, v21, 0xABuLL);
  }

  *v0 = v1;
}

void sub_1B21C77F4()
{
  sub_1B2117A9C();
  sub_1B212D590();
  sub_1B21120DC();
  if (__OFADD__(v6, v7))
  {
    __break(1u);
LABEL_11:
    sub_1B2253390();
    __break(1u);
    return;
  }

  v8 = v4;
  v9 = v5;
  v10 = sub_1B21619D8(&qword_1EB7A13C0, &qword_1B2257E60);
  if (sub_1B214CC10(v10))
  {
    v1 = v22;
    sub_1B211E590();
    sub_1B2114080();
    if (!v12)
    {
      goto LABEL_11;
    }

    v8 = v11;
  }

  if (v9)
  {
    v1 = v22;
    v13 = (*(v22 + 56) + 216 * v8);
    v14 = sub_1B2115FBC();
    memmove(v14, v15, 0xD2uLL);
    memcpy(v13, v3, 0xD2uLL);
    nullsub_1();
  }

  else
  {
    v16 = sub_1B211F680();
    sub_1B21CC064(v16, v17, v18, v19, v20);
    sub_1B21C805C(__src);
    memcpy(v2, __src, 0xD2uLL);
  }

  *v0 = v1;
}

void sub_1B21C7908()
{
  sub_1B211AD88();
  v2 = v1;
  v4 = v3;
  v19 = v5;
  v7 = v6;
  v9 = v8;
  swift_isUniquelyReferenced_nonNull_native();
  v20 = *v0;
  sub_1B21143BC();
  sub_1B211E590();
  sub_1B21120DC();
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_10;
  }

  v14 = v10;
  v15 = v11;
  sub_1B21619D8(&qword_1EB7A1BC0, &qword_1B2259950);
  sub_1B213CE24();
  if (sub_1B2252E70())
  {
    sub_1B21143BC();
    v16 = sub_1B211E590();
    if ((v15 & 1) == (v17 & 1))
    {
      v14 = v16;
      goto LABEL_5;
    }

LABEL_10:
    sub_1B2253390();
    __break(1u);
    return;
  }

LABEL_5:
  if (v15)
  {
    v18 = (*(v20 + 56) + 24 * v14);
    *v18 = v9;
    v18[1] = v7;
    v18[2] = v19;
  }

  else
  {
    sub_1B21CC0B0(v14, v4, v2, v9, v7, v19, v20);
  }

  *v0 = v20;
  sub_1B21119F0();
}

uint64_t sub_1B21C7A3C()
{
  v1 = sub_1B2133834();
  if ((v2 & 1) == 0)
  {
    return 1;
  }

  v3 = v1;
  swift_isUniquelyReferenced_nonNull_native();
  v6 = *v0;
  sub_1B21619D8(&qword_1EB7A1D10, &unk_1B225BB40);
  sub_1B213CE24();
  sub_1B2252E70();

  v4 = *(*(v6 + 56) + 16 * v3);
  sub_1B211B358();
  sub_1B2252E90();
  *v0 = v6;
  return v4;
}

void sub_1B21C7B28(void *a1@<X8>)
{
  v3 = sub_1B211E590();
  if (v4)
  {
    v5 = v3;
    swift_isUniquelyReferenced_nonNull_native();
    v6[0] = *v1;
    sub_1B21619D8(&qword_1EB7A1BD8, &qword_1B225A4B0);
    sub_1B2252E70();

    memmove(a1, (*(v6[0] + 56) + 176 * v5), 0xABuLL);
    sub_1B2252E90();
    *v1 = v6[0];

    nullsub_1();
  }

  else
  {
    sub_1B21C8120(v6);
    memcpy(a1, v6, 0xABuLL);
  }
}

double sub_1B21C7C4C@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1B211E590();
  if (v4)
  {
    v5 = v3;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v1;
    sub_1B21619D8(&qword_1EB7A2238, &qword_1B226BA40);
    sub_1B213CE24();
    sub_1B2252E70();

    v6 = *(v9 + 56) + 40 * v5;
    v7 = *(v6 + 16);
    *a1 = *v6;
    *(a1 + 16) = v7;
    *(a1 + 32) = *(v6 + 32);
    sub_1B21619D8(&qword_1EB7A0E30, &unk_1B2259360);
    sub_1B2252E90();
    *v1 = v9;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *&result = 1;
    *(a1 + 24) = xmmword_1B2259350;
  }

  return result;
}

void sub_1B21C7D54(void *a1@<X8>)
{
  v3 = sub_1B211E590();
  if (v4)
  {
    v5 = v3;
    swift_isUniquelyReferenced_nonNull_native();
    __src[0] = *v1;
    sub_1B21619D8(&qword_1EB7A13C0, &qword_1B2257E60);
    sub_1B2252E70();

    memmove(a1, (*(__src[0] + 56) + 216 * v5), 0xD2uLL);
    sub_1B2252E90();
    *v1 = __src[0];

    nullsub_1();
  }

  else
  {
    sub_1B21C805C(__src);
    memcpy(a1, __src, 0xD2uLL);
  }
}

uint64_t sub_1B21C7E84(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = *(result - 56) & 1;
  v4 = (v2 | (*(result + 2) << 16)) & 0xF981FF | 0x24000;
  *(result - 96) &= 1uLL;
  *(result - 56) = v3;
  *result = v4;
  *(result + 2) = BYTE2(v4);
  return result;
}

uint64_t sub_1B21C7F2C(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = *(result - 56) & 1;
  v4 = (v2 | (*(result + 2) << 16)) & 0xF981FF;
  *(result - 96) &= 1uLL;
  *(result - 56) = v3;
  *result = v4;
  *(result + 2) = (v4 | 0x40000u) >> 16;
  return result;
}

uint64_t sub_1B21C7F70(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = *(result - 56) & 1;
  v4 = (v2 | (*(result + 2) << 16)) & 0xF981FF;
  *(result - 96) &= 1uLL;
  *(result - 56) = v3;
  *result = v4 | 0x4000;
  *(result + 2) = BYTE2(v4);
  return result;
}

uint64_t sub_1B21C7FB4(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = *(result - 56) & 1;
  v4 = (v2 | (*(result + 2) << 16)) & 0xF981FF;
  *(result - 96) &= 1uLL;
  *(result - 56) = v3;
  *result = v4;
  *(result + 2) = (v4 | 0x20000u) >> 16;
  return result;
}

unint64_t sub_1B21C7FF8()
{
  result = qword_1ED85D868;
  if (!qword_1ED85D868)
  {
    sub_1B2161A20(&qword_1EB7A1CD8, &unk_1B225EDE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85D868);
  }

  return result;
}

uint64_t sub_1B21C8064(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_1B21C807C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_1B21C8094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 <= 0xFDu)
  {
    return sub_1B21816DC(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_1B21C80D0(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1B2743C50);
  }

  return result;
}

double sub_1B21C8120(uint64_t a1)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0x1FFFFFFFELL;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 155) = 0u;
  return result;
}

uint64_t sub_1B21C8148(int a1, int a2, void *__src)
{
  v4 = *(v3 + 16);
  memcpy(__dst, __src, 0xD2uLL);
  return v4(__dst) & 1;
}

uint64_t sub_1B21C81F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1B21C8234(uint64_t result, int a2, int a3)
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

uint64_t sub_1B21C8284(uint64_t a1, unsigned int a2)
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

uint64_t sub_1B21C82C4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B21C8324(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B21C8344(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1B21C8390(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 210))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
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

uint64_t sub_1B21C83D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *(result + 208) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 210) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 210) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B21C8454(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_1B21C8494(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B21C84EC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 33))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (*(a1 + 32) & 0x7E | (*(a1 + 32) >> 7)) ^ 0x7F;
      if (v2 >= 0x7E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1B21C8534(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

_BYTE *sub_1B21C85C0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B21C869C()
{
  result = qword_1EB7A2250;
  if (!qword_1EB7A2250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A2250);
  }

  return result;
}

void sub_1B21C8758(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v33 = MEMORY[0x1E69E7CC0];
    sub_1B2132AA0();
    v5 = sub_1B2132AEC();
    v6 = 0;
    v7 = v2 + 56;
    v25 = v2 + 64;
    v26 = v1;
    v27 = v2 + 56;
    v28 = v2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_25;
        }

        v32 = v4;
        v29 = v6;
        v30 = v3;
        v9 = (*(v2 + 48) + 16 * v5);
        v10 = *v9;
        v11 = v9[1];
        v31 = sub_1B2252220();
        v13 = v12;
        v14 = *(v33 + 16);
        v15 = *(v33 + 24);

        if (v14 >= v15 >> 1)
        {
          sub_1B2132AA0();
        }

        *(v33 + 16) = v14 + 1;
        v16 = (v33 + 32 * v14);
        v16[4] = v31;
        v16[5] = v13;
        v16[6] = v10;
        v16[7] = v11;
        if (v32)
        {
          goto LABEL_29;
        }

        v7 = v27;
        v2 = v28;
        v17 = 1 << *(v28 + 32);
        if (v5 >= v17)
        {
          goto LABEL_26;
        }

        v18 = *(v27 + 8 * v8);
        if ((v18 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v28 + 36) != v30)
        {
          goto LABEL_28;
        }

        v19 = v18 & (-2 << (v5 & 0x3F));
        if (v19)
        {
          v17 = __clz(__rbit64(v19)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v20 = v8 << 6;
          v21 = v8 + 1;
          v22 = (v25 + 8 * v8);
          while (v21 < (v17 + 63) >> 6)
          {
            v24 = *v22++;
            v23 = v24;
            v20 += 64;
            ++v21;
            if (v24)
            {
              sub_1B21268C8(v5, v30, 0);
              v17 = __clz(__rbit64(v23)) + v20;
              goto LABEL_19;
            }
          }

          sub_1B21268C8(v5, v30, 0);
        }

LABEL_19:
        v6 = v29 + 1;
        if (v29 + 1 == v26)
        {
          return;
        }

        v4 = 0;
        v3 = *(v28 + 36);
        v5 = v17;
        if (v17 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

void sub_1B21C89A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = a1;
    v39 = MEMORY[0x1E69E7CC0];
    sub_1B2116B10(0, v7, 0, a4, a5, a6, a7);
    v11 = sub_1B2132AEC();
    v12 = 0;
    v13 = v8 + 56;
    v33 = v8 + 64;
    v34 = v8 + 56;
    v35 = v8;
    if ((v11 & 0x8000000000000000) == 0)
    {
      while (v11 < 1 << *(v8 + 32))
      {
        v14 = v11 >> 6;
        if ((*(v13 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v8 + 36) != v9)
        {
          goto LABEL_25;
        }

        v38 = v10;
        v36 = v12;
        v37 = v9;
        v15 = *(v8 + 48) + 32 * v11;
        v16 = *(v15 + 16);
        v17 = *(v15 + 24);
        v19 = *(v39 + 16);
        v18 = *(v39 + 24);

        if (v19 >= v18 >> 1)
        {
          sub_1B2116B10(v18 > 1, v19 + 1, 1, v20, v21, v22, v23);
        }

        *(v39 + 16) = v19 + 1;
        v24 = v39 + 16 * v19;
        *(v24 + 32) = v16;
        *(v24 + 40) = v17;
        if (v38)
        {
          goto LABEL_29;
        }

        v13 = v34;
        v8 = v35;
        v25 = 1 << *(v35 + 32);
        if (v11 >= v25)
        {
          goto LABEL_26;
        }

        v26 = *(v34 + 8 * v14);
        if ((v26 & (1 << v11)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v35 + 36) != v37)
        {
          goto LABEL_28;
        }

        v27 = v26 & (-2 << (v11 & 0x3F));
        if (v27)
        {
          v25 = __clz(__rbit64(v27)) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v28 = v14 << 6;
          v29 = v14 + 1;
          v30 = (v33 + 8 * v14);
          while (v29 < (v25 + 63) >> 6)
          {
            v32 = *v30++;
            v31 = v32;
            v28 += 64;
            ++v29;
            if (v32)
            {
              sub_1B21268C8(v11, v37, 0);
              v25 = __clz(__rbit64(v31)) + v28;
              goto LABEL_19;
            }
          }

          sub_1B21268C8(v11, v37, 0);
        }

LABEL_19:
        v12 = v36 + 1;
        if (v36 + 1 == v7)
        {
          return;
        }

        v10 = 0;
        v9 = *(v35 + 36);
        v11 = v25;
        if (v25 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

uint64_t sub_1B21C8BE0()
{
  sub_1B211D964();
  v3 = v2;
  v4 = sub_1B2252220();
  v6 = v5;
  sub_1B21619D8(&qword_1EB7A2190, &unk_1B225B250);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B22546B0;
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  *(inited + 48) = v1;
  *(inited + 56) = v0;
  *(inited + 64) = 0;
  *(inited + 72) = 0;
  sub_1B211B358();

  result = sub_1B2252190();
  *v3 = result;
  return result;
}

GRDBInternal::DatabaseRegion __swiftcall DatabaseRegion.init()()
{
  v1 = v0;
  sub_1B211B358();
  v2 = sub_1B2252190();
  *v1 = v2;
  result.tableRegions.value._rawValue = v2;
  result.tableRegions.is_nil = v3;
  return result;
}

Swift::Void __swiftcall DatabaseRegion.formUnion(_:)(GRDBInternal::DatabaseRegion a1)
{
  v2 = *v1;
  v3[0] = *a1.tableRegions.value._rawValue;
  v3[1] = v2;
  a1.tableRegions.value._rawValue = v3;
  DatabaseRegion.union(_:)(a1);

  *v1 = v3[2];
}

BOOL DatabaseRegion.isModified(byEventsOfKind:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v20[12] = *v4;
  if (a4 > 1u)
  {
    sub_1B2113060();
    v12 = sub_1B2252220();
    v14 = v13;

    sub_1B21C8758(a3);
    v16 = sub_1B2132B34(v15);
    sub_1B21619D8(&qword_1EB7A2190, &unk_1B225B250);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B22546B0;
    *(inited + 32) = v12;
    *(inited + 40) = v14;
    *(inited + 48) = a1;
    *(inited + 56) = a2;
    *(inited + 64) = v16;
    *(inited + 72) = 0;
    sub_1B211B358();
  }

  else
  {
    sub_1B2113060();
    v7 = sub_1B2252220();
    v9 = v8;
    sub_1B21619D8(&qword_1EB7A2190, &unk_1B225B250);
    v10 = swift_initStackObject();
    *(v10 + 16) = xmmword_1B22546B0;
    *(v10 + 32) = v7;
    *(v10 + 40) = v9;
    *(v10 + 48) = a1;
    *(v10 + 56) = a2;
    *(v10 + 64) = 0;
    *(v10 + 72) = 0;
    sub_1B211B358();
  }

  v20[0] = sub_1B2252190();
  sub_1B21C97F8(v20, &v21);

  if (v21)
  {
    v18 = *(v21 + 16);

    return v18 != 0;
  }

  else
  {

    return 1;
  }
}

uint64_t DatabaseRegion.isModified(by:)(void *a1)
{
  v2 = *v1;
  if (*v1 && (v4 = a1[3], v5 = a1[4], sub_1B21139A0(a1, v4), v6 = (*(v5 + 16))(v4, v5), v8 = v7, v9 = sub_1B2252220(), v11 = sub_1B214A5A8(v9, v10, v6, v8, v2), v13 = v12, , , v11 != 1))
  {
    if (v13)
    {
      v14 = sub_1B21CA838(a1[6], v13);
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 1;
  }

  return v14 & 1;
}

uint64_t sub_1B21C8FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (sub_1B211E590(), (v3 & 1) != 0))
  {
  }

  else
  {
    sub_1B2117D14();
  }

  return sub_1B2112FD0();
}

uint64_t sub_1B21C9050(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1B2190CF8(), (v2 & 1) != 0))
  {
    sub_1B2114830();
  }

  else
  {
    sub_1B2117D14();
  }

  return sub_1B2112FD0();
}

uint64_t sub_1B21C9090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (sub_1B211E590(), (v3 & 1) != 0))
  {
    sub_1B2114830();
  }

  else
  {
    sub_1B2117D14();
  }

  return sub_1B2112FD0();
}

uint64_t sub_1B21C90D0(uint64_t result, uint64_t a2)
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
  v21 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 32 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      sub_1B2253420();

      sub_1B2252370();
      v15 = sub_1B2253470();
      v16 = ~(-1 << *(a2 + 32));
      do
      {
        v17 = v15 & v16;
        if (((*(a2 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {

          return 0;
        }

        v18 = (*(a2 + 48) + 32 * v17);
        if (*v18 == v14 && v18[1] == v13)
        {
          break;
        }

        v20 = sub_1B22531F0();
        v15 = v17 + 1;
      }

      while ((v20 & 1) == 0);

      result = v21;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21C9298(uint64_t result, uint64_t a2)
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
LABEL_7:
  if (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = *(*(v3 + 48) + 8 * (v9 | (v4 << 6)));
    result = sub_1B2253410();
    v13 = ~(-1 << *(a2 + 32));
    while (1)
    {
      v14 = result & v13;
      if (((*(a2 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
      {
        return 0;
      }

      result = v14 + 1;
      if (*(*(a2 + 48) + 8 * v14) == v12)
      {
        goto LABEL_7;
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

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 56 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_1B21C93D8(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return;
  }

  sub_1B212257C();
  if (!v34)
  {
    return;
  }

  sub_1B211837C();
  if (v5 < 64)
  {
    v9 = ~(-1 << v5);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v4;
  v11 = (v5 + 63) >> 6;
  v45 = v2 + 56;
  v41 = v11;
  v42 = v6;
  if (!v10)
  {
    goto LABEL_9;
  }

  do
  {
    v12 = __clz(__rbit64(v10));
    v38 = (v10 - 1) & v10;
LABEL_14:
    v39 = v8;
    v40 = v3;
    v17 = (*(v3 + 48) + ((v12 | (v8 << 6)) << 6));
    v18 = v17[3];
    v20 = *v17;
    v19 = v17[1];
    v7[2] = v17[2];
    v7[3] = v18;
    *v7 = v20;
    v7[1] = v19;
    sub_1B2253420();
    sub_1B2148158(v48, v46);
    sub_1B21483F8(v47);
    v21 = sub_1B2253470();
    v43 = v2;
    v22 = -1 << *(v2 + 32);
    v23 = v21 & ~v22;
    if (((*(v45 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
    {
LABEL_49:
      sub_1B2148190(v48);
      return;
    }

    v44 = ~v22;
    v24 = v48[0];
    v25 = v48[1];
    v26 = *(v43 + 48);
    while (1)
    {
      v27 = (v26 + (v23 << 6));
      v28 = v27[2];
      v29 = v27[3];
      v31 = v27[4];
      v30 = v27[5];
      v33 = v27[6];
      v32 = v27[7];
      v34 = *v27 == v24 && v27[1] == v25;
      if (!v34 && (sub_1B22531F0() & 1) == 0)
      {
        goto LABEL_44;
      }

      v35 = v28 == v48[2] && v29 == v48[3];
      if (!v35 && (sub_1B22531F0() & 1) == 0)
      {
        goto LABEL_44;
      }

      if (v30)
      {
        if (!v49)
        {
          goto LABEL_44;
        }

        v36 = v31 == v48[4] && v30 == v49;
        if (!v36 && (sub_1B22531F0() & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      else if (v49)
      {
        goto LABEL_44;
      }

      if (v32)
      {
        break;
      }

      if (!v51)
      {
        goto LABEL_46;
      }

LABEL_44:
      v23 = (v23 + 1) & v44;
      if (((*(v45 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    if (!v51)
    {
      goto LABEL_44;
    }

    v37 = v33 == v50 && v32 == v51;
    if (!v37 && (sub_1B22531F0() & 1) == 0)
    {
      goto LABEL_44;
    }

LABEL_46:
    sub_1B2148190(v48);
    v6 = v42;
    v2 = v43;
    v8 = v39;
    v3 = v40;
    v7 = v48;
    v11 = v41;
    v10 = v38;
  }

  while (v38);
LABEL_9:
  v13 = v8;
  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      return;
    }

    ++v13;
    if (*(v6 + 8 * v14))
    {
      sub_1B211667C();
      v38 = v16 & v15;
      goto LABEL_14;
    }
  }

  __break(1u);
}

GRDBInternal::DatabaseRegion __swiftcall DatabaseRegion.init(table:)(Swift::String table)
{
  sub_1B211D964();
  v4 = v3;
  v5 = sub_1B2252220();
  v7 = v6;
  sub_1B21619D8(&qword_1EB7A2190, &unk_1B225B250);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B22546B0;
  *(inited + 32) = v5;
  *(inited + 40) = v7;
  *(inited + 48) = v2;
  *(inited + 56) = v1;
  sub_1B211B358();
  *(inited + 64) = 0;
  *(inited + 72) = 0;
  v9 = sub_1B2252190();
  *v4 = v9;
  result.tableRegions.value._rawValue = v9;
  result.tableRegions.is_nil = v10;
  return result;
}

uint64_t sub_1B21C9744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1B2252220();
  v10 = v9;
  sub_1B21619D8(&qword_1EB7A2190, &unk_1B225B250);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B22546B0;
  *(inited + 32) = v8;
  *(inited + 40) = v10;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 64) = 0;
  *(inited + 72) = a3;
  sub_1B211B358();
  result = sub_1B2252190();
  *a4 = result;
  return result;
}

void sub_1B21C97F8(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *v2;
  if (!v4)
  {
    *a2 = v3;
LABEL_33:

    return;
  }

  if (!v3)
  {
    *a2 = v4;
    goto LABEL_33;
  }

  v43 = v3;
  sub_1B211B358();

  v37 = sub_1B2252190();
  v5 = 0;
  sub_1B211837C();
  if (v7 < 64)
  {
    v10 = ~(-1 << v7);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (v7 + 63) >> 6;
  v13 = v9 + 64;
  v40 = v12;
  v41 = v8;
  v42 = v4;
  while (1)
  {
    v14 = v5;
    if (!v11)
    {
      break;
    }

LABEL_8:
    while (2)
    {
      v5 = v14;
LABEL_12:
      v15 = 0;
      sub_1B2118090();
      v17 = (*(v4 + 48) + 32 * (v16 | (v5 << 6)));
      v19 = *v17;
      v18 = v17[1];
      sub_1B211837C();
      if (v21 < 64)
      {
        v23 = ~(-1 << v21);
      }

      else
      {
        v23 = -1;
      }

      v24 = v23 & v22[8];
      v38 = *(v20 + 8);
      v39 = *v20;
      v25 = (v21 + 63) >> 6;
      do
      {
        if (!v24)
        {
          while (1)
          {
            v26 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              break;
            }

            if (v26 >= v25)
            {
              v14 = v5;
              v4 = v42;
              goto LABEL_8;
            }

            v24 = *(v13 + 8 * v26);
            ++v15;
            if (v24)
            {
              v15 = v26;
              goto LABEL_21;
            }
          }

          __break(1u);
          goto LABEL_37;
        }

LABEL_21:
        v27 = __clz(__rbit64(v24)) | (v15 << 6);
        v28 = (v22[6] + 32 * v27);
        v29 = *(v22[7] + 16 * v27 + 8);
        if (*v28 == v19 && v28[1] == v18)
        {
          break;
        }

        v24 &= v24 - 1;
        v31 = sub_1B22531F0();
        v22 = v43;
      }

      while ((v31 & 1) == 0);

      v35 = sub_1B21C9B3C(v32, v29, v39, v38);
      v34 = v33;

      if (sub_1B214A608(v35, v34))
      {

        v14 = v5;
        v4 = v42;
        continue;
      }

      break;
    }

    swift_isUniquelyReferenced_nonNull_native();
    sub_1B214A630();

    v8 = v41;
    v4 = v42;
    v12 = v40;
  }

  while (1)
  {
    v5 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v5 >= v12)
    {

      *a2 = v37;
      return;
    }

    v11 = *(v8 + 8 * v5);
    ++v14;
    if (v11)
    {
      goto LABEL_12;
    }
  }

LABEL_37:
  __break(1u);
}

void *sub_1B21C9B3C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a1;
  if (a3 && (v7 = a3, a1))
  {

    v7 = sub_1B21CACB8(v8, a3, sub_1B21CB0CC, sub_1B21CB0CC);
  }

  else
  {
  }

  if (a4 && a2)
  {

    sub_1B21CACB8(v9, a4, sub_1B21CAE7C, sub_1B21CAE7C);
  }

  else
  {
  }

  return v7;
}

uint64_t sub_1B21C9C40(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return a2;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      do
      {
LABEL_9:
        v6 &= v6 - 1;
        result = sub_1B22463C0();
      }

      while (v6);
      continue;
    }
  }

  __break(1u);
  return result;
}