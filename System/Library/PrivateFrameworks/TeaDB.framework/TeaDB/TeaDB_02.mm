unint64_t sub_2179C46D8()
{
  result = qword_27CB97F78;
  if (!qword_27CB97F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB97F78);
  }

  return result;
}

unint64_t sub_2179C4730()
{
  result = qword_27CB97F80;
  if (!qword_27CB97F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB97F80);
  }

  return result;
}

unint64_t sub_2179C4788()
{
  result = qword_27CB97F88;
  if (!qword_27CB97F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB97F88);
  }

  return result;
}

uint64_t sub_2179C47DC(unsigned __int8 a1, char a2)
{
  v2 = 1954047348;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1954047348;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x72656765746E69;
      break;
    case 2:
      v5 = 1819242338;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v5 = 0x656C62756F64;
      break;
    case 4:
      v5 = 1651469410;
      break;
    case 5:
      v5 = 1819047278;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x72656765746E69;
      break;
    case 2:
      v2 = 1819242338;
      break;
    case 3:
      v6 = 0xE600000000000000;
      v2 = 0x656C62756F64;
      break;
    case 4:
      v2 = 1651469410;
      break;
    case 5:
      v2 = 1819047278;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2179E9D70();
  }

  return v8 & 1;
}

uint64_t sub_2179C4934(char a1)
{
  v1 = OUTLINED_FUNCTION_1_8(a1);
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_10_4(v1, v2, v3);
  }

  OUTLINED_FUNCTION_29();
  return v5 & 1;
}

uint64_t sub_2179C497C(char a1)
{
  v1 = OUTLINED_FUNCTION_1_8(a1);
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_10_4(v1, v2, v3);
  }

  OUTLINED_FUNCTION_29();
  return v5 & 1;
}

uint64_t sub_2179C49C4(char a1)
{
  v1 = OUTLINED_FUNCTION_1_8(a1);
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_10_4(v1, v2, v3);
  }

  OUTLINED_FUNCTION_29();
  return v5 & 1;
}

uint64_t sub_2179C4A0C(char a1)
{
  v1 = OUTLINED_FUNCTION_1_8(a1);
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_10_4(v1, v2, v3);
  }

  OUTLINED_FUNCTION_29();
  return v5 & 1;
}

uint64_t sub_2179C4A54(char a1)
{
  v1 = OUTLINED_FUNCTION_1_8(a1);
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_10_4(v1, v2, v3);
  }

  OUTLINED_FUNCTION_29();
  return v5 & 1;
}

uint64_t sub_2179C4A9C(char a1)
{
  v1 = OUTLINED_FUNCTION_1_8(a1);
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_10_4(v1, v2, v3);
  }

  OUTLINED_FUNCTION_29();
  return v5 & 1;
}

uint64_t sub_2179C4AE4(char a1)
{
  v1 = OUTLINED_FUNCTION_1_8(a1);
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_10_4(v1, v2, v3);
  }

  OUTLINED_FUNCTION_29();
  return v5 & 1;
}

uint64_t sub_2179C4B38(char a1, char a2)
{
  v2 = 0xE900000000000045;
  v3 = 0x4445525245464544;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x54414944454D4D49;
    }

    else
    {
      v4 = 0x564953554C435845;
    }

    v5 = 0xE900000000000045;
  }

  else
  {
    v5 = 0xE800000000000000;
    v4 = 0x4445525245464544;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x54414944454D4D49;
    }

    else
    {
      v3 = 0x564953554C435845;
    }
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  if (v4 == v3 && v5 == v2)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2179E9D70();
  }

  return v7 & 1;
}

uint64_t Database.RecoveryMode.hashValue.getter()
{
  v1 = *v0;
  sub_2179E9E20();
  MEMORY[0x21CEA9D40](v1);
  return sub_2179E9E40();
}

uint64_t sub_2179C4D08()
{
  v1 = *v0;
  sub_2179E9E20();
  MEMORY[0x21CEA9D40](v1);
  return sub_2179E9E40();
}

uint64_t Database.__allocating_init(location:journalingMode:recoveryMode:cacheSize:vacuumMode:shouldTakeRBAssertion:busyTimeout:)()
{
  OUTLINED_FUNCTION_4();
  v0 = swift_allocObject();
  Database.init(location:assertions:journalingMode:recoveryMode:cacheSize:vacuumMode:busyTimeout:)();
  return v0;
}

uint64_t sub_2179C4E1C(sqlite3 *a1)
{
  v3 = *(v1 + 16);
  if (v3 && (*(v3 + 16) & 0x10) != 0)
  {
    sub_21799C868();
  }

  v4 = tdb_truncate_db(a1);
  sub_21799FD18(v4, a1);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (sub_2179A03E4(v5, v7, v9, 0, 0, 29))
  {
    sub_21799C320(v6, v8, v10);
  }

  else
  {
    if (v10 != 29 || __PAIR128__(v8, v6) >= 3)
    {
      if (qword_280B1DB60 != -1)
      {
        swift_once();
      }

      v17 = qword_280B1FEE8;
      v11 = sub_2179E9920();
      sub_21799ABE4(0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_2179EA820;
      sub_2179E9C10();
      v13 = MEMORY[0x277D837D0];
      *(v12 + 56) = MEMORY[0x277D837D0];
      v14 = sub_21799C634();
      *(v12 + 32) = 0;
      *(v12 + 40) = 0xE000000000000000;
      *(v12 + 96) = v13;
      *(v12 + 104) = v14;
      *(v12 + 64) = v14;
      *(v12 + 72) = 0x657461636E757274;
      *(v12 + 80) = 0xE800000000000000;
      sub_2179E93F0("Invoke failed, error=%{public}@, description=%{public}@", 55, 2, &dword_217998000, v17, v11, v12);
    }

    sub_2179A2D18();
    swift_allocError();
    *v15 = v6;
    *(v15 + 8) = v8;
    *(v15 + 16) = v10;
    swift_willThrow();
  }
}

uint64_t Database.__allocating_init(configuration:)(void *a1)
{
  OUTLINED_FUNCTION_4();
  v2 = swift_allocObject();
  Database.init(configuration:)(a1);
  return v2;
}

void *Database.init(configuration:)(void *__src)
{
  v2 = v1;
  memcpy(__dst, __src, sizeof(__dst));
  v1[2] = 0;
  v1[3] = 0;
  v3 = (v1 + 3);
  v4 = __dst[8];
  v5 = __dst[3];
  v1[4] = __dst[8];
  if ((v5 & 2) != 0)
  {
    v37 = v5;
    v7 = v4;
    v44 = sub_21799C868();
  }

  else
  {
    v6 = v4;
    v44 = 0;
  }

  v9 = __dst[0];
  v8 = __dst[1];
  v10 = __dst[2];
  v40 = __dst[0];
  v41 = __dst[1];
  v42 = __dst[2];
  sub_21799A5F4();
  v11 = sub_2179E9670();

  OUTLINED_FUNCTION_33(v12, &v37);
  v13 = OUTLINED_FUNCTION_19_0((v11 + 32));
  swift_endAccess();

  v14 = *v3;
  if (v13)
  {
    if (sqlite3_errmsg(*v3))
    {
      v15 = sub_2179E9700();
      v17 = v16;
      v18 = sub_2179ABC30();
      OUTLINED_FUNCTION_20_0(&type metadata for Database.Errors, v18);
      *v19 = v15;
      *(v19 + 8) = v17;
    }

    else
    {
      v27 = sub_2179ABC30();
      v28 = OUTLINED_FUNCTION_20_0(&type metadata for Database.Errors, v27);
      OUTLINED_FUNCTION_13_2(v28, v29);
    }

    *(v19 + 16) = v9;
    *(v19 + 24) = v8;
    *(v19 + 32) = v10;
    swift_willThrow();
    sub_2179A5DEC(v9, v8, v10);
    sub_2179C7C50(__dst);
    if (*v3)
    {
      sqlite3_close(*v3);
    }

    v20 = v2;

    goto LABEL_21;
  }

  v20 = v2;
  if (!v14)
  {

    sub_2179C7C50(__dst);
    return v20;
  }

  type metadata accessor for Connection();
  OUTLINED_FUNCTION_12();
  v21 = swift_allocObject();
  *(v21 + 16) = v5;
  *(v21 + 24) = v14;
  OUTLINED_FUNCTION_30_0(v21);
  *v3 = v14;
  if ((__dst[7] & 1) == 0)
  {
    sqlite3_busy_timeout(v14, SHIDWORD(__dst[6]));
  }

  OUTLINED_FUNCTION_35();
  sub_21799F990(v22, v23);
  if (!v36)
  {
LABEL_24:
    if ((__dst[6] & 1) == 0)
    {
      v31 = __dst[5];
      v37 = 0;
      v38 = 0xE000000000000000;
      sub_2179E9B10();

      v37 = 0xD000000000000014;
      v38 = 0x80000002179EFD10;
      v40 = v31;
      v32 = sub_2179E9D40();
      MEMORY[0x21CEA9600](v32);

      MEMORY[0x21CEA9600](59, 0xE100000000000000);
      sub_21799C154(v14, v37);
    }

    v37 = 0;
    v38 = 0xE000000000000000;
    sub_2179E9B10();
    v33 = OUTLINED_FUNCTION_24();
    MEMORY[0x21CEA9600](v33);
    LOBYTE(v40) = BYTE1(__dst[6]);
    sub_2179E9C10();
    sub_2179C7C50(__dst);
    MEMORY[0x21CEA9600](59, 0xE100000000000000);
    sub_21799C154(v14, v37);

    goto LABEL_21;
  }

  if ((__dst[4] & 0x100) != 0)
  {
    v40 = v36;
    v24 = v36;
    sub_21799AC4C(0, &qword_280B1DBF8, MEMORY[0x277D84948]);
    if (swift_dynamicCast())
    {
      if (v39 == 10)
      {
        sub_21799C320(v37, v38, v39);
        if (qword_280B1DB60 != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        sub_2179E9930();
        OUTLINED_FUNCTION_32("Database corruption detected; attempting recovery by truncation", v25, v26, &dword_217998000);
        sub_2179C4E1C(v14);
        OUTLINED_FUNCTION_35();
        sub_21799F990(v34, v35);

        goto LABEL_24;
      }

      sub_21799C320(v37, v38, v39);
    }
  }

  sub_2179C7C50(__dst);
  swift_willThrow();

LABEL_21:

  return v20;
}

void Database.__allocating_init(location:assertions:journalingMode:recoveryMode:cacheSize:vacuumMode:busyTimeout:connectionMode:)()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_4();
  swift_allocObject();
  OUTLINED_FUNCTION_9_1();
  Database.init(location:assertions:journalingMode:recoveryMode:cacheSize:vacuumMode:busyTimeout:connectionMode:)();
  OUTLINED_FUNCTION_37();
}

uint64_t Database.init(location:assertions:journalingMode:recoveryMode:cacheSize:vacuumMode:busyTimeout:connectionMode:)()
{
  OUTLINED_FUNCTION_6_2();
  if (qword_280B1DB20 != -1)
  {
    OUTLINED_FUNCTION_2_4();
    swift_once();
  }

  v6 = qword_280B1DB28;
  *(v5 + 32) = qword_280B1DB28;
  if ((v0 & 2) != 0)
  {
    v54 = v0;
    v8 = v6;
    v60 = sub_21799C868();
  }

  else
  {
    v7 = v6;
    v60 = 0;
  }

  v57 = v4;
  v58 = v3;
  v59 = v1;
  sub_21799A5F4();
  v9 = sub_2179E9670();

  OUTLINED_FUNCTION_33(v10, &v54);
  v11 = OUTLINED_FUNCTION_19_0((v9 + 32));
  swift_endAccess();

  if (v11)
  {
    if (sqlite3_errmsg(*v2))
    {
      v12 = sub_2179E9700();
      v14 = v13;
      v15 = sub_2179ABC30();
      OUTLINED_FUNCTION_20_0(&type metadata for Database.Errors, v15);
      *v16 = v12;
      *(v16 + 8) = v14;
    }

    else
    {
      v24 = sub_2179ABC30();
      v25 = OUTLINED_FUNCTION_20_0(&type metadata for Database.Errors, v24);
      OUTLINED_FUNCTION_13_2(v25, v26);
    }

    *(v16 + 16) = v4;
    *(v16 + 24) = v3;
    *(v16 + 32) = v1;
    swift_willThrow();
    if (*v2)
    {
      sqlite3_close(*v2);
    }

    goto LABEL_29;
  }

  sub_2179A1578(v4, v3, v1);
  v17 = *v2;
  if (!*v2)
  {
    goto LABEL_29;
  }

  type metadata accessor for Connection();
  OUTLINED_FUNCTION_12();
  v18 = swift_allocObject();
  *(v18 + 16) = v0;
  *(v18 + 24) = v17;
  OUTLINED_FUNCTION_30_0(v18);
  *v2 = v17;
  if ((ms & 0x100000000) == 0)
  {
    sqlite3_busy_timeout(v17, ms);
  }

  OUTLINED_FUNCTION_5_2();
  sub_21799F990(v19, v20);
  if (v53)
  {
    if ((v50 & 0x100000000) != 0)
    {
      v57 = v53;
      v21 = v53;
      sub_21799AC4C(0, &qword_280B1DBF8, MEMORY[0x277D84948]);
      if (swift_dynamicCast())
      {
        if (v56 == 10)
        {
          sub_21799C320(v54, v55, v56);
          if (qword_280B1DB60 != -1)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          sub_2179E9930();
          OUTLINED_FUNCTION_32("Database corruption detected; attempting recovery by truncation", v22, v23, &dword_217998000);
          sub_2179C4E1C(v17);
          OUTLINED_FUNCTION_5_2();
          sub_21799F990(v27, v28);

          goto LABEL_26;
        }

        sub_21799C320(v54, v55, v56);
      }
    }

    swift_willThrow();

    goto LABEL_29;
  }

LABEL_26:
  if ((v50 & 1) == 0)
  {
    OUTLINED_FUNCTION_14_0();
    sub_2179E9B10();

    OUTLINED_FUNCTION_28();
    v29 = sub_2179E9D40();
    MEMORY[0x21CEA9600](v29);

    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_11_0(v30, v31, v32, v33, v34, v35, v36, v37, v48, v49, v50, ms, v52, v53, v54);
  }

  OUTLINED_FUNCTION_14_0();
  sub_2179E9B10();
  v38 = OUTLINED_FUNCTION_24();
  MEMORY[0x21CEA9600](v38);
  LOBYTE(v57) = BYTE4(v49);
  sub_2179E9C10();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_0(v39, v40, v41, v42, v43, v44, v45, v46, v48, v49, v50, ms, v52, v53, v54);

LABEL_29:

  return v5;
}

void *sub_2179C59E0()
{
  v0[2] = 0;
  v0[3] = 0;
  if (qword_280B1DB20 != -1)
  {
    swift_once();
  }

  v1 = qword_280B1DB28;
  v0[4] = qword_280B1DB28;
  v2 = v1;
  return v0;
}

void *static Database.noop()()
{
  OUTLINED_FUNCTION_4();
  swift_allocObject();
  return sub_2179C59E0();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.close()()
{
  OUTLINED_FUNCTION_38();
  v1 = swift_beginAccess();
  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = *(v0 + 16);
    if (v3 && (*(v3 + 16) & 4) != 0)
    {
      v1 = sub_21799C868();
      v4 = v1;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x28223BE20](v1);
    OUTLINED_FUNCTION_23_0();
    *(v6 - 16) = v2;
    *(v6 - 8) = v4;
    if (v5)
    {
      v7 = v5;
      OUTLINED_FUNCTION_12_1();
      sub_2179E9980();
    }

    else
    {
      v8 = sqlite3_close(v2);
      sub_21799FD18(v8, v2);
      v10 = v9;
      v12 = v11;
      v14 = v13;
      if (sub_2179A03E4(v9, v11, v13, 0, 0, 29))
      {
        sub_21799C320(v10, v12, v14);
      }

      else
      {
        if (v14 != 29 || __PAIR128__(v12, v10) >= 3)
        {
          if (qword_280B1DB60 != -1)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          v21 = qword_280B1FEE8;
          v20 = sub_2179E9920();
          sub_21799ABE4(0);
          OUTLINED_FUNCTION_26();
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_2179EA820;
          sub_2179E9C10();
          v16 = MEMORY[0x277D837D0];
          *(v15 + 56) = MEMORY[0x277D837D0];
          v17 = sub_21799C634();
          *(v15 + 32) = 0;
          *(v15 + 40) = 0xE000000000000000;
          *(v15 + 96) = v16;
          *(v15 + 104) = v17;
          *(v15 + 64) = v17;
          *(v15 + 72) = 0x65736F6C63;
          *(v15 + 80) = 0xE500000000000000;
          sub_2179E93F0("Invoke failed, error=%{public}@, description=%{public}@", 55, 2, &dword_217998000, v21, v20, v15);
        }

        v18 = sub_2179A2D18();
        OUTLINED_FUNCTION_20_0(&type metadata for SQLError, v18);
        *v19 = v10;
        *(v19 + 8) = v12;
        *(v19 + 16) = v14;
        swift_willThrow();
      }
    }
  }

  OUTLINED_FUNCTION_37();
}

uint64_t sub_2179C5CCC(sqlite3 *a1)
{
  v2 = sqlite3_close(a1);
  sub_21799FD18(v2, a1);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (sub_2179A03E4(v3, v5, v7, 0, 0, 29))
  {
    return sub_21799C320(v4, v6, v8);
  }

  if (v8 != 29 || __PAIR128__(v6, v4) >= 3)
  {
    if (qword_280B1DB60 != -1)
    {
      swift_once();
    }

    v10 = qword_280B1FEE8;
    v11 = sub_2179E9920();
    sub_21799ABE4(0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2179EA820;
    sub_2179E9C10();
    v13 = MEMORY[0x277D837D0];
    *(v12 + 56) = MEMORY[0x277D837D0];
    v14 = sub_21799C634();
    *(v12 + 32) = 0;
    *(v12 + 40) = 0xE000000000000000;
    *(v12 + 96) = v13;
    *(v12 + 104) = v14;
    *(v12 + 64) = v14;
    *(v12 + 72) = 0x65736F6C63;
    *(v12 + 80) = 0xE500000000000000;
    sub_2179E93F0("Invoke failed, error=%{public}@, description=%{public}@", 55, 2, &dword_217998000, v10, v11, v12);
  }

  sub_2179A2D18();
  swift_allocError();
  *v15 = v4;
  *(v15 + 8) = v6;
  *(v15 + 16) = v8;
  return swift_willThrow();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.setUserVersion(_:)(Swift::Int a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    if ((*(v2 + 16) & 0x10) != 0)
    {

      sub_21799C868();
    }

    else
    {
    }

    sub_2179E9B10();

    v6 = sub_2179E9D40();
    MEMORY[0x21CEA9600](v6);

    MEMORY[0x21CEA9600](59, 0xE100000000000000);
    sub_21799C154(*(v2 + 24), 0xD000000000000016);
  }

  else
  {
    v3 = sub_2179ABC30();
    v4 = OUTLINED_FUNCTION_20_0(&type metadata for Database.Errors, v3);
    OUTLINED_FUNCTION_7_4(v4, v5);
  }
}

uint64_t Database.table<A>(_:)@<X0>(uint64_t x8_0@<X8>)
{
  v5 = *(v4 + 16);
  if (v5)
  {
    v12 = type metadata accessor for Connection();
    v13 = &off_2829965F0;
    *&v11 = v5;
    sub_2179C8EAC(&v11, x8_0);
  }

  else
  {
    v8 = sub_2179ABC30();
    v9 = OUTLINED_FUNCTION_20_0(&type metadata for Database.Errors, v8);
    return OUTLINED_FUNCTION_7_4(v9, v10);
  }
}

uint64_t Database.asyncRead<A>(block:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2179E93C0();
  swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_14();
  v3 = sub_2179E93A0();

  return v3;
}

void sub_2179C612C(void (*a1)(char *), uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a3;
  v38 = a4;
  v13 = sub_2179E9460();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2179E9480();
  v35 = *(v17 - 8);
  v36 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v33 = v14;
    v34 = v13;
    v21 = *(Strong + 32);
    v22 = swift_allocObject();
    v22[2] = a8;
    v22[3] = a6;
    v22[4] = a7;
    v22[5] = a1;
    v24 = v37;
    v23 = v38;
    v22[6] = a2;
    v22[7] = v24;
    v22[8] = v23;
    if (v21)
    {
      aBlock[4] = sub_2179C84EC;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2179A230C;
      aBlock[3] = &block_descriptor_63;
      v25 = _Block_copy(aBlock);

      v26 = v21;

      sub_2179E9470();
      v39 = MEMORY[0x277D84F90];
      sub_21799A4E4(&qword_280B1DD50, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      v27 = MEMORY[0x277D85198];
      sub_21799A52C(0, &qword_280B1DD18, MEMORY[0x277D85198], MEMORY[0x277D83940]);
      sub_21799A590(&qword_280B1DD10, &qword_280B1DD18, v27);
      v28 = v34;
      sub_2179E9AA0();
      MEMORY[0x21CEA98A0](0, v19, v16, v25);
      _Block_release(v25);

      (*(v33 + 8))(v16, v28);
      (*(v35 + 8))(v19, v36);
    }

    else
    {
      v32 = v38;

      sub_2179C6590(a6, a7, a1, a2, v37, v32, a8);
    }
  }

  else
  {
    v29 = sub_2179E9340();
    sub_21799A4E4(qword_27CB97FA8, MEMORY[0x277D6CAF0], MEMORY[0x277D6CAF8]);
    v30 = swift_allocError();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D6CAE0], v29);
    v37(v30);
  }
}

