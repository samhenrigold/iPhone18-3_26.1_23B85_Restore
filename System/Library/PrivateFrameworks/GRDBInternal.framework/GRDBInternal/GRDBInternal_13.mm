uint64_t sub_1B220552C(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t sub_1B2205574(uint64_t a1)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1B2203C40(a1, v2 | *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

uint64_t sub_1B2205598()
{

  swift_unknownObjectRelease();
  sub_1B2113B74();

  return swift_deallocObject();
}

uint64_t sub_1B22055D4(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 17))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1B2204FD0(a1, a2, v3 | *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

unint64_t sub_1B22055F8@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = sub_1B2205350(*a1, *a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

uint64_t static DatabaseDateComponents.fromDatabaseValue(_:)(uint64_t a1)
{
  sub_1B2111BA0();
  v3 = sub_1B22522F0();
  v4 = sub_1B2111894(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1B2111844();
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v7 == 3)
  {
    sub_1B22522E0();
    v8 = sub_1B22522C0();
    if (v9)
    {
      v6 = v8;
      v5 = v9;
      goto LABEL_6;
    }
  }

  else if (v7 == 2)
  {

LABEL_6:
    sub_1B2175A64(v6, v5, v1);
  }

  v11 = type metadata accessor for DatabaseDateComponents(0);
  return sub_1B21117B4(v1, 1, 1, v11);
}

uint64_t DatabaseDateComponents.init(sqliteStatement:index:)@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v5 = sub_1B2251D00();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  sub_1B2111844();
  v9 = v8 - v7;
  v10 = type metadata accessor for DatabaseDateComponents(0);
  sub_1B21118A0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1B2111844();
  v14 = v13 - v12;
  v15 = sub_1B21619D8(&qword_1EB7A1338, &qword_1B2260530);
  v16 = sub_1B2111894(v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v29 - v20;
  v22 = sqlite3_column_text(a1, a2);
  if (v22)
  {
    v23 = v22;
    v24 = sqlite3_column_bytes(a1, a2);
    SQLiteDateParser.components(cString:length:)(v23, v24, v21);
    sub_1B2175C54(v21, v18);
    if (sub_1B2122A98(v18, 1, v10) != 1)
    {
      sub_1B2175B30(v18, v14);
      (*(v6 + 16))(v9, v14, v5);
      v27 = *(v14 + *(v10 + 20));
      sub_1B2175BF8(v14);
      v26 = v30;
      *(v30 + *(v10 + 20)) = v27;
      (*(v6 + 32))(v26, v9, v5);
      v25 = 0;
      return sub_1B21117B4(v26, v25, 1, v10);
    }

    sub_1B2205CBC(v18);
  }

  v25 = 1;
  v26 = v30;
  return sub_1B21117B4(v26, v25, 1, v10);
}

uint64_t type metadata accessor for DatabaseDateComponents(uint64_t a1)
{
  result = qword_1ED85D410;
  if (!qword_1ED85D410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

GRDBInternal::DatabaseDateComponents::Format_optional __swiftcall DatabaseDateComponents.Format.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B2252F40();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t DatabaseDateComponents.Format.rawValue.getter()
{
  result = 0x2D4D4D2D79797979;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0x6D6D3A4848;
      break;
    case 5:
    case 6:
      result = 0x73733A6D6D3A4848;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1B2205B88@<X0>(unint64_t *a1@<X8>)
{
  result = DatabaseDateComponents.Format.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t DatabaseDateComponents.dateComponents.getter()
{
  sub_1B2111BA0();
  sub_1B2251D00();
  sub_1B21118A0();
  v4 = *(v3 + 16);

  return v4(v0, v1, v2);
}

uint64_t DatabaseDateComponents.format.getter()
{
  v2 = sub_1B2111BA0();
  result = type metadata accessor for DatabaseDateComponents(v2);
  *v0 = *(v1 + *(result + 20));
  return result;
}

uint64_t DatabaseDateComponents.init(_:format:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  *(a3 + *(type metadata accessor for DatabaseDateComponents(0) + 20)) = v5;
  sub_1B2251D00();
  sub_1B21118A0();
  v8 = *(v7 + 32);

  return v8(a3, a1, v6);
}

uint64_t sub_1B2205CBC(uint64_t a1)
{
  v2 = sub_1B21619D8(&qword_1EB7A1338, &qword_1B2260530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *DatabaseDateComponents.databaseValue.getter()
{
  v2 = sub_1B2111BA0();
  v3 = *(type metadata accessor for DatabaseDateComponents(v2) + 20);
  v4 = *(v1 + v3);
  v5 = MEMORY[0x1E69E6530];
  v6 = MEMORY[0x1E69E65A8];
  if (v4 > 3)
  {
    v17 = 0;
    v19 = 0;
  }

  else
  {
    v7 = sub_1B2251C60();
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = v7;
    }

    v10 = sub_1B2251C80();
    if (v11)
    {
      v12 = 1;
    }

    else
    {
      v12 = v10;
    }

    v13 = sub_1B2251C20();
    if (v14)
    {
      v15 = 1;
    }

    else
    {
      v15 = v13;
    }

    sub_1B21619D8(&qword_1EB7A2BC8, &qword_1B2260538);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1B2260500;
    *(v16 + 56) = v5;
    *(v16 + 64) = v6;
    *(v16 + 32) = v9;
    *(v16 + 96) = v5;
    *(v16 + 104) = v6;
    *(v16 + 72) = v12;
    *(v16 + 136) = v5;
    *(v16 + 144) = v6;
    *(v16 + 112) = v15;
    v17 = sub_1B22522D0();
    v19 = v18;
    v4 = *(v1 + v3);
  }

  v20 = v4;
  v21 = v4;
  switch(v4)
  {
    case 1u:
    case 4u:
      sub_1B2251C40();
      v22 = sub_1B2251CA0();
      if (v23)
      {
        v24 = 0;
      }

      else
      {
        v24 = v22;
      }

      sub_1B21619D8(&qword_1EB7A2BC8, &qword_1B2260538);
      v25 = swift_allocObject();
      sub_1B2112D48(v25, xmmword_1B225B140)[4].n128_u64[1] = v24;
      sub_1B21162B8();
      goto LABEL_37;
    case 2u:
    case 5u:
      sub_1B2251C40();
      v40 = sub_1B2251CA0();
      if (v41)
      {
        v42 = 0;
      }

      else
      {
        v42 = v40;
      }

      v43 = sub_1B2251CC0();
      if (v44)
      {
        v45 = 0;
      }

      else
      {
        v45 = v43;
      }

      sub_1B21619D8(&qword_1EB7A2BC8, &qword_1B2260538);
      v46 = swift_allocObject();
      v47 = sub_1B2112D48(v46, xmmword_1B2260500);
      v47[4].n128_u64[1] = v42;
      v47[8].n128_u64[1] = v5;
      v47[9].n128_u64[0] = v6;
      v47[7].n128_u64[0] = v45;
      sub_1B21162B8();
      goto LABEL_37;
    case 3u:
    case 6u:
      sub_1B2251C40();
      v26 = sub_1B2251CA0();
      if (v27)
      {
        v28 = 0;
      }

      else
      {
        v28 = v26;
      }

      v29 = sub_1B2251CC0();
      if (v30)
      {
        v31 = 0;
      }

      else
      {
        v31 = v29;
      }

      v32 = sub_1B2251C00();
      v34 = v33;
      v35 = v32;
      sub_1B21619D8(&qword_1EB7A2BC8, &qword_1B2260538);
      v36 = swift_allocObject();
      result = sub_1B2112D48(v36, xmmword_1B2260510);
      result[9] = v28;
      result[17] = v5;
      result[18] = v6;
      result[14] = v31;
      v38 = v35 / 1000000.0;
      if (v34)
      {
        v38 = 0.0;
      }

      v39 = round(v38);
      if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
        goto LABEL_49;
      }

      if (v39 <= -9.22337204e18)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      if (v39 < 9.22337204e18)
      {
        result[22] = v5;
        result[23] = v6;
        result[19] = v39;
LABEL_37:
        v20 = sub_1B22522D0();
        v21 = v48;
LABEL_38:
        sub_1B21619D8(&qword_1EB7A1178, &qword_1B2254998);
        inited = swift_initStackObject();
        v50 = 0;
        *(inited + 16) = xmmword_1B225B140;
        *(inited + 32) = v17;
        *(inited + 40) = v19;
        v51 = inited + 40;
        *(inited + 48) = v20;
        *(inited + 56) = v21;
        v52 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v53 = (v51 + 16 * v50);
          do
          {
            if (++v50 == 3)
            {
              swift_setDeallocating();
              sub_1B21B712C();
              sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
              sub_1B215175C();
              v61 = sub_1B2252250();
              v63 = v62;

              *v0 = v61;
              *(v0 + 8) = v63;
              *(v0 + 16) = 2;
              return result;
            }

            v54 = v53 + 2;
            v55 = *v53;
            v53 += 2;
          }

          while (!v55);
          v56 = *(v54 - 3);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1B214400C();
            v52 = v59;
          }

          v57 = *(v52 + 16);
          if (v57 >= *(v52 + 24) >> 1)
          {
            sub_1B214400C();
            v52 = v60;
          }

          *(v52 + 16) = v57 + 1;
          v58 = v52 + 16 * v57;
          *(v58 + 32) = v56;
          *(v58 + 40) = v55;
        }
      }

LABEL_50:
      __break(1u);
      return result;
    default:
      goto LABEL_38;
  }
}

uint64_t DatabaseDateComponents.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1B21619D8(&qword_1EB7A1338, &qword_1B2260530);
  v6 = sub_1B2111894(v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15[-1] - v7;
  sub_1B21139A0(a1, a1[3]);
  sub_1B2116788();
  sub_1B2253490();
  if (!v2)
  {
    sub_1B21139A0(v15, v15[3]);
    sub_1B2116788();
    v9 = sub_1B2253200();
    v11 = v10;

    sub_1B2175A64(v9, v11, v8);
    swift_bridgeObjectRelease_n();
    v12 = type metadata accessor for DatabaseDateComponents(0);
    if (sub_1B2122A98(v8, 1, v12) == 1)
    {
      sub_1B2205CBC(v8);
      sub_1B2252D40();
      swift_allocError();
      sub_1B2252D20();
      swift_willThrow();
    }

    else
    {
      sub_1B2175B30(v8, a2);
    }

    sub_1B2113208(v15);
  }

  return sub_1B2113208(a1);
}

uint64_t DatabaseDateComponents.encode(to:)(void *a1)
{
  v2 = sub_1B22522F0();
  v3 = sub_1B2111894(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1B2111844();
  sub_1B21139A0(a1, a1[3]);
  sub_1B22534B0();
  DatabaseDateComponents.databaseValue.getter();
  if (v12 == 3)
  {
    sub_1B22522E0();
    sub_1B2114F30();
    sub_1B22522C0();
    v9 = v8;
    v10 = sub_1B2114F30();
    result = sub_1B2113A44(v10, v11, 3);
    if (!v9)
    {
      goto LABEL_6;
    }

LABEL_5:
    sub_1B21A1628(v13, v13[3]);
    sub_1B2114F30();
    sub_1B2253230();

    return sub_1B2113208(v13);
  }

  if (v12 == 2)
  {
    goto LABEL_5;
  }

  v4 = sub_1B2114F30();
  result = sub_1B2113A44(v4, v5, v6);
LABEL_6:
  __break(1u);
  return result;
}

uint64_t sub_1B2206464@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1B2251D00();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1B21619D8(&qword_1EB7A1338, &qword_1B2260530);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v25[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v25[-v18];
  v20 = sqlite3_column_text(a1, a2);
  if (v20)
  {
    v21 = v20;
    v22 = sqlite3_column_bytes(a1, a2);
    SQLiteDateParser.init()();
    SQLiteDateParser.components(cString:length:)(v21, v22, v19);
    sub_1B2175C54(v19, v16);
    if (sub_1B2122A98(v16, 1, a3) != 1)
    {
      sub_1B2175B30(v16, v13);
      DatabaseDateComponents.dateComponents.getter();
      DatabaseDateComponents.format.getter();
      sub_1B2175BF8(v13);
      DatabaseDateComponents.init(_:format:)(v10, &v26, a4);
      v23 = 0;
      return sub_1B21117B4(a4, v23, 1, a3);
    }

    sub_1B2205CBC(v16);
  }

  v23 = 1;
  return sub_1B21117B4(a4, v23, 1, a3);
}

unint64_t sub_1B2206694()
{
  result = qword_1EB7A2BD0[0];
  if (!qword_1EB7A2BD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB7A2BD0);
  }

  return result;
}

uint64_t sub_1B2206710(uint64_t a1)
{
  result = sub_1B2251D00();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DatabaseDateComponents.Format(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for DatabaseDateComponents.Format(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t SQLiteDateParser.components(cString:length:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B21619D8(&qword_1EB7A1340, &unk_1B22606D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1B21619D8(&qword_1EB7A1348, &qword_1B2255048);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1B2251D00();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v44[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44[-v13];
  if (a2 >= 5)
  {
    if (*(a1 + 4) == 45)
    {
      sub_1B2251F70();
      sub_1B2112D5C();
      sub_1B21117B4(v20, v21, v22, v23);
      sub_1B2251FA0();
      sub_1B2112D5C();
      sub_1B21117B4(v24, v25, v26, v27);
      sub_1B21177B0();
      v28 = sub_1B2115314();
      sub_1B2206D14(v28, v29);
      v30 = v45;
      if (v45 == 7 || v46)
      {
        (*(v9 + 8))(v14, v8);
LABEL_13:
        v41 = type metadata accessor for DatabaseDateComponents(0);
        v42 = a3;
        v43 = 1;
        return sub_1B21117B4(v42, v43, 1, v41);
      }

      (*(v9 + 32))(a3, v14, v8);
    }

    else
    {
      if (*(a1 + 2) != 58)
      {
        goto LABEL_2;
      }

      sub_1B2251F70();
      sub_1B2112D5C();
      sub_1B21117B4(v31, v32, v33, v34);
      sub_1B2251FA0();
      sub_1B2112D5C();
      sub_1B21117B4(v35, v36, v37, v38);
      sub_1B21177B0();
      v39 = sub_1B2115314();
      sub_1B2206E64(v39, v40);
      v30 = v45;
      if (v45 == 7 || v46)
      {
        (*(v9 + 8))(v11, v8);
        goto LABEL_13;
      }

      (*(v9 + 32))(a3, v11, v8);
    }

    v41 = type metadata accessor for DatabaseDateComponents(0);
    *(a3 + *(v41 + 20)) = v30;
    v42 = a3;
    v43 = 0;
    return sub_1B21117B4(v42, v43, 1, v41);
  }

LABEL_2:
  type metadata accessor for DatabaseDateComponents(0);
  sub_1B2112D5C();

  return sub_1B21117B4(v15, v16, v17, v18);
}

uint64_t sub_1B2206D14@<X0>(uint64_t a1@<X0>, char *a3@<X8>)
{
  result = sub_1B22071C4();
  if (v6)
  {
    goto LABEL_7;
  }

  v7 = *(a1 + 8);
  v8 = v7 < 1;
  v9 = v7 - 1;
  if (v8)
  {
    goto LABEL_7;
  }

  if (**a1 != 45)
  {
    goto LABEL_7;
  }

  ++*a1;
  *(a1 + 8) = v9;
  result = sub_1B220731C();
  if (v10)
  {
    goto LABEL_7;
  }

  result = sub_1B22072CC(45);
  if ((result & 1) == 0)
  {
    goto LABEL_7;
  }

  result = sub_1B220731C();
  if (v11)
  {
    goto LABEL_7;
  }

  sub_1B2251C70();
  sub_1B2251C90();
  result = sub_1B2251C30();
  if (!*(a1 + 8))
  {
    *a3 = 0;
    return result;
  }

  if ((sub_1B22072CC(32) & 1) == 0)
  {
    result = sub_1B22072CC(84);
    if ((result & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  result = sub_1B2206E64(a1, &v13);
  switch(v13)
  {
    case 6:
      v12 = 3;
      break;
    case 5:
      v12 = 2;
      break;
    case 4:
      v12 = 1;
      break;
    default:
LABEL_7:
      v12 = 7;
      break;
  }

  *a3 = v12;
  return result;
}

uint64_t sub_1B2206E64@<X0>(char **a1@<X0>, char *a3@<X8>)
{
  result = sub_1B220731C();
  if (v6)
  {
    goto LABEL_5;
  }

  v7 = a1[1];
  v8 = v7 < 1;
  v9 = (v7 - 1);
  if (v8)
  {
    goto LABEL_5;
  }

  if (**a1 != 58)
  {
    goto LABEL_5;
  }

  ++*a1;
  a1[1] = v9;
  result = sub_1B220731C();
  if (v10)
  {
    goto LABEL_5;
  }

  sub_1B2251C50();
  result = sub_1B2251CB0();
  if (!a1[1] || (result = sub_1B22073A8(a1), (result & 1) != 0))
  {
    v11 = 4;
    goto LABEL_6;
  }

  result = sub_1B22072CC(58);
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_1B220731C();
  if (v12)
  {
    goto LABEL_5;
  }

  result = sub_1B2251CD0();
  if (!a1[1] || (result = sub_1B22073A8(a1), (result & 1) != 0))
  {
    v11 = 5;
    goto LABEL_6;
  }

  result = sub_1B22072CC(46);
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = a1[1];
  if (v13 < 1)
  {
    goto LABEL_5;
  }

  if (**a1 - 48 != (**a1 - 48))
  {
    __break(1u);
    goto LABEL_41;
  }

  if ((**a1 - 48) > 9u)
  {
    goto LABEL_5;
  }

  v14 = (v13 - 1);
  ++*a1;
  a1[1] = v14;
  if (!v14)
  {
    goto LABEL_21;
  }

  result = sub_1B22073A8(a1);
  if (result)
  {
    goto LABEL_21;
  }

  v15 = a1[1];
  if (v15 < 1)
  {
    goto LABEL_5;
  }

  if (**a1 - 48 != (**a1 - 48))
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if ((**a1 - 48) > 9u)
  {
    goto LABEL_5;
  }

  v16 = (v15 - 1);
  ++*a1;
  a1[1] = v16;
  if (!v16 || (result = sub_1B22073A8(a1), (result & 1) != 0))
  {
LABEL_21:
    result = sub_1B2251C10();
LABEL_22:
    v11 = 6;
    goto LABEL_6;
  }

  v17 = a1[1];
  v18 = v17 - 1;
  if (v17 < 1)
  {
LABEL_5:
    v11 = 7;
LABEL_6:
    *a3 = v11;
    return result;
  }

  v19 = *a1;
  if (**a1 - 48 == (**a1 - 48))
  {
    if ((**a1 - 48) <= 9u)
    {
      v20 = v19 + 1;
      *a1 = v19 + 1;
      a1[1] = v18;
      result = sub_1B2251C10();
      v21 = &v19[v17];
      while (1)
      {
        if (v18 < 1)
        {
          v18 = 0;
          goto LABEL_39;
        }

        if ((*v20 - 48) != *v20 - 48)
        {
          goto LABEL_42;
        }

        if ((*v20 - 48) > 9u)
        {
          break;
        }

        ++v20;
        --v18;
      }

      v21 = v20;
LABEL_39:
      *a1 = v21;
      a1[1] = v18;
      result = sub_1B22073A8(a1);
      goto LABEL_22;
    }

    goto LABEL_5;
  }

LABEL_43:
  __break(1u);
  return result;
}

_BYTE *storeEnumTagSinglePayload for SQLiteDateParser(_BYTE *result, int a2, int a3)
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

uint64_t sub_1B22071C4()
{
  v1 = v0[1];
  if (v1 < 1)
  {
    return 0;
  }

  v2 = *v0;
  v3 = **v0 - 48;
  if (v3 != (**v0 - 48))
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if ((**v0 - 48) > 9u)
  {
    return 0;
  }

  *v0 = v2 + 1;
  v0[1] = (v1 - 1);
  if (v1 == 1)
  {
    return 0;
  }

  v4 = v2[1] - 48;
  if (v4 != v4)
  {
    goto LABEL_16;
  }

  if ((v2[1] - 48) > 9u)
  {
    return 0;
  }

  *v0 = v2 + 2;
  v0[1] = (v1 - 2);
  if (v1 < 3)
  {
    return 0;
  }

  v5 = v2[2] - 48;
  if (v5 != v5)
  {
    goto LABEL_17;
  }

  if ((v2[2] - 48) > 9u)
  {
    return 0;
  }

  *v0 = v2 + 3;
  v0[1] = (v1 - 3);
  if (v1 == 3)
  {
    return 0;
  }

  v6 = v2[3] - 48;
  if (v6 != v6)
  {
    goto LABEL_18;
  }

  if ((v2[3] - 48) > 9u)
  {
    return 0;
  }

  *v0 = v2 + 4;
  v0[1] = (v1 - 4);
  return 10 * (10 * (v4 + 10 * v3) + v5) + v6;
}

uint64_t sub_1B22072CC(uint64_t result)
{
  v2 = v1[1];
  v3 = v2 < 1;
  v4 = (v2 - 1);
  if (v3)
  {
    return 0;
  }

  v5 = result;
  if (result > 0x7F)
  {
    __break(1u);
  }

  else
  {
    result = 0;
    if ((**v1 & 0x80000000) == 0 && **v1 == v5)
    {
      ++*v1;
      v1[1] = v4;
      return 1;
    }
  }

  return result;
}

uint64_t sub_1B220731C()
{
  v1 = v0[1];
  if (v1 < 1)
  {
    return 0;
  }

  v2 = *v0;
  v3 = **v0 - 48;
  if (v3 != (**v0 - 48))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if ((**v0 - 48) > 9u)
  {
    return 0;
  }

  *v0 = v2 + 1;
  v0[1] = (v1 - 1);
  if (v1 == 1)
  {
    return 0;
  }

  v4 = v2[1] - 48;
  if (v4 != v4)
  {
    goto LABEL_10;
  }

  if ((v2[1] - 48) > 9u)
  {
    return 0;
  }

  *v0 = v2 + 2;
  v0[1] = (v1 - 2);
  return (v4 + 10 * v3);
}

uint64_t sub_1B22073A8(char **a1)
{
  v2 = sub_1B21619D8(&qword_1EB7A1340, &unk_1B22606D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = a1[1];
  v4 = v3 < 1;
  v5 = (v3 - 1);
  if (v4)
  {
    return 0;
  }

  v6 = *a1;
  if ((**a1 & 0x80000000) == 0)
  {
    v7 = **a1;
    if (v7 == 43)
    {
      *a1 = (v6 + 1);
      a1[1] = v5;
      v9 = sub_1B220731C();
      if ((v10 & 1) == 0)
      {
        v11 = v9;
        if (sub_1B22072CC(58))
        {
          result = sub_1B220731C();
          if ((v12 & 1) == 0)
          {
            goto LABEL_23;
          }
        }
      }
    }

    else if (v7 == 90)
    {
      *a1 = (v6 + 1);
      a1[1] = v5;
LABEL_6:
      sub_1B2251F80();
      sub_1B2251CF0();
      return 1;
    }
  }

  v13 = a1[1];
  v4 = v13 < 1;
  v14 = (v13 - 1);
  if (!v4 && **a1 == 45)
  {
    ++*a1;
    a1[1] = v14;
    v15 = sub_1B220731C();
    if ((v16 & 1) == 0)
    {
      v11 = v15;
      if (sub_1B22072CC(58))
      {
        result = sub_1B220731C();
        if ((v17 & 1) == 0)
        {
          v18 = 3600 * v11;
          if ((v11 * 3600) >> 64 != (3600 * v11) >> 63)
          {
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          v19 = 60 * result;
          if ((result * 60) >> 64 != (60 * result) >> 63)
          {
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          v20 = __OFADD__(v18, v19);
          v21 = v18 + v19;
          if (v20)
          {
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

          result = -v21;
          if (!__OFSUB__(0, v21))
          {
            goto LABEL_6;
          }

          __break(1u);
LABEL_23:
          v22 = 3600 * v11;
          if ((v11 * 3600) >> 64 != (3600 * v11) >> 63)
          {
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          v23 = 60 * result;
          if ((result * 60) >> 64 != (60 * result) >> 63)
          {
LABEL_32:
            __break(1u);
            return result;
          }

          result = v22 + v23;
          if (!__OFADD__(v22, v23))
          {
            goto LABEL_6;
          }

          __break(1u);
          goto LABEL_28;
        }
      }
    }
  }

  return 0;
}

uint64_t - infix(_:_:)(uint64_t a1, uint64_t a2)
{
  return sub_1B21144A0(a1, a2, 45);
}

{
  return sub_1B211D748(a1, a2, 45);
}

{
  return sub_1B2122314(a1, a2, 45);
}

uint64_t / infix(_:_:)(uint64_t a1, uint64_t a2)
{
  return sub_1B21144A0(a1, a2, 47);
}

{
  return sub_1B211D748(a1, a2, 47);
}

{
  return sub_1B2122314(a1, a2, 47);
}

uint64_t == infix(_:_:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B211592C(a1, a1[3]);
  v5 = sub_1B212DFB4();
  v6(v5);
  v7 = a2[3];
  sub_1B21139A0(a2, v7);
  sub_1B2115328();
  v8(v7);
  v9 = sub_1B2135088(a3);
  sub_1B214412C(v9, v10, v11, v12, v13, v14, v15, v16, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87);
  sub_1B21356F8(v88);
  sub_1B21233E0(v89, v17, v18, v19, v20, v21, v22, v23, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66);
  return sub_1B21356F8(v89);
}

uint64_t == infix(_:_:)(char a1, void *a2)
{
  v2 = a2[3];
  if (a1)
  {
    sub_1B21139A0(a2, a2[3]);
    sub_1B2115328();
    v3(v2);
    sub_1B2113BD0();
    v5 = 0;
  }

  else
  {
    sub_1B21139A0(a2, a2[3]);
    sub_1B2115328();
    v6(v2);
    sub_1B2113BD0();
    v5 = 1;
  }

  sub_1B214E21C(v5, v4);
  sub_1B213CBB8(v16, v7, v8, v9, v10, v11, v12, v13, v15);
  return sub_1B21356F8(v16);
}

uint64_t != infix(_:_:)(void *a1, char a2)
{
  v5[3] = &type metadata for SQLExpression;
  v5[4] = &protocol witness table for SQLExpression;
  sub_1B2117AD0();
  v5[0] = swift_allocObject();
  == infix(_:_:)(a1, a2);
  ! prefix(_:)(v5);
  return sub_1B2113208(v5);
}

uint64_t != infix(_:_:)(char a1, void *a2)
{
  v5[3] = &type metadata for SQLExpression;
  v5[4] = &protocol witness table for SQLExpression;
  sub_1B2117AD0();
  v5[0] = swift_allocObject();
  == infix(_:_:)(a1, a2);
  ! prefix(_:)(v5);
  return sub_1B2113208(v5);
}

uint64_t === infix(_:_:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B211592C(a1, a1[3]);
  v5 = sub_1B212DFB4();
  v6(v5);
  v7 = a2[3];
  sub_1B21139A0(a2, v7);
  sub_1B2115328();
  v8(v7);
  v9 = sub_1B21353B0(2, v67, a3);
  sub_1B214412C(v9, v10, v11, v12, v13, v14, v15, v16, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67[0], v67[1], v67[2], v67[3], v67[4], v67[5], v67[6], v67[7], v67[8], v67[9], v67[10], v67[11], v67[12], v67[13], v67[14], v67[15], v67[16], v67[17], v67[18], v67[19], v67[20]);
  sub_1B21356F8(v68);
  sub_1B21233E0(v69, v17, v18, v19, v20, v21, v22, v23, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66);
  return sub_1B21356F8(v69);
}

uint64_t === infix(_:_:)()
{
  sub_1B21131D0();
  sub_1B211592C(v2, v2[3]);
  v3 = sub_1B212DFB4();
  v4(v3);
  sub_1B2134FB0(v1, v19);
  if (v19[3])
  {
    v5 = v19[4];
    sub_1B211FE78(v19);
    v6 = sub_1B2116AC4();
    v7(v6, v5);
    sub_1B2113208(v19);
  }

  else
  {
    sub_1B214BF9C(v19);
    *v18 = 0;
    *&v18[8] = 0;
    v18[16] = 4;
    sub_1B2127D7C(v18);
    sub_1B2124244(__src, v8, v9, v10, v11, v12, v13, v14, v16, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20]);
  }

  sub_1B21353B0(2, v20, v0);
  memcpy(__dst, __src, 0xA3uLL);
  sub_1B21356F8(__dst);
  memcpy(v18, v20, 0xA3uLL);
  return sub_1B21356F8(v18);
}

{
  sub_1B21131D0();
  sub_1B2134FB0(v2, &v40);
  if (v41)
  {
    sub_1B2134D5C(&v40, v42);
    v3 = v42[4];
    sub_1B21139A0(v42, v42[3]);
    v4 = sub_1B212DFB4();
    v5(v4, v3);
    sub_1B211592C(v1, v1[3]);
    v6 = sub_1B212DFB4();
    v7(v6);
    sub_1B21353B0(2, __src, v0);
    sub_1B2124244(v38, v8, v9, v10, v11, v12, v13, v14, v33, v35[0], v35[1], v35[2], v35[3], v35[4], v35[5], v35[6], v35[7], v35[8], v35[9], v35[10], v35[11], v35[12], v35[13], v35[14], v35[15], v35[16], v35[17], v35[18], v35[19], v35[20]);
    sub_1B21356F8(v38);
    memcpy(__dst, __src, 0xA3uLL);
    sub_1B21356F8(__dst);
    return sub_1B2113208(v42);
  }

  else
  {
    sub_1B214BF9C(&v40);
    sub_1B211592C(v1, v1[3]);
    v16 = sub_1B212DFB4();
    v18 = v17(v16);
    sub_1B2121244(v18, v19, v20, v21, v22, v23, v24, v25, v33, v35[0], v35[1], v35[2], v35[3], v35[4], v35[5], v35[6], v35[7], v35[8], v35[9], v35[10], v35[11], v35[12], v35[13], v35[14], v35[15], v35[16], v35[17], v35[18], v35[19], v35[20], v36[0], v36[1], v36[2], v36[3], v36[4], v36[5], v36[6], v36[7], v36[8], v36[9], v36[10], v36[11], v36[12], v36[13], v36[14], v36[15], v36[16], v36[17], v36[18], v36[19], v36[20], __src[0], __src[1], __src[2]);
    memcpy(v35, __src, 0xA3uLL);
    sub_1B21353B0(2, v36, v0);
    memcpy(v38, v35, 0xA3uLL);
    sub_1B21356F8(v38);
    sub_1B2124244(__dst, v26, v27, v28, v29, v30, v31, v32, v34, v35[0], v35[1], v35[2], v35[3], v35[4], v35[5], v35[6], v35[7], v35[8], v35[9], v35[10], v35[11], v35[12], v35[13], v35[14], v35[15], v35[16], v35[17], v35[18], v35[19], v35[20]);
    return sub_1B21356F8(__dst);
  }
}

uint64_t !== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  return sub_1B214EAFC(a1, a2, === infix(_:_:));
}

{
  return sub_1B214EAFC(a1, a2, === infix(_:_:));
}

{
  return sub_1B214EAFC(a1, a2, === infix(_:_:));
}

uint64_t <= infix(_:_:)(uint64_t a1, uint64_t a2)
{
  return sub_1B2122D28(a1, a2, 15676);
}

{
  return sub_1B211A30C(a1, a2, 15676);
}

{
  return sub_1B211E538(a1, a2, 15676);
}

uint64_t < infix(_:_:)(uint64_t a1, uint64_t a2)
{
  return sub_1B211D748(a1, a2, 60);
}

{
  return sub_1B21144A0(a1, a2, 60);
}

{
  return sub_1B2122314(a1, a2, 60);
}

uint64_t > infix(_:_:)(uint64_t a1, uint64_t a2)
{
  return sub_1B211D748(a1, a2, 62);
}

{
  return sub_1B21144A0(a1, a2, 62);
}

{
  return sub_1B2122314(a1, a2, 62);
}

uint64_t >= infix(_:_:)(uint64_t a1, uint64_t a2)
{
  return sub_1B2122D28(a1, a2, 15678);
}

{
  return sub_1B211A30C(a1, a2, 15678);
}

{
  return sub_1B211E538(a1, a2, 15678);
}

uint64_t sub_1B2208288()
{
  sub_1B21130A8();
  sub_1B211592C(v1, v1[3]);
  v2 = sub_1B2114010();
  v3(v2);
  v4 = v0[4];
  sub_1B21139A0(v0, v0[3]);
  v5 = sub_1B2114010();
  v7 = v6(v5, v4);
  v15 = sub_1B2115F40(v7, v8, v9, v10, v11, v12, v13, v14, v31, v34, v37, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91);
  sub_1B214412C(v15, v16, v17, v18, v19, v20, v21, v22, v32, v35, v38, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114);
  sub_1B21356F8(v115);
  sub_1B21233E0(v116, v23, v24, v25, v26, v27, v28, v29, v33, v36, v39, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93);
  return sub_1B21356F8(v116);
}

void *- prefix(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[3];
  sub_1B21139A0(a1, v3);
  sub_1B2115328();
  v4(v3);
  v5 = swift_allocObject();
  *(v5 + 16) = 45;
  *(v5 + 24) = 0xE100000000000000;
  *(v5 + 32) = 0;
  sub_1B213CBB8((v5 + 40), v6, v7, v8, v9, v10, v11, v12, v14);
  __src[0] = v5;
  sub_1B21D0684(__src);
  return memcpy(a2, __src, 0xA3uLL);
}

uint64_t sub_1B22087A0()
{
  sub_1B21130A8();
  sub_1B211592C(v1, v1[3]);
  v2 = sub_1B2114010();
  v3(v2);
  v4 = v0[3];
  sub_1B21139A0(v0, v4);
  sub_1B2115328();
  v6 = v5(v4);
  v14 = sub_1B2115F40(v6, v7, v8, v9, v10, v11, v12, v13, v30, v33, v36, v39, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90);
  sub_1B214412C(v14, v15, v16, v17, v18, v19, v20, v21, v31, v34, v37, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113);
  sub_1B21356F8(v114);
  sub_1B21233E0(v115, v22, v23, v24, v25, v26, v27, v28, v32, v35, v38, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92);
  return sub_1B21356F8(v115);
}

uint64_t sub_1B2208850()
{
  sub_1B21130A8();
  v2 = v1[4];
  sub_1B21139A0(v1, v1[3]);
  v3 = sub_1B2114010();
  v4(v3, v2);
  v5 = v0[3];
  sub_1B21139A0(v0, v5);
  sub_1B2115328();
  v7 = v6(v5);
  v15 = sub_1B2115F40(v7, v8, v9, v10, v11, v12, v13, v14, v31, v34, v37, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91);
  sub_1B214412C(v15, v16, v17, v18, v19, v20, v21, v22, v32, v35, v38, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114);
  sub_1B21356F8(v115);
  sub_1B21233E0(v116, v23, v24, v25, v26, v27, v28, v29, v33, v36, v39, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93);
  return sub_1B21356F8(v116);
}

uint64_t Range<>.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = sub_1B2123524(a1, a2, a3, a4, a5, a6, a7, a8, v18, v19[0], v19[1], v19[2], v20, v21, v22[0], v22[1], v22[2], v23, v24);
  v14 = *(*(v10 - 8) + 16);
  v14(v13, v9, v10);
  v25[3] = &type metadata for SQLExpression;
  v25[4] = &protocol witness table for SQLExpression;
  sub_1B2117AD0();
  v25[0] = swift_allocObject();
  >= infix(_:_:)(v8, v22);
  sub_1B2113208(v22);
  v15 = *(v12 + 36);
  v20 = v10;
  v21 = v11;
  v16 = sub_1B212FF14(v19);
  v14(v16, v9 + v15, v10);
  v23 = &type metadata for SQLExpression;
  v24 = &protocol witness table for SQLExpression;
  sub_1B2117AD0();
  v22[0] = swift_allocObject();
  < infix(_:_:)(v8, v19);
  sub_1B2113208(v19);
  && infix(_:_:)(v25, v22);
  sub_1B2113208(v22);
  return sub_1B2113208(v25);
}

{
  v13 = sub_1B2123524(a1, a2, a3, a4, a5, a6, a7, a8, v18, v19[0], v19[1], v19[2], v20, v21, v22[0], v22[1], v22[2], v23, v24);
  v14 = *(*(v10 - 8) + 16);
  v14(v13, v9, v10);
  v25[3] = &type metadata for SQLExpression;
  v25[4] = &protocol witness table for SQLExpression;
  sub_1B2117AD0();
  v25[0] = swift_allocObject();
  >= infix(_:_:)(v8, v22);
  sub_1B2113208(v22);
  v15 = *(v12 + 36);
  v20 = v10;
  v21 = v11;
  v16 = sub_1B212FF14(v19);
  v14(v16, v9 + v15, v10);
  v23 = &type metadata for SQLExpression;
  v24 = &protocol witness table for SQLExpression;
  sub_1B2117AD0();
  v22[0] = swift_allocObject();
  < infix(_:_:)(v8, v19);
  sub_1B2113208(v19);
  && infix(_:_:)(v25, v22);
  sub_1B2113208(v22);
  return sub_1B2113208(v25);
}

uint64_t ClosedRange<>.contains(_:)()
{
  sub_1B21130A8();
  sub_1B211592C(v1, v1[3]);
  v2 = sub_1B2114010();
  v3(v2);
  v4 = sub_1B2208FF4();
  v0(v4);
  v5 = sub_1B212E2F8();
  v6 = (v0)(v5);
  sub_1B213CE8C(v6, v7, v8, v9, v10, v11, v12, v13, v29, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, __src[0]);
  sub_1B213CBB8(v94, v14, v15, v16, v17, v18, v19, v20, v30);
  sub_1B21356F8(v94);
  sub_1B21233E0(v95, v21, v22, v23, v24, v25, v26, v27, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71);
  sub_1B21356F8(v95);
  memcpy(__dst, __src, 0xA3uLL);
  return sub_1B21356F8(__dst);
}

{
  sub_1B21130A8();
  sub_1B211592C(v1, v1[3]);
  v2 = sub_1B2114010();
  v3(v2);
  v4 = sub_1B2208FF4();
  v0(v4);
  v5 = sub_1B212E2F8();
  v6 = (v0)(v5);
  sub_1B213CE8C(v6, v7, v8, v9, v10, v11, v12, v13, v29, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, __src[0]);
  sub_1B213CBB8(v94, v14, v15, v16, v17, v18, v19, v20, v30);
  sub_1B21356F8(v94);
  sub_1B21233E0(v95, v21, v22, v23, v24, v25, v26, v27, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71);
  sub_1B21356F8(v95);
  memcpy(__dst, __src, 0xA3uLL);
  return sub_1B21356F8(__dst);
}

uint64_t Sequence<>.contains(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X7>, void *a5@<X8>)
{
  __src[0] = sub_1B2150D28(sub_1B2208DE0, 0, a2, &type metadata for SQLExpression, MEMORY[0x1E69E73E0], a3, MEMORY[0x1E69E7410], a4);
  sub_1B21513E8(__src);
  memcpy(__dst, __src, sizeof(__dst));
  v7 = a1[3];
  sub_1B21139A0(a1, v7);
  sub_1B2115328();
  v8(v7);
  sub_1B2151410(v17, a5);
  sub_1B213CBB8(v20, v9, v10, v11, v12, v13, v14, v15, v17[0]);
  sub_1B21356F8(v20);
  memcpy(v21, __dst, 0xA2uLL);
  return sub_1B2151630(v21);
}

void *sub_1B2208DE0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1B21139A0(a1, v3);
  (*(v4 + 8))(__src, v3, v4);
  return memcpy(a2, __src, 0xA3uLL);
}

void *SQLSpecificExpressible.like(_:escape:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  (*(*(a4 + 8) + 8))(v18, a3);
  v8 = a1[3];
  v9 = a1[4];
  sub_1B21139A0(a1, v8);
  (*(v9 + 8))(v19, v8, v9);
  sub_1B2134FB0(a2, v16);
  if (v16[3])
  {
    v10 = v16[4];
    sub_1B211FE78(v16);
    v11 = sub_1B2116AC4();
    v12(v11, v10);
    nullsub_1();
    sub_1B2113208(v16);
    memcpy(__dst, __src, 0xA3uLL);
  }

  else
  {
    sub_1B214BF9C(v16);
    sub_1B2179418(__dst);
  }

  v13 = swift_allocObject();
  v13[2] = 1162561868;
  v13[3] = 0xE400000000000000;
  v13[4] = 0x454B494C20544F4ELL;
  v13[5] = 0xE800000000000000;
  memcpy(v13 + 6, v18, 0xA3uLL);
  memcpy(v13 + 27, v19, 0xA3uLL);
  memcpy(v13 + 48, __dst, 0xA3uLL);
  __src[0] = v13;
  sub_1B21D0530(__src);
  return memcpy(a5, __src, 0xA3uLL);
}

void sub_1B2209060(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v7 = *a1;
  if (*a1)
  {
    v8 = a1[1];
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
  }

  a6();
  __break(1u);
}

uint64_t sub_1B2209154(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B2209190(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

_BYTE *sub_1B22091F4(_BYTE *result, int a2, int a3)
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

void FetchRequest<>.observationForFirst()()
{
  FetchRequest<>.observationForAll()();
}

{
  FetchRequest<>.observationForAll()();
}

{
  FetchRequest<>.observationForAll()();
}

{
  FetchRequest<>.observationForAll()();
}

void static ValueObservation<>.trackingOne<A>(_:)()
{
  static ValueObservation<>.trackingAll<A>(_:)();
}

{
  static ValueObservation<>.trackingAll<A>(_:)();
}

{
  static ValueObservation<>.trackingAll<A>(_:)();
}

uint64_t sub_1B2209440(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 227))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 72);
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

uint64_t sub_1B2209480(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
    *(result + 226) = 0;
    *(result + 224) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 227) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 227) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1B220950C(void *result)
{
  v21 = result[3];
  v22 = result[4] >> 1;
  v1 = v22 - v21;
  if (__OFSUB__(v22, v21))
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v19 = result[2];
  v20 = *result;
  v2 = *(*result + 16);
  if (v1 >= v2)
  {
    v3 = *(*result + 16);
  }

  else
  {
    v3 = v22 - v21;
  }

  v30 = MEMORY[0x1E69E7CC0];
  result = sub_1B216EE18(0, v3 & ~(v3 >> 63), 0);
  if (v1 < 0)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    return result;
  }

  v4 = v30;
  if (v3)
  {

    result = swift_unknownObjectRetain();
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v23 = v21;
    while (v5 < v3)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_45;
      }

      if (v7)
      {
        sub_1B220A81C(__src);
        memcpy(__dst, __src, 0x1CBuLL);
        v7 = 1;
      }

      else
      {
        v9 = v2;
        if (v6 == v2)
        {
          goto LABEL_16;
        }

        if (v6 >= v2)
        {
          goto LABEL_49;
        }

        result = memcpy(__src, (v20 + 32 + 232 * v6), 0xE3uLL);
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_50;
        }

        if (v23 == v22)
        {
LABEL_16:
          sub_1B220A81C(__src);
          memcpy(__dst, __src, 0x1CBuLL);
          v7 = 1;
        }

        else
        {
          if (v23 < v21 || v23 >= v22)
          {
            goto LABEL_51;
          }

          memcpy(v26, (v19 + 232 * v23++), 0xE3uLL);
          memcpy(__dst, __src, 0xE3uLL);
          memcpy(&__dst[232], v26, 0xE3uLL);
          nullsub_1();
          sub_1B21819B8(__src, v28);
          sub_1B21819B8(v26, v28);
          v7 = 0;
        }

        v6 = v9;
      }

      memcpy(__src, __dst, 0x1CBuLL);
      result = sub_1B220A79C(__src);
      if (result == 1)
      {
        goto LABEL_54;
      }

      sub_1B220A42C(__dst, &__dst[232], v28);
      memcpy(v26, __dst, 0x1CBuLL);
      sub_1B220A7B4(v26);
      v30 = v4;
      v12 = *(v4 + 16);
      v11 = *(v4 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1B216EE18((v11 > 1), v12 + 1, 1);
        v4 = v30;
      }

      *(v4 + 16) = v12 + 1;
      result = memcpy((v4 + 232 * v12 + 32), v28, 0xE3uLL);
      ++v5;
      if (v8 == v3)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  result = swift_unknownObjectRetain();
  v6 = 0;
  v7 = 0;
  v23 = v21;
LABEL_30:
  v13 = v23;
  v14 = (v19 + 232 * v23);
  v15 = 232 * v6 + 32;
  if ((v7 & 1) == 0)
  {
    while (v2 != v6)
    {
      if (v6 >= v2)
      {
        goto LABEL_46;
      }

      result = memcpy(v28, (v20 + v15), 0xE3uLL);
      if (__OFADD__(v6, 1))
      {
        goto LABEL_47;
      }

      if (v22 == v13)
      {
        break;
      }

      if (v23 < v21 || v13 >= v22)
      {
        goto LABEL_48;
      }

      memcpy(v24, v14, 0xE3uLL);
      memcpy(v26, v28, 0xE3uLL);
      memcpy(&v26[232], v14, 0xE3uLL);
      memcpy(__dst, v26, 0x1CBuLL);
      sub_1B21819B8(v28, __src);
      sub_1B21819B8(v24, __src);
      sub_1B220A42C(__dst, &__dst[232], v25);
      memcpy(__src, __dst, 0x1CBuLL);
      sub_1B220A7B4(__src);
      v30 = v4;
      v18 = *(v4 + 16);
      v17 = *(v4 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1B216EE18((v17 > 1), v18 + 1, 1);
        v4 = v30;
      }

      *(v4 + 16) = v18 + 1;
      result = memcpy((v4 + 232 * v18 + 32), v25, 0xE3uLL);
      v14 += 232;
      ++v6;
      v15 += 232;
      ++v13;
    }
  }

  swift_unknownObjectRelease();

  return v4;
}

uint64_t sub_1B2209954@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(v3 + 16) == 1)
  {
    memcpy(__dst, (v3 + 96), sizeof(__dst));
    v33 = *&__dst[152];
    v34 = *&__dst[144];
    v32 = __dst[160];
    v4 = __dst[161];
    v30 = *&__dst[112];
    v31 = *&__dst[128];
    v5 = __dst[104];
    v28 = *&__dst[72];
    v29 = *&__dst[88];
    v6 = __dst[64];
    v8 = *&__dst[48];
    v7 = *&__dst[56];
    v27 = *&__dst[24];
    v9 = *__dst;
    v10 = *&__dst[8];
    v11 = *&__dst[40];
    v12 = *&__dst[16];
    result = sub_1B2136148(__dst, v35);
    v15 = v27;
    v14 = v28;
    v17 = v29;
    v16 = v30;
    v18 = v31;
    v19 = v32;
    v21 = v33;
    v20 = v34;
LABEL_5:
    *a1 = v9;
    *(a1 + 8) = v10;
    *(a1 + 16) = v12;
    *(a1 + 24) = v15;
    *(a1 + 40) = v11;
    *(a1 + 48) = v8;
    *(a1 + 56) = v7;
    *(a1 + 64) = v6;
    *(a1 + 72) = v14;
    *(a1 + 88) = v17;
    *(a1 + 104) = v5;
    *(a1 + 112) = v16;
    *(a1 + 128) = v18;
    *(a1 + 144) = v20;
    *(a1 + 152) = v21;
    *(a1 + 160) = v19;
    *(a1 + 161) = v4;
    return result;
  }

  swift_bridgeObjectRetain_n();
  v51[0] = v3;
  v51[1] = sub_1B21FD3A0(1, v3);
  v51[2] = v22;
  v51[3] = v23;
  v51[4] = v24;
  v25 = sub_1B220950C(v51);
  swift_unknownObjectRelease();

  sub_1B216E838(v25);

  v26 = *(v3 + 16);
  if (v26)
  {
    memcpy(__dst, (v3 + 232 * v26 - 136), sizeof(__dst));
    sub_1B2136148(__dst, v35);
    sub_1B21C4698();
    sub_1B2137224(__dst);

    v20 = v46;
    v21 = v47;
    v19 = v48;
    v4 = v49;
    v16 = v44;
    v18 = v45;
    v5 = v43;
    v17 = v42;
    v14 = v41;
    v8 = v38;
    v7 = v39;
    v6 = v40;
    v11 = v37;
    v15 = v36;
    v9 = v35[0];
    v10 = v35[1];
    v12 = v35[2];
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_1B2209B4C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a3;
  if (a1)
  {
    switch(a4)
    {
      case 1:
      case 3:
        goto LABEL_14;
      case 2:
        if (qword_1ED85D818 == -1)
        {
          goto LABEL_26;
        }

        goto LABEL_59;
      default:
        if (qword_1ED85D818 == -1)
        {
          goto LABEL_4;
        }

        goto LABEL_57;
    }
  }

  switch(a4)
  {
    case 1:
      if (qword_1ED85D818 != -1)
      {
        goto LABEL_60;
      }

      goto LABEL_36;
    case 2:
    case 3:
LABEL_14:

      goto LABEL_52;
    default:
      if (qword_1ED85D818 == -1)
      {
        goto LABEL_16;
      }

      break;
  }

  while (1)
  {
    a1 = sub_1B2112A24(&qword_1ED85D818);
LABEL_16:
    sub_1B21167C8(a1, a2, a3, a4, a5, a6, a7, a8, v66, v67, v68, v69, v70);
    sub_1B212231C();
    v69 = v8;

    v24 = sub_1B211187C();
    sub_1B21FDA08(v24, v25);
    sub_1B211187C();
    sub_1B21FD8E0();
    sub_1B211D750();
    if (!v15)
    {
      break;
    }

    sub_1B2115340();
    v26 = sub_1B22524A0();
    v27 = MEMORY[0x1B2741E40](v26);
    v29 = v28;

    sub_1B2112208();
    sub_1B2118144();
    sub_1B211780C();
    while (v9)
    {
      v30 = sub_1B211594C(v27);
      v31 = sub_1B2252290();
      v32 = sub_1B21162F8(v30, sel_firstMatchInString_options_range_);

      if (v32)
      {
LABEL_44:

LABEL_45:

LABEL_46:

        goto LABEL_52;
      }
    }

    while (!__OFADD__(v27, 1))
    {
      if (v27 + 1 >= v29)
      {
        goto LABEL_47;
      }

      sub_1B21144A8();
    }

    while (1)
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      a1 = sub_1B2112A24(&qword_1ED85D818);
LABEL_4:
      sub_1B21167C8(a1, a2, a3, a4, a5, a6, a7, a8, v66, v67, v68, v69, v70);
      v8 = *(&xmmword_1ED85D820 + 1);
      v11 = off_1ED85D830;
      v71 = xmmword_1ED85D820;

      v70 = v8;

      v12 = sub_1B211187C();
      v14 = sub_1B21FDA08(v12, v13);
      sub_1B211187C();
      sub_1B21FD8E0();
      sub_1B211D750();
      if (!v15)
      {
        break;
      }

      sub_1B2115340();
      v69 = v10;
      v16 = sub_1B22524A0();
      v17 = MEMORY[0x1B2741E40](v16);
      v19 = v18;

      v72 = v19;
      MEMORY[0x1B2741F40](v17, v19);
      sub_1B2118144();
      v10 = v11;
      sub_1B211780C();
      while (v9)
      {
        v20 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v21 = *(v11[7] + ((v14 << 9) | (8 * v20)));
        v22 = sub_1B2252290();
        v23 = sub_1B21162F8(v21, sel_firstMatchInString_options_range_);

        if (v23)
        {

          goto LABEL_46;
        }
      }

      while (!__OFADD__(v14, 1))
      {
        if ((v14 + 1) >= v19)
        {

          sub_1B21184F8();
          v10 = v69;
          v56 = sub_1B22524A0();
          MEMORY[0x1B2741E40](v56);

          v57 = v17;
          goto LABEL_50;
        }

        sub_1B21144A8();
      }

LABEL_54:
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
LABEL_59:
  a1 = sub_1B2112A24(&qword_1ED85D818);
LABEL_26:
  sub_1B21167C8(a1, a2, a3, a4, a5, a6, a7, a8, v66, v67, v68, v69, v70);
  sub_1B212231C();
  v69 = v8;

  v33 = sub_1B211187C();
  sub_1B21FDA08(v33, v34);
  sub_1B211187C();
  sub_1B21FD8E0();
  sub_1B211D750();
  if (v15)
  {
    sub_1B2115340();
    v35 = sub_1B22524A0();
    v36 = MEMORY[0x1B2741E40](v35);
    v19 = v37;

    sub_1B2112208();
    sub_1B2118144();
    sub_1B211780C();
    while (v9)
    {
      v38 = sub_1B211594C(v36);
      v39 = sub_1B2252290();
      v40 = sub_1B21162F8(v38, sel_firstMatchInString_options_range_);

      if (v40)
      {

        goto LABEL_45;
      }
    }

    while (1)
    {
      if (__OFADD__(v36, 1))
      {
        goto LABEL_56;
      }

      if (v36 + 1 >= v19)
      {
        break;
      }

      sub_1B21144A8();
    }

    sub_1B21184F8();
    v58 = sub_1B22524A0();
    MEMORY[0x1B2741E40](v58);

    v57 = v71;
LABEL_50:
    v59 = sub_1B21FDE44(v57, v72);
    v61 = v60;

    MEMORY[0x1B2741EB0](v59, v61);

    v62 = sub_1B21DC54C(v68, v19, v10);
    v63 = MEMORY[0x1B2741E40](v62);
    v65 = v64;

    MEMORY[0x1B2741EB0](v63, v65);
  }

  else
  {
    __break(1u);
LABEL_60:
    a1 = sub_1B2112A24(&qword_1ED85D818);
LABEL_36:
    sub_1B21167C8(a1, a2, a3, a4, a5, a6, a7, a8, v66, v67, v68, v69, v70);
    sub_1B212231C();
    v69 = v8;

    v41 = sub_1B211187C();
    sub_1B21FDA08(v41, v42);
    sub_1B211187C();
    sub_1B21FD8E0();
    sub_1B211D750();
    if (!v15)
    {
      __break(1u);
      return;
    }

    sub_1B2115340();
    v43 = sub_1B22524A0();
    v44 = MEMORY[0x1B2741E40](v43);
    v29 = v45;

    sub_1B2112208();
    sub_1B2118144();
    sub_1B211780C();
    while (v9)
    {
      v46 = sub_1B211594C(v44);
      v47 = sub_1B2252290();
      v32 = sub_1B21162F8(v46, sel_firstMatchInString_options_range_);

      if (v32)
      {
        goto LABEL_44;
      }
    }

    while (1)
    {
      if (__OFADD__(v44, 1))
      {
        __break(1u);
        goto LABEL_54;
      }

      if (v44 + 1 >= v29)
      {
        break;
      }

      sub_1B21144A8();
    }

LABEL_47:

    sub_1B21184F8();
    v48 = sub_1B22524A0();
    MEMORY[0x1B2741E40](v48);

    v49 = sub_1B21FDE44(v71, v72);
    v51 = v50;

    MEMORY[0x1B2741EB0](v49, v51);

    v52 = sub_1B21DC54C(v68, v29, v10);
    v53 = MEMORY[0x1B2741E40](v52);
    v55 = v54;

    MEMORY[0x1B2741EB0](v53, v55);
  }

LABEL_52:
  sub_1B211187C();
}

void sub_1B220A2E8(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v9 = *a1;
  v10 = *(*a1 + 16);
  if (v10)
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    v4 = a1;
    v11 = v9 + 232 * v10;
    memcpy(__dst, (v11 - 200), 0xE3uLL);
    v12 = __dst[0];
    v13 = __dst[1];
    v14 = (v11 - 183);
    LOBYTE(v11) = __dst[2];
    memcpy(__src, v14, sizeof(__src));
    sub_1B21C8064(v7, v6, v5);
    sub_1B21819B8(__dst, v18);
    sub_1B21C807C(v12, v13, v11);
    v8 = *(v9 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v8)
      {
        goto LABEL_4;
      }

LABEL_8:
      __break(1u);
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  sub_1B21956E4();
  v9 = v17;
  *v4 = v17;
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v8 <= *(v9 + 16))
  {
    v16 = v9 + 232 * v8;
    memcpy(v18, (v16 - 200), 0xE3uLL);
    *(v16 - 200) = v7;
    *(v16 - 192) = v6;
    *(v16 - 184) = v5;
    memcpy((v16 - 183), __src, 0xD2uLL);
    sub_1B2181A14(v18);
    *v4 = v9;
    return;
  }

LABEL_9:
  __break(1u);
}

void *sub_1B220A42C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v5 = *(a1 + 8);
  v29 = *a1;
  v7 = *(a1 + 16);
  memcpy(__dst, (a1 + 64), 0xA2uLL);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v28 = *(a2 + 56);
  v12 = swift_allocObject();
  *(v12 + 16) = MEMORY[0x1E69E7CC0];
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1B214D354;
  *(v13 + 24) = v12;
  sub_1B21C8064(v6, v5, v7);
  v31 = v8;
  v14 = v8;
  v15 = v7;
  v26 = v11;
  v27 = v10;
  sub_1B2181640(v14, v9, v10, v11, v28);
  sub_1B2136148(__dst, __src);

  __src[0] = *(a1 + 64);
  *&__src[1] = *(a1 + 80);
  *(&__src[1] + 1) = sub_1B2139E34;
  *&__src[2] = v13;
  memcpy(&__src[2] + 8, (a1 + 104), 0x7AuLL);
  memcpy(v32, __src, 0x58uLL);
  sub_1B2136148(__src, v33);
  sub_1B21A44DC();
  v17 = v16;
  v19 = v18;
  sub_1B2137224(__src);

  memcpy(v33, v32, sizeof(v33));
  v34 = v17;
  v35 = v19;
  v36 = 0;
  v37 = *(a1 + 169);
  v38 = *(a1 + 185);
  *v39 = *(a1 + 201);
  *&v39[9] = *(a1 + 210);
  sub_1B21C53BC(sub_1B21C5514, 0, v32);
  sub_1B2137224(v33);
  sub_1B21C8064(v29, v5, v7);
  MEMORY[0x1B2741EB0](v29, v5);
  sub_1B21C807C(v29, v5, v7);
  sub_1B21C807C(v29, v5, v7);
  if (v28 < 0)
  {
    v20 = swift_allocObject();
    v22 = 0;
    v23 = 0;
    *(v20 + 16) = v31;
    *(v20 + 24) = v9;
    v24 = 0x80;
    v21 = sub_1B220A824;
  }

  else
  {
    v21 = __dst[0];
    v20 = __dst[1];
    v23 = v26;
    v22 = v27;
    sub_1B2181698(v27);

    sub_1B21816DC(v31, v9, v27, v26, v28);
    v24 = (v28 & 1) == 0;
  }

  *a3 = 0x5F62647267;
  *(a3 + 8) = 0xE500000000000000;
  *(a3 + 16) = v15;
  *(a3 + 24) = v21;
  *(a3 + 32) = v20;
  *(a3 + 40) = v22;
  *(a3 + 48) = v23;
  *(a3 + 56) = v24;
  result = memcpy((a3 + 64), v32, 0xA2uLL);
  *(a3 + 226) = 0;
  return result;
}

uint64_t sub_1B220A758(uint64_t a1)
{
  v2 = *v1;
  sub_1B2253420();
  sub_1B22006C4(v4, v2);
  return sub_1B2253470();
}

uint64_t sub_1B220A79C(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B220A7B4(uint64_t a1)
{
  v2 = sub_1B21619D8(&qword_1EB7A2CD8, &qword_1B2260A48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *sub_1B220A82C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B220A914()
{
  result = qword_1EB7A2CE0[0];
  if (!qword_1EB7A2CE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB7A2CE0);
  }

  return result;
}

uint64_t sub_1B220A968(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1B220AA94(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {

    sub_1B2152610();
    if (v3)
    {
LABEL_8:
    }

    else
    {
      sub_1B223C1B4();
      a3 = 0;
      a2 = 0;
      sub_1B215476C();
      while (1)
      {
        if (a2)
        {
          swift_willThrow();
          goto LABEL_8;
        }

        if (a3)
        {
          break;
        }

LABEL_5:
        __break(1u);
      }

      __break(1u);
    }
  }

  else
  {
    sub_1B223C1B4();
    if (!v3)
    {
      goto LABEL_5;
    }
  }
}

uint64_t sub_1B220AB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = swift_allocObject();
  sub_1B220AC04();
  return v7;
}

void sub_1B220AC04()
{
  sub_1B2111F14();
  v1 = v0;
  v84 = v2;
  v71 = v3;
  v5 = v4;
  v7 = v6;
  v85 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = *v1;
  v78 = sub_1B2252A10();
  sub_1B211280C();
  v77 = v15;
  MEMORY[0x1EEE9AC00](v16);
  sub_1B2112D9C();
  v76 = v17;
  sub_1B21144B4();
  v74 = sub_1B22529C0();
  sub_1B21118A0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1B2112D9C();
  v75 = v19;
  sub_1B21144B4();
  v73 = sub_1B2252120();
  sub_1B211280C();
  v72 = v20;
  MEMORY[0x1EEE9AC00](v21);
  sub_1B2115CBC();
  v58 = v22;
  MEMORY[0x1EEE9AC00](v23);
  v83 = &v57 - v24;
  v25 = sub_1B21144B4();
  v63 = type metadata accessor for Configuration(v25);
  sub_1B21118A0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1B2115CBC();
  v62 = v27;
  MEMORY[0x1EEE9AC00](v28);
  v61 = &v57 - v29;
  v1[4] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v1 + 3) = 0u;
  *(v1 + 4) = 0u;
  *(v1 + 5) = 0u;
  *(v1 + 6) = 0u;
  *(v1 + 7) = 0u;
  *(v1 + 8) = 0u;
  *(v1 + 9) = 0u;
  v1[20] = 0;
  v82 = *(v14 + 80);
  v30 = v82;
  v59 = *(v14 + 88);
  v31 = v59;
  v1[21] = 1;
  *(v1 + 176) = 0;
  v1[2] = v11;
  v1[3] = v9;
  v32 = sub_1B220B310(v7, v30, v31);
  v34 = v1[6];
  v33 = v1[7];
  v35 = v1[8];
  v60 = v13;
  v1[6] = v13;
  v1[7] = v32;
  v1[8] = v36;
  v79 = v11;

  sub_1B221029C(v34, v33, v35);
  v37 = *v5;
  v38 = v5[1];
  v40 = v5[2];
  v39 = v5[3];
  v41 = v5[4];
  v42 = v5[5];
  v43 = v5[7];
  v44 = v5[8];
  v45 = v5[9];
  v80 = v5[6];
  v81 = v44;
  memcpy(v88, v1 + 9, 0x60uLL);
  memcpy(v1 + 9, v5, 0x50uLL);
  v46 = v84;
  v1[19] = v71;
  v1[20] = v46;

  v66 = v37;
  v64 = v38;
  sub_1B2112328(v37, v38);
  v68 = v40;
  v65 = v39;
  sub_1B2112328(v40, v39);
  v70 = v41;
  v67 = v42;
  sub_1B2112328(v41, v42);
  v69 = v43;
  sub_1B2112328(v80, v43);
  v71 = v45;
  sub_1B2112328(v81, v45);
  v47 = v82;
  type metadata accessor for ValueConcurrentObserver.NotificationCallbacks(255, v82, v59, v48);
  sub_1B2252B00();
  sub_1B21118A0();
  (*(v49 + 8))(v88);
  v50 = *(v47 - 8);
  v51 = v62;
  (*(v50 + 16))(v1 + *(*v1 + 152), v85, v47);
  v52 = v61;
  DatabasePool.configuration.getter(v61);
  v53 = *(v52 + 8);
  if (*(v52 + 16))
  {
    v54 = *(v52 + 16);
  }

  else
  {
    v53 = 1111773767;
    v54 = 0xE400000000000000;
  }

  v86 = v53;
  v87 = v54;

  MEMORY[0x1B2741EB0](0xD000000000000011, 0x80000001B226F150);

  v59 = v86;
  sub_1B2133D70(v52);
  DatabasePool.configuration.getter(v51);
  if (*(v51 + *(v63 + 68)))
  {
    v55 = v58;
    sub_1B2252A20();
    (*(v72 + 32))(v83, v55, v73);
  }

  else
  {
    (*(v72 + 16))(v83, v51 + *(v63 + 64), v73);
  }

  sub_1B21E8558(0, &qword_1ED85E778, 0x1E69E9610);
  sub_1B2133D70(v51);
  v86 = MEMORY[0x1E69E7CC0];
  sub_1B21202AC(&qword_1ED85E780, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1B21619D8(&qword_1EB7A21A0, &unk_1B225E830);
  sub_1B21E8598(&qword_1ED85E788, &qword_1EB7A21A0, &unk_1B225E830);
  sub_1B2252BC0();
  (*(v77 + 104))(v76, *MEMORY[0x1E69E8090], v78);
  v56 = sub_1B2252A70();

  sub_1B2112F4C(v66, v64);
  sub_1B2112F4C(v68, v65);
  sub_1B2112F4C(v70, v67);
  sub_1B2112F4C(v80, v69);
  sub_1B2112F4C(v81, v71);

  (*(v50 + 8))(v85, v82);
  v1[5] = v56;
  sub_1B2111588();
}

uint64_t (*sub_1B220B310(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  return sub_1B2210474;
}

uint64_t *sub_1B220B430()
{
  v1 = *v0;

  sub_1B21E865C(v0[3]);

  sub_1B221029C(v0[6], v0[7], v0[8]);
  sub_1B21E866C(v0[9], v0[10], v0[11], v0[12], v0[13], v0[14], v0[15], v0[16], v0[17], v0[18], v0[19], v0[20]);
  sub_1B21E7918(v0[21]);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 152));
  return v0;
}

uint64_t sub_1B220B508()
{
  sub_1B220B430();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B220B578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B220B5CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B220B620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1B220B674()
{
  sub_1B2111F14();
  v56 = v1;
  v42 = *v0;
  v2 = *(v42 + 88);
  v3 = *(v42 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B211280C();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v37 - v8;
  sub_1B21E8558(0, &qword_1EB7A2798, 0x1E696AD10);
  v10 = type metadata accessor for ValueConcurrentObserver.NotificationCallbacks(255, v3, v2, v9);
  v11 = sub_1B2252B00();
  type metadata accessor for ValueConcurrentObserver.DatabaseAccess(255, v3, v2, v12);
  sub_1B2252B00();
  v57 = v11;
  swift_getTupleTypeMetadata2();
  sub_1B21E2BF4(sub_1B21E3B08, 0, sub_1B22104E0);
  memcpy(v62, v59, 0x60uLL);
  if (v62[10])
  {
    v39 = AssociatedTypeWitness;
    v40 = 0;
    v37 = v62[10];
    v38 = v6;
    v13 = v60;
    v45 = v62[1];
    v46 = v62[0];
    v47 = v62[3];
    v48 = v62[2];
    v49 = v62[5];
    v50 = v62[4];
    v51 = v62[7];
    v52 = v62[6];
    v53 = v62[9];
    v54 = v62[8];
    v55 = v62[11];
    if (v60)
    {
      v14 = v61;
      v15 = v0[2];
      v16 = v15[5];
      v17 = v15[6];
      sub_1B21139A0(v15 + 2, v16);
      v18 = *(v17 + 16);
      v43 = *(v57 - 8);
      (*(v43 + 16))(v59, v62);
      sub_1B2210418(v13);
      v19 = v18(v16, v17);
      v44 = v13;
      if (v19)
      {
        v20 = v40;
        v21 = v41;
        v22 = sub_1B2111BC0();
        sub_1B220BC80(v22, v23, v24, v25);
        v26 = v56;
        if (v20)
        {
          v28 = v51;
          v27 = v52;
          if (v52)
          {
            v52(v20);
          }

          v29 = type metadata accessor for AnyDatabaseCancellable();
          sub_1B2111904();
          swift_allocObject();
          v30 = AnyDatabaseCancellable.init(cancel:)(nullsub_1, 0);
          v26[3] = v29;
          v26[4] = &protocol witness table for AnyDatabaseCancellable;

          goto LABEL_11;
        }

        v37(v21);
        (*(v38 + 8))(v21, v39);
      }

      else
      {
        v31 = sub_1B2111BC0();
        sub_1B220BFC0(v31, v32, v33, v34);
        v26 = v56;
      }

      v27 = v52;
      v35 = type metadata accessor for AnyDatabaseCancellable();
      v59[0] = v0;

      v30 = sub_1B21E9F54(v59, v35, v42, &off_1F2974490);
      v26[3] = v35;
      v26[4] = &protocol witness table for AnyDatabaseCancellable;
      v28 = v51;
LABEL_11:
      *v26 = v30;

      v36 = v44;

      sub_1B2112F4C(v46, v45);
      sub_1B2112F4C(v48, v47);
      sub_1B2112F4C(v50, v49);
      sub_1B2112F4C(v27, v28);
      sub_1B2112F4C(v54, v53);

      sub_1B221029C(v36, v14, v13);
      (*(v43 + 8))(v62, v57);
      sub_1B2111588();
      return;
    }

    memcpy(v59, v62, sizeof(v59));
    (*(*(v10 - 8) + 16))(&v58, v59, v10);
    sub_1B2112F4C(v46, v45);
    sub_1B2112F4C(v48, v47);
    sub_1B2112F4C(v50, v49);
    sub_1B2112F4C(v52, v51);
    sub_1B2112F4C(v54, v53);
  }

  sub_1B2252EC0();
  __break(1u);
}

uint64_t sub_1B220BB80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  memcpy(__dst, a1 + 9, sizeof(__dst));
  memcpy(a2, a1 + 9, 0x60uLL);
  v5 = a1[6];
  v6 = a1[7];
  v7 = a1[8];
  a2[12] = v5;
  a2[13] = v6;
  a2[14] = v7;
  type metadata accessor for ValueConcurrentObserver.NotificationCallbacks(255, *(v4 + 80), *(v4 + 88), v8);
  v9 = sub_1B2252B00();
  (*(*(v9 - 8) + 16))(&v11, __dst, v9);
  return sub_1B2210418(v5);
}

void *sub_1B220BC80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a3;
  v34 = a2;
  v31 = a4;
  v6 = *(*v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B2161A20(&qword_1EB7A2EE8, &qword_1B2260EA8);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v10 = v26 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v26 - v13;
  v33 = a1;
  v15 = v36;
  result = DatabasePool.makeSnapshot()();
  if (!v15)
  {
    v29 = v6;
    v30 = v14;
    v36 = v11;
    MEMORY[0x1EEE9AC00](result);
    v18 = v32;
    v17 = v33;
    v26[-4] = v32;
    v26[-3] = v17;
    v19 = v35;
    v26[-2] = v34;
    v26[-1] = v19;
    v21 = v20;
    DatabaseSnapshot.read<A>(_:)(sub_1B22104FC, &v26[-6], TupleTypeMetadata3);
    v22 = *&v10[*(TupleTypeMetadata3 + 64)];
    v27 = *&v10[*(TupleTypeMetadata3 + 48)];
    v28 = v22;
    v23 = v36;
    v24 = v30;
    v25 = (*(v36 + 32))(v30, v10, AssociatedTypeWitness);
    v26[1] = v26;
    MEMORY[0x1EEE9AC00](v25);
    v26[-2] = v18;
    v26[-1] = v24;
    swift_getAssociatedTypeWitness();
    sub_1B2252A50();
    v37 = v27;
    sub_1B220C854(v33, v34, v35, v21, v28, &v37);

    return (*(v23 + 8))(v24, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_1B220BFC0(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v5 = v4;
  v9 = DatabasePool.makeSnapshot()();
  v10 = swift_allocObject();
  v10[2] = v5;
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = v9;

  DatabaseSnapshot.asyncRead(_:)(sub_1B2210600, v10);
}

uint64_t sub_1B220C15C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, __n128)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v44 = a3;
  v42 = a6;
  v11 = *(*a2 + 88);
  v12 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v19 = a2[3];
  if (v19 >= 2)
  {
    v21 = &v41 - v17;
    result = a4(a1, v18);
    if (!v6)
    {
      v22 = v21;

      sub_1B21CAAC0(a1, v19, &v47);
      sub_1B21E865C(v19);
      if (v47)
      {
        v24 = sub_1B21E79E0(v47);
      }

      else
      {
        v24 = 0;
      }

      v46 = v24;
      sub_1B21C9D20(&v47);

      v33 = v47;
      sub_1B2161A20(&qword_1EB7A2EE8, &qword_1B2260EA8);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v35 = *(TupleTypeMetadata3 + 48);
      v36 = *(TupleTypeMetadata3 + 64);
      v38 = v42;
      v37 = v43;
      (*(v43 + 16))(v42, v22, AssociatedTypeWitness);
      *(v38 + v35) = v33;
      type metadata accessor for WALSnapshot();
      swift_allocObject();

      v40 = sub_1B21D8138(v39);
      result = (*(v37 + 8))(v22, AssociatedTypeWitness);
      *(v38 + v36) = v40;
    }
  }

  else
  {
    sub_1B211B358();
    v47 = sub_1B2252190();
    MEMORY[0x1EEE9AC00](v47);
    *(&v41 - 6) = v12;
    *(&v41 - 5) = v11;
    *(&v41 - 4) = v44;
    *(&v41 - 3) = a4;
    *(&v41 - 2) = a5;
    *(&v41 - 1) = a1;
    sub_1B2237994(&v47, sub_1B2210898);
    if (v6)
    {
    }

    else
    {
      if (v47)
      {
        v23 = sub_1B21E79E0(v47);
      }

      else
      {
        v23 = 0;
      }

      v45 = v23;
      sub_1B21C9D20(&v46);

      v25 = v46;
      sub_1B2161A20(&qword_1EB7A2EE8, &qword_1B2260EA8);
      v26 = swift_getTupleTypeMetadata3();
      v27 = *(v26 + 48);
      v28 = *(v26 + 64);
      v30 = v42;
      v29 = v43;
      (*(v43 + 16))(v42, v15, AssociatedTypeWitness);
      *(v30 + v27) = v25;
      type metadata accessor for WALSnapshot();
      swift_allocObject();

      v32 = sub_1B21D8138(v31);
      result = (*(v29 + 8))(v15, AssociatedTypeWitness);
      *(v30 + v28) = v32;
    }
  }

  return result;
}

uint64_t sub_1B220C61C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(*(*a1 + 88) + 8);
  v6 = *(*a1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1B2252B00();
  v12 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - v9;
  swift_beginAccess();
  (*(v5 + 32))(a2, v6, v5);
  swift_endAccess();
  if (sub_1B2122A98(v10, 1, AssociatedTypeWitness) != 1)
  {
    return (*(*(AssociatedTypeWitness - 8) + 32))(a3, v10, AssociatedTypeWitness);
  }

  (*(v12 + 8))(v10, v8);
  result = sub_1B2252EC0();
  __break(1u);
  return result;
}

uint64_t sub_1B220C854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = *a6;
  v13 = swift_allocObject();
  v13[2] = v6;
  v13[3] = v12;
  v13[4] = a4;
  v13[5] = a5;
  v13[6] = a1;
  v13[7] = a2;
  v13[8] = a3;

  sub_1B2223DB4(sub_1B2210538, v13);
}

void sub_1B220C938(void *a1, char a2, uint64_t *a3, uint64_t a4, void (*a5)(void *), uint64_t a6, uint64_t a7)
{
  v58 = a7;
  v64 = a5;
  v65 = a6;
  v60 = a4;
  v10 = *a3;
  v11 = sub_1B22520F0();
  v56 = *(v11 - 8);
  v57 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v54 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1B2252120();
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v52 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = *(v10 + 88);
  v14 = *(v10 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v15 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v49 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v49 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v62 = v49 - v24;
  if (sub_1B21E2CFC())
  {
    if (a2)
    {
      aBlock[0] = a1;
      v25 = a1;
      sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
      swift_willThrowTypedImpl();
      sub_1B220D5B8(a1);
    }

    else
    {
      v26 = a3[3];
      if (v26 >= 2)
      {
        v64(a1);
        v32 = v61 + 32;
        v51 = *(v61 + 32);
        v51(v62, v22, AssociatedTypeWitness);

        sub_1B21CAAC0(a1, v26, aBlock);
        v50 = v32;
        sub_1B21E865C(v26);
        if (aBlock[0])
        {
          v35 = sub_1B21E79E0(aBlock[0]);
        }

        else
        {
          v35 = 0;
        }

        v67 = v35;
        sub_1B21C9D20(aBlock);

        v50 = aBlock[0];
        v36 = v61;
        v37 = v62;
      }

      else
      {
        sub_1B211B358();
        aBlock[0] = sub_1B2252190();
        MEMORY[0x1EEE9AC00](aBlock[0]);
        v27 = v59;
        v28 = v60;
        v49[-6] = v14;
        v49[-5] = v27;
        v30 = v64;
        v29 = v65;
        v49[-4] = v28;
        v49[-3] = v30;
        v49[-2] = v29;
        v49[-1] = a1;
        v31 = AssociatedTypeWitness;
        sub_1B2237994(aBlock, sub_1B2210628);
        v33 = *(v61 + 32);
        v33(v62, v19, v31);
        v51 = v33;
        if (aBlock[0])
        {
          v34 = sub_1B21E79E0(aBlock[0]);
        }

        else
        {
          v34 = 0;
        }

        aBlock[6] = v34;
        sub_1B21C9D20(&v67);
        v36 = v61;

        v50 = v67;
        v37 = v62;
      }

      v49[1] = a3[5];
      v38 = v36;
      v39 = AssociatedTypeWitness;
      (*(v36 + 16))(v16, v37, AssociatedTypeWitness);
      v40 = (*(v36 + 80) + 40) & ~*(v36 + 80);
      v41 = swift_allocObject();
      v42 = v59;
      *(v41 + 2) = v14;
      *(v41 + 3) = v42;
      *(v41 + 4) = a3;
      v51(&v41[v40], v16, v39);
      aBlock[4] = sub_1B2210658;
      aBlock[5] = v41;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B21E5730;
      aBlock[3] = &unk_1F2974700;
      v43 = _Block_copy(aBlock);

      v44 = v52;
      sub_1B2252100();
      v67 = MEMORY[0x1E69E7CC0];
      sub_1B21202AC(qword_1ED85E0C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      sub_1B21619D8(&qword_1EB7A27A8, &qword_1B225E820);
      sub_1B21E8598(&qword_1ED85E0B8, &qword_1EB7A27A8, &qword_1B225E820);
      v45 = v54;
      v46 = v57;
      sub_1B2252BC0();
      MEMORY[0x1B2742540](0, v44, v45, v43);
      _Block_release(v43);
      (*(v56 + 8))(v45, v46);
      (*(v53 + 8))(v44, v55);

      type metadata accessor for WALSnapshot();
      swift_allocObject();

      v48 = sub_1B21D8138(v47);
      aBlock[0] = v50;
      sub_1B220C854(v60, v64, v65, v58, v48, aBlock);

      (*(v38 + 8))(v62, AssociatedTypeWitness);
    }
  }
}

uint64_t sub_1B220D130(void *a1, uint64_t a2)
{
  v28 = a2;
  v3 = *(*a1 + 88);
  v4 = *(v3 + 8);
  v30 = *(*a1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1B2252B00();
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v12 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v29 = &v25 - v14;
  result = sub_1B21E2CFC();
  if (result)
  {
    v27 = v3;
    swift_beginAccess();
    (*(v4 + 32))(v28, v30, v4);
    swift_endAccess();
    if (sub_1B2122A98(v8, 1, AssociatedTypeWitness) == 1)
    {
      (*(v25 + 8))(v8, v26);
      result = sub_1B2252EC0();
      __break(1u);
    }

    else
    {
      v16 = *(v9 + 32);
      v17 = v29;
      v16(v29, v8, AssociatedTypeWitness);
      v18 = a1[2];
      (*(v9 + 16))(v12, v17, AssociatedTypeWitness);
      v19 = (*(v9 + 80) + 40) & ~*(v9 + 80);
      v20 = swift_allocObject();
      v21 = v27;
      *(v20 + 2) = v30;
      *(v20 + 3) = v21;
      *(v20 + 4) = a1;
      v16(&v20[v19], v12, AssociatedTypeWitness);
      v22 = v18[5];
      v23 = v18[6];
      sub_1B21139A0(v18 + 2, v22);
      v24 = *(v23 + 8);

      v24(sub_1B22107C0, v20, v22, v23);

      return (*(v9 + 8))(v29, AssociatedTypeWitness);
    }
  }

  return result;
}

uint64_t *sub_1B220D4F8@<X0>(uint64_t *result@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = result[19];
  if (v3)
  {
    v4 = *result;
    v5 = result[20];
    v6 = swift_allocObject();
    *(v6 + 16) = *(v4 + 80);
    *(v6 + 24) = *(v4 + 88);
    *(v6 + 32) = v3;
    *(v6 + 40) = v5;

    v7 = sub_1B2210894;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return result;
}

uint64_t sub_1B220D5B8(void *a1)
{
  v3 = *(v1 + 16);
  sub_1B2111904();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = v3[5];
  v6 = v3[6];
  sub_1B21139A0(v3 + 2, v5);
  v7 = *(v6 + 8);

  v8 = a1;
  v7(sub_1B22103D8, v4, v5, v6);
}

id sub_1B220D67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_1B21E2D6C();
  if (v21 != 1)
  {
    v23 = v21;
    v17 = memcpy(v24, v22, sizeof(v24));
    v19 = &v19;
    v20 = a3;
    MEMORY[0x1EEE9AC00](v17);
    v18[2] = a4;
    v18[3] = a5;
    v18[4] = a1;
    v18[5] = &v23;
    v18[6] = a2;
    v18[7] = a6;
    v18[8] = a7;
    v18[9] = a8;
    v18[10] = a3;
    v18[11] = &v20;

    sub_1B220AA94(1, sub_1B2210568, v18);
    sub_1B2112F4C(v23, v24[0]);
    sub_1B2112F4C(v24[1], v24[2]);
    sub_1B2112F4C(v24[3], v24[4]);
    sub_1B2112F4C(v24[5], v24[6]);
    sub_1B2112F4C(v24[7], v24[8]);
  }

  return result;
}

void *sub_1B220D854@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  if (result[19])
  {
    v4 = result[9];
    v3 = result[10];
    v5 = result[11];
    v6 = result[12];
    v7 = result[13];
    v8 = result[14];
    v9 = result[15];
    v10 = result[16];
    v11 = result[17];
    v12 = result[18];
    *a2 = v4;
    a2[1] = v3;
    a2[2] = v5;
    a2[3] = v6;
    a2[4] = v7;
    sub_1B2112328(v4, v3);
    sub_1B2112328(v5, v6);
    sub_1B2112328(v7, v8);
    sub_1B2112328(v9, v10);
    result = sub_1B2112328(v11, v12);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    *a2 = 1;
    *(a2 + 1) = 0u;
    *(a2 + 3) = 0u;
  }

  a2[5] = v8;
  a2[6] = v9;
  a2[7] = v10;
  a2[8] = v11;
  a2[9] = v12;
  return result;
}

uint64_t sub_1B220D934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(uint64_t, __n128), uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v73 = a8;
  v74 = a7;
  v68 = a6;
  v69 = a9;
  v14 = *a5;
  v15 = sub_1B22520F0();
  v66 = *(v15 - 8);
  v67 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v64 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1B2252120();
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v62 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = *(v14 + 88);
  v72 = *(v14 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(AssociatedTypeWitness - 8);
  v70 = AssociatedTypeWitness;
  v71 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v61 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v60 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v60 - v25;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v75 = &v60 - v30;
  if (a2)
  {
    type metadata accessor for WALSnapshot();
    swift_allocObject();

    v31 = sub_1B21D8138(a3);
    if (v31)
    {
      v32 = sqlite3_snapshot_cmp(*(a2 + 16), v31[2]);

      if ((v32 & 0x80000000) == 0)
      {
        v33 = *(a4 + 16);
        v34 = v69;
        if (v33)
        {
          aBlock[0] = v69;
          v33(aBlock);
        }

        aBlock[0] = v34;
        return sub_1B220C0CC(a3, aBlock);
      }
    }

    else
    {
    }
  }

  v36 = *(a4 + 32);
  if (v36)
  {
    v36(v28, v29);
  }

  v37 = v76;
  if (a5[3] >= 2)
  {
    v42 = v77;
    result = v74(a3, v29);
    if (v42)
    {
      return result;
    }

    v77 = 0;
    v43 = *(v71 + 32);
    v73 = (v71 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v74 = v43;
    v44 = v26;
    v40 = v70;
    (v43)(v75, v44, v70);
    v45 = *(a4 + 16);
    v46 = v69;
    if (v45)
    {
      aBlock[0] = v69;
      v45(aBlock);
    }

    aBlock[0] = v46;
    sub_1B220C0CC(a3, aBlock);
    v47 = v72;
  }

  else
  {
    sub_1B211B358();
    aBlock[0] = sub_1B2252190();
    MEMORY[0x1EEE9AC00](aBlock[0]);
    *(&v60 - 6) = v72;
    *(&v60 - 5) = v37;
    v38 = v73;
    v39 = v74;
    *(&v60 - 4) = v68;
    *(&v60 - 3) = v39;
    *(&v60 - 2) = v38;
    *(&v60 - 1) = a3;
    v40 = v70;
    v41 = v77;
    sub_1B2237994(aBlock, sub_1B2210898);
    if (v41)
    {
    }

    v48 = v71 + 32;
    v74 = *(v71 + 32);
    (v74)(v75, v23, v40);
    if (aBlock[0])
    {
      v49 = sub_1B21E79E0(aBlock[0]);
    }

    else
    {
      v49 = 0;
    }

    v47 = v72;
    aBlock[6] = v49;
    sub_1B21C9D20(&v79);
    v77 = 0;
    v73 = v48 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;

    *a10 = v79;

    v50 = *(a4 + 16);
    if (v50)
    {
      v79 = *a10;

      v50(&v79);
    }

    v79 = *a10;

    sub_1B220C0CC(a3, &v79);

    v37 = v76;
  }

  v76 = a5[5];
  v51 = v71;
  v52 = v61;
  (*(v71 + 16))(v61, v75, v40);
  v53 = (*(v51 + 80) + 40) & ~*(v51 + 80);
  v54 = swift_allocObject();
  v54[2] = v47;
  v54[3] = v37;
  v54[4] = a5;
  (v74)(v54 + v53, v52, v40);
  aBlock[4] = sub_1B22105A0;
  aBlock[5] = v54;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B21E5730;
  aBlock[3] = &unk_1F2974638;
  v55 = _Block_copy(aBlock);

  v56 = v62;
  sub_1B2252100();
  v79 = MEMORY[0x1E69E7CC0];
  sub_1B21202AC(qword_1ED85E0C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v57 = v40;
  sub_1B21619D8(&qword_1EB7A27A8, &qword_1B225E820);
  sub_1B21E8598(&qword_1ED85E0B8, &qword_1EB7A27A8, &qword_1B225E820);
  v58 = v64;
  v59 = v67;
  sub_1B2252BC0();
  MEMORY[0x1B2742540](0, v56, v58, v55);
  _Block_release(v55);
  (*(v66 + 8))(v58, v59);
  (*(v63 + 8))(v56, v65);
  (*(v51 + 8))(v75, v57);
}

uint64_t sub_1B220E0F4(void *a1, uint64_t a2)
{
  v32 = a2;
  v3 = *a1;
  v31 = *(*a1 + 88);
  v4 = *(v31 + 8);
  v34 = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v33 = &v28 - v9;
  v10 = sub_1B2252B00();
  v35 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  result = sub_1B21E2CFC();
  if (result)
  {
    swift_beginAccess();
    (*(v4 + 32))(v32, v34, v4);
    swift_endAccess();
    (*(v35 + 16))(v12, v15, v10);
    if (sub_1B2122A98(v12, 1, AssociatedTypeWitness) == 1)
    {
      v17 = *(v35 + 8);
      v17(v15, v10);
      return (v17)(v12, v10);
    }

    else
    {
      v29 = *(v6 + 32);
      v18 = v33;
      v29(v33, v12, AssociatedTypeWitness);
      v32 = v10;
      v19 = v6;
      v20 = a1[2];
      v21 = v30;
      (*(v19 + 16))(v30, v18, AssociatedTypeWitness);
      v22 = (*(v19 + 80) + 40) & ~*(v19 + 80);
      v23 = swift_allocObject();
      v24 = v31;
      *(v23 + 2) = v34;
      *(v23 + 3) = v24;
      *(v23 + 4) = a1;
      v29(&v23[v22], v21, AssociatedTypeWitness);
      v25 = v20[5];
      v26 = v20[6];
      sub_1B21139A0(v20 + 2, v25);
      v27 = *(v26 + 8);

      v27(sub_1B22105B8, v23, v25, v26);

      (*(v19 + 8))(v33, AssociatedTypeWitness);
      return (*(v35 + 8))(v15, v32);
    }
  }

  return result;
}

id sub_1B220E500(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  sub_1B21E8558(0, &qword_1EB7A2798, 0x1E696AD10);
  swift_getAssociatedTypeWitness();
  swift_getFunctionTypeMetadata1();
  sub_1B2252B00();
  result = sub_1B21E2BF4(a3, 0, a4);
  if (v8)
  {

    v8(a2);
    sub_1B2112F4C(v8, v9);
    return sub_1B2112F4C(v8, v9);
  }

  return result;
}

uint64_t *sub_1B220E638@<X0>(uint64_t *result@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = result[19];
  if (v3)
  {
    v4 = *result;
    v5 = result[20];
    v6 = swift_allocObject();
    *(v6 + 16) = *(v4 + 80);
    *(v6 + 24) = *(v4 + 88);
    *(v6 + 32) = v3;
    *(v6 + 40) = v5;

    v7 = sub_1B2210894;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return result;
}

BOOL sub_1B220E6F8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v5 = *(v4 + 168);
  if (v5 == 1)
  {
    return 0;
  }

  else
  {

    v6 = DatabaseRegion.isModified(byEventsOfKind:)(a1, a2, a3, a4);
    sub_1B21E7918(v5);
  }

  return v6;
}

void sub_1B220E784()
{
  sub_1B2111F14();
  v2 = v0;
  v3 = *(v0 + 168);
  if (!v3)
  {
    goto LABEL_9;
  }

  if (v3 == 1)
  {
LABEL_3:
    sub_1B2111588();
    return;
  }

  v4 = v1;
  v5 = v1[3];
  v6 = v1[4];
  sub_1B21139A0(v1, v5);
  v7 = *(v6 + 16);

  v8 = v7(v5, v6);
  v10 = v9;
  v11 = sub_1B2252220();
  v13 = sub_1B214A5A8(v11, v12, v8, v10, v3);
  v15 = v14;

  if (v13 == 1)
  {
    goto LABEL_9;
  }

  if (!v15)
  {

LABEL_9:
    sub_1B21E7918(v3);
    goto LABEL_10;
  }

  v16 = sub_1B21CA838(v4[6], v15);

  sub_1B21E7918(v3);
  if ((v16 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_10:
  *(v2 + 176) = 1;
  sub_1B2111588();

  TransactionObserver.stopObservingDatabaseChangesUntilNextTransaction()();
}

void sub_1B220E8E0()
{
  sub_1B2111F14();
  v1 = v0;
  v86 = v2;
  v3 = *v0;
  v4 = sub_1B22520F0();
  sub_1B211280C();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1B2112D9C();
  v84 = v8;
  sub_1B21144B4();
  v85 = sub_1B2252120();
  sub_1B211280C();
  v83 = v9;
  MEMORY[0x1EEE9AC00](v10);
  sub_1B2112D9C();
  v82 = v11;
  v12 = *(v3 + 88);
  v13 = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v15 = sub_1B2253480();
  sub_1B21118A0();
  MEMORY[0x1EEE9AC00](v16);
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v64 - v20;
  if (*(v1 + 176) == 1)
  {
    v78 = v19;
    v80 = v6;
    v81 = v4;
    *(v1 + 176) = 0;
    sub_1B21E8558(0, &qword_1EB7A2798, 0x1E696AD10);
    sub_1B2161A20(&qword_1EB7A27A0, &qword_1B2260EA0);
    type metadata accessor for ValueConcurrentObserver.DatabaseAccess(255, v13, v12, v22);
    sub_1B2252B00();
    swift_getTupleTypeMetadata2();
    sub_1B21E2BF4(sub_1B22108D8, 0, sub_1B2210280);
    if (v89 == 1)
    {
      sub_1B221029C(v99, v100, v101);
      goto LABEL_17;
    }

    v65 = v17;
    v64 = v15;
    v77 = v100;
    v23 = v91;
    v24 = v92;
    v25 = v97;
    v26 = v98;
    if (!v99)
    {
      v29 = v96;
      v30 = v94;
      v31 = v95;
      v32 = v93;
      sub_1B2112F4C(v89, v90);
      sub_1B2112F4C(v23, v24);
      sub_1B2112F4C(v32, v30);
      sub_1B2112F4C(v31, v29);
      sub_1B2112F4C(v25, v26);
      goto LABEL_17;
    }

    v66 = v90;
    v67 = v89;
    v72 = v91;
    v75 = v92;
    v76 = v94;
    v79 = v101;
    v69 = v95;
    v70 = v96;
    v71 = v98;
    v74 = v99;
    v68 = v93;
    if (v93)
    {
      v27 = v93;

      (v27)(v28);
    }

    else
    {
    }

    v33 = v1[3] == 1;
    v73 = v25;
    if (!v33)
    {
      v36 = swift_allocObject();
      v36[2] = v13;
      v36[3] = v12;
      v37 = v74;
      v38 = v77;
      v36[4] = v74;
      v36[5] = v38;
      v36[6] = v79;

      v39 = DatabasePool.concurrentRead<A>(_:)(sub_1B2210320, v36, AssociatedTypeWitness);

LABEL_12:
      sub_1B2111904();
      v40 = swift_allocObject();
      *(v40 + 16) = v39;
      *(v40 + 24) = v1;
      v93 = sub_1B2210300;
      v94 = v40;
      v89 = MEMORY[0x1E69E9820];
      v90 = 1107296256;
      v91 = sub_1B21E5730;
      v92 = &unk_1F29744F8;
      v41 = _Block_copy(&v89);

      v42 = v82;
      sub_1B2252100();
      v88[0] = MEMORY[0x1E69E7CC0];
      sub_1B21202AC(qword_1ED85E0C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      sub_1B21619D8(&qword_1EB7A27A8, &qword_1B225E820);
      sub_1B21E8598(&qword_1ED85E0B8, &qword_1EB7A27A8, &qword_1B225E820);
      v43 = v84;
      v44 = v81;
      sub_1B2252BC0();
      MEMORY[0x1B2742540](0, v42, v43, v41);
      _Block_release(v41);

      v45 = sub_1B2115D58();
      sub_1B2116318(v45, v75);
      sub_1B2112F4C(v73, v71);
      v46 = v79;

      sub_1B221029C(v37, v77, v46);
      (*(v80 + 8))(v43, v44);
      (*(v83 + 8))(v42, v85);

      goto LABEL_17;
    }

    sub_1B211B358();
    v89 = sub_1B2252190();
    MEMORY[0x1EEE9AC00](v89);
    *(&v64 - 6) = v13;
    *(&v64 - 5) = v12;
    v34 = v74;
    *(&v64 - 4) = v86;
    *(&v64 - 3) = v34;
    v35 = v79;
    *(&v64 - 2) = v77;
    *(&v64 - 1) = v35;
    sub_1B2237994(&v89, sub_1B22102DC);
    if (v89)
    {
      v47 = sub_1B21E79E0(v89);
    }

    else
    {
      v47 = 0;
    }

    v87 = v47;
    sub_1B21C9D20(v88);

    v48 = v88[0];
    v49 = v72;
    if (!v72)
    {
LABEL_28:
      v57 = v1[21];
      v1[21] = v48;
      sub_1B21E7918(v57);
      type metadata accessor for DatabaseFuture(0, AssociatedTypeWitness, v58, v59);
      v60 = v78;
      (*(v65 + 32))(v78, v21, AssociatedTypeWitness);
      swift_storeEnumTagMultiPayload();
      v39 = sub_1B21660C0(v60);
      v37 = v74;
      goto LABEL_12;
    }

    v50 = v1[21];
    if (v88[0] == 1)
    {
      if (v50 == 1)
      {

        sub_1B21E7958(1);
        sub_1B21E7918(1);
        goto LABEL_28;
      }

      v53 = sub_1B2118150();
      sub_1B2112328(v53, v54);

      sub_1B21E7958(v50);
    }

    else
    {
      if (v50 != 1)
      {
        v87 = v1[21];
        v61 = sub_1B2118150();
        sub_1B2112328(v61, v62);

        sub_1B21E7958(v50);
        sub_1B21E7958(v48);
        v63 = static DatabaseRegion.== infix(_:_:)(v88, &v87);

        sub_1B21E7918(v48);
        if (v63)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      v51 = sub_1B2118150();
      sub_1B2112328(v51, v52);

      sub_1B21E7958(1);
      sub_1B21E7958(v48);
    }

    sub_1B21E7918(v48);
    sub_1B21E7918(v50);
LABEL_26:
    v88[0] = v48;
    v49(v88);
LABEL_27:
    v55 = sub_1B2118150();
    sub_1B2112F4C(v55, v56);
    goto LABEL_28;
  }

LABEL_17:
  sub_1B2111588();
}

uint64_t sub_1B220F2C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1[19])
  {
    v4 = a1[9];
    v5 = a1[10];
    v7 = a1[11];
    v6 = a1[12];
    v8 = a1[13];
    v19 = a1[14];
    v9 = a1[15];
    v10 = a1[16];
    v12 = a1[17];
    v11 = a1[18];
    *a2 = v4;
    a2[1] = v5;
    a2[2] = v7;
    a2[3] = v6;
    a2[4] = v8;
    sub_1B2112328(v4, v5);
    sub_1B2112328(v7, v6);
    v13 = v8;
    v14 = v19;
    sub_1B2112328(v13, v19);
    sub_1B2112328(v9, v10);
    sub_1B2112328(v12, v11);
  }

  else
  {
    v14 = 0;
    v9 = 0;
    v10 = 0;
    v12 = 0;
    v11 = 0;
    *a2 = 1;
    *(a2 + 1) = 0u;
    *(a2 + 3) = 0u;
  }

  a2[5] = v14;
  a2[6] = v9;
  a2[7] = v10;
  a2[8] = v12;
  v15 = a1[6];
  v16 = a1[7];
  v17 = a1[8];
  a2[9] = v11;
  a2[10] = v15;
  a2[11] = v16;
  a2[12] = v17;
  return sub_1B2210418(v15);
}

uint64_t sub_1B220F3CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10[7] = a1;
  v10[2] = a5;
  v10[3] = a6;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return sub_1B212B00C(1, sub_1B2210898, v10, AssociatedTypeWitness, a7);
}

id sub_1B220F460(uint64_t a1)
{
  sub_1B2177AB0(v1, a1, *v1, &off_1F29744A0);
  v2 = *(v1 + 168);
  *(v1 + 168) = 1;
  *(v1 + 176) = 0;
  sub_1B21E7918(v2);
  return sub_1B21E8980(sub_1B21E784C, 0, sub_1B22103FC);
}

uint64_t sub_1B220F51C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v46 = *(*a2 + 88);
  v4 = *(v46 + 8);
  v53 = a2;
  v5 = *(v3 + 80);
  v48 = v4;
  v50 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  v7 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v45 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v49 = v40 - v9;
  v10 = sub_1B2252B00();
  v51 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v40 - v14;
  v16 = *(v2 + 80);
  v52 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v40 - v18;
  sub_1B2166348();
  v40[1] = v7;
  v41 = v12;
  v43 = v16;
  v44 = v19;
  v42 = v15;
  if ((sub_1B21E2CFC() & 1) == 0)
  {
    return (*(v52 + 8))(v44, v43);
  }

  swift_beginAccess();
  v20 = v42;
  v21 = v44;
  (*(v48 + 32))(v44, v50);
  swift_endAccess();
  v22 = v51;
  v23 = v41;
  (*(v51 + 16))(v41, v20, v10);
  v24 = AssociatedTypeWitness;
  v25 = sub_1B2122A98(v23, 1, AssociatedTypeWitness);
  v26 = v52;
  if (v25 == 1)
  {
    v27 = *(v22 + 8);
    v27(v20, v10);
    (*(v26 + 8))(v21, v43);
    return (v27)(v23, v10);
  }

  else
  {
    v29 = v47;
    v48 = v10;
    v40[0] = *(v47 + 32);
    v30 = v49;
    (v40[0])();
    v31 = v53;
    v32 = v53[2];
    v33 = v45;
    (*(v29 + 16))(v45, v30, v24);
    v34 = (*(v29 + 80) + 40) & ~*(v29 + 80);
    v35 = swift_allocObject();
    v36 = v46;
    v35[2] = v50;
    v35[3] = v36;
    v35[4] = v31;
    (v40[0])(v35 + v34, v33, v24);
    v37 = v32[5];
    v38 = v32[6];
    sub_1B21139A0(v32 + 2, v37);
    v39 = *(v38 + 8);

    v39(sub_1B2210368, v35, v37, v38);

    (*(v29 + 8))(v49, v24);
    (*(v51 + 8))(v42, v48);
    return (*(v26 + 8))(v44, v43);
  }
}

uint64_t *sub_1B220FAE0@<X0>(uint64_t *result@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = result[19];
  if (v3)
  {
    v4 = *result;
    v5 = result[20];
    v6 = swift_allocObject();
    *(v6 + 16) = *(v4 + 80);
    *(v6 + 24) = *(v4 + 88);
    *(v6 + 32) = v3;
    *(v6 + 40) = v5;

    v7 = sub_1B22103B0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return result;
}

uint64_t sub_1B220FBA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = *(a1 + 48);
  if (result)
  {
  }

  *a2 = result;
  return result;
}

uint64_t sub_1B220FBE8()
{
  sub_1B21E2C6C();
  if (v26 != 1)
  {
    if (v33)
    {
      sub_1B21167E8(v26, v27, v1, v2, v3, v4, v5, v6, v30);
      v8 = sub_1B2112328(v33, v34);
      v9 = v33(v8);
      if (v35)
      {
LABEL_7:

        sub_1B2223DB4(sub_1B22108DC, v0);

        sub_1B211597C(v17, v18, v19, v20, v21, v22, v23, v24, v25, v27, v28, v29, v32, v31);

        return sub_1B21E84EC(&v26);
      }
    }

    else
    {
      sub_1B21167E8(v26, v27, v1, v2, v3, v4, v5, v6, v30);
      v9 = sub_1B2112328(0, v34);
      if (v35)
      {
        goto LABEL_7;
      }
    }

    sub_1B211597C(v9, v10, v11, v12, v13, v14, v15, v16, v25, v27, v28, v29, v32, v31);
    return sub_1B21E84EC(&v26);
  }
}

uint64_t sub_1B220FD6C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *a1;
  if (a1[19])
  {
    v6 = a1[9];
    v7 = a1[10];
    v24 = a1[9];
    v8 = a1[11];
    v28 = a1[12];
    v9 = a1[13];
    v10 = a1[14];
    v11 = a1[15];
    v12 = a1[16];
    v23 = v4;
    v14 = a1[17];
    v13 = a1[18];
    v26 = v7;
    sub_1B2112328(v6, v7);
    v25 = v8;
    v15 = v8;
    v16 = v9;
    sub_1B2112328(v15, v28);
    sub_1B2112328(v9, v10);
    sub_1B2112328(v11, v12);
    v17 = v13;
    v18 = v13;
    v5 = v23;
    sub_1B2112328(v14, v18);
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v28 = 0;
    v16 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v14 = 0;
    v17 = 0;
    v24 = 1;
  }

  memcpy(__dst, a1 + 9, sizeof(__dst));
  *(a1 + 9) = 0u;
  *(a1 + 11) = 0u;
  *(a1 + 13) = 0u;
  *(a1 + 15) = 0u;
  *(a1 + 17) = 0u;
  *(a1 + 19) = 0u;
  type metadata accessor for ValueConcurrentObserver.NotificationCallbacks(255, *(v5 + 80), *(v5 + 88), v19);
  v20 = sub_1B2252B00();
  (*(*(v20 - 8) + 8))(__dst, v20);
  *a2 = v24;
  a2[1] = v26;
  v21 = v28;
  a2[2] = v25;
  a2[3] = v21;
  a2[4] = v16;
  a2[5] = v10;
  a2[6] = v11;
  a2[7] = v12;
  a2[8] = v14;
  a2[9] = v17;
  result = a1[6];
  if (result)
  {
  }

  a2[10] = result;
  return result;
}

id sub_1B220FF28(uint64_t a1, uint64_t a2)
{
  result = sub_1B21E2D6C();
  if (v7 != 1)
  {
    v4 = v15;
    if (v13)
    {
      v13(a2);
      sub_1B2112F4C(v7, v8);
      sub_1B2112F4C(v9, v10);
      sub_1B2112F4C(v11, v12);
      v5 = v13;
      v6 = v14;
      v4 = v15;
    }

    else
    {
      sub_1B2112F4C(v7, v8);
      sub_1B2112F4C(v9, v10);
      v5 = v11;
      v6 = v12;
    }

    sub_1B2112F4C(v5, v6);

    return sub_1B2112F4C(v4, v16);
  }

  return result;
}

uint64_t sub_1B2210074@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *a1;
  if (a1[19])
  {
    v6 = a1[9];
    v7 = a1[10];
    v24 = a1[9];
    v8 = a1[11];
    v28 = a1[12];
    v9 = a1[13];
    v10 = a1[14];
    v11 = a1[15];
    v12 = a1[16];
    v23 = v4;
    v13 = a1[17];
    v14 = a1[18];
    v26 = v7;
    sub_1B2112328(v6, v7);
    v25 = v8;
    v15 = v8;
    v16 = v9;
    sub_1B2112328(v15, v28);
    sub_1B2112328(v9, v10);
    sub_1B2112328(v11, v12);
    v17 = v14;
    v18 = v14;
    v5 = v23;
    sub_1B2112328(v13, v18);
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v28 = 0;
    v16 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v17 = 0;
    v24 = 1;
  }

  memcpy(__dst, a1 + 9, sizeof(__dst));
  *(a1 + 9) = 0u;
  *(a1 + 11) = 0u;
  *(a1 + 13) = 0u;
  *(a1 + 15) = 0u;
  *(a1 + 17) = 0u;
  *(a1 + 19) = 0u;
  type metadata accessor for ValueConcurrentObserver.NotificationCallbacks(255, *(v5 + 80), *(v5 + 88), v19);
  v20 = sub_1B2252B00();
  result = (*(*(v20 - 8) + 8))(__dst, v20);
  *a2 = v24;
  a2[1] = v26;
  v22 = v28;
  a2[2] = v25;
  a2[3] = v22;
  a2[4] = v16;
  a2[5] = v10;
  a2[6] = v11;
  a2[7] = v12;
  a2[8] = v13;
  a2[9] = v17;
  return result;
}

uint64_t sub_1B2210220(void *a1)
{
  v2 = a1[6];
  v1 = a1[7];
  v3 = a1[8];
  a1[7] = 0;
  a1[8] = 0;
  a1[6] = 0;
  return sub_1B221029C(v2, v1, v3);
}

uint64_t sub_1B221029C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B2210308(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B2210418(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B2210670(uint64_t (*a1)(uint64_t))
{
  swift_getAssociatedTypeWitness();
  v1 = sub_1B2112224();

  return a1(v1);
}

uint64_t sub_1B22106F4()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B211280C();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, AssociatedTypeWitness);

  return swift_deallocObject();
}

id sub_1B22107EC(uint64_t a1, void (*a2)(id))
{
  swift_getAssociatedTypeWitness();
  v4 = sub_1B2112224();
  return sub_1B220E500(v4, v5, a1, a2);
}

uint64_t sub_1B22108E0@<X0>(uint64_t *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  v5 = a3;
  v9 = *a4;
  v10 = a4[1];
  v12 = *__src;
  v11 = __src[1];
  v13 = 1;
  if (!a3)
  {

    v13 = 0;
    a2 = v12;
    v5 = v11;
  }

  memcpy(&__srca[7], __src, 0xA2uLL);
  sub_1B21619D8(&qword_1EB7A0F50, &qword_1B2254C10);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1B22546B0;
  *(v14 + 32) = a2;
  *(v14 + 40) = v5;
  *(v14 + 48) = v13;
  *(v14 + 56) = v12;
  *(v14 + 64) = v11;
  *(v14 + 72) = v9;
  *(v14 + 80) = v10;
  *(v14 + 88) = 1;
  memcpy((v14 + 89), __srca, 0xA9uLL);
  *(v14 + 258) = 0;
  *a5 = v14;
}

uint64_t BelongsToAssociation._sqlAssociation.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t sub_1B2210A38(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B2210A74(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void (*sub_1B2210AB8(void *a1))(void *a1)
{
  v2 = sub_1B2170FB8(0x28uLL);
  *a1 = v2;
  v2[4] = BelongsToAssociation._sqlAssociation.modify();
  return sub_1B2171E40;
}

uint64_t sub_1B2210B14(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1B2210B50(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B2210B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B2210BE0@<X0>(uint64_t *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = *a4;
  v8 = a4[1];
  v10 = *__src;
  v9 = __src[1];
  if (a3)
  {
    v11 = a3;
    v13 = 1;
  }

  else
  {

    v13 = 0;
    a2 = v10;
    v11 = v9;
  }

  memcpy(&v16[7], __src, 0xA2uLL);
  sub_1B21619D8(&qword_1EB7A0F50, &qword_1B2254C10);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1B22546B0;
  *(v14 + 32) = a2;
  *(v14 + 40) = v11;
  *(v14 + 48) = v13;
  *(v14 + 56) = v10;
  *(v14 + 64) = v9;
  *(v14 + 72) = v7;
  *(v14 + 80) = v8;
  *(v14 + 88) = 0;
  memcpy((v14 + 89), v16, 0xA9uLL);
  *(v14 + 258) = 0;
  *a5 = v14;
}

uint64_t HasOneAssociation._sqlAssociation.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t sub_1B2210D38(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B2210D74(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void (*sub_1B2210DB8(void *a1))(void *a1)
{
  v2 = sub_1B2170FB8(0x28uLL);
  *a1 = v2;
  v2[4] = HasOneAssociation._sqlAssociation.modify();
  return sub_1B2171E40;
}

uint64_t sub_1B2210E14(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1B2210E50(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B2210E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Database.create(table:temporary:ifNotExists:withoutRowID:body:)(uint64_t a1, uint64_t a2, char a3, char a4, char a5, void (*a6)(uint64_t), uint64_t a7)
{
  v7 = 2;
  if ((a3 & 1) == 0)
  {
    v7 = 0;
  }

  v8 = v7 & 0xFFFFFFFFFFFFFFFELL | a4 & 1;
  if (a5)
  {
    v8 |= 4uLL;
  }

  v10 = v8;
  return Database.create(table:options:body:)(a1, a2, &v10, a6);
}

uint64_t Database.create(table:options:body:)(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(uint64_t))
{
  v8 = *a3;
  type metadata accessor for TableDefinition();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E7CC0];
  *(v9 + 40) = MEMORY[0x1E69E7CC0];
  *(v9 + 48) = 0;
  *(v9 + 56) = 0;
  *(v9 + 64) = v10;
  *(v9 + 72) = v10;
  *(v9 + 80) = v10;
  *(v9 + 88) = v10;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = v8;

  a4(v9);
  if (v4)
  {
  }

  sub_1B2111BFC();
  v12 = sub_1B221103C(v11);
  sub_1B212CF04(v12, v13, MEMORY[0x1E69E7CC8], v15, v16);
}

unint64_t sub_1B221103C(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC0];
  sub_1B214400C();
  v3 = v2;
  v4 = *(v2 + 16);
  v5 = v4 + 1;
  if (v4 >= *(v2 + 24) >> 1)
  {
    goto LABEL_264;
  }

  while (1)
  {
    *(v3 + 16) = v5;
    v6 = v3 + 16 * v4;
    *(v6 + 32) = 0x455441455243;
    *(v6 + 40) = 0xE600000000000000;
    v7 = v392;
    v8 = *(v392 + 32);
    v390 = v8;
    if ((v8 & 2) != 0)
    {
      v9 = (v4 + 2);
      if (v9 > *(v3 + 24) >> 1)
      {
LABEL_266:
        sub_1B214400C();
        LOBYTE(v8) = v390;
        v7 = v392;
        v3 = v378;
      }

      *(v3 + 16) = v9;
      v10 = v3 + 16 * v5;
      *(v10 + 32) = 0x5241524F504D4554;
      *(v10 + 40) = 0xE900000000000059;
      v5 = *(v3 + 16);
    }

    v11 = v5 + 1;
    if (v5 >= *(v3 + 24) >> 1)
    {
      sub_1B214400C();
      LOBYTE(v8) = v390;
      v7 = v392;
      v3 = v376;
    }

    *(v3 + 16) = v11;
    v12 = v3 + 16 * v5;
    *(v12 + 32) = 0x454C424154;
    *(v12 + 40) = 0xE500000000000000;
    if (v8)
    {
      v13 = v5 + 2;
      if (v13 > *(v3 + 24) >> 1)
      {
        sub_1B214400C();
        v7 = v392;
        v3 = v379;
      }

      *(v3 + 16) = v13;
      v14 = v3 + 16 * v11;
      strcpy((v14 + 32), "IF NOT EXISTS");
      *(v14 + 46) = -4864;
    }

    v15 = v3;
    v16 = *(v7 + 16);
    v17 = *(v7 + 24);
    __dst[0] = 34;
    __dst[1] = 0xE100000000000000;
    v396 = v17;
    v397 = v16;
    MEMORY[0x1B2741EB0]();
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);
    v18 = __dst[0];
    v19 = __dst[1];
    v20 = *(v15 + 16);
    v21 = v15;
    if (v20 >= *(v15 + 24) >> 1)
    {
      sub_1B214400C();
      v21 = v377;
    }

    *(v21 + 16) = v20 + 1;
    v391 = v21;
    v22 = v21 + 16 * v20;
    *(v22 + 32) = v18;
    *(v22 + 40) = v19;
    if (*(v392 + 48))
    {
      v398 = *(v392 + 48);
      swift_bridgeObjectRetain_n();
LABEL_15:
      v23 = v392;
      goto LABEL_21;
    }

    swift_beginAccess();
    v23 = v392;
    v24 = *(v392 + 40);
    v25 = *(v24 + 16);
    v26 = (v24 + 40);
    if (v25)
    {
      while (1)
      {
        if (*v26 != 1)
        {
          v27 = *(v26 - 1);
          if (*(v27 + 49) << 8 != 512)
          {
            break;
          }
        }

        v26 += 16;
        if (!--v25)
        {
          goto LABEL_20;
        }
      }

      sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
      v98 = swift_allocObject();
      *(v98 + 16) = xmmword_1B22546B0;
      v99 = *(v27 + 24);
      *(v98 + 32) = *(v27 + 16);
      *(v98 + 40) = v99;

      v398 = v98;

      goto LABEL_15;
    }

LABEL_20:
    v398 = &unk_1F2969BA8;
LABEL_21:
    v421[0] = v1;
    v28 = v23;
    swift_beginAccess();
    v29 = *(v28 + 40);
    v5 = *(v29 + 16);
    if (v5)
    {
      break;
    }

    v35 = MEMORY[0x1E69E7CC0];
LABEL_36:
    v4 = v421;
    sub_1B2156C88(v35);
    v62 = *(v392 + 48);
    if (v62)
    {
      v63 = *(v392 + 56);

      v64 = MEMORY[0x1E69E7CC0];
      sub_1B214400C();
      v70 = v69;
      v71 = *(v69 + 16);
      if (v71 >= *(v69 + 24) >> 1)
      {
        sub_1B214400C();
        v70 = v380;
      }

      v414 = v63;
      *(v70 + 16) = v71 + 1;
      v72 = v70 + 16 * v71;
      *(v72 + 32) = 0x205952414D495250;
      *(v72 + 40) = 0xEB0000000059454BLL;
      __dst[0] = 40;
      __dst[1] = 0xE100000000000000;
      v73 = *(v62 + 16);
      if (v73)
      {
        v409 = v70;
        __src[0] = v64;
        sub_1B2116B10(0, v73, 0, v65, v66, v67, v68);
        v64 = __src[0];
        v74 = (v62 + 40);
        do
        {
          v75 = *(v74 - 1);
          v76 = *v74;
          v423[0] = 34;
          v423[1] = 0xE100000000000000;

          MEMORY[0x1B2741EB0](v75, v76);
          MEMORY[0x1B2741EB0](34, 0xE100000000000000);

          v81 = v423[0];
          v82 = v423[1];
          __src[0] = v64;
          v84 = *(v64 + 16);
          v83 = *(v64 + 24);
          if (v84 >= v83 >> 1)
          {
            sub_1B2116B10(v83 > 1, v84 + 1, 1, v77, v78, v79, v80);
            v64 = __src[0];
          }

          *(v64 + 16) = v84 + 1;
          v85 = v64 + 16 * v84;
          *(v85 + 32) = v81;
          *(v85 + 40) = v82;
          v74 += 2;
          --v73;
        }

        while (v73);

        v70 = v409;
      }

      else
      {
      }

      v423[0] = v64;
      sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
      sub_1B215175C();
      v86 = sub_1B2252250();
      v88 = v87;

      MEMORY[0x1B2741EB0](v86, v88);

      MEMORY[0x1B2741EB0](41, 0xE100000000000000);
      v89 = __dst[0];
      v90 = __dst[1];
      v91 = *(v70 + 16);
      v92 = v91 + 1;
      if (v91 >= *(v70 + 24) >> 1)
      {
        sub_1B214400C();
        v70 = v381;
      }

      *(v70 + 16) = v92;
      v93 = v70 + 16 * v91;
      *(v93 + 32) = v89;
      *(v93 + 40) = v90;
      v1 = MEMORY[0x1E69E7CC0];
      v94 = v91 + 2;
      if (v92 >= *(v70 + 24) >> 1)
      {
        sub_1B214400C();
        v70 = v384;
      }

      *(v70 + 16) = v94;
      v95 = v70 + 16 * v92;
      *(v95 + 32) = 0x4C464E4F43204E4FLL;
      *(v95 + 40) = 0xEB00000000544349;
      v96 = 0xE500000000000000;
      v97 = 0x54524F4241;
      switch(v414)
      {
        case 0:
          v96 = 0xE800000000000000;
          v97 = 0x4B4341424C4C4F52;
          goto LABEL_58;
        case 1:
          goto LABEL_58;
        case 2:
          v96 = 0xE400000000000000;
          v97 = 1279869254;
          goto LABEL_58;
        case 3:
          v96 = 0xE600000000000000;
          v97 = 0x45524F4E4749;
          goto LABEL_58;
        case 4:
          v96 = 0xE700000000000000;
          v97 = 0x4543414C504552;
LABEL_58:
          v100 = *(v70 + 16);
          if (v100 >= *(v70 + 24) >> 1)
          {
            sub_1B214400C();
            v70 = v385;
          }

          *(v70 + 16) = v100 + 1;
          v101 = v70 + 16 * v100;
          *(v101 + 32) = v97;
          *(v101 + 40) = v96;
          break;
        default:
          break;
      }

      __dst[0] = v70;
      v5 = sub_1B2252250();
      v4 = v102;

      v103 = v421[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B214400C();
        v103 = v382;
      }

      v104 = *(v103 + 16);
      if (v104 >= *(v103 + 24) >> 1)
      {
        sub_1B214400C();
        v103 = v383;
      }

      *(v103 + 16) = v104 + 1;
      v105 = v103 + 16 * v104;
      *(v105 + 32) = v5;
      *(v105 + 40) = v4;
      v421[0] = v103;
    }

    swift_beginAccess();
    v106 = v392;
    v107 = *(v392 + 64);
    v405 = *(v107 + 16);
    if (!v405)
    {
LABEL_96:
      v5 = v106;
      swift_beginAccess();
      v157 = *(v5 + 72);
      v395 = *(v157 + 16);
      if (v395)
      {
        v394 = v157 + 32;

        v158 = 0;
        v393 = v157;
        while (1)
        {
          if (v158 >= *(v157 + 16))
          {
            goto LABEL_258;
          }

          v402 = v158;
          v159 = (v394 + 40 * v158);
          v160 = *v159;
          v161 = v159[1];
          v162 = v159[2];
          v163 = v159[3];
          v400 = *(v159 + 32);
          v404 = *(v159 + 33);
          v399 = *(v159 + 34);

          sub_1B214400C();
          v169 = v168;
          v170 = *(v168 + 16);
          if (v170 >= *(v168 + 24) >> 1)
          {
            sub_1B214400C();
            v169 = v277;
          }

          *(v169 + 16) = v170 + 1;
          v171 = v169 + 16 * v170;
          *(v171 + 32) = 0x204E474945524F46;
          *(v171 + 40) = 0xEB0000000059454BLL;
          __dst[0] = 40;
          __dst[1] = 0xE100000000000000;
          v172 = *(v160 + 16);
          v416 = v163;
          v407 = v162;
          if (v172)
          {
            v411 = v161;
            __src[0] = v1;
            sub_1B2116B10(0, v172, 0, v164, v165, v166, v167);
            v173 = __src[0];
            v174 = (v160 + 40);
            do
            {
              v175 = *(v174 - 1);
              v176 = *v174;
              v423[0] = 34;
              v423[1] = 0xE100000000000000;

              MEMORY[0x1B2741EB0](v175, v176);
              MEMORY[0x1B2741EB0](34, 0xE100000000000000);

              v181 = v423[0];
              v182 = v423[1];
              __src[0] = v173;
              v184 = *(v173 + 16);
              v183 = *(v173 + 24);
              if (v184 >= v183 >> 1)
              {
                sub_1B2116B10(v183 > 1, v184 + 1, 1, v177, v178, v179, v180);
                v173 = __src[0];
              }

              *(v173 + 16) = v184 + 1;
              v185 = v173 + 16 * v184;
              *(v185 + 32) = v181;
              *(v185 + 40) = v182;
              v174 += 2;
              --v172;
            }

            while (v172);
            v162 = v407;
            v161 = v411;
            v163 = v416;
          }

          else
          {
            v173 = v1;
          }

          v423[0] = v173;
          sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
          sub_1B215175C();
          v186 = sub_1B2252250();
          v188 = v187;

          MEMORY[0x1B2741EB0](v186, v188);

          MEMORY[0x1B2741EB0](41, 0xE100000000000000);
          v189 = __dst[0];
          v190 = __dst[1];
          v191 = *(v169 + 16);
          v192 = *(v169 + 24) >> 1;
          v193 = v191 + 1;
          if (v192 <= v191)
          {
            sub_1B214400C();
            v169 = v278;
            v192 = *(v278 + 24) >> 1;
          }

          *(v169 + 16) = v193;
          v194 = v169 + 16 * v191;
          *(v194 + 32) = v189;
          *(v194 + 40) = v190;
          v1 = MEMORY[0x1E69E7CC0];
          if (v192 < (v191 + 2))
          {
            sub_1B214400C();
            v169 = v279;
          }

          *(v169 + 16) = v191 + 2;
          v195 = v169 + 16 * v193;
          *(v195 + 32) = 0x434E455245464552;
          *(v195 + 40) = 0xEA00000000005345;
          if (v163)
          {
            __dst[0] = 34;
            __dst[1] = 0xE100000000000000;

            MEMORY[0x1B2741EB0](v161, v162);
            MEMORY[0x1B2741EB0](34, 0xE100000000000000);
            MEMORY[0x1B2741EB0](40, 0xE100000000000000);
            v196 = v163;
            v197 = *(v163 + 16);
            if (v197)
            {
              __src[0] = v1;
              sub_1B216E534(v197);
              v198 = __src[0];
              v199 = (v196 + 40);
              do
              {
                v200 = *(v199 - 1);
                v201 = *v199;
                v423[0] = 34;
                v423[1] = 0xE100000000000000;

                MEMORY[0x1B2741EB0](v200, v201);
                MEMORY[0x1B2741EB0](34, 0xE100000000000000);

                v202 = v423[0];
                v203 = v423[1];
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_1B2116B10(0, *(v198 + 16) + 1, 1, v204, v205, v206, v207);
                  v198 = __src[0];
                }

                v209 = *(v198 + 16);
                v208 = *(v198 + 24);
                if (v209 >= v208 >> 1)
                {
                  sub_1B2116B10(v208 > 1, v209 + 1, 1, v204, v205, v206, v207);
                  v198 = __src[0];
                }

                *(v198 + 16) = v209 + 1;
                v210 = v198 + 16 * v209;
                *(v210 + 32) = v202;
                *(v210 + 40) = v203;
                v199 += 2;
                --v197;
              }

              while (v197);

              v1 = MEMORY[0x1E69E7CC0];
            }

            else
            {

              v198 = v1;
            }

            v423[0] = v198;
            v226 = sub_1B2252250();
            v228 = v227;

            MEMORY[0x1B2741EB0](v226, v228);
            goto LABEL_154;
          }

          v211 = v161 == v397 && v162 == v396;
          if (v211 || (sub_1B22531F0() & 1) != 0)
          {
            __dst[0] = 34;
            __dst[1] = 0xE100000000000000;
            MEMORY[0x1B2741EB0](v161, v162);
            MEMORY[0x1B2741EB0](34, 0xE100000000000000);
            MEMORY[0x1B2741EB0](40, 0xE100000000000000);
            v212 = v398[2];
            if (!v212)
            {
              goto LABEL_152;
            }

            __src[0] = v1;
            sub_1B216E534(v212);
            v213 = __src[0];
            v214 = v398 + 5;
            do
            {
              v215 = *(v214 - 1);
              v216 = *v214;
              v423[0] = 34;
              v423[1] = 0xE100000000000000;

              MEMORY[0x1B2741EB0](v215, v216);
              MEMORY[0x1B2741EB0](34, 0xE100000000000000);

              v217 = v423[0];
              v218 = v423[1];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1B2116B10(0, *(v213 + 16) + 1, 1, v219, v220, v221, v222);
                v213 = __src[0];
              }

              v224 = *(v213 + 16);
              v223 = *(v213 + 24);
              if (v224 >= v223 >> 1)
              {
                sub_1B2116B10(v223 > 1, v224 + 1, 1, v219, v220, v221, v222);
                v213 = __src[0];
              }

              *(v213 + 16) = v224 + 1;
              v225 = v213 + 16 * v224;
              *(v225 + 32) = v217;
              *(v225 + 40) = v218;
              v214 += 2;
              --v212;
            }

            while (v212);
          }

          else
          {
            Database.primaryKey(_:)();
            if (v420)
            {

LABEL_210:
              v5 = v421[0];

              goto LABEL_217;
            }

            v229 = __dst[0];
            v230 = __dst[1];
            v231 = LOBYTE(__dst[2]);
            __dst[0] = String.quotedDatabaseIdentifier.getter();
            __dst[1] = v232;
            MEMORY[0x1B2741EB0](40, 0xE100000000000000);
            if (v231)
            {
              v233 = &unk_1F2969308;
              if (v231 == 1)
              {
                v233 = v229;
              }
            }

            else
            {
              sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
              v234 = swift_allocObject();
              *(v234 + 16) = xmmword_1B22546B0;
              *(v234 + 32) = v229;
              *(v234 + 40) = v230;
              v233 = v234;
            }

            v235 = sub_1B216B140(v233);
            if (!v235)
            {

LABEL_152:
              v213 = v1;
              goto LABEL_153;
            }

            v5 = v235;
            __src[0] = v1;
            v9 = __src;
            sub_1B216E534(v235);
            if ((v5 & 0x8000000000000000) != 0)
            {
              __break(1u);
              goto LABEL_266;
            }

            v213 = __src[0];
            v236 = (v233 + 40);
            do
            {
              v237 = *(v236 - 1);
              v238 = *v236;
              v423[0] = 34;
              v423[1] = 0xE100000000000000;

              MEMORY[0x1B2741EB0](v237, v238);
              MEMORY[0x1B2741EB0](34, 0xE100000000000000);

              v239 = v423[0];
              v240 = v423[1];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1B2116B10(0, *(v213 + 16) + 1, 1, v241, v242, v243, v244);
                v213 = __src[0];
              }

              v246 = *(v213 + 16);
              v245 = *(v213 + 24);
              if (v246 >= v245 >> 1)
              {
                sub_1B2116B10(v245 > 1, v246 + 1, 1, v241, v242, v243, v244);
                v213 = __src[0];
              }

              *(v213 + 16) = v246 + 1;
              v247 = v213 + 16 * v246;
              *(v247 + 32) = v239;
              *(v247 + 40) = v240;
              v236 += 2;
              --v5;
            }

            while (v5);
          }

          v1 = MEMORY[0x1E69E7CC0];
LABEL_153:
          v423[0] = v213;
          v248 = sub_1B2252250();
          v250 = v249;

          MEMORY[0x1B2741EB0](v248, v250);
LABEL_154:

          MEMORY[0x1B2741EB0](41, 0xE100000000000000);
          v251 = __dst[0];
          v252 = __dst[1];
          v253 = *(v169 + 16);
          v254 = v253 + 1;
          if (v253 >= *(v169 + 24) >> 1)
          {
            sub_1B214400C();
            v169 = v280;
          }

          *(v169 + 16) = v254;
          v255 = v169 + 16 * v253;
          *(v255 + 32) = v251;
          *(v255 + 40) = v252;
          v256 = v400;
          v257 = v404;
          if (v400 != 4)
          {
            v258 = v253 + 2;
            if (v254 >= *(v169 + 24) >> 1)
            {
              sub_1B214400C();
              v256 = v400;
              v257 = v404;
              v169 = v283;
            }

            *(v169 + 16) = v258;
            v259 = v169 + 16 * v254;
            *(v259 + 32) = 0x54454C4544204E4FLL;
            *(v259 + 40) = 0xE900000000000045;
            v260 = 0xE700000000000000;
            v261 = 0x45444143534143;
            switch(v256)
            {
              case 1:
                v260 = 0xE800000000000000;
                v261 = 0x5443495254534552;
                break;
              case 2:
                v260 = 0xE800000000000000;
                v261 = 0x4C4C554E20544553;
                break;
              case 3:
                v260 = 0xEB00000000544C55;
                v261 = 0x4146454420544553;
                break;
              default:
                break;
            }

            if (v258 >= *(v169 + 24) >> 1)
            {
              sub_1B214400C();
              v257 = v404;
              v169 = v284;
            }

            *(v169 + 16) = v253 + 3;
            v262 = v169 + 16 * v258;
            *(v262 + 32) = v261;
            *(v262 + 40) = v260;
          }

          v263 = *(v169 + 16);
          v264 = v263 + 1;
          if (v263 >= *(v169 + 24) >> 1)
          {
            sub_1B214400C();
            v257 = v404;
            v169 = v285;
          }

          *(v169 + 16) = v264;
          v265 = v169 + 16 * v263;
          *(v265 + 32) = 0x5441445055204E4FLL;
          *(v265 + 40) = 0xE900000000000045;
          v266 = 0xE700000000000000;
          v267 = 0x45444143534143;
          switch(v257)
          {
            case 0:
              goto LABEL_172;
            case 1:
              v266 = 0xE800000000000000;
              v267 = 0x5443495254534552;
              goto LABEL_172;
            case 2:
              v266 = 0xE800000000000000;
              v267 = 0x4C4C554E20544553;
              goto LABEL_172;
            case 3:
              v266 = 0xEB00000000544C55;
              v267 = 0x4146454420544553;
LABEL_172:
              v268 = v263 + 2;
              if (v264 >= *(v169 + 24) >> 1)
              {
                sub_1B214400C();
                v169 = v286;
              }

              *(v169 + 16) = v268;
              v269 = v169 + 16 * v264;
              *(v269 + 32) = v267;
              *(v269 + 40) = v266;
              break;
            default:
              break;
          }

          if (v399)
          {
            v270 = *(v169 + 16);
            if (v270 >= *(v169 + 24) >> 1)
            {
              sub_1B214400C();
              v169 = v287;
            }

            *(v169 + 16) = v270 + 1;
            v271 = v169 + 16 * v270;
            *(v271 + 32) = 0xD00000000000001DLL;
            *(v271 + 40) = 0x80000001B226FFE0;
          }

          __dst[0] = v169;
          v5 = sub_1B2252250();
          v4 = v272;

          v273 = v421[0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1B214400C();
            v273 = v281;
          }

          v157 = v393;
          v274 = *(v273 + 16);
          v275 = v402;
          if (v274 >= *(v273 + 24) >> 1)
          {
            sub_1B214400C();
            v275 = v402;
            v273 = v282;
          }

          v158 = v275 + 1;
          *(v273 + 16) = v274 + 1;
          v276 = v273 + 16 * v274;
          *(v276 + 32) = v5;
          *(v276 + 40) = v4;
          v421[0] = v273;
          if (v158 == v395)
          {

            break;
          }
        }
      }

      v412 = v390 & 1;

      v5 = v392;
      swift_beginAccess();
      v288 = *(v392 + 80);
      v417 = *(v288 + 16);

      v289 = 0;
      v290 = 32;
      v291 = MEMORY[0x1E69E7CC0];
      while (v417 != v289)
      {
        if (v289 >= *(v288 + 16))
        {
          goto LABEL_260;
        }

        memcpy(__dst, (v288 + v290), 0xA3uLL);
        __src[0] = 0x28204B43454843;
        __src[1] = 0xE700000000000000;
        sub_1B2127DC0(__dst, v423);
        if (qword_1ED85D658 != -1)
        {
          swift_once();
        }

        v292 = qword_1ED861900;

        sub_1B2116B4C();
        type metadata accessor for SQLGenerationContext();
        swift_allocObject();

        v294 = sub_1B2117164(v293, v292, v291);
        memcpy(v423, __dst, 0xA3uLL);
        v295 = sub_1B2127E58(v294, 0);
        if (v420)
        {

          sub_1B21356F8(__dst);
          goto LABEL_210;
        }

        v297 = v295;
        v298 = v296;

        MEMORY[0x1B2741EB0](v297, v298);

        MEMORY[0x1B2741EB0](41, 0xE100000000000000);
        v299 = __src[0];
        v300 = __src[1];
        sub_1B214400C();
        v302 = v301;
        v303 = *(v301 + 16);
        if (v303 >= *(v301 + 24) >> 1)
        {
          sub_1B214400C();
          v302 = v308;
        }

        *(v302 + 16) = v303 + 1;
        v304 = v302 + 16 * v303;
        *(v304 + 32) = v299;
        *(v304 + 40) = v300;
        v423[0] = v302;
        sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
        sub_1B215175C();
        v5 = sub_1B2252250();
        v4 = v305;

        v1 = v421[0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B214400C();
          v1 = v309;
        }

        v306 = *(v1 + 16);
        if (v306 >= *(v1 + 24) >> 1)
        {
          sub_1B214400C();
          v1 = v310;
        }

        sub_1B21356F8(__dst);
        *(v1 + 16) = v306 + 1;
        v307 = v1 + 16 * v306;
        *(v307 + 32) = v5;
        *(v307 + 40) = v4;
        v421[0] = v1;
        v290 += 168;
        ++v289;
      }

      v5 = v392;
      swift_beginAccess();
      v311 = *(v392 + 88);
      v418 = *(v311 + 16);

      v312 = 0;
      v313 = MEMORY[0x1E69E7CC0];
      while (v418 != v312)
      {
        if (v312 >= *(v311 + 16))
        {
          goto LABEL_261;
        }

        v5 = *(v311 + 8 * v312 + 32);
        v314 = qword_1ED85D658;

        if (v314 != -1)
        {
          swift_once();
        }

        v315 = qword_1ED861900;

        sub_1B2116B4C();
        type metadata accessor for SQLGenerationContext();
        swift_allocObject();

        v317 = sub_1B2117164(v316, v315, v313);
        __dst[0] = v5;
        v324 = sub_1B2119120(v317, v318, v319, v320, v321, v322, v323);
        if (v420)
        {

          goto LABEL_217;
        }

        v4 = v324;
        v326 = v325;

        v5 = v421[0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B214400C();
          v5 = v329;
        }

        v327 = *(v5 + 16);
        v1 = v327 + 1;
        if (v327 >= *(v5 + 24) >> 1)
        {
          sub_1B214400C();
          v5 = v330;
        }

        *(v5 + 16) = v1;
        v328 = v5 + 16 * v327;
        *(v328 + 32) = v4;
        *(v328 + 40) = v326;
        v421[0] = v5;
        ++v312;
      }

      __dst[0] = 40;
      __dst[1] = 0xE100000000000000;
      v423[0] = v421[0];
      sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
      sub_1B215175C();
      v331 = sub_1B2252250();
      v333 = v332;

      MEMORY[0x1B2741EB0](v331, v333);

      MEMORY[0x1B2741EB0](41, 0xE100000000000000);
      v334 = __dst[0];
      v335 = __dst[1];
      v336 = v391;
      v337 = *(v391 + 16);
      if (v337 >= *(v391 + 24) >> 1)
      {
        sub_1B214400C();
        v336 = v386;
      }

      *(v336 + 16) = v337 + 1;
      v338 = v336;
      v339 = v336 + 16 * v337;
      *(v339 + 32) = v334;
      *(v339 + 40) = v335;
      if ((v390 & 4) != 0)
      {
        sub_1B214400C();
        v313 = v342;
        v4 = *(v342 + 16);
        v5 = v4 + 1;
        if (v4 >= *(v342 + 24) >> 1)
        {
LABEL_268:
          sub_1B214400C();
          v313 = v389;
        }

        *(v313 + 16) = v5;
        v343 = v313 + 16 * v4;
        strcpy((v343 + 32), "WITHOUT ROWID");
        *(v343 + 46) = -4864;
      }

      else if (!*(v313 + 16))
      {

        v340 = v338;
        v341 = v390 & 1;
LABEL_223:
        __dst[0] = v340;
        v349 = sub_1B2252250();
        v4 = v350;

        sub_1B214400C();
        v352 = v351;
        v353 = *(v351 + 16);
        if (v353 >= *(v351 + 24) >> 1)
        {
          sub_1B214400C();
          v352 = v387;
        }

        *(v352 + 16) = v353 + 1;
        v354 = v352 + 16 * v353;
        *(v354 + 32) = v349;
        *(v354 + 40) = v4;
        v412 = v352;
        v425 = v352;
        v355 = *(v392 + 40);
        v1 = sub_1B2142D9C(v355);

        v356 = 0;
        v357 = v355 + 40;
        v338 = MEMORY[0x1E69E7CC0];
LABEL_226:
        v5 = v357 + 16 * v356;
        while (v1 != v356)
        {
          if (v356 >= *(v355 + 16))
          {
            goto LABEL_262;
          }

          if (*v5)
          {
            sub_1B22188B0(__dst);
          }

          else
          {
            v4 = *(v5 - 8);
            v423[0] = v341;

            sub_1B221708C(v397, v396, v423, __dst);
            sub_1B22188B8(v4, 0);
          }

          memcpy(v423, __dst, 0xD3uLL);
          if (sub_1B2117000(v423) != 1)
          {
            memcpy(__src, __dst, 0xD3uLL);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1B2162C4C();
              v338 = v358;
            }

            v4 = *(v338 + 16);
            if (v4 >= *(v338 + 24) >> 1)
            {
              sub_1B2162C4C();
              v338 = v359;
            }

            ++v356;
            memcpy(v421, __src, 0xD3uLL);
            *(v338 + 16) = v4 + 1;
            memcpy((v338 + 216 * v4 + 32), v421, 0xD3uLL);
            v357 = v355 + 40;
            goto LABEL_226;
          }

          memcpy(__src, __dst, 0xD3uLL);
          sub_1B212AC5C(__src, qword_1EB7A2F20, &qword_1B22624E8);
          v5 += 16;
          ++v356;
        }

        v360 = sub_1B216B140(v338);
        if (!v360)
        {

          v366 = MEMORY[0x1E69E7CC0];
LABEL_255:
          sub_1B2156C88(v366);
          __dst[0] = v425;
          v5 = sub_1B2252250();

          return v5;
        }

        v5 = v360;
        v421[0] = MEMORY[0x1E69E7CC0];
        v4 = v421;
        sub_1B216E534(v360);
        if ((v5 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_268;
        }

        v361 = 0;
        v419 = v5 - 1;
        v362 = 32;
        while (v361 < *(v338 + 16))
        {
          memcpy(__dst, (v338 + v362), 0xD3uLL);
          memcpy(v423, __dst, 0xD3uLL);
          sub_1B22188C4(__dst, __src);
          v4 = v423;
          v363 = sub_1B22148F4();
          if (v420)
          {

            sub_1B2217D28(__dst);

            goto LABEL_252;
          }

          v5 = v363;
          v365 = v364;
          sub_1B2217D28(__dst);
          v366 = v421[0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = v421;
            sub_1B2116B10(0, *(v366 + 16) + 1, 1, v367, v368, v369, v370);
            v366 = v421[0];
          }

          v372 = *(v366 + 16);
          v371 = *(v366 + 24);
          v1 = v372 + 1;
          if (v372 >= v371 >> 1)
          {
            v4 = v421;
            sub_1B2116B10(v371 > 1, v372 + 1, 1, v367, v368, v369, v370);
            v366 = v421[0];
          }

          *(v366 + 16) = v1;
          v373 = v366 + 16 * v372;
          *(v373 + 32) = v5;
          *(v373 + 40) = v365;
          if (v419 == v361)
          {

            goto LABEL_255;
          }

          v362 += 216;
          ++v361;
        }

        goto LABEL_263;
      }

      __dst[0] = v313;
      v344 = sub_1B2252250();
      v346 = v345;

      v340 = v338;
      v347 = *(v338 + 16);
      if (v347 >= *(v338 + 24) >> 1)
      {
        sub_1B214400C();
        v340 = v388;
      }

      v341 = v412;
      *(v340 + 16) = v347 + 1;
      v348 = v340 + 16 * v347;
      *(v348 + 32) = v344;
      *(v348 + 40) = v346;
      goto LABEL_223;
    }

    v108 = v421[0];
    v401 = v107 + 32;

    v109 = 0;
    v403 = v107;
    while (v109 < *(v107 + 16))
    {
      v110 = (v401 + 16 * v109);
      v111 = *v110;
      v408 = *(v110 + 8);
      v410 = v109;

      sub_1B214400C();
      v117 = v116;
      v118 = *(v116 + 16);
      if (v118 >= *(v116 + 24) >> 1)
      {
        sub_1B214400C();
        v117 = v151;
      }

      v415 = v108;
      *(v117 + 16) = v118 + 1;
      v119 = v117 + 16 * v118;
      *(v119 + 32) = 0x455551494E55;
      *(v119 + 40) = 0xE600000000000000;
      __dst[0] = 40;
      __dst[1] = 0xE100000000000000;
      v120 = *(v111 + 16);
      if (v120)
      {
        __src[0] = v1;
        sub_1B2116B10(0, v120, 0, v112, v113, v114, v115);
        v121 = __src[0];
        v122 = (v111 + 40);
        do
        {
          v123 = *(v122 - 1);
          v124 = *v122;
          v423[0] = 34;
          v423[1] = 0xE100000000000000;

          MEMORY[0x1B2741EB0](v123, v124);
          MEMORY[0x1B2741EB0](34, 0xE100000000000000);

          v129 = v423[0];
          v130 = v423[1];
          __src[0] = v121;
          v132 = *(v121 + 16);
          v131 = *(v121 + 24);
          if (v132 >= v131 >> 1)
          {
            sub_1B2116B10(v131 > 1, v132 + 1, 1, v125, v126, v127, v128);
            v121 = __src[0];
          }

          *(v121 + 16) = v132 + 1;
          v133 = v121 + 16 * v132;
          *(v133 + 32) = v129;
          *(v133 + 40) = v130;
          v122 += 2;
          --v120;
        }

        while (v120);

        v1 = MEMORY[0x1E69E7CC0];
      }

      else
      {

        v121 = v1;
      }

      v423[0] = v121;
      sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
      sub_1B215175C();
      v134 = sub_1B2252250();
      v136 = v135;

      MEMORY[0x1B2741EB0](v134, v136);

      MEMORY[0x1B2741EB0](41, 0xE100000000000000);
      v137 = __dst[0];
      v138 = __dst[1];
      v139 = *(v117 + 16);
      v140 = v139 + 1;
      if (v139 >= *(v117 + 24) >> 1)
      {
        sub_1B214400C();
        v117 = v152;
      }

      v108 = v415;
      *(v117 + 16) = v140;
      v141 = v117 + 16 * v139;
      *(v141 + 32) = v137;
      *(v141 + 40) = v138;
      v142 = v139 + 2;
      if (v140 >= *(v117 + 24) >> 1)
      {
        sub_1B214400C();
        v117 = v155;
      }

      *(v117 + 16) = v142;
      v143 = v117 + 16 * v140;
      *(v143 + 32) = 0x4C464E4F43204E4FLL;
      *(v143 + 40) = 0xEB00000000544349;
      v144 = 0xE500000000000000;
      v145 = 0x54524F4241;
      switch(v408)
      {
        case 0:
          v144 = 0xE800000000000000;
          v145 = 0x4B4341424C4C4F52;
          goto LABEL_87;
        case 1:
          goto LABEL_87;
        case 2:
          v144 = 0xE400000000000000;
          v145 = 1279869254;
          goto LABEL_87;
        case 3:
          v144 = 0xE600000000000000;
          v145 = 0x45524F4E4749;
          goto LABEL_87;
        case 4:
          v144 = 0xE700000000000000;
          v145 = 0x4543414C504552;
LABEL_87:
          v146 = *(v117 + 16);
          if (v146 >= *(v117 + 24) >> 1)
          {
            sub_1B214400C();
            v117 = v156;
          }

          *(v117 + 16) = v146 + 1;
          v147 = v117 + 16 * v146;
          *(v147 + 32) = v145;
          *(v147 + 40) = v144;
          break;
        default:
          break;
      }

      v107 = v403;
      __dst[0] = v117;
      v5 = sub_1B2252250();
      v4 = v148;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B214400C();
        v108 = v153;
      }

      v149 = *(v108 + 16);
      if (v149 >= *(v108 + 24) >> 1)
      {
        sub_1B214400C();
        v108 = v154;
      }

      v109 = v410 + 1;
      *(v108 + 16) = v149 + 1;
      v150 = v108 + 16 * v149;
      *(v150 + 32) = v5;
      *(v150 + 40) = v4;
      if (v410 + 1 == v405)
      {

        v421[0] = v108;
        v106 = v392;
        goto LABEL_96;
      }
    }

    __break(1u);
LABEL_258:
    __break(1u);
LABEL_259:
    __break(1u);
LABEL_260:
    __break(1u);
LABEL_261:
    __break(1u);
LABEL_262:
    __break(1u);
LABEL_263:
    __break(1u);
LABEL_264:
    sub_1B214400C();
    v3 = v375;
  }

  __dst[0] = v1;

  v4 = __dst;
  sub_1B2116B10(0, v5, 0, v30, v31, v32, v33);
  v34 = 0;
  v35 = __dst[0];
  v36 = (v29 + 40);
  v37 = v398;
  v413 = v5;
  while (1)
  {
    if (v34 >= *(v29 + 16))
    {
      goto LABEL_259;
    }

    v38 = *(v36 - 1);
    if (*v36)
    {
      v39 = qword_1ED85D658;

      if (v39 != -1)
      {
        swift_once();
      }

      v5 = qword_1ED861900;

      sub_1B2116B4C();
      type metadata accessor for SQLGenerationContext();
      swift_allocObject();

      v41 = sub_1B2117164(v40, v5, v1);
      v423[0] = v38;
      v4 = v423;
      v48 = sub_1B2119120(v41, v42, v43, v44, v45, v46, v47);
      if (v420)
      {

        swift_bridgeObjectRelease_n();

        sub_1B22188B8(v38, 1);

LABEL_252:

        return v5;
      }

      v5 = v48;
      v50 = v49;

      v51 = v38;
      v52 = 1;
      goto LABEL_31;
    }

    v4 = v38;
    sub_1B22151DC(a1, v397, v396, v37);
    if (v420)
    {
      break;
    }

    v5 = v53;
    v50 = v54;
    v51 = v38;
    v52 = 0;
LABEL_31:
    sub_1B22188B8(v51, v52);
    __dst[0] = v35;
    v60 = *(v35 + 16);
    v59 = *(v35 + 24);
    v37 = v398;
    if (v60 >= v59 >> 1)
    {
      v4 = __dst;
      sub_1B2116B10(v59 > 1, v60 + 1, 1, v55, v56, v57, v58);
      v37 = v398;
      v35 = __dst[0];
    }

    ++v34;
    *(v35 + 16) = v60 + 1;
    v61 = v35 + 16 * v60;
    *(v61 + 32) = v5;
    *(v61 + 40) = v50;
    v36 += 16;
    v1 = MEMORY[0x1E69E7CC0];
    if (v413 == v34)
    {

      goto LABEL_36;
    }
  }

  v5 = v398;

  sub_1B22188B8(v38, 0);

LABEL_217:

  return v5;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.rename(table:to:)(Swift::String table, Swift::String to)
{
  object = to._object;
  countAndFlagsBits = to._countAndFlagsBits;
  v4 = table._object;
  v5 = table._countAndFlagsBits;
  sub_1B2252CD0();

  MEMORY[0x1B2741EB0](v5, v4);
  sub_1B211D75C();
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);

  MEMORY[0x1B2741EB0](0x20454D414E455220, 0xEB00000000204F54);
  MEMORY[0x1B2741EB0](countAndFlagsBits, object);
  sub_1B211D75C();
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);

  sub_1B2111BFC();
  Database.execute(sql:arguments:)(v6, v7);
}

uint64_t Database.alter(table:body:)(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  type metadata accessor for TableAlteration();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E7CC0];
  v7[3] = a2;
  v7[4] = v8;
  v7[2] = a1;

  a3(v7);
  sub_1B2111BFC();
  v10 = sub_1B2213780(v9);
  if (v3)
  {
  }

  sub_1B212CF04(v10, v11, MEMORY[0x1E69E7CC8], v13, v14);
}

uint64_t sub_1B2213780(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  v167 = *(v3 + 16);
  v168 = v1;
  if (v167)
  {

    v5 = 0;
    v6 = (v3 + 64);
    v7 = MEMORY[0x1E69E7CC0];
    v166 = v3;
    while (v5 < *(v3 + 16))
    {
      v8 = *(v6 - 3);
      v10 = *(v6 - 2);
      v9 = *(v6 - 1);
      v11 = v5 + 1;
      v175 = v10;
      v176 = *(v6 - 4);
      switch(*v6)
      {
        case 1:
          v174 = *(v6 - 3);
          sub_1B221881C(*(v6 - 4), v8, v10, v9, 1);

          sub_1B214400C();
          v97 = v96;
          v98 = *(v96 + 16);
          v171 = v9;
          if (v98 >= *(v96 + 24) >> 1)
          {
            sub_1B214400C();
            v97 = v152;
          }

          *(v97 + 16) = v98 + 1;
          v99 = v97 + 16 * v98;
          *(v99 + 32) = 0x4154205245544C41;
          *(v99 + 40) = 0xEB00000000454C42;
          v100 = *(v168 + 16);
          v101 = *(v168 + 24);
          v179[0] = 34;
          v179[1] = 0xE100000000000000;
          MEMORY[0x1B2741EB0](v100, v101);
          MEMORY[0x1B2741EB0](34, 0xE100000000000000);
          v102 = v179[0];
          v103 = v179[1];
          v104 = *(v97 + 16);
          v105 = *(v97 + 24) >> 1;
          v106 = v104 + 1;
          if (v105 <= v104)
          {
            sub_1B214400C();
            v97 = v153;
            v105 = *(v153 + 24) >> 1;
          }

          *(v97 + 16) = v106;
          v107 = v97 + 16 * v104;
          *(v107 + 32) = v102;
          *(v107 + 40) = v103;
          if (v105 < (v104 + 2))
          {
            sub_1B214400C();
            v97 = v154;
          }

          *(v97 + 16) = v104 + 2;
          v108 = v97 + 16 * v106;
          *(v108 + 32) = 0x554C4F4320444441;
          *(v108 + 40) = 0xEA00000000004E4DLL;
          if (qword_1ED85D658 != -1)
          {
            swift_once();
          }

          v109 = qword_1ED861900;

          v110 = MEMORY[0x1E69E7CC0];
          sub_1B2116B4C();
          type metadata accessor for SQLGenerationContext();
          swift_allocObject();

          v112 = sub_1B2117164(v111, v109, v110);
          v179[0] = v176;
          v119 = sub_1B2119120(v112, v113, v114, v115, v116, v117, v118);
          if (v2)
          {

            v24 = v171;
            sub_1B2218788(v176, v174, v10, v171, 1);

            sub_1B2218788(v176, v174, v10, v171, 1);
            return v24;
          }

          v121 = v119;
          v122 = v120;
          v165 = v11;
          sub_1B2218788(v176, v174, v10, v171, 1);
          v123 = *(v97 + 16);
          if (v123 >= *(v97 + 24) >> 1)
          {
            sub_1B214400C();
            v97 = v158;
          }

          *(v97 + 16) = v123 + 1;
          v124 = v97 + 16 * v123;
          *(v124 + 32) = v121;
          *(v124 + 40) = v122;
          v179[0] = v97;
          sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
          sub_1B215175C();
          v125 = sub_1B2252250();
          v127 = v126;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1B214400C();
            v7 = v159;
          }

          v5 = v165;
          v128 = *(v7 + 16);
          if (v128 >= *(v7 + 24) >> 1)
          {
            sub_1B214400C();
            v7 = v160;
          }

          result = sub_1B2218788(v176, v174, v175, v171, 1);
          *(v7 + 16) = v128 + 1;
          v129 = v7 + 16 * v128;
          *(v129 + 32) = v125;
          *(v129 + 40) = v127;
          goto LABEL_70;
        case 2:
          v173 = *(v6 - 3);

          sub_1B214400C();
          v38 = v37;
          v39 = *(v37 + 16);
          v40 = v9;
          if (v39 >= *(v37 + 24) >> 1)
          {
            sub_1B214400C();
            v38 = v135;
          }

          *(v38 + 16) = v39 + 1;
          v41 = v38 + 16 * v39;
          *(v41 + 32) = 0x4154205245544C41;
          *(v41 + 40) = 0xEB00000000454C42;
          v42 = *(v168 + 16);
          v43 = *(v168 + 24);
          v179[0] = 34;
          v179[1] = 0xE100000000000000;
          MEMORY[0x1B2741EB0](v42, v43);
          MEMORY[0x1B2741EB0](34, 0xE100000000000000);
          v44 = v179[0];
          v45 = v179[1];
          v46 = *(v38 + 16);
          v47 = *(v38 + 24) >> 1;
          v48 = v46 + 1;
          if (v47 <= v46)
          {
            sub_1B214400C();
            v38 = v136;
            v47 = *(v136 + 24) >> 1;
          }

          *(v38 + 16) = v48;
          v49 = v38 + 16 * v46;
          *(v49 + 32) = v44;
          *(v49 + 40) = v45;
          if (v47 < (v46 + 2))
          {
            sub_1B214400C();
            v38 = v137;
          }

          *(v38 + 16) = v46 + 2;
          v50 = v38 + 16 * v48;
          strcpy((v50 + 32), "RENAME COLUMN");
          *(v50 + 46) = -4864;
          v179[0] = 34;
          v179[1] = 0xE100000000000000;
          MEMORY[0x1B2741EB0](v176, v173);
          MEMORY[0x1B2741EB0](34, 0xE100000000000000);
          v51 = v179[0];
          v52 = v179[1];
          v53 = *(v38 + 16);
          v54 = *(v38 + 24) >> 1;
          v55 = v53 + 1;
          if (v54 <= v53)
          {
            sub_1B214400C();
            v38 = v138;
            v54 = *(v138 + 24) >> 1;
          }

          *(v38 + 16) = v55;
          v56 = v38 + 16 * v53;
          *(v56 + 32) = v51;
          *(v56 + 40) = v52;
          v57 = v53 + 2;
          v58 = v11;
          if (v54 < v57)
          {
            sub_1B214400C();
            v38 = v139;
          }

          *(v38 + 16) = v57;
          v59 = v38 + 16 * v55;
          *(v59 + 32) = 20308;
          *(v59 + 40) = 0xE200000000000000;
          v179[0] = 34;
          v179[1] = 0xE100000000000000;
          MEMORY[0x1B2741EB0](v175, v40);
          MEMORY[0x1B2741EB0](34, 0xE100000000000000);
          v60 = v179[0];
          v61 = v179[1];
          v62 = *(v38 + 16);
          if (v62 >= *(v38 + 24) >> 1)
          {
            sub_1B214400C();
            v38 = v140;
          }

          *(v38 + 16) = v62 + 1;
          v63 = v38 + 16 * v62;
          *(v63 + 32) = v60;
          *(v63 + 40) = v61;
          v179[0] = v38;
          sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
          sub_1B215175C();
          v64 = sub_1B2252250();
          v66 = v65;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1B214400C();
            v7 = v141;
          }

          v5 = v58;
          v67 = *(v7 + 16);
          v68 = v67 + 1;
          if (v67 >= *(v7 + 24) >> 1)
          {
            sub_1B214400C();
            v7 = v142;
          }

          v69 = v176;
          v70 = v173;
          v71 = v175;
          v72 = v40;
          v73 = 2;
          goto LABEL_50;
        case 3:
          v74 = *(v6 - 3);

          sub_1B214400C();
          v76 = v75;
          v77 = *(v75 + 16);
          v170 = v9;
          if (v77 >= *(v75 + 24) >> 1)
          {
            sub_1B214400C();
            v76 = v143;
          }

          *(v76 + 16) = v77 + 1;
          v78 = v76 + 16 * v77;
          *(v78 + 32) = 0x4154205245544C41;
          *(v78 + 40) = 0xEB00000000454C42;
          v79 = *(v168 + 16);
          v80 = *(v168 + 24);
          v179[0] = 34;
          v179[1] = 0xE100000000000000;
          MEMORY[0x1B2741EB0](v79, v80);
          MEMORY[0x1B2741EB0](34, 0xE100000000000000);
          v81 = v179[0];
          v82 = v179[1];
          v83 = *(v76 + 16);
          v84 = *(v76 + 24) >> 1;
          v85 = v83 + 1;
          if (v84 <= v83)
          {
            sub_1B214400C();
            v76 = v144;
            v84 = *(v144 + 24) >> 1;
          }

          *(v76 + 16) = v85;
          v86 = v76 + 16 * v83;
          *(v86 + 32) = v81;
          *(v86 + 40) = v82;
          v87 = v83 + 2;
          v88 = v11;
          if (v84 < v87)
          {
            sub_1B214400C();
            v76 = v145;
          }

          *(v76 + 16) = v87;
          v89 = v76 + 16 * v85;
          *(v89 + 32) = 0x4C4F4320504F5244;
          *(v89 + 40) = 0xEB000000004E4D55;
          v179[0] = 34;
          v179[1] = 0xE100000000000000;
          MEMORY[0x1B2741EB0](v176, v74);
          MEMORY[0x1B2741EB0](34, 0xE100000000000000);
          v90 = v179[0];
          v91 = v179[1];
          v92 = *(v76 + 16);
          if (v92 >= *(v76 + 24) >> 1)
          {
            sub_1B214400C();
            v76 = v146;
          }

          *(v76 + 16) = v92 + 1;
          v93 = v76 + 16 * v92;
          *(v93 + 32) = v90;
          *(v93 + 40) = v91;
          v179[0] = v76;
          sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
          sub_1B215175C();
          v64 = sub_1B2252250();
          v66 = v94;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1B214400C();
            v7 = v147;
          }

          v5 = v88;
          v67 = *(v7 + 16);
          v68 = v67 + 1;
          if (v67 >= *(v7 + 24) >> 1)
          {
            sub_1B214400C();
            v7 = v148;
          }

          v69 = v176;
          v70 = v74;
          v71 = v175;
          v72 = v170;
          v73 = 3;
LABEL_50:
          result = sub_1B2218788(v69, v70, v71, v72, v73);
          *(v7 + 16) = v68;
          v95 = v7 + 16 * v67;
          *(v95 + 32) = v64;
          *(v95 + 40) = v66;
          goto LABEL_70;
        default:

          sub_1B214400C();
          v13 = v12;
          v14 = *(v12 + 16);
          v164 = v11;
          v169 = v9;
          v172 = v8;
          if (v14 >= *(v12 + 24) >> 1)
          {
            sub_1B214400C();
            v13 = v149;
          }

          *(v13 + 16) = v14 + 1;
          v15 = v13 + 16 * v14;
          *(v15 + 32) = 0x4154205245544C41;
          *(v15 + 40) = 0xEB00000000454C42;
          v16 = *(v168 + 16);
          v17 = *(v168 + 24);
          v179[0] = 34;
          v179[1] = 0xE100000000000000;
          v163 = v16;
          MEMORY[0x1B2741EB0]();
          MEMORY[0x1B2741EB0](34, 0xE100000000000000);
          v18 = v179[0];
          v19 = v179[1];
          v20 = *(v13 + 16);
          v21 = *(v13 + 24) >> 1;
          v22 = v20 + 1;
          if (v21 <= v20)
          {
            sub_1B214400C();
            v13 = v150;
            v21 = *(v150 + 24) >> 1;
          }

          *(v13 + 16) = v22;
          v23 = v13 + 16 * v20;
          *(v23 + 32) = v18;
          *(v23 + 40) = v19;
          v24 = v20 + 2;
          if (v21 < (v20 + 2))
          {
            sub_1B214400C();
            v13 = v151;
          }

          *(v13 + 16) = v24;
          v25 = v13 + 16 * v22;
          *(v25 + 32) = 0x554C4F4320444441;
          *(v25 + 40) = 0xEA00000000004E4DLL;
          sub_1B22151DC(a1, v163, v17, 0);
          if (v2)
          {

            sub_1B2218788(v176, v172, v175, v169, 0);

            return v24;
          }

          v28 = v26;
          v29 = v27;
          v30 = *(v13 + 16);
          if (v30 >= *(v13 + 24) >> 1)
          {
            sub_1B214400C();
            v13 = v155;
          }

          *(v13 + 16) = v30 + 1;
          v31 = v13 + 16 * v30;
          *(v31 + 32) = v28;
          *(v31 + 40) = v29;
          v179[0] = v13;
          sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
          sub_1B215175C();
          v32 = sub_1B2252250();
          v34 = v33;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1B214400C();
            v7 = v156;
          }

          v35 = *(v7 + 16);
          if (v35 >= *(v7 + 24) >> 1)
          {
            sub_1B214400C();
            v7 = v157;
          }

          *(v7 + 16) = v35 + 1;
          v36 = v7 + 16 * v35;
          *(v36 + 32) = v32;
          *(v36 + 40) = v34;
          v180 = 0;
          sub_1B221708C(v163, v17, &v180, __src);
          memcpy(__dst, __src, 0xD3uLL);
          memcpy(v179, __src, 0xD3uLL);
          if (sub_1B2117000(v179) == 1)
          {
            result = sub_1B2218788(v176, v172, v175, v169, 0);
            v5 = v164;
          }

          else
          {
            memcpy(__src, v179, 0xD3uLL);
            v5 = v164;
            v130 = sub_1B22148F4();
            v132 = v131;
            v133 = *(v7 + 16);
            if (v133 >= *(v7 + 24) >> 1)
            {
              sub_1B214400C();
              v7 = v161;
            }

            sub_1B212AC5C(__dst, qword_1EB7A2F20, &qword_1B22624E8);
            result = sub_1B2218788(v176, v172, v175, v169, 0);
            *(v7 + 16) = v133 + 1;
            v134 = v7 + 16 * v133;
            *(v134 + 32) = v130;
            *(v134 + 40) = v132;
          }

LABEL_70:
          v3 = v166;
          v6 += 40;
          if (v167 == v5)
          {

            goto LABEL_73;
          }

          break;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_73:
    v179[0] = v7;
    sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B215175C();
    v24 = sub_1B2252250();

    return v24;
  }

  return result;
}

uint64_t Database.create(index:on:columns:unique:ifNotExists:condition:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  v8 = a7 & 1;
  if (a6)
  {
    v8 = a7 & 1 | 2;
  }

  v10 = v8;
  return Database.create(index:on:columns:options:condition:)(a1, a2, a3, a4, a5, &v10, a8);
}

uint64_t Database.create(index:on:columns:options:condition:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v8 = v7;
  v14 = *a6;
  sub_1B2122B00(a7, v26, &qword_1EB7A10F0, &qword_1B225D320);
  v15 = v27;
  if (v27)
  {
    v16 = v28;
    sub_1B21139A0(v26, v27);
    v17 = *(v16 + 8);
    v18 = v16;
    v8 = v7;
    v17(__src, v15, v18);
    nullsub_1();
    sub_1B2113208(v26);
    memcpy(__dst, __src, 0xA3uLL);
  }

  else
  {
    sub_1B212AC5C(v26, &qword_1EB7A10F0, &qword_1B225D320);
    sub_1B2179418(__dst);
  }

  __src[0] = a1;
  __src[1] = a2;
  __src[2] = a3;
  __src[3] = a4;
  __src[4] = a5;
  __src[5] = v14;
  memcpy(&__src[6], __dst, 0xA3uLL);
  memcpy(v24, __src, 0xD3uLL);

  v19 = sub_1B22148F4();
  if (v8)
  {
    return sub_1B2217D28(__src);
  }

  v24[0] = MEMORY[0x1E69E7CC0];
  v24[1] = MEMORY[0x1E69E7CC8];
  v23 = v24;
  Database.execute(sql:arguments:)(*&v19, *(&v21 - 1));

  sub_1B2217D28(__src);
}

void *sub_1B22148F4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v7 = v0[4];
  v6 = v0[5];
  memcpy(__dst, v0 + 6, 0xA3uLL);
  sub_1B214400C();
  v9 = v8;
  v10 = *(v8 + 16);
  v11 = v10 + 1;
  if (v10 >= *(v8 + 24) >> 1)
  {
    sub_1B214400C();
    v9 = v66;
  }

  *(v9 + 16) = v11;
  v12 = v9 + 16 * v10;
  *(v12 + 32) = 0x455441455243;
  *(v12 + 40) = 0xE600000000000000;
  if ((v6 & 2) != 0)
  {
    v13 = v10 + 2;
    if (v13 > *(v9 + 24) >> 1)
    {
      sub_1B214400C();
      v9 = v71;
    }

    *(v9 + 16) = v13;
    v14 = v9 + 16 * v11;
    *(v14 + 32) = 0x455551494E55;
    *(v14 + 40) = 0xE600000000000000;
    v11 = *(v9 + 16);
  }

  v15 = v11 + 1;
  if (v11 >= *(v9 + 24) >> 1)
  {
    sub_1B214400C();
    v9 = v67;
  }

  *(v9 + 16) = v15;
  v16 = v9 + 16 * v11;
  *(v16 + 32) = 0x5845444E49;
  *(v16 + 40) = 0xE500000000000000;
  if (v6)
  {
    v17 = v11 + 2;
    if (v17 > *(v9 + 24) >> 1)
    {
      sub_1B214400C();
      v9 = v72;
    }

    *(v9 + 16) = v17;
    v18 = v9 + 16 * v15;
    strcpy((v18 + 32), "IF NOT EXISTS");
    *(v18 + 46) = -4864;
  }

  v19 = v9;
  __src[0] = 34;
  __src[1] = 0xE100000000000000;
  MEMORY[0x1B2741EB0](v2, v3);
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);
  v20 = *(v19 + 16);
  v21 = *(v19 + 24) >> 1;
  v22 = v20 + 1;
  v23 = v19;
  if (v21 <= v20)
  {
    sub_1B214400C();
    v23 = v68;
    v21 = *(v68 + 24) >> 1;
  }

  *(v23 + 16) = v22;
  v24 = v23 + 16 * v20;
  *(v24 + 32) = 34;
  *(v24 + 40) = 0xE100000000000000;
  if (v21 < (v20 + 2))
  {
    sub_1B214400C();
    v23 = v69;
  }

  v80 = v1;
  *(v23 + 16) = v20 + 2;
  v74 = v23;
  v25 = v23 + 16 * v22;
  *(v25 + 32) = 20047;
  *(v25 + 40) = 0xE200000000000000;
  __src[0] = 34;
  __src[1] = 0xE100000000000000;
  MEMORY[0x1B2741EB0](v4, v5);
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);
  MEMORY[0x1B2741EB0](40, 0xE100000000000000);
  v30 = *(v7 + 16);
  v31 = MEMORY[0x1E69E7CC0];
  if (v30)
  {
    v76 = MEMORY[0x1E69E7CC0];
    sub_1B2116B10(0, v30, 0, v26, v27, v28, v29);
    v31 = v76;
    v32 = (v7 + 40);
    do
    {
      v33 = *(v32 - 1);
      v34 = *v32;
      v75[0] = 34;
      v75[1] = 0xE100000000000000;

      MEMORY[0x1B2741EB0](v33, v34);
      MEMORY[0x1B2741EB0](34, 0xE100000000000000);

      v76 = v31;
      v40 = *(v31 + 16);
      v39 = *(v31 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_1B2116B10(v39 > 1, v40 + 1, 1, v35, v36, v37, v38);
        v31 = v76;
      }

      *(v31 + 16) = v40 + 1;
      v41 = v31 + 16 * v40;
      *(v41 + 32) = 34;
      *(v41 + 40) = 0xE100000000000000;
      v32 += 2;
      --v30;
    }

    while (v30);
  }

  v75[0] = v31;
  sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
  sub_1B215175C();
  v42 = sub_1B2252250();
  v44 = v43;

  MEMORY[0x1B2741EB0](v42, v44);

  MEMORY[0x1B2741EB0](41, 0xE100000000000000);
  v45 = __src[0];
  v46 = __src[1];
  v47 = v74;
  v48 = *(v74 + 16);
  if (v48 >= *(v74 + 24) >> 1)
  {
    sub_1B214400C();
    v47 = v70;
  }

  *(v47 + 16) = v48 + 1;
  v49 = v47;
  v50 = v47 + 16 * v48;
  *(v50 + 32) = v45;
  *(v50 + 40) = v46;
  memcpy(__src, __dst, 0xA3uLL);
  if (sub_1B213EA68(__src) == 1)
  {
    goto LABEL_32;
  }

  v76 = 0x204552454857;
  v77 = 0xE600000000000000;
  sub_1B2122B00(__dst, v75, &qword_1EB7A1CD0, &unk_1B225D310);
  v51 = v80;
  if (qword_1ED85D658 != -1)
  {
    swift_once();
  }

  v52 = qword_1ED861900;

  v53 = MEMORY[0x1E69E7CC0];
  sub_1B2116B4C();
  type metadata accessor for SQLGenerationContext();
  swift_allocObject();

  v55 = sub_1B2117164(v54, v52, v53);
  memcpy(v75, __src, 0xA3uLL);
  v56 = v75;
  v57 = sub_1B2127E58(v55, 0);
  if (!v51)
  {
    v59 = v57;
    v60 = v58;

    MEMORY[0x1B2741EB0](v59, v60);

    v61 = v76;
    v62 = v77;
    v63 = *(v49 + 16);
    if (v63 >= *(v49 + 24) >> 1)
    {
      sub_1B214400C();
      v49 = v73;
    }

    sub_1B212AC5C(__dst, &qword_1EB7A1CD0, &unk_1B225D310);
    *(v49 + 16) = v63 + 1;
    v64 = v49 + 16 * v63;
    *(v64 + 32) = v61;
    *(v64 + 40) = v62;
LABEL_32:
    v75[0] = v49;
    v56 = sub_1B2252250();

    return v56;
  }

  sub_1B212AC5C(__dst, &qword_1EB7A1CD0, &unk_1B225D310);
  return v56;
}

uint64_t sub_1B2214F6C()
{
  MEMORY[0x1B2741EB0]();
  sub_1B211D75C();
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);

  sub_1B2111BFC();
  Database.execute(sql:arguments:)(v0, v1);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.reindex(collation:)(GRDBInternal::Database::CollationName collation)
{
  MEMORY[0x1B2741EB0](*collation.rawValue._countAndFlagsBits, *(collation.rawValue._countAndFlagsBits + 8));
  sub_1B2111BFC();
  Database.execute(sql:arguments:)(v1, v2);
}

uint64_t Database.reindex(collation:)(uint64_t a1)
{
  v1 = *(a1 + 24);
  v4[0] = *(a1 + 16);
  v4[1] = v1;

  v2.rawValue._countAndFlagsBits = v4;
  Database.reindex(collation:)(v2);
}

void sub_1B22151DC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = v5;
  v7 = v4;
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  __dst[0] = 34;
  __dst[1] = 0xE100000000000000;
  MEMORY[0x1B2741EB0](v8, v9);
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);
  v10 = 34;
  v11 = 0xE100000000000000;
  sub_1B214400C();
  v13 = v12;
  v14 = *(v12 + 16);
  v15 = v14 + 1;
  if (v14 >= *(v12 + 24) >> 1)
  {
LABEL_168:
    sub_1B214400C();
    v13 = v178;
  }

  *(v13 + 16) = v15;
  v16 = v13 + 16 * v14;
  *(v16 + 32) = v10;
  *(v16 + 40) = v11;
  v17 = *(v7 + 40);
  if (v17)
  {
    v18 = *(v7 + 32);
    v19 = *(v13 + 24);
    v20 = v14 + 2;

    if (v20 > (v19 >> 1))
    {
      sub_1B214400C();
      v13 = v179;
    }

    *(v13 + 16) = v20;
    v21 = v13 + 16 * v15;
    *(v21 + 32) = v18;
    *(v21 + 40) = v17;
  }

  v22 = *(v7 + 48);
  v197 = v7;
  if ((v22 & 0xFF00) != 0x200)
  {
    v23 = *(v13 + 16);
    v24 = v23 + 1;
    if (v23 >= *(v13 + 24) >> 1)
    {
      sub_1B214400C();
      v13 = v180;
    }

    *(v13 + 16) = v24;
    v25 = v13 + 16 * v23;
    *(v25 + 32) = 0x205952414D495250;
    *(v25 + 40) = 0xEB0000000059454BLL;
    v26 = v23 + 2;
    if ((v23 + 2) > *(v13 + 24) >> 1)
    {
      sub_1B214400C();
      v13 = v184;
    }

    *(v13 + 16) = v26;
    v27 = v13 + 16 * v24;
    *(v27 + 32) = 0x4C464E4F43204E4FLL;
    *(v27 + 40) = 0xEB00000000544349;
    v7 = 0xE800000000000000;
    v28 = 0x4B4341424C4C4F52;
    switch(v22)
    {
      case 0:
        goto LABEL_16;
      case 1:
        v7 = 0xE500000000000000;
        v28 = 0x54524F4241;
        goto LABEL_16;
      case 2:
        v7 = 0xE400000000000000;
        v28 = 1279869254;
        goto LABEL_16;
      case 3:
        v7 = 0xE600000000000000;
        v28 = 0x45524F4E4749;
        goto LABEL_16;
      case 4:
        v7 = 0xE700000000000000;
        v28 = 0x4543414C504552;
LABEL_16:
        if ((v23 + 3) > *(v13 + 24) >> 1)
        {
          sub_1B214400C();
          v13 = v185;
        }

        *(v13 + 16) = v23 + 3;
        v29 = v13 + 16 * v26;
        *(v29 + 32) = v28;
        *(v29 + 40) = v7;
        v7 = v197;
        break;
      default:
        break;
    }

    if ((v22 & 0x100) != 0)
    {
      v30 = *(v13 + 16);
      if (v30 >= *(v13 + 24) >> 1)
      {
        sub_1B214400C();
        v13 = v186;
      }

      *(v13 + 16) = v30 + 1;
      v31 = v13 + 16 * v30;
      strcpy((v31 + 32), "AUTOINCREMENT");
      *(v31 + 46) = -4864;
    }
  }

  v32 = *(v7 + 51);
  if (v32 == 1)
  {
    v33 = *(v13 + 16);
    v34 = v33 + 1;
    v35 = 0x4C4C554E20544F4ELL;
    if (v33 >= *(v13 + 24) >> 1)
    {
      sub_1B214400C();
      v13 = v181;
    }

    v36 = 0xE800000000000000;
  }

  else
  {
    v7 = *(v13 + 16);
    v33 = v7 + 1;
    if (v7 >= *(v13 + 24) >> 1)
    {
      sub_1B214400C();
      v13 = v182;
    }

    v35 = 0x4B4341424C4C4F52;
    *(v13 + 16) = v33;
    v37 = v13 + 16 * v7;
    *(v37 + 32) = 0xD000000000000014;
    *(v37 + 40) = 0x80000001B226FFA0;
    v36 = 0xE800000000000000;
    switch(v32)
    {
      case 0:
        goto LABEL_33;
      case 1:
LABEL_169:
        __break(1u);
        return;
      case 2:
        v36 = 0xE400000000000000;
        v35 = 1279869254;
        goto LABEL_33;
      case 3:
        v36 = 0xE600000000000000;
        v35 = 0x45524F4E4749;
        goto LABEL_33;
      case 4:
        v36 = 0xE700000000000000;
        v35 = 0x4543414C504552;
LABEL_33:
        v34 = v7 + 2;
        if ((v7 + 2) > *(v13 + 24) >> 1)
        {
          sub_1B214400C();
          v13 = v183;
        }

        v7 = v197;
        break;
      default:
        goto LABEL_37;
    }
  }

  *(v13 + 16) = v34;
  v38 = v13 + 16 * v33;
  *(v38 + 32) = v35;
  *(v38 + 40) = v36;
LABEL_37:
  v11 = *(v7 + 50);
  if ((v11 - 5) >= 2)
  {
    v39 = *(v13 + 16);
    v40 = *(v13 + 24) >> 1;
    if (v11 == 1)
    {
      if (v40 <= v39)
      {
        sub_1B214400C();
        v13 = v187;
      }

      v41 = 0xE600000000000000;
      v42 = 0x455551494E55;
      v11 = v39 + 1;
    }

    else
    {
      if (v40 <= v39)
      {
        sub_1B214400C();
        v13 = v188;
      }

      *(v13 + 16) = v39 + 1;
      v43 = v13 + 16 * v39;
      *(v43 + 32) = 0xD000000000000012;
      *(v43 + 40) = 0x80000001B2270000;
      v41 = 0xE800000000000000;
      v42 = 0x4B4341424C4C4F52;
      switch(v11)
      {
        case 1uLL:
          goto LABEL_169;
        case 2uLL:
          v41 = 0xE400000000000000;
          v42 = 1279869254;
          break;
        case 3uLL:
          v41 = 0xE600000000000000;
          v42 = 0x45524F4E4749;
          break;
        case 4uLL:
          v41 = 0xE700000000000000;
          v42 = 0x4543414C504552;
          break;
        default:
          break;
      }

      v11 = v39 + 2;
      if ((v39 + 2) > *(v13 + 24) >> 1)
      {
        sub_1B214400C();
        v13 = v189;
      }

      ++v39;
    }

    *(v13 + 16) = v11;
    v214 = v13;
    v44 = v13 + 16 * v39;
    *(v44 + 32) = v42;
    *(v44 + 40) = v41;
    v7 = v197;
  }

  else
  {
    v214 = v13;
  }

  swift_beginAccess();
  v14 = *(v7 + 56);
  v205 = *(v14 + 16);

  v7 = 0;
  v10 = 32;
  v15 = &unk_1ED861000;
  while (v205 != v7)
  {
    if (v7 >= *(v14 + 16))
    {
      __break(1u);
LABEL_167:
      __break(1u);
      goto LABEL_168;
    }

    memcpy(__dst, (v14 + v10), 0xA3uLL);
    v207[0] = 0x28204B43454843;
    v207[1] = 0xE700000000000000;
    sub_1B2127DC0(__dst, v210);
    if (qword_1ED85D658 != -1)
    {
      swift_once();
    }

    v45 = v15;
    v46 = *(v15 + 2304);

    v47 = MEMORY[0x1E69E7CC0];
    sub_1B2116B4C();
    type metadata accessor for SQLGenerationContext();
    swift_allocObject();

    v49 = sub_1B2117164(v48, v46, v47);
    memcpy(v210, __dst, 0xA3uLL);
    v50 = sub_1B2127E58(v49, 0);
    if (v6)
    {

      sub_1B21356F8(__dst);

      return;
    }

    v52 = v50;
    v53 = v51;

    MEMORY[0x1B2741EB0](v52, v53);

    MEMORY[0x1B2741EB0](41, 0xE100000000000000);
    v11 = v207[0];
    v54 = v207[1];
    v55 = *(v214 + 16);
    if (v55 >= *(v214 + 24) >> 1)
    {
      sub_1B214400C();
      v214 = v58;
    }

    sub_1B21356F8(__dst);
    v56 = v214;
    *(v214 + 16) = v55 + 1;
    v57 = v56 + 16 * v55;
    *(v57 + 32) = v11;
    *(v57 + 40) = v54;
    v10 += 168;
    ++v7;
    v6 = 0;
    v15 = v45;
  }

  v7 = v197;
  memcpy(v212, (v197 + 72), 0xA3uLL);
  memcpy(__src, (v197 + 72), 0xA3uLL);
  v59 = sub_1B213EA68(__src);
  v60 = v214;
  if (v59 != 1)
  {
    v210[0] = 0x20544C5541464544;
    v210[1] = 0xE800000000000000;
    sub_1B2122B00(v212, __dst, &qword_1EB7A1CD0, &unk_1B225D310);
    if (qword_1ED85D658 != -1)
    {
      swift_once();
    }

    v61 = *(v15 + 2304);

    v62 = MEMORY[0x1E69E7CC0];
    sub_1B2116B4C();
    type metadata accessor for SQLGenerationContext();
    swift_allocObject();

    v64 = sub_1B2117164(v63, v61, v62);
    memcpy(__dst, __src, 0xA3uLL);
    v65 = sub_1B2127E58(v64, 0);
    if (v6)
    {

      sub_1B212AC5C(v212, &qword_1EB7A1CD0, &unk_1B225D310);
      return;
    }

    v67 = v65;
    v68 = v66;

    MEMORY[0x1B2741EB0](v67, v68);

    v10 = v210[0];
    v11 = v210[1];
    v14 = *(v60 + 16);
    if (v14 >= *(v60 + 24) >> 1)
    {
      sub_1B214400C();
      v60 = v192;
    }

    v7 = v197;
    sub_1B212AC5C(v212, &qword_1EB7A1CD0, &unk_1B225D310);
    *(v60 + 16) = v14 + 1;
    v69 = v60 + 16 * v14;
    *(v69 + 32) = v10;
    *(v69 + 40) = v11;
  }

  v15 = *(v7 + 248);
  if (v15)
  {
    v10 = *(v7 + 240);
    v70 = *(v60 + 16);
    v71 = *(v60 + 24) >> 1;
    v11 = v70 + 1;

    if (v71 <= v70)
    {
      sub_1B214400C();
      v60 = v190;
      v71 = *(v190 + 24) >> 1;
    }

    *(v60 + 16) = v11;
    v72 = v60 + 16 * v70;
    *(v72 + 32) = 0x4554414C4C4F43;
    *(v72 + 40) = 0xE700000000000000;
    v14 = v70 + 2;
    if (v71 < v14)
    {
      sub_1B214400C();
      v60 = v191;
    }

    v7 = v197;
    *(v60 + 16) = v14;
    v73 = v60 + 16 * v11;
    *(v73 + 32) = v10;
    *(v73 + 40) = v15;
  }

  swift_beginAccess();
  v74 = *(v7 + 64);
  v200 = *(v74 + 16);
  if (v200)
  {
    v199 = v74 + 32;

    v75 = 0;
    v198 = v74;
    while (1)
    {
      if (v75 >= *(v74 + 16))
      {
        goto LABEL_167;
      }

      v203 = v75;
      v76 = v199 + 40 * v75;
      v77 = *v76;
      v78 = *(v76 + 16);
      v79 = *(v76 + 24);
      v204 = *(v76 + 32);
      v202 = *(v76 + 33);
      v201 = *(v76 + 34);
      v80 = *(v60 + 16);
      v81 = *(v60 + 24);
      v214 = *(v76 + 8);

      if (v80 >= v81 >> 1)
      {
        sub_1B214400C();
        v60 = v154;
      }

      *(v60 + 16) = v80 + 1;
      v82 = v60 + 16 * v80;
      *(v82 + 32) = 0x434E455245464552;
      *(v82 + 40) = 0xEA00000000005345;
      v206 = v79;
      if (v79)
      {
        break;
      }

      v83 = sub_1B2252220();
      v85 = v84;
      if (v83 == sub_1B2252220() && v85 == v86)
      {

LABEL_94:
        if (a4)
        {
          v91 = a4;
        }

        else
        {
          Database.primaryKey(_:)();
          if (v6)
          {
LABEL_164:

            goto LABEL_165;
          }

          v110 = __dst[0];
          if (LOBYTE(__dst[2]))
          {
            v91 = &unk_1F2969308;
            if (LOBYTE(__dst[2]) == 1)
            {
              v91 = __dst[0];
            }
          }

          else
          {
            v131 = __dst[1];
            sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
            v91 = swift_allocObject();
            *(v91 + 1) = xmmword_1B22546B0;
            *(v91 + 4) = v110;
            *(v91 + 5) = v131;
          }
        }

        __dst[0] = 34;
        __dst[1] = 0xE100000000000000;

        MEMORY[0x1B2741EB0](v77, v214);
        MEMORY[0x1B2741EB0](34, 0xE100000000000000);
        MEMORY[0x1B2741EB0](40, 0xE100000000000000);
        v96 = *(v91 + 2);
        if (v96)
        {
          v196 = v6;
          v207[0] = MEMORY[0x1E69E7CC0];
          sub_1B2116B10(0, v96, 0, v92, v93, v94, v95);
          v97 = v207[0];
          v98 = (v91 + 40);
          do
          {
            v99 = *(v98 - 1);
            v100 = *v98;
            v210[0] = 34;
            v210[1] = 0xE100000000000000;

            MEMORY[0x1B2741EB0](v99, v100);
            MEMORY[0x1B2741EB0](34, 0xE100000000000000);

            v106 = v210[0];
            v105 = v210[1];
            v207[0] = v97;
            v108 = *(v97 + 16);
            v107 = *(v97 + 24);
            if (v108 >= v107 >> 1)
            {
              sub_1B2116B10(v107 > 1, v108 + 1, 1, v101, v102, v103, v104);
              v97 = v207[0];
            }

            *(v97 + 16) = v108 + 1;
            v109 = v97 + 16 * v108;
            *(v109 + 32) = v106;
            *(v109 + 40) = v105;
            v98 += 2;
            --v96;
          }

          while (v96);

          v6 = v196;
        }

        else
        {

          v97 = MEMORY[0x1E69E7CC0];
        }

        v210[0] = v97;
        sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
        sub_1B215175C();
        v111 = sub_1B2252250();
        v113 = v112;

        MEMORY[0x1B2741EB0](v111, v113);
LABEL_108:

        MEMORY[0x1B2741EB0](41, 0xE100000000000000);
        v114 = __dst[0];
        v115 = __dst[1];
        v116 = *(v60 + 16);
        v117 = v116 + 1;
        if (v116 >= *(v60 + 24) >> 1)
        {
          goto LABEL_146;
        }

        goto LABEL_109;
      }

      v88 = sub_1B22531F0();

      if (v88)
      {
        goto LABEL_94;
      }

      Database.primaryKey(_:)();
      if (v6)
      {
        goto LABEL_164;
      }

      v89 = __dst[0];
      if (LOBYTE(__dst[2]))
      {
        v90 = &unk_1F2969308;
        if (LOBYTE(__dst[2]) == 1)
        {
          v90 = __dst[0];
        }
      }

      else
      {
        v132 = __dst[1];
        sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
        v90 = swift_allocObject();
        *(v90 + 1) = xmmword_1B22546B0;
        *(v90 + 4) = v89;
        *(v90 + 5) = v132;
      }

      __dst[0] = 34;
      __dst[1] = 0xE100000000000000;
      MEMORY[0x1B2741EB0](v77, v214);
      MEMORY[0x1B2741EB0](34, 0xE100000000000000);
      MEMORY[0x1B2741EB0](40, 0xE100000000000000);
      v137 = *(v90 + 2);
      if (v137)
      {
        v207[0] = MEMORY[0x1E69E7CC0];
        sub_1B2116B10(0, v137, 0, v133, v134, v135, v136);
        v138 = v207[0];
        v139 = (v90 + 40);
        do
        {
          v140 = *(v139 - 1);
          v141 = *v139;
          v210[0] = 34;
          v210[1] = 0xE100000000000000;

          MEMORY[0x1B2741EB0](v140, v141);
          MEMORY[0x1B2741EB0](34, 0xE100000000000000);

          v146 = v210[0];
          v147 = v210[1];
          v207[0] = v138;
          v149 = *(v138 + 16);
          v148 = *(v138 + 24);
          if (v149 >= v148 >> 1)
          {
            sub_1B2116B10(v148 > 1, v149 + 1, 1, v142, v143, v144, v145);
            v138 = v207[0];
          }

          *(v138 + 16) = v149 + 1;
          v150 = v138 + 16 * v149;
          *(v150 + 32) = v146;
          *(v150 + 40) = v147;
          v139 += 2;
          --v137;
        }

        while (v137);
      }

      else
      {

        v138 = MEMORY[0x1E69E7CC0];
      }

      v210[0] = v138;
      sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
      sub_1B215175C();
      v151 = sub_1B2252250();
      v153 = v152;

      MEMORY[0x1B2741EB0](v151, v153);

      MEMORY[0x1B2741EB0](41, 0xE100000000000000);
      v114 = __dst[0];
      v115 = __dst[1];
      v116 = *(v60 + 16);
      v117 = v116 + 1;
      if (v116 >= *(v60 + 24) >> 1)
      {
        v6 = 0;
LABEL_146:
        v118 = v203;
        sub_1B214400C();
        v60 = v160;
        goto LABEL_110;
      }

      v6 = 0;
LABEL_109:
      v118 = v203;
LABEL_110:
      *(v60 + 16) = v117;
      v119 = v60 + 16 * v116;
      *(v119 + 32) = v114;
      *(v119 + 40) = v115;
      v120 = v204;
      v121 = v117 + 1;
      if (v117 >= *(v60 + 24) >> 1)
      {
        sub_1B214400C();
        v120 = v204;
        v60 = v155;
      }

      *(v60 + 16) = v121;
      v122 = v60 + 16 * v117;
      *(v122 + 32) = 0x54454C4544204E4FLL;
      *(v122 + 40) = 0xE900000000000045;
      v123 = 0xE700000000000000;
      v124 = 0x45444143534143;
      switch(v120)
      {
        case 0:
          goto LABEL_116;
        case 1:
          v123 = 0xE800000000000000;
          v124 = 0x5443495254534552;
          goto LABEL_116;
        case 2:
          v123 = 0xE800000000000000;
          v124 = 0x4C4C554E20544553;
          goto LABEL_116;
        case 3:
          v124 = 0x4146454420544553;
          v123 = 0xEB00000000544C55;
LABEL_116:
          v125 = v117 + 2;
          if (v121 >= *(v60 + 24) >> 1)
          {
            sub_1B214400C();
            v60 = v156;
          }

          *(v60 + 16) = v125;
          v126 = v60 + 16 * v121;
          *(v126 + 32) = v124;
          *(v126 + 40) = v123;
          break;
        default:
          break;
      }

      v11 = v202;
      v127 = *(v60 + 16);
      v15 = v127 + 1;
      v7 = v206;
      if (v127 >= *(v60 + 24) >> 1)
      {
        sub_1B214400C();
        v60 = v157;
      }

      *(v60 + 16) = v15;
      v128 = v60 + 16 * v127;
      *(v128 + 32) = 0x5441445055204E4FLL;
      *(v128 + 40) = 0xE900000000000045;
      v14 = 0xE700000000000000;
      v74 = 0x45444143534143;
      switch(v202)
      {
        case 0:
          goto LABEL_125;
        case 1:
          v14 = 0xE800000000000000;
          v74 = 0x5443495254534552;
          goto LABEL_125;
        case 2:
          v14 = 0xE800000000000000;
          v74 = 0x4C4C554E20544553;
          goto LABEL_125;
        case 3:
          v74 = 0x4146454420544553;
          v14 = 0xEB00000000544C55;
LABEL_125:
          v11 = v127 + 2;
          if (v15 >= *(v60 + 24) >> 1)
          {
            sub_1B214400C();
            v60 = v158;
          }

          *(v60 + 16) = v11;
          v129 = v60 + 16 * v15;
          *(v129 + 32) = v74;
          *(v129 + 40) = v14;
          v74 = v198;
          break;
        default:
          break;
      }

      v10 = v201;

      if (v201)
      {
        v10 = *(v60 + 16);
        v15 = v10 + 1;
        if (v10 >= *(v60 + 24) >> 1)
        {
          sub_1B214400C();
          v60 = v159;
        }

        *(v60 + 16) = v15;
        v130 = v60 + 16 * v10;
        *(v130 + 32) = 0xD00000000000001DLL;
        *(v130 + 40) = 0x80000001B226FFE0;
      }

      v75 = v118 + 1;
      if (v75 == v200)
      {

        v7 = v197;
        goto LABEL_147;
      }
    }

    __dst[0] = 34;
    __dst[1] = 0xE100000000000000;

    MEMORY[0x1B2741EB0](v77, v214);
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);
    MEMORY[0x1B2741EB0](40, 0xE100000000000000);
    v210[0] = 34;
    v210[1] = 0xE100000000000000;
    MEMORY[0x1B2741EB0](v78, v79);
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);

    MEMORY[0x1B2741EB0](v210[0], v210[1]);
    goto LABEL_108;
  }

LABEL_147:
  memcpy(v210, (v7 + 256), 0xA4uLL);
  memcpy(__dst, (v7 + 256), 0xA4uLL);
  if (sub_1B213EA68(__dst) == 1)
  {
    goto LABEL_163;
  }

  v207[21] = 0;
  v207[22] = 0xE000000000000000;
  sub_1B2122B00(v210, v207, &qword_1EB7A2EF0, &qword_1B2261188);
  sub_1B2252CD0();

  v208 = 0xD000000000000015;
  v209 = 0x80000001B226FFC0;
  sub_1B2122B00(v210, v207, &qword_1EB7A2EF0, &qword_1B2261188);
  if (qword_1ED85D658 != -1)
  {
    swift_once();
  }

  v161 = qword_1ED861900;

  v162 = MEMORY[0x1E69E7CC0];
  sub_1B2116B4C();
  type metadata accessor for SQLGenerationContext();
  swift_allocObject();

  v164 = sub_1B2117164(v163, v161, v162);
  memcpy(v207, __dst, 0xA3uLL);
  v165 = sub_1B2127E58(v164, 0);
  if (!v6)
  {
    v167 = v165;
    v168 = v166;

    sub_1B212AC5C(v210, &qword_1EB7A2EF0, &qword_1B2261188);
    MEMORY[0x1B2741EB0](v167, v168);

    MEMORY[0x1B2741EB0](41, 0xE100000000000000);
    v169 = v208;
    v170 = v209;
    v171 = *(v60 + 16);
    v172 = *(v60 + 24) >> 1;
    v173 = v171 + 1;
    if (v172 <= v171)
    {
      sub_1B214400C();
      v60 = v193;
      v172 = *(v193 + 24) >> 1;
    }

    *(v60 + 16) = v173;
    v174 = v60 + 16 * v171;
    *(v174 + 32) = v169;
    *(v174 + 40) = v170;
    if (BYTE3(__dst[20]))
    {
      v175 = 0x4445524F5453;
    }

    else
    {
      v175 = 0x4C415554524956;
    }

    if (BYTE3(__dst[20]))
    {
      v176 = 0xE600000000000000;
    }

    else
    {
      v176 = 0xE700000000000000;
    }

    if (v172 <= v173)
    {
      sub_1B214400C();
      v60 = v194;
    }

    sub_1B212AC5C(v210, &qword_1EB7A2EF0, &qword_1B2261188);
    *(v60 + 16) = v171 + 2;
    v177 = v60 + 16 * v173;
    *(v177 + 32) = v175;
    *(v177 + 40) = v176;
LABEL_163:
    v207[0] = v60;
    sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B215175C();
    sub_1B2252250();

    return;
  }

  sub_1B212AC5C(v210, &qword_1EB7A2EF0, &qword_1B2261188);
  sub_1B212AC5C(v210, &qword_1EB7A2EF0, &qword_1B2261188);
LABEL_165:
}

uint64_t TableDefinition.autoIncrementedPrimaryKey(_:onConflict:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *a3;
  v6 = xmmword_1B2261170;
  v4 = TableDefinition.column(_:_:)(a1, a2, &v6);

  *(v4 + 48) = v3 | 0x100;
  return v4;
}

uint64_t TableDefinition.column(_:_:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v7 = a3[1];
  v13[0] = *a3;
  v13[1] = v7;
  type metadata accessor for ColumnDefinition();
  v8 = swift_allocObject();
  sub_1B22176AC(a1, a2, v13);
  sub_1B21159D0(v4 + 40, v9);

  sub_1B21614F0();
  sub_1B211DA34();
  sub_1B2115D84();
  *(v10 + 32) = v8;
  *(v10 + 40) = 0;
  *(v4 + 40) = v11;
  swift_endAccess();
  return v8;
}

uint64_t ColumnDefinition.primaryKey(onConflict:autoincrement:)(unsigned __int8 *a1, char a2)
{
  if (a2)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *(v2 + 48) = v3 | *a1;
  return sub_1B2117794();
}

Swift::Void __swiftcall TableDefinition.column(sql:)(Swift::String sql)
{
  sub_1B2112DB0();
  v2 = sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v3 = sub_1B2117BF4(v2);
  sub_1B2122338(v3, xmmword_1B22546B0);
  v25[2] = MEMORY[0x1E69E7CC0];
  v25[3] = MEMORY[0x1E69E7CC8];
  v4 = sub_1B2114CC4(v25);
  sub_1B2118514(v4, v5, v6, v7, v8, v9, v10, v11, v21, v23, v24);
  sub_1B2116834(v1 + 40, v12, v13, v14, v15, v16, v17, v18, v22);

  sub_1B21614F0();
  sub_1B211DA34();
  sub_1B2115D84();
  *(v19 + 32) = v3;
  *(v19 + 40) = 1;
  *(v1 + 40) = v20;
  swift_endAccess();
}

Swift::Void __swiftcall TableDefinition.column(literal:)(GRDBInternal::SQL literal)
{
  v3 = *literal.elements._rawValue;
  sub_1B21159D0(v2 + 40, v1);

  sub_1B21614F0();
  v4 = *(*(v2 + 40) + 16);
  sub_1B21617F4();
  v5 = *(v2 + 40);
  *(v5 + 16) = v4 + 1;
  v6 = v5 + 16 * v4;
  *(v6 + 32) = v3;
  *(v6 + 40) = 1;
  *(v2 + 40) = v5;
  swift_endAccess();
}

Swift::Void __swiftcall TableDefinition.primaryKey(_:onConflict:)(Swift::OpaquePointer _, GRDBInternal::Database::ConflictResolution_optional onConflict)
{
  if (*(v2 + 48))
  {
    sub_1B2252EC0();
    __break(1u);
  }

  else
  {
    v3 = *onConflict.value;
    *(v2 + 48) = _;
    *(v2 + 56) = v3;
  }
}

Swift::Void __swiftcall TableDefinition.uniqueKey(_:onConflict:)(Swift::OpaquePointer _, GRDBInternal::Database::ConflictResolution_optional onConflict)
{
  v4 = *onConflict.value;
  sub_1B21159D0(v2 + 64, onConflict.value);

  sub_1B2161554();
  v5 = *(*(v2 + 64) + 16);
  sub_1B2161850(v5);
  v6 = *(v2 + 64);
  *(v6 + 16) = v5 + 1;
  v7 = v6 + 16 * v5;
  *(v7 + 32) = _;
  *(v7 + 40) = v4;
  *(v2 + 64) = v6;
  swift_endAccess();
}

Swift::Void __swiftcall TableDefinition.foreignKey(_:references:columns:onDelete:onUpdate:deferred:)(Swift::OpaquePointer _, Swift::String references, Swift::OpaquePointer_optional columns, GRDBInternal::Database::ForeignKeyAction_optional onDelete, GRDBInternal::Database::ForeignKeyAction_optional onUpdate, Swift::Bool deferred)
{
  sub_1B2111BD8();
  sub_1B21159D0(v7 + 72, v8);

  sub_1B216156C();
  v9 = *(*(v6 + 72) + 16);
  sub_1B2161868();
  sub_1B2116360(v9 + 1);
  *(v6 + 72) = v10;
  swift_endAccess();
}

uint64_t TableDefinition.check(_:)(void *a1)
{
  v2 = v1;
  v3 = a1[3];
  v4 = a1[4];
  sub_1B21139A0(a1, v3);
  (*(v4 + 8))(__src, v3, v4);
  sub_1B2116834(v1 + 80, v5, v6, v7, v8, v9, v10, v11, v15);
  sub_1B2161444();
  sub_1B212D104();
  v12 = *(v1 + 80);
  v13 = sub_1B211535C(v3 + 1);
  memcpy(v13, __src, 0xA3uLL);
  *(v2 + 80) = v12;
  return swift_endAccess();
}

Swift::Void __swiftcall TableDefinition.check(sql:)(Swift::String sql)
{
  sub_1B2112DB0();
  v3 = sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v4 = sub_1B2117BF4(v3);
  sub_1B2122338(v4, xmmword_1B22546B0);
  v26[2] = MEMORY[0x1E69E7CC0];
  v26[3] = MEMORY[0x1E69E7CC8];
  v5 = sub_1B2114CC4(v26);
  sub_1B2118514(v5, v6, v7, v8, v9, v10, v11, v12, v22, v24, v25);
  __src[0] = v4;
  sub_1B2153E14(__src);
  memcpy(__dst, __src, sizeof(__dst));
  sub_1B2116834(v1 + 80, v13, v14, v15, v16, v17, v18, v19, v23);

  sub_1B2161444();
  sub_1B212D104();
  v20 = *(v1 + 80);
  v21 = sub_1B211535C(v2 + 1);
  memcpy(v21, __dst, 0xA3uLL);
  *(v1 + 80) = v20;
  swift_endAccess();
}

Swift::Void __swiftcall TableDefinition.constraint(sql:)(Swift::String sql)
{
  sub_1B2112DB0();
  v2 = sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v3 = sub_1B2117BF4(v2);
  sub_1B2122338(v3, xmmword_1B22546B0);
  v25[2] = MEMORY[0x1E69E7CC0];
  v25[3] = MEMORY[0x1E69E7CC8];
  v4 = sub_1B2114CC4(v25);
  sub_1B2118514(v4, v5, v6, v7, v8, v9, v10, v11, v21, v23, v24);
  sub_1B2116834(v1 + 88, v12, v13, v14, v15, v16, v17, v18, v22);

  sub_1B21615D0();
  v19 = *(*(v1 + 88) + 16);
  sub_1B21618C4();
  v20 = *(v1 + 88);
  *(v20 + 16) = v19 + 1;
  *(v20 + 8 * v19 + 32) = v3;
  *(v1 + 88) = v20;
  swift_endAccess();
}

Swift::Void __swiftcall TableDefinition.constraint(literal:)(GRDBInternal::SQL literal)
{
  v3 = *literal.elements._rawValue;
  sub_1B21159D0(v2 + 88, v1);

  sub_1B21615D0();
  v4 = *(*(v2 + 88) + 16);
  sub_1B21618C4();
  v5 = *(v2 + 88);
  *(v5 + 16) = v4 + 1;
  *(v5 + 8 * v4 + 32) = v3;
  *(v2 + 88) = v5;
  swift_endAccess();
}

void *sub_1B221708C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  if (*(v4 + 50) == 6)
  {
    v9 = *a3;
    __src[0] = a1;
    __src[1] = a2;

    MEMORY[0x1B2741EB0](1601072991, 0xE400000000000000);
    v11 = *(v4 + 16);
    v10 = *(v4 + 24);
    MEMORY[0x1B2741EB0](v11, v10);
    v12 = __src[0];
    v13 = __src[1];
    sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1B22546B0;
    *(v14 + 32) = v11;
    *(v14 + 40) = v10;
    sub_1B2179418(v15);
    memcpy(&__src[6], v15, 0xA3uLL);
    __src[0] = v12;
    __src[1] = v13;
    __src[2] = a1;
    __src[3] = a2;
    __src[4] = v14;
    __src[5] = v9;
    nullsub_1();
    memcpy(a4, __src, 0xD3uLL);
  }

  else
  {
    sub_1B22188B0(__src);
    return memcpy(a4, __src, 0xD3uLL);
  }
}

uint64_t TableDefinition.deinit()
{

  return v0;
}

uint64_t TableDefinition.__deallocating_deinit()
{
  TableDefinition.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 96, 7);
}

uint64_t TableAlteration.add(column:_:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v7 = a3[1];
  v13[0] = *a3;
  v13[1] = v7;
  type metadata accessor for ColumnDefinition();
  v8 = swift_allocObject();
  sub_1B22176AC(a1, a2, v13);
  sub_1B21159D0(v4 + 32, v9);

  sub_1B2161634();
  sub_1B21226AC();
  sub_1B21148E8();
  *(v10 + 64) = 0;
  *(v4 + 32) = v11;
  swift_endAccess();
  return v8;
}

Swift::Void __swiftcall TableAlteration.addColumn(sql:)(Swift::String sql)
{
  sub_1B2112DB0();
  v2 = sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v3 = sub_1B2117BF4(v2);
  sub_1B2122338(v3, xmmword_1B22546B0);
  v26[2] = MEMORY[0x1E69E7CC0];
  v26[3] = MEMORY[0x1E69E7CC8];
  v4 = sub_1B2114CC4(v26);
  sub_1B2118514(v4, v5, v6, v7, v8, v9, v10, v11, v22, v24, v25);
  sub_1B2116834(v1 + 32, v12, v13, v14, v15, v16, v17, v18, v23);

  sub_1B2161634();
  v19 = *(*(v1 + 32) + 16);
  sub_1B2161920();
  v20 = *(v1 + 32);
  *(v20 + 16) = v19 + 1;
  v21 = v20 + 40 * v19;
  *(v21 + 32) = v3;
  *(v21 + 40) = 0;
  *(v21 + 48) = 0;
  *(v21 + 56) = 0;
  *(v21 + 64) = 1;
  *(v1 + 32) = v20;
  swift_endAccess();
}

Swift::Void __swiftcall TableAlteration.addColumn(literal:)(GRDBInternal::SQL literal)
{
  sub_1B21159D0(v2 + 32, v1);

  sub_1B2161634();
  sub_1B21226AC();
  sub_1B21148E8();
  *(v3 + 64) = 1;
  *(v2 + 32) = v4;
  swift_endAccess();
}

uint64_t sub_1B221744C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();

  sub_1B2161634();
  v9 = *(*(v4 + 32) + 16);
  sub_1B2161920();
  v10 = *(v4 + 32);
  *(v10 + 16) = v9 + 1;
  v11 = v10 + 40 * v9;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 48) = a3;
  *(v11 + 56) = a4;
  *(v11 + 64) = 2;
  *(v4 + 32) = v10;
  return swift_endAccess();
}

