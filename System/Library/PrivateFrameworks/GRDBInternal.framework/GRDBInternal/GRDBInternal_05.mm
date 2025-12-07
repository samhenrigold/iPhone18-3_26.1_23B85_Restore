void Date.databaseValue.getter(uint64_t a1@<X8>)
{
  if (qword_1ED85D6E0 != -1)
  {
    sub_1B2118264(&qword_1ED85D6E0);
  }

  v2 = qword_1ED85D6E8;
  v3 = sub_1B2251E50();
  v4 = [v2 stringFromDate_];

  v5 = sub_1B22522A0();
  v7 = v6;

  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = 2;
}

uint64_t static NSDate.fromDatabaseValue(_:)(__int128 *a1)
{
  v3 = sub_1B21619D8(&qword_1EB7A1330, &unk_1B226A760);
  sub_1B2111894(v3);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  v7 = sub_1B2251E90();
  sub_1B211280C();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1B2111844();
  v13 = v12 - v11;
  LOBYTE(v11) = *(a1 + 16);
  v15 = *a1;
  v16 = v11;
  static Date.fromDatabaseValue(_:)(&v15, v6);
  if (sub_1B2122A98(v6, 1, v7) == 1)
  {
    sub_1B212E32C(v6, &qword_1EB7A1330, &unk_1B226A760);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v13, v6, v7);
    sub_1B21EA36C(v1, &v15);
    (*(v9 + 8))(v13, v7);
    return v15;
  }
}

uint64_t static Date.fromDatabaseValue(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B22522F0();
  v5 = sub_1B2111894(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1B2111844();
  v6 = sub_1B21619D8(&qword_1EB7A1338, &qword_1B2260530);
  sub_1B2111894(v6);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31[-v8];
  v10 = type metadata accessor for DatabaseDateComponents(0);
  sub_1B21118A0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1B2112FA8();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31[-v16];
  v18 = *a1;
  v19 = *(a1 + 8);
  v20 = *(a1 + 16);
  if (v20 != 3)
  {
    if (v20 == 2)
    {

      v21 = v18;
      goto LABEL_6;
    }

LABEL_8:
    v26 = sub_1B2114268();
    sub_1B21117B4(v26, v27, 1, v10);
    goto LABEL_9;
  }

  sub_1B22522E0();
  v21 = sub_1B22522C0();
  if (!v22)
  {
    goto LABEL_8;
  }

  v19 = v22;
LABEL_6:
  sub_1B2175A64(v21, v19, v9);

  v23 = sub_1B2114268();
  if (sub_1B2122A98(v23, v24, v10) != 1)
  {
    sub_1B2175B30(v9, v17);
    sub_1B2175B94(v17, v14);
    Date.init(databaseDateComponents:)(v14, a2);
    return sub_1B2175BF8(v17);
  }

LABEL_9:
  sub_1B212E32C(v9, &qword_1EB7A1338, &qword_1B2260530);
  if (v20 > 1)
  {
    v28 = sub_1B2251E90();
    v29 = a2;
    v30 = 1;
  }

  else
  {
    sub_1B2251E60();
    v28 = sub_1B2251E90();
    v29 = a2;
    v30 = 0;
  }

  return sub_1B21117B4(v29, v30, 1, v28);
}

uint64_t sub_1B21743C4@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  result = static NSDate.fromDatabaseValue(_:)(a1);
  *a2 = result;
  return result;
}

uint64_t Date.init(databaseDateComponents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B21619D8(&qword_1EB7A1330, &unk_1B226A760);
  sub_1B2111894(v4);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = sub_1B2251E90();
  sub_1B211280C();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1B2111844();
  v14 = v13 - v12;
  if (*(a1 + *(type metadata accessor for DatabaseDateComponents(0) + 20)) > 3u)
  {
    sub_1B2175BF8(a1);
  }

  else
  {
    if (qword_1EB7A0D20 != -1)
    {
      sub_1B21155BC(&qword_1EB7A0D20);
    }

    v15 = sub_1B2251F70();
    sub_1B2156958(v15, qword_1EB7A0D28);
    sub_1B2251F40();
    if (sub_1B2122A98(v7, 1, v8) != 1)
    {
      (*(v10 + 32))(v14, v7, v8);
      sub_1B2251E40();
      sub_1B2251E30();
      sub_1B2175BF8(a1);
      (*(v10 + 8))(v14, v8);
      v16 = 0;
      return sub_1B21117B4(a2, v16, 1, v8);
    }

    sub_1B2175BF8(a1);
    sub_1B212E32C(v7, &qword_1EB7A1330, &unk_1B226A760);
  }

  v16 = 1;
  return sub_1B21117B4(a2, v16, 1, v8);
}