uint64_t sub_2179C6590(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a7 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10();
  a3(v12);
  return (*(v9 + 8))(v12, a7);
}

uint64_t sub_2179C66B0(unsigned __int8 *a1, void (*a2)(uint64_t))
{
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = v2;
    v6 = *a1;
    if ((*(v4 + 16) & 0x10) != 0)
    {

      sub_21799C868();
    }

    else
    {
    }

    sub_2179E9B10();

    v9 = 0x54414944454D4D49;
    if (v6 != 1)
    {
      v9 = 0x564953554C435845;
    }

    if (v6)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0x4445525245464544;
    }

    if (v6)
    {
      v11 = 0xE900000000000045;
    }

    else
    {
      v11 = 0xE800000000000000;
    }

    MEMORY[0x21CEA9600](v10, v11);

    MEMORY[0x21CEA9600](0x4341534E41525420, 0xED00003B4E4F4954);
    sub_21799F244(0, v12, v13, v14);
    inited = swift_initStackObject();
    v16 = type metadata accessor for Connection();
    inited[8] = v16;
    inited[9] = &off_2829965F0;
    inited[10] = MEMORY[0x277D84F90];
    inited[4] = 4;
    inited[5] = v4;
    inited[2] = 0x204E49474542;
    inited[3] = 0xE600000000000000;

    sub_2179A6520();
    if (v3)
    {
    }

    else
    {

      swift_setDeallocating();
      sub_2179A6B8C();
      swift_deallocClassInstance();
      a2(v5);
      v17 = swift_initStackObject();
      v17[8] = v16;
      v17[9] = &off_2829965F0;
      v17[10] = MEMORY[0x277D84F90];
      v17[4] = 4;
      v17[5] = v4;
      v17[2] = 0xD000000000000013;
      v17[3] = 0x80000002179EFE70;

      sub_2179A6520();
    }

    swift_setDeallocating();
    sub_2179A6B8C();
    return swift_deallocClassInstance();
  }

  else
  {
    sub_2179ABC30();
    swift_allocError();
    *v7 = 0u;
    *(v7 + 16) = 0u;
    *(v7 + 32) = 0;
    return swift_willThrow();
  }
}

uint64_t Database.asyncWrite(_:qos:block:)()
{
  sub_21799EC44();
  swift_allocObject();
  OUTLINED_FUNCTION_14();
  return sub_2179E93B0();
}

uint64_t Database.asyncWriteWithDatabase<A>(_:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2179E93C0();
  OUTLINED_FUNCTION_14();
  return sub_2179E93A0();
}

uint64_t sub_2179C6B64(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a6;
  v41 = a2;
  v16 = sub_2179E9480();
  v39 = *(v16 - 8);
  v40 = v16;
  MEMORY[0x28223BE20](v16);
  v37 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_2179E9460();
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v35 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a5 + 32);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v33 = a9;
  v34 = v19;
  *(v21 + 16) = a9;
  *(v21 + 24) = v20;
  v42 = v20;
  *(v21 + 32) = a3;
  *(v21 + 40) = a4;
  *(v21 + 48) = v11;
  *(v21 + 56) = a7;
  *(v21 + 64) = a8;
  v22 = v41;
  *(v21 + 72) = a1;
  *(v21 + 80) = v22;
  if (v19)
  {
    v23 = MEMORY[0x277D85198];
    sub_21799A52C(0, &qword_280B1D6C0, MEMORY[0x277D85198], MEMORY[0x277D84560]);
    v24 = v36;
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_2179EA830;

    v26 = v34;
    sub_2179E9450();
    aBlock[0] = v25;
    sub_21799A4E4(&qword_280B1DD50, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_21799A52C(0, &qword_280B1DD18, v23, MEMORY[0x277D83940]);
    sub_21799A590(&qword_280B1DD10, &qword_280B1DD18, v23);
    v27 = v35;
    v28 = v38;
    sub_2179E9AA0();
    aBlock[4] = sub_2179C8490;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2179A230C;
    aBlock[3] = &block_descriptor_0;
    v29 = _Block_copy(aBlock);

    v30 = v37;
    sub_2179E9470();
    MEMORY[0x21CEA98A0](0, v30, v27, v29);
    _Block_release(v29);

    (*(v39 + 8))(v30, v40);
    (*(v24 + 8))(v27, v28);
  }

  else
  {

    sub_2179C6FF8(v32, a3, a4, v11);
  }
}

void sub_2179C6FF8(uint64_t a1, void (*a2)(void *), uint64_t a3, char a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    LOBYTE(v10) = a4;
    MEMORY[0x28223BE20](Strong);
    sub_2179C66B0(&v10, sub_2179C84C8);
  }

  else
  {
    v7 = sub_2179E9340();
    sub_21799A4E4(qword_27CB97FA8, MEMORY[0x277D6CAF0], MEMORY[0x277D6CAF8]);
    v8 = swift_allocError();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D6CAE0], v7);
    a2(v8);
  }
}

uint64_t sub_2179C72AC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t a6)
{
  v9 = *(a6 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v13(v10);
  if (!v6)
  {
    a4(v12);
    return (*(v9 + 8))(v12, a6);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.checkpoint()()
{
  v2 = OUTLINED_FUNCTION_25();
  v3 = *(v0 + 24);
  if (v3)
  {
    v4 = *(v1 + 16);
    if (v4 && (*(v4 + 16) & 0x10) != 0)
    {
      v2 = sub_21799C868();
      v5 = v2;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x28223BE20](v2);
    OUTLINED_FUNCTION_23_0();
    *(v10 - 16) = v5;
    *(v10 - 8) = v3;
    if (v9)
    {
      v11 = v9;
      OUTLINED_FUNCTION_12_1();
      sub_2179E9980();
    }

    else
    {
      sub_2179C74B4(v5, v3);
    }
  }

  else
  {
    v6 = sub_2179ABC30();
    v7 = OUTLINED_FUNCTION_20_0(&type metadata for Database.Errors, v6);
    OUTLINED_FUNCTION_39(v7, v8, xmmword_2179EB920);
  }
}

uint64_t sub_2179C74B4(int a1, sqlite3 *db)
{
  v3 = sqlite3_wal_checkpoint_v2(db, 0, 3, 0, 0);
  sub_21799FD18(v3, db);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (sub_2179A03E4(v4, v6, v8, 0, 0, 29))
  {
    return sub_21799C320(v5, v7, v9);
  }

  if (v9 != 29 || __PAIR128__(v7, v5) >= 3)
  {
    if (qword_280B1DB60 != -1)
    {
      swift_once();
    }

    v11 = qword_280B1FEE8;
    v12 = sub_2179E9920();
    sub_21799ABE4(0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_2179EA820;
    sub_2179E9C10();
    v14 = MEMORY[0x277D837D0];
    *(v13 + 56) = MEMORY[0x277D837D0];
    v15 = sub_21799C634();
    *(v13 + 32) = 0;
    *(v13 + 40) = 0xE000000000000000;
    *(v13 + 96) = v14;
    *(v13 + 104) = v15;
    *(v13 + 64) = v15;
    *(v13 + 72) = 0x696F706B63656863;
    *(v13 + 80) = 0xEA0000000000746ELL;
    sub_2179E93F0("Invoke failed, error=%{public}@, description=%{public}@", 55, 2, &dword_217998000, v11, v12, v13);
  }

  sub_2179A2D18();
  swift_allocError();
  *v16 = v5;
  *(v16 + 8) = v7;
  *(v16 + 16) = v9;
  return swift_willThrow();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.incrementalVacuum()()
{
  v2 = OUTLINED_FUNCTION_25();
  v3 = *(v0 + 24);
  if (v3)
  {
    v4 = *(v1 + 16);
    if (v4 && (*(v4 + 16) & 0x10) != 0)
    {
      v2 = sub_21799C868();
      v5 = v2;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x28223BE20](v2);
    OUTLINED_FUNCTION_23_0();
    *(v10 - 16) = v5;
    *(v10 - 8) = v3;
    if (v9)
    {
      v11 = v9;
      OUTLINED_FUNCTION_12_1();
      sub_2179E9980();
    }

    else
    {
      sub_21799C154(v3, 0xD00000000000001ALL);
    }
  }

  else
  {
    v6 = sub_2179ABC30();
    v7 = OUTLINED_FUNCTION_20_0(&type metadata for Database.Errors, v6);
    OUTLINED_FUNCTION_39(v7, v8, xmmword_2179EB920);
  }
}

uint64_t Database.raw<A>(_:query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(v5 + 16);
  if (v7)
  {
    type metadata accessor for Statement(0, a4, *(a5 + 8), a4);
    v18 = 3;
    v16 = type metadata accessor for Connection();
    v17 = &off_2829965F0;
    *&v15 = v7;
    sub_2179AC76C(&v18, a2, a3, &v15);
    swift_retain_n();

    v6 = sub_2179AC7D4(v10);
  }

  else
  {
    v11 = sub_2179ABC30();
    v12 = OUTLINED_FUNCTION_20_0(&type metadata for Database.Errors, v11);
    OUTLINED_FUNCTION_7_4(v12, v13);
  }

  return v6;
}

id static Database.SchedulingConfiguration.default.getter@<X0>(void *a1@<X8>)
{
  if (qword_280B1DB20 != -1)
  {
    OUTLINED_FUNCTION_2_4();
    swift_once();
  }

  v2 = qword_280B1DB28;
  *a1 = qword_280B1DB28;

  return v2;
}

id Database.SchedulingConfiguration.taskQueue.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t Database.Configuration.location.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_2179A5DEC(v2, v3, v4);
}

uint64_t Database.Configuration.location.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_2179A1578(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

void Database.Configuration.cacheSize.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

uint64_t Database.Configuration.cacheSize.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

uint64_t Database.Configuration.busyTimeout.setter(uint64_t result)
{
  *(v1 + 52) = result;
  *(v1 + 56) = BYTE4(result) & 1;
  return result;
}

id Database.Configuration.schedulingConfiguration.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = v2;
  return v2;
}

void Database.Configuration.schedulingConfiguration.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 64) = v2;
}

__n128 Database.Configuration.init(location:assertions:journalingMode:recoveryMode:cacheSize:vacuumMode:busyTimeout:schedulingConfiguration:)@<Q0>(__n128 *a1@<X0>, unint64_t *a2@<X1>, unsigned __int8 *a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, unsigned __int8 *a6@<X5>, uint64_t a7@<X6>, unint64_t *a8@<X7>, __n128 *a9@<X8>)
{
  v9 = a1[1].n128_u8[0];
  v10 = *a2;
  v11 = *a3;
  v12 = *a4;
  v13 = *a5;
  v14 = *(a5 + 8);
  v15 = *a6;
  v16 = *a8;
  result = *a1;
  *a9 = *a1;
  a9[1].n128_u8[0] = v9;
  a9[1].n128_u64[1] = v10;
  a9[2].n128_u8[0] = v11;
  a9[2].n128_u8[1] = v12;
  a9[2].n128_u64[1] = v13;
  a9[3].n128_u8[0] = v14;
  a9[3].n128_u8[1] = v15;
  a9[3].n128_u32[1] = a7;
  a9[3].n128_u8[8] = BYTE4(a7) & 1;
  a9[4].n128_u64[0] = v16;
  return result;
}

unint64_t sub_2179C7D14()
{
  result = qword_27CB97F90;
  if (!qword_27CB97F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB97F90);
  }

  return result;
}

unint64_t sub_2179C7D6C()
{
  result = qword_27CB97F98;
  if (!qword_27CB97F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB97F98);
  }

  return result;
}

unint64_t sub_2179C7DC4()
{
  result = qword_27CB97FA0;
  if (!qword_27CB97FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB97FA0);
  }

  return result;
}

uint64_t sub_2179C7E94(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_2179C7ED4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2179C7F2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 33))
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

uint64_t sub_2179C7F80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_2179C7FE4(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Database.RecoveryMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Database.RecoveryMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2179C8190(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_22_0(-1);
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
      return OUTLINED_FUNCTION_22_0((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_22_0((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_22_0((*a1 | (v4 << 8)) - 3);
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

  return OUTLINED_FUNCTION_22_0(v8);
}

_BYTE *sub_2179C8214(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2179C8318(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 72))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 64);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2179C836C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

uint64_t sub_2179C83E0(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_22_0(*a1 + 2147483646);
    }

    v3 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_22_0(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_22_0(v4);
}

uint64_t sub_2179C8430(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_29()
{

  return swift_bridgeObjectRelease_n();
}

uint64_t OUTLINED_FUNCTION_32(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_2179E93F0(a1, 63, 2, a4, v4);
}

uint64_t OUTLINED_FUNCTION_39(uint64_t a1, __n128 *a2, __n128 a3)
{
  *a2 = a3;
  a2[1] = 0uLL;
  a2[2].n128_u8[0] = 0;

  return swift_willThrow();
}

uint64_t != infix(_:_:)()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_3_5();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_1_9(v1);
  OUTLINED_FUNCTION_4_5(v0 | 0x1000000000000000);
}

{
  OUTLINED_FUNCTION_6_1();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v0;
  OUTLINED_FUNCTION_4_5(v3 | 0x9000000000000000);
}

uint64_t > infix(_:_:)()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_3_5();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_1_9(v1);
  OUTLINED_FUNCTION_4_5(v0 | 0x2000000000000000);
}

uint64_t <= infix(_:_:)()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_3_5();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_1_9(v1);
  OUTLINED_FUNCTION_4_5(v0 | 0x5000000000000000);
}

uint64_t || infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  *a3 = v6 | 0x7000000000000000;
}

uint64_t sub_2179C87A0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x77 && *(a1 + 8))
    {
      v2 = *a1 + 118;
    }

    else
    {
      v2 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
      if (v2 >= 0x76)
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

uint64_t sub_2179C87E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x76)
  {
    *result = a2 - 119;
    if (a3 >= 0x77)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x77)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5TeaDB18StatementOperationO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2179C8860(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2179C88B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void *sub_2179C8908(void *result, int a2)
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

void sub_2179C8938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, char a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_9_3();
  a26 = v28;
  a27 = v29;
  OUTLINED_FUNCTION_14_1();
  v31 = *v30;
  v32 = *(v30 + 8);
  v33 = *(v30 + 16);
  OUTLINED_FUNCTION_0_7();
  v35 = *(v34 + 80);
  OUTLINED_FUNCTION_0_7();
  v37 = *(v36 + 88);
  v38 = OUTLINED_FUNCTION_5_4();
  type metadata accessor for Statement(v38, v35, v39, v40);
  OUTLINED_FUNCTION_13();
  a15 = 0xF000000000000007;
  *&a11 = v31;
  *(&a11 + 1) = v32;
  a12 = v33;
  sub_2179AEC5C(v31, v32);
  OUTLINED_FUNCTION_6_4();
  v47 = sub_2179D1704(v41, v42, v43, v44, v45, v46, v35, v37);
  sub_2179AEC68(a11, *(&a11 + 1), a12);
  v49 = sub_2179ABC9C(v47, v35, v37, v48);
  v51 = v50;

  sub_2179A70AC(v27, &a11);
  v52 = sub_2179AC76C(&a17, v49, v51, &a11);
  sub_2179AC7D4(v52);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_10_0();
}

uint64_t sub_2179C8A58(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v9 = v5 + 16;
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  OUTLINED_FUNCTION_0_7();
  v14 = *(v13 + 80);
  OUTLINED_FUNCTION_0_7();
  v16 = *(v15 + 88);
  v17 = OUTLINED_FUNCTION_5_4();
  type metadata accessor for Statement(v17, v14, v18, v19);
  v31 = 3;
  v30 = 0xF000000000000007;
  *&v28 = v10;
  *(&v28 + 1) = v11;
  v29 = v12;
  sub_2179AEC5C(v10, v11);
  v20 = sub_2179D1704(&v30, &v28, a2, a3 & 1, a4, a5 & 1, v14, v16);
  sub_2179AEC68(v28, *(&v28 + 1), v29);
  v22 = sub_2179ABC9C(v20, v14, v16, v21);
  v24 = v23;

  sub_2179A70AC(v9, &v28);
  v25 = sub_2179AC76C(&v31, v22, v24, &v28);
  sub_2179AC7D4(v25);
  OUTLINED_FUNCTION_2_6();
  return OUTLINED_FUNCTION_7();
}

uint64_t sub_2179C8BA4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  OUTLINED_FUNCTION_14_1();
  v10 = *v9;
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v11 + 16);
  OUTLINED_FUNCTION_0_7();
  v16 = *(v15 + 80);
  OUTLINED_FUNCTION_0_7();
  v18 = *(v17 + 88);
  v19 = OUTLINED_FUNCTION_5_4();
  type metadata accessor for Statement(v19, v16, v20, v21);
  v31 = 3;
  v30 = v10;
  *&v28 = v12;
  *(&v28 + 1) = v13;
  v29 = v14;

  v22 = sub_2179D1704(&v30, &v28, a3, a4 & 1, a5, a6 & 1, v16, v18);
  sub_2179B0CEC(v30);
  sub_2179ABC9C(v22, v16, v18, v23);
  OUTLINED_FUNCTION_11_2();
  sub_2179A70AC(v6, &v28);
  v24 = sub_2179AC76C(&v31, v18, v13, &v28);
  sub_2179AC7D4(v24);
  OUTLINED_FUNCTION_2_6();
  return OUTLINED_FUNCTION_7();
}

uint64_t sub_2179C8DDC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2179C8E1C(uint64_t result, int a2, int a3)
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

uint64_t sub_2179C8E70(uint64_t a1)
{
  sub_2179E9E20();
  sub_2179BC06C();
  return sub_2179E9E40();
}