uint64_t sub_1B2217510(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  sub_1B2161634();
  v5 = *(*(v2 + 32) + 16);
  sub_1B2161920();
  v6 = *(v2 + 32);
  *(v6 + 16) = v5 + 1;
  v7 = v6 + 40 * v5;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 3;
  *(v2 + 32) = v6;
  return swift_endAccess();
}

uint64_t TableAlteration.deinit()
{

  return v0;
}

uint64_t TableAlteration.__deallocating_deinit()
{
  TableAlteration.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t ColumnDefinition.GeneratedColumnQualification.hashValue.getter()
{
  v1 = *v0;
  sub_1B2253420();
  MEMORY[0x1B2742F10](v1);
  return sub_1B2253470();
}

uint64_t sub_1B22176AC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = a3[1];
  *(v3 + 48) = 84214272;
  v8 = MEMORY[0x1E69E7CC0];
  *(v3 + 56) = MEMORY[0x1E69E7CC0];
  *(v3 + 64) = v8;
  sub_1B2179418(v10);
  memcpy((v3 + 72), v10, 0xA3uLL);
  *(v3 + 240) = 0;
  *(v3 + 248) = 0;
  sub_1B2218758(__src);
  memcpy((v3 + 256), __src, 0xA4uLL);
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = v6;
  *(v3 + 40) = v7;
  return v3;
}