void Date.init(julianDay:)(uint64_t a1@<X8>)
{
  v2 = sub_1B21619D8(&qword_1EB7A1330, &unk_1B226A760);
  sub_1B2111894(v2);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v61 - v4;
  v6 = sub_1B2251E90();
  sub_1B211280C();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1B2111844();
  v12 = v11 - v10;
  v13 = sub_1B21619D8(&qword_1EB7A1340, &unk_1B22606D0);
  sub_1B2111894(v13);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1B21619D8(&qword_1EB7A1348, &qword_1B2255048);
  sub_1B2111894(v15);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v61 - v17;
  sub_1B2251D00();
  sub_1B211280C();
  MEMORY[0x1EEE9AC00](v19);
  sub_1B2111844();
  v22 = v21 - v20;
  sub_1B2115FF0();
  if (!(v25 ^ v26 | v24))
  {
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v23 <= -9.22337204e18)
  {
    goto LABEL_51;
  }

  sub_1B2111F50();
  if (!v25)
  {
    goto LABEL_52;
  }

  v28 = v27 + 43200000;
  if (__OFADD__(v27, 43200000))
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v29 = v28 / 86400000;
  v30 = ((v28 / 86400000) + -1867216.25) / 36524.25;
  if (COERCE__INT64(fabs(v30)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v30 <= -9.22337204e18)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v30 >= 9.22337204e18)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v31 = v29 + 1 + v30;
  if (__OFADD__(v29 + 1, v30))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v32 = v30 / 4;
  v26 = __OFSUB__(v31, v32);
  v33 = v31 - v32;
  if (v26)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v34 = v33 + 1524;
  if (__OFADD__(v33, 1524))
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v35 = (v34 + -122.1) / 365.25;
  if (COERCE__INT64(fabs(v35)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v35 <= -9.22337204e18)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v35 >= 9.22337204e18)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v36 = v35;
  v37 = 36525 * (v35 & 0x7FFF) / 0x64;
  v26 = __OFSUB__(v34, v37);
  v38 = v34 - v37;
  if (v26)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v39 = v38 / 30.6001;
  if (COERCE__INT64(fabs(v39)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v39 <= -9.22337204e18)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v39 >= 9.22337204e18)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v40 = v39 * 30.6001;
  if (COERCE_UNSIGNED_INT64(fabs(v40)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (v40 <= -9.22337204e18)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v40 >= 9.22337204e18)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (__OFSUB__(v38, v40))
  {
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v41 = v39;
  v42 = v39 - 13;
  if (v39 <= 13)
  {
    v42 = v41 - 1;
    if (__OFSUB__(v41, 1))
    {
      __break(1u);
      goto LABEL_84;
    }
  }

  if (v42 < 3)
  {
LABEL_30:
    if (!__OFADD__(v36, -4715))
    {
      goto LABEL_31;
    }

LABEL_84:
    __break(1u);
    return;
  }

  v26 = __OFADD__(v36, -4716);
  v36 -= 4716;
  if (v26)
  {
    __break(1u);
    goto LABEL_30;
  }

LABEL_31:
  sub_1B2115FF0();
  if (!(v25 ^ v26 | v24))
  {
    goto LABEL_71;
  }

  if (v43 <= -9.22337204e18)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  sub_1B2111F50();
  if (!v25)
  {
    goto LABEL_73;
  }

  v62 = v12;
  v47 = v46 % 3600;
  if (__OFSUB__(v46, 3600 * (v46 / 3600)))
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v61 = v8;
  v26 = __OFSUB__(v47, 60 * (v47 / 60));
  v48 = v47 % 60;
  if (v26)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v64 = v45;
  v65 = v44;
  v66 = v5;
  v67 = v6;
  v68 = a1;
  v49 = v46 - v46 + v48;
  v63 = sub_1B2251F70();
  sub_1B21117B4(v18, 1, 1, v63);
  sub_1B2251FA0();
  v50 = sub_1B2114268();
  sub_1B21117B4(v50, v51, 1, v52);
  sub_1B2251CE0();
  sub_1B2251C70();
  sub_1B2251C90();
  sub_1B2251C30();
  sub_1B2251C50();
  sub_1B2251CB0();
  if ((*&v49 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if (v49 <= -9.22337204e18)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  if (v49 >= 9.22337204e18)
  {
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  sub_1B2251CD0();
  sub_1B2115FF0();
  if (!(v25 ^ v26 | v24))
  {
    goto LABEL_79;
  }

  if (v53 <= -9.22337204e18)
  {
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  sub_1B2111F50();
  if (!v25)
  {
    goto LABEL_81;
  }

  sub_1B2251C10();
  if (qword_1EB7A0D20 != -1)
  {
LABEL_82:
    sub_1B21155BC(&qword_1EB7A0D20);
  }

  sub_1B2156958(v63, qword_1EB7A0D28);
  v54 = v66;
  sub_1B2251F40();
  v55 = v67;
  v56 = sub_1B2122A98(v54, 1, v67);
  v57 = v68;
  if (v56 == 1)
  {
    (*(v64 + 8))(v22, v65);
    sub_1B212E32C(v54, &qword_1EB7A1330, &unk_1B226A760);
    v58 = 1;
  }

  else
  {
    v60 = v61;
    v59 = v62;
    (*(v61 + 32))(v62, v54, v55);
    sub_1B2251E40();
    sub_1B2251E30();
    (*(v60 + 8))(v59, v55);
    (*(v64 + 8))(v22, v65);
    v58 = 0;
  }

  sub_1B21117B4(v57, v58, 1, v55);
}

uint64_t Date.init(sqliteStatement:index:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B21619D8(&qword_1EB7A1330, &unk_1B226A760);
  sub_1B2111894(v2);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v3);
  v62 = &v58 - v4;
  v5 = sub_1B21619D8(&qword_1EB7A1338, &qword_1B2260530);
  v6 = sub_1B2111894(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1B2112FA8();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v58 - v11;
  v63 = type metadata accessor for DatabaseDateComponents(0);
  sub_1B21118A0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1B2112FA8();
  v60 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v58 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v58 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v61 = &v58 - v23;
  v24 = sub_1B2251E90();
  sub_1B211280C();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  sub_1B2112FA8();
  v59 = v28 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v58 - v31;
  v33 = sub_1B2122144();
  v35 = sqlite3_column_type(v33, v34);
  if ((v35 - 1) >= 2)
  {
    if (v35 == 3)
    {
      v58 = a1;
      v40 = sub_1B2122144();
      v42 = sqlite3_column_text(v40, v41);
      if (!v42)
      {
LABEL_8:
        v39 = 1;
        a1 = v58;
        return sub_1B21117B4(a1, v39, 1, v24);
      }

      v43 = v42;
      v44 = sub_1B2122144();
      v46 = sqlite3_column_bytes(v44, v45);
      SQLiteDateParser.components(cString:length:)(v43, v46, v12);
      sub_1B2175C54(v12, v9);
      v47 = v63;
      if (sub_1B2122A98(v9, 1, v63) == 1)
      {
        sub_1B212E32C(v9, &qword_1EB7A1338, &qword_1B2260530);
        goto LABEL_8;
      }

      sub_1B2175B30(v9, v18);
      sub_1B2251D00();
      sub_1B21118A0();
      (*(v48 + 16))(v21, v18);
      v49 = v18[*(v47 + 20)];
      sub_1B2175BF8(v18);
      v21[*(v47 + 20)] = v49;
      v50 = v61;
      sub_1B2175B30(v21, v61);
      v51 = v60;
      sub_1B2175B94(v50, v60);
      v52 = v62;
      Date.init(databaseDateComponents:)(v51, v62);
      v53 = sub_1B2114268();
      v55 = sub_1B2122A98(v53, v54, v24);
      a1 = v58;
      if (v55 != 1)
      {
        v38 = *(v26 + 32);
        v57 = v59;
        v38(v59, v52, v24);
        sub_1B2251E40();
        sub_1B2251E30();
        (*(v26 + 8))(v57, v24);
        sub_1B2175BF8(v50);
        goto LABEL_3;
      }

      sub_1B2175BF8(v50);
      sub_1B212E32C(v52, &qword_1EB7A1330, &unk_1B226A760);
    }

    v39 = 1;
    return sub_1B21117B4(a1, v39, 1, v24);
  }

  v36 = sub_1B2122144();
  sqlite3_column_double(v36, v37);
  sub_1B2251E60();
  v38 = *(v26 + 32);
LABEL_3:
  v38(a1, v32, v24);
  v39 = 0;
  return sub_1B21117B4(a1, v39, 1, v24);
}

uint64_t sub_1B2175168@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a4;
  v7 = sub_1B21619D8(&qword_1EB7A1330, &unk_1B226A760);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v48 = &v43 - v8;
  v9 = sub_1B2251D00();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v47 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B21619D8(&qword_1EB7A1338, &qword_1B2260530);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  v17 = type metadata accessor for DatabaseDateComponents(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v43 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v46 = &v43 - v24;
  v25 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v45 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v43 - v29;
  v31 = sqlite3_column_type(a1, a2);
  if ((v31 - 1) >= 2)
  {
    if (v31 == 3)
    {
      v44 = a3;
      v35 = sqlite3_column_text(a1, a2);
      if (!v35)
      {
LABEL_8:
        v34 = 1;
        a3 = v44;
LABEL_12:
        v33 = v49;
        return sub_1B21117B4(v33, v34, 1, a3);
      }

      v36 = v35;
      v37 = sqlite3_column_bytes(a1, a2);
      SQLiteDateParser.init()();
      SQLiteDateParser.components(cString:length:)(v36, v37, v16);
      sub_1B2175C54(v16, v13);
      if (sub_1B2122A98(v13, 1, v17) == 1)
      {
        sub_1B212E32C(v13, &qword_1EB7A1338, &qword_1B2260530);
        goto LABEL_8;
      }

      sub_1B2175B30(v13, v22);
      v38 = v47;
      DatabaseDateComponents.dateComponents.getter();
      DatabaseDateComponents.format.getter();
      sub_1B2175BF8(v22);
      v39 = v46;
      DatabaseDateComponents.init(_:format:)(v38, &v50, v46);
      sub_1B2175B94(v39, v19);
      v40 = v48;
      Date.init(databaseDateComponents:)(v19, v48);
      a3 = v44;
      if (sub_1B2122A98(v40, 1, v44) != 1)
      {
        v32 = *(v25 + 32);
        v42 = v45;
        v32(v45, v40, a3);
        sub_1B2251E40();
        sub_1B2251E30();
        (*(v25 + 8))(v42, a3);
        sub_1B2175BF8(v39);
        goto LABEL_3;
      }

      sub_1B2175BF8(v39);
      sub_1B212E32C(v40, &qword_1EB7A1330, &unk_1B226A760);
    }

    v34 = 1;
    goto LABEL_12;
  }

  sqlite3_column_double(a1, a2);
  sub_1B2251E60();
  v32 = *(v25 + 32);
LABEL_3:
  v33 = v49;
  v32(v49, v30, a3);
  v34 = 0;
  return sub_1B21117B4(v33, v34, 1, a3);
}

id sub_1B21755D0()
{
  result = sub_1B21755F0();
  qword_1ED85D6E8 = result;
  return result;
}

id sub_1B21755F0()
{
  v0 = sub_1B21619D8(&qword_1EB7A1340, &unk_1B22606D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_1B2251F10();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1B2175D40(0xD000000000000017, 0x80000001B226CCD0, v7);
  sub_1B2251EF0();
  v8 = sub_1B2251F00();
  (*(v4 + 8))(v6, v3);
  [v7 setLocale_];

  sub_1B2251F80();
  v9 = sub_1B2251FA0();
  v10 = 0;
  if (sub_1B2122A98(v2, 1, v9) != 1)
  {
    v10 = sub_1B2251F90();
    (*(*(v9 - 8) + 8))(v2, v9);
  }

  [v7 setTimeZone_];

  return v7;
}

uint64_t sub_1B2175808()
{
  v0 = sub_1B2251F70();
  sub_1B2175CC4(v0, qword_1EB7A0D28);
  sub_1B2156958(v0, qword_1EB7A0D28);
  return sub_1B2175854();
}

uint64_t sub_1B2175854()
{
  v0 = sub_1B21619D8(&qword_1EB7A1340, &unk_1B22606D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_1B21619D8(&qword_1EB7A1350, &unk_1B22550D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_1B2251F20();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, *MEMORY[0x1E6969868], v6, v8);
  sub_1B2251F30();
  (*(v7 + 8))(v10, v6);
  sub_1B2251EF0();
  v11 = sub_1B2251F10();
  sub_1B21117B4(v5, 0, 1, v11);
  sub_1B2251F50();
  sub_1B2251F80();
  v12 = sub_1B2251FA0();
  result = sub_1B2122A98(v2, 1, v12);
  if (result != 1)
  {
    return sub_1B2251F60();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B2175A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8[0] = a1;
    v8[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v5 = strlen(v8);
    v6 = v8;
    return SQLiteDateParser.components(cString:length:)(v6, v5, a3);
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_8:
    sub_1B21619D8(&qword_1EB7A1338, &qword_1B2260530);
    return sub_1B2252CC0();
  }

  v4 = a2 & 0xFFFFFFFFFFFFFFFLL;
  v5 = strlen(((a2 & 0xFFFFFFFFFFFFFFFLL) + 32));
  v6 = (v4 + 32);
  return SQLiteDateParser.components(cString:length:)(v6, v5, a3);
}

uint64_t sub_1B2175B30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatabaseDateComponents(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B2175B94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatabaseDateComponents(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B2175BF8(uint64_t a1)
{
  v2 = type metadata accessor for DatabaseDateComponents(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B2175C54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B21619D8(&qword_1EB7A1338, &qword_1B2260530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *sub_1B2175CC4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_1B2175D40(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1B2252290();

  [a3 setDateFormat_];
}

uint64_t Database.add(transactionObserver:extent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  ObjectType = swift_getObjectType();

  return sub_1B2177D9C(a1, a3, v27, ObjectType, a2, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

uint64_t Database.remove(transactionObserver:)()
{
  sub_1B211D530();
  ObjectType = swift_getObjectType();

  return sub_1B2177AB0(v2, v1, ObjectType, v0);
}

uint64_t Database.afterNextTransactionCommit(_:)()
{
  sub_1B211D530();
  _s13CommitHandlerCMa();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  sub_1B2177C68();
}

uint64_t Database.TransactionObservationExtent.hashValue.getter()
{
  v1 = *v0;
  sub_1B2253420();
  MEMORY[0x1B2742F10](v1);
  return sub_1B2253470();
}

uint64_t sub_1B2175F54(uint64_t a1)
{
  v2 = *v1;
  sub_1B2253420();
  MEMORY[0x1B2742F10](v2);
  return sub_1B2253470();
}

uint64_t sub_1B2175F98()
{
  sub_1B2117330();
  swift_beginAccess();
  return sub_1B2175FF4(*(*(v0 + 48) + 16) != 0);
}

uint64_t sub_1B2175FD4(uint64_t result)
{
  if (*(v1 + 56) != (result & 1))
  {
    if (*(v1 + 56))
    {
      return sub_1B21768F0();
    }

    else
    {
      return sub_1B2176A38();
    }
  }

  return result;
}

uint64_t sub_1B2175FF4(char a1)
{
  v2 = *(v1 + 56);
  *(v1 + 56) = a1;
  return sub_1B2175FD4(v2);
}

uint64_t sub_1B217605C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(v4 + 17) & 1) != 0 || !sub_1B2176B68())
  {
    return 0;
  }

  v10 = v9;
  ObjectType = swift_getObjectType();
  v12 = (*(v10 + 8))(a1, a2, a3, a4, ObjectType, v10);
  swift_unknownObjectRelease();
  return v12 & 1;
}

void sub_1B21760F8()
{
  sub_1B21118B8();
  swift_beginAccess();
  *(v0 + 48) = MEMORY[0x1E69E7CC0];

  sub_1B2175F98();
  type metadata accessor for SchedulingWatchdog();
  v1 = sub_1B21114CC();
  if (v1)
  {
    *(v1 + 24) = 0;

    v2 = *(v0 + 32);
    *(v0 + 32) = 0;
    if (v2 >= 2)
    {
      if (v2 == 2)
      {
        sub_1B21766E4(0);
      }

      else
      {
        swift_unownedRetainStrong();
        v3 = sub_1B211C444();
        v4 = v2;

        sub_1B21766E4((v3 & 1) == 0);
        swift_willThrow();
        sub_1B211C6D8(v2);
      }
    }

    else
    {
      sub_1B211C6D8(v2);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B21761FC(void *a1)
{
  v3 = *(v1 + 24);
  if (sub_1B2176FA4())
  {
    sub_1B21115FC();
    swift_beginAccess();
    result = *(v1 + 48);
    v5 = *(result + 16);
    if (!v5)
    {
      return result;
    }

    for (i = (v28 + 48); ; i += 3)
    {
      v7 = *(i - 1);
      v8 = *i;
      *(&v31 + 1) = &type metadata for DatabaseEvent;
      *&v32 = &off_1F296A8E0;
      sub_1B212DE18();
      *&v30 = swift_allocObject();
      v9 = sub_1B217856C(a1, v30 + 16);
      if (!v7)
      {
        break;
      }

      MEMORY[0x1EEE9AC00](v9);
      v27 = &v30;

      v10 = sub_1B2115B7C();
      sub_1B211CF8C(v10);
      v11 = sub_1B2203814(sub_1B21789C4, v26, v7);
      if (v11)
      {
        v12 = sub_1B2115B7C();
        sub_1B211A378(v12, v13);
LABEL_10:
        sub_1B2113208(&v30);
        sub_1B21764DC(a1);

        goto LABEL_11;
      }

      MEMORY[0x1EEE9AC00](v11);
      v27 = &v30;
      v14 = sub_1B2203814(sub_1B21789C4, v26, v8);
      v15 = sub_1B2115B7C();
      sub_1B211A378(v15, v16);
      if (!v14)
      {
        goto LABEL_10;
      }

      sub_1B2113208(&v30);
LABEL_11:
      if (!--v5)
      {
      }
    }

    goto LABEL_10;
  }

  v34 = &type metadata for DatabaseEvent;
  v35 = &off_1F296A8E0;
  sub_1B212DE18();
  *&v33 = swift_allocObject();
  v17 = a1[3];
  v18 = a1[4];
  sub_1B21139A0(a1, v17);
  v19 = *(v18 + 24);

  v19(a1, v17, v18);
  sub_1B21115FC();
  swift_beginAccess();
  v20 = *(v1 + 48);
  sub_1B21217FC(&v33, &v30);
  *(&v32 + 1) = v20;
  sub_1B2117F5C(v3 + 16, v29);

  sub_1B21614A8();
  v21 = *(*(v3 + 16) + 16);
  sub_1B21617AC(v21);
  v22 = *(v3 + 16);
  *(v22 + 16) = v21 + 1;
  v23 = (v22 + 48 * v21);
  v24 = v30;
  v25 = v32;
  v23[3] = v31;
  v23[4] = v25;
  v23[2] = v24;
  *(v3 + 16) = v22;
  swift_endAccess();
}

uint64_t sub_1B21764DC(uint64_t result)
{
  if ((*(v1 + 17) & 1) == 0)
  {
    v2 = result;
    result = sub_1B2176B68();
    if (result)
    {
      v4 = v3;
      ObjectType = swift_getObjectType();
      (*(v4 + 16))(v2, ObjectType, v4);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t DatabaseEvent.copy()()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_1B21139A0(v0, v1);
  return (*(v2 + 24))(v0, v1, v2);
}

uint64_t sub_1B21765C8(uint64_t a1)
{
  result = sub_1B2176B68();
  if (result)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 24))(ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B2176630(uint64_t a1)
{
  v3 = *(v1 + 16);
  result = sub_1B2176B68();
  v6 = v5;
  if (v3 == 1)
  {
    if (!result)
    {
      return result;
    }

    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
    swift_unknownObjectRelease();
  }

  else if (!result)
  {
    return result;
  }

  ObjectType = swift_getObjectType();
  (*(v6 + 32))(a1, ObjectType, v6);

  return swift_unknownObjectRelease();
}

void sub_1B21766E4(char a1)
{

  sub_1B2121848();

  if ((a1 & 1) == 0 || (sub_1B2117330(), swift_beginAccess(), v3 = *(v1 + 40), (v4 = sub_1B2116B08()) == 0))
  {
LABEL_10:
    sub_1B21218AC();
    return;
  }

  v5 = v4;
  if (v4 >= 1)
  {

    v6 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1B27427E0](v6, v3);
      }

      else
      {
        sub_1B2117C0C();
      }

      ++v6;
      v7 = swift_unownedRetainStrong();
      sub_1B21767DC(v7);
    }

    while (v5 != v6);

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1B21767DC(uint64_t a1)
{
  v3 = *(v1 + 16);
  result = sub_1B2176B68();
  v6 = v5;
  if (v3 == 1)
  {
    if (!result)
    {
      return result;
    }

    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
    swift_unknownObjectRelease();
  }

  else if (!result)
  {
    return result;
  }

  ObjectType = swift_getObjectType();
  (*(v6 + 40))(a1, ObjectType, v6);

  return swift_unknownObjectRelease();
}

uint64_t sub_1B2176890(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 32);

    if (v2 <= 2)
    {
      *(v1 + 32) = 2;
      sub_1B211C6D8(v2);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1B21768F0()
{
  sub_1B2112FB8();
  sub_1B2117330();
  swift_beginAccess();

  v0 = sub_1B2111F60();
  return sqlite3_update_hook(v0, v1, v2);
}

uint64_t sub_1B217694C(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {

    switch(a2)
    {
      case 9:
        v9 = 1;
        goto LABEL_8;
      case 18:
        v9 = 0;
LABEL_8:
        v10[3] = &type metadata for MetalDatabaseEventImpl;
        v10[4] = &off_1F296AD28;
        v10[0] = a3;
        v10[1] = a4;
        v11 = v9;
        v12 = a5;
        sub_1B21761FC(v10);

        return sub_1B21784CC(v10);
      case 23:
        v9 = 2;
        goto LABEL_8;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

GRDBInternal::DatabaseEvent::Kind_optional __swiftcall DatabaseEvent.Kind.init(rawValue:)(Swift::Int32 rawValue)
{
  if (rawValue == 23)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  if (rawValue == 18)
  {
    v2 = 0;
  }

  if (rawValue == 9)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  *v1 = v3;
  return rawValue;
}

void *sub_1B2176A38()
{
  sub_1B2112FB8();
  sub_1B2117330();
  swift_beginAccess();
  v1 = *(v0 + 16);

  return sqlite3_update_hook(v1, 0, 0);
}

Swift::Void __swiftcall TransactionObserver.stopObservingDatabaseChangesUntilNextTransaction()()
{
  v3 = v1;
  sub_1B211D530();
  type metadata accessor for SchedulingWatchdog();
  v4 = sub_1B21114CC();
  if (v4 && (v5 = *(v4 + 24), , , v5))
  {
    sub_1B21778EC(v3, v5, v2, v0);
  }

  else
  {
    sub_1B2111608();
    sub_1B2252EC0();
    __break(1u);
  }
}

uint64_t sub_1B2176B68()
{
  if (*(v0 + 40))
  {
    Strong = *(v0 + 40);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
  }

  swift_unknownObjectRetain();
  return Strong;
}

uint64_t sub_1B2176BC0()
{
  sub_1B21784A4(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1B2176C74@<X0>(_DWORD *a1@<X8>)
{
  result = DatabaseEvent.Kind.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t DatabaseEvent.databaseName.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_1B21139A0(v0, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t DatabaseEvent.tableName.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_1B21139A0(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_1B2176D58(uint64_t result)
{
  if (result)
  {
    return sub_1B22523F0();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B2176D64(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return sub_1B22523F0();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B2176D74@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v6 = *(result + 40);
    v7 = *(result + 48);
    result = sub_1B22523F0();
    if (a3)
    {
      v9 = result;
      v10 = v8;
      v11 = sub_1B22523F0();
      v13 = v12;
      v16 = &type metadata for CopiedDatabaseEventImpl;
      v17 = &off_1F296ADF0;
      v14 = swift_allocObject();
      *&v15 = v14;
      v14[2] = v9;
      v14[3] = v10;
      v14[4] = v11;
      v14[5] = v13;
      *(a4 + 40) = v6;
      *(a4 + 48) = v7;
      return sub_1B21217FC(&v15, a4);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B2176E58()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1B2176E88()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1B2176EC4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 24);
  v5 = sub_1B21139A0(a2, a2[3]);
  if (!*(v5 + 40))
  {
    if (!v4)
    {
      goto LABEL_4;
    }

LABEL_10:
    v11 = 0;
    return v11 & 1;
  }

  if (*(v5 + 40) != 1)
  {
    if (v4 == 2)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (v4 != 1)
  {
    goto LABEL_10;
  }

LABEL_4:
  v6 = v5[4];
  sub_1B21139A0(v5, v5[3]);
  v7 = sub_1B2114010();
  if (v8(v7, v6) == v3 && v2 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B22531F0();
  }

  return v11 & 1;
}

BOOL sub_1B2176FA4()
{
  sub_1B2117330();
  swift_beginAccess();
  return *(*(v0 + 24) + 16) == 0;
}

uint64_t sub_1B2176FDC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B2252220();
  v5 = v4;
  sub_1B21115FC();
  v6 = swift_beginAccess();
  v7 = *(*(v2 + 16) + 16);
  sub_1B21146E4(v6, v8, v9, v10, v11, v12, v13, v14, v19);
  sub_1B21613D0();
  v15 = *(*(v2 + 24) + 16);
  sub_1B216174C(v15);
  v16 = *(v2 + 24);
  *(v16 + 16) = v15 + 1;
  v17 = (v16 + 24 * v15);
  v17[4] = v3;
  v17[5] = v5;
  v17[6] = v7;
  *(v2 + 24) = v16;
  return swift_endAccess();
}

void sub_1B2177080(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B2252220();
  v5 = v4;
  sub_1B21115FC();
  swift_beginAccess();
  while (1)
  {
    v6 = *(v2 + 24);
    v7 = *(v6 + 16);
    if (!v7)
    {
      break;
    }

    v8 = v6 + 24 * v7;
    v9 = *(v8 + 8) == v3 && *(v8 + 16) == v5;
    if (v9 || (sub_1B22531F0() & 1) != 0)
    {
      break;
    }

    sub_1B2117F5C(v2 + 24, v21);
    v10 = *(v2 + 24);
    if (!*(v10 + 16))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 24) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1B219569C();
      v10 = v13;
    }

    v12 = *(v10 + 16);
    if (!v12)
    {
      goto LABEL_18;
    }

    sub_1B211D554(v12);
    swift_endAccess();
  }

  sub_1B21B2A34(*(v2 + 24));
  if (!v15)
  {
    return;
  }

  v16 = v14;
  sub_1B21115FC();
  swift_beginAccess();
  v17 = *(*(v2 + 16) + 16);

  v18 = __OFSUB__(v17, v16);
  v19 = v17 - v16;
  if (!v18)
  {
    sub_1B2117F5C(v2 + 16, v20);
    sub_1B217720C(v19);
    swift_endAccess();
    return;
  }

LABEL_19:
  __break(1u);
}

void sub_1B21771D0()
{
  if (*(*v0 + 16))
  {
    sub_1B2177888();
    if (!v1)
    {
      sub_1B2194818();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B217720C(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = *(*v1 + 16);
  result = sub_1B222EED0();
  if (v3)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (v2 < result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return sub_1B21776B8(result, v2);
}

void sub_1B2177280(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B2252220();
  v5 = v4;
  sub_1B21115FC();
  swift_beginAccess();
  while (1)
  {
    v6 = *(v2 + 24);
    v7 = *(v6 + 16);
    if (!v7)
    {
      break;
    }

    v8 = v6 + 24 * v7;
    if (*(v8 + 8) == v3 && *(v8 + 16) == v5)
    {
      break;
    }

    v10 = sub_1B22531F0();
    if (v10)
    {
      break;
    }

    sub_1B21146E4(v10, v11, v12, v13, v14, v15, v16, v17, v30);
    v18 = *(v2 + 24);
    if (!*(v18 + 16))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 24) = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1B219569C();
      v18 = v21;
    }

    v20 = *(v18 + 16);
    if (!v20)
    {
      goto LABEL_17;
    }

    sub_1B211D554(v20);
    swift_endAccess();
  }

  if (*(*(v2 + 24) + 16))
  {
    sub_1B21146E4(v22, v23, v24, v25, v26, v27, v28, v29, v30);
    sub_1B21771D0();
    swift_endAccess();
  }
}

unint64_t *sub_1B21773D0(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1B21775AC(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

unint64_t *sub_1B2177448(uint64_t a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_1B21773D0(v8, v4, v2);
      MEMORY[0x1B2743C50](v8, -1, -1);
      return v2;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v5 = (v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_1B2148CEC(0, v4, v5);
  sub_1B21775AC(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

void sub_1B21775AC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
LABEL_4:
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    v14 = *(*(*(a3 + 56) + 8 * v11) + 72);
    v15 = (v14 + 56);
    v16 = *(v14 + 16) + 1;
    while (--v16)
    {
      v17 = *v15;
      v15 += 32;
      if (v17 == 1)
      {
        goto LABEL_4;
      }
    }

    *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
    if (__OFADD__(v4++, 1))
    {
      __break(1u);
LABEL_18:
      sub_1B21E8058(result, a2, v4, a3);
      return;
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      goto LABEL_18;
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1B21776B8(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1B2181350(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 48 * v5);
  sub_1B21619D8(&qword_1EB7A0E18, &qword_1B2254530);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_1B2245534((v9 + 48 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1B21777AC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1B2157100(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 16 * v5);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_1B215A618((v9 + 16 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1B2177888()
{
  v1 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B219569C();
    v1 = v3;
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    *(v1 + 16) = v2 - 1;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B21778EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v6 = *(a2 + 40);
  v7 = sub_1B2116B08();

  for (i = 0; ; ++i)
  {
    if (v7 == i)
    {
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1B27427E0](i, v6);
      v10 = result;
    }

    else
    {
      if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v10 = *(v6 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    if (sub_1B2177A74(a1))
    {
      break;
    }
  }

  *(v10 + 17) = 1;
  swift_beginAccess();
  v11 = *(a2 + 48);

  sub_1B2194634(v11, v10);
  if ((v12 & 1) == 0)
  {
    sub_1B21946B0();
    v14 = v13;
    v16 = v15;

    sub_1B211A378(v14, v16);
  }

  swift_endAccess();
  sub_1B2175F98();
}

uint64_t sub_1B2177A74(uint64_t a1)
{
  result = sub_1B2176B68();
  if (result)
  {
    v3 = result;
    swift_unknownObjectRelease();
    return v3 == a1;
  }

  return result;
}

uint64_t sub_1B2177AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SchedulingWatchdog();
  v8 = sub_1B2114010();
  if (sub_1B2117B40(v8))
  {
    v9 = sub_1B212A5AC();
    v11 = sub_1B2116004(v9, v10);
    v12 = sub_1B2177448(v11);

    v13 = sub_1B21224AC(OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___publicStatementCache);
    *v14 = a2;
    v14[1] = v12;
    sub_1B2120024(v13, v15);
    v16 = sub_1B212DAF0();
    v18 = sub_1B2116004(v16, v17);
    v19 = sub_1B2177448(v18);

    v20 = sub_1B21224AC(OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___internalStatementCache);
    *v21 = a2;
    v21[1] = v19;
    v23 = sub_1B2120024(v20, v22);
    v25 = sub_1B211CD70(v23, v24);
    sub_1B2177BD4(a1, v25, a3, a4);
  }

  else
  {
    sub_1B2111608();
    result = sub_1B2114F3C("Fatal error");
    __break(1u);
  }

  return result;
}

uint64_t sub_1B2177BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = a1;
  v7[3] = a4;
  swift_beginAccess();
  sub_1B21C3A04(sub_1B217883C, v7, *(a2 + 40));
  if ((v5 & 1) == 0)
  {
    sub_1B2194794();
  }

  return swift_endAccess();
}

uint64_t sub_1B2177C68()
{
  sub_1B2122150();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  type metadata accessor for SchedulingWatchdog();
  if (sub_1B2117B40(v5))
  {
    v8 = sub_1B212A5AC();
    v10 = sub_1B2177448(v9);

    v11 = (v5 + OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___publicStatementCache);
    v12 = *(v5 + OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___publicStatementCache);
    v13 = *(v5 + OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___publicStatementCache + 8);
    *v11 = v8;
    v11[1] = v10;
    sub_1B2120024(v12, v13);
    v14 = sub_1B212DAF0();
    v16 = sub_1B2177448(v15);

    v17 = (v5 + OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___internalStatementCache);
    v18 = *(v5 + OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___internalStatementCache);
    v19 = *(v5 + OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___internalStatementCache + 8);
    *v17 = v14;
    v17[1] = v16;
    v20 = sub_1B2120024(v18, v19);
    sub_1B211CD70(v20, v21);
    v22 = sub_1B2114010();
    sub_1B2178624(v22, v7, v5, v3, v1);
    sub_1B2114274();
  }

  else
  {
    sub_1B2111608();
    result = sub_1B2114F3C("Fatal error");
    __break(1u);
  }

  return result;
}

uint64_t sub_1B2177D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_1B2122150();
  a26 = v27;
  a27 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = *v37;
  type metadata accessor for SchedulingWatchdog();
  v39 = sub_1B2114010();
  if (sub_1B2117B40(v39))
  {
    v40 = sub_1B212A5AC();
    v42 = sub_1B2116004(v40, v41);
    v43 = sub_1B2177448(v42);

    v44 = sub_1B21224AC(OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___publicStatementCache);
    *v45 = v34;
    v45[1] = v43;
    sub_1B2120024(v44, v46);
    v47 = sub_1B212DAF0();
    v49 = sub_1B2116004(v47, v48);
    v50 = sub_1B2177448(v49);

    v51 = sub_1B21224AC(OBJC_IVAR____TtC12GRDBInternal8Database____lazy_storage___internalStatementCache);
    *v52 = v34;
    v52[1] = v50;
    v54 = sub_1B2120024(v51, v53);
    v56 = sub_1B211CD70(v54, v55);
    a14 = v38;
    sub_1B21786E4(v36, &a14, v56, v32, v30);
    sub_1B2114274();
  }

  else
  {
    sub_1B2111608();
    result = sub_1B2114F3C("Fatal error");
    __break(1u);
  }

  return result;
}

unint64_t sub_1B2177EE4()
{
  result = qword_1EB7A1358;
  if (!qword_1EB7A1358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A1358);
  }

  return result;
}

unint64_t sub_1B2177F3C()
{
  result = qword_1EB7A1360;
  if (!qword_1EB7A1360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A1360);
  }

  return result;
}

__n128 sub_1B2178038(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1B217804C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 25))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_1B217808C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

__n128 sub_1B21780E8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1B2178104(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1B2178144(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for DatabaseUUIDEncodingStrategy(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_1B2178224(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B21782FC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B217834C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1B21783A0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1B21783CC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B2178428(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_1B2178478(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1B21784FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B21619D8(&qword_1EB7A0E18, &qword_1B2254530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B21785C4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 >= 2u)
  {
    if (a4 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1B2178624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  type metadata accessor for TransactionObservation();
  v9 = swift_allocObject();

  sub_1B21787B0(v10, v8, v9, a4, a5);
  v11 = sub_1B2117F5C(a3 + 40, v13);
  MEMORY[0x1B2742060](v11);
  sub_1B212B4C4(*((*(a3 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1B2252630();
  return swift_endAccess();
}

uint64_t sub_1B21786E4(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = *a2;
  type metadata accessor for TransactionObservation();
  v8 = swift_allocObject();
  v9 = swift_unknownObjectRetain();
  sub_1B217885C(v9, v12, v8, a4, a5);
  v10 = swift_beginAccess();
  MEMORY[0x1B2742060](v10);
  sub_1B212B4C4(*((*(a3 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1B2252630();
  return swift_endAccess();
}

uint64_t sub_1B21787B0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a3 + 17) = 0;
  *(a3 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 16) = a2;
  if (a2)
  {
    *(a3 + 40) = a1;
    *(a3 + 48) = a5;
  }

  else
  {
    *(a3 + 32) = a4;
    swift_unknownObjectWeakAssign();
  }

  return a3;
}

uint64_t sub_1B217885C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  *(a3 + 17) = 0;
  *(a3 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 16) = v8;
  if (v8)
  {
    *(a3 + 40) = a1;
    *(a3 + 48) = a5;
  }

  else
  {
    *(a3 + 32) = a5;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
  }

  return a3;
}

uint64_t getEnumTagSinglePayload for MetalDatabaseEventImpl(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MetalDatabaseEventImpl(uint64_t result, int a2, int a3)
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

uint64_t sub_1B2178930(uint64_t a1, int a2)
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

uint64_t sub_1B2178970(uint64_t result, int a2, int a3)
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

uint64_t sub_1B21789F8(uint64_t a1)
{
  sub_1B21118C4();
  memcpy(v2, v3, v4);
  sub_1B21118C4();
  memcpy(v5, v6, v7);
  switch(sub_1B213A580(v59))
  {
    case 1u:
      v43 = sub_1B213AA9C(v59);
      v44 = memcpy(__dst, v43, 0xA3uLL);
      sub_1B21118D0(v44, v45, v46, v47, v48, v49, v50, v51, v54, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17], __src[18], __src[19], __src[20], v57[0]);
      v52 = sub_1B2114F68();
      sub_1B213BBD8(v52, v53);
      sub_1B213A5CC(v58);
      memcpy(v57, __src, 0xA3uLL);
      v32 = sub_1B214D464(v57);
      goto LABEL_7;
    case 2u:
      v19 = sub_1B213AA9C(v59);
      v20 = v19[21];
      v21 = v19[22];
      v22 = memcpy(__dst, v19, 0xA3uLL);
      sub_1B21118D0(v22, v23, v24, v25, v26, v27, v28, v29, v54, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17], __src[18], __src[19], __src[20], v57[0]);
      v30 = sub_1B2114F68();
      sub_1B213BBD8(v30, v31);
      sub_1B21356F8(v19);
      memcpy(v57, __src, 0xA8uLL);
      v57[21] = v20;
      v57[22] = v21;
      v32 = sub_1B2155A5C(v57);
      goto LABEL_7;
    case 3u:
      v33 = sub_1B213AA9C(v59);
      sub_1B21118D0(v33, v34, v35, v36, v37, v38, v39, v40, v54, *v33, __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17], __src[18], __src[19], __src[20], v57[0]);
      v41 = sub_1B2114F68();
      sub_1B2153E58(v41, v42);
      sub_1B213A5CC(v58);
      v57[0] = __src[0];
      v32 = sub_1B216ED24(v57);
LABEL_7:
      result = sub_1B2118284(v32, v57);
      break;
    case 4u:
      v57[0] = a1;
      v18 = sub_1B213A59C(v57);
      sub_1B2118284(v18, v57);

      break;
    default:
      v8 = sub_1B213AA9C(v59);
      v9 = sub_1B2118284(v8, v58);
      result = sub_1B21118D0(v9, v10, v11, v12, v13, v14, v15, v16, v54, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17], __src[18], __src[19], __src[20], v57[0]);
      break;
  }

  return result;
}

void *sub_1B2178B94@<X0>(void *a1@<X8>)
{
  sub_1B21118C4();
  memcpy(v2, v3, v4);
  switch(sub_1B213A580(v27))
  {
    case 1u:
      v5 = sub_1B213AA9C(v27);
      sub_1B21118C4();
      memcpy(v6, v7, v8);
      v9 = sub_1B213AA9C(__src);
      sub_1B2127DC0(v9, __dst);
      goto LABEL_5;
    case 2u:
      v5 = sub_1B213AA9C(v27);
      sub_1B21118C4();
      memcpy(v10, v11, v12);
      v13 = sub_1B213AA9C(__src);
      sub_1B2156464(v13, __dst);

LABEL_5:
      memcpy(__dst, v5, 0xA3uLL);
      sub_1B21619D8(&qword_1EB7A0E70, &unk_1B225D330);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1B22546B0;
      memcpy((v14 + 32), __dst, 0xA3uLL);
      sub_1B2116014();
      __src[0] = v15;
      __src[1] = v16;
      LOWORD(__src[2]) = 1;
      __src[3] = v14;
      sub_1B2179374(__src);
      goto LABEL_6;
    case 3u:
      v25[0] = *sub_1B213AA9C(v27);
      sub_1B2153E14(v25);
      sub_1B21619D8(&qword_1EB7A0E70, &unk_1B225D330);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1B22546B0;
      memcpy((v18 + 32), v25, 0xA3uLL);
      sub_1B2116014();
      __dst[0] = v19;
      __dst[1] = v20;
      LOWORD(__dst[2]) = 1;
      __dst[3] = v18;
      sub_1B2179374(__dst);
      memcpy(a1, __dst, 0xA3uLL);
      sub_1B21118C4();
      memcpy(v21, v22, v23);
      sub_1B213AA9C(__src);

    case 4u:
      sub_1B21793B4(__src);
LABEL_6:
      result = memcpy(a1, __src, 0xA3uLL);
      break;
    default:
      sub_1B213AA9C(v27);
      result = sub_1B2252EC0();
      __break(1u);
      break;
  }

  return result;
}

void *sub_1B2178DE4@<X0>(char a1@<W0>, void *a2@<X8>)
{
  v3 = v2;
  memcpy(__dst, v3, sizeof(__dst));
  switch(sub_1B213A580(__dst))
  {
    case 1u:
      v6 = sub_1B213AA9C(__dst);
      memcpy(v13, v3, sizeof(v13));
      v7 = sub_1B213AA9C(v13);
      sub_1B2127DC0(v7, __src);
      goto LABEL_7;
    case 2u:
      v6 = sub_1B213AA9C(__dst);
      memcpy(v13, v3, sizeof(v13));
      v8 = sub_1B213AA9C(v13);
      sub_1B2156464(v8, __src);

LABEL_7:
      memcpy(__src, v6, 0xA3uLL);
      if (a1)
      {
        memcpy(v11, __src, 0xA3uLL);
        nullsub_1();
      }

      else
      {
        sub_1B21356F8(__src);
        sub_1B2179418(v11);
      }

      v9 = v11;
      goto LABEL_12;
    case 4u:
      if (a1)
      {
        goto LABEL_4;
      }

      sub_1B2179418(__src);
      v9 = __src;
LABEL_12:
      memcpy(v13, v9, 0xA3uLL);
      nullsub_1();
      break;
    default:
      sub_1B213AA9C(__dst);
LABEL_4:
      sub_1B21793E8(v13);
      break;
  }

  return memcpy(a2, v13, 0xA3uLL);
}

uint64_t sub_1B2178F60(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = (a2 + 32);
  if (!v4)
  {
    return v3;
  }

  while (2)
  {
    memcpy(__dst, v5, sizeof(__dst));
    memcpy(v14, v5, sizeof(v14));
    switch(sub_1B213A580(v14))
    {
      case 1u:
      case 2u:
        sub_1B213AA9C(v14);
        v6 = 1;
        goto LABEL_6;
      case 3u:
        goto LABEL_12;
      case 4u:
        goto LABEL_13;
      default:
        sub_1B213AA9C(v14);
        sub_1B213A774(__dst, v12);
        sub_1B213A774(__dst, v12);
        v7 = sub_1B2138F90();
        v9 = sub_1B21D9F5C(v7, v8);
        if (v2)
        {

          sub_1B213A5CC(__dst);
          sub_1B213A5CC(__dst);
          return v3;
        }

        v6 = v9;
        sub_1B213A5CC(__dst);

        sub_1B213A5CC(__dst);
LABEL_6:
        v10 = __OFADD__(v3, v6);
        v3 += v6;
        if (!v10)
        {
          v5 += 184;
          if (!--v4)
          {
            return v3;
          }

          continue;
        }

        __break(1u);
LABEL_12:
        sub_1B213AA9C(v14);
LABEL_13:
        result = sub_1B2252EC0();
        __break(1u);
        return result;
    }
  }
}

uint64_t getEnumTagSinglePayload for AllColumns(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for AllColumns(_BYTE *result, int a2, int a3)
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

uint64_t sub_1B217920C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 184))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1B2179254(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 184) = 1;
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
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 64) = 2 * -a2;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0u;
      *(a1 + 152) = 0u;
      *(a1 + 168) = 0u;
      return result;
    }

    *(a1 + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B21792EC(void *a1, uint64_t a2)
{
  if (a2 < 4)
  {
    v3 = a1[13] & 1;
    v4 = a1[20] & 0xF981FFLL | (a2 << 61);
    a1[8] &= 1uLL;
    a1[13] = v3;
    a1[20] = v4;
  }

  else
  {
    *a1 = (a2 - 4);
    bzero(a1 + 1, 0x98uLL);
    a1[21] = 0;
    a1[22] = 0;
    a1[20] = 0x8000000000000000;
  }
}

uint64_t sub_1B2179374(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = *(result - 56) & 1;
  v4 = (v2 | (*(result + 2) << 16)) & 0x10177 | 0x88888888;
  *(result - 96) &= 1uLL;
  *(result - 56) = v3;
  *result = v2 & 0x81FF;
  *(result + 2) = BYTE2(v4);
  return result;
}

void sub_1B21793B4(uint64_t a1)
{
  bzero(a1, 0xA0uLL);
  *(a1 + 162) = -88;
  *(a1 + 160) = 0;
}

double sub_1B21793E8(uint64_t a1)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0x1FFFFFFFCLL;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 147) = 0u;
  return result;
}

double sub_1B2179418(uint64_t a1)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0x1FFFFFFFELL;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 147) = 0u;
  return result;
}

uint64_t sub_1B2179448(uint64_t a1)
{
  if ((*(a1 + 64) >> 1) > 0x80000000)
  {
    return -(*(a1 + 64) >> 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B2179460(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 163))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64) >> 1;
  if (v3 > 0x80000000)
  {
    v4 = ~v3;
  }

  else
  {
    v4 = -1;
  }

  if (v4 + 1 >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void sub_1B21794B8(char *a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    v5 = a2 - 0x7FFFFFFF;
    bzero(a1, 0xA3uLL);
    *a1 = v5;
    if (a3 >= 0x7FFFFFFF)
    {
      a1[163] = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      a1[163] = 0;
    }

    if (a2)
    {
      *(a1 + 2) = 0u;
      *(a1 + 3) = 0u;
      *a1 = 0u;
      *(a1 + 1) = 0u;
      *(a1 + 8) = 2 * ~a2;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0u;
      *(a1 + 147) = 0u;
    }
  }
}

double sub_1B2179564(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 152) = 0;
    result = 0.0;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 162) = 0;
    *(a1 + 160) = 0;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 64) = 2 * -a2;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 147) = 0u;
  }

  return result;
}

uint64_t QueryInterfaceRequest.select<A>(_:as:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memcpy(__dst, v3, 0xA2uLL);
  SelectionRequest.select(_:)();
  memcpy(v7, __src, sizeof(v7));
  QueryInterfaceRequest.asRequest<A>(of:)();
  memcpy(__dst, v7, 0xA2uLL);
  sub_1B2111808();
  return (*(v5 + 8))(__dst, a3);
}

uint64_t QueryInterfaceRequest.limit(_:offset:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  sub_1B2114F78();
  memcpy(v4, v5, v6);
  return sub_1B2135E94(sub_1B217F8D4, a1, a2);
}

uint64_t QueryInterfaceRequest.aliased(_:)(uint64_t a1, uint64_t a2)
{
  sub_1B2114F78();
  memcpy(v3, v4, v5);
  sub_1B211829C();
  return sub_1B2135E94(v6, a2, v7);
}

uint64_t QueryInterfaceRequest.with<A>(_:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1B2114F78();
  memcpy(v5, v6, v7);
  return sub_1B2135E94(sub_1B217F9AC, a2, a3);
}

uint64_t QueryInterfaceRequest<A>.selectID()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B2114F78();
  memcpy(v6, v7, v8);
  v9 = swift_allocObject();
  v9[2] = *(a1 + 16);
  v9[3] = a2;
  v9[4] = a3;
  sub_1B2114F78();
  memcpy(v10, v11, v12);
  v13 = *(a1 - 8);
  v14 = sub_1B211D56C();
  v15(v14);
  QueryInterfaceRequest.select(_:)(__src);

  QueryInterfaceRequest.asRequest<A>(of:)();
  memcpy(__dst, __src, 0xA2uLL);
  return (*(v13 + 8))(__dst, a1);
}

uint64_t QueryInterfaceRequest<A>.selectID()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B2114F78();
  memcpy(v8, v9, v10);
  v11 = swift_allocObject();
  v11[2] = *(a1 + 16);
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = a4;
  sub_1B2114F78();
  memcpy(v12, v13, v14);
  v15 = *(a1 - 8);
  v16 = sub_1B211D56C();
  v17(v16);
  QueryInterfaceRequest.select(_:)(__src);

  QueryInterfaceRequest.asRequest<A>(of:)();
  memcpy(__dst, __src, 0xA2uLL);
  return (*(v15 + 8))(__dst, a1);
}

void sub_1B2179B48(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v424 = v3;
  v5 = v4;
  v429 = v6;
  v441 = v2;
  if (v2 >> 62)
  {
    goto LABEL_250;
  }

  v7 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    return;
  }

  while (1)
  {
    v435 = v1;
    v8 = v2 & 0xC000000000000001;
    v9 = v2;
    sub_1B21C2A5C(0, (v2 & 0xC000000000000001) == 0, v2);
    v443 = v8;
    if (v8)
    {
LABEL_254:
      MEMORY[0x1B27427E0](0, v9);
    }

    else
    {
    }

    v10 = 0;
    v423 = *(v5 + 16);
    v422 = v5 + 32;
    v437 = v9 & 0xFFFFFFFFFFFFFF8;
    v436 = v9 + 32;
    v442 = v7;
LABEL_6:
    if (v10 == v423)
    {
      goto LABEL_242;
    }

    v11 = *(v422 + 8 * v10);
    if (!*(v11 + 16))
    {
      goto LABEL_249;
    }

    v12 = *(v11 + 88);
    if (v12 < 0)
    {
      goto LABEL_276;
    }

    v13 = *(v422 + 8 * v10);
    v432 = v10;
    v15 = *(v11 + 56);
    v14 = *(v11 + 64);
    v16 = *(v13 + 72);
    v17 = *(v13 + 80);
    v434 = v13;
    if (v12)
    {
      v18 = *v424;
    }

    else
    {
      v18 = v15;
    }

    if (v12)
    {
      v19 = v424[1];
    }

    else
    {
      v19 = v14;
    }

    v430 = v15;
    if (v12)
    {
      v20 = v15;
    }

    else
    {
      v20 = *v424;
    }

    v431 = v14;
    if (v12)
    {
      v21 = v14;
    }

    else
    {
      v21 = v424[1];
    }

    if (v16)
    {

      v22 = v16;
      v23 = v17;
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    v811 = v18;
    v812 = v19;
    v813 = v20;
    v814 = v21;
    v815 = v22;
    v816 = v23;

    v427 = v16;
    sub_1B2181640(v430, v431, v16, v17, v12);

    v24 = sub_1B21D9790(v429);
    if (v435)
    {

      sub_1B21816DC(v430, v431, v16, v17, v12);
      return;
    }

    v25 = v24;

    v425 = v12;
    v26 = sub_1B21D9D18(v12 & 1, v25);

    v31 = v26[2];
    if (!v31)
    {
      v56 = MEMORY[0x1E69E7CC0];
      v57 = MEMORY[0x1E69E7CC0];
      v44 = MEMORY[0x1E69E7CC0];
      goto LABEL_47;
    }

    *&v594[0] = MEMORY[0x1E69E7CC0];
    sub_1B2116B10(0, v31, 0, v27, v28, v29, v30);
    v32 = *&v594[0];
    v426 = v26;
    v33 = v26 + 7;
    v34 = v31;
    do
    {
      v36 = *(v33 - 1);
      v35 = *v33;
      *&v594[0] = v32;
      v38 = *(v32 + 16);
      v37 = *(v32 + 24);

      if (v38 >= v37 >> 1)
      {
        sub_1B2116B10(v37 > 1, v38 + 1, 1, v39, v40, v41, v42);
        v32 = *&v594[0];
      }

      *(v32 + 16) = v38 + 1;
      v43 = v32 + 16 * v38;
      *(v43 + 32) = v36;
      *(v43 + 40) = v35;
      v33 += 4;
      --v34;
    }

    while (v34);
    v428 = v32;
    *&v594[0] = MEMORY[0x1E69E7CC0];
    sub_1B2116B10(0, v31, 0, v39, v40, v41, v42);
    v44 = *&v594[0];
    v45 = v426 + 5;
    v46 = v31;
    do
    {
      v48 = *(v45 - 1);
      v47 = *v45;
      *&v594[0] = v44;
      v50 = *(v44 + 16);
      v49 = *(v44 + 24);

      if (v50 >= v49 >> 1)
      {
        sub_1B2116B10(v49 > 1, v50 + 1, 1, v51, v52, v53, v54);
        v44 = *&v594[0];
      }

      *(v44 + 16) = v50 + 1;
      v55 = v44 + 16 * v50;
      *(v55 + 32) = v48;
      *(v55 + 40) = v47;
      v45 += 4;
      --v46;
    }

    while (v46);
    if (v31 == 1)
    {
      v56 = MEMORY[0x1E69E7CC0];
      v57 = v428;
      v16 = v427;
      v26 = v426;
LABEL_47:
      sub_1B21816DC(v430, v431, v16, v17, v425);
      sub_1B21A6AA4(v441, v26, v593);

      memcpy(v594, v593, 0xA3uLL);
      v579[0] = v434;
      memcpy(v593, v594, 0xA3uLL);
      sub_1B217FECC(v579, v593, v57, v580);
      sub_1B21356F8(v594);
      memcpy(v599, v580, 0xA2uLL);
      goto LABEL_48;
    }

    v16 = v427;
    if (qword_1ED85C0D8 != -1)
    {
      swift_once();
    }

    v56 = MEMORY[0x1E69E7CC0];
    v26 = v426;
    if (byte_1ED8618E0 != 1)
    {
      v57 = v428;
      goto LABEL_47;
    }

    sub_1B21C36A4(v600);
    v1 = 0;
    sub_1B21C53BC(sub_1B21C5514, 0, v601);
    sub_1B2137224(v600);
    v58 = *(v44 + 16);
    v421 = v44;
    if (v58)
    {
      v567[0] = v56;
      sub_1B213A1C8();
      v59 = v567[0];
      v60 = (v44 + 40);
      do
      {
        v61 = *v60;
        v579[0] = *(v60 - 1);
        v579[1] = v61;
        sub_1B2134F5C(v579);
        memcpy(v580, v579, 0xA3uLL);
        v567[0] = v59;
        v62 = *(v59 + 16);
        v1 = *(v59 + 24);

        if (v62 >= v1 >> 1)
        {
          sub_1B213A1C8();
          v59 = v567[0];
        }

        memcpy(v593, v580, 0xA3uLL);
        sub_1B214D464(v593);
        memcpy(v594, v593, 0xB8uLL);
        *(v59 + 16) = v62 + 1;
        memcpy((v59 + 184 * v62 + 32), v594, 0xB8uLL);
        v60 += 2;
        --v58;
      }

      while (v58);
      v56 = MEMORY[0x1E69E7CC0];
      v16 = v427;
    }

    else
    {
      v59 = v56;
    }

    sub_1B21C3B0C(v59, v602);

    memcpy(v598, v602, sizeof(v598));
    v595 = v605;
    v596 = v606;
    v597[0] = *v607;
    *(v597 + 9) = *&v607[9];
    v126 = v601[11];
    v411 = v601[12];
    sub_1B2136148(v602, v594);
    v127 = sub_1B2252190();
    v128 = 0;
    v129 = *(v126 + 16);
    v130 = v126 + 32;
    v131 = v56;
LABEL_82:
    if (v128 != v129)
    {
      break;
    }

    sub_1B2137224(v601);
    v663 = v604;
    v662 = v603;
    sub_1B2137224(v602);
    sub_1B2122400(&v662, &qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B2122400(&v663, &qword_1EB7A13B8, &qword_1B2257E58);
    memcpy(v553, v598, 0x58uLL);
    v553[11] = v131;
    v553[12] = v127;
    LOBYTE(v553[13]) = 0;
    *(&v553[13] + 1) = v595;
    *(&v553[15] + 1) = v596;
    *(&v553[17] + 1) = v597[0];
    *(&v553[18] + 2) = *(v597 + 9);
    memcpy(v554, v553, 0xA2uLL);
    sub_1B214C410(v554);
    memcpy(&v594[1] + 8, v554, 0xA2uLL);
    *&v594[0] = 0x7361625F62647267;
    *(&v594[0] + 1) = 0xE900000000000065;
    *&v594[1] = 0;
    BYTE10(v594[11]) = 0;
    v334 = *(v428 + 16);
    if (v334)
    {
      sub_1B2136148(v553, v593);
      v579[0] = v56;
      sub_1B213CA68();
      v335 = v579[0];
      v336 = (v428 + 40);
      do
      {
        v338 = *(v336 - 1);
        v337 = *v336;
        v579[0] = v335;
        v340 = v335[2];
        v339 = v335[3];

        if (v340 >= v339 >> 1)
        {
          sub_1B213CA68();
          v335 = v579[0];
        }

        v580[0] = v338;
        v580[1] = v337;
        sub_1B2134F5C(v580);
        memcpy(v593, v580, 0xA3uLL);
        v335[2] = v340 + 1;
        memcpy(&v335[21 * v340 + 4], v593, 0xA3uLL);
        v336 += 2;
        --v334;
      }

      while (v334);
      v56 = MEMORY[0x1E69E7CC0];
      v16 = v427;
    }

    else
    {
      sub_1B2136148(v553, v593);
      v335 = v56;
    }

    if (!v335[2])
    {
      goto LABEL_277;
    }

    sub_1B21816DC(v430, v431, v16, v17, v425);
    sub_1B21BF968(0, 1, v335);
    memcpy(v579, v335 + 4, 0xA3uLL);
    if (v335[2] == 1)
    {
      sub_1B2127DC0(v579, v593);

      v341 = v579;
    }

    else
    {
      v593[0] = v335;
      sub_1B218184C(v593);
      v341 = v593;
    }

    memcpy(v567, v341, 0xA3uLL);
    v342 = v594[0];
    *v540 = v594[0];
    sub_1B2181890(v540);
    v343 = swift_allocObject();
    memcpy(v343 + 16, v567, 0xA3uLL);
    memcpy(v343 + 184, v540, 0xA2uLL);
    v343[346] = 0;
    v566[0] = v343;
    sub_1B214C468(v566);
    memcpy(v593, v566, 0xA3uLL);
    v541[0] = v434;
    sub_1B2127DC0(v567, v580);

    v57 = v428;
    sub_1B217FECC(v541, v593, v428, v528);
    memcpy(v541, v528, 0xA2uLL);
    memcpy(v527, v528, 0xA2uLL);
    memcpy(v593, &v594[1], 0xABuLL);
    nullsub_1();
    memcpy(v683, v593, 0xABuLL);

    sub_1B211E17C(v541, v580, &qword_1EB7A13A0, &qword_1B2257E38);
    sub_1B21818BC(&v594[1], v580);
    sub_1B21A3AA8(v683, v342, *(&v342 + 1));

    sub_1B2122400(v541, &qword_1EB7A13A0, &qword_1B2257E38);
    sub_1B2137224(v553);
    sub_1B21356F8(v567);
    sub_1B2122400(v594, &qword_1EB7A13C8, &qword_1B2257E68);
    memcpy(v599, v527, 0xA2uLL);
    v44 = v421;
LABEL_48:
    memcpy(v682, v599, sizeof(v682));
    v1 = 0;
    v67 = sub_1B2199E98();
    v435 = 0;
    v68 = *(v57 + 16);
    if (v68)
    {
      v593[0] = v56;
      sub_1B2116B10(0, v68, 0, v63, v64, v65, v66);
      v69 = v593[0];
      v70 = (v57 + 40);
      do
      {
        v1 = *(v70 - 1);
        v71 = *v70;
        *&v594[0] = 0x5F62647267;
        *(&v594[0] + 1) = 0xE500000000000000;

        MEMORY[0x1B2741EB0](v1, v71);

        v76 = v594[0];
        v593[0] = v69;
        v78 = *(v69 + 16);
        v77 = *(v69 + 24);
        if (v78 >= v77 >> 1)
        {
          sub_1B2116B10(v77 > 1, v78 + 1, 1, v72, v73, v74, v75);
          v69 = v593[0];
        }

        *(v69 + 16) = v78 + 1;
        *(v69 + 16 * v78 + 32) = v76;
        v70 += 2;
        --v68;
      }

      while (v68);

      v56 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      v69 = v56;
    }

    v433 = v432 + 1;
    v79 = sub_1B218016C(v69, v67);

    v5 = sub_1B2180290(v44);

    v80 = 0;
    v446 = *(v5 + 16);
    v444 = *(v434 + 16);
    v439 = (v5 + 32);
    v451 = v79;
    while (1)
    {
      if (v443)
      {
        v85 = MEMORY[0x1B27427E0](v80, v441);
      }

      else
      {
        if (v80 >= *(v437 + 16))
        {
          goto LABEL_246;
        }

        v85 = *(v436 + 8 * v80);
      }

      v86 = __OFADD__(v80, 1);
      v87 = (v80 + 1);
      if (v86)
      {
        break;
      }

      v817 = v87;
      v88 = v446;
      if (v446)
      {
        v593[0] = v56;
        sub_1B2114114(0, v446, 0, v81, v82, v83, v84);
        v89 = v593[0];
        v90 = v439;
        do
        {
          v91 = *v90++;
          v92 = v85[5];
          v93 = v85[6];
          sub_1B21139A0(v85 + 2, v92);
          (*(v93 + 48))(v594, v91, v92, v93);
          v98 = v594[0];
          v99 = v594[1];
          v593[0] = v89;
          v101 = *(v89 + 16);
          v100 = *(v89 + 24);
          if (v101 >= v100 >> 1)
          {
            v448 = v594[0];
            sub_1B2114114(v100 > 1, v101 + 1, 1, v94, v95, v96, v97);
            v98 = v448;
            v89 = v593[0];
          }

          *(v89 + 16) = v101 + 1;
          v102 = v89 + 24 * v101;
          *(v102 + 32) = v98;
          *(v102 + 48) = v99;
          --v88;
        }

        while (v88);
        v56 = MEMORY[0x1E69E7CC0];
        v79 = v451;
      }

      if (v79[2])
      {
        v103 = sub_1B2190D8C();
        v105 = v104;

        v110 = v56;
        if (v105)
        {
          v110 = *(v79[7] + 8 * v103);
        }
      }

      else
      {

        v110 = v56;
      }

      v111 = v444;
      if (v444)
      {
        v449 = v110;
        *&v594[0] = v56;
        sub_1B2116B10(0, v444, 0, v106, v107, v108, v109);
        v116 = *&v594[0];
        v117 = (v434 + 258);
        do
        {
          sub_1B2209B4C((*v117 & 1) == 0, *(v117 - 226), *(v117 - 218), *(v117 - 210), v112, v113, v114, v115);
          v120 = v119;
          v122 = v121;
          *&v594[0] = v116;
          v124 = v116[2];
          v123 = v116[3];
          if (v124 >= v123 >> 1)
          {
            sub_1B2116B10(v123 > 1, v124 + 1, 1, v118, v112, v113, v114);
            v116 = *&v594[0];
          }

          v116[2] = v124 + 1;
          v125 = &v116[2 * v124];
          v125[4] = v120;
          v125[5] = v122;
          v117 += 232;
          --v111;
        }

        while (v111);
        v56 = MEMORY[0x1E69E7CC0];
        v79 = v451;
        v110 = v449;
      }

      else
      {
        v116 = v56;
      }

      swift_beginAccess();
      v5 = (v85 + 10);
      sub_1B2243CD0(v110, v116);
      swift_endAccess();

      v80 = v817;
      if (v817 == v442)
      {

        sub_1B2122400(v599, &qword_1EB7A13A0, &qword_1B2257E38);

        v10 = v433;
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_246:
    __break(1u);
LABEL_247:
    __break(1u);
LABEL_248:
    __break(1u);
LABEL_249:
    __break(1u);
LABEL_250:
    v344 = sub_1B2252C20();
    v2 = v441;
    v7 = v344;
    if (!v344)
    {
      return;
    }
  }

  v393 = v127;
  if (!*(v411 + 16))
  {
    goto LABEL_257;
  }

  v391 = v129;
  v392 = v131;
  v390 = v130;
  v132 = (v130 + 16 * v128);
  v133 = *v132;
  v134 = v132[1];
  v135 = v128;

  v136 = sub_1B211E590();
  if ((v137 & 1) == 0)
  {
    goto LABEL_258;
  }

  v138 = (*(v411 + 56) + 216 * v136);
  memcpy(v591, v138, 0xD2uLL);
  memcpy(v580, v138, 0xD2uLL);
  memmove(v592, v138, 0xD2uLL);
  v593[0] = v133;
  v593[1] = v134;
  memcpy(&v593[2], v580, 0xD2uLL);

  sub_1B2181728(v591, v579);
  sub_1B2181728(v592, v579);
  sub_1B2122400(v593, &qword_1EB7A13A8, &qword_1B2257E40);
  memcpy(&v594[1], v592, 0xD2uLL);
  *&v594[0] = v133;
  *(&v594[0] + 1) = v134;
  v387 = v135 + 1;
  memcpy(v590, v592, sizeof(v590));
  v139 = *(&v594[9] + 1);
  v587 = *(&v592[76] + 1);
  v588 = *(&v592[84] + 1);
  v589[0] = *(&v592[92] + 1);
  *(v589 + 9) = *&v592[97];
  memcpy(v804, &v592[24], sizeof(v804));
  v805 = *(&v594[9] + 1);
  v389 = *&v594[10];
  v806 = *&v594[10];
  v388 = BYTE8(v594[10]);
  v807 = BYTE8(v594[10]);
  v808 = *(&v592[76] + 1);
  v809 = *(&v592[84] + 1);
  *v810 = *(&v592[92] + 1);
  *&v810[9] = *&v592[97];
  sub_1B2181728(&v594[1], v580);
  sub_1B21C3B0C(v56, v608);
  memcpy(v586, v608, sizeof(v586));
  v583 = v611;
  v584 = v612;
  v585[0] = *v613;
  *(v585 + 9) = *&v613[9];
  v140 = v805;
  v141 = v806;
  sub_1B2136148(v608, v580);
  v404 = sub_1B2252190();
  v142 = 0;
  v143 = *(v140 + 16);
  v144 = v140 + 32;
  v145 = v56;
  while (1)
  {
    if (v142 == v143)
    {
      sub_1B2137224(v608);
      v325 = v594[0];
      v665 = v610;
      v664 = v609;
      sub_1B2122400(&v664, &qword_1EB7A0DA0, &qword_1B2254340);
      sub_1B2122400(&v665, &qword_1EB7A13B8, &qword_1B2257E58);
      memcpy(v579, &v590[48], 0x58uLL);
      v579[11] = v139;
      v579[12] = v389;
      LOBYTE(v579[13]) = v388;
      *(&v579[13] + 1) = v587;
      *(&v579[15] + 1) = v588;
      *(&v579[17] + 1) = v589[0];
      *(&v579[18] + 2) = *(v589 + 9);
      sub_1B2137224(v579);
      memcpy(&v590[48], v586, 0x58uLL);
      v587 = v583;
      v588 = v584;
      v589[0] = v585[0];
      *(v589 + 9) = *(v585 + 9);
      memcpy(v684, v590, sizeof(v684));
      v685 = v145;
      v686 = v404;
      v687 = 0;
      v688 = v583;
      v689 = v584;
      *v690 = v585[0];
      *&v690[9] = *(v585 + 9);
      sub_1B2181728(v684, v580);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v580[0] = v393;
      v326 = sub_1B211E590();
      if (__OFADD__(*(v393 + 16), (v327 & 1) == 0))
      {
        goto LABEL_271;
      }

      v313 = v326;
      v328 = v327;
      sub_1B21619D8(&qword_1EB7A13C0, &qword_1B2257E60);
      if (sub_1B2252E70())
      {
        v329 = sub_1B211E590();
        v56 = MEMORY[0x1E69E7CC0];
        if ((v328 & 1) != (v330 & 1))
        {
LABEL_288:
          sub_1B2253390();
          __break(1u);
LABEL_289:
          sub_1B21817F0(v684, *(isUniquelyReferenced_nonNull_native + 56) + 216 * v313);
          goto LABEL_276;
        }

        v313 = v329;
      }

      else
      {
        v56 = MEMORY[0x1E69E7CC0];
      }

      isUniquelyReferenced_nonNull_native = v580[0];
      if (v328)
      {
        goto LABEL_289;
      }

      sub_1B21CC064(v313, v325, *(&v325 + 1), v684, v580[0]);
      swift_bridgeObjectRetain_n();
      v131 = v392;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B214400C();
        v131 = v332;
      }

      v331 = *(v131 + 16);
      if (v331 >= *(v131 + 24) >> 1)
      {
        sub_1B214400C();
        v131 = v333;
      }

      *(v131 + 16) = v331 + 1;
      *(v131 + 16 * v331 + 32) = v325;
      sub_1B218179C(v684);
      sub_1B2122400(v594, &qword_1EB7A13A8, &qword_1B2257E40);
      v16 = v427;
      v128 = v387;
      v130 = v390;
      v129 = v391;
      v127 = isUniquelyReferenced_nonNull_native;
      goto LABEL_82;
    }

    if (!*(v141 + 16))
    {
      goto LABEL_259;
    }

    v385 = v145;
    v386 = v139;
    v146 = (v144 + 16 * v142);
    v147 = *v146;
    v148 = v146[1];

    v149 = sub_1B211E590();
    if ((v150 & 1) == 0)
    {
      goto LABEL_260;
    }

    v378 = v144;
    v379 = v143;
    v381 = v141;
    v151 = (*(v141 + 56) + 216 * v149);
    memcpy(v577, v151, 0xD2uLL);
    memcpy(v567, v151, 0xD2uLL);
    memmove(v578, v151, 0xD2uLL);
    v579[0] = v147;
    v579[1] = v148;
    memcpy(&v579[2], v567, 0xD2uLL);

    sub_1B2181728(v577, v566);
    sub_1B2181728(v578, v566);
    sub_1B2122400(v579, &qword_1EB7A13A8, &qword_1B2257E40);
    memcpy(&v580[2], v578, 0xD2uLL);
    v580[0] = v147;
    v580[1] = v148;
    v380 = v142 + 1;
    memcpy(v576, v578, sizeof(v576));
    v573 = *&v578[153];
    v574 = *&v578[169];
    v575[0] = *&v578[185];
    *(v575 + 9) = *&v578[194];
    memcpy(v581, &v578[48], 0x58uLL);
    v383 = v580[20];
    v384 = v580[19];
    v581[11] = v580[19];
    v581[12] = v580[20];
    v382 = v580[21];
    LOBYTE(v581[13]) = v580[21];
    *(&v581[13] + 1) = *&v578[153];
    *(&v581[15] + 1) = *&v578[169];
    *(&v581[17] + 1) = *&v578[185];
    *(&v581[18] + 2) = *&v578[194];
    v152 = swift_allocObject();
    *(v152 + 16) = v56;
    *v554 = *&v578[48];
    *&v554[16] = *&v578[64];
    memcpy(v566, &v581[5], 0x7AuLL);
    v153 = swift_allocObject();
    *(v153 + 16) = sub_1B214D354;
    *(v153 + 24) = v152;
    sub_1B2181728(&v580[2], v567);
    sub_1B2136148(v581, v567);

    v582[0] = *v554;
    *&v582[1] = *&v554[16];
    *(&v582[1] + 1) = sub_1B2181B04;
    *&v582[2] = v153;
    memcpy(&v582[2] + 8, v566, 0x7AuLL);
    memcpy(v572, v582, sizeof(v572));
    v569 = *(&v582[6] + 9);
    v570 = *(&v582[7] + 9);
    v571[0] = *(&v582[8] + 9);
    *(v571 + 9) = *(&v582[9] + 2);
    v154 = v581[11];
    v410 = v581[12];
    sub_1B2136148(v582, v567);
    v155 = 0;
    v568 = sub_1B2252190();
    v156 = *(v154 + 16);
    v157 = v154 + 32;
    v158 = v56;
LABEL_90:
    if (v155 != v156)
    {
      break;
    }

    sub_1B2137224(v582);
    v307 = v580[0];
    v308 = v580[1];

    v309 = v568;
    memcpy(v554, &v576[48], 0x58uLL);
    *&v554[88] = v384;
    *&v554[96] = v383;
    v554[104] = v382;
    *&v554[105] = v573;
    *&v554[121] = v574;
    *&v554[137] = v575[0];
    *&v554[146] = *(v575 + 9);
    sub_1B2137224(v554);
    memcpy(&v576[48], v572, 0x58uLL);
    v573 = v569;
    v574 = v570;
    v575[0] = v571[0];
    *(v575 + 9) = *(v571 + 9);
    memcpy(v567, v576, 0x88uLL);
    v567[17] = v158;
    v567[18] = v309;
    LOBYTE(v567[19]) = 0;
    *(&v567[19] + 1) = v569;
    *(&v567[21] + 1) = v570;
    *(&v567[23] + 1) = v571[0];
    *(&v567[24] + 2) = *(v571 + 9);
    sub_1B2181728(v567, v566);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v553[0] = v404;
    v311 = sub_1B211E590();
    if (__OFADD__(*(v404 + 16), (v312 & 1) == 0))
    {
      goto LABEL_272;
    }

    v313 = v311;
    v314 = v312;
    sub_1B21619D8(&qword_1EB7A13C0, &qword_1B2257E60);
    if (sub_1B2252E70())
    {
      v315 = sub_1B211E590();
      v56 = MEMORY[0x1E69E7CC0];
      if ((v314 & 1) != (v316 & 1))
      {
        goto LABEL_288;
      }

      v313 = v315;
    }

    else
    {
      v56 = MEMORY[0x1E69E7CC0];
    }

    if (v314)
    {
      v346 = (*(v553[0] + 56) + 216 * v313);
      memcpy(v566, v346, 0xD2uLL);
      memcpy(v346, v567, 0xD2uLL);
      sub_1B218179C(v566);
      goto LABEL_276;
    }

    v317 = v553[0];
    *(v553[0] + 8 * (v313 >> 6) + 64) |= 1 << v313;
    v318 = (v317[6] + 16 * v313);
    *v318 = v307;
    v318[1] = v308;
    memcpy((v317[7] + 216 * v313), v567, 0xD2uLL);
    v319 = v317[2];
    v86 = __OFADD__(v319, 1);
    v320 = v319 + 1;
    if (v86)
    {
      goto LABEL_273;
    }

    v317[2] = v320;
    swift_bridgeObjectRetain_n();
    v145 = v385;
    v139 = v386;
    v404 = v317;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B214400C();
      v145 = v323;
    }

    v321 = *(v145 + 16);
    if (v321 >= *(v145 + 24) >> 1)
    {
      sub_1B214400C();
      v145 = v324;
    }

    *(v145 + 16) = v321 + 1;
    v322 = v145 + 16 * v321;
    *(v322 + 32) = v307;
    *(v322 + 40) = v308;
    sub_1B218179C(v567);
    sub_1B2122400(v580, &qword_1EB7A13A8, &qword_1B2257E40);
    v142 = v380;
    v141 = v381;
    v144 = v378;
    v143 = v379;
  }

  if (!*(v410 + 16))
  {
    goto LABEL_261;
  }

  v376 = v156;
  v377 = v158;
  v159 = (v157 + 16 * v155);
  v160 = *v159;
  v161 = v159[1];

  v162 = sub_1B211E590();
  if ((v163 & 1) == 0)
  {
    goto LABEL_262;
  }

  v374 = v157;
  v164 = (*(v410 + 56) + 216 * v162);
  memcpy(v564, v164, 0xD2uLL);
  memcpy(v554, v164, 0xD2uLL);
  memmove(v565, v164, 0xD2uLL);
  v566[0] = v160;
  v566[1] = v161;
  memcpy(&v566[2], v554, 0xD2uLL);

  sub_1B2181728(v564, v553);
  sub_1B2181728(v565, v553);
  sub_1B2122400(v566, &qword_1EB7A13A8, &qword_1B2257E40);
  memcpy(&v567[2], v565, 0xD2uLL);
  v567[0] = v160;
  v567[1] = v161;
  v375 = v155 + 1;
  memcpy(v563, v565, sizeof(v563));
  v560 = *(&v565[76] + 1);
  v561 = *(&v565[84] + 1);
  v562[0] = *(&v565[92] + 1);
  *(v562 + 9) = *&v565[97];
  memcpy(v797, &v565[24], sizeof(v797));
  v372 = v567[20];
  v373 = v567[19];
  v798 = v567[19];
  v799 = v567[20];
  v371 = v567[21];
  v800 = v567[21];
  v801 = *(&v565[76] + 1);
  v802 = *(&v565[84] + 1);
  *v803 = *(&v565[92] + 1);
  *&v803[9] = *&v565[97];
  sub_1B2181728(&v567[2], v554);
  sub_1B21C3B0C(v56, v614);
  memcpy(v559, v614, sizeof(v559));
  v556 = v617;
  v557 = v618;
  v558[0] = *v619;
  *(v558 + 9) = *&v619[9];
  v165 = v798;
  v409 = v799;
  sub_1B2136148(v614, v554);
  v166 = 0;
  v555 = sub_1B2252190();
  v167 = *(v165 + 16);
  v168 = v165 + 32;
  v399 = v56;
  while (1)
  {
    if (v166 == v167)
    {
      sub_1B2137224(v614);
      v300 = v567[0];
      v301 = v567[1];
      v667 = v616;
      v666 = v615;
      sub_1B2122400(&v666, &qword_1EB7A0DA0, &qword_1B2254340);
      sub_1B2122400(&v667, &qword_1EB7A13B8, &qword_1B2257E58);
      v302 = v555;
      memcpy(v527, &v563[48], 0x58uLL);
      v527[11] = v373;
      v527[12] = v372;
      LOBYTE(v527[13]) = v371;
      *(&v527[13] + 1) = v560;
      *(&v527[15] + 1) = v561;
      *(&v527[17] + 1) = v562[0];
      *(&v527[18] + 2) = *(v562 + 9);
      sub_1B2137224(v527);
      memcpy(&v563[48], v559, 0x58uLL);
      v560 = v556;
      v561 = v557;
      v562[0] = v558[0];
      *(v562 + 9) = *(v558 + 9);
      memcpy(v691, v563, sizeof(v691));
      v692 = v399;
      v693 = v302;
      v694 = 0;
      v695 = v556;
      v696 = v557;
      *v697 = v558[0];
      *&v697[9] = *(v558 + 9);
      sub_1B2181728(v691, v554);
      sub_1B21C77F4();
      memcpy(v553, v540, 0xD2uLL);
      memcpy(v554, v540, 0xD2uLL);
      if (sub_1B2181784(v554) == 1)
      {
        memcpy(v528, v540, 0xD2uLL);
        sub_1B2122400(v528, &qword_1EB7A13B0, &unk_1B2257E48);

        v158 = v377;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B214400C();
          v158 = v305;
        }

        v303 = *(v158 + 16);
        if (v303 >= *(v158 + 24) >> 1)
        {
          sub_1B214400C();
          v158 = v306;
        }

        *(v158 + 16) = v303 + 1;
        v304 = v158 + 16 * v303;
        *(v304 + 32) = v300;
        *(v304 + 40) = v301;
        memcpy(v541, v553, 0xD2uLL);
      }

      else
      {
        memcpy(v541, v540, 0xD2uLL);
        v158 = v377;
      }

      v157 = v374;
      memcpy(v540, v541, 0xD2uLL);
      if (sub_1B2181784(v540) != 1)
      {
        v345 = v541;
        goto LABEL_275;
      }

      sub_1B218179C(v691);
      sub_1B2122400(v567, &qword_1EB7A13A8, &qword_1B2257E40);
      v155 = v375;
      v156 = v376;
      goto LABEL_90;
    }

    if (!*(v409 + 16))
    {
      goto LABEL_263;
    }

    v370 = v167;
    v169 = (v168 + 16 * v166);
    v170 = *v169;
    v171 = v169[1];

    v172 = sub_1B211E590();
    if ((v173 & 1) == 0)
    {
      goto LABEL_264;
    }

    v368 = v168;
    v174 = (*(v409 + 56) + 216 * v172);
    memcpy(v551, v174, 0xD2uLL);
    memcpy(v541, v174, 0xD2uLL);
    memmove(v552, v174, 0xD2uLL);
    v553[0] = v170;
    v553[1] = v171;
    memcpy(&v553[2], v541, 0xD2uLL);

    sub_1B2181728(v551, v540);
    sub_1B2181728(v552, v540);
    sub_1B2122400(v553, &qword_1EB7A13A8, &qword_1B2257E40);
    memcpy(&v554[16], v552, 0xD2uLL);
    *v554 = v170;
    *&v554[8] = v171;
    v369 = v166 + 1;
    memcpy(v550, v552, sizeof(v550));
    v547 = *(&v552[76] + 1);
    v548 = *(&v552[84] + 1);
    v549[0] = *(&v552[92] + 1);
    *(v549 + 9) = *&v552[97];
    memcpy(v790, &v552[24], sizeof(v790));
    v366 = *&v554[160];
    v367 = *&v554[152];
    v791 = *&v554[152];
    v792 = *&v554[160];
    v365 = v554[168];
    v793 = v554[168];
    v794 = *(&v552[76] + 1);
    v795 = *(&v552[84] + 1);
    *v796 = *(&v552[92] + 1);
    *&v796[9] = *&v552[97];
    sub_1B2181728(&v554[16], v541);
    sub_1B21C3B0C(v56, v620);
    memcpy(v546, v620, sizeof(v546));
    v543 = v623;
    v544 = v624;
    v545[0] = *v625;
    *(v545 + 9) = *&v625[9];
    v175 = v791;
    v408 = v792;
    sub_1B2136148(v620, v541);
    v176 = 0;
    v542 = sub_1B2252190();
    v177 = *(v175 + 16);
    v178 = v175 + 32;
    v398 = v56;
LABEL_98:
    if (v176 != v177)
    {
      break;
    }

    sub_1B2137224(v620);
    v294 = *v554;
    v669 = v622;
    v668 = v621;
    sub_1B2122400(&v668, &qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B2122400(&v669, &qword_1EB7A13B8, &qword_1B2257E58);
    v295 = v542;
    memcpy(v514, &v550[48], 0x58uLL);
    v514[11] = v367;
    v514[12] = v366;
    LOBYTE(v514[13]) = v365;
    *(&v514[13] + 1) = v547;
    *(&v514[15] + 1) = v548;
    *(&v514[17] + 1) = v549[0];
    *(&v514[18] + 2) = *(v549 + 9);
    sub_1B2137224(v514);
    memcpy(&v550[48], v546, 0x58uLL);
    v547 = v543;
    v548 = v544;
    v549[0] = v545[0];
    *(v549 + 9) = *(v545 + 9);
    memcpy(v698, v550, sizeof(v698));
    v699 = v398;
    v700 = v295;
    v701 = 0;
    v702 = v543;
    v703 = v544;
    *v704 = v545[0];
    *&v704[9] = *(v545 + 9);
    sub_1B2181728(v698, v541);
    sub_1B21C77F4();
    memcpy(v540, v527, 0xD2uLL);
    memcpy(v541, v527, 0xD2uLL);
    if (sub_1B2181784(v541) == 1)
    {
      memcpy(v515, v527, 0xD2uLL);
      sub_1B2122400(v515, &qword_1EB7A13B0, &unk_1B2257E48);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B214400C();
        v399 = v298;
      }

      v296 = *(v399 + 16);
      if (v296 >= *(v399 + 24) >> 1)
      {
        sub_1B214400C();
        v399 = v299;
      }

      *(v399 + 16) = v296 + 1;
      *(v399 + 16 * v296 + 32) = v294;
      v297 = v540;
    }

    else
    {
      v297 = v527;
    }

    memcpy(v528, v297, 0xD2uLL);
    v168 = v368;
    memcpy(v527, v528, 0xD2uLL);
    if (sub_1B2181784(v527) != 1)
    {
      v345 = v528;
      goto LABEL_275;
    }

    sub_1B218179C(v698);
    sub_1B2122400(v554, &qword_1EB7A13A8, &qword_1B2257E40);
    v166 = v369;
    v167 = v370;
  }

  if (!*(v408 + 16))
  {
    goto LABEL_265;
  }

  v364 = v177;
  v179 = (v178 + 16 * v176);
  v180 = *v179;
  v181 = v179[1];

  v182 = sub_1B211E590();
  if ((v183 & 1) == 0)
  {
    goto LABEL_266;
  }

  v363 = v178;
  v184 = (*(v408 + 56) + 216 * v182);
  memcpy(v538, v184, 0xD2uLL);
  memcpy(v528, v184, 0xD2uLL);
  memmove(v539, v184, 0xD2uLL);
  *v540 = v180;
  *&v540[8] = v181;
  memcpy(&v540[16], v528, 0xD2uLL);

  sub_1B2181728(v538, v527);
  sub_1B2181728(v539, v527);
  sub_1B2122400(v540, &qword_1EB7A13A8, &qword_1B2257E40);
  memcpy(&v541[2], v539, 0xD2uLL);
  v541[0] = v180;
  v541[1] = v181;
  v362 = v176 + 1;
  memcpy(v537, v539, sizeof(v537));
  v534 = *(&v539[76] + 1);
  v535 = *(&v539[84] + 1);
  v536[0] = *(&v539[92] + 1);
  *(v536 + 9) = *&v539[97];
  memcpy(v783, &v539[24], sizeof(v783));
  v360 = v541[20];
  v361 = v541[19];
  v784 = v541[19];
  v785 = v541[20];
  v359 = v541[21];
  v786 = v541[21];
  v787 = *(&v539[76] + 1);
  v788 = *(&v539[84] + 1);
  *v789 = *(&v539[92] + 1);
  *&v789[9] = *&v539[97];
  sub_1B2181728(&v541[2], v528);
  sub_1B21C3B0C(v56, v626);
  memcpy(v533, v626, sizeof(v533));
  v530 = v629;
  v531 = v630;
  v532[0] = *v631;
  *(v532 + 9) = *&v631[9];
  v185 = v784;
  v407 = v785;
  sub_1B2136148(v626, v528);
  v186 = 0;
  v529 = sub_1B2252190();
  v187 = *(v185 + 16);
  v188 = v185 + 32;
  v396 = v56;
  while (1)
  {
    if (v186 == v187)
    {
      sub_1B2137224(v626);
      v286 = v541[0];
      v287 = v541[1];
      v671 = v628;
      v670 = v627;
      sub_1B2122400(&v670, &qword_1EB7A0DA0, &qword_1B2254340);
      sub_1B2122400(&v671, &qword_1EB7A13B8, &qword_1B2257E58);
      v288 = v529;
      memcpy(v501, &v537[48], 0x58uLL);
      v501[11] = v361;
      v501[12] = v360;
      LOBYTE(v501[13]) = v359;
      *(&v501[13] + 1) = v534;
      *(&v501[15] + 1) = v535;
      *(&v501[17] + 1) = v536[0];
      *(&v501[18] + 2) = *(v536 + 9);
      sub_1B2137224(v501);
      memcpy(&v537[48], v533, 0x58uLL);
      v534 = v530;
      v535 = v531;
      v536[0] = v532[0];
      *(v536 + 9) = *(v532 + 9);
      memcpy(v705, v537, sizeof(v705));
      v706 = v396;
      v707 = v288;
      v708 = 0;
      v709 = v530;
      v710 = v531;
      *v711 = v532[0];
      *&v711[9] = *(v532 + 9);
      sub_1B2181728(v705, v528);
      sub_1B21C77F4();
      memcpy(v527, v514, 0xD2uLL);
      memcpy(v528, v514, 0xD2uLL);
      if (sub_1B2181784(v528) == 1)
      {
        memcpy(v502, v514, 0xD2uLL);
        sub_1B2122400(v502, &qword_1EB7A13B0, &unk_1B2257E48);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B214400C();
          v398 = v292;
        }

        v289 = *(v398 + 16);
        if (v289 >= *(v398 + 24) >> 1)
        {
          sub_1B214400C();
          v398 = v293;
        }

        *(v398 + 16) = v289 + 1;
        v290 = v398 + 16 * v289;
        *(v290 + 32) = v286;
        *(v290 + 40) = v287;
        v291 = v527;
      }

      else
      {
        v291 = v514;
      }

      memcpy(v515, v291, 0xD2uLL);
      v178 = v363;
      memcpy(v514, v515, 0xD2uLL);
      if (sub_1B2181784(v514) != 1)
      {
        v345 = v515;
        goto LABEL_275;
      }

      sub_1B218179C(v705);
      sub_1B2122400(v541, &qword_1EB7A13A8, &qword_1B2257E40);
      v176 = v362;
      v177 = v364;
      goto LABEL_98;
    }

    if (!*(v407 + 16))
    {
      goto LABEL_267;
    }

    v352 = v187;
    v189 = (v188 + 16 * v186);
    v190 = *v189;
    v191 = v189[1];

    v192 = sub_1B211E590();
    if ((v193 & 1) == 0)
    {
      goto LABEL_269;
    }

    v350 = v188;
    v194 = (*(v407 + 56) + 216 * v192);
    memcpy(v525, v194, 0xD2uLL);
    memcpy(v515, v194, 0xD2uLL);
    memmove(v526, v194, 0xD2uLL);
    v527[0] = v190;
    v527[1] = v191;
    memcpy(&v527[2], v515, 0xD2uLL);

    sub_1B2181728(v525, v514);
    sub_1B2181728(v526, v514);
    sub_1B2122400(v527, &qword_1EB7A13A8, &qword_1B2257E40);
    memcpy(&v528[2], v526, 0xD2uLL);
    v528[0] = v190;
    v528[1] = v191;
    v351 = v186 + 1;
    memcpy(v524, v526, sizeof(v524));
    v521 = *(&v526[76] + 1);
    v522 = *(&v526[84] + 1);
    v523[0] = *(&v526[92] + 1);
    *(v523 + 9) = *&v526[97];
    memcpy(v776, &v526[24], sizeof(v776));
    v348 = v528[20];
    v349 = v528[19];
    v777 = v528[19];
    v778 = v528[20];
    v347 = v528[21];
    v779 = v528[21];
    v780 = *(&v526[76] + 1);
    v781 = *(&v526[84] + 1);
    *v782 = *(&v526[92] + 1);
    *&v782[9] = *&v526[97];
    sub_1B2181728(&v528[2], v515);
    sub_1B21C3B0C(v56, v632);
    memcpy(v520, v632, sizeof(v520));
    v517 = v635;
    v518 = v636;
    v519[0] = *v637;
    *(v519 + 9) = *&v637[9];
    v195 = v777;
    v406 = v778;
    sub_1B2136148(v632, v515);
    v196 = 0;
    v516 = sub_1B2252190();
    v197 = *(v195 + 16);
    v198 = v195 + 32;
    v397 = v56;
    v358 = v197;
LABEL_106:
    if (v196 != v197)
    {
      break;
    }

    sub_1B2137224(v632);
    v278 = v528[0];
    v279 = v528[1];
    v673 = v634;
    v672 = v633;
    sub_1B2122400(&v672, &qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B2122400(&v673, &qword_1EB7A13B8, &qword_1B2257E58);
    v280 = v516;
    memcpy(v488, &v524[48], 0x58uLL);
    v488[11] = v349;
    v488[12] = v348;
    LOBYTE(v488[13]) = v347;
    *(&v488[13] + 1) = v521;
    *(&v488[15] + 1) = v522;
    *(&v488[17] + 1) = v523[0];
    *(&v488[18] + 2) = *(v523 + 9);
    sub_1B2137224(v488);
    memcpy(&v524[48], v520, 0x58uLL);
    v521 = v517;
    v522 = v518;
    v523[0] = v519[0];
    *(v523 + 9) = *(v519 + 9);
    memcpy(v712, v524, sizeof(v712));
    v713 = v397;
    v714 = v280;
    v715 = 0;
    v716 = v517;
    v717 = v518;
    *v718 = v519[0];
    *&v718[9] = *(v519 + 9);
    sub_1B2181728(v712, v515);
    sub_1B21C77F4();
    memcpy(v514, v501, 0xD2uLL);
    memcpy(v515, v501, 0xD2uLL);
    if (sub_1B2181784(v515) == 1)
    {
      memcpy(v489, v501, 0xD2uLL);
      sub_1B2122400(v489, &qword_1EB7A13B0, &unk_1B2257E48);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B214400C();
        v396 = v284;
      }

      v281 = *(v396 + 16);
      if (v281 >= *(v396 + 24) >> 1)
      {
        sub_1B214400C();
        v396 = v285;
      }

      *(v396 + 16) = v281 + 1;
      v282 = v396 + 16 * v281;
      *(v282 + 32) = v278;
      *(v282 + 40) = v279;
      v283 = v514;
    }

    else
    {
      v283 = v501;
    }

    memcpy(v502, v283, 0xD2uLL);
    v188 = v350;
    memcpy(v501, v502, 0xD2uLL);
    if (sub_1B2181784(v501) != 1)
    {
      v345 = v502;
      goto LABEL_275;
    }

    sub_1B218179C(v712);
    sub_1B2122400(v528, &qword_1EB7A13A8, &qword_1B2257E40);
    v186 = v351;
    v187 = v352;
  }

  if (!*(v406 + 16))
  {
    goto LABEL_268;
  }

  v199 = (v198 + 16 * v196);
  v200 = *v199;
  v201 = v199[1];

  v202 = sub_1B211E590();
  if ((v203 & 1) == 0)
  {
    goto LABEL_270;
  }

  v356 = v198;
  v204 = (*(v406 + 56) + 216 * v202);
  memcpy(v512, v204, 0xD2uLL);
  memcpy(v502, v204, 0xD2uLL);
  memmove(v513, v204, 0xD2uLL);
  v514[0] = v200;
  v514[1] = v201;
  memcpy(&v514[2], v502, 0xD2uLL);

  sub_1B2181728(v512, v501);
  sub_1B2181728(v513, v501);
  sub_1B2122400(v514, &qword_1EB7A13A8, &qword_1B2257E40);
  memcpy(&v515[2], v513, 0xD2uLL);
  v515[0] = v200;
  v515[1] = v201;
  v357 = v196 + 1;
  memcpy(v511, v513, sizeof(v511));
  v508 = *(&v513[76] + 1);
  v509 = *(&v513[84] + 1);
  v510[0] = *(&v513[92] + 1);
  *(v510 + 9) = *&v513[97];
  memcpy(v769, &v513[24], sizeof(v769));
  v354 = v515[20];
  v355 = v515[19];
  v770 = v515[19];
  v771 = v515[20];
  v353 = v515[21];
  v772 = v515[21];
  v773 = *(&v513[76] + 1);
  v774 = *(&v513[84] + 1);
  *v775 = *(&v513[92] + 1);
  *&v775[9] = *&v513[97];
  sub_1B2181728(&v515[2], v502);
  sub_1B21C3B0C(v56, v638);
  memcpy(v507, v638, sizeof(v507));
  v504 = v641;
  v505 = v642;
  v506[0] = *v643;
  *(v506 + 9) = *&v643[9];
  v205 = v770;
  v412 = v771;
  sub_1B2136148(v638, v502);
  v206 = 0;
  v503 = sub_1B2252190();
  v207 = *(v205 + 16);
  v208 = v205 + 32;
  v405 = v56;
  v394 = v208;
  for (i = v207; ; v207 = i)
  {
    if (v206 == v207)
    {
      sub_1B2137224(v638);
      v270 = v515[0];
      v271 = v515[1];
      v675 = v640;
      v674 = v639;
      sub_1B2122400(&v674, &qword_1EB7A0DA0, &qword_1B2254340);
      sub_1B2122400(&v675, &qword_1EB7A13B8, &qword_1B2257E58);
      v272 = v503;
      memcpy(v475, &v511[48], 0x58uLL);
      v475[11] = v355;
      v475[12] = v354;
      LOBYTE(v475[13]) = v353;
      *(&v475[13] + 1) = v508;
      *(&v475[15] + 1) = v509;
      *(&v475[17] + 1) = v510[0];
      *(&v475[18] + 2) = *(v510 + 9);
      sub_1B2137224(v475);
      memcpy(&v511[48], v507, 0x58uLL);
      v508 = v504;
      v509 = v505;
      v510[0] = v506[0];
      *(v510 + 9) = *(v506 + 9);
      memcpy(v719, v511, sizeof(v719));
      v720 = v405;
      v721 = v272;
      v722 = 0;
      v723 = v504;
      v724 = v505;
      *v725 = v506[0];
      *&v725[9] = *(v506 + 9);
      sub_1B2181728(v719, v502);
      sub_1B21C77F4();
      memcpy(v501, v488, 0xD2uLL);
      memcpy(v502, v488, 0xD2uLL);
      if (sub_1B2181784(v502) == 1)
      {
        memcpy(v476, v488, 0xD2uLL);
        sub_1B2122400(v476, &qword_1EB7A13B0, &unk_1B2257E48);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B214400C();
          v397 = v276;
        }

        v273 = *(v397 + 16);
        if (v273 >= *(v397 + 24) >> 1)
        {
          sub_1B214400C();
          v397 = v277;
        }

        *(v397 + 16) = v273 + 1;
        v274 = v397 + 16 * v273;
        *(v274 + 32) = v270;
        *(v274 + 40) = v271;
        v275 = v501;
      }

      else
      {
        v275 = v488;
      }

      memcpy(v489, v275, 0xD2uLL);
      v198 = v356;
      memcpy(v488, v489, 0xD2uLL);
      if (sub_1B2181784(v488) != 1)
      {
        v345 = v489;
        goto LABEL_275;
      }

      sub_1B218179C(v719);
      sub_1B2122400(v515, &qword_1EB7A13A8, &qword_1B2257E40);
      v196 = v357;
      v197 = v358;
      goto LABEL_106;
    }

    if (!*(v412 + 16))
    {
      __break(1u);
LABEL_256:
      __break(1u);
LABEL_257:
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
      __break(1u);
LABEL_265:
      __break(1u);
LABEL_266:
      __break(1u);
LABEL_267:
      __break(1u);
LABEL_268:
      __break(1u);
LABEL_269:
      __break(1u);
LABEL_270:
      __break(1u);
LABEL_271:
      __break(1u);
LABEL_272:
      __break(1u);
LABEL_273:
      __break(1u);
      sub_1B2122400(__src, &qword_1EB7A13A8, &qword_1B2257E40);

      __break(1u);
LABEL_274:
      v345 = v455;
      goto LABEL_275;
    }

    v209 = (v208 + 16 * v206);
    v210 = *v209;
    v211 = v209[1];

    v212 = sub_1B211E590();
    if ((v213 & 1) == 0)
    {
      goto LABEL_256;
    }

    v214 = (*(v412 + 56) + 216 * v212);
    memcpy(v499, v214, 0xD2uLL);
    memcpy(v489, v214, 0xD2uLL);
    memmove(v500, v214, 0xD2uLL);
    v501[0] = v210;
    v501[1] = v211;
    memcpy(&v501[2], v489, 0xD2uLL);

    sub_1B2181728(v499, v488);
    sub_1B2181728(v500, v488);
    sub_1B2122400(v501, &qword_1EB7A13A8, &qword_1B2257E40);
    memcpy(&v502[2], v500, 0xD2uLL);
    v502[0] = v210;
    v502[1] = v211;
    v403 = v206 + 1;
    memcpy(v498, v500, sizeof(v498));
    v7 = v500;
    v495 = *(&v500[76] + 1);
    v496 = *(&v500[84] + 1);
    v497[0] = *(&v500[92] + 1);
    *(v497 + 9) = *&v500[97];
    memcpy(v762, &v500[24], sizeof(v762));
    v401 = v502[20];
    v402 = v502[19];
    v763 = v502[19];
    v764 = v502[20];
    v400 = v502[21];
    v765 = v502[21];
    v766 = *(&v500[76] + 1);
    v767 = *(&v500[84] + 1);
    *v768 = *(&v500[92] + 1);
    *&v768[9] = *&v500[97];
    sub_1B2181728(&v502[2], v489);
    sub_1B21C3B0C(v56, v644);
    memcpy(v494, v644, sizeof(v494));
    v491 = v647;
    v492 = v648;
    v493[0] = *v649;
    *(v493 + 9) = *&v649[9];
    v215 = v763;
    v420 = v764;
    sub_1B2136148(v644, v489);
    v216 = 0;
    v490 = sub_1B2252190();
    v217 = *(v215 + 16);
    v9 = v215 + 32;
    v415 = v56;
    v413 = v217;
    v414 = v9;
LABEL_114:
    if (v216 != v217)
    {
      break;
    }

    sub_1B2137224(v644);
    v262 = v502[0];
    v263 = v502[1];
    v677 = v646;
    v676 = v645;
    sub_1B2122400(&v676, &qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B2122400(&v677, &qword_1EB7A13B8, &qword_1B2257E58);
    v264 = v490;
    memcpy(v462, &v498[48], 0x58uLL);
    v462[11] = v402;
    v462[12] = v401;
    LOBYTE(v462[13]) = v400;
    *(&v462[13] + 1) = v495;
    *(&v462[15] + 1) = v496;
    *(&v462[17] + 1) = v497[0];
    *(&v462[18] + 2) = *(v497 + 9);
    sub_1B2137224(v462);
    memcpy(&v498[48], v494, 0x58uLL);
    v495 = v491;
    v496 = v492;
    v497[0] = v493[0];
    *(v497 + 9) = *(v493 + 9);
    memcpy(v726, v498, sizeof(v726));
    v727 = v415;
    v728 = v264;
    v729 = 0;
    v730 = v491;
    v731 = v492;
    *v732 = v493[0];
    *&v732[9] = *(v493 + 9);
    sub_1B2181728(v726, v489);
    sub_1B21C77F4();
    memcpy(v488, v475, 0xD2uLL);
    memcpy(v489, v475, 0xD2uLL);
    if (sub_1B2181784(v489) == 1)
    {
      memcpy(__src, v475, 0xD2uLL);
      sub_1B2122400(__src, &qword_1EB7A13B0, &unk_1B2257E48);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B214400C();
        v405 = v268;
      }

      v265 = *(v405 + 16);
      if (v265 >= *(v405 + 24) >> 1)
      {
        sub_1B214400C();
        v405 = v269;
      }

      *(v405 + 16) = v265 + 1;
      v266 = v405 + 16 * v265;
      *(v266 + 32) = v262;
      *(v266 + 40) = v263;
      v267 = v488;
    }

    else
    {
      v267 = v475;
    }

    memcpy(v476, v267, 0xD2uLL);
    v208 = v394;
    memcpy(v475, v476, 0xD2uLL);
    if (sub_1B2181784(v475) != 1)
    {
      v345 = v476;
      goto LABEL_275;
    }

    sub_1B218179C(v726);
    sub_1B2122400(v502, &qword_1EB7A13A8, &qword_1B2257E40);
    v206 = v403;
  }

  v5 = v420;
  if (!*(v420 + 16))
  {
    __break(1u);
LABEL_253:
    __break(1u);
    goto LABEL_254;
  }

  v218 = (v9 + 16 * v216);
  v7 = *v218;
  v219 = v218[1];

  v220 = sub_1B211E590();
  if ((v221 & 1) == 0)
  {
    goto LABEL_253;
  }

  v222 = (*(v420 + 56) + 216 * v220);
  memcpy(v486, v222, 0xD2uLL);
  memcpy(v476, v222, 0xD2uLL);
  memmove(v487, v222, 0xD2uLL);
  v488[0] = v7;
  v488[1] = v219;
  memcpy(&v488[2], v476, 0xD2uLL);

  sub_1B2181728(v486, v475);
  sub_1B2181728(v487, v475);
  sub_1B2122400(v488, &qword_1EB7A13A8, &qword_1B2257E40);
  memcpy(&v489[2], v487, 0xD2uLL);
  v489[0] = v7;
  v489[1] = v219;
  v419 = v216 + 1;
  memcpy(v485, v487, sizeof(v485));
  v482 = *(&v487[76] + 1);
  v483 = *(&v487[84] + 1);
  v484[0] = *(&v487[92] + 1);
  *(v484 + 9) = *&v487[97];
  memcpy(v755, &v487[24], sizeof(v755));
  v418 = v489[19];
  v756 = v489[19];
  v417 = v489[20];
  v757 = v489[20];
  v416 = v489[21];
  v758 = v489[21];
  v759 = *(&v487[76] + 1);
  v760 = *(&v487[84] + 1);
  *v761 = *(&v487[92] + 1);
  *&v761[9] = *&v487[97];
  sub_1B2181728(&v489[2], v476);
  sub_1B21C3B0C(v56, v650);
  memcpy(v481, v650, sizeof(v481));
  v478 = v653;
  v479 = v654;
  v480[0] = *v655;
  *(v480 + 9) = *&v655[9];
  v223 = v756;
  v5 = v757;
  sub_1B2136148(v650, v476);
  v224 = 0;
  v477 = sub_1B2252190();
  v440 = *(v223 + 16);
  v438 = v223 + 32;
  v445 = v56;
  v435 = v5;
  while (1)
  {
    if (v224 == v440)
    {
      sub_1B2137224(v650);
      v7 = v489[0];
      v255 = v489[1];
      v679 = v652;
      v678 = v651;
      sub_1B2122400(&v678, &qword_1EB7A0DA0, &qword_1B2254340);
      sub_1B2122400(&v679, &qword_1EB7A13B8, &qword_1B2257E58);
      v256 = v477;
      memcpy(v474, &v485[48], 0x58uLL);
      v474[11] = v418;
      v474[12] = v417;
      LOBYTE(v474[13]) = v416;
      *(&v474[13] + 1) = v482;
      *(&v474[15] + 1) = v483;
      *(&v474[17] + 1) = v484[0];
      *(&v474[18] + 2) = *(v484 + 9);
      sub_1B2137224(v474);
      memcpy(&v485[48], v481, 0x58uLL);
      v482 = v478;
      v483 = v479;
      v484[0] = v480[0];
      *(v484 + 9) = *(v480 + 9);
      memcpy(v733, v485, sizeof(v733));
      v734 = v445;
      v735 = v256;
      v736 = 0;
      v737 = v478;
      v738 = v479;
      *v739 = v480[0];
      *&v739[9] = *(v480 + 9);
      sub_1B2181728(v733, v476);
      sub_1B21C77F4();
      memcpy(v475, v462, 0xD2uLL);
      memcpy(v476, v462, 0xD2uLL);
      if (sub_1B2181784(v476) == 1)
      {
        memcpy(v458, v462, 0xD2uLL);
        sub_1B2122400(v458, &qword_1EB7A13B0, &unk_1B2257E48);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B214400C();
          v415 = v260;
        }

        v257 = *(v415 + 16);
        if (v257 >= *(v415 + 24) >> 1)
        {
          sub_1B214400C();
          v415 = v261;
        }

        *(v415 + 16) = v257 + 1;
        v258 = v415 + 16 * v257;
        *(v258 + 32) = v7;
        *(v258 + 40) = v255;
        v259 = v475;
      }

      else
      {
        v259 = v462;
      }

      memcpy(__src, v259, 0xD2uLL);
      v9 = v414;
      memcpy(v462, __src, 0xD2uLL);
      if (sub_1B2181784(v462) != 1)
      {
        v345 = __src;
        goto LABEL_275;
      }

      sub_1B218179C(v733);
      sub_1B2122400(v489, &qword_1EB7A13A8, &qword_1B2257E40);
      v216 = v419;
      v217 = v413;
      goto LABEL_114;
    }

    if (!*(v5 + 16))
    {
      goto LABEL_247;
    }

    v225 = (v438 + 16 * v224);
    v226 = *v225;
    v227 = v225[1];

    v228 = sub_1B211E590();
    if ((v229 & 1) == 0)
    {
      goto LABEL_248;
    }

    v230 = (*(v5 + 56) + 216 * v228);
    memcpy(__dst, v230, 0xD2uLL);
    memcpy(__src, v230, 0xD2uLL);
    memmove(v474, v230, 0xD2uLL);
    v475[0] = v226;
    v475[1] = v227;
    memcpy(&v475[2], __src, 0xD2uLL);

    sub_1B2181728(__dst, v462);
    sub_1B2181728(v474, v462);
    sub_1B2122400(v475, &qword_1EB7A13A8, &qword_1B2257E40);
    memcpy(&v476[2], v474, 0xD2uLL);
    v476[0] = v226;
    v476[1] = v227;
    v447 = v224 + 1;
    memcpy(v472, v474, sizeof(v472));
    v469 = *(&v474[19] + 1);
    v470 = *(&v474[21] + 1);
    v471[0] = *(&v474[23] + 1);
    *(v471 + 9) = *(&v474[24] + 2);
    memcpy(v748, &v474[6], sizeof(v748));
    v817 = v476[19];
    v749 = v476[19];
    v452 = v476[20];
    v750 = v476[20];
    v450 = v476[21];
    v751 = v476[21];
    v752 = *(&v474[19] + 1);
    v753 = *(&v474[21] + 1);
    *v754 = *(&v474[23] + 1);
    *&v754[9] = *(&v474[24] + 2);
    sub_1B2181728(&v476[2], __src);
    sub_1B21C3B0C(v56, v656);
    memcpy(v468, v656, sizeof(v468));
    v465 = v659;
    v466 = v660;
    v467[0] = *v661;
    *(v467 + 9) = *&v661[9];
    v231 = v749;
    v232 = v750;
    sub_1B2136148(v656, __src);
    v464 = sub_1B2252190();
    v233 = *(v231 + 16);
    v234 = (v231 + 40);
    if (v233)
    {
      break;
    }

LABEL_133:
    sub_1B2137224(v656);
    v247 = v476[0];
    v248 = v476[1];
    v681 = v658;
    v680 = v657;
    sub_1B2122400(&v680, &qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B2122400(&v681, &qword_1EB7A13B8, &qword_1B2257E58);
    v249 = v464;
    memcpy(v459, &v472[48], 0x58uLL);
    v459[11] = v817;
    v459[12] = v452;
    LOBYTE(v459[13]) = v450;
    *(&v459[13] + 1) = v469;
    *(&v459[15] + 1) = v470;
    *(&v459[17] + 1) = v471[0];
    *(&v459[18] + 2) = *(v471 + 9);
    sub_1B2137224(v459);
    memcpy(&v472[48], v468, 0x58uLL);
    v469 = v465;
    v470 = v466;
    v471[0] = v467[0];
    *(v471 + 9) = *(v467 + 9);
    memcpy(v740, v472, sizeof(v740));
    v741 = v56;
    v742 = v249;
    v743 = 0;
    v744 = v465;
    v745 = v466;
    *v746 = v467[0];
    *&v746[9] = *(v467 + 9);
    sub_1B2181728(v740, __src);
    sub_1B21C77F4();
    memcpy(v462, v461, 0xD2uLL);
    memcpy(__src, v461, 0xD2uLL);
    if (sub_1B2181784(__src) == 1)
    {
      memcpy(v460, v461, 0xD2uLL);
      sub_1B2122400(v460, &qword_1EB7A13B0, &unk_1B2257E48);

      v250 = swift_isUniquelyReferenced_nonNull_native();
      v56 = MEMORY[0x1E69E7CC0];
      v5 = v435;
      v224 = v447;
      if ((v250 & 1) == 0)
      {
        sub_1B214400C();
        v445 = v253;
      }

      v251 = *(v445 + 16);
      if (v251 >= *(v445 + 24) >> 1)
      {
        sub_1B214400C();
        v445 = v254;
      }

      *(v445 + 16) = v251 + 1;
      v252 = v445 + 16 * v251;
      *(v252 + 32) = v247;
      *(v252 + 40) = v248;
      memcpy(v458, v462, 0xD2uLL);
    }

    else
    {
      memcpy(v458, v461, 0xD2uLL);
      v56 = MEMORY[0x1E69E7CC0];
      v5 = v435;
      v224 = v447;
    }

    memcpy(v461, v458, 0xD2uLL);
    if (sub_1B2181784(v461) != 1)
    {
      while (1)
      {
        v345 = v458;
LABEL_275:
        sub_1B2122400(v345, &qword_1EB7A13B0, &unk_1B2257E48);
LABEL_276:
        sub_1B2252EC0();
        __break(1u);
LABEL_277:

        __break(1u);
      }
    }

    sub_1B218179C(v740);
    sub_1B2122400(v476, &qword_1EB7A13A8, &qword_1B2257E40);
  }

  while (*(v232 + 16))
  {
    v235 = *(v234 - 1);
    v236 = *v234;

    v237 = sub_1B211E590();
    if ((v238 & 1) == 0)
    {
      goto LABEL_241;
    }

    v239 = (*(v232 + 56) + 216 * v237);
    memcpy(v460, v239, 0xD2uLL);
    memcpy(v458, v239, 0xD2uLL);
    memmove(v461, v239, 0xD2uLL);
    v462[0] = v235;
    v462[1] = v236;
    memcpy(&v462[2], v458, 0xD2uLL);

    sub_1B2181728(v460, v459);
    sub_1B2181728(v461, v459);
    sub_1B2122400(v462, &qword_1EB7A13A8, &qword_1B2257E40);
    memcpy(&__src[2], v461, 0xD2uLL);
    __src[0] = v235;
    __src[1] = v236;
    memcpy(v458, __src, 0xE2uLL);
    v1 = 0;
    sub_1B21C3D34();
    v240 = __src[0];
    v241 = __src[1];
    memcpy(v747, v459, 0xD2uLL);
    sub_1B2181728(v747, v457);
    sub_1B21C77F4();
    memcpy(v456, v454, 0xD2uLL);
    memcpy(v457, v454, 0xD2uLL);
    if (sub_1B2181784(v457) == 1)
    {
      memcpy(v453, v454, 0xD2uLL);
      sub_1B2122400(v453, &qword_1EB7A13B0, &unk_1B2257E48);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B214400C();
        v56 = v245;
      }

      v242 = *(v56 + 16);
      if (v242 >= *(v56 + 24) >> 1)
      {
        sub_1B214400C();
        v56 = v246;
      }

      *(v56 + 16) = v242 + 1;
      v243 = v56 + 16 * v242;
      *(v243 + 32) = v240;
      *(v243 + 40) = v241;
      v244 = v456;
    }

    else
    {
      v244 = v454;
    }

    memcpy(v455, v244, 0xD2uLL);
    memcpy(v454, v455, 0xD2uLL);
    if (sub_1B2181784(v454) != 1)
    {
      goto LABEL_274;
    }

    memcpy(v453, v459, 0xD2uLL);
    sub_1B218179C(v453);
    sub_1B2122400(__src, &qword_1EB7A13A8, &qword_1B2257E40);
    v234 += 2;
    if (!--v233)
    {
      goto LABEL_133;
    }
  }

  __break(1u);
LABEL_241:
  __break(1u);
LABEL_242:
}

uint64_t QueryInterfaceRequest.asRequest<A>(of:)()
{
  sub_1B2114F78();
  memcpy(v0, v1, v2);
  sub_1B2114F78();
  memcpy(v3, v4, v5);
  return sub_1B2136148(v8, v7);
}

uint64_t QueryInterfaceRequest.select<A>(sql:arguments:as:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = *a3;
  v8 = a3[1];
  sub_1B21619D8(&qword_1EB7A10A8, &unk_1B225ECC0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B22546B0;
  *(v10 + 56) = &type metadata for SQL;
  *(v10 + 64) = &protocol witness table for SQL;
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B22546B0;
  __src[0] = a1;
  __src[1] = a2;
  __src[2] = v9;
  __src[3] = v8;
  sub_1B2114CC4(__src);
  memcpy((v11 + 32), __src, 0xB8uLL);
  *(v10 + 32) = v11;

  QueryInterfaceRequest.select<A>(_:as:)(v10, v12, a5);
}

uint64_t QueryInterfaceRequest.select<A>(literal:as:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  sub_1B21619D8(&qword_1EB7A10A8, &unk_1B225ECC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B22546B0;
  *(v5 + 56) = &type metadata for SQL;
  *(v5 + 64) = &protocol witness table for SQL;
  *(v5 + 32) = v4;

  QueryInterfaceRequest.select<A>(_:as:)(v5, v6, a3);
}

uint64_t sub_1B217EB30(uint64_t a1, uint64_t a2)
{
  QueryInterfaceRequest.databaseTableName.getter();
  Database.primaryKey(_:)();
  if (v2)
  {

    return a2;
  }

  if (v13)
  {
    if (v13 == 1)
    {
      v4 = v11;
    }

    else
    {
      v4 = &unk_1F29692A8;
    }
  }

  else
  {
    sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
    v4 = swift_allocObject();
    v4[1] = xmmword_1B22546B0;
    *(v4 + 4) = v11;
    *(v4 + 5) = v12;
  }

  v5 = *(v4 + 2);
  sub_1B21414CC(v11, v12, v13);

  if (v5 == 1)
  {
    sub_1B21619D8(&qword_1EB7A10A8, &unk_1B225ECC0);
    a2 = swift_allocObject();
    *(a2 + 16) = xmmword_1B22546B0;
    if (v13)
    {
      if (v13 == 1)
      {
        v6 = v11;
      }

      else
      {
        v6 = &unk_1F29692D8;
      }
    }

    else
    {
      sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
      v6 = swift_allocObject();
      v6[1] = xmmword_1B22546B0;
      *(v6 + 4) = v11;
      *(v6 + 5) = v12;
    }

    if (*(v6 + 2))
    {
      v8 = *(v6 + 4);
      v7 = *(v6 + 5);

      *(a2 + 56) = &type metadata for Column;
      *(a2 + 64) = &protocol witness table for Column;
      *(a2 + 32) = v8;
      *(a2 + 40) = v7;
      return a2;
    }

    __break(1u);
  }

  sub_1B2252CD0();
  MEMORY[0x1B2741EB0](0xD00000000000003BLL, 0x80000001B226D570);
  Interface = QueryInterfaceRequest.databaseTableName.getter();
  MEMORY[0x1B2741EB0](Interface);

  result = sub_1B2252EC0();
  __break(1u);
  return result;
}

uint64_t sub_1B217ED6C(uint64_t a1, uint64_t a2)
{
  QueryInterfaceRequest.databaseTableName.getter();
  Database.primaryKey(_:)();
  if (v2)
  {

    return a2;
  }

  if (v13)
  {
    if (v13 == 1)
    {
      v4 = v11;
    }

    else
    {
      v4 = &unk_1F2969338;
    }
  }

  else
  {
    sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
    v4 = swift_allocObject();
    v4[1] = xmmword_1B22546B0;
    *(v4 + 4) = v11;
    *(v4 + 5) = v12;
  }

  v5 = *(v4 + 2);
  sub_1B21414CC(v11, v12, v13);

  if (v5 == 1)
  {
    sub_1B21619D8(&qword_1EB7A10A8, &unk_1B225ECC0);
    a2 = swift_allocObject();
    *(a2 + 16) = xmmword_1B22546B0;
    if (v13)
    {
      if (v13 == 1)
      {
        v6 = v11;
      }

      else
      {
        v6 = &unk_1F2969368;
      }
    }

    else
    {
      sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
      v6 = swift_allocObject();
      v6[1] = xmmword_1B22546B0;
      *(v6 + 4) = v11;
      *(v6 + 5) = v12;
    }

    if (*(v6 + 2))
    {
      v8 = *(v6 + 4);
      v7 = *(v6 + 5);

      *(a2 + 56) = &type metadata for Column;
      *(a2 + 64) = &protocol witness table for Column;
      *(a2 + 32) = v8;
      *(a2 + 40) = v7;
      return a2;
    }

    __break(1u);
  }

  sub_1B2252CD0();
  MEMORY[0x1B2741EB0](0xD00000000000003BLL, 0x80000001B226D570);
  Interface = QueryInterfaceRequest.databaseTableName.getter();
  MEMORY[0x1B2741EB0](Interface);

  result = sub_1B2252EC0();
  __break(1u);
  return result;
}

void *sub_1B217EFC0(char *__src, uint64_t a2)
{
  memcpy(__dst, __src, 0xA2uLL);
  v4 = __dst[7];
  v5 = *(__src + 1);
  v15 = *__src;
  v16 = v5;
  v17 = *(__src + 2);
  v18 = *(__src + 6);
  memcpy(__srca, __src + 65, sizeof(__srca));
  v6 = (__dst[8] & 1) == 0;
  memcpy(v19, __src, 0xA2uLL);
  sub_1B2136148(__dst, v12);
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest(0, a2, v7, v8);
  (*(*(InterfaceRequest - 8) + 8))(v19, InterfaceRequest);
  v10 = v16;
  *__src = v15;
  *(__src + 1) = v10;
  *(__src + 2) = v17;
  *(__src + 6) = v18;
  *(__src + 7) = v4;
  __src[64] = v6;
  return memcpy(__src + 65, __srca, 0x61uLL);
}

__n128 sub_1B217F0F4(char *__src, uint64_t a2)
{
  memcpy(__dst, __src, 0xA2uLL);
  v4 = *(__src + 1);
  v25 = *__src;
  v26 = v4;
  v27 = *(__src + 2);
  v28 = *(__src + 6);
  v24[0] = *(__src + 65);
  *(v24 + 15) = *(__src + 10);
  v5 = *(__src + 104);
  v6 = *(__src + 120);
  v7 = *(__src + 136);
  *(v23 + 10) = *(__src + 146);
  v22 = v6;
  v23[0] = v7;
  v21 = v5;
  sub_1B2136148(__dst, v29);

  sub_1B21A3F40();
  v9 = v8;
  v11 = v10;

  memcpy(v29, __src, 0xA2uLL);
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest(0, a2, v12, v13);
  (*(*(InterfaceRequest - 8) + 8))(v29, InterfaceRequest);
  v15 = v26;
  *__src = v25;
  *(__src + 1) = v15;
  *(__src + 2) = v27;
  v16 = MEMORY[0x1E69E7CC0];
  *(__src + 6) = v28;
  *(__src + 7) = v16;
  __src[64] = 0;
  *(__src + 65) = v24[0];
  *(__src + 10) = *(v24 + 15);
  *(__src + 11) = v9;
  *(__src + 12) = v11;
  result = v21;
  v18 = v22;
  v19 = v23[0];
  *(__src + 146) = *(v23 + 10);
  *(__src + 136) = v19;
  *(__src + 120) = v18;
  *(__src + 104) = result;
  return result;
}

double sub_1B217F2A8(void *__src, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memcpy(__dst, __src, 0xA2uLL);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = __dst[16];
  if (__dst[16])
  {
    v10 = __dst[17];
    v11 = swift_allocObject();
    v11[2] = v9;
    v11[3] = v10;
    v11[4] = sub_1B2181AEC;
    v11[5] = v8;
    v12 = sub_1B213B044;
    v8 = v11;
  }

  else
  {
    v12 = sub_1B2181AEC;
  }

  memcpy(__srca, __src, sizeof(__srca));
  v18 = *(__src + 9);
  v19 = *(__src + 80);
  memcpy(v21, __src, 0xA2uLL);

  sub_1B2136148(__dst, v17);
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest(0, a4, v13, v14);
  (*(*(InterfaceRequest - 8) + 8))(v21, InterfaceRequest);
  memcpy(__src, __srca, 0x80uLL);
  *(__src + 16) = v12;
  *(__src + 17) = v8;
  result = *&v18;
  *(__src + 9) = v18;
  *(__src + 80) = v19;
  return result;
}

void *sub_1B217F48C(void *__src, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memcpy(__dst, __src, sizeof(__dst));
  v13[0] = a2;
  sub_1B21C4698();
  memcpy(v13, __src, 0xA2uLL);
  type metadata accessor for QueryInterfaceRequest(0, a3, v7, v8);
  sub_1B2111808();
  (*(v9 + 8))(v13);
  return memcpy(__src, __srca, 0xA2uLL);
}

uint64_t sub_1B217F588()
{
  sub_1B2114F78();
  memcpy(v0, v1, v2);
  sub_1B211829C();
  return sub_1B2111F70(v3);
}

void *sub_1B217F5F0(void *__src, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  memcpy(__dst, __src, sizeof(__dst));
  v17 = a2;

  a4(&v17);
  if (v5)
  {

    __break(1u);
  }

  else
  {
    v15[0] = v17;
    sub_1B21C4698();

    memcpy(v15, __src, 0xA2uLL);
    type metadata accessor for QueryInterfaceRequest(0, a3, v10, v11);
    sub_1B2111808();
    (*(v12 + 8))(v15);
    return memcpy(__src, __srca, 0xA2uLL);
  }

  return result;
}

void *sub_1B217F720(char *__src, uint64_t a2, uint64_t a3)
{
  memcpy(__dst, __src, 0xA2uLL);
  v6 = __dst[0];
  v7 = __dst[1];
  v8 = __dst[2];
  memcpy(__srca, __src + 24, sizeof(__srca));
  if (__dst[2])
  {
    sub_1B2136148(__dst, v14);

    sub_1B21DA240(v9);
  }

  else
  {
    sub_1B2136148(__dst, v14);

    sub_1B21DA6C0(v6, v7);

    v8 = a2;
  }

  memcpy(v14, __src, 0xA2uLL);
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest(0, a3, v10, v11);
  (*(*(InterfaceRequest - 8) + 8))(v14, InterfaceRequest);
  *__src = v6;
  *(__src + 1) = v7;
  *(__src + 2) = v8;
  return memcpy(__src + 24, __srca, 0x8AuLL);
}

uint64_t sub_1B217F86C()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_1B211829C();
  return sub_1B2111F70(v1);
}

__n128 sub_1B217F8D4(__n128 *a1)
{
  v2 = *(v1 + 40);
  result = *(v1 + 24);
  a1[9] = result;
  a1[10].n128_u16[0] = v2;
  return result;
}

uint64_t sub_1B217F908(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  memcpy(__dst, a2 + 2, 0xABuLL);
  memcpy(__src, a2 + 2, sizeof(__src));
  nullsub_1();
  memcpy(v7, __src, 0xABuLL);

  sub_1B21818BC(__dst, &v6);
  return sub_1B21A3AA8(v7, v3, v4);
}

uint64_t QueryInterfaceRequest.isEmpty(_:)(uint64_t a1, uint64_t a2)
{
  sub_1B2127C14();
  v21 = v4;
  v5._countAndFlagsBits = 0x205443454C4553;
  v5._object = 0xE700000000000000;
  SQLInterpolation.appendLiteral(_:)(v5);
  memcpy(__dst, v2, 0xA2uLL);
  SQLSubqueryable.exists()();
  v6 = v21;
  sub_1B2127DC0(__src, __dst);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B2127C14();
    v6 = v12;
  }

  v7 = *(v6 + 16);
  if (v7 >= *(v6 + 24) >> 1)
  {
    sub_1B2127C14();
    v6 = v13;
  }

  sub_1B21356F8(__src);
  memcpy(__dst, __src, 0xA3uLL);
  sub_1B2127AE0(__dst);
  *(v6 + 16) = v7 + 1;
  memcpy((v6 + 184 * v7 + 32), __dst, 0xB8uLL);
  v21 = v6;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  SQLInterpolation.appendLiteral(_:)(v8);
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v18 = v21;
  sub_1B2142B5C(v14, v16);
  v19 = 2;
  sub_1B2146830(v14);
  if (v3)
  {
    sub_1B2122400(v16, &qword_1EB7A1378, &qword_1B2257598);
    return v10 & 1;
  }

  v9 = sub_1B2181150();
  sub_1B2142D18(v14);
  result = sub_1B2122400(v16, &qword_1EB7A1378, &qword_1B2257598);
  if (v9 != 2)
  {
    v10 = v9 ^ 1;
    return v10 & 1;
  }

  __break(1u);
  return result;
}

uint64_t QueryInterfaceRequest.updateAll(_:onConflict:_:_:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *a2;
  sub_1B21619D8(&qword_1EB7A0F68, &unk_1B2254680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B22546B0;
  sub_1B214FAC0(a3, inited + 32);

  sub_1B216CE64(v9);
  v10 = QueryInterfaceRequest.updateAll(_:onConflict:_:)(a1, &v12, inited, a5);

  return v10;
}

uint64_t sub_1B217FD6C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v8 = a1[3];
  v9 = a1[4];
  sub_1B21139A0(a1, v8);
  v10 = a1[3];
  v11 = a1[4];
  sub_1B21139A0(a1, v10);
  v14[3] = v10;
  v14[4] = *(v11 + 8);
  sub_1B212FF14(v14);
  sub_1B2111808();
  (*(v12 + 16))();
  v15[3] = &type metadata for SQLExpression;
  v15[4] = &protocol witness table for SQLExpression;
  v15[0] = swift_allocObject();
  a3(v14, a2);
  sub_1B2113208(v14);
  ColumnExpression.set(to:)(v15, v8, v9, a4);
  return sub_1B2122400(v15, &qword_1EB7A10F0, &qword_1B225D320);
}

void *sub_1B217FECC@<X0>(uint64_t *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  memcpy(__dst, a2, 0xA3uLL);
  type metadata accessor for TableAlias();
  v7 = swift_allocObject();
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0;
  v20[0] = v6;

  sub_1B2180454(v20, v7, __dst);
  sub_1B2209954(&v24);

  v8 = *(a3 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1B213A1C8();
    v9 = v23;
    v10 = (a3 + 40);
    do
    {
      v12 = *v10;
      __src[0] = *(v10 - 1);
      v11 = __src[0];
      __src[1] = v12;
      __src[2] = v7;
      sub_1B213CBE4(__src);
      memcpy(v22, __src, sizeof(v22));
      v20[0] = 0x5F62647267;
      v20[1] = 0xE500000000000000;
      swift_bridgeObjectRetain_n();

      MEMORY[0x1B2741EB0](v11, v12);

      v14 = v20[0];
      v13 = v20[1];
      v23 = v9;
      v15 = *(v9 + 16);
      if (v15 >= *(v9 + 24) >> 1)
      {
        sub_1B213A1C8();
        v9 = v23;
      }

      memcpy(v19, v22, 0xA3uLL);
      v19[21] = v14;
      v19[22] = v13;
      sub_1B2155A5C(v19);
      memcpy(v20, v19, sizeof(v20));
      *(v9 + 16) = v15 + 1;
      memcpy((v9 + 184 * v15 + 32), v20, 0xB8uLL);
      v10 += 2;
      --v8;
    }

    while (v8);
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v9;
  v17 = swift_allocObject();
  *(v17 + 16) = v26;
  *(v17 + 32) = sub_1B214D354;
  *(v17 + 40) = v16;

  *a4 = v24;
  *(a4 + 16) = v25;
  *(a4 + 24) = sub_1B2181AA4;
  *(a4 + 32) = v17;
  return memcpy((a4 + 40), v27, 0x7AuLL);
}

void *sub_1B218016C(uint64_t a1, uint64_t a2)
{
  if (sub_1B2116B08())
  {
    sub_1B21C2A5C(0, (a2 & 0xC000000000000001) == 0, a2);
    if ((a2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1B27427E0](0, a2);
    }

    else
    {
    }

    v4 = sub_1B2180290(a1);

    v6 = sub_1B2180D3C(v5, v4);

    return v6;
  }

  else
  {
    sub_1B21619D8(&qword_1EB7A10C0, &unk_1B2257E70);
    sub_1B21619D8(&qword_1EB7A11A8, &qword_1B22549B8);
    sub_1B2181918();

    return sub_1B2252190();
  }
}

uint64_t sub_1B2180290(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v16 = MEMORY[0x1E69E7CC0];
  sub_1B216EE38();
  v2 = v16;
  for (i = (a1 + 40); ; i += 2)
  {
    v6 = *(i - 1);
    v5 = *i;
    v7 = v15[5];
    v8 = v15[6];
    sub_1B21139A0(v15 + 2, v7);
    v9 = *(v8 + 88);

    v10 = v9(v6, v5, v7, v8);
    if (v11)
    {
      break;
    }

    v12 = v10;

    v13 = *(v16 + 16);
    if (v13 >= *(v16 + 24) >> 1)
    {
      sub_1B216EE38();
    }

    *(v16 + 16) = v13 + 1;
    *(v16 + 8 * v13 + 32) = v12;
    if (!--v1)
    {
      return v2;
    }
  }

  sub_1B2252CD0();

  MEMORY[0x1B2741EB0](v6, v5);
  MEMORY[0x1B2741EB0](0xD000000000000010, 0x80000001B226D4E0);
  result = sub_1B2252EC0();
  __break(1u);
  return result;
}

void sub_1B2180454(uint64_t *a1, uint64_t a2, const void *a3)
{
  v10 = *a1;
  if (*(*a1 + 16))
  {
    v3 = v4;
    v5 = a2;
    v6 = a1;
    memcpy(__dst, (v10 + 96), 0xA2uLL);
    v12 = __dst[0];
    v7 = __dst[1];
    v13 = __dst[2];
    v34 = *(v10 + 120);
    v25 = *&__dst[5];
    memcpy(__src, (v10 + 152), sizeof(__src));
    if (__dst[2])
    {
      sub_1B2136148(__dst, v27);
      sub_1B2136148(__dst, v27);

      sub_1B21DA240(v14);

      v5 = v13;
    }

    else
    {
      sub_1B2136148(__dst, v27);
      sub_1B2136148(__dst, v27);

      sub_1B21DA6C0(v12, v7);
    }

    sub_1B2137224(__dst);

    v8 = swift_allocObject();
    v15 = a3;
    memcpy((v8 + 16), a3, 0xA3uLL);
    if (v25)
    {
      v16 = swift_allocObject();
      *(v16 + 16) = v25;
      *(v16 + 32) = sub_1B218199C;
      *(v16 + 40) = v8;
      v9 = sub_1B2181ABC;
      v8 = v16;
    }

    else
    {
      v9 = sub_1B218199C;
    }

    if (*(v10 + 16))
    {
      v36 = v7;
      v24 = v12;
      v3 = &v28;
      memcpy(v27, (v10 + 32), sizeof(v27));
      v17 = *(v10 + 48);
      v32[7] = *(v10 + 32);
      v32[8] = v17;
      v18 = *(v10 + 80);
      v32[9] = *(v10 + 64);
      v32[10] = v18;
      LOBYTE(v7) = v27[226];
      v28 = *&v27[64];
      v29 = *&v27[80];
      v30 = *(v10 + 120);
      v31 = *&v27[104];
      memmove(v32, (v10 + 152), 0x6AuLL);
      sub_1B2127DC0(v15, v26);
      sub_1B21819B8(v27, v26);
      sub_1B2137224(&v28);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v6 = v10;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_14:
  sub_1B21956E4();
  v10 = v23;
  *v6 = v23;
LABEL_10:
  if (*(v10 + 16))
  {
    memcpy(v26, (v10 + 32), 0xE3uLL);
    v20 = *(v3 + 184);
    *(v10 + 32) = *(v3 + 168);
    *(v10 + 48) = v20;
    v21 = *(v3 + 216);
    *(v10 + 64) = *(v3 + 200);
    *(v10 + 80) = v21;
    v22 = v36;
    *(v10 + 96) = v24;
    *(v10 + 104) = v22;
    *(v10 + 112) = v5;
    *(v10 + 120) = v34;
    *(v10 + 136) = v9;
    *(v10 + 144) = v8;
    memcpy((v10 + 152), __src, 0x6AuLL);
    *(v10 + 258) = v7;
    sub_1B2181A14(v26);
    *v6 = v10;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B2180750(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a2;
  if (!*(*a2 + 16))
  {
    __break(1u);
    goto LABEL_24;
  }

  v6 = *(v5 + 88);
  if (v6 < 0)
  {
LABEL_24:
    result = sub_1B2252EC0();
    __break(1u);
    return result;
  }

  v7 = *(v5 + 56);
  v8 = *(v5 + 64);
  v10 = *(v5 + 72);
  v9 = *(v5 + 80);
  if (v6)
  {
    v11 = a4;
  }

  else
  {
    v11 = *(v5 + 56);
  }

  if (v6)
  {
    v12 = a5;
  }

  else
  {
    v12 = *(v5 + 64);
  }

  if (v6)
  {
    v13 = *(v5 + 56);
  }

  else
  {
    v13 = a4;
  }

  if (v6)
  {
    v14 = *(v5 + 64);
  }

  else
  {
    v14 = a5;
  }

  v25 = v14;
  if (v10)
  {
    v15 = *(v5 + 56);
    v16 = *(v5 + 80);

    v7 = v15;
    v9 = v16;
    v17 = v10;
    v18 = v16;
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  v26 = v7;
  v27 = v9;
  v32[1] = v11;
  v32[2] = v12;
  v32[3] = v13;
  v32[4] = v25;
  v32[5] = v17;
  v32[6] = v18;
  sub_1B2181640(v7, v8, v10, v9, v6);

  v19 = v28;
  v29 = sub_1B21D9790(a3);

  if (v19)
  {
    return sub_1B21816DC(v26, v8, v10, v27, v6);
  }

  v21 = sub_1B21D9D18(v6 & 1, v29);

  sub_1B21816DC(v26, v8, v10, v27, v6);
  v32[0] = v5;
  sub_1B2180990(a3, v32, v21, &v33);

  v23 = *a1;
  v31 = v33;
  v32[0] = v23;
  v22.tableRegions.value._rawValue = &v31;
  DatabaseRegion.union(_:)(v22);

  *a1 = v33;
  return result;
}

uint64_t sub_1B2180990@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a2;
  sub_1B21A70E4(&unk_1F29690F0, a3, v17);
  *v13 = v7;

  sub_1B2180AF8(v13, v17);
  if (v4)
  {

    __break(1u);
  }

  else
  {
    sub_1B2209954(v14);

    sub_1B2136148(v14, v13);
    sub_1B21366E4(v14, v13);
    sub_1B2137278();
    v9 = v8;
    memcpy(__dst, v13, 0xA8uLL);
    __dst[168] = 0;
    v16 = v9;
    v10 = sub_1B2137488(a1);
    sub_1B21356F8(v17);
    sub_1B2137224(v14);
    sub_1B2142BCC(__dst);
    swift_beginAccess();
    v11 = *(v10 + 32);

    *a4 = v11;
  }

  return result;
}

void sub_1B2180AF8(uint64_t *a1, const void *a2)
{
  v6 = *a1;
  if (!*(*a1 + 16))
  {
    __break(1u);
LABEL_9:
    sub_1B21956E4();
    v6 = v15;
    *v2 = v15;
    goto LABEL_6;
  }

  v2 = a1;
  memcpy(__dst, (v6 + 96), 0xA2uLL);
  v8 = *(&__dst[2] + 1);
  v9 = *&__dst[3];
  v3 = swift_allocObject();
  memcpy((v3 + 16), a2, 0xA3uLL);
  if (v8)
  {
    v10 = swift_allocObject();
    v10[2] = v8;
    v10[3] = v9;
    v10[4] = sub_1B2181AD4;
    v10[5] = v3;
    v4 = sub_1B2181ABC;
    v3 = v10;
  }

  else
  {
    v4 = sub_1B2181AD4;
  }

  v19 = __dst[0];
  v20 = __dst[1];
  v21 = *&__dst[2];
  memcpy(v18, &__dst[3] + 8, sizeof(v18));
  memcpy(v22, (v6 + 32), 0xE3uLL);
  v11 = *(v6 + 48);
  __src[0] = *(v6 + 32);
  __src[1] = v11;
  v12 = *(v6 + 80);
  __src[2] = *(v6 + 64);
  __src[3] = v12;
  v5 = BYTE2(v22[28]);
  v13 = *(v6 + 112);
  v23[0] = *(v6 + 96);
  v24 = *(v6 + 128);
  v23[1] = v13;
  v25 = *&v22[13];
  memmove(&v26, (v6 + 152), 0x6AuLL);
  sub_1B2136148(__dst, v16);
  sub_1B2127DC0(a2, v16);
  sub_1B21819B8(v22, v16);
  sub_1B2137224(v23);
  __src[4] = v19;
  __src[5] = v20;
  *&__src[6] = v21;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (*(v6 + 16))
  {
    memcpy(v16, (v6 + 32), 0xE3uLL);
    memcpy((v6 + 32), __src, 0x68uLL);
    *(v6 + 136) = v4;
    *(v6 + 144) = v3;
    memcpy((v6 + 152), v18, 0x6AuLL);
    *(v6 + 258) = v5;
    sub_1B2181A14(v16);
    *v2 = v6;
  }

  else
  {
    __break(1u);
  }
}

void *sub_1B2180D3C(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7CC8];
  v59 = MEMORY[0x1E69E7CC8];
  v53 = sub_1B2116B08();
  v4 = 0;
  v50 = a1 & 0xFFFFFFFFFFFFFF8;
  v51 = a1 & 0xC000000000000001;
  v48 = a1;
  v49 = a1 + 32;
  while (1)
  {
    if (v4 == v53)
    {

      return v3;
    }

    if (v51)
    {
      v5 = MEMORY[0x1B27427E0](v4, v48);
    }

    else
    {
      if (v4 >= *(v50 + 16))
      {
        goto LABEL_27;
      }

      v5 = *(v49 + 8 * v4);
    }

    v10 = __OFADD__(v4++, 1);
    if (v10)
    {
      break;
    }

    v11 = *(a2 + 16);
    if (v11)
    {
      v54 = v4;
      v55 = v3;
      v58 = MEMORY[0x1E69E7CC0];
      sub_1B2114114(0, v11, 0, v6, v7, v8, v9);
      v12 = v58;
      v13 = (a2 + 32);
      do
      {
        v14 = *v13++;
        v16 = v5[5];
        v15 = v5[6];
        sub_1B21139A0(v5 + 2, v16);
        (*(v15 + 48))(&v56, v14, v16, v15);
        v21 = v56;
        v22 = v57;
        v58 = v12;
        v24 = *(v12 + 16);
        v23 = *(v12 + 24);
        if (v24 >= v23 >> 1)
        {
          v46 = v56;
          sub_1B2114114(v23 > 1, v24 + 1, 1, v17, v18, v19, v20);
          v21 = v46;
          v12 = v58;
        }

        *(v12 + 16) = v24 + 1;
        v25 = v12 + 24 * v24;
        *(v25 + 32) = v21;
        *(v25 + 48) = v22;
        --v11;
      }

      while (v11);
      v4 = v54;
      v3 = v55;
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
    }

    v33 = sub_1B2190D8C();
    v34 = v3[2];
    v35 = (v26 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_28;
    }

    v37 = v26;
    if (v3[3] < v36)
    {
      sub_1B2246220(v36, 1, v27, v28, v29, v30, v31, v32, v46, *(&v46 + 1), *v47, v47[4]);
      v3 = v59;
      v38 = sub_1B2190D8C();
      if ((v37 & 1) != (v39 & 1))
      {
        goto LABEL_30;
      }

      v33 = v38;
    }

    if (v37)
    {

      v41 = (v3[7] + 8 * v33);
      MEMORY[0x1B2742060](v40);
      if (*((*v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B22525E0();
      }

      sub_1B2252630();
    }

    else
    {
      sub_1B21619D8(qword_1EB7A13D0, qword_1B2257E80);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1B2257570;
      *(v42 + 32) = v5;
      v3[(v33 >> 6) + 8] |= 1 << v33;
      *(v3[6] + 8 * v33) = v12;
      *(v3[7] + 8 * v33) = v42;
      v43 = v3[2];
      v10 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v10)
      {
        goto LABEL_29;
      }

      v3[2] = v44;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  sub_1B21619D8(&qword_1EB7A10C0, &unk_1B2257E70);

  result = sub_1B2253390();
  __break(1u);
  return result;
}

uint64_t *sub_1B2181098()
{
  sub_1B2117340();
  sub_1B2117F74(&qword_1EB7A1370, &unk_1B2257580, v1, v9);
  sub_1B21619D8(&qword_1EB7A1390, &qword_1B2257E28);
  sub_1B2111904();
  swift_allocObject();
  sub_1B21118E8();

  result = sub_1B2112894(v2, v3, v4);
  if (!v0)
  {
    sub_1B212216C();
    v6 = sub_1B223CC34();
    v8 = v7;

    if ((v8 & 0x100) != 0)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  return result;
}

uint64_t sub_1B2181150()
{
  sub_1B2117340();
  sub_1B2117F74(&qword_1EB7A1370, &unk_1B2257580, v1, v7);
  sub_1B21619D8(&qword_1EB7A1398, &qword_1B2257E30);
  sub_1B2111904();
  swift_allocObject();
  sub_1B21118E8();

  result = sub_1B2112894(v2, v3, v4);
  if (!v0)
  {
    sub_1B212216C();
    v6 = sub_1B223CCB4();

    if (v6 == 3)
    {
      return 2;
    }

    else
    {
      return v6;
    }
  }

  return result;
}

uint64_t sub_1B2181398(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B21813D4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1B2181410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B218144C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 162))
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

uint64_t sub_1B218148C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 162) = 1;
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

    *(result + 162) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B2181500(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 203))
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

uint64_t sub_1B2181540(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 202) = 0;
    *(result + 200) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 203) = 1;
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

    *(result + 203) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B2181640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 < 0)
  {
  }

  else
  {

    return sub_1B2181698(a3);
  }
}

uint64_t sub_1B2181698(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B21816DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 < 0)
  {
  }

  else
  {

    return sub_1B211A378(a3, a4);
  }
}

uint64_t sub_1B2181784(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B218184C(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = v2 | (*(result + 2) << 16);
  v4 = *(result - 56) & 1;
  *(result - 96) &= 1uLL;
  *(result - 56) = v4;
  *result = v3 & 0x81FF;
  *(result + 2) = (v3 & 0x1FFFF | 0x180000u) >> 16;
  return result;
}

uint64_t sub_1B2181890(uint64_t result)
{
  v1 = *(result + 104) & 1;
  v2 = *(result + 160) & 0x81FF | 0x4000;
  *(result + 64) &= 1uLL;
  *(result + 104) = v1;
  *(result + 160) = v2;
  return result;
}

unint64_t sub_1B2181918()
{
  result = qword_1ED85D388[0];
  if (!qword_1ED85D388[0])
  {
    sub_1B2161A20(&qword_1EB7A10C0, &unk_1B2257E70);
    sub_1B216B078();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED85D388);
  }

  return result;
}

uint64_t sub_1B2181A68()
{
  sub_1B2114F84();

  return swift_deallocObject();
}

void *sub_1B2181B1C()
{
  sub_1B2114FD4();
  WitnessTable = swift_getWitnessTable();
  return sub_1B21128B8(WitnessTable);
}

void *FetchRequest.databaseRegion(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = (*(a3 + 32))(v9, a1, 0, a2);
  if (!v4)
  {
    v7 = v9[0];

    sub_1B2142D18(v9);
    swift_beginAccess();
    v8 = *(v7 + 32);

    *a4 = v8;
  }

  return result;
}

uint64_t PreparedRequest.statement.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t FetchRequest.adapted(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1B21155F0();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v5, v12);
  sub_1B2181D70(v14, a1, a2, a3, a4, a5);
}

uint64_t sub_1B2181D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  result = type metadata accessor for AdaptedFetchRequest(0, a4, a5, v11);
  v13 = (a6 + *(result + 36));
  *v13 = a2;
  v13[1] = a3;
  return result;
}

uint64_t AdaptedFetchRequest.makePreparedRequest(_:forSingleResult:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = (*(*(a3 + 24) + 32))(a1, a2, *(a3 + 16));
  if (!v5)
  {
    sub_1B2122784(a4 + 8, &v14);
    if (v15)
    {
      sub_1B2134D5C(&v14, v17);
      sub_1B211EE68(v17, v13);
      (*(v4 + *(a3 + 36)))(v12, a1);
      sub_1B2113208(v17);
      v15 = &unk_1F296EE20;
      v16 = &off_1F296EE60;
      v10 = swift_allocObject();
      *&v14 = v10;
      sub_1B2134D5C(v13, v10 + 16);
      sub_1B2134D5C(v12, v10 + 56);
      v11 = &v14;
    }

    else
    {
      sub_1B211EA78(&v14);
      (*(v4 + *(a3 + 36)))(v17, a1);
      v11 = v17;
    }

    return sub_1B2142B5C(v11, a4 + 8);
  }

  return result;
}

uint64_t AnyFetchRequest.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  sub_1B21155F0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ConcreteFetchRequestEraser(0, v11, v12, v12);
  (*(v7 + 16))(v10, a1, a2);
  v13 = sub_1B21822B8(v10);
  result = (*(v7 + 8))(a1, a2);
  *a3 = v13;
  return result;
}

__n128 sub_1B2182344(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B2182358(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1B2182398(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1B21823F8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1B2173DAC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B2182480(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_1B2122A98(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1B21825BC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_1B21117B4(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1B21827A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B2182940(uint64_t a1)
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

uint64_t sub_1B2182D5C()
{
  v0 = sub_1B2182CEC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void *sub_1B2182DB0()
{
  sub_1B2114FD4();
  WitnessTable = swift_getWitnessTable();
  return sub_1B21128B8(WitnessTable);
}

BOOL static RowKey.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  switch(v4)
  {
    case 1u:
      if (v7 != 1)
      {
        goto LABEL_24;
      }

      v37 = sub_1B2112FD0();
      sub_1B2183028(v37, v38, 1u);
      v39 = sub_1B2115FBC();
      sub_1B2183028(v39, v40, 1u);
      return v2 == v5;
    case 2u:
      if (v7 != 2)
      {
        goto LABEL_21;
      }

      v20 = *a1;
      if (v2 != v5 || v3 != v6)
      {
        v10 = sub_1B211D580(v20, v3);
        v22 = sub_1B2115FBC();
        v24 = sub_1B21128DC(v22, v23, 2u);
        v26 = sub_1B21128DC(v24, v25, 2u);
        sub_1B2183028(v26, v27, 2u);
        v17 = sub_1B2115FBC();
        v19 = 2;
        goto LABEL_20;
      }

      v47 = sub_1B21128DC(v20, v3, 2u);
      v49 = sub_1B21128DC(v47, v48, 2u);
      sub_1B2183028(v49, v50, 2u);
      v51 = sub_1B2112FD0();
      v53 = 2;
      goto LABEL_28;
    case 3u:
      if (v7 != 3)
      {
        goto LABEL_21;
      }

      v28 = *a1;
      if (v2 != v5 || v3 != v6)
      {
        v10 = sub_1B211D580(v28, v3);
        v30 = sub_1B2115FBC();
        v32 = sub_1B21128DC(v30, v31, 3u);
        v34 = sub_1B21128DC(v32, v33, 3u);
        sub_1B2183028(v34, v35, 3u);
        v17 = sub_1B2115FBC();
        v19 = 3;
        goto LABEL_20;
      }

      v54 = sub_1B21128DC(v28, v3, 3u);
      v56 = sub_1B21128DC(v54, v55, 3u);
      sub_1B2183028(v56, v57, 3u);
      v51 = sub_1B2112FD0();
      v53 = 3;
      goto LABEL_28;
    default:
      if (*(a2 + 16))
      {
LABEL_21:

LABEL_24:
        v41 = sub_1B2115FBC();
        v43 = sub_1B21128DC(v41, v42, v7);
        sub_1B2183028(v43, v44, v4);
        v45 = sub_1B2115FBC();
        sub_1B2183028(v45, v46, v7);
        return 0;
      }

      else
      {
        v8 = *a1;
        if (v2 == v5 && v3 == v6)
        {
          v58 = sub_1B21128DC(v8, v3, 0);
          v60 = sub_1B21128DC(v58, v59, 0);
          sub_1B2183028(v60, v61, 0);
          v51 = sub_1B2112FD0();
          v53 = 0;
LABEL_28:
          sub_1B2183028(v51, v52, v53);
          return 1;
        }

        else
        {
          v10 = sub_1B211D580(v8, v3);
          v11 = sub_1B2115FBC();
          v13 = sub_1B21128DC(v11, v12, 0);
          v15 = sub_1B21128DC(v13, v14, 0);
          sub_1B2183028(v15, v16, 0);
          v17 = sub_1B2115FBC();
          v19 = 0;
LABEL_20:
          sub_1B2183028(v17, v18, v19);
          return v10 & 1;
        }
      }
  }
}

uint64_t sub_1B218300C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u && a3 != 1)
  {
  }

  return result;
}

uint64_t sub_1B2183028(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u && a3 != 1)
  {
  }

  return result;
}

uint64_t RowKey.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  switch(*(v1 + 16))
  {
    case 1:
      MEMORY[0x1B2742F10](1);
      return MEMORY[0x1B2742F10](v2);
    case 2:
      v3 = 2;
      goto LABEL_5;
    case 3:
      v3 = 3;
      goto LABEL_5;
    default:
      v3 = 0;
LABEL_5:
      MEMORY[0x1B2742F10](v3);

      return sub_1B2252370();
  }
}

uint64_t RowKey.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_1B2253420();
  switch(v2)
  {
    case 1:
      MEMORY[0x1B2742F10](1);
      MEMORY[0x1B2742F10](v1);
      return sub_1B2253470();
    case 2:
      v3 = 2;
      goto LABEL_5;
    case 3:
      v3 = 3;
      goto LABEL_5;
    default:
      v3 = 0;
LABEL_5:
      MEMORY[0x1B2742F10](v3);
      sub_1B2252370();
      return sub_1B2253470();
  }
}

uint64_t sub_1B21831B4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  sub_1B2253420();
  RowKey.hash(into:)(v4);
  return sub_1B2253470();
}

uint64_t sub_1B2183238@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v14 = a2[2];
  v15 = a2[1];
  v18 = a2[6];
  v19 = a2[4];
  v16 = a2[5];
  v17 = a2[7];
  v6 = *a3;
  v7 = a3[1];
  v8 = *(a2 + 24);
  sub_1B2252CD0();

  v9 = sub_1B2253510();
  MEMORY[0x1B2741EB0](v9);

  MEMORY[0x1B2741EB0](0xD000000000000015, 0x80000001B226D670);
  *&v20 = v6;
  *(&v20 + 1) = v7;
  v10 = DatabaseValue.description.getter();
  MEMORY[0x1B2741EB0](v10);

  v11 = sub_1B2183FE0();
  *a4 = a1;
  *(a4 + 8) = 0xD000000000000011;
  *(a4 + 16) = 0x80000001B226D650;
  *(a4 + 24) = v11;
  *(a4 + 32) = v15;
  *(a4 + 40) = v14;
  *(a4 + 48) = v8;
  *(a4 + 56) = v19;
  *(a4 + 64) = v16;
  *(a4 + 72) = v18;
  *(a4 + 80) = v17;
  *(a4 + 88) = v20;
  *(a4 + 104) = 1;
  sub_1B21841CC(v15, v14, v8);

  v12 = sub_1B2112FD0();

  return sub_1B211CF8C(v12);
}

uint64_t static RowDecodingError.valueMismatch(_:sqliteStatement:index:context:)@<X0>(uint64_t a1@<X0>, sqlite3_stmt *a2@<X1>, int a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  sub_1B21320F0(a2, a3, &v14);
  v8 = v14;
  v9 = v15;
  v10 = v16;
  v12[0] = v14;
  v12[1] = v15;
  v13 = v16;
  sub_1B2183238(a1, a4, v12, a5);

  return sub_1B2113A44(v8, v9, v10);
}

uint64_t sub_1B2183444@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a2[2];
  v9 = Statement.columnNames.getter();
  sub_1B2113624(v8, v9, v10, v11, v12, v13, v14, v15, v33, v34, v35, v36, v37, v38, SDWORD2(v38), SHIDWORD(v38), v39, v40, *(&v40 + 1), v41, *(&v41 + 1), v42, *(&v42 + 1), v43, *(&v43 + 1), v44, *(&v44 + 1), v45, *(&v45 + 1), v46, v47);
  v17 = v16;
  v19 = v18;
  type metadata accessor for Row();
  v20 = swift_allocObject();
  v25 = sub_1B211EF2C(v17, v19, v20, v21, v22, v23, v24);
  v26 = Statement.sql.getter();
  result = a2[13];
  v28 = a2[14];
  *&v38 = v25;
  *(&v38 + 1) = a3;
  *&v39 = 0;
  BYTE8(v39) = 1;
  *&v40 = v26;
  *(&v40 + 1) = v29;
  *&v41 = result;
  *(&v41 + 1) = v28;
  if (a3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a3 <= 0x7FFFFFFF)
  {

    sub_1B21320F0(v8, a3, &v35 + 8);
    v30 = *(&v35 + 1);
    v31 = v36;
    v32 = v37;
    v33 = *(&v35 + 1);
    v34 = v36;
    LOBYTE(v35) = v37;
    sub_1B2183238(a1, &v38, &v33, a4);
    sub_1B2113A44(v30, v31, v32);
    v42 = v38;
    v43 = v39;
    v44 = v40;
    v45 = v41;
    return sub_1B218450C(&v42);
  }

  __break(1u);
  return result;
}

uint64_t static RowDecodingError.columnNotFound(_:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a3[1];
  v8 = a3[2];
  v16 = a3[6];
  v17 = a3[4];
  v14 = a3[5];
  v15 = a3[7];
  v9 = *(a3 + 24);
  sub_1B2252CD0();

  v10 = sub_1B2252330();
  MEMORY[0x1B2741EB0](v10);

  v11 = sub_1B2183FE0();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0xD000000000000012;
  *(a4 + 32) = 0x80000001B226D630;
  *(a4 + 40) = v11;
  *(a4 + 48) = v7;
  *(a4 + 56) = v8;
  *(a4 + 64) = v9;
  *(a4 + 72) = v17;
  *(a4 + 80) = v14;
  *(a4 + 88) = v16;
  *(a4 + 96) = v15;
  *(a4 + 104) = 0;

  sub_1B21841CC(v7, v8, v9);

  v12 = sub_1B2112FD0();
  return sub_1B211CF8C(v12);
}

const char *RowDecodingContext.init(row:key:)@<X0>(void *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v21 = *a2;
  v5 = *(a2 + 16);
  v6 = a1[7];
  if (v6)
  {
    v7 = a1[5];
    v8 = a1[6];
    sub_1B21139A0(a1 + 2, v7);
    v9 = *(v8 + 112);

    v10 = v9(a1, v7, v8);
    v11 = Statement.sql.getter();
    v13 = v12;

    v15 = *(v6 + 104);
    v14 = *(v6 + 112);

LABEL_9:
    *a3 = v10;
    *(a3 + 8) = v21;
    *(a3 + 24) = v5;
    *(a3 + 32) = v11;
    *(a3 + 40) = v13;
    *(a3 + 48) = v15;
    *(a3 + 56) = v14;
    return result;
  }

  v11 = a1[8];
  v17 = a1[5];
  v18 = a1[6];
  sub_1B21139A0(a1 + 2, v17);
  v10 = (*(v18 + 112))(a1, v17, v18);
  if (!v11)
  {

    v14 = 0;
    v15 = 0;
    v13 = 0;
    goto LABEL_9;
  }

  result = sqlite3_sql(v11);
  if (result)
  {
    sub_1B22523F0();
    if (qword_1ED85D650 != -1)
    {
      swift_once();
    }

    v19 = sub_1B2251B80();
    sub_1B2156958(v19, qword_1ED8618E8);
    sub_1B2156990();
    v11 = sub_1B2252B80();
    v13 = v20;

    v14 = 0;
    v15 = 0;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t RowDecodingError.description.getter()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = *(v0 + 72);
  v7 = *(v0 + 80);
  v9 = *(v0 + 88);
  v10 = *(v0 + 96);
  v11 = *(v0 + 104);
  if (v11)
  {
    v12 = *(v0 + 8);
    v98 = *(v0 + 16);
    v13 = *v0;
    v14 = *(v0 + 48);
    v101 = v3;
    v104 = v13;
    v105 = v12;
    v106 = v98;
    v107 = v2;
    v108 = v1;
    v109 = v3;
    v110 = v4;
    v111 = v5;
    v96 = v5;
    v112 = v6;
    v113 = v8;
    v114 = v7;
    v115 = v9;
    v116 = v10;
    v117 = v11;
    sub_1B21841E0(&v104, &v102);
    v15 = v12;
    v16 = v14;
    v99 = v1;
    v9 = v8;
    v10 = v7;
  }

  else
  {
    v17 = *(v0 + 56);

    v99 = v4;
    sub_1B21841CC(v4, v17, v6);

    sub_1B211CF8C(v9);
    v98 = v1;
    v101 = v17;
    v16 = v6;
    v96 = v8;
    v6 = v7;
    v15 = v2;
  }

  v100 = v9;
  type metadata accessor for Row();
  inited = swift_initStackObject();

  v25 = sub_1B21840C8(v19, inited, v20, v21, v22, v23, v24);
  v32 = MEMORY[0x1E69E7CC0];
  v97 = v16;
  if (v16 - 2 < 2)
  {
    v33 = v99;
    goto LABEL_21;
  }

  v33 = v99;
  if (v16)
  {
    if (v16 != 1)
    {
      goto LABEL_21;
    }

    v93 = v10;
    v95 = v15;
    sub_1B2183FB4(0, v99, &v102);

    Row.subscript.getter(&v106, &v102);
    v35 = v34;
    v32 = v36;
    v104 = v34;
    v105 = v36;
    v37 = v106;
    v38 = v107;
    v39 = v108;

    v40 = sub_1B211429C();
    sub_1B2113A20(v40, v41, v42);

    v43 = sub_1B211429C();
    sub_1B2113A20(v43, v44, v45);

    v46 = sub_1B211429C();
    sub_1B2113A44(v46, v47, v48);
    v49 = v106;
    v50 = v107;
    v51 = v108;

    sub_1B2113A44(v49, v50, v51);
    sub_1B2113A44(v37, v38, v39);

    sub_1B21182AC();
    v104 = v52 & 0xFFFFFFFFFFFFLL | 0x203A000000000000;
    v105 = 0xE800000000000000;
    v102 = v35;
    v103 = v32;
    sub_1B2252330();
    sub_1B2117F8C();

    sub_1B214400C();
    sub_1B2117C24();
    if (v53)
    {
      sub_1B2117368();
      v32 = v89;
    }

    sub_1B2114FE8();
    sub_1B2115B88();

    sub_1B21182AC();
    sub_1B2111F8C(v54);
    v102 = v99;
    sub_1B2252FD0();
    sub_1B2117F8C();

    sub_1B2115604();
    v55 = v101;
    v10 = v93;
    v15 = v95;
    if (v53)
    {
      sub_1B214400C();
      v55 = v101;
      v32 = v90;
    }

    v33 = v99;
    v56 = v99;
    v101 = v55;
    v57 = 1;
  }

  else
  {
    v32 = v25[5];
    v58 = v25[6];
    sub_1B21139A0(v25 + 2, v32);
    v59 = *(v58 + 88);
    sub_1B21841CC(v99, v101, 0);
    v60 = sub_1B2122178();
    sub_1B218300C(v60, v61, v62);
    v63 = v59(v99, v101, v32, v58);
    if (v64)
    {
      v65 = sub_1B2122178();
      sub_1B2184250(v65, v66, v67);
      v68 = sub_1B2122178();
      v25 = sub_1B2184250(v68, v69, v70);
      v32 = MEMORY[0x1E69E7CC0];
      goto LABEL_21;
    }

    v94 = v63;
    sub_1B21182AC();
    v104 = v71 & 0xFFFFFFFFFFFFLL | 0x203A000000000000;
    v105 = 0xE800000000000000;
    v102 = v99;
    v103 = v101;
    sub_1B2252330();
    sub_1B2117F8C();

    sub_1B214400C();
    sub_1B2117C24();
    if (v53)
    {
      sub_1B2117368();
      v32 = v91;
    }

    sub_1B2114FE8();
    sub_1B2115B88();

    sub_1B21182AC();
    sub_1B2111F8C(v72);
    v102 = v94;
    sub_1B2252FD0();
    sub_1B2117F8C();

    sub_1B2115604();
    if (v53)
    {
      sub_1B2117368();
      v32 = v92;
    }

    v55 = v101;
    v56 = v99;
    v57 = 0;
  }

  sub_1B2184250(v56, v55, v57);
  sub_1B2114FE8();
LABEL_21:
  v104 = 0x203A776F72;
  v105 = 0xE500000000000000;
  Row.description.getter(v25, v26, v27, v28, v29, v30, v31);
  sub_1B2117F8C();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B214400C();
    v32 = v85;
  }

  if (*(v32 + 16) >= *(v32 + 24) >> 1)
  {
    sub_1B2117368();
    v32 = v86;
  }

  sub_1B2114FE8();
  if (v6)
  {
    v104 = 0x60203A6C7173;
    v105 = 0xE600000000000000;

    MEMORY[0x1B2741EB0](v96, v6);

    MEMORY[0x1B2741EB0](96, 0xE100000000000000);
    sub_1B2115604();
    if (v53)
    {
      sub_1B2117368();
      v32 = v87;
    }

    sub_1B2114FE8();
  }

  v80 = v100;
  if (v100)
  {
    v104 = 0x746E656D75677261;
    v105 = 0xEB00000000203A73;
    v102 = v100;
    v103 = v10;
    StatementArguments.description.getter(v73, v74, v75, v76, v77, v78, v79);
    sub_1B2117F8C();

    sub_1B2115604();
    if (v53)
    {
      sub_1B2117368();
      v32 = v88;
    }

    sub_1B2114FE8();
    v80 = v100;
  }

  sub_1B2184250(v33, v101, v97);

  sub_1B211A378(v80, v10);
  v104 = v15;
  v105 = v98;
  MEMORY[0x1B2741EB0](2108704, 0xE300000000000000);
  v102 = v32;
  sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
  sub_1B215175C();
  v81 = sub_1B2252250();
  v83 = v82;

  MEMORY[0x1B2741EB0](v81, v83);

  return v104;
}

uint64_t sub_1B2183FB4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = result + a2;
  if (__OFADD__(result, a2))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    return result;
  }

  *a3 = v4;
  if (v4 < 0 || *(v3 + 72) < v4)
  {
    goto LABEL_6;
  }

  return result;
}

const void *sub_1B2183FE0()
{
  v1 = *(v0 + 72);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_1B219DF74(*(v0 + 72), 0);
  sub_1B21A064C(&v6, v2 + 32, v1);
  v4 = v3;

  if (v4 != v1)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

const void *sub_1B2184060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1B2131C40(a1, a2, a3, a4);

  return v4;
}

uint64_t sub_1B21840C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14[3] = &unk_1F29773E8;
  v14[4] = &off_1F2977480;
  v14[0] = a1;
  v9 = sub_1B211DF80(MEMORY[0x1E69E7CC0], a2, a3, a4, a5, a6, a7);
  sub_1B2111910(v9, v10, v11, v12);
  *(a2 + 72) = *(a1 + 16);
  sub_1B2113208(v14);
  return a2;
}

uint64_t sub_1B2184130(_OWORD *a1, uint64_t a2)
{
  v18[3] = &unk_1F296EED8;
  v18[4] = &off_1F296EEF8;
  v4 = swift_allocObject();
  v18[0] = v4;
  v5 = a1[1];
  v4[1] = *a1;
  v4[2] = v5;
  v6 = a1[3];
  v4[3] = a1[2];
  v4[4] = v6;
  v13 = sub_1B211DF80(MEMORY[0x1E69E7CC0], v7, v8, v9, v10, v11, v12);
  sub_1B2111910(v13, v14, v15, v16);
  *(a2 + 72) = *(*(v4 + 8) + 16);
  sub_1B2113208(v18);
  return a2;
}

uint64_t sub_1B21841CC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1B218300C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1B21841E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B21619D8(&qword_1EB7A1558, &unk_1B22581C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B2184250(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1B2183028(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_1B2184268()
{
  result = qword_1EB7A1560;
  if (!qword_1EB7A1560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A1560);
  }

  return result;
}

uint64_t sub_1B21842C8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_1B2184308(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1B2184360(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B2184374(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B21843A0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 105))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 104);
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

uint64_t sub_1B21843E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 104) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B2184460(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1B21844A0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

Swift::Int32 __swiftcall String.bind(to:at:)(Swift::OpaquePointer to, Swift::Int32 at)
{
  if (qword_1ED85E010 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED861908;
  v5 = sub_1B2252350();
  v6 = sqlite3_bind_text(to._rawValue, at, (v5 + 32), -1, v4);

  return v6;
}

uint64_t static Double.fromDatabaseValue(_:)(uint64_t a1)
{
  v1 = *a1;
  if (*(a1 + 16) != 1)
  {
    v1 = 0;
  }

  if (*(a1 + 16))
  {
    return v1;
  }

  else
  {
    *&result = *a1;
  }

  return result;
}

BOOL sub_1B2184644@<W0>(Swift::OpaquePointer a1@<X0>, Swift::Int32 a2@<W1>, _BYTE *a3@<X8>)
{
  result = Bool.init(sqliteStatement:index:)(a1, a2);
  *a3 = result;
  return result;
}

Swift::Int_optional __swiftcall Int.init(sqliteStatement:index:)(Swift::OpaquePointer sqliteStatement, Swift::Int32 index)
{
  v2 = sqlite3_column_int64(sqliteStatement._rawValue, index);
  v3 = 0;
  result.value = v2;
  result.is_nil = v3;
  return result;
}

Swift::Int8_optional __swiftcall Int8.init(sqliteStatement:index:)(Swift::OpaquePointer sqliteStatement, Swift::Int32 index)
{
  sqlite3_column_int64(sqliteStatement._rawValue, index);
  sub_1B2115BA8();
  v4 = v3;
  if (!v5)
  {
    v4 = 0;
  }

  return (v4 | (v2 << 8));
}

void static Int8.fromDatabaseValue(_:)(uint64_t a1)
{
  if (!*(a1 + 16) || *(a1 + 16) != 1)
  {
    goto LABEL_10;
  }

  v2 = sub_1B211D868(*a1);
  v4 = v4 == v3 && v2 < 9.22337204e18;
  if (!v4)
  {
    goto LABEL_10;
  }

  if ((~v1 & 0x7FF0000000000000) != 0)
  {
    if (v2 > -9.22337204e18)
    {
LABEL_10:
      sub_1B21182BC();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1B2184770(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  static Int8.fromDatabaseValue(_:)(a1);
  *a2 = v3;
  a2[1] = v4 & 1;
}

void sub_1B21847A0(sqlite3_stmt *a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  sqlite3_column_int64(a1, a2);
  sub_1B2115BA8();
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  *a3 = v7;
  a3[1] = v5;
}

Swift::Int16_optional __swiftcall Int16.init(sqliteStatement:index:)(Swift::OpaquePointer sqliteStatement, Swift::Int32 index)
{
  sqlite3_column_int64(sqliteStatement._rawValue, index);
  sub_1B2115BA8();
  v4 = v3;
  if (!v5)
  {
    v4 = 0;
  }

  return (v4 | (v2 << 16));
}

void static Int16.fromDatabaseValue(_:)(uint64_t a1)
{
  if (!*(a1 + 16) || *(a1 + 16) != 1)
  {
    goto LABEL_10;
  }

  v2 = sub_1B211D868(*a1);
  v4 = v4 == v3 && v2 < 9.22337204e18;
  if (!v4)
  {
    goto LABEL_10;
  }

  if ((~v1 & 0x7FF0000000000000) != 0)
  {
    if (v2 > -9.22337204e18)
    {
LABEL_10:
      sub_1B21182BC();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1B21848B8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static Int16.fromDatabaseValue(_:)(a1);
  *a2 = v3;
  *(a2 + 2) = v4 & 1;
}

void sub_1B21848E8(sqlite3_stmt *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  sqlite3_column_int64(a1, a2);
  sub_1B2115BA8();
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  *a3 = v7;
  *(a3 + 2) = v5;
}

Swift::Int32_optional __swiftcall Int32.init(sqliteStatement:index:)(Swift::OpaquePointer sqliteStatement, Swift::Int32 index)
{
  v2 = sqlite3_column_int64(sqliteStatement._rawValue, index);
  v3 = v2;
  if (v2 != v2)
  {
    v3 = 0;
  }

  return (v3 | ((v2 != v2) << 32));
}

void static Int32.fromDatabaseValue(_:)(uint64_t a1)
{
  if (*(a1 + 16) && *(a1 + 16) == 1)
  {
    v2 = sub_1B211D868(*a1);
    v4 = v4 == v3 && v2 < 9.22337204e18;
    if (v4)
    {
      if ((~v1 & 0x7FF0000000000000) != 0)
      {
        if (v2 > -9.22337204e18)
        {
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }
}

void sub_1B2184A18(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static Int32.fromDatabaseValue(_:)(a1);
  *a2 = v3;
  *(a2 + 4) = v4 & 1;
}

sqlite3_int64 sub_1B2184A48@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  result = sqlite3_column_int64(a1, a2);
  v5 = result;
  if (result != result)
  {
    v5 = 0;
  }

  *a3 = v5;
  *(a3 + 4) = result != result;
  return result;
}

uint64_t sub_1B2184A90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = static Int64.fromDatabaseValue(_:)(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

Swift::Int64 sub_1B2184AC0@<X0>(Swift::OpaquePointer a1@<X0>, Swift::Int32 a2@<W1>, uint64_t a3@<X8>)
{
  result = Int64.init(sqliteStatement:index:)(a1, a2);
  *a3 = result;
  *(a3 + 8) = 0;
  return result;
}

Swift::UInt_optional __swiftcall UInt.init(sqliteStatement:index:)(Swift::OpaquePointer sqliteStatement, Swift::Int32 index)
{
  v2 = sqlite3_column_int64(sqliteStatement._rawValue, index);
  v3 = v2 >> 63;
  v4 = v2 & ~(v2 >> 63);
  result.is_nil = v3;
  result.value = v4;
  return result;
}

Swift::UInt8_optional __swiftcall UInt8.init(sqliteStatement:index:)(Swift::OpaquePointer sqliteStatement, Swift::Int32 index)
{
  v2 = sqlite3_column_int64(sqliteStatement._rawValue, index);
  v3 = v2;
  if (v2 > 0xFF)
  {
    v3 = 0;
  }

  return (v3 | ((v2 > 0xFF) << 8));
}

void static UInt8.fromDatabaseValue(_:)(uint64_t a1)
{
  if (!*(a1 + 16) || *(a1 + 16) != 1)
  {
    goto LABEL_10;
  }

  v2 = sub_1B211D868(*a1);
  v4 = v4 == v3 && v2 < 9.22337204e18;
  if (!v4)
  {
    goto LABEL_10;
  }

  if ((~v1 & 0x7FF0000000000000) != 0)
  {
    if (v2 > -9.22337204e18)
    {
LABEL_10:
      sub_1B21182BC();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1B2184BF0(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  static UInt8.fromDatabaseValue(_:)(a1);
  *a2 = v3;
  a2[1] = v4 & 1;
}

unint64_t sub_1B2184C20@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  result = sqlite3_column_int64(a1, a2);
  if (result <= 0xFF)
  {
    v5 = result;
  }

  else
  {
    v5 = 0;
  }

  *a3 = v5;
  a3[1] = result > 0xFF;
  return result;
}

Swift::UInt16_optional __swiftcall UInt16.init(sqliteStatement:index:)(Swift::OpaquePointer sqliteStatement, Swift::Int32 index)
{
  sqlite3_column_int64(sqliteStatement._rawValue, index);
  sub_1B21224B8();
  v4 = v3;
  if (!v5)
  {
    v4 = 0;
  }

  return (v4 | (v2 << 16));
}

void static UInt16.fromDatabaseValue(_:)(uint64_t a1)
{
  if (!*(a1 + 16) || *(a1 + 16) != 1)
  {
    goto LABEL_10;
  }

  v2 = sub_1B211D868(*a1);
  v4 = v4 == v3 && v2 < 9.22337204e18;
  if (!v4)
  {
    goto LABEL_10;
  }

  if ((~v1 & 0x7FF0000000000000) != 0)
  {
    if (v2 > -9.22337204e18)
    {
LABEL_10:
      sub_1B21182BC();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1B2184D38(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static UInt16.fromDatabaseValue(_:)(a1);
  *a2 = v3;
  *(a2 + 2) = v4 & 1;
}

void sub_1B2184D68(sqlite3_stmt *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  sqlite3_column_int64(a1, a2);
  sub_1B21224B8();
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  *a3 = v7;
  *(a3 + 2) = v5;
}

Swift::UInt32_optional __swiftcall UInt32.init(sqliteStatement:index:)(Swift::OpaquePointer sqliteStatement, Swift::Int32 index)
{
  sqlite3_column_int64(sqliteStatement._rawValue, index);
  sub_1B21224B8();
  v4 = v3;
  if (!v5)
  {
    v4 = 0;
  }

  return (v4 | (v2 << 32));
}

void static UInt32.fromDatabaseValue(_:)(uint64_t a1)
{
  v1 = *a1;
  if (*(a1 + 16))
  {
    if (*(a1 + 16) != 1 || ((v3 = sub_1B211D868(*&v1), v5 == v4) ? (v5 = v3 < 9.22337204e18) : (v5 = 0), !v5))
    {
      sub_1B2116564(0);
      return;
    }

    if ((~v2 & 0x7FF0000000000000) != 0)
    {
      if (v3 > -9.22337204e18)
      {
        v1 = v3;
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_11:
  v6 = HIDWORD(v1) == 0;
  v1 = v1;
  if (!v6)
  {
    v1 = 0;
  }

  sub_1B2116564(v1);
}

void sub_1B2184E84(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static UInt32.fromDatabaseValue(_:)(a1);
  *a2 = v3;
  *(a2 + 4) = v4 & 1;
}

void sub_1B2184EB4(sqlite3_stmt *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  sqlite3_column_int64(a1, a2);
  sub_1B21224B8();
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  *a3 = v7;
  *(a3 + 4) = v5;
}

uint64_t sub_1B2184EF4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return _sSi12GRDBInternalE13databaseValueAA08DatabaseC0Vvg_0(result, a2);
  }

  __break(1u);
  return result;
}

void _sSu12GRDBInternalE17fromDatabaseValueySuSgAA0cD0VFZ_0(uint64_t a1)
{
  if (*(a1 + 16) && *(a1 + 16) == 1)
  {
    v2 = sub_1B211D868(*a1);
    v4 = v4 == v3 && v2 < 9.22337204e18;
    if (v4)
    {
      if ((~v1 & 0x7FF0000000000000) != 0)
      {
        if (v2 > -9.22337204e18)
        {
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }
}

sqlite3_stmt *sub_1B2184F78(sqlite3_stmt *result, int a2, sqlite3_int64 a3)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    return sqlite3_bind_int64(result, a2, a3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B2184F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = static Double.fromDatabaseValue(_:)(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t static Float.fromDatabaseValue(_:)(uint64_t a1)
{
  v1 = *a1;
  v2 = v1;
  if (*(a1 + 16) != 1)
  {
    v2 = 0.0;
  }

  if (*(a1 + 16))
  {
    return sub_1B2116564(LODWORD(v2));
  }

  else
  {
    return sub_1B2116564(COERCE_UNSIGNED_INT(*a1));
  }
}

unint64_t sub_1B2185050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = static Float.fromDatabaseValue(_:)(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1B21850BC()
{
  v0 = sub_1B211D59C();
  sub_1B21142AC(v0);
  sub_1B211738C();
  sub_1B2116034();
  result = sub_1B2114FF8(22, v1, v2, v3, v4);
  qword_1ED85E840 = result;
  return result;
}

uint64_t sub_1B2185168()
{
  v0 = sub_1B211D59C();
  sub_1B21142AC(v0);
  sub_1B211738C();
  sub_1B2116034();
  result = sub_1B2114FF8(20, v1, v2, v3, v4);
  qword_1ED85E838 = result;
  return result;
}

uint64_t sub_1B2185214()
{
  v0 = sub_1B211D59C();
  sub_1B21142AC(v0);
  sub_1B211738C();
  sub_1B2116034();
  result = sub_1B2114FF8(20, v1, v2, v3, v4);
  qword_1ED85E730 = result;
  return result;
}

void sub_1B218529C(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B22522F0();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1B2111930();
  if (v7)
  {
    v8 = *(a1 + 48);
    if (v8 == 3)
    {
      v11 = sub_1B21146D8();
      sub_1B2113A20(v11, v12, 3);
      sub_1B22522E0();
      sub_1B21146D8();
      sub_1B22522C0();
      v14 = v13;
      v15 = sub_1B21146D8();
      sub_1B2113A44(v15, v16, 3);
      if (v14)
      {
        goto LABEL_6;
      }
    }

    else if (v8 == 2)
    {
      v9 = sub_1B21146D8();
      sub_1B2113A20(v9, v10, 2);
LABEL_6:
      v17 = sub_1B21146D8();
      v18 = a2(v17);
      v20 = v19;

      *(a3 + 24) = MEMORY[0x1E69E6158];
      *(a3 + 32) = &protocol witness table for String;
      *a3 = v18;
      *(a3 + 8) = v20;
      return;
    }

    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B21853F4()
{
  v0 = sub_1B211D59C();
  sub_1B21142AC(v0);
  sub_1B211738C();
  sub_1B2116034();
  result = sub_1B2114FF8(31, v1, v2, v3, v4);
  qword_1ED85E748 = result;
  return result;
}

uint64_t sub_1B21854A0()
{
  v0 = sub_1B211D59C();
  sub_1B21142AC(v0);
  sub_1B211738C();
  sub_1B2116034();
  result = sub_1B2114FF8(29, v1, v2, v3, v4);
  qword_1ED85E768 = result;
  return result;
}

uint64_t sub_1B218554C()
{
  v0 = sub_1B211D59C();
  sub_1B21142AC(v0);
  sub_1B211738C();
  sub_1B2116034();
  result = sub_1B2114FF8(29, v1, v2, v3, v4);
  qword_1ED85E758 = result;
  return result;
}

void sub_1B21855D4(uint64_t a1@<X0>, uint64_t (*a2)(void, unint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B22522F0();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1B2111930();
  if (v7)
  {
    v8 = *(a1 + 48);
    if (v8 == 3)
    {
      v11 = sub_1B2117C38();
      sub_1B2113A20(v11, v12, 3);
      sub_1B22522E0();
      sub_1B2117C38();
      sub_1B22522C0();
      v14 = v13;
      v15 = sub_1B2117C38();
      sub_1B2113A44(v15, v16, 3);
      if (v14)
      {
        goto LABEL_6;
      }
    }

    else if (v8 == 2)
    {
      v9 = sub_1B2117C38();
      sub_1B2113A20(v9, v10, 2);
LABEL_6:
      v17 = sub_1B2156990();
      v18 = MEMORY[0x1E69E6158];
      v19 = a2(MEMORY[0x1E69E6158], v17);
      v21 = v20;
      *(a3 + 24) = v18;
      *(a3 + 32) = &protocol witness table for String;

      *a3 = v19;
      *(a3 + 8) = v21;
      return;
    }

    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    __break(1u);
  }
}