uint64_t SearchTable.Delete.entity(_:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  (*(v6 + 16))(&v24, v5, v6);

  swift_getAtKeyPath();

  v7 = *(v25 + 16);
  os_unfair_lock_lock((v7 + 28));
  v8 = *(v7 + 24);
  os_unfair_lock_unlock((v7 + 28));

  if (v8)
  {
    OUTLINED_FUNCTION_3_6();
    _s6DeleteV5ErrorOMa(v10, v11, v12, v13);
    swift_getWitnessTable();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    type metadata accessor for Statement(0, v5, *(*(v6 + 8) + 24), v9);
    v25 = 2;
    OUTLINED_FUNCTION_3_6();
    sub_2179E76B4();
    OUTLINED_FUNCTION_3_6();
    sub_2179E7750(v15, v16, v17, v18);

    sub_2179A70AC(v4, &v24);
    OUTLINED_FUNCTION_3_6();
    v23 = sub_2179AC76C(v19, v20, v21, v22);
    OUTLINED_FUNCTION_1_2(v23);
    result = OUTLINED_FUNCTION_0_8();
    if (!v3)
    {
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SearchTable.Delete.all()()
{
  v5 = *(v0 + 16);
  OUTLINED_FUNCTION_4_7(v1, *(v0 + 24));
  v15[5] = 2;
  sub_2179E7798(v5, v4);
  OUTLINED_FUNCTION_2_7();
  sub_2179E7750(v6, v7, v8, v9);

  sub_2179A70AC(v2, v15);
  OUTLINED_FUNCTION_2_7();
  v14 = sub_2179AC76C(v10, v11, v12, v13);
  OUTLINED_FUNCTION_1_2(v14);
  OUTLINED_FUNCTION_0_8();
  if (!v3)
  {
  }
}

uint64_t SearchTable.Delete.where(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = *(a2 + 16);
  v8 = *(*(a2 + 24) + 8);
  type metadata accessor for Statement(0, v7, *(v8 + 24), a4);
  v17 = 2;
  *&v16[0] = v6;
  OUTLINED_FUNCTION_2_7();
  v9 = sub_2179E77AC();
  v11 = sub_2179E7750(v9, v7, v8, v10);
  v13 = v12;

  sub_2179A70AC(v4, v16);
  v14 = sub_2179AC76C(&v17, v11, v13, v16);
  OUTLINED_FUNCTION_1_2(v14);
  result = OUTLINED_FUNCTION_0_8();
  if (!v5)
  {
  }

  return result;
}

{
  v6 = *a1;
  OUTLINED_FUNCTION_4_7(a4, *(a2 + 24));
  v17[5] = 2;
  v17[0] = v6;
  OUTLINED_FUNCTION_2_7();
  sub_2179E7824();
  OUTLINED_FUNCTION_2_7();
  sub_2179E7750(v7, v8, v9, v10);

  sub_2179A70AC(v4, v17);
  OUTLINED_FUNCTION_2_7();
  v15 = sub_2179AC76C(v11, v12, v13, v14);
  OUTLINED_FUNCTION_1_2(v15);
  result = OUTLINED_FUNCTION_0_8();
  if (!v5)
  {
  }

  return result;
}

uint64_t sub_2179C9288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_2179C92D8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2179C9318(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_2179C9378(_BYTE *result, int a2, int a3)
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

unint64_t sub_2179C9430(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v11 = a3;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v13 = OUTLINED_FUNCTION_6_5();
  v14(v13);
  v15 = v119;
  switch(v120)
  {
    case 1:
      v117 = v119;
      sub_2179E9D40();
      OUTLINED_FUNCTION_11_3();
      v45 = OUTLINED_FUNCTION_8_6();
      __swift_project_boxed_opaque_existential_1(v45, v46);
      OUTLINED_FUNCTION_4_8();
      v47 = OUTLINED_FUNCTION_5_5();
      v48(v47);
      if (v118 != 255)
      {
        v15 = v119;
        switch(v118)
        {
          case 1u:
            goto LABEL_57;
          case 2u:
            v107 = OUTLINED_FUNCTION_7_6();
            sub_2179AA22C(v107, v108, 2);

            goto LABEL_7;
          case 3u:
            goto LABEL_54;
          case 4u:
            v97 = OUTLINED_FUNCTION_7_6();
            Data.queryValue.getter(v97, v98);
            OUTLINED_FUNCTION_14_2();
            v64 = OUTLINED_FUNCTION_7_6();
            goto LABEL_42;
          case 5u:
            OUTLINED_FUNCTION_12_4();
            v66 = OUTLINED_FUNCTION_7_6();
            goto LABEL_59;
          default:
            OUTLINED_FUNCTION_3_7();
            OUTLINED_FUNCTION_2_8();
            sub_2179A4934();
            OUTLINED_FUNCTION_0_9();
            v49 = sub_2179E9A80();
            MEMORY[0x21CEA9600](v49);

            OUTLINED_FUNCTION_9_4();
            v43 = OUTLINED_FUNCTION_7_6();
            goto LABEL_14;
        }
      }

      break;
    case 2:
      v34 = *(v11 + 24);
      v35 = *(v11 + 32);
      __swift_project_boxed_opaque_existential_1(v11, v34);
      OUTLINED_FUNCTION_4_8();
      v36(v34, v35);
      if (v118 == 255)
      {
LABEL_7:
        v37 = (v15 & 1) == 0;
LABEL_27:
        if (v37)
        {
          a7 = 48;
        }

        else
        {
          a7 = 49;
        }
      }

      else
      {
        switch(v118)
        {
          case 1u:
            sub_2179E9D40();
            OUTLINED_FUNCTION_11_3();
            goto LABEL_53;
          case 2u:
            v101 = OUTLINED_FUNCTION_7_6();
            sub_2179AA22C(v101, v102, 2);

            if (v117)
            {
              a7 = 49;
            }

            else
            {
              a7 = 48;
            }

            break;
          case 3u:
            OUTLINED_FUNCTION_13_3();
            sub_2179E9860();
            goto LABEL_55;
          case 4u:
            v91 = OUTLINED_FUNCTION_7_6();
            Data.queryValue.getter(v91, v92);
            OUTLINED_FUNCTION_11_3();
            v93 = OUTLINED_FUNCTION_7_6();
            sub_2179AA22C(v93, v94, 4);
            goto LABEL_53;
          case 5u:
            OUTLINED_FUNCTION_12_4();
            v109 = OUTLINED_FUNCTION_7_6();
            sub_2179AA22C(v109, v110, 5);
            goto LABEL_60;
          default:
            OUTLINED_FUNCTION_3_7();
            OUTLINED_FUNCTION_2_8();
            sub_2179A4934();
            OUTLINED_FUNCTION_0_9();
            v59 = sub_2179E9A80();
            MEMORY[0x21CEA9600](v59);

            OUTLINED_FUNCTION_9_4();
            v60 = OUTLINED_FUNCTION_7_6();
            sub_2179AA22C(v60, v61, 0);
            goto LABEL_55;
        }
      }

      break;
    case 3:
      OUTLINED_FUNCTION_13_3();
      sub_2179E9860();
      a7 = v117;
      v38 = OUTLINED_FUNCTION_8_6();
      __swift_project_boxed_opaque_existential_1(v38, v39);
      OUTLINED_FUNCTION_4_8();
      v40 = OUTLINED_FUNCTION_5_5();
      v41(v40);
      LOBYTE(v24) = v117;
      switch(v118)
      {
        case 0u:
          OUTLINED_FUNCTION_3_7();
          OUTLINED_FUNCTION_2_8();
          sub_2179A4934();
          OUTLINED_FUNCTION_0_9();
          goto LABEL_10;
        case 1u:
          goto LABEL_57;
        case 2u:
          goto LABEL_23;
        case 3u:
          goto LABEL_54;
        case 4u:
          goto LABEL_21;
        case 5u:
          goto LABEL_22;
        default:
          return a7;
      }

    case 4:
      v25 = OUTLINED_FUNCTION_6_5();
      Data.queryValue.getter(v25, v26);
      OUTLINED_FUNCTION_11_3();
      v27 = *(v11 + 24);
      v28 = *(v11 + 32);
      v29 = OUTLINED_FUNCTION_8_6();
      __swift_project_boxed_opaque_existential_1(v29, v30);
      OUTLINED_FUNCTION_4_8();
      v31(v27, v28);
      if (v118 != 255)
      {
        switch(v118)
        {
          case 1u:
            sub_2179E9D40();
            OUTLINED_FUNCTION_14_2();
            goto LABEL_44;
          case 2u:
            v87 = OUTLINED_FUNCTION_8_6();
            sub_2179AA22C(v87, v88, 2);

            v89 = OUTLINED_FUNCTION_6_5();
            sub_2179AC53C(v89, v90, 4);
            v37 = (v117 & 1) == 0;
            goto LABEL_27;
          case 3u:
            OUTLINED_FUNCTION_13_3();
            sub_2179E9860();
            goto LABEL_40;
          case 4u:
            v83 = OUTLINED_FUNCTION_8_6();
            Data.queryValue.getter(v83, v84);
            OUTLINED_FUNCTION_14_2();
            v85 = OUTLINED_FUNCTION_8_6();
            sub_2179AA22C(v85, v86, 4);
LABEL_44:

            v99 = OUTLINED_FUNCTION_6_5();
            sub_2179AC53C(v99, v100, 4);
            return a7;
          case 5u:
            OUTLINED_FUNCTION_12_4();
            v103 = OUTLINED_FUNCTION_8_6();
            sub_2179AA22C(v103, v104, 5);

            v105 = OUTLINED_FUNCTION_6_5();
            sub_2179AC53C(v105, v106, 4);
            return a7;
          default:
            OUTLINED_FUNCTION_3_7();
            OUTLINED_FUNCTION_2_8();
            sub_2179A4934();
            OUTLINED_FUNCTION_0_9();
            v56 = sub_2179E9A80();
            MEMORY[0x21CEA9600](v56);

            OUTLINED_FUNCTION_9_4();
            v57 = OUTLINED_FUNCTION_8_6();
            sub_2179AA22C(v57, v58, 0);
LABEL_40:

            v95 = OUTLINED_FUNCTION_6_5();
            sub_2179AC53C(v95, v96, 4);
            goto LABEL_74;
        }
      }

      v32 = OUTLINED_FUNCTION_6_5();
      sub_2179AC53C(v32, v33, 4);
      break;
    case 5:
      __swift_project_boxed_opaque_existential_1(v11, *(v11 + 24));
      OUTLINED_FUNCTION_4_8();
      v50 = OUTLINED_FUNCTION_6_5();
      v51(v50);
      v24 = v117;
      switch(v118)
      {
        case 0u:
          OUTLINED_FUNCTION_3_7();
          OUTLINED_FUNCTION_2_8();
          sub_2179A4934();
          OUTLINED_FUNCTION_0_9();
          v52 = sub_2179E9A80();
          MEMORY[0x21CEA9600](v52);

          OUTLINED_FUNCTION_9_4();
          v53 = OUTLINED_FUNCTION_5_5();
          v55 = 0;
          goto LABEL_73;
        case 1u:
          sub_2179E9D40();
          OUTLINED_FUNCTION_11_3();
          return a7;
        case 2u:
          v74 = OUTLINED_FUNCTION_5_5();
          sub_2179AA22C(v74, v75, 2);
          goto LABEL_26;
        case 3u:
          OUTLINED_FUNCTION_13_3();
          sub_2179E9860();
          break;
        case 4u:
          v70 = OUTLINED_FUNCTION_5_5();
          Data.queryValue.getter(v70, v71);
          OUTLINED_FUNCTION_11_3();
          v72 = OUTLINED_FUNCTION_5_5();
          sub_2179AA22C(v72, v73, 4);
          return a7;
        case 5u:
          OUTLINED_FUNCTION_12_4();
          v76 = OUTLINED_FUNCTION_5_5();
          sub_2179AA22C(v76, v77, 5);
          return a7;
        default:
          while (2)
          {
            __swift_project_boxed_opaque_existential_1(v11, *(v11 + 24));
            v78 = OUTLINED_FUNCTION_6_5();
            v79(v78);
            v11 = v118;
            if (v118 == 255)
            {
              OUTLINED_FUNCTION_12_4();
              return a7;
            }

            v80 = v117;
            OUTLINED_FUNCTION_13_3();
            sub_2179E9B10();

            v117 = 0xD000000000000011;
            MEMORY[0x21CEA9600](v24, a2);
            MEMORY[0x21CEA9600](0x204D4F524620, 0xE600000000000000);
            MEMORY[0x21CEA9600](a6, a7);
            MEMORY[0x21CEA9600](0x6920455245485720, 0xED000027203D2064);
            MEMORY[0x21CEA9600](a4, a5);
            a2 = 0xE400000000000000;
            MEMORY[0x21CEA9600](539765031, 0xE400000000000000);
            v81 = 1280070990;
            switch(v118)
            {
              case 0u:
                v115 = 39;
                v116 = 0xE100000000000000;
                sub_2179A4934();
                OUTLINED_FUNCTION_1_3();
                v82 = sub_2179E9A80();
                MEMORY[0x21CEA9600](v82);

                MEMORY[0x21CEA9600](39, 0xE100000000000000);
                goto LABEL_64;
              case 1u:
                v81 = sub_2179E9D40();
                goto LABEL_71;
              case 2u:
                if (v80)
                {
                  v81 = 49;
                }

                else
                {
                  v81 = 48;
                }

                a2 = 0xE100000000000000;
                break;
              case 3u:
                v115 = 0;
                v116 = 0xE000000000000000;
                sub_2179E9860();
LABEL_64:
                v81 = v115;
                a2 = v116;
                break;
              case 4u:
                v112 = OUTLINED_FUNCTION_6_5();
                v81 = Data.queryValue.getter(v112, v113);
LABEL_71:
                a2 = v111;
                break;
              case 5u:
                break;
              default:
                continue;
            }

            break;
          }

          MEMORY[0x21CEA9600](v81, a2);

          MEMORY[0x21CEA9600](41, 0xE100000000000000);
          v53 = OUTLINED_FUNCTION_6_5();
          v55 = v118;
LABEL_73:
          sub_2179AA22C(v53, v54, v55);
          break;
      }

LABEL_74:
      a7 = v117;
      break;
    default:
      OUTLINED_FUNCTION_3_7();
      OUTLINED_FUNCTION_2_8();
      sub_2179A4934();
      OUTLINED_FUNCTION_1_3();
      v16 = sub_2179E9A80();
      v24 = v17;
      v18 = OUTLINED_FUNCTION_6_5();
      sub_2179AC53C(v18, v19, 0);
      MEMORY[0x21CEA9600](v16, v24);

      OUTLINED_FUNCTION_9_4();
      a7 = v117;
      v20 = OUTLINED_FUNCTION_8_6();
      __swift_project_boxed_opaque_existential_1(v20, v21);
      OUTLINED_FUNCTION_4_8();
      v22 = OUTLINED_FUNCTION_5_5();
      v23(v22);
      LOBYTE(v24) = v117;
      switch(v118)
      {
        case 0u:
          OUTLINED_FUNCTION_3_7();
          OUTLINED_FUNCTION_2_8();
          OUTLINED_FUNCTION_1_3();
LABEL_10:
          v42 = sub_2179E9A80();
          MEMORY[0x21CEA9600](v42);

          OUTLINED_FUNCTION_9_4();
          v43 = OUTLINED_FUNCTION_5_5();
LABEL_14:
          sub_2179AA22C(v43, v44, 0);
          goto LABEL_55;
        case 1u:
LABEL_57:
          sub_2179E9D40();
          OUTLINED_FUNCTION_14_2();
          goto LABEL_53;
        case 2u:
LABEL_23:
          v68 = OUTLINED_FUNCTION_5_5();
          sub_2179AA22C(v68, v69, 2);

LABEL_26:
          v37 = (v24 & 1) == 0;
          goto LABEL_27;
        case 3u:
LABEL_54:
          OUTLINED_FUNCTION_13_3();
          sub_2179E9860();
LABEL_55:

          goto LABEL_74;
        case 4u:
LABEL_21:
          v62 = OUTLINED_FUNCTION_5_5();
          Data.queryValue.getter(v62, v63);
          OUTLINED_FUNCTION_14_2();
          v64 = OUTLINED_FUNCTION_5_5();
LABEL_42:
          sub_2179AA22C(v64, v65, 4);
LABEL_53:

          return a7;
        case 5u:
LABEL_22:
          OUTLINED_FUNCTION_12_4();
          v66 = OUTLINED_FUNCTION_5_5();
LABEL_59:
          sub_2179AA22C(v66, v67, 5);
LABEL_60:

          return a7;
        default:
          return a7;
      }
  }

  return a7;
}

uint64_t sub_2179C9EC4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(*(a4 + 8) + 32))(a3);
  v22 = v8;
  v23 = v7;
  v9 = *(a4 + 16);
  v10 = OUTLINED_FUNCTION_19_1();
  v9(v10);

  v33 = v34;
  v30 = a3;
  v31 = a4;
  v32 = a1;
  type metadata accessor for SearchColumn();
  sub_2179E9EC0();
  v11 = sub_2179E9840();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_2179A2E44(sub_2179CA278, v29, v11, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v13);

  v15 = OUTLINED_FUNCTION_19_1();
  v9(v15);
  v16 = v34;

  v33 = v16;
  v26 = a3;
  v27 = a4;
  v28 = a1;
  v18 = sub_2179A2E44(sub_2179CA29C, v25, v11, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v17);

  v19 = sub_2179B1764(v23, v22, v14, v18, a2);

  (*(*(a3 - 8) + 8))(a1, a3);
  return v19;
}

uint64_t sub_2179CA0E0@<X0>(void *a3@<X8>)
{
  swift_getAtKeyPath();
  v4 = *(v8 + 16);
  os_unfair_lock_lock((v4 + 64));
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);

  os_unfair_lock_unlock((v4 + 64));

  *a3 = v6;
  a3[1] = v5;
  return result;
}

uint64_t sub_2179CA164@<X0>(uint64_t *a3@<X8>)
{
  swift_getAtKeyPath();
  v4 = *(v9 + 16);
  os_unfair_lock_lock(v4 + 16);

  os_unfair_lock_unlock(v4 + 16);

  sub_2179A4934();
  v5 = sub_2179E9A80();
  v7 = v6;

  MEMORY[0x21CEA9600](v5, v7);

  result = MEMORY[0x21CEA9600](39, 0xE100000000000000);
  *a3 = 39;
  a3[1] = 0xE100000000000000;
  return result;
}

uint64_t sub_2179CA2C0(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2179CA2D8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2179CA2D8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2179CA2E8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t LazyJSON.__allocating_init(value:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1_4();
  v2 = swift_allocObject();
  LazyJSON.init(value:)(a1);
  return v2;
}

uint64_t LazyJSON.init(value:)(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_3_8();
  v5 = *(v4 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  type metadata accessor for LazyLoader(0, v5, *(v10 + 88), *(v10 + 96));
  (*(v6 + 16))(v9, a1, v5);
  v11 = LazyLoader.__allocating_init(object:)(v9);
  (*(v6 + 8))(a1, v5);
  *(v2 + 16) = v11;
  return v2;
}

uint64_t LazyJSON.valueType.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_3_8();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v4);
  LazyLoader.load()(&v12 - v5);
  sub_2179E90E0();
  swift_allocObject();
  sub_2179E90D0();
  v6 = sub_2179E90C0();
  v8 = v7;
  v9 = OUTLINED_FUNCTION_4_9();
  v10(v9, v3);

  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = 4;
  return result;
}

uint64_t sub_2179CA600(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x726564616F6CLL && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2179E9D70();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2179CA6B4(uint64_t a1)
{
  sub_2179E9E20();
  sub_2179BC06C();
  return sub_2179E9E40();
}

uint64_t sub_2179CA70C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2179CA600(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2179CA76C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2179ABDB4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2179CA7A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2179CA7F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t LazyJSON.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v14 = *(*v2 + 80);
  v13 = *(v4 + 88);
  v12 = *(v4 + 96);
  type metadata accessor for LazyJSON.CodingKeys(255, v14, v13, v12);
  OUTLINED_FUNCTION_0_10();
  swift_getWitnessTable();
  v5 = sub_2179E9D30();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179E9EB0();
  v15 = v2[2];
  type metadata accessor for LazyLoader(0, v14, v13, v12);
  swift_getWitnessTable();
  sub_2179E9D20();
  return (*(v7 + 8))(v10, v5);
}

uint64_t LazyJSON.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_1_4();
  v2 = swift_allocObject();
  LazyJSON.init(from:)(a1);
  return v2;
}

uint64_t LazyJSON.init(from:)(void *a1)
{
  OUTLINED_FUNCTION_3_8();
  v10 = v3[11];
  v11 = v3[10];
  v9 = v3[12];
  type metadata accessor for LazyJSON.CodingKeys(255, v11, v10, v9);
  OUTLINED_FUNCTION_0_10();
  swift_getWitnessTable();
  v4 = sub_2179E9CD0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179E9E90();
  if (v12)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for LazyLoader(0, v11, v10, v9);
    swift_getWitnessTable();
    sub_2179E9CC0();
    v7 = OUTLINED_FUNCTION_4_9();
    v8(v7, v4);
    *(v1 + 16) = v13;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_2179CACD8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = LazyJSON.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

_BYTE *sub_2179CAD90(_BYTE *result, int a2, int a3)
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

uint64_t sub_2179CAE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = *(a3 + a4 - 24);
  v9[0] = *(a3 + a4 - 40);
  v9[1] = v6;
  v10 = v5;
  type metadata accessor for Store.Promises(255, v9);
  v7 = sub_2179E9A60();
  (*(*(v7 - 8) + 16))(v9, a1, v7);
  return sub_2179CB008(v9);
}

uint64_t sub_2179CAF1C@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_22();
  v4 = v3;
  swift_beginAccess();
  OUTLINED_FUNCTION_22();
  v6 = *(v5 + 112);
  v7 = *(v4 + 96);
  v10[0] = *(v4 + 80);
  v10[1] = v7;
  v11 = v6;
  type metadata accessor for Store.Promises(255, v10);
  OUTLINED_FUNCTION_9();
  sub_2179E9A60();
  OUTLINED_FUNCTION_1();
  return (*(v8 + 16))(a1, v1 + 32);
}

uint64_t sub_2179CB008(uint64_t a1)
{
  OUTLINED_FUNCTION_22();
  v4 = v3;
  swift_beginAccess();
  OUTLINED_FUNCTION_22();
  v6 = *(v5 + 112);
  v7 = *(v4 + 96);
  v10[0] = *(v4 + 80);
  v10[1] = v7;
  v11 = v6;
  type metadata accessor for Store.Promises(255, v10);
  OUTLINED_FUNCTION_9();
  sub_2179E9A60();
  OUTLINED_FUNCTION_1();
  (*(v8 + 40))(v1 + 32, a1);
  return swift_endAccess();
}

uint64_t Store.__allocating_init(database:)(uint64_t a1)
{
  v2 = swift_allocObject();
  Store.init(database:)(a1, v3, v4, v5);
  return v2;
}

uint64_t Store.init(database:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = *v4;
  *(v4 + 32) = 0;
  v8 = v4 + 32;
  *(v4 + 40) = 1;
  *(v4 + 16) = a1;
  v9 = v6[11];
  v10 = v6[14];
  v11 = Database.table<A>(_:)(v9, v9, v10, a4);
  if (v5)
  {

    OUTLINED_FUNCTION_8_7();
    type metadata accessor for Store.Promises(255, v12);
    OUTLINED_FUNCTION_9();
    sub_2179E9A60();
    OUTLINED_FUNCTION_1();
    (*(v13 + 8))(v8);
    OUTLINED_FUNCTION_8_7();
    type metadata accessor for Store(0, v14);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v4 + 24) = v11;

    sub_2179AA534();
    v23[8] = 0;
    swift_beginAccess();
    v15 = v7[10];
    v16 = v7[12];
    v17 = v7[13];
    v25 = v16;
    v24[0] = v15;
    v24[1] = v9;
    v24[2] = v16;
    v24[3] = v17;
    v24[4] = v10;
    type metadata accessor for Store.Promises(255, v24);
    OUTLINED_FUNCTION_9();
    sub_2179E9A60();
    OUTLINED_FUNCTION_1();
    (*(v18 + 40))(v8, v23);
    v19 = swift_endAccess();
    MEMORY[0x28223BE20](v19);
    sub_2179E93D0();
    v20 = swift_allocObject();
    v20[2] = v15;
    v20[3] = v9;
    v20[4] = v25;
    v20[5] = v17;
    v20[6] = v10;
    v21 = sub_2179E9380();
    sub_2179E9390();
  }

  return v4;
}

uint64_t sub_2179CB3F0(uint64_t a1, uint64_t a2)
{
  v5 = 0;

  v3 = Database.asyncWrite(_:block:)(&v5, sub_2179CD8EC, a2);

  return v3;
}

uint64_t sub_2179CB47C()
{
  sub_2179A6BC4();
  v0 = sub_2179ABDB4();
  sub_2179A750C(v0 & 1);
}

uint64_t sub_2179CB504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_280B1DB60 != -1)
  {
    swift_once();
  }

  v3 = qword_280B1FEE8;
  v4 = sub_2179E9920();
  sub_21799ABE4(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2179EA820;
  v6 = sub_2179E9EF0();
  v8 = v7;
  v9 = MEMORY[0x277D837D0];
  *(v5 + 56) = MEMORY[0x277D837D0];
  v10 = sub_21799C634();
  *(v5 + 64) = v10;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  sub_21799AC4C(0, &qword_280B1DBF8, MEMORY[0x277D84948]);
  sub_2179E9C10();
  *(v5 + 96) = v9;
  *(v5 + 104) = v10;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0xE000000000000000;
  sub_2179E93F0("Failed to create store, entity=%{public}@, error=%{public}@", 59, 2, &dword_217998000, v3, v4, v5);
}