uint64_t ColumnDefinition.notNull(onConflict:)(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 == 5)
  {
    LOBYTE(v2) = 1;
  }

  *(v1 + 51) = v2;
  return sub_1B2117794();
}

uint64_t ColumnDefinition.unique(onConflict:)(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 == 5)
  {
    LOBYTE(v2) = 1;
  }

  *(v1 + 50) = v2;
  return sub_1B2117794();
}

uint64_t ColumnDefinition.indexed()()
{
  if (*(v0 + 50) == 5)
  {
    *(v0 + 50) = 6;
  }
}

uint64_t ColumnDefinition.check(_:)()
{
  sub_1B2112DB0();
  v2 = v0[3];
  __src[0] = v0[2];
  __src[1] = v2;

  v1(v9, __src);

  v3 = v10;
  v4 = v11;
  sub_1B21139A0(v9, v10);
  (*(v4 + 8))(__src, v3, v4);
  sub_1B21159D0((v0 + 7), v5);
  sub_1B2161444();
  sub_1B212DFC0();
  v6 = v0[7];
  v7 = sub_1B211535C(v3 + 1);
  memcpy(v7, __src, 0xA3uLL);
  v0[7] = v6;
  swift_endAccess();
  sub_1B2113208(v9);
}

uint64_t ColumnDefinition.check(sql:)()
{
  sub_1B2112DB0();
  v2 = sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v3 = sub_1B2117BF4(v2);
  sub_1B2122338(v3, xmmword_1B22546B0);
  v26[2] = MEMORY[0x1E69E7CC0];
  v26[3] = MEMORY[0x1E69E7CC8];
  v4 = sub_1B2114CC4(v26);
  sub_1B2118514(v4, v5, v6, v7, v8, v9, v10, v11, v22, v24, v25);
  __src[0] = v3;
  sub_1B2153E14(__src);
  memcpy(__dst, __src, sizeof(__dst));
  sub_1B2116834(v0 + 56, v12, v13, v14, v15, v16, v17, v18, v23);

  sub_1B2161444();
  sub_1B212DFC0();
  v19 = *(v0 + 56);
  v20 = sub_1B211535C(v1 + 1);
  memcpy(v20, __dst, 0xA3uLL);
  *(v0 + 56) = v19;
  swift_endAccess();
}