uint64_t sub_2179CB6EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  sub_2179AB328();
  v6 = sub_2179AB354();

  if (!v2)
  {
    v22[2] = v6;
    v8 = sub_2179CB8CC(a1);
    v21 = &v21;
    v9 = MEMORY[0x28223BE20](v8);
    v16 = *(v5 + 80);
    v17 = *(v5 + 88);
    v18 = *(v5 + 104);
    v19 = v9;
    v20 = v10;
    v11 = sub_2179E9840();
    v12 = sub_21799AC4C(0, &qword_280B1DBF8, MEMORY[0x277D84948]);
    WitnessTable = swift_getWitnessTable();
    v14 = sub_2179A2E44(sub_2179CD920, &v15, v11, v16, v12, WitnessTable, MEMORY[0x277D84950], v22);

    *a2 = v14;
  }

  return result;
}

uint64_t sub_2179CB90C(uint64_t a1)
{
  sub_2179E90E0();
  swift_allocObject();
  sub_2179E90D0();
  v2 = sub_2179E90C0();
  v4 = v3;

  if (!v1)
  {
    sub_2179E92D0();
    swift_allocObject();
    sub_2179E92C0();
    sub_2179E92B0();

    return sub_2179B314C(v2, v4);
  }

  return result;
}

void sub_2179CBA4C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v26 = a2;
  v23 = *v4;
  v6 = *(v23 + 88);
  v7 = sub_2179E9A60();
  OUTLINED_FUNCTION_2();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  OUTLINED_FUNCTION_2();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v22 - v16;
  v18 = *a1;
  v24 = v4;
  v25 = v18;
  Database.read<A>(block:)(v12);
  if (!v3)
  {
    v19 = v26;
    if (__swift_getEnumTagSinglePayload(v12, 1, v6) == 1)
    {
      (*(v9 + 8))(v12, v7);
      v20 = 1;
      v21 = v19;
    }

    else
    {
      (*(v14 + 32))(v17, v12, v6);
      v21 = v19;
      sub_2179CB90C(v17);
      (*(v14 + 8))(v17, v6);
      v20 = 0;
    }

    __swift_storeEnumTagSinglePayload(v21, v20, 1, *(v23 + 80));
  }
}

uint64_t sub_2179CBCA0(uint64_t a1, uint64_t a2)
{
  sub_2179AB328();
  v6 = a2;
  v4[0] = 0;
  v4[1] = 0;
  v5 = -1;
  sub_2179B0748(&v6, v4);
}

uint64_t sub_2179CBDC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *a1;
  sub_2179AB328();
  v26 = a2;
  v24[0] = 0;
  v24[1] = 0;
  v25 = -1;
  v8 = sub_2179B4BC8(&v26, v24, 0, 1);

  if (!v3)
  {
    v24[0] = v8;
    v10 = sub_2179CBFCC(a1);
    v23 = &v23;
    v11 = MEMORY[0x28223BE20](v10);
    v18 = *(v7 + 80);
    v19 = *(v7 + 88);
    v20 = *(v7 + 104);
    v21 = v11;
    v22 = v12;
    v13 = sub_2179E9840();
    v14 = sub_21799AC4C(0, &qword_280B1DBF8, MEMORY[0x277D84948]);
    WitnessTable = swift_getWitnessTable();
    v16 = sub_2179A2E44(sub_2179CD884, &v17, v13, v18, v14, WitnessTable, MEMORY[0x277D84950], &v26);

    *a3 = v16;
  }

  return result;
}

void sub_2179CC00C(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v11 = *v7;
  HIBYTE(_28[0]) = 0;
  v12 = v11;
  Database.write(_:block:)(_28 + 7, sub_2179CC0D8, v13, a2, a3, a4, a5, a6, v13[0], v13[1], v7, a1, v13[4], _28[0], _28[1], _28[2], _28[3], _28[4], _28[5], _28[6]);
  if (!v8)
  {
    (*(*(*(v12 + 80) - 8) + 16))(a7, a1);
  }
}

uint64_t sub_2179CC11C(uint64_t a1)
{
  sub_2179E90E0();
  swift_allocObject();
  sub_2179E90D0();
  v2 = sub_2179E90C0();
  v4 = v3;

  if (!v1)
  {
    sub_2179E92D0();
    swift_allocObject();
    sub_2179E92C0();
    sub_2179E92B0();

    return sub_2179B314C(v2, v4);
  }

  return result;
}

uint64_t sub_2179CC2C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v21 = *(*a2 + 88);
  v5 = *(v21 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v18 - v7;
  v24 = v9;
  v11 = *(v10 + 80);
  v12 = *(v11 - 8);
  v19 = *(v12 + 64);
  MEMORY[0x28223BE20](v6);
  v14 = &v18 - v13;
  v15 = sub_2179E97C0();
  v26 = v15;
  v22 = (v12 + 8);
  v23 = (v12 + 16);
  v20 = (v5 + 8);
  while (1)
  {
    result = sub_2179E9820();
    if (v15 == result)
    {
      break;
    }

    v17 = sub_2179E9800();
    sub_2179E97E0();
    if (v17)
    {
      (*(v12 + 16))(v14, a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v15, v11);
    }

    else
    {
      result = sub_2179E9B20();
      if (v19 != 8)
      {
        __break(1u);
        return result;
      }

      v25 = result;
      (*v23)(v14, &v25, v11);
      swift_unknownObjectRelease();
    }

    sub_2179E9830();
    sub_2179B69CC();
    sub_2179CC11C(v14);
    (*v22)(v14, v11);
    if (v3)
    {
    }

    sub_2179B69F8(v8);
    v3 = 0;

    (*v20)(v8, v21);
    v15 = v26;
  }

  return result;
}

uint64_t sub_2179CC600(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v7 = *(*a1 + 88);
  OUTLINED_FUNCTION_2();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - v11;
  v13();
  sub_2179CC11C(a2);
  if (!v4)
  {
    a4(v12);
    (*(v9 + 8))(v12, v7);
  }
}

uint64_t sub_2179CC7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2179E4CE8();
  sub_2179CEADC(a2, a3);
}

uint64_t sub_2179CC878(uint64_t a1)
{
  sub_2179E4CE8();
  sub_2179CEBD4();
}

uint64_t Store.Promises.all()(uint64_t a1)
{
  sub_2179E9840();
  OUTLINED_FUNCTION_9();
  sub_2179E93C0();
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_14();
  return sub_2179E93A0();
}

uint64_t sub_2179CC94C(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2179CB66C();
    v8 = v7;

    v9 = v8;
    a1(&v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2179CCA70(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_2179E9A60();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = a6;
    sub_2179CBA4C(&v15, v12);

    a1(v12);
    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2179CCC04(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void), uint64_t a4)
{
  a3(255, *(a2 + 16));
  OUTLINED_FUNCTION_9();
  sub_2179E93C0();
  return sub_2179E93A0();
}

uint64_t sub_2179CCC8C(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2179CBD34();
    v8 = v7;

    v9 = v8;
    a1(&v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Store.Promises.save(_:)(uint64_t a1, uint64_t a2)
{
  sub_2179E93C0();
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_14();
  return sub_2179E93A0();
}

{
  sub_2179E9840();
  OUTLINED_FUNCTION_9();
  sub_2179E93C0();
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_14();
  return sub_2179E93A0();
}

uint64_t sub_2179CCE00(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2179CC00C(a6, v14, v15, v16, v17, v18, v12);

    a1(v12);
    return (*(v10 + 8))(v12, a7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2179CCFD0(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2179CC25C(a6);

    v9 = a6;
    a1(&v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Store.Promises.delete(_:)()
{
  sub_21799EC44();
  swift_allocObject();
  OUTLINED_FUNCTION_14();
  return sub_2179E93B0();
}

{
  sub_21799EC44();
  swift_allocObject();
  OUTLINED_FUNCTION_14();
  return sub_2179E93B0();
}

uint64_t sub_2179CD15C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2179CC5BC(a6, v9, v10, v11, v12, v13, v14, v15);

    return a1(v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2179CD2D0(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2179CC770(a6, a7, v11, v12, v13, v14, v15, v16);

    return a1(v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Store.Promises.deleteAll()()
{
  sub_21799EC44();
  swift_allocObject();
  OUTLINED_FUNCTION_14();
  return sub_2179E93B0();
}

uint64_t sub_2179CD444(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2179CC834();

    return a1(v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *Store.deinit()
{
  v1 = *v0;
  v2 = *v0;

  v3 = *(v1 + 112);
  v4 = *(v2 + 96);
  v7[0] = *(v2 + 80);
  v7[1] = v4;
  v8 = v3;
  type metadata accessor for Store.Promises(255, v7);
  OUTLINED_FUNCTION_9();
  sub_2179E9A60();
  OUTLINED_FUNCTION_1();
  (*(v5 + 8))(v0 + 4);
  return v0;
}

uint64_t Store.__deallocating_deinit()
{
  Store.deinit();

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of Store.save(_:)()
{
  OUTLINED_FUNCTION_21();
  return (*(v0 + 200))();
}

{
  OUTLINED_FUNCTION_21();
  return (*(v0 + 208))();
}

uint64_t dispatch thunk of Store.delete(_:)()
{
  OUTLINED_FUNCTION_21();
  return (*(v0 + 216))();
}

{
  OUTLINED_FUNCTION_21();
  return (*(v0 + 224))();
}

uint64_t sub_2179CD848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2179CD89C(uint64_t a1, void *a2)
{
  result = (*(v2 + 56))(a1);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t Column.__allocating_init(primaryKey:index:unique:default:onUpdate:)(char a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  Column.init(primaryKey:index:unique:default:onUpdate:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t sub_2179CD9A8()
{
  OUTLINED_FUNCTION_2_9();
  swift_getWitnessTable();
  return OUTLINED_FUNCTION_0();
}

uint64_t sub_2179CD9CC()
{
  OUTLINED_FUNCTION_2_9();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_9_0();

  return static ColumnType.createTableChain(for:ifNotExists:)(v0, v1, v2, v3);
}

uint64_t sub_2179CDA40()
{
  OUTLINED_FUNCTION_2_9();
  swift_getWitnessTable();
  return OUTLINED_FUNCTION_0();
}

uint64_t sub_2179CDA64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v4);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(*(a1 + 16) - 8) + 32))(a2, v6);
  }

  (*v6)();
}

uint64_t sub_2179CDB74()
{
  OUTLINED_FUNCTION_1_11();
  swift_getWitnessTable();
  return OUTLINED_FUNCTION_0();
}

uint64_t sub_2179CDB94(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_11();
  WitnessTable = swift_getWitnessTable();

  return static ColumnType.createTableChain(for:ifNotExists:)(a1, a2, v2, WitnessTable);
}

uint64_t sub_2179CDBEC()
{
  OUTLINED_FUNCTION_1_11();
  swift_getWitnessTable();
  return OUTLINED_FUNCTION_0();
}

uint64_t (*autoUpdate<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;

  return sub_2179CDDC8;
}

uint64_t sub_2179CDC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2179E9A60();
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return sub_2179AC6CC(v7);
}

uint64_t (*sub_2179CDD60())(uint64_t a1)
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_14_3();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t Column.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  Column.init(from:)(a1);
  return v2;
}

void *Column.init(from:)(void *a1)
{
  v3 = v1;
  v5 = *v1;
  v6 = *(v5 + 80);
  sub_2179E9A60();
  OUTLINED_FUNCTION_0_0();
  v28 = v7;
  v29 = v8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v9);
  v31 = &v28 - v10;
  v11 = *(v5 + 88);
  (*(v11 + 32))(v6, v11);
  OUTLINED_FUNCTION_8_8();
  v13 = *(v12 + 104);
  __swift_storeEnumTagSinglePayload(v3 + v13, 1, 1, v6);
  OUTLINED_FUNCTION_8_8();
  *(v3 + *(v14 + 112)) = 0;
  OUTLINED_FUNCTION_8_8();
  *(v3 + *(v15 + 120)) = 0;
  OUTLINED_FUNCTION_8_8();
  *(v3 + *(v16 + 128)) = 0;
  OUTLINED_FUNCTION_8_8();
  type metadata accessor for Column.Func(0, v6, v11, v17);
  OUTLINED_FUNCTION_6_6();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  OUTLINED_FUNCTION_8_8();
  OUTLINED_FUNCTION_6_6();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179E9E80();
  if (v2)
  {
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v30, v30[3]);
    v26 = v31;
    sub_2179E9D80();
    __swift_storeEnumTagSinglePayload(v26, 0, 1, v6);
    OUTLINED_FUNCTION_14_3();
    swift_beginAccess();
    (*(v29 + 40))(v3 + v13, v26, v28);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_2179CE0DC(void *a1)
{
  v3 = v1;
  v5 = *v3;
  v6 = sub_2179E9A60();
  OUTLINED_FUNCTION_0_0();
  v8 = v7;
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_13_4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179E9EA0();
  sub_2179B03D8(v2);
  __swift_mutable_project_boxed_opaque_existential_1(v11, v11[3]);
  v11[6] = *(*(v5 + 88) + 16);
  swift_getWitnessTable();
  sub_2179E9DA0();
  (*(v8 + 8))(v2, v6);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_2179CE298@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = Column.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t Column.description.getter()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 80);
  v2 = sub_2179E9A60();
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - v9;
  OUTLINED_FUNCTION_2();
  v12 = v11;
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v13);
  v15 = v18 - v14;
  sub_2179B03D8(v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v1) == 1)
  {
    (*(v4 + 8))(v10, v2);
    sub_2179B03D8(v8);
    return sub_2179E9660();
  }

  else
  {
    (*(v12 + 32))(v15, v10, v1);
    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    sub_2179E9D60();
    v16 = v18[0];
    (*(v12 + 8))(v15, v1);
  }

  return v16;
}

uint64_t sub_2179CE640(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_2179CE764(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_2179CE928()
{
  OUTLINED_FUNCTION_3_9();
  swift_getWitnessTable();
  return OUTLINED_FUNCTION_0();
}

uint64_t sub_2179CE948()
{
  OUTLINED_FUNCTION_3_9();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_9_0();

  return static ColumnType.createTableChain(for:ifNotExists:)(v0, v1, v2, v3);
}

uint64_t sub_2179CE998()
{
  v2 = v0;
  v21[9] = 2;
  OUTLINED_FUNCTION_0_7();
  v4 = *(v3 + 88);
  OUTLINED_FUNCTION_0_7();
  v6 = *(v5 + 80);
  v8 = v7(v6, v4);
  swift_beginAccess();
  v10 = *(v8 + 24);
  v9 = *(v8 + 32);

  if (v9)
  {
    v13 = *(v4 + 8);
    type metadata accessor for Statement(0, v6, *(v13 + 24), v12);
    v14 = sub_2179E7880(v10, v9);

    sub_2179E7750(v14, v6, v13, v15);
    OUTLINED_FUNCTION_5_6();
    sub_2179A70AC(v2 + 16, v21);
    OUTLINED_FUNCTION_4_11();
    v20 = sub_2179AC76C(v16, v17, v18, v19);
    OUTLINED_FUNCTION_1_2(v20);
    result = OUTLINED_FUNCTION_0_8();
    if (!v1)
    {
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2179CEADC(uint64_t a1, uint64_t a2)
{
  v6 = v2 + 16;
  OUTLINED_FUNCTION_0_7();
  v8 = *(v7 + 80);
  OUTLINED_FUNCTION_0_7();
  v9 = OUTLINED_FUNCTION_3_10();
  type metadata accessor for Statement(v9, v8, v10, v11);
  v20 = 2;
  v12 = sub_2179E7880(a1, a2);
  v14 = sub_2179E7750(v12, v8, v2, v13);
  v16 = v15;

  sub_2179A70AC(v6, v19);
  v17 = sub_2179AC76C(&v20, v14, v16, v19);
  OUTLINED_FUNCTION_1_2(v17);
  result = OUTLINED_FUNCTION_0_8();
  if (!v3)
  {
  }

  return result;
}

uint64_t sub_2179CEBD4()
{
  OUTLINED_FUNCTION_0_7();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_0_7();
  v4 = OUTLINED_FUNCTION_3_10();
  type metadata accessor for Statement(v4, v3, v5, v6);
  v15[5] = 2;
  v7 = sub_2179E7798(v3, v0);
  sub_2179E7750(v7, v3, v0, v8);
  OUTLINED_FUNCTION_5_6();
  sub_2179A70AC(v0 + 16, v15);
  OUTLINED_FUNCTION_4_11();
  v13 = sub_2179AC76C(v9, v10, v11, v12);
  OUTLINED_FUNCTION_1_2(v13);
  result = OUTLINED_FUNCTION_0_8();
  if (!v1)
  {
  }

  return result;
}

uint64_t sub_2179CECA0(uint64_t *a1)
{
  v3 = *a1;
  OUTLINED_FUNCTION_0_7();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_0_7();
  v6 = OUTLINED_FUNCTION_3_10();
  type metadata accessor for Statement(v6, v5, v7, v8);
  v17[5] = 2;
  v17[0] = v3;
  v9 = sub_2179E7824();
  sub_2179E7750(v9, v5, v1, v10);
  OUTLINED_FUNCTION_5_6();
  sub_2179A70AC(v1 + 16, v17);
  OUTLINED_FUNCTION_4_11();
  v15 = sub_2179AC76C(v11, v12, v13, v14);
  OUTLINED_FUNCTION_1_2(v15);
  result = OUTLINED_FUNCTION_0_8();
  if (!v2)
  {
  }

  return result;
}

uint64_t Delete.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

void sub_2179CEF5C()
{
  OUTLINED_FUNCTION_8_9();
  if (v4)
  {
    OUTLINED_FUNCTION_3_11();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_7_7();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_10();
    }
  }

  OUTLINED_FUNCTION_4_12();
  if (v3)
  {
    OUTLINED_FUNCTION_1_12(v7, &qword_27CB980C0, MEMORY[0x277D83E40]);
    v8 = OUTLINED_FUNCTION_11_5();
    OUTLINED_FUNCTION_6_7(v8);
    OUTLINED_FUNCTION_5_7(v9);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_9_6();
  if (v1)
  {
    if (v3 != v0 || &v11[32 * v2] <= v10)
    {
      memmove(v10, v11, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2179CF028()
{
  OUTLINED_FUNCTION_8_9();
  if (v4)
  {
    OUTLINED_FUNCTION_3_11();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_7_7();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_10();
    }
  }

  OUTLINED_FUNCTION_4_12();
  if (v3)
  {
    sub_2179AB038(0, &qword_27CB980B0, sub_2179CF3EC);
    v7 = OUTLINED_FUNCTION_11_5();
    OUTLINED_FUNCTION_6_7(v7);
    OUTLINED_FUNCTION_5_7(v8);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v3 != v0 || v0 + 32 + 8 * v2 <= (v3 + 32))
    {
      v10 = OUTLINED_FUNCTION_12_6();
      memmove(v10, v11, v12);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_2179CF3EC(0);
    OUTLINED_FUNCTION_12_6();
    swift_arrayInitWithCopy();
  }
}

void sub_2179CF11C()
{
  OUTLINED_FUNCTION_8_9();
  if (v4)
  {
    OUTLINED_FUNCTION_3_11();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_7_7();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_10();
    }
  }

  OUTLINED_FUNCTION_4_12();
  if (v3)
  {
    OUTLINED_FUNCTION_1_12(v7, &qword_27CB97E38, &type metadata for SearchMatchPhrase);
    v8 = OUTLINED_FUNCTION_11_5();
    OUTLINED_FUNCTION_6_7(v8);
    OUTLINED_FUNCTION_5_7(v9);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_9_6();
  if (v1)
  {
    if (v3 != v0 || &v11[8 * v2] <= v10)
    {
      memmove(v10, v11, 8 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2179CF1E8()
{
  OUTLINED_FUNCTION_8_9();
  if (v4)
  {
    OUTLINED_FUNCTION_3_11();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_7_7();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_10();
    }
  }

  OUTLINED_FUNCTION_4_12();
  if (v3)
  {
    OUTLINED_FUNCTION_1_12(v7, qword_27CB980C8, &type metadata for RawEntity);
    v8 = swift_allocObject();
    v9 = _swift_stdlib_malloc_size(v8);
    v8[2] = v2;
    v8[3] = 2 * v9 - 64;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_9_6();
  if (v1)
  {
    if (v8 != v0 || &v11[v2] <= v10)
    {
      memmove(v10, v11, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v10, v11, v2);
  }
}

char *sub_2179CF2EC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[4 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_11(a3, result);
  }

  return result;
}

char *sub_2179CF30C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_11(a3, result);
  }

  return result;
}

char *sub_2179CF32C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_11(a3, result);
  }

  return result;
}

char *sub_2179CF354(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_11(a3, result);
  }

  return result;
}

void sub_2179CF3EC(uint64_t a1)
{
  if (!qword_27CB980B8)
  {
    v2 = sub_2179A0730();
    IndexCommand = type metadata accessor for CreateIndexCommand(a1, &type metadata for Versions.Entity, v2, v3);
    if (!v5)
    {
      atomic_store(IndexCommand, &qword_27CB980B8);
    }
  }
}

uint64_t SearchTable.create.getter@<X0>(void *x8_0@<X8>)
{
  sub_2179A70AC(v2, v9);
  sub_2179A70AC(v2, v8);
  v4 = sub_2179A0BF8(v8);
  return sub_2179CF644(v9, v4, v5, v6, x8_0);
}

uint64_t SearchTable.drop.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Drop(0, *(a1 + 16), *(*(a1 + 24) + 8), a4);
  sub_2179A70AC(v4, v6);
  return sub_2179A8074(v6);
}

uint64_t sub_2179CF5EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2179CF644@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  result = sub_2179A80B8(a1, a5);
  a5[5] = a2;
  a5[6] = a3;
  a5[7] = a4;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SearchTable.Create.table(ifNotExists:shouldVersion:)(Swift::Bool ifNotExists, Swift::Bool shouldVersion)
{
  v5 = v3;
  v6 = v2;
  v7 = v3[5];
  if (v7 && shouldVersion)
  {
    v18[1] = v18;
    v8 = v3[6];
    v9 = v3[7];
    v10 = *(v2 + 16);
    v11 = MEMORY[0x28223BE20](ifNotExists);
    v12 = *(v6 + 24);
    v15[2] = v10;
    v15[3] = v12;
    v15[4] = v5;
    v16 = v11 & 1;
    v17 = 1;
    v13 = *(v12 + 8);

    sub_2179A793C(v10, v5, sub_2179CFEB0, v15, v7, v8, v9, v10, v13);

    if (v4)
    {
      return;
    }
  }

  else
  {
    v10 = *(v2 + 16);
    v12 = *(v2 + 24);
    sub_2179CF824(v5, ifNotExists, shouldVersion, v10, v12);
    if (v4)
    {
      return;
    }
  }

  v14 = sub_2179DC0F8(v10, v12);
  sub_2179CFC60(v14, v6);
}

uint64_t sub_2179CF824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a3;
  v8 = type metadata accessor for SearchTable.Create(0, a4, a5, a4);
  sub_2179CF8AC(a2, v6, v8);
  sub_2179AC7D4(v9);

  if (!v5)
  {
  }

  return result;
}

void sub_2179CF8AC(uint64_t a1, int a2, uint64_t a3)
{
  v45 = a2;
  v4 = a1;
  v5 = *(a3 + 16);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v10 = *(*(v9 + 8) + 24);
  (*(v10 + 8))(v5, v10);
  type metadata accessor for Statement(0, v5, v10, v11);
  v49 = 0;
  v44 = v4;
  v12 = sub_2179BEB54();
  v14 = sub_2179BF4CC(v12, v5, v9, v13);
  v16 = v15;

  v43 = v3;
  sub_2179A70AC(v3, &v47);
  v40 = sub_2179AC76C(&v49, v14, v16, &v47);
  v41 = v7;
  v46 = v5;
  v17 = sub_2179DC294(v5, v9);
  v18 = *(v17 + 16);
  if (v18)
  {
    v49 = MEMORY[0x277D84F90];
    sub_2179A9394(0, v18, 0);
    v19 = 0;
    v20 = v49;
    v21 = v17 + 32;
    while (v19 < *(v17 + 16))
    {
      sub_2179A9940(v21, &v47);
      v23 = sub_2179CFFE8(v47, *(&v47 + 1), v48, v43, v44 & 1, v45 & 1);
      if (v23)
      {
        v24 = v22;
        v25 = swift_allocObject();
        *(v25 + 16) = v23;
        *(v25 + 24) = v24;
        v23 = sub_2179D006C;
      }

      else
      {
        v25 = 0;
      }

      sub_2179AE2FC(&v47);
      v49 = v20;
      v27 = *(v20 + 16);
      v26 = *(v20 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_2179A9394((v26 > 1), v27 + 1, 1);
        v20 = v49;
      }

      ++v19;
      *(v20 + 16) = v27 + 1;
      v28 = v20 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
      v21 += 56;
      if (v18 == v19)
      {

        goto LABEL_12;
      }
    }
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
LABEL_12:
    v29 = 0;
    v30 = *(v20 + 16);
    v31 = MEMORY[0x277D84F90];
LABEL_13:
    v32 = (v20 + 32 + 16 * v29);
    while (1)
    {
      if (v30 == v29)
      {

        sub_2179A9E30(v31);

        (*(v42 + 8))(v41, v46);
        return;
      }

      if (v29 >= *(v20 + 16))
      {
        break;
      }

      ++v29;
      v33 = v32 + 2;
      v34 = *v32;
      v32 += 2;
      if (v34)
      {
        v35 = *(v33 - 1);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2179A94A4();
          v31 = v38;
        }

        v36 = *(v31 + 16);
        if (v36 >= *(v31 + 24) >> 1)
        {
          sub_2179A94A4();
          v31 = v39;
        }

        *(v31 + 16) = v36 + 1;
        v37 = v31 + 16 * v36;
        *(v37 + 32) = v34;
        *(v37 + 40) = v35;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2179CFC60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  *&v26 = 0x2835326D62;
  *(&v26 + 1) = 0xE500000000000000;
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v30 = MEMORY[0x277D84F90];
    sub_2179A920C(0, v5, 0);
    v8 = v30;
    v9 = a1 + 32;
    do
    {
      v29[0] = 0;
      v29[1] = 0xE000000000000000;
      sub_2179E9860();
      v30 = v8;
      v11 = *(v8 + 16);
      v10 = *(v8 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_2179A920C((v10 > 1), v11 + 1, 1);
        v8 = v30;
      }

      *(v8 + 16) = v11 + 1;
      v12 = v8 + 16 * v11;
      *(v12 + 32) = 0;
      *(v12 + 40) = 0xE000000000000000;
      v9 += 8;
      --v5;
    }

    while (v5);
    v4 = a2;
    v3 = v2;
    v6 = MEMORY[0x277D84F90];
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v29[0] = v8;
  sub_2179A5088();
  sub_2179A4B34();
  v13 = sub_2179E95F0();
  v15 = v14;

  MEMORY[0x21CEA9600](v13, v15);

  MEMORY[0x21CEA9600](41, 0xE100000000000000);
  v16 = *(v4 + 16);
  v17 = *(v4 + 24);
  type metadata accessor for Statement(0, v16, *(*(v17 + 8) + 24), v18);
  v29[0] = v6;
  v27 = MEMORY[0x277D837D0];
  v28 = &protocol witness table for String;
  v19 = sub_2179DA7F4(1802396018, 0xE400000000000000, &v26, v16, v17);
  v21 = v20;
  __swift_destroy_boxed_opaque_existential_1(&v26);
  sub_2179A70AC(v3, &v26);
  v22 = sub_2179AC76C(v29, v19, v21, &v26);
  sub_2179AC7D4(v22);

  if (!v25)
  {
  }

  return result;
}

uint64_t sub_2179CFED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_5TeaDB8VersionsVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2179CFF40(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2179CFF80(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_2179CFFE8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  swift_getDynamicType();
  return (*(a3[4] + 104))(a4, a5, a6);
}

uint64_t sub_2179D00C8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x797469746E65 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2179E9D70();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2179D0170(uint64_t a1)
{
  sub_2179E9E20();
  sub_2179BC06C();
  return sub_2179E9E40();
}

uint64_t sub_2179D01C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2179D00C8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2179D0218@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2179ABDB4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2179D024C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2179D02A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2179D02F4(uint64_t a1, uint64_t a2)
{
  v3 = (*(*(a2 + 8) + 32))();
  MEMORY[0x21CEA9600](1886221407, 0xE400000000000000);
  return v3;
}

uint64_t sub_2179D03DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 24);
  v13 = *(a2 + 16);
  type metadata accessor for MigratableEntity.CodingKeys(255, v13, v5, a4);
  OUTLINED_FUNCTION_0_12();
  swift_getWitnessTable();
  v6 = sub_2179E9D30();
  OUTLINED_FUNCTION_2();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179E9EB0();
  sub_2179E9D20();
  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_2179D0538@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a4;
  OUTLINED_FUNCTION_2();
  v33 = v7;
  MEMORY[0x28223BE20](v8);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MigratableEntity.CodingKeys(255, v10, v11, v12);
  OUTLINED_FUNCTION_0_12();
  swift_getWitnessTable();
  v35 = sub_2179E9CD0();
  OUTLINED_FUNCTION_2();
  v31 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  v32 = a3;
  v18 = type metadata accessor for MigratableEntity(0, a2, a3, v17);
  OUTLINED_FUNCTION_2();
  v29 = v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v28 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v23 = v36;
  sub_2179E9E90();
  if (!v23)
  {
    v36 = v18;
    v24 = v31;
    v26 = v33;
    v25 = v34;
    sub_2179E9CC0();
    (*(v24 + 8))(v16, v35);
    (*(v26 + 32))(v22, v25, a2);
    (*(v29 + 32))(v30, v22, v36);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2179D0868(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

_BYTE *sub_2179D0900(_BYTE *result, int a2, int a3)
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

uint64_t sub_2179D099C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2179D0A0C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
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
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
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

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_2179D0B48(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t CGRect.init(valueType:connection:)(uint64_t a1, void *a2)
{
  if (*(a1 + 16))
  {
    goto LABEL_45;
  }

  v4 = *a1;
  v3 = *(a1 + 8);
  v38 = 0;
  v39 = 0xE000000000000000;
  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v4 & 0xFFFFFFFFFFFFLL;
  }

  v34 = v4;
  v35 = v3;
  v36 = 0;
  v37 = v5;

  while (1)
  {
    v6 = sub_2179E9720();
    if (!v7)
    {
      break;
    }

    v8 = v6;
    v9 = v7;
    if (v6 != 91 || v7 != 0xE100000000000000)
    {
      v11 = sub_2179E9D70();
      v13 = v8 == 93 && v9 == 0xE100000000000000;
      if ((v11 & 1) == 0 && !v13 && (sub_2179E9D70() & 1) == 0)
      {
        MEMORY[0x21CEA95F0](v8, v9);
      }
    }
  }

  v15 = v38;
  v16 = v39;
  v34 = 44;
  v35 = 0xE100000000000000;
  MEMORY[0x28223BE20](v14);
  v30 = &v34;

  v17 = sub_2179D12B0(0x7FFFFFFFFFFFFFFFLL, 1, sub_2179D1638, &v29, v15, v16);
  v18 = *(v17 + 16);
  if (v18)
  {
    v32 = v4;
    v33 = a2;
    v34 = MEMORY[0x277D84F90];
    sub_2179C2118(0, v18, 0);
    v19 = v34;
    v20 = v17 + 56;
    do
    {

      v21 = sub_2179E9870();
      v23 = v22;
      v34 = v19;
      v25 = *(v19 + 16);
      v24 = *(v19 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_2179C2118((v24 > 1), v25 + 1, 1);
        v19 = v34;
      }

      *(v19 + 16) = v25 + 1;
      v26 = v19 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v23 & 1;
      v20 += 32;
      --v18;
    }

    while (v18);

    v4 = v32;
    a2 = v33;
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  v27 = *(v19 + 16);
  if (!v27)
  {
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (*(v19 + 40))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v27 == 1)
  {
    goto LABEL_38;
  }

  if (*(v19 + 56))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v27 < 3)
  {
    goto LABEL_39;
  }

  if ((*(v19 + 72) & 1) == 0)
  {
    if (v27 != 3)
    {
      if ((*(v19 + 88) & 1) == 0)
      {

        sub_2179AC53C(v4, v3, 0);
        return __swift_destroy_boxed_opaque_existential_1(a2);
      }

      goto LABEL_44;
    }

    goto LABEL_40;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  v31 = 0;
  v30 = 31;
  result = sub_2179E9C40();
  __break(1u);
  return result;
}

uint64_t CGRect.valueType.getter@<X0>(uint64_t a1@<X8>)
{
  sub_2179E9B10();

  sub_2179E9850();
  OUTLINED_FUNCTION_2_11();

  MEMORY[0x21CEA9600](44, 0xE100000000000000);
  sub_2179E9850();
  OUTLINED_FUNCTION_2_11();

  MEMORY[0x21CEA9600](5975133, 0xE300000000000000);
  sub_2179E9850();
  OUTLINED_FUNCTION_2_11();

  MEMORY[0x21CEA9600](44, 0xE100000000000000);
  sub_2179E9850();
  OUTLINED_FUNCTION_2_11();

  result = MEMORY[0x21CEA9600](23901, 0xE200000000000000);
  *a1 = 23387;
  *(a1 + 8) = 0xE200000000000000;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_2179D1240@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = CGRect.init(valueType:connection:)(a1, a2);
  *a3 = v5;
  a3[1] = v6;
  a3[2] = v7;
  a3[3] = v8;
  return result;
}

uint64_t sub_2179D126C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_2179E9D70() & 1;
  }
}

uint64_t sub_2179D12B0(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v43 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    sub_2179E9780();
    OUTLINED_FUNCTION_1_14();
    sub_2179CEF5C();
    v15 = v29;
    v8 = *(v29 + 16);
    v30 = *(v29 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v30 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v31 = (v15 + 32 * v8);
      v31[4] = v6;
      v31[5] = v10;
      v31[6] = v11;
      v31[7] = v12;
      return v15;
    }

LABEL_41:
    sub_2179CEF5C();
    v15 = v32;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v41 = MEMORY[0x277D84F90];
  v16 = 15;
  while (1)
  {
    v39 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v39;
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_0_13();
      v17 = sub_2179E9760();
      v11 = v18;
      v42[0] = v17;
      v42[1] = v18;
      v19 = v43(v42);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      OUTLINED_FUNCTION_0_13();
      v16 = sub_2179E96D0();
    }

    v22 = (v39 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v39 >> 14)
    {
      break;
    }

    v40 = sub_2179E9780();
    v35 = v24;
    v36 = v23;
    v34 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2179CEF5C();
      v41 = v27;
    }

    v12 = *(v41 + 16);
    v11 = v12 + 1;
    if (v12 >= *(v41 + 24) >> 1)
    {
      sub_2179CEF5C();
      v41 = v28;
    }

    *(v41 + 16) = v11;
    v26 = (v41 + 32 * v12);
    v26[4] = v40;
    v26[5] = v36;
    v26[6] = v35;
    v26[7] = v34;
LABEL_20:
    OUTLINED_FUNCTION_0_13();
    v16 = sub_2179E96D0();
    if ((v22 & 1) == 0 && *(v41 + 16) == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v41;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        sub_2179E9780();
        OUTLINED_FUNCTION_1_14();
        v15 = v41;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v30 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      sub_2179CEF5C();
      v15 = v33;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2179D1658(uint64_t a1)
{
  *(a1 + 8) = sub_2179D16C0(&qword_27CB981D0, MEMORY[0x277CBF280]);
  result = sub_2179D16C0(&qword_27CB981D8, MEMORY[0x277CBF268]);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2179D16C0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGRect();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2179D1704(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v14 = *a2;
  v15 = *(a2 + 8);
  v16 = *(a2 + 16);
  v20 = *a1;
  v18[0] = v14;
  v18[1] = v15;
  v19 = v16;
  sub_2179A22DC(v20);
  sub_2179A80BC(v14, v15, v16);
  return sub_2179D17CC(42, 0xE100000000000000, &v20, v18, a3, a4 & 1, a5, a6 & 1, a7, a8);
}

uint64_t OrderBy.reversed.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 ^ 1;
  return sub_2179AEC5C(v2, v3);
}

uint64_t sub_2179D17CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10)
{
  v23 = a6;
  v11 = *a3;
  v13 = *a4;
  v12 = *(a4 + 8);
  v14 = *(a4 + 16);
  if ((~*a3 & 0xF000000000000007) != 0)
  {
    v15 = sub_2179A9A0C(a1, a2, a3, a4, a5, a6, a7);
    v16 = v17;
    sub_2179B0CEC(v11);
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  if (v14 == 255)
  {
    v18 = 0;
    v20 = 0;
  }

  else
  {
    v18 = sub_2179AF97C();
    v20 = v19;
    sub_2179AEC68(v13, v12, v14);
  }

  return sub_2179D19C0(a1, a2, v15, v16, v18, v20, a5, v23 & 1, a7, a8 & 1, a9, a10);
}

uint64_t sub_2179D18E0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  v12 = *a2;
  v13 = *a3;
  v14 = *(a3 + 8);
  v15 = *(a3 + 16);
  sub_2179A5088();
  sub_2179A4B34();
  v16 = sub_2179E95F0();
  v18 = v17;
  v24 = v12;
  v22[0] = v13;
  v22[1] = v14;
  v23 = v15;
  sub_2179A22DC(v12);
  sub_2179A80BC(v13, v14, v15);
  return sub_2179D17CC(v16, v18, &v24, v22, a4, a5 & 1, a6, a7 & 1, a8, a9);
}

uint64_t sub_2179D19C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12)
{
  sub_2179A7E4C();
  v17 = v16;
  v18 = *(v16 + 16);
  v19 = *(v16 + 24) >> 1;
  v20 = v18 + 1;
  if (v19 <= v18)
  {
    sub_2179A7E4C();
    v17 = v58;
    v19 = *(v58 + 24) >> 1;
  }

  *(v17 + 16) = v20;
  v21 = v17 + 16 * v18;
  *(v21 + 32) = 0x5443454C4553;
  *(v21 + 40) = 0xE600000000000000;
  v22 = v18 + 2;
  if (v19 < (v18 + 2))
  {
    sub_2179A7E4C();
    v17 = v59;
  }

  *(v17 + 16) = v22;
  v23 = v17 + 16 * v20;
  *(v23 + 32) = a1;
  *(v23 + 40) = a2;
  if ((v18 + 3) > *(v17 + 24) >> 1)
  {
    sub_2179A7E4C();
    v17 = v60;
  }

  *(v17 + 16) = v18 + 3;
  v24 = v17 + 16 * v22;
  *(v24 + 32) = 1297044038;
  *(v24 + 40) = 0xE400000000000000;
  v25 = (*(a12 + 32))(a11, a12);
  v27 = v26;
  v28 = *(v17 + 16);
  v29 = v28 + 1;
  if (v28 >= *(v17 + 24) >> 1)
  {
    sub_2179A7E4C();
    v17 = v61;
  }

  *(v17 + 16) = v29;
  v30 = v17 + 16 * v28;
  *(v30 + 32) = v25;
  *(v30 + 40) = v27;
  if (a4)
  {
    v31 = v28 + 2;
    if ((v28 + 2) > *(v17 + 24) >> 1)
    {
      sub_2179A7E4C();
      v17 = v62;
    }

    *(v17 + 16) = v31;
    v32 = v17 + 16 * v29;
    *(v32 + 32) = 0x4552454857;
    *(v32 + 40) = 0xE500000000000000;
    if ((v28 + 3) > *(v17 + 24) >> 1)
    {
      sub_2179A7E4C();
      v17 = v63;
    }

    *(v17 + 16) = v28 + 3;
    v33 = v17 + 16 * v31;
    *(v33 + 32) = a3;
    *(v33 + 40) = a4;
  }

  if (a6)
  {
    v34 = *(v17 + 16);
    if (v34 >= *(v17 + 24) >> 1)
    {
      sub_2179A7E4C();
      v17 = v64;
    }

    *(v17 + 16) = v34 + 1;
    v35 = v17 + 16 * v34;
    *(v35 + 32) = a5;
    *(v35 + 40) = a6;
  }

  if (a8)
  {
    if (a10)
    {
      return v17;
    }

    v36 = *(v17 + 16);
    if (v36 >= *(v17 + 24) >> 1)
    {
      sub_2179A7E4C();
      v17 = v69;
    }

    *(v17 + 16) = v36 + 1;
    v37 = v17 + 16 * v36;
    *(v37 + 32) = 0x54494D494CLL;
    *(v37 + 40) = 0xE500000000000000;
    v38 = sub_2179E9D40();
    v40 = v39;
    v41 = *(v17 + 16);
    v42 = v41 + 1;
    if (v41 >= *(v17 + 24) >> 1)
    {
      sub_2179A7E4C();
      v17 = v70;
    }

    *(v17 + 16) = v42;
    v43 = v17 + 16 * v41;
    *(v43 + 32) = v38;
    *(v43 + 40) = v40;
    goto LABEL_31;
  }

  v44 = *(v17 + 16);
  if (v44 >= *(v17 + 24) >> 1)
  {
    sub_2179A7E4C();
    v17 = v65;
  }

  *(v17 + 16) = v44 + 1;
  v45 = v17 + 16 * v44;
  *(v45 + 32) = 0x54494D494CLL;
  *(v45 + 40) = 0xE500000000000000;
  v46 = sub_2179E9D40();
  v48 = v47;
  v49 = *(v17 + 16);
  v42 = v49 + 1;
  if (v49 >= *(v17 + 24) >> 1)
  {
    sub_2179A7E4C();
    v17 = v66;
  }

  *(v17 + 16) = v42;
  v50 = v17 + 16 * v49;
  *(v50 + 32) = v46;
  *(v50 + 40) = v48;
  if ((a10 & 1) == 0)
  {
LABEL_31:
    if (v42 >= *(v17 + 24) >> 1)
    {
      sub_2179A7E4C();
      v17 = v67;
    }

    *(v17 + 16) = v42 + 1;
    v51 = v17 + 16 * v42;
    *(v51 + 32) = 0x54455346464FLL;
    *(v51 + 40) = 0xE600000000000000;
    v52 = sub_2179E9D40();
    v54 = v53;
    v55 = *(v17 + 16);
    if (v55 >= *(v17 + 24) >> 1)
    {
      sub_2179A7E4C();
      v17 = v68;
    }

    *(v17 + 16) = v55 + 1;
    v56 = v17 + 16 * v55;
    *(v56 + 32) = v52;
    *(v56 + 40) = v54;
  }

  return v17;
}

uint64_t sub_2179D1E78(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  v11 = *a2;
  v12 = *a3;
  v13 = *(a3 + 8);
  v24 = 0x202C6469776F72;
  v25 = 0xE700000000000000;
  if (a1)
  {
    v23 = a1;
    sub_2179A5088();
    sub_2179A4B34();

    v14 = sub_2179E95F0();
    v16 = v15;
  }

  else
  {
    v16 = 0xE100000000000000;
    v14 = 42;
  }

  MEMORY[0x21CEA9600](v14, v16);

  v17 = v24;
  v18 = v25;
  v23 = v11;
  v24 = v12;
  LOWORD(v25) = v13;
  sub_2179D20F0(v11);
  sub_2179D2108(v12, v13);
  return sub_2179D1FB0(v17, v18, &v23, &v24, a4, a5 & 1, a6, a7 & 1, a8, a9);
}

uint64_t sub_2179D1FB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10)
{
  v12 = *a3;
  v13 = *a4;
  v14 = *(a4 + 8);
  if ((~*a3 & 0xF000000000000007) != 0)
  {
    v17 = type metadata accessor for SearchExpression(0, a9, a10, a4);
    v15 = sub_2179C10B8(v17, v18, v19, v20, v21, v22, v23);
    v16 = v24;
    sub_2179D2150(v12);
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  if (v14 == 0xFF)
  {
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v27 = type metadata accessor for SearchOrder(0, a9, a10, a4);
    v25 = sub_2179E7BE8(v27);
    v26 = v28;
    sub_2179D212C(v13, v14);
  }

  return sub_2179D19C0(a1, a2, v15, v16, v25, v26, a5, a6 & 1, a7, a8 & 1, a9, *(a10 + 8));
}

uint64_t sub_2179D20F0(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_2179D2108(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_2179D2120(result, a2 & 1);
  }

  return result;
}

uint64_t sub_2179D2120(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_2179D212C(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_2179D2144(result, a2 & 1);
  }

  return result;
}

uint64_t sub_2179D2144(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_2179D2150(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t RowID.wrappedValue.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 28));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 28));
  return v2;
}

uint64_t RowID.__allocating_init()()
{
  OUTLINED_FUNCTION_1_4();
  v0 = swift_allocObject();
  RowID.init()();
  return v0;
}

uint64_t RowID.init()()
{
  sub_2179D2228(0);
  v1 = swift_allocObject();
  *(v1 + 28) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v0 + 16) = v1;
  return v0;
}

void sub_2179D2228(uint64_t a1)
{
  if (!qword_280B1C968)
  {
    sub_2179D2290();
    type metadata accessor for os_unfair_lock_s();
    v1 = sub_2179E9B40();
    if (!v2)
    {
      atomic_store(v1, &qword_280B1C968);
    }
  }
}

void sub_2179D2290()
{
  if (!qword_280B1C990)
  {
    v0 = sub_2179E9A60();
    if (!v1)
    {
      atomic_store(v0, &qword_280B1C990);
    }
  }
}

uint64_t RowID.__deallocating_deinit()
{

  OUTLINED_FUNCTION_1_4();

  return swift_deallocClassInstance();
}

uint64_t sub_2179D2330(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2179E9D70();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2179D23A4(uint64_t a1)
{
  sub_2179E9E20();
  MEMORY[0x21CEA9D40](0);
  return sub_2179E9E40();
}

uint64_t sub_2179D23F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2179D2330(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2179D2430(uint64_t a1)
{
  v2 = sub_2179D2780();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2179D246C(uint64_t a1)
{
  v2 = sub_2179D2780();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RowID.__allocating_init(from:)(void *a1)
{
  v2 = OUTLINED_FUNCTION_1_1();
  sub_2179D2A3C(v2, v3, v4);
  v27 = v5;
  v25 = *(v5 - 8);
  v6 = *(v25 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v23 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  OUTLINED_FUNCTION_1_4();
  v10 = swift_allocObject();
  sub_2179D2228(0);
  v11 = swift_allocObject();
  *(v11 + 28) = 0;
  v24 = (v11 + 28);
  *(v11 + 16) = 0;
  *(v11 + 24) = 1;
  *(v10 + 16) = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179D2780();
  v26 = v9;
  v12 = v28;
  sub_2179E9E90();
  if (v12)
  {

    v21 = a1;
  }

  else
  {
    v28 = a1;
    v13 = v25;
    v14 = v23;
    v15 = v27;
    (*(v25 + 16))(v23, v26, v27);
    v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v17 = swift_allocObject();
    v18 = (*(v13 + 32))(v17 + v16, v14, v15);
    MEMORY[0x28223BE20](v18);
    *(&v22 - 2) = sub_2179D2890;
    *(&v22 - 1) = v17;
    v19 = v24;
    os_unfair_lock_lock(v24);
    sub_2179D28FC(v11 + 16);
    os_unfair_lock_unlock(v19);

    (*(v13 + 8))(v26, v27);

    v21 = v28;
  }

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v10;
}

unint64_t sub_2179D2780()
{
  result = qword_27CB981E8;
  if (!qword_27CB981E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB981E8);
  }

  return result;
}

uint64_t sub_2179D27D4()
{
  sub_2179D2290();
  sub_2179D2A3C(0, &qword_27CB981E0, MEMORY[0x277D844C8]);
  sub_2179D325C(&qword_27CB98218, MEMORY[0x277D83BB8], MEMORY[0x277D84F58]);
  result = sub_2179E9CC0();
  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2179D2890()
{
  v0 = OUTLINED_FUNCTION_1_1();
  sub_2179D2A3C(v0, v1, v2);
  return sub_2179D27D4();
}

uint64_t sub_2179D28FC(uint64_t a1)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
  }

  return result;
}

uint64_t RowID.encode(to:)(void *a1)
{
  v2 = v1;
  sub_2179D2A3C(0, &qword_27CB981F0, MEMORY[0x277D84538]);
  swift_allocBox();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179D2780();
  sub_2179E9EB0();
  v4 = *(v2 + 16);
  os_unfair_lock_lock(v4 + 7);

  sub_2179D2BB0(&v4[4]);
  os_unfair_lock_unlock(v4 + 7);
}

void sub_2179D2A3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2179D2780();
    v7 = a3(a1, &type metadata for RowID.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2179D2AA0(uint64_t a1, char a2, uint64_t a3)
{
  sub_2179D2A3C(0, &qword_27CB981F0, MEMORY[0x277D84538]);
  swift_projectBox();
  swift_beginAccess();
  sub_2179D2290();
  sub_2179D325C(&qword_27CB98210, MEMORY[0x277D83B90], MEMORY[0x277D84F40]);
  sub_2179E9D20();
  return swift_endAccess();
}

uint64_t sub_2179D2BE4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = RowID.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t RowID.description.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 7);
  os_unfair_lock_unlock(v1 + 7);
  sub_2179D2290();
  return sub_2179E9660();
}

BOOL static RowID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  os_unfair_lock_lock((v3 + 28));
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  os_unfair_lock_unlock((v3 + 28));
  if (v5)
  {
    return 1;
  }

  v6 = *(a2 + 16);
  os_unfair_lock_lock((v6 + 28));
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  os_unfair_lock_unlock((v6 + 28));
  return (v8 & 1) != 0 || v4 == v7;
}

void sub_2179D2D58(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 28));
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  os_unfair_lock_unlock((v3 + 28));
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  if (v5)
  {
    v7 = 5;
  }

  else
  {
    v7 = 1;
  }

  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
}

void sub_2179D2DB4(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
}

void sub_2179D2DC4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 == 255)
  {
    v7 = *(v1 + 16);
  }

  else
  {
    v3 = *a1;
    v4 = *(a1 + 8);
    if (v2 != 5 || *a1 != 0)
    {
      v6 = *(v1 + 16);
      MEMORY[0x28223BE20](a1);
      sub_2179AC430(v3, v4, v2);
      os_unfair_lock_lock(v6 + 7);
      sub_2179D3238(&v6[4]);
      os_unfair_lock_unlock(v6 + 7);
      sub_2179AA22C(v3, v4, v2);
      return;
    }

    v7 = *(v1 + 16);
    sub_2179AC430(0, 0, 5);
  }

  os_unfair_lock_lock((v7 + 28));
  *(v7 + 16) = 0;
  *(v7 + 24) = 1;

  os_unfair_lock_unlock((v7 + 28));
}

uint64_t sub_2179D2EF4(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
    *result = a2;
    *(result + 8) = 0;
  }

  else
  {
    result = sub_2179E9C40();
    __break(1u);
  }

  return result;
}

uint64_t RowID.saveChain(for:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 7);
  os_unfair_lock_unlock(v1 + 7);
  return 0;
}

_BYTE *storeEnumTagSinglePayload for RowID.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2179D3134()
{
  result = qword_27CB981F8;
  if (!qword_27CB981F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB981F8);
  }

  return result;
}

unint64_t sub_2179D318C()
{
  result = qword_27CB98200;
  if (!qword_27CB98200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB98200);
  }

  return result;
}

unint64_t sub_2179D31E4()
{
  result = qword_27CB98208;
  if (!qword_27CB98208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB98208);
  }

  return result;
}

uint64_t sub_2179D325C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_2179D2290();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t FastEntity.__allocating_init<A>(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1_4();
  v2 = swift_allocObject();
  FastEntity.init<A>(_:)(a1);
  return v2;
}

uint64_t FastEntity.init<A>(_:)(uint64_t a1)
{
  sub_2179A2C2C(0);
  v2 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_3_12(v2, xmmword_2179EA830);
  v2[2].n128_u64[0] = sub_2179AE120(v3);
  v2[2].n128_u64[1] = v4;

  *(v1 + 16) = v2;
  return v1;
}

uint64_t FastEntity.__allocating_init<A, B>(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_4();
  v4 = swift_allocObject();
  FastEntity.init<A, B>(_:_:)(a1, a2);
  return v4;
}

uint64_t FastEntity.init<A, B>(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_2179A2C2C(0);
  v3 = swift_allocObject();
  v4 = OUTLINED_FUNCTION_3_12(v3, xmmword_2179EA820);
  v3[2].n128_u64[0] = sub_2179AE120(v4);
  v3[2].n128_u64[1] = v5;
  v3[5].n128_u64[1] = sub_2179AE120(&v3[6].n128_u64[1]);
  v3[6].n128_u64[0] = v6;

  *(v2 + 16) = v3;
  return v2;
}

uint64_t FastEntity.__allocating_init<A, B, C>(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_4();
  v6 = swift_allocObject();
  FastEntity.init<A, B, C>(_:_:_:)(a1, a2, a3);
  return v6;
}

uint64_t FastEntity.__allocating_init<A, B, C, D>(_:_:_:_:)()
{
  OUTLINED_FUNCTION_1_4();
  v0 = swift_allocObject();
  FastEntity.init<A, B, C, D>(_:_:_:_:)();
  return v0;
}

uint64_t FastEntity.__allocating_init<A, B, C, D, E>(_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_7_8();
  OUTLINED_FUNCTION_1_4();
  v0 = swift_allocObject();
  FastEntity.init<A, B, C, D, E>(_:_:_:_:_:)();
  return v0;
}

uint64_t FastEntity.__allocating_init<A, B, C, D, E, F>(_:_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_1_4();
  v0 = swift_allocObject();
  FastEntity.init<A, B, C, D, E, F>(_:_:_:_:_:_:)();
  return v0;
}

uint64_t FastEntity.__allocating_init<A, B, C, D, E, F, G>(_:_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_4_13();
  v13 = v12;
  v15 = v14;
  OUTLINED_FUNCTION_1_4();
  v16 = swift_allocObject();
  FastEntity.init<A, B, C, D, E, F, G>(_:_:_:_:_:_:_:)(v15, v13, v10, v9, v8, v7, a7);
  return v16;
}

uint64_t FastEntity.init<A, B, C, D, E, F, G>(_:_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_2179A2C2C(0);
  v8 = swift_allocObject();
  v9 = OUTLINED_FUNCTION_3_12(v8, xmmword_2179ECE70);
  v10 = sub_2179AE120(v9);
  v12 = OUTLINED_FUNCTION_24_0(v10, v11);
  v13 = sub_2179AE120(v12);
  v15 = OUTLINED_FUNCTION_23_2(v13, v14);
  v16 = sub_2179AE120(v15);
  v18 = OUTLINED_FUNCTION_22_2(v16, v17);
  v19 = sub_2179AE120(v18);
  v21 = OUTLINED_FUNCTION_21_2(v19, v20);
  v22 = sub_2179AE120(v21);
  v24 = OUTLINED_FUNCTION_20_1(v22, v23);
  v25 = sub_2179AE120(v24);
  v27 = OUTLINED_FUNCTION_19_3(v25, v26);
  v8[23].n128_u64[0] = sub_2179AE120(v27);
  v8[23].n128_u64[1] = v28;

  *(v7 + 16) = v8;
  return v7;
}

uint64_t FastEntity.__allocating_init<A, B, C, D, E, F, G, H>(_:_:_:_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_1_4();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_1_16();
  FastEntity.init<A, B, C, D, E, F, G, H>(_:_:_:_:_:_:_:_:)();
  return v0;
}

void FastEntity.init<A, B, C, D, E, F, G, H>(_:_:_:_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_28_0();
  sub_2179A2C2C(0);
  v1 = swift_allocObject();
  v2 = OUTLINED_FUNCTION_3_12(v1, xmmword_2179ECE80);
  v3 = sub_2179AE120(v2);
  v5 = OUTLINED_FUNCTION_24_0(v3, v4);
  v6 = sub_2179AE120(v5);
  v8 = OUTLINED_FUNCTION_23_2(v6, v7);
  v9 = sub_2179AE120(v8);
  v11 = OUTLINED_FUNCTION_22_2(v9, v10);
  v12 = sub_2179AE120(v11);
  v14 = OUTLINED_FUNCTION_21_2(v12, v13);
  v15 = sub_2179AE120(v14);
  v17 = OUTLINED_FUNCTION_20_1(v15, v16);
  v18 = sub_2179AE120(v17);
  v20 = OUTLINED_FUNCTION_19_3(v18, v19);
  v1[23].n128_u64[0] = sub_2179AE120(v20);
  v1[23].n128_u64[1] = v21;
  v1[26].n128_u64[1] = sub_2179AE120(&v1[27].n128_u64[1]);
  v1[27].n128_u64[0] = v22;

  *(v0 + 16) = v1;
  OUTLINED_FUNCTION_26_0();
}

void FastEntity.init<A, B, C, D, E, F, G, H, I>(_:_:_:_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_28_0();
  sub_2179A2C2C(0);
  v24 = swift_allocObject();
  v25 = OUTLINED_FUNCTION_3_12(v24, xmmword_2179ECE90);
  v26 = sub_2179AE120(v25);
  v28 = OUTLINED_FUNCTION_24_0(v26, v27);
  v29 = sub_2179AE120(v28);
  v31 = OUTLINED_FUNCTION_23_2(v29, v30);
  v32 = sub_2179AE120(v31);
  v34 = OUTLINED_FUNCTION_22_2(v32, v33);
  v35 = sub_2179AE120(v34);
  v37 = OUTLINED_FUNCTION_21_2(v35, v36);
  v38 = sub_2179AE120(v37);
  v40 = OUTLINED_FUNCTION_20_1(v38, v39);
  v41 = sub_2179AE120(v40);
  v43 = OUTLINED_FUNCTION_19_3(v41, v42);
  v24[23].n128_u64[0] = sub_2179AE120(v43);
  v24[23].n128_u64[1] = v44;
  v24[26].n128_u64[1] = sub_2179AE120(&v24[27].n128_u64[1]);
  v24[27].n128_u64[0] = v45;
  v24[30].n128_u64[0] = sub_2179AE120(v24[31].n128_u64);
  v24[30].n128_u64[1] = v46;

  *(v23 + 16) = v24;
  OUTLINED_FUNCTION_26_0();
}

uint64_t FastEntity.__allocating_init<A, B, C, D, E, F, G, H, I, J>(_:_:_:_:_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_1_4();
  v10 = swift_allocObject();
  v11 = OUTLINED_FUNCTION_1_16();
  FastEntity.init<A, B, C, D, E, F, G, H, I, J>(_:_:_:_:_:_:_:_:_:_:)(v11, v12, v13, v14, v15, v16, v17, a8, a9, a10);
  return v10;
}

uint64_t FastEntity.init<A, B, C, D, E, F, G, H, I, J>(_:_:_:_:_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_2179A2C2C(0);
  v10 = swift_allocObject();
  v11 = OUTLINED_FUNCTION_3_12(v10, xmmword_2179ECEA0);
  v12 = sub_2179AE120(v11);
  v14 = OUTLINED_FUNCTION_14_4(v12, v13);
  v15 = sub_2179AE120(v14);
  v17 = OUTLINED_FUNCTION_13_5(v15, v16);
  v18 = sub_2179AE120(v17);
  v20 = OUTLINED_FUNCTION_12_7(v18, v19);
  v21 = sub_2179AE120(v20);
  v23 = OUTLINED_FUNCTION_11_6(v21, v22);
  v24 = sub_2179AE120(v23);
  v26 = OUTLINED_FUNCTION_10_8(v24, v25);
  v27 = sub_2179AE120(v26);
  v29 = OUTLINED_FUNCTION_8_10(v27, v28);
  v30 = sub_2179AE120(v29);
  v32 = OUTLINED_FUNCTION_17_3(v30, v31);
  v33 = sub_2179AE120(v32);
  v35 = OUTLINED_FUNCTION_16_2(v33, v34);
  v36 = sub_2179AE120(v35);
  v38 = OUTLINED_FUNCTION_15_4(v36, v37);
  v10[33].n128_u64[1] = sub_2179AE120(v38);
  v10[34].n128_u64[0] = v39;

  result = v41;
  *(v41 + 16) = v10;
  return result;
}

void FastEntity.init<A, B, C, D, E, F, G, H, I, J, K>(_:_:_:_:_:_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_4_13();
  sub_2179A2C2C(0);
  v30 = swift_allocObject();
  v31 = OUTLINED_FUNCTION_3_12(v30, xmmword_2179ECEB0);
  v32 = sub_2179AE120(v31);
  v34 = OUTLINED_FUNCTION_14_4(v32, v33);
  v35 = sub_2179AE120(v34);
  v37 = OUTLINED_FUNCTION_13_5(v35, v36);
  v38 = sub_2179AE120(v37);
  v40 = OUTLINED_FUNCTION_12_7(v38, v39);
  v41 = sub_2179AE120(v40);
  v43 = OUTLINED_FUNCTION_11_6(v41, v42);
  v44 = sub_2179AE120(v43);
  v46 = OUTLINED_FUNCTION_10_8(v44, v45);
  v47 = sub_2179AE120(v46);
  v49 = OUTLINED_FUNCTION_8_10(v47, v48);
  v50 = sub_2179AE120(v49);
  v52 = OUTLINED_FUNCTION_17_3(v50, v51);
  v53 = sub_2179AE120(v52);
  v55 = OUTLINED_FUNCTION_16_2(v53, v54);
  v56 = sub_2179AE120(v55);
  v58 = OUTLINED_FUNCTION_15_4(v56, v57);
  v59 = sub_2179AE120(v58);
  v61 = OUTLINED_FUNCTION_5_8(v59, v60);
  v30[37].n128_u64[0] = sub_2179AE120(v61);
  v30[37].n128_u64[1] = v62;

  *(v29 + 16) = v30;
  OUTLINED_FUNCTION_30();
}

void FastEntity.__allocating_init<A, B, C, D, E, F, G, H, I, J, K, L, M>(_:_:_:_:_:_:_:_:_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_1_4();
  swift_allocObject();
  OUTLINED_FUNCTION_1_16();
  FastEntity.init<A, B, C, D, E, F, G, H, I, J, K, L, M>(_:_:_:_:_:_:_:_:_:_:_:_:_:)();
  OUTLINED_FUNCTION_27_0();
}

uint64_t FastEntity.init<A, B, C, D, E, F, G, H, I, J, K, L, M>(_:_:_:_:_:_:_:_:_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_9_7();
  sub_2179A2C2C(0);
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_3_12(v0, xmmword_2179ECED0);
  v2 = sub_2179AE120(v1);
  v4 = OUTLINED_FUNCTION_14_4(v2, v3);
  v5 = sub_2179AE120(v4);
  v7 = OUTLINED_FUNCTION_13_5(v5, v6);
  v8 = sub_2179AE120(v7);
  v10 = OUTLINED_FUNCTION_12_7(v8, v9);
  v11 = sub_2179AE120(v10);
  v13 = OUTLINED_FUNCTION_11_6(v11, v12);
  v14 = sub_2179AE120(v13);
  v16 = OUTLINED_FUNCTION_10_8(v14, v15);
  v17 = sub_2179AE120(v16);
  v19 = OUTLINED_FUNCTION_8_10(v17, v18);
  v20 = sub_2179AE120(v19);
  v22 = OUTLINED_FUNCTION_17_3(v20, v21);
  v23 = sub_2179AE120(v22);
  v25 = OUTLINED_FUNCTION_16_2(v23, v24);
  v26 = sub_2179AE120(v25);
  v28 = OUTLINED_FUNCTION_15_4(v26, v27);
  v29 = sub_2179AE120(v28);
  v31 = OUTLINED_FUNCTION_5_8(v29, v30);
  v32 = sub_2179AE120(v31);
  v34 = OUTLINED_FUNCTION_6_8(v32, v33);
  v35 = sub_2179AE120(v34);
  v0[44].n128_u64[0] = OUTLINED_FUNCTION_32_0(v35, v36);
  v0[44].n128_u64[1] = v37;

  result = v39;
  *(v39 + 16) = v0;
  return result;
}

uint64_t FastEntity.__allocating_init<A, B, C, D, E, F, G, H, I, J, K, L, M, N>(_:_:_:_:_:_:_:_:_:_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_1_4();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_1_16();
  FastEntity.init<A, B, C, D, E, F, G, H, I, J, K, L, M, N>(_:_:_:_:_:_:_:_:_:_:_:_:_:_:)();
  return v0;
}

void FastEntity.init<A, B, C, D, E, F, G, H, I, J, K, L, M, N>(_:_:_:_:_:_:_:_:_:_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_29_0();
  sub_2179A2C2C(0);
  v1 = swift_allocObject();
  v2 = OUTLINED_FUNCTION_3_12(v1, xmmword_2179ECEE0);
  v3 = sub_2179AE120(v2);
  v5 = OUTLINED_FUNCTION_24_0(v3, v4);
  v6 = sub_2179AE120(v5);
  v8 = OUTLINED_FUNCTION_23_2(v6, v7);
  v9 = sub_2179AE120(v8);
  v11 = OUTLINED_FUNCTION_22_2(v9, v10);
  v12 = sub_2179AE120(v11);
  v14 = OUTLINED_FUNCTION_21_2(v12, v13);
  v15 = sub_2179AE120(v14);
  v17 = OUTLINED_FUNCTION_20_1(v15, v16);
  v18 = sub_2179AE120(v17);
  v20 = OUTLINED_FUNCTION_19_3(v18, v19);
  v1[23].n128_u64[0] = sub_2179AE120(v20);
  v1[23].n128_u64[1] = v21;
  v1[26].n128_u64[1] = sub_2179AE120(&v1[27].n128_u64[1]);
  v1[27].n128_u64[0] = v22;
  v1[30].n128_u64[0] = sub_2179AE120(v1[31].n128_u64);
  v1[30].n128_u64[1] = v23;
  v1[33].n128_u64[1] = sub_2179AE120(&v1[34].n128_u64[1]);
  v1[34].n128_u64[0] = v24;
  v1[37].n128_u64[0] = sub_2179AE120(v1[38].n128_u64);
  v1[37].n128_u64[1] = v25;
  v1[40].n128_u64[1] = sub_2179AE120(&v1[41].n128_u64[1]);
  v1[41].n128_u64[0] = v26;
  v1[44].n128_u64[0] = sub_2179AE120(v1[45].n128_u64);
  v1[44].n128_u64[1] = v27;
  v1[47].n128_u64[1] = sub_2179AE120(&v1[48].n128_u64[1]);
  v1[48].n128_u64[0] = v28;

  *(v0 + 16) = v1;
  OUTLINED_FUNCTION_27_0();
}

uint64_t FastEntity.__allocating_init<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O>(_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_1_4();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_1_16();
  FastEntity.init<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O>(_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:)();
  return v0;
}

void FastEntity.init<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O>(_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_7_8();
  OUTLINED_FUNCTION_9_7();
  sub_2179A2C2C(0);
  v1 = swift_allocObject();
  v2 = OUTLINED_FUNCTION_3_12(v1, xmmword_2179ECEF0);
  v3 = sub_2179AE120(v2);
  v5 = OUTLINED_FUNCTION_14_4(v3, v4);
  v6 = sub_2179AE120(v5);
  v8 = OUTLINED_FUNCTION_13_5(v6, v7);
  v9 = sub_2179AE120(v8);
  v11 = OUTLINED_FUNCTION_12_7(v9, v10);
  v12 = sub_2179AE120(v11);
  v14 = OUTLINED_FUNCTION_11_6(v12, v13);
  v15 = sub_2179AE120(v14);
  v17 = OUTLINED_FUNCTION_10_8(v15, v16);
  v18 = sub_2179AE120(v17);
  v20 = OUTLINED_FUNCTION_8_10(v18, v19);
  v21 = sub_2179AE120(v20);
  v23 = OUTLINED_FUNCTION_17_3(v21, v22);
  v24 = sub_2179AE120(v23);
  v26 = OUTLINED_FUNCTION_16_2(v24, v25);
  v27 = sub_2179AE120(v26);
  v29 = OUTLINED_FUNCTION_15_4(v27, v28);
  v30 = sub_2179AE120(v29);
  v32 = OUTLINED_FUNCTION_5_8(v30, v31);
  v33 = sub_2179AE120(v32);
  v35 = OUTLINED_FUNCTION_6_8(v33, v34);
  v36 = sub_2179AE120(v35);
  v1[44].n128_u64[0] = OUTLINED_FUNCTION_32_0(v36, v37);
  v1[44].n128_u64[1] = v38;
  v1[47].n128_u64[1] = sub_2179AE120(&v1[48].n128_u64[1]);
  v1[48].n128_u64[0] = v39;
  v1[51].n128_u64[0] = sub_2179AE120(v1[52].n128_u64);
  v1[51].n128_u64[1] = v40;

  *(v0 + 16) = v1;
  OUTLINED_FUNCTION_27_0();
}

uint64_t OUTLINED_FUNCTION_32_0(uint64_t a1, uint64_t a2)
{
  v2[81] = a1;
  v2[82] = a2;

  return sub_2179AE120(v2 + 90);
}

uint64_t sub_2179D48D8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FastEntity();
  swift_allocObject();

  return sub_2179A2C84(a1, a2);
}

uint64_t sub_2179D493C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2179E9D70() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2179E9D70();

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

uint64_t sub_2179D4A3C(char a1)
{
  sub_2179E9E20();
  MEMORY[0x21CEA9D40](a1 & 1);
  return sub_2179E9E40();
}

uint64_t sub_2179D4A84(char a1)
{
  if (a1)
  {
    return 0x6E6F6973726576;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_2179D4AB0(void *a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  OUTLINED_FUNCTION_4_14();
  sub_2179A06C8(0, v6, v7, &type metadata for Versions.Entity.CodingKeys, MEMORY[0x277D84538]);
  v9 = v8;
  OUTLINED_FUNCTION_0_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179D5164();
  sub_2179E9EB0();
  v20 = a2;
  v19 = 0;
  OUTLINED_FUNCTION_0_16();
  sub_2179A105C(0, v15, v16);
  sub_2179D51B8(&qword_27CB98240, &protocol conformance descriptor for FastColumn<A>);
  OUTLINED_FUNCTION_6_9();
  if (!v3)
  {
    v20 = v18;
    v19 = 1;
    OUTLINED_FUNCTION_6_9();
  }

  return (*(v11 + 8))(v14, v9);
}

uint64_t sub_2179D4C50(void *a1)
{
  OUTLINED_FUNCTION_4_14();
  sub_2179A06C8(0, v2, v3, v4, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_0_0();
  v27 = v6;
  v28 = v5;
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v9 = OUTLINED_FUNCTION_2_13();
  sub_2179A105C(v9, v10, v11);
  swift_initStackObject();
  OUTLINED_FUNCTION_1_17();
  sub_2179A7DE0();
  v13 = v12;
  OUTLINED_FUNCTION_0_16();
  sub_2179A105C(0, v14, v15);
  inited = swift_initStackObject();
  v17 = OUTLINED_FUNCTION_7_9(inited);
  *(v17 + 24) = v18;
  *(v17 + 32) = v13;
  swift_initStackObject();
  OUTLINED_FUNCTION_1_17();
  sub_2179A7DE0();
  v20 = v19;
  v21 = swift_initStackObject();
  v22 = OUTLINED_FUNCTION_3_13(v21);
  *(v22 + 24) = v23;
  *(v22 + 32) = v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179D5164();
  v24 = v29;
  sub_2179E9E90();
  if (v24)
  {
  }

  else
  {
    v30 = 0;
    sub_2179D51B8(&qword_27CB98230, "iʄjHy");
    OUTLINED_FUNCTION_5_9();

    inited = v31;
    v30 = 1;
    OUTLINED_FUNCTION_5_9();
    (*(v27 + 8))(v8, v28);
    swift_setDeallocating();
    sub_2179D5088();
    OUTLINED_FUNCTION_8_3();
    swift_deallocClassInstance();
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return inited;
}

uint64_t sub_2179D4F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2179D493C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2179D4F44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2179D49FC();
  *a1 = result;
  return result;
}

uint64_t sub_2179D4F6C(uint64_t a1)
{
  v2 = sub_2179D5164();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2179D4FA8(uint64_t a1)
{
  v2 = sub_2179D5164();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2179D5018@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2179A0F8C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2179D5040@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2179D4C50(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_2179D5088()
{

  return v0;
}

uint64_t sub_2179D50B0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2179D50F0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_2179D513C(uint64_t a1)
{
  result = sub_2179A0E88();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2179D5164()
{
  result = qword_27CB98228;
  if (!qword_27CB98228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB98228);
  }

  return result;
}

uint64_t sub_2179D51B8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_0_16();
    sub_2179A105C(255, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Versions.Entity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2179D52E8()
{
  result = qword_27CB98248;
  if (!qword_27CB98248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB98248);
  }

  return result;
}

unint64_t sub_2179D5340()
{
  result = qword_27CB98250;
  if (!qword_27CB98250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB98250);
  }

  return result;
}

unint64_t sub_2179D5398()
{
  result = qword_27CB98258[0];
  if (!qword_27CB98258[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CB98258);
  }

  return result;
}

uint64_t MixedKeyValueStore.promises.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  type metadata accessor for MixedKeyValueStore.Promises(255, *(v3 + 80), *(v3 + 88), v4);
  OUTLINED_FUNCTION_9();
  sub_2179E9A60();
  OUTLINED_FUNCTION_1();
  return (*(v5 + 16))(a1, v1 + 6);
}

uint64_t MixedKeyValueStore.__allocating_init(database:)(uint64_t a1)
{
  v2 = swift_allocObject();
  MixedKeyValueStore.init(database:)(a1);
  return v2;
}

uint64_t *MixedKeyValueStore.init(database:)(uint64_t a1)
{
  v3 = v1;
  *(v1 + 48) = 0;
  v4 = v1 + 48;
  *(v1 + 32) = sub_2179AEC64;
  *(v1 + 40) = 0;
  *(v1 + 56) = 1;
  *(v1 + 16) = a1;
  OUTLINED_FUNCTION_0_7();
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_0_7();
  v8 = *(v7 + 88);
  v10 = type metadata accessor for MKVSEntity(0, v6, v8, v9);
  WitnessTable = swift_getWitnessTable();
  v13 = Database.table<A>(_:)(v10, v10, WitnessTable, v12);
  if (v2)
  {

    type metadata accessor for MixedKeyValueStore.Promises(255, v6, v8, v14);
    OUTLINED_FUNCTION_9();
    sub_2179E9A60();
    OUTLINED_FUNCTION_1();
    (*(v15 + 8))(v4);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v3 + 24) = v13;

    sub_2179AA534();
    v22[8] = 0;
    swift_beginAccess();
    type metadata accessor for MixedKeyValueStore.Promises(255, v6, v8, v16);
    OUTLINED_FUNCTION_9();
    sub_2179E9A60();
    OUTLINED_FUNCTION_1();
    (*(v17 + 40))(v4, v22);
    v18 = swift_endAccess();
    MEMORY[0x28223BE20](v18);
    sub_2179E93D0();
    v19 = swift_allocObject();
    *(v19 + 16) = v6;
    *(v19 + 24) = v8;
    v20 = sub_2179E9380();
    sub_2179E9390();
  }

  return v3;
}

uint64_t sub_2179D57D4(uint64_t a1, uint64_t a2)
{
  v5 = 0;

  v3 = Database.asyncWrite(_:block:)(&v5, sub_2179DA530, a2);

  return v3;
}

uint64_t sub_2179D5860(uint64_t *a1)
{
  v1 = *a1;
  sub_2179A6BC4();
  type metadata accessor for MKVSEntity(0, *(v1 + 80), *(v1 + 88), v2);
  swift_getWitnessTable();
  sub_2179A750C(1);
}

uint64_t sub_2179D5904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_280B1DB60 != -1)
  {
    swift_once();
  }

  v5 = qword_280B1FEE8;
  v6 = sub_2179E9920();
  sub_21799ABE4(0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2179EA820;
  v8 = (*(a3 + 8))(a2, a3);
  v10 = v9;
  v11 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  v12 = sub_21799C634();
  *(v7 + 64) = v12;
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  sub_21799AC4C(0, &qword_280B1DBF8, MEMORY[0x277D84948]);
  sub_2179E9C10();
  *(v7 + 96) = v11;
  *(v7 + 104) = v12;
  *(v7 + 72) = 0;
  *(v7 + 80) = 0xE000000000000000;
  sub_2179E93F0("Failed to create mixed key-value store, store=%{public}@, error=%{public}@", 74, 2, &dword_217998000, v5, v6, v7);
}

uint64_t MixedKeyValueStore.allKeys()()
{
  v3 = MEMORY[0x277D84F90];
  v1 = OUTLINED_FUNCTION_14();
  sub_2179A21AC(v1);
  if (v0)
  {
  }

  return v3;
}

uint64_t sub_2179D5AEC(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  sub_2179AB328();
  v5 = sub_2179AB354();

  if (!v2)
  {
    v16 = v5;
    MEMORY[0x28223BE20](result);
    v7 = *(v4 + 88);
    v14 = *(v4 + 80);
    v15 = v7;
    type metadata accessor for MKVSEntity(255, v14, v7, v8);
    v9 = sub_2179E9840();
    WitnessTable = swift_getWitnessTable();
    v12 = sub_2179A2E44(sub_2179DA510, &v13, v9, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v11);

    *a1 = v12;
  }

  return result;
}

uint64_t MixedKeyValueStore.read<A>(_:maxAge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v11 = sub_2179E9270();
  OUTLINED_FUNCTION_2();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_18();
  v75 = v15;
  OUTLINED_FUNCTION_19_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_20_2();
  v76 = v17;
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_18_4();
  v89 = *(v18 + 88);
  v90 = v19;
  v98[0] = v19;
  v98[1] = a2;
  v98[2] = v89;
  v98[3] = a3;
  v98[4] = a4;
  v20 = type metadata accessor for MKVSEntry(255, v98);
  sub_2179E9A60();
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v21);
  v86 = &v73 - v22;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v23);
  v88 = &v73 - v24;
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_18();
  v87 = v26;
  OUTLINED_FUNCTION_19_4();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_20_2();
  v91 = v30;
  if (!*(a1 + 16))
  {
    swift_getTupleTypeMetadata2();
    OUTLINED_FUNCTION_9();
    sub_2179E97F0();
    return sub_2179E9540();
  }

  v77 = v29;
  v78 = v28;
  v74 = v13;
  v31 = v20;
  v32 = sub_2179E9500();
  v97 = v32;
  v33 = sub_2179D6460(v5, a1, a2, a3);
  if (v6)
  {

    return v32;
  }

  v35 = v33;
  v92 = v5;
  v84 = v31;
  v85 = a4;
  v73 = v11;
  v93 = 0;
  v36 = type metadata accessor for MKVSEntity(0, v90, v89, v34);

  v37 = sub_2179E97C0();

  v96 = v37;
  v83 = v35 + 32;
  v81 = v77 + 16;
  v79 = v78 + 16;
  v78 += 8;
  v77 += 8;
  v38 = v91;
  v82 = v35;
  v80 = v36;
  while (1)
  {
    v39 = sub_2179E9820();
    v40 = v96;
    v41 = v92;
    if (v96 == v39)
    {

      v61 = v41[4];

      v63 = v75;
      v61(v62);

      v64 = v76;
      sub_2179E9230();
      v65 = a2;
      v92 = *(v74 + 8);
      v66 = (v92)(v63, v73);
      v91 = &v73;
      MEMORY[0x28223BE20](v66);
      v67 = v90;
      *(&v73 - 6) = v90;
      *(&v73 - 5) = a2;
      v68 = v89;
      *(&v73 - 4) = v89;
      *(&v73 - 3) = a3;
      v69 = v85;
      v72 = v64;
      v70 = sub_2179E9570();
      v93 = &v73;
      MEMORY[0x28223BE20](v70);
      *(&v73 - 6) = v67;
      *(&v73 - 5) = v65;
      *(&v73 - 4) = v68;
      *(&v73 - 3) = a3;
      v71 = v69;
      v32 = sub_2179E9590();

      (v92)(v64, v73);
      return v32;
    }

    v42 = sub_2179E9800();
    sub_2179E97E0();
    if ((v42 & 1) == 0)
    {
      break;
    }

    v43 = (v83 + 24 * v40);
    v45 = *v43;
    v44 = v43[1];
    v46 = v43[2];

    v91 = v44;

    sub_2179E9830();
    result = swift_beginAccess();
    v32 = *(v46 + 32);
    if (v32 >> 60 == 15)
    {
      goto LABEL_16;
    }

    v48 = *(v46 + 24);
    sub_2179B2DDC(v48, *(v46 + 32));
    v49 = v85;
    v50 = v93;
    sub_2179D673C(a2, a3, v38);
    sub_2179B78D4(v48, v32);
    v93 = v50;
    if (v50)
    {

      return v32;
    }

    OUTLINED_FUNCTION_7_10();
    v51 = v87;
    v52(v87, v38, a2);
    v71 = v49;
    v53 = v88;
    sub_2179D6810(v45, v91, v46, v51, v90, a2, v89, a3, v88, v71);
    result = swift_beginAccess();
    v54 = *(v45 + 32);
    if (!v54)
    {
      goto LABEL_17;
    }

    v55 = *(v45 + 24);
    OUTLINED_FUNCTION_7_10();
    v56 = v86;
    v57 = v84;
    v58(v86, v53, v84);
    __swift_storeEnumTagSinglePayload(v56, 0, 1, v57);
    v94 = v55;
    v95 = v54;
    sub_2179E95B0();

    sub_2179E95D0();
    OUTLINED_FUNCTION_7_10();
    v59(v53, v57);
    OUTLINED_FUNCTION_7_10();
    v60(v38, a2);
  }

  result = sub_2179E9B20();
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2179D6460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  type metadata accessor for MKVSEntity(255, v5, v6, a4);
  sub_2179E9840();
  Database.read<A>(block:)(&v18);
  if (!v4)
  {
    return v18;
  }

  if (qword_280B1DB60 != -1)
  {
    swift_once();
  }

  v7 = qword_280B1FEE8;
  v8 = sub_2179E9920();
  sub_21799ABE4(0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2179EA820;
  v10 = (*(v6 + 8))(v5, v6);
  v12 = v11;
  v13 = MEMORY[0x277D837D0];
  *(v9 + 56) = MEMORY[0x277D837D0];
  v14 = sub_21799C634();
  *(v9 + 64) = v14;
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_21799AC4C(0, &qword_280B1DBF8, MEMORY[0x277D84948]);
  sub_2179E9C10();
  v15 = v18;
  v16 = v19;
  *(v9 + 96) = v13;
  *(v9 + 104) = v14;
  *(v9 + 72) = v15;
  *(v9 + 80) = v16;
  sub_2179E93F0("Failed to read from mixed key-value store, store=%{public}@, error=%{public}@", 77, 2, &dword_217998000, v7, v8, v9);

  return swift_willThrow();
}

void sub_2179D673C(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v10 = *v6;
  v11 = MEMORY[0x21CEA9E60]();
  sub_2179D8F88(*(v10 + 80), a3, *(v10 + 88), a4, &v12, x8_0);
  objc_autoreleasePoolPop(v11);
}

uint64_t sub_2179D6810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  v15[0] = a5;
  v15[1] = a6;
  v15[2] = a7;
  v15[3] = a8;
  v15[4] = a10;
  v13 = type metadata accessor for MKVSEntry(0, v15);
  return (*(*(a6 - 8) + 32))(&a9[*(v13 + 60)], a4, a6);
}

uint64_t sub_2179D68A4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a3;
  sub_2179AD4F8(0, &unk_280B1D898, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v38[-1] - v16;
  v38[0] = a4;
  v38[1] = a5;
  v38[2] = a6;
  v38[3] = a7;
  v38[4] = a8;
  v18 = type metadata accessor for MKVSEntry(255, v38);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v20 = *(TupleTypeMetadata2 - 8);
  v21 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v23 = &v38[-1] - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = (&v38[-1] - v25);
  v27 = *a1;
  v28 = a1[1];
  *v26 = v27;
  v26[1] = v28;
  v29 = *(v18 - 8);
  (*(v29 + 16))(&v38[-1] + *(v24 + 48) - v25, a2, v18);
  (*(v20 + 16))(v23, v26, TupleTypeMetadata2);

  v30 = &v23[*(TupleTypeMetadata2 + 48)];
  v31 = *(v30 + 1);
  v32 = *(v29 + 8);

  v32(v30, v18);
  v33 = *(*v31 + 104);
  swift_beginAccess();
  sub_2179B819C(v31 + v33, v17);

  v34 = sub_2179E9270();
  result = __swift_getEnumTagSinglePayload(v17, 1, v34);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_2179DA48C(&qword_280B1D8A8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v36 = sub_2179E9600();
    (*(v20 + 8))(v26, TupleTypeMetadata2);
    (*(*(v34 - 8) + 8))(v17, v34);
    return (v36 & 1) == 0;
  }

  return result;
}

uint64_t sub_2179D6BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v10 = type metadata accessor for MKVSEntry(0, v12);
  return (*(*(a3 - 8) + 16))(a7, a1 + *(v10 + 60), a3);
}