uint64_t ColumnDefinition.defaults(to:)(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v3 = a1[4];
  sub_1B21139A0(a1, v4);
  (*(*(v3 + 8) + 8))(v6, v4);
  nullsub_1();
  memcpy(__dst, (v2 + 72), 0xA3uLL);
  memcpy((v2 + 72), v6, 0xA3uLL);
  sub_1B212AC5C(__dst, &qword_1EB7A1CD0, &unk_1B225D310);
}

uint64_t ColumnDefinition.defaults(sql:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v6 = sub_1B2117BF4(v5);
  *(v6 + 16) = xmmword_1B22546B0;
  __src[0] = a1;
  __src[1] = a2;
  __src[2] = MEMORY[0x1E69E7CC0];
  __src[3] = MEMORY[0x1E69E7CC8];
  sub_1B2114CC4(__src);
  memcpy((v6 + 32), __src, 0xB8uLL);
  v9[0] = v6;
  sub_1B2153E14(v9);
  memcpy(__dst, v9, sizeof(__dst));
  nullsub_1();
  memcpy(v11, (v2 + 72), 0xA3uLL);
  memcpy((v2 + 72), __dst, 0xA3uLL);

  sub_1B212AC5C(v11, &qword_1EB7A1CD0, &unk_1B225D310);
}