uint64_t MixedKeyValueStore.write<A>(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_0_7();
  v6 = *(v5 + 88);
  v113 = v7;
  v135 = v7;
  v136 = v8;
  v112 = v6;
  v137 = v6;
  v138 = v9;
  v132 = v9;
  v120 = v10;
  v139 = v10;
  v11 = type metadata accessor for MKVSEntry(255, &v135);
  sub_2179E9A60();
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v12);
  v110 = &v103 - v13;
  OUTLINED_FUNCTION_2();
  v15 = v14;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_20_2();
  v126 = v20;
  v133 = a2;
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_9();
  v122 = v21;
  v117 = sub_2179E9A60();
  OUTLINED_FUNCTION_2();
  v131 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1_18();
  v124 = v24;
  OUTLINED_FUNCTION_19_4();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_20_2();
  v123 = v26;
  v119 = sub_2179E9270();
  OUTLINED_FUNCTION_2();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_1_18();
  v109 = v30;
  OUTLINED_FUNCTION_19_4();
  MEMORY[0x28223BE20](v31);
  v33 = &v103 - v32;
  v111 = v11;
  v34 = v19;
  v140 = sub_2179E9500();
  v121 = v2;
  v35 = *(v2 + 32);

  v118 = v33;
  v35(v36);

  v37 = *(a1 + 64);
  v104 = a1 + 64;
  v38 = 1 << *(a1 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & v37;
  v41 = (v38 + 63) >> 6;
  v125 = (v15 + 16);
  v127 = (v15 + 32);
  v116 = v131 + 32;
  v103 = v28;
  v107 = v28 + 16;
  v105 = v15;
  v115 = v15 + 8;
  v106 = a1;

  v43 = 0;
  v108 = v41;
  v114 = v34;
  if (v40)
  {
    while (1)
    {
      v44 = v134;
      v45 = v43;
      v46 = v122;
LABEL_10:
      v134 = v44;
      v49 = __clz(__rbit64(v40));
      v40 &= v40 - 1;
      v50 = v49 | (v45 << 6);
      v51 = (*(v106 + 48) + 16 * v50);
      v53 = *v51;
      v52 = v51[1];
      v54 = v105;
      v55 = v126;
      v56 = v133;
      (*(v105 + 16))(v126, *(v106 + 56) + *(v105 + 72) * v50, v133);
      v57 = *(v46 + 48);
      v58 = v124;
      *v124 = v53;
      *(v58 + 1) = v52;
      v48 = v58;
      (*(v54 + 32))(&v58[v57], v55, v56);
      __swift_storeEnumTagSinglePayload(v48, 0, 1, v46);

      v47 = v123;
LABEL_11:
      OUTLINED_FUNCTION_7_10();
      v59(v47, v48, v117);
      if (__swift_getEnumTagSinglePayload(v47, 1, v46) == 1)
      {
        break;
      }

      v60 = *v47;
      v61 = v47[1];
      v62 = v133;
      (*v127)(v34, v47 + *(v46 + 48), v133);
      v63 = v120;
      v64 = v134;
      sub_2179D7448(v34, v62, v132, v120);
      if (v64)
      {
        v87 = v106;

        OUTLINED_FUNCTION_7_10();
        v99(v114, v133);
        v100 = OUTLINED_FUNCTION_2_14();
        v101(v100);
        goto LABEL_19;
      }

      v67 = v65;
      v68 = v66;
      OUTLINED_FUNCTION_7_10();
      v69 = v109;
      v70(v109, v118, v119);
      v131 = v61;

      v130 = v60;
      v71 = v67;
      v72 = v69;
      v73 = v113;
      v74 = v112;
      v75 = sub_2179D7514(v60, v61, v71, v68, v72);
      v128 = v76;
      v129 = v75;
      v78 = v77;
      v79 = v133;
      v134 = 0;
      v80 = v126;
      v81 = v114;
      (*v125)(v126, v114, v133);
      v102 = v63;
      v82 = v110;
      sub_2179D6810(v129, v78, v128, v80, v73, v79, v74, v132, v110, v102);
      __swift_storeEnumTagSinglePayload(v82, 0, 1, v111);
      v135 = v130;
      v136 = v131;
      sub_2179E95B0();
      sub_2179E95D0();
      OUTLINED_FUNCTION_7_10();
      result = v83(v81, v79);
      v34 = v81;
      v41 = v108;
      if (!v40)
      {
        goto LABEL_5;
      }
    }

    v87 = v106;

    MEMORY[0x28223BE20](v88);
    v89 = v132;
    *(&v103 - 6) = v133;
    *(&v103 - 5) = v89;
    *(&v103 - 4) = v120;
    *(&v103 - 3) = &v140;
    v102 = v90;
    LOBYTE(v135) = 0;
    v91 = v134;
    Database.write(_:block:)(&v135, sub_2179D9D9C, (&v103 - 8), v92, v93, v94, v95, v96, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114);
    v97 = OUTLINED_FUNCTION_2_14();
    v98(v97);
    if (!v91)
    {
    }

LABEL_19:

    return v87;
  }

  else
  {
LABEL_5:
    v46 = v122;
    v47 = v123;
    v48 = v124;
    while (1)
    {
      v45 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v45 >= v41)
      {
        OUTLINED_FUNCTION_16_3();
        __swift_storeEnumTagSinglePayload(v84, v85, v86, v46);
        v40 = 0;
        goto LABEL_11;
      }

      v40 = *(v104 + 8 * v45);
      ++v43;
      if (v40)
      {
        v44 = v134;
        v43 = v45;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_2179D7448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x21CEA9E60]();
  sub_2179D8D74(a1, a2, &v7, &v8);
  objc_autoreleasePoolPop(v6);
}

uint64_t sub_2179D7514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a3;
  v39 = a4;
  v8 = MEMORY[0x277CC9578];
  sub_2179AD4F8(0, &unk_280B1D898, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v38 - v10;
  sub_2179AD4F8(0, &qword_280B1D7F0, sub_2179AAEF8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  sub_2179AD4A0(0, v18, v19, v20);
  swift_allocObject();
  sub_2179A7DE0();
  v22 = v21;
  sub_2179AAEF8(0);
  v24 = v23;
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v23);
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v24);
  sub_2179DA3A8(0);
  swift_allocObject();

  sub_2179AD6B4(0, 0, 0, v17, v15, v25, v26, v27, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
  v29 = v28;
  sub_2179AAFDC(0);
  swift_allocObject();

  v37 = -1;
  v30 = sub_2179ADBE4(0, 0, 0, 0, 0, 255, 0, 0, v37);
  swift_beginAccess();
  *(v22 + 24) = a1;
  *(v22 + 32) = a2;

  v31 = sub_2179E9270();
  (*(*(v31 - 8) + 32))(v11, a5, v31);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v31);
  v32 = *(*v29 + 104);
  swift_beginAccess();
  sub_2179AD834(v11, v29 + v32, &unk_280B1D898, v8);
  swift_endAccess();

  swift_beginAccess();
  v33 = *(v30 + 24);
  v34 = *(v30 + 32);
  v35 = v39;
  *(v30 + 24) = v38;
  *(v30 + 32) = v35;
  sub_2179B78D4(v33, v34);

  return v22;
}

uint64_t sub_2179D7864(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a2;
  v7 = *(*a2 + 80);
  v54 = a2;
  v8 = *(v6 + 88);
  v60 = v7;
  v61 = a3;
  v62 = v8;
  v63 = a4;
  v64 = a5;
  v9 = type metadata accessor for MKVSEntry(0, &v60);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v48 = v46 - v11;
  v59 = v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v56 = sub_2179E9A60();
  v13 = MEMORY[0x28223BE20](v56);
  v57 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v46 - v16;
  v18 = *a1;
  v19 = *a1 + 64;
  v20 = 1 << *(*a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(*a1 + 64);
  v23 = (v20 + 63) >> 6;
  v46[1] = v10 + 32;
  v46[2] = v10 + 16;
  v55 = (v15 + 32);
  v49 = v10;
  v50 = v18;
  v53 = (v10 + 8);

  v25 = 0;
  v47 = v17;
  v51 = v23;
  v52 = v19;
  if (v22)
  {
    while (1)
    {
      v26 = v25;
LABEL_10:
      v29 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v30 = v29 | (v26 << 6);
      v31 = v49;
      v32 = (*(v50 + 48) + 16 * v30);
      v33 = *v32;
      v34 = v32[1];
      v35 = v48;
      v36 = v59;
      (*(v49 + 16))(v48, *(v50 + 56) + *(v49 + 72) * v30, v59);
      v27 = v57;
      v37 = TupleTypeMetadata2;
      v38 = *(TupleTypeMetadata2 + 48);
      *v57 = v33;
      *(v27 + 1) = v34;
      v28 = v37;
      (*(v31 + 32))(&v27[v38], v35, v36);
      __swift_storeEnumTagSinglePayload(v27, 0, 1, v28);

      v17 = v47;
LABEL_11:
      (*v55)(v17, v27, v56);
      if (__swift_getEnumTagSinglePayload(v17, 1, v28) == 1)
      {
      }

      v39 = v17;
      v40 = &v17[*(v28 + 48)];
      sub_2179B69CC();
      v41 = *v40;
      v42 = *(v40 + 1);
      v43 = *(v40 + 2);
      v44 = *v53;

      v44(v40, v59);
      v60 = v41;
      v61 = v42;
      v62 = v43;
      v45 = v65;
      sub_2179B69F8(&v60);

      v65 = v45;
      if (v45)
      {
      }

      v17 = v39;
      v23 = v51;
      v19 = v52;
      if (!v22)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v27 = v57;
    v28 = TupleTypeMetadata2;
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v23)
      {
        __swift_storeEnumTagSinglePayload(v57, 1, 1, TupleTypeMetadata2);
        v22 = 0;
        goto LABEL_11;
      }

      v22 = *(v19 + 8 * v26);
      ++v25;
      if (v22)
      {
        v25 = v26;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2179D7CE8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = (result + 40);
  if (v2)
  {
    while (1)
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      sub_2179E4CE8();

      sub_2179CEADC(v5, v4);
      if (v1)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t MixedKeyValueStore.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_5_10(a1, &qword_280B1DC20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2179EA830;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  MixedKeyValueStore.read<A>(_:maxAge:)(inited, a3, a4, a5, 1.79769313e308);
  swift_setDeallocating();
  sub_2179D9D0C();
  sub_2179E9580();

  sub_2179E9560();
  swift_getWitnessTable();
  sub_2179E98C0();
}

uint64_t sub_2179D7F30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 32);
  v7 = *(a3 + a4 - 16);
  v8 = *(a3 + a4 - 8);
  v9 = sub_2179E9A60();
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  v13 = *a3;
  v12 = a3[1];
  (*(v14 + 16))(&v16 - v10, a1);

  return MixedKeyValueStore.subscript.setter(v11, v13, v12, v6, v7, v8);
}

uint64_t MixedKeyValueStore.subscript.setter(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a5;
  v36 = a6;
  v10 = sub_2179E9A60();
  OUTLINED_FUNCTION_2();
  v12 = v11;
  OUTLINED_FUNCTION_19();
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  OUTLINED_FUNCTION_2();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v10);
  if (__swift_getEnumTagSinglePayload(v15, 1, a4) == 1)
  {
    v21 = *(v12 + 8);
    v22 = v21(v15, v10);
    OUTLINED_FUNCTION_5_10(v22, &qword_280B1DC20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2179EA830;
    *(inited + 32) = a2;
    *(inited + 40) = a3;
    MixedKeyValueStore.delete(_:)(inited);

    swift_setDeallocating();
    sub_2179D9D0C();
    return v21(a1, v10);
  }

  else
  {
    v33 = v10;
    v34 = a1;
    (*(v17 + 32))(v20, v15, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_2179E9D50();
    swift_allocObject();
    v25 = sub_2179E97D0();
    v26 = *(TupleTypeMetadata2 + 48);
    *v27 = a2;
    *(v27 + 1) = a3;
    (*(v17 + 16))(&v27[v26], v20, a4);
    sub_2179BA890(v25, TupleTypeMetadata2);
    v28 = sub_2179E9540();
    MixedKeyValueStore.write<A>(_:)(v28, a4);

    v31 = v33;
    v30 = v34;

    (*(v12 + 8))(v30, v31);
    return (*(v17 + 8))(v20, a4);
  }
}

void (*MixedKeyValueStore.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t **a1, char a2)
{
  v13 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v13;
  v13[4] = a6;
  v13[5] = v6;
  v13[2] = a4;
  v13[3] = a5;
  *v13 = a2;
  v13[1] = a3;
  v14 = sub_2179E9A60();
  v13[6] = v14;
  v15 = *(v14 - 8);
  v13[7] = v15;
  v16 = *(v15 + 64);
  v13[8] = __swift_coroFrameAllocStub(v16);
  v13[9] = __swift_coroFrameAllocStub(v16);
  MixedKeyValueStore.subscript.getter(a2, a3, a4, a5, a6);
  return sub_2179D84B0;
}

void sub_2179D84B0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[8];
  v4 = (*a1)[9];
  if (a2)
  {
    v5 = v2[6];
    v6 = v2[7];
    v7 = v2[4];
    v9 = v2[2];
    v8 = v2[3];
    v11 = *v2;
    v10 = v2[1];
    (*(v6 + 16))(v3, v4, v5);

    MixedKeyValueStore.subscript.setter(v3, v11, v10, v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v12 = v2[4];
    v14 = v2[2];
    v13 = v2[3];
    v16 = *v2;
    v15 = v2[1];

    MixedKeyValueStore.subscript.setter(v4, v16, v15, v14, v13, v12);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t static MixedKeyValueStore.+= infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MixedKeyValueStore.write<A>(_:)(a2, a3);
}

uint64_t MixedKeyValueStore.Promises.allKeys()()
{
  sub_21799F320(0);
  swift_allocObject();
  OUTLINED_FUNCTION_14();
  return sub_2179E93B0();
}

uint64_t sub_2179D8758(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = MixedKeyValueStore.allKeys()();

    v8 = v7;
    a1(&v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MixedKeyValueStore.Promises.read<A>(_:maxAge:)()
{
  OUTLINED_FUNCTION_17_4();
  sub_2179E95B0();
  OUTLINED_FUNCTION_9();
  sub_2179E93C0();
  OUTLINED_FUNCTION_10_10();
  OUTLINED_FUNCTION_14();
  return sub_2179E93A0();
}

uint64_t sub_2179D88C4(void (*a1)(uint64_t *), double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = MixedKeyValueStore.read<A>(_:maxAge:)(a7, a9, a11, a12, a2);

    v18 = v17;
    a1(&v18);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MixedKeyValueStore.Promises.write<A>(_:)()
{
  OUTLINED_FUNCTION_17_4();
  sub_2179E95B0();
  OUTLINED_FUNCTION_9();
  sub_2179E93C0();
  OUTLINED_FUNCTION_10_10();
  OUTLINED_FUNCTION_14();
  return sub_2179E93A0();
}

uint64_t sub_2179D8A60(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    MixedKeyValueStore.write<A>(_:)(a6, a8);

    v12 = a6;
    a1(&v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MixedKeyValueStore.Promises.delete(_:)()
{
  sub_21799F320(0);
  swift_allocObject();
  OUTLINED_FUNCTION_14();
  return sub_2179E93B0();
}

uint64_t sub_2179D8BC8(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    MixedKeyValueStore.delete(_:)(a6);

    v9 = a6;
    a1(&v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MixedKeyValueStore.deinit()
{

  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_18_4();
  type metadata accessor for MixedKeyValueStore.Promises(255, v2, *(v1 + 88), v3);
  OUTLINED_FUNCTION_9();
  sub_2179E9A60();
  OUTLINED_FUNCTION_1();
  (*(v4 + 8))(v0 + 48);
  return v0;
}

uint64_t MixedKeyValueStore.__deallocating_deinit()
{
  MixedKeyValueStore.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2179D8D74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X6>, uint64_t *a4@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_2179E9D50();
  swift_allocObject();
  v9 = sub_2179E97D0();
  v10 = *(TupleTypeMetadata2 + 48);
  *v11 = 118;
  *(v11 + 1) = 0xE100000000000000;
  (*(*(a2 - 8) + 16))(&v11[v10], a1, a2);
  sub_2179BA890(v9, TupleTypeMetadata2);
  sub_2179E9540();
  sub_2179E90E0();
  swift_allocObject();
  sub_2179E90D0();
  sub_2179E95B0();
  swift_getWitnessTable();
  v12 = sub_2179E90C0();
  v14 = v13;

  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    *a4 = v12;
    a4[1] = v14;
  }

  return result;
}

uint64_t sub_2179D8F88@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X7>, uint64_t a8@<X8>)
{
  v29 = a7;
  v23 = a3;
  v24 = a5;
  v22 = a8;
  v11 = sub_2179E9A60();
  v21 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  sub_2179E92D0();
  swift_allocObject();
  sub_2179E92C0();
  sub_2179E95B0();
  v27 = MEMORY[0x277D83808];
  v28 = a6;
  swift_getWitnessTable();
  sub_2179E92B0();
  v14 = v8;

  if (v8)
  {
    goto LABEL_4;
  }

  v17 = v21;
  v16 = v22;
  v19 = v23;
  v18 = v24;
  v25 = 118;
  v26 = 0xE100000000000000;
  sub_2179E95C0();

  if (__swift_getEnumTagSinglePayload(v13, 1, a4) == 1)
  {
    (*(v17 + 8))(v13, v11);
    type metadata accessor for MixedKeyValueStore.TranslationError(0, v19, v18, v20);
    swift_getWitnessTable();
    v14 = swift_allocError();
    result = swift_willThrow();
LABEL_4:
    *v29 = v14;
    return result;
  }

  return (*(*(a4 - 8) + 32))(v16, v13, a4);
}

uint64_t sub_2179D93C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a3;
  v18 = a4;
  type metadata accessor for MKVSEntity.CodingKeys(255, a5, a6, a4);
  swift_getWitnessTable();
  v8 = sub_2179E9D30();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2179E9EB0();
  v22 = a2;
  v21 = 0;
  sub_2179AD4A0(0, v12, v13, v14);
  sub_2179DA48C(&qword_27CB97BB0, sub_2179AD4A0, &protocol conformance descriptor for Column<A>);
  v15 = v20;
  sub_2179E9D20();
  if (!v15)
  {
    v16 = v18;
    v22 = v19;
    v21 = 1;
    sub_2179DA3A8(0);
    sub_2179DA48C(&qword_27CB97BB8, sub_2179DA3A8, &protocol conformance descriptor for Column<A>);
    sub_2179E9D20();
    v22 = v16;
    v21 = 2;
    sub_2179AAFDC(0);
    sub_2179DA48C(qword_27CB97BC0, sub_2179AAFDC, &protocol conformance descriptor for Column<A>);
    sub_2179E9D20();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_2179D9670(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for MKVSEntity.CodingKeys(255, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  v38 = sub_2179E9CD0();
  v37 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v40 = &v34 - v6;
  sub_2179AD4F8(0, &qword_280B1D7F0, sub_2179AAEF8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - v11;
  sub_2179AD4A0(0, v13, v14, v15);
  v36 = v16;
  swift_initStackObject();
  sub_2179A7DE0();
  v39 = v17;
  sub_2179AAEF8(0);
  v19 = v18;
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v18);
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v19);
  sub_2179DA3A8(0);
  swift_allocObject();
  sub_2179AD6B4(0, 0, 0, v12, v10, v20, v21, v22, v34, v35, v36, v37, v38, v39, v40, WitnessTable, v42, v43, v44, v45[0], v45[1], v45[2], v45[3], v45[4], v45[5], v45[6]);
  v24 = v23;
  sub_2179AAFDC(0);
  v26 = v25;
  swift_initStackObject();
  v27 = sub_2179ADBE4(0, 0, 0, 0, 0, 255, 0, 0, -1);
  v28 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  v29 = v40;
  v30 = v42;
  sub_2179E9E90();
  if (v30)
  {
  }

  else
  {
    v35 = v26;
    WitnessTable = v24;
    v42 = v27;
    v31 = v37;
    HIBYTE(v44) = 0;
    sub_2179DA48C(&qword_27CB97B98, sub_2179AD4A0, &protocol conformance descriptor for Column<A>);
    v32 = v38;
    sub_2179E9CC0();

    v5 = v46;
    HIBYTE(v44) = 1;
    sub_2179DA48C(&qword_27CB97BA0, sub_2179DA3A8, &protocol conformance descriptor for Column<A>);
    sub_2179E9CC0();

    HIBYTE(v44) = 2;
    sub_2179DA48C(&qword_27CB97BA8, sub_2179AAFDC, &protocol conformance descriptor for Column<A>);
    sub_2179E9CC0();
    (*(v31 + 8))(v29, v32);
  }

  __swift_destroy_boxed_opaque_existential_1(v43);
  return v5;
}

uint64_t sub_2179D9BD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2179D9C24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2179D9C78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2179D9210(*(a1 + 16), *(a1 + 24));
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

uint64_t sub_2179D9CAC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  result = sub_2179D9670(a1, *(a2 + 16), *(a2 + 24), a4);
  if (!v4)
  {
    *a3 = result;
    a3[1] = v7;
    a3[2] = v8;
  }

  return result;
}

uint64_t sub_2179D9D0C()
{
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_2179D9EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2179D9EE4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for MKVSEntity(319, a1[2], a1[4], a4);
  if (v5 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2179D9F74(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 24) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 24) & ~v7, v6, v4);
      }

      v16 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_2179DA0F4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 24) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_45:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v22 = &a1[v10 + 24] & ~v10;

            __swift_storeEnumTagSinglePayload(v22, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v21 = a2 & 0x7FFFFFFF;
              *(a1 + 1) = 0;
              *(a1 + 2) = 0;
            }

            else
            {
              v21 = (a2 - 1);
            }

            *a1 = v21;
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_45;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}