uint64_t ColumnDefinition.collate(_:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  *(v1 + 240) = v3;
  *(v1 + 248) = v2;
}

uint64_t ColumnDefinition.collate(_:)(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  *(v1 + 240) = v3;
  *(v1 + 248) = v2;
}

uint64_t ColumnDefinition.references(_:column:onDelete:onUpdate:deferred:)()
{
  sub_1B2111BD8();
  sub_1B21159D0(v1 + 64, v2);

  sub_1B2161698();
  v3 = *(*(v0 + 64) + 16);
  sub_1B216197C();
  sub_1B2116360(v3 + 1);
  *(v0 + 64) = v4;
  swift_endAccess();
}

uint64_t ColumnDefinition.deinit()
{

  memcpy(v2, (v0 + 72), 0xA3uLL);
  sub_1B212AC5C(v2, &qword_1EB7A1CD0, &unk_1B225D310);

  memcpy(__dst, (v0 + 256), 0xA4uLL);
  sub_1B212AC5C(__dst, &qword_1EB7A2EF0, &qword_1B2261188);
  return v0;
}

uint64_t ColumnDefinition.__deallocating_deinit()
{
  ColumnDefinition.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 420, 7);
}

unint64_t sub_1B2217D80()
{
  result = qword_1EB7A2EF8;
  if (!qword_1EB7A2EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A2EF8);
  }

  return result;
}

unint64_t sub_1B2217DD8()
{
  result = qword_1EB7A2F00;
  if (!qword_1EB7A2F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A2F00);
  }

  return result;
}

unint64_t sub_1B2217E30()
{
  result = qword_1ED85D648;
  if (!qword_1ED85D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85D648);
  }

  return result;
}

unint64_t sub_1B2217E88()
{
  result = qword_1ED85D640;
  if (!qword_1ED85D640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85D640);
  }

  return result;
}

unint64_t sub_1B2217EE0()
{
  result = qword_1EB7A2F08;
  if (!qword_1EB7A2F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A2F08);
  }

  return result;
}

unint64_t sub_1B2217F38()
{
  result = qword_1EB7A2F10;
  if (!qword_1EB7A2F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A2F10);
  }

  return result;
}

unint64_t sub_1B2217F90()
{
  result = qword_1EB7A2F18;
  if (!qword_1EB7A2F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A2F18);
  }

  return result;
}

unint64_t sub_1B2217FE8()
{
  result = qword_1ED85D4C8;
  if (!qword_1ED85D4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85D4C8);
  }

  return result;
}

unint64_t sub_1B2218040()
{
  result = qword_1ED85D4C0;
  if (!qword_1ED85D4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85D4C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ColumnDefinition.GeneratedColumnQualification(_BYTE *result, unsigned int a2, unsigned int a3)
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

unsigned __int8 *sub_1B22181DC(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 5)
    {
      v7 = v6 - 4;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 3)
    {
      return (v7 - 2);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 6;
    if (a2 + 6 >= 0xFFFF00)
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

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 6);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *sub_1B221828C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
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

  if (a3 >= 0xFA)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xF9)
  {
    v7 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B2218360(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 5)
  {
    return v1 - 4;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1B2218374(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 4;
  }

  return result;
}

uint64_t sub_1B221839C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 33))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 3)
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

uint64_t sub_1B22183DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1B2218434(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 35))
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

uint64_t sub_1B2218474(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}