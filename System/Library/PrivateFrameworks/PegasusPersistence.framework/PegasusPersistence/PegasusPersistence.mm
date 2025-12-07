uint64_t sub_25E1B125C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E1B85F0();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_25E1B1308(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25E1B85F0();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

__n128 sub_25E1B13C4(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_25E1B1470(char *a1, unsigned int a2)
{
  v3 = v2;
  v18 = a2;
  v5 = sub_25E1B85F0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = 0;
  sub_25E1B8570();
  v9 = sub_25E1B8590();
  v11 = v10;
  v12 = *(v6 + 8);
  v12(v8, v5);
  v13 = v19;
  v14 = sub_25E1B1610(v9, v11, v18);
  if (v13)
  {

    v12(a1, v5);
  }

  else
  {
    v15 = v14;
    v12(a1, v5);

    *(v3 + 16) = v15;
  }

  return v3;
}

sqlite3 *sub_25E1B1610(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_slowAlloc();
  *v6 = 0;
  if (a3)
  {
    v7 = 3211270;
  }

  else
  {
    v7 = 65542;
  }

  v8 = sub_25E1B1BE8(a1, a2, v6, v7);
  v9 = *v6;
  if (*v6)
  {
    v10 = v8;
    if (!v8)
    {
      MEMORY[0x25F8AE230](v6, -1, -1);
      return v9;
    }

    sub_25E1B17A0(*v6);
  }

  else
  {
    v10 = 0;
  }

  v9 = (v9 == 0);
  sub_25E1B2944();
  swift_allocError();
  *v11 = v10;
  *(v11 + 4) = v9;
  swift_willThrow();
  MEMORY[0x25F8AE230](v6, -1, -1);
  return v9;
}

void sub_25E1B1710()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    sub_25E1B17A0(v1);
    *(v0 + 16) = 0;
  }
}

uint64_t sub_25E1B1734()
{
  sub_25E1B1710();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void sub_25E1B17A0(sqlite3 *a1)
{
  v1 = sqlite3_close_v2(a1);
  if (v1)
  {
    v2 = v1;
    if (qword_2810B8A20 != -1)
    {
      swift_once();
    }

    v3 = sub_25E1B8680();
    __swift_project_value_buffer(v3, qword_2810B8CA0);
    oslog = sub_25E1B8660();
    v4 = sub_25E1B8710();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 67240192;
      *(v5 + 4) = v2;
      _os_log_impl(&dword_25E1B0000, oslog, v4, "Close db connection failed with code %{public}d", v5, 8u);
      MEMORY[0x25F8AE230](v5, -1, -1);
    }
  }
}

uint64_t sub_25E1B18BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(swift_allocObject() + 16) = a4;
  sub_25E1B60B4(a1, a2, a3, 1, 2, sub_25E1B2998, &v10);

  if (!v4)
  {
    if (v11 == 255)
    {
      sub_25E1B2944();
      swift_allocError();
      *v9 = 2;
      *(v9 + 4) = 1;
      return swift_willThrow();
    }

    else
    {
      return v10;
    }
  }

  return result;
}

void sub_25E1B19BC(sqlite3_stmt *a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  switch(sqlite3_column_type(a1, 0))
  {
    case 1:
      if (!a2)
      {
        sqlite3_column_int64(a1, 0);
        v6 = sub_25E1B8760();
        goto LABEL_27;
      }

      if (a2 == 1)
      {
        *a3 = sqlite3_column_int64(a1, 0);
        *(a3 + 8) = 0;
        v13 = 1;
        break;
      }

      if (a2 != 4)
      {
        goto LABEL_21;
      }

      *a3 = sqlite3_column_int(a1, 0);
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      return;
    case 2:
      if (!a2)
      {
        sqlite3_column_double(a1, 0);
        v6 = sub_25E1B8700();
        goto LABEL_27;
      }

      if (a2 == 2 || a2 == 5)
      {
        *a3 = sqlite3_column_double(a1, 0);
        *(a3 + 8) = 0;
        v13 = 4;
        break;
      }

      goto LABEL_21;
    case 3:
      if (a2)
      {
        goto LABEL_21;
      }

      if (sqlite3_column_bytes(a1, 0) >= 1 && sqlite3_column_text(a1, 0))
      {
        v6 = sub_25E1B86E0();
LABEL_27:
        *a3 = v6;
        *(a3 + 8) = v7;
      }

      else
      {
        *a3 = xmmword_25E1B8C60;
      }

      v13 = 2;
      break;
    case 4:
      if (a2 != 3)
      {
        goto LABEL_21;
      }

      v8 = sqlite3_column_bytes(a1, 0);
      if (v8 >= 1 && (v9 = v8, (v10 = sqlite3_column_blob(a1, 0)) != 0))
      {
        *a3 = MEMORY[0x25F8ADC70](v10, v9);
        *(a3 + 8) = v11;
      }

      else
      {
        *a3 = xmmword_25E1B8C70;
      }

      v13 = 3;
      break;
    default:
LABEL_21:
      *a3 = 0;
      *(a3 + 8) = 0;
      v13 = -1;
      break;
  }

  *(a3 + 16) = v13;
}

uint64_t sub_25E1B1BA0@<X0>(char *zSql@<X0>, sqlite3 *db@<X1>, sqlite3_stmt **ppStmt@<X2>, const char **pzTail@<X3>, _DWORD *a5@<X8>)
{
  result = sqlite3_prepare_v2(db, zSql, -1, ppStmt, pzTail);
  *a5 = result;
  return result;
}

void *sub_25E1B1BE8(uint64_t a1, uint64_t a2, sqlite3 **ppDb, int flags)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      *filename = a1;
      v8 = a2 & 0xFFFFFFFFFFFFFFLL;
      v5 = filename;
      return sqlite3_open_v2(v5, ppDb, flags, 0);
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      return sqlite3_open_v2(v5, ppDb, flags, 0);
    }
  }

  result = sub_25E1B8740();
  if (!v4)
  {
    return v9;
  }

  return result;
}

void *sub_25E1B1CA0(uint64_t a1, uint64_t a2, sqlite3_stmt *a3, uint64_t a4, uint64_t a5)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      *v12 = a1;
      v13 = a2 & 0xFFFFFFFFFFFFFFLL;
      v7 = a4 + 1;
      if (!__OFADD__(a4, 1))
      {
        if (v7 >= 0xFFFFFFFF80000000)
        {
          if (v7 <= 0x7FFFFFFF)
          {
            if (qword_2810B8B10 == -1)
            {
LABEL_14:
              v9 = qword_2810B8B08;
              v10 = v12;
              return sqlite3_bind_text(a3, v7, v10, -1, v9);
            }

LABEL_25:
            swift_once();
            goto LABEL_14;
          }

          goto LABEL_23;
        }

        goto LABEL_21;
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v7 = a4 + 1;
      if (!__OFADD__(a4, 1))
      {
        if (v7 >= 0xFFFFFFFF80000000)
        {
          if (v7 <= 0x7FFFFFFF)
          {
            v8 = a2 & 0xFFFFFFFFFFFFFFFLL;
            if (qword_2810B8B10 != -1)
            {
              swift_once();
            }

            v9 = qword_2810B8B08;
            v10 = (v8 + 32);
            return sqlite3_bind_text(a3, v7, v10, -1, v9);
          }

          goto LABEL_24;
        }

        goto LABEL_22;
      }

      goto LABEL_20;
    }
  }

  result = sub_25E1B8740();
  if (!v5)
  {
    return v14;
  }

  return result;
}

uint64_t sub_25E1B1E28(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_25E1B2944();
    swift_allocError();
    *v2 = v1;
    *(v2 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

void *sub_25E1B1E84(uint64_t a1, unint64_t a2, char a3, uint64_t a4, sqlite3_stmt *a5)
{
  v24[3] = *MEMORY[0x277D85DE8];
  v6 = a1;
  switch(a3)
  {
    case 1:
      LODWORD(a2) = a4 + 1;
      if (__OFADD__(a4, 1))
      {
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_1();
      if (v7 != v8)
      {
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_0();
      if (!(v7 ^ v8 | v10))
      {
        goto LABEL_51;
      }

      return sqlite3_bind_int64(a5, a2, v18);
    case 2:
      return sub_25E1B1CA0(a1, a2, a5, a4, *v5);
    case 3:
      switch(a2 >> 62)
      {
        case 1uLL:
          if (a1 >> 32 < a1)
          {
            goto LABEL_54;
          }

          a1 = a1;
          v19 = a2;
          v20 = v6 >> 32;
          break;
        case 2uLL:
          a1 = *(a1 + 16);
          v19 = a2;
          v20 = *(v6 + 24);
          break;
        case 3uLL:
          memset(v24, 0, 14);
          LODWORD(a2) = a4 + 1;
          if (__OFADD__(a4, 1))
          {
            goto LABEL_52;
          }

          OUTLINED_FUNCTION_1();
          if (v7 != v8)
          {
            goto LABEL_55;
          }

          OUTLINED_FUNCTION_0();
          if (!(v7 ^ v8 | v10))
          {
            goto LABEL_57;
          }

          if (qword_2810B8B10 == -1)
          {
            goto LABEL_37;
          }

          goto LABEL_59;
        default:
          v24[0] = a1;
          LOWORD(v24[1]) = a2;
          BYTE2(v24[1]) = BYTE2(a2);
          BYTE3(v24[1]) = BYTE3(a2);
          BYTE4(v24[1]) = BYTE4(a2);
          BYTE5(v24[1]) = BYTE5(a2);
          v13 = a4 + 1;
          if (__OFADD__(a4, 1))
          {
            goto LABEL_53;
          }

          if (v13 > 0x7FFFFFFF)
          {
            goto LABEL_56;
          }

          if (v13 < 0xFFFFFFFF80000000)
          {
            goto LABEL_58;
          }

          v14 = HIWORD(a2);
          if (qword_2810B8B10 != -1)
          {
            v23 = a5;
            swift_once();
            a5 = v23;
          }

          v15 = v14;
          v16 = a5;
          LODWORD(a2) = v13;
          v17 = qword_2810B8B08;
          return sqlite3_bind_blob(v16, a2, v24, v15, v17);
      }

      return sub_25E1B27F4(a1, v20, v19, a5, a4);
    case 4:
      LODWORD(a2) = a4 + 1;
      if (__OFADD__(a4, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_1();
      if (v7 != v8)
      {
        goto LABEL_46;
      }

      OUTLINED_FUNCTION_0();
      if (!(v7 ^ v8 | v10))
      {
        goto LABEL_49;
      }

      return sqlite3_bind_double(a5, a2, v12);
    default:
      LODWORD(a2) = a4 + 1;
      if (__OFADD__(a4, 1))
      {
LABEL_44:
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
        goto LABEL_50;
      }

      OUTLINED_FUNCTION_1();
      if (v7 != v8)
      {
        goto LABEL_47;
      }

      OUTLINED_FUNCTION_0();
      if (v7 ^ v8 | v10)
      {

        return sqlite3_bind_int(a5, a2, v9);
      }

LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      v21 = a2;
      v22 = a5;
      swift_once();
      LODWORD(a2) = v21;
      a5 = v22;
LABEL_37:
      v16 = a5;
      v15 = 0;
      v17 = qword_2810B8B08;
      return sqlite3_bind_blob(v16, a2, v24, v15, v17);
  }
}

uint64_t sub_25E1B224C@<X0>(char *a1@<X0>, sqlite3_stmt *a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v7 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a4;
  if (v7 < 0xFFFFFFFF80000000)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v7 > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = a2;
  v5 = a1;
  if (qword_2810B8B10 != -1)
  {
LABEL_9:
    swift_once();
  }

  result = sqlite3_bind_text(v6, v7, v5, -1, qword_2810B8B08);
  *v4 = result;
  return result;
}

uint64_t sub_25E1B2328(uint64_t a1, uint64_t a2)
{
  v2 = sub_25E1B86C0();
  v4 = v3;
  if (v2 == sub_25E1B86C0() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_25E1B8770();
  }

  return v7 & 1;
}

uint64_t sub_25E1B23BC(uint64_t a1, id *a2)
{
  result = sub_25E1B86A0();
  *a2 = 0;
  return result;
}

uint64_t sub_25E1B2438(uint64_t a1, id *a2)
{
  v3 = sub_25E1B86B0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_25E1B24B8@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_25E1B29EC(a2);
  *a1 = result;
  return result;
}

uint64_t sub_25E1B24E8(uint64_t a1)
{
  v1 = sub_25E1B86C0();
  v2 = MEMORY[0x25F8ADD50](v1);

  return v2;
}

uint64_t sub_25E1B2528(uint64_t a1, uint64_t a2)
{
  sub_25E1B86C0();
  sub_25E1B86D0();
}

uint64_t sub_25E1B2584(uint64_t a1, uint64_t a2)
{
  sub_25E1B86C0();
  sub_25E1B87C0();
  sub_25E1B86D0();
  v2 = sub_25E1B87E0();

  return v2;
}

uint64_t sub_25E1B2604@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_25E1B8690();

  *a2 = v3;
  return result;
}

uint64_t sub_25E1B264C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25E1B2678(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25E1B267C(uint64_t a1)
{
  v2 = sub_25E1B277C(&qword_27FCDEDD8, &unk_25E1B8DF8);
  v3 = sub_25E1B277C(&qword_27FCDEDE0, &unk_25E1B8D98);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_25E1B277C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URLResourceKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25E1B27F4(uint64_t a1, uint64_t a2, int a3, sqlite3_stmt *a4, uint64_t a5)
{
  LODWORD(v7) = a3;
  v10 = sub_25E1B84F0();
  if (!v10)
  {
LABEL_4:
    v12 = __OFSUB__(a2, a1);
    v13 = a2 - a1;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      v14 = sub_25E1B8500();
      if (v14 >= v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v14;
      }

      v7 = a5 + 1;
      if (!__OFADD__(a5, 1))
      {
        if (v7 >= 0xFFFFFFFF80000000)
        {
          if (v7 <= 0x7FFFFFFF)
          {
            if (v10)
            {
              a5 = v15;
            }

            else
            {
              a5 = 0;
            }

            if (a5 >= 0xFFFFFFFF80000000)
            {
              if (a5 <= 0x7FFFFFFF)
              {
                if (qword_2810B8B10 == -1)
                {
                  return sqlite3_bind_blob(a4, v7, v10, a5, qword_2810B8B08);
                }

LABEL_24:
                swift_once();
                return sqlite3_bind_blob(a4, v7, v10, a5, qword_2810B8B08);
              }

LABEL_23:
              __break(1u);
              goto LABEL_24;
            }

LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  result = sub_25E1B8510();
  if (!__OFSUB__(a1, result))
  {
    v10 += a1 - result;
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

unint64_t sub_25E1B2944()
{
  result = qword_2810B8A10;
  if (!qword_2810B8A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810B8A10);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_25E1B29EC(uint64_t a1)
{
  sub_25E1B86C0();
  v1 = sub_25E1B8690();

  return v1;
}

uint64_t sub_25E1B2A24@<X0>(const char *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sqlite3_open_v2(a1, *(v2 + 16), *(v2 + 24), 0);
  *a2 = result;
  return result;
}

uint64_t sub_25E1B2A70(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25E1B2A90(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void sub_25E1B2ACC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DataStore.Error(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for DataStore.Error(uint64_t result, int a2, int a3)
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

uint64_t sub_25E1B2B78(uint64_t a1)
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

uint64_t sub_25E1B2B98(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 4) = v2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_25E1B2C04(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 4)
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

uint64_t sub_25E1B2C44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t PegasusPersistenceReader.codableForResource<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_25E1B84B0();
  swift_allocObject();
  v14[3] = v12;
  v14[4] = &protocol witness table for JSONDecoder;
  v14[0] = sub_25E1B84A0();
  (*(a5 + 24))(a1, a2, v14, a4, a6, a3, a5);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t PegasusPersistenceReader.codableForResource<A>(_:decoder:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = (*(a6 + 8))(a1, a2, a4, a6);
  if (!v7)
  {
    v13 = result;
    v14 = v12;
    v17 = a7;
    v16 = a3[3];
    v15 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v16);
    (*(v15 + 8))(a5, v13, v14, a5, v17, v16, v15);
    return sub_25E1B2F5C(v13, v14);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_25E1B2F5C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t static PegasusKeyValueElement<>.read(fromPegasusKeyValueStore:at:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  return (*(v11 + 104))(a2, a3, a4, a6, v10, v11);
}

uint64_t PegasusKeyValueElement<>.write(toPegasusKeyValueStore:at:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  return (*(v13 + 112))(v7, a2, a3, a4, a7, v12, v13);
}

uint64_t static Int.read(fromPegasusKeyValueStore:at:)(void *a1)
{
  OUTLINED_FUNCTION_1_0(a1);
  v1 = OUTLINED_FUNCTION_0_0();
  return v2(v1);
}

uint64_t Int.write(toPegasusKeyValueStore:at:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_2();
  return v4();
}

uint64_t sub_25E1B3224@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = static Int.read(fromPegasusKeyValueStore:at:)(a2);
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t static Double.read(fromPegasusKeyValueStore:at:)(void *a1)
{
  OUTLINED_FUNCTION_1_0(a1);
  v1 = OUTLINED_FUNCTION_0_0();
  return v2(v1);
}

uint64_t Double.write(toPegasusKeyValueStore:at:)(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  return (*(v8 + 48))(a2, a3, v7, v8, a4);
}

uint64_t sub_25E1B3334@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = static Double.read(fromPegasusKeyValueStore:at:)(a2);
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t static Date.read(fromPegasusKeyValueStore:at:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  return (*(v6 + 88))(a2, a3, v5, v6);
}

uint64_t Date.write(toPegasusKeyValueStore:at:)(void *a1)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_2();
  return v1();
}

uint64_t static Bool.read(fromPegasusKeyValueStore:at:)(void *a1)
{
  OUTLINED_FUNCTION_1_0(a1);
  v1 = OUTLINED_FUNCTION_0_0();
  return v2(v1);
}

uint64_t Bool.write(toPegasusKeyValueStore:at:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_2();
  return v4();
}

uint64_t sub_25E1B34E8@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = static Bool.read(fromPegasusKeyValueStore:at:)(a2);
  *a1 = result;
  return result;
}

uint64_t static Data.read(fromPegasusKeyValueStore:at:)(void *a1)
{
  OUTLINED_FUNCTION_1_0(a1);
  v1 = OUTLINED_FUNCTION_0_0();
  return v2(v1);
}

uint64_t Data.write(toPegasusKeyValueStore:at:)(void *a1)
{
  OUTLINED_FUNCTION_5(a1);
  v1 = OUTLINED_FUNCTION_4();
  return v2(v1);
}

uint64_t sub_25E1B35B4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = static Data.read(fromPegasusKeyValueStore:at:)(a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static String.read(fromPegasusKeyValueStore:at:)(void *a1)
{
  OUTLINED_FUNCTION_1_0(a1);
  v1 = OUTLINED_FUNCTION_0_0();
  return v2(v1);
}

uint64_t String.write(toPegasusKeyValueStore:at:)(void *a1)
{
  OUTLINED_FUNCTION_5(a1);
  v1 = OUTLINED_FUNCTION_4();
  return v2(v1);
}

uint64_t sub_25E1B3680@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = static String.read(fromPegasusKeyValueStore:at:)(a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25E1B37E8(uint64_t a1, uint64_t a2)
{
  v21[0] = a2;
  v3 = sub_25E1B8580();
  OUTLINED_FUNCTION_0_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E1B85F0();
  OUTLINED_FUNCTION_0_1();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v21 - v16;
  v21[2] = a1;
  v21[3] = v21[0];
  (*(v5 + 104))(v8, *MEMORY[0x277CC91D0], v3);
  sub_25E1B3DE8();
  sub_25E1B85E0();
  (*(v5 + 8))(v8, v3);
  sub_25E1B8570();
  v18 = *(v11 + 8);
  v18(v15, v9);
  v19 = sub_25E1B8600();
  v18(v17, v9);
  return v19;
}

uint64_t sub_25E1B3A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[0] = a4;
  v22[2] = a1;
  v22[3] = a2;
  v5 = sub_25E1B8580();
  OUTLINED_FUNCTION_0_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25E1B85F0();
  OUTLINED_FUNCTION_0_1();
  v13 = v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v22 - v18;
  v22[4] = a3;
  v22[5] = v22[0];
  (*(v7 + 104))(v10, *MEMORY[0x277CC91D0], v5);
  sub_25E1B3DE8();
  sub_25E1B85E0();
  (*(v7 + 8))(v10, v5);
  sub_25E1B8570();
  v20 = *(v13 + 8);
  v20(v17, v11);
  sub_25E1B8620();
  return (v20)(v19, v11);
}

uint64_t sub_25E1B3C20()
{
  v1 = OBJC_IVAR____TtC18PegasusPersistence22PegasusFilePersistence_baseFolder;
  v2 = sub_25E1B85F0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for PegasusFilePersistence(uint64_t a1)
{
  result = qword_27FCDEDF0;
  if (!qword_27FCDEDF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25E1B3D10(uint64_t a1)
{
  result = sub_25E1B85F0();
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

unint64_t sub_25E1B3DE8()
{
  result = qword_2810B8A60;
  if (!qword_2810B8A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810B8A60);
  }

  return result;
}

uint64_t sub_25E1B3E50()
{
  v0 = sub_25E1B8680();
  __swift_allocate_value_buffer(v0, qword_2810B8CA0);
  __swift_project_value_buffer(v0, qword_2810B8CA0);
  return sub_25E1B8670();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t PegasusPersistenceContext.location.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25E1B85F0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PegasusPersistenceContext.init(location:fileManager:)@<X0>(uint64_t a1@<X0>, id a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25E1B85F0();
  OUTLINED_FUNCTION_0_1();
  v8 = v7;
  (*(v9 + 16))(a3, a1, v6);
  if (!a2)
  {
    a2 = [objc_opt_self() defaultManager];
  }

  (*(v8 + 8))(a1, v6);
  result = type metadata accessor for PegasusPersistenceContext(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t type metadata accessor for PegasusPersistenceContext(uint64_t a1)
{
  result = qword_2810B8C10;
  if (!qword_2810B8C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PegasusPersistenceContext.localDirectory()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49[7] = *MEMORY[0x277D85DE8];
  sub_25E1B8550();
  OUTLINED_FUNCTION_0_1();
  v45 = v4;
  v46 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v44 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v48 = &v43 - v8;
  v9 = sub_25E1B85F0();
  OUTLINED_FUNCTION_0_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25E1B8580();
  OUTLINED_FUNCTION_0_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49[0] = 0x6C61636F6CLL;
  v49[1] = 0xE500000000000000;
  (*(v17 + 104))(v20, *MEMORY[0x277CC91C0], v15);
  sub_25E1B3DE8();
  sub_25E1B85E0();
  (*(v17 + 8))(v20, v15);
  sub_25E1B8570();
  sub_25E1B85D0();
  v23 = *(v11 + 8);
  v22 = v11 + 8;
  v21 = v23;
  v24 = v14;
  v25 = v9;
  v26 = a1;
  v23(v24, v9);
  v27 = *(v2 + *(type metadata accessor for PegasusPersistenceContext(0) + 20));
  v28 = v48;
  v29 = sub_25E1B8690();

  LOBYTE(v20) = [v27 fileExistsAtPath_];

  if ((v20 & 1) == 0)
  {
    v30 = sub_25E1B85C0();
    v49[0] = 0;
    v31 = [v27 createDirectoryAtURL:v30 withIntermediateDirectories:1 attributes:0 error:v49];

    if (!v31)
    {
      v42 = v49[0];
      sub_25E1B8560();

      swift_willThrow();
      return v21(v26, v25);
    }

    v32 = v49[0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDEE00, &qword_25E1B9160);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25E1B9150;
  v34 = *MEMORY[0x277CBE878];
  *(inited + 32) = *MEMORY[0x277CBE878];
  v35 = v34;
  sub_25E1B45E4(inited);
  v36 = v47;
  sub_25E1B85A0();
  if (v36)
  {
    v21(v26, v25);
  }

  else
  {
    v47 = v22;

    v38 = sub_25E1B8520();
    v39 = v45;
    v40 = *(v46 + 8);
    v46 += 8;
    result = v40(v28, v45);
    if (v38 != 2 && (v38 & 1) == 0)
    {
      v41 = v44;
      sub_25E1B8540();
      sub_25E1B8530();
      sub_25E1B85B0();
      return v40(v41, v39);
    }
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_25E1B45E4(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDEE08, &unk_25E1B9190), v2 = sub_25E1B8730(), v3 = v2, (v24 = *(v1 + 16)) != 0))
  {
    v4 = 0;
    v5 = v2 + 56;
    v22 = v1;
    v23 = v1 + 32;
    while (v4 < *(v1 + 16))
    {
      v6 = *(v23 + 8 * v4++);
      sub_25E1B86C0();
      sub_25E1B87C0();
      v25 = v6;
      sub_25E1B86D0();
      v7 = sub_25E1B87E0();

      v8 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v9 = v7 & v8;
        v10 = (v7 & v8) >> 6;
        v11 = *(v5 + 8 * v10);
        v12 = 1 << (v7 & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        v13 = sub_25E1B86C0();
        v15 = v14;
        if (v13 == sub_25E1B86C0() && v15 == v16)
        {

          goto LABEL_17;
        }

        v18 = sub_25E1B8770();

        if (v18)
        {

          goto LABEL_17;
        }

        v7 = v9 + 1;
      }

      *(v5 + 8 * v10) = v12 | v11;
      *(*(v3 + 48) + 8 * v9) = v25;
      v19 = *(v3 + 16);
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      *(v3 + 16) = v21;
LABEL_17:
      v1 = v22;
      if (v4 == v24)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

uint64_t sub_25E1B4860(uint64_t a1)
{
  result = sub_25E1B85F0();
  if (v2 <= 0x3F)
  {
    result = sub_25E1B48E4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_25E1B48E4()
{
  result = qword_2810B8A18;
  if (!qword_2810B8A18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810B8A18);
  }

  return result;
}

void PegasusKeyValueStore.codable<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_2_0();
  v34 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = sub_25E1B8720();
  OUTLINED_FUNCTION_0_2();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v34 - v23;
  v25 = (*(v8 + 56))(v16, v14, v12, v8);
  if (v26 >> 60 == 15)
  {
    OUTLINED_FUNCTION_1_1();

    __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  }

  else
  {
    v32 = v25;
    v33 = v26;
    sub_25E1B84B0();
    swift_allocObject();
    sub_25E1B84A0();
    sub_25E1B8490();
    sub_25E1B4B08(v32, v33);

    __swift_storeEnumTagSinglePayload(v24, 0, 1, v10);
    (*(v21 + 32))(v18, v24, v19);
    OUTLINED_FUNCTION_1_1();
  }
}

uint64_t sub_25E1B4B08(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25E1B2F5C(result, a2);
  }

  return result;
}

uint64_t PegasusKeyValueStore.setCodable<A>(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_25E1B84E0();
  swift_allocObject();
  sub_25E1B84D0();
  v12 = sub_25E1B84C0();
  v14 = v13;

  if (!v7)
  {
    (*(a6 + 64))(v12, v14, a2, a3, a4, a6);
    return sub_25E1B2F5C(v12, v14);
  }

  return result;
}

uint64_t PegasusKeyValueStore.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[3] = a3;
  v14[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, v6, a3);
  (*(a6 + 8))(v14, a1, a2, a4, a6);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

void PegasusKeyValueStore.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_2_0();
  v33 = v9;
  v34 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v35 = v16;
  v18 = v17;
  v19 = sub_25E1B8720();
  OUTLINED_FUNCTION_0_2();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v33 - v23;
  OUTLINED_FUNCTION_0_2();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v33 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v21 + 16);
  v36 = v18;
  v30(v24, v18, v19);
  if (__swift_getEnumTagSinglePayload(v24, 1, v13) == 1)
  {
    v31 = *(v21 + 8);
    v31(v24, v19);
    (*(v11 + 120))(v34, v35, v15, v11);
    v31(v36, v19);
  }

  else
  {
    (*(v26 + 32))(v29, v24, v13);
    v37[3] = v15;
    v37[4] = v11;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
    (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v7, v15);
    (*(v33 + 16))(v37, v34, v35, v13);

    (*(v21 + 8))(v36, v19);
    (*(v26 + 8))(v29, v13);
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  OUTLINED_FUNCTION_1_1();
}

uint64_t (*sub_25E1B5054(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v14 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v14;
  PegasusKeyValueStore.subscript.modify(v14, a2, a3, a6, a4, a7, a5);
  v14[4] = v15;
  return sub_25E1B50F8;
}

void PegasusKeyValueStore.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_2_0();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = __swift_coroFrameAllocStub(0x58uLL);
  *v21 = v22;
  v22[5] = v9;
  v22[6] = v7;
  v22[3] = v13;
  v22[4] = v11;
  v22[1] = v17;
  v22[2] = v15;
  *v22 = v19;
  v23 = sub_25E1B8720();
  v22[7] = v23;
  v24 = *(v23 - 8);
  v22[8] = v24;
  v25 = *(v24 + 64);
  v22[9] = __swift_coroFrameAllocStub(v25);
  v22[10] = __swift_coroFrameAllocStub(v25);
  PegasusKeyValueStore.subscript.getter(v19, v17, v15, v13, v11, v9);
  OUTLINED_FUNCTION_1_1();
}

void sub_25E1B5218(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[9];
  v4 = (*a1)[10];
  if (a2)
  {
    v5 = v2[7];
    v6 = v2[8];
    v18 = v2[5];
    v8 = v2[3];
    v7 = v2[4];
    v10 = v2[1];
    v9 = v2[2];
    v11 = *v2;
    (*(v6 + 16))(v3, v4, v5);

    PegasusKeyValueStore.subscript.setter(v3, v11, v10, v9, v8, v7, v18);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v12 = v2[5];
    v14 = v2[3];
    v13 = v2[4];
    v16 = v2[1];
    v15 = v2[2];
    v17 = *v2;

    PegasusKeyValueStore.subscript.setter(v4, v17, v16, v15, v14, v13, v12);
  }

  free(v4);
  free(v3);

  free(v2);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t PegasusKeyValueStoreError.hashValue.getter()
{
  v1 = *v0;
  sub_25E1B87C0();
  MEMORY[0x25F8ADE30](v1);
  return sub_25E1B87E0();
}

uint64_t sub_25E1B5408(uint64_t a1)
{
  v2 = *v1;
  sub_25E1B87C0();
  MEMORY[0x25F8ADE30](v2);
  return sub_25E1B87E0();
}

unint64_t sub_25E1B5450()
{
  result = qword_27FCDEE10[0];
  if (!qword_27FCDEE10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FCDEE10);
  }

  return result;
}

void sub_25E1B54D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 32);
  v7 = *(a3 + a4 - 24);
  v8 = *(a3 + a4 - 16);
  v9 = *(a3 + a4 - 8);
  v10 = sub_25E1B8720();
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  v14 = *a3;
  v13 = a3[1];
  (*(v15 + 16))(&v16 - v11, a1);

  PegasusKeyValueStore.subscript.setter(v12, v14, v13, v6, v7, v8, v9);
}

uint64_t getEnumTagSinglePayload for PegasusKeyValueStoreError(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for PegasusKeyValueStoreError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25E1B5A04(uint64_t a1, uint64_t a2)
{
  result = sub_25E1B73B4();
  if (v4 != 3)
  {
    if (v4 != 255)
    {
      sub_25E1B5FA8(result, v3, v4);
    }

    return 0;
  }

  return result;
}

uint64_t sub_25E1B5A68(uint64_t a1, uint64_t a2)
{
  v2 = sub_25E1B73B4();
  if (v4 != 255)
  {
    if (!v4)
    {
      return v2 == 1;
    }

    sub_25E1B5FA8(v2, v3, v4);
  }

  return 2;
}

uint64_t sub_25E1B5AD8(uint64_t a1, uint64_t a2)
{
  result = sub_25E1B73B4();
  if (v4 != 255)
  {
    if (v4 == 2)
    {
      return result;
    }

    sub_25E1B5FA8(result, v3, v4);
  }

  return 0;
}

uint64_t sub_25E1B5B3C(uint64_t a1, uint64_t a2)
{
  result = sub_25E1B73B4();
  if (v4 != 1)
  {
    if (v4 != 255)
    {
      sub_25E1B5FA8(result, v3, v4);
    }

    return 0;
  }

  return result;
}

uint64_t sub_25E1B5BB8(uint64_t a1, uint64_t a2)
{
  result = sub_25E1B73B4();
  if (v4 != 255)
  {
    if (v4 == 4)
    {
      return result;
    }

    sub_25E1B5FA8(result, v3, v4);
  }

  return 0;
}

uint64_t sub_25E1B5C2C@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_25E1B73B4();
  if (v6 != 255)
  {
    if (v6 == 4)
    {
      sub_25E1B8630();
      v7 = 0;
      goto LABEL_6;
    }

    sub_25E1B5FA8(v4, v5, v6);
  }

  v7 = 1;
LABEL_6:
  v8 = sub_25E1B8650();

  return __swift_storeEnumTagSinglePayload(a3, v7, 1, v8);
}

void sub_25E1B5ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_2_0();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = __swift_coroFrameAllocStub(0x28uLL);
  *v20 = v21;
  PegasusKeyValueStore.subscript.modify(v21, v18, v16, v10, v14, v8, v12);
  v21[4] = v22;
  OUTLINED_FUNCTION_1_1();
}

void sub_25E1B5F60(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_25E1B5FA8(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_25E1B5FBC(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_25E1B5FBC(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 3)
  {
    return sub_25E1B2F5C(result, a2);
  }

  if (a3 == 2)
  {
  }

  return result;
}

uint64_t sub_25E1B6024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_25E1B60B4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t *__return_ptr)@<X5>, uint64_t a7@<X8>)
{
  v9 = *(v7 + 16);
  if (v9)
  {
    v52 = a5;
    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_25E1B66B0(a1, a2, v9, v14, v15);
    sub_25E1B1E28(v16);
    if (v8)
    {
LABEL_3:
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_5_0();
      return;
    }

    v19 = *v14;
    if (!*v14)
    {
      v33 = sub_25E1B2944();
      OUTLINED_FUNCTION_4_0(&type metadata for DataStore.Error, v33);
      *v34 = 1;
      *(v34 + 4) = 1;
      swift_willThrow();
      goto LABEL_3;
    }

    v46 = a7;
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_5_0();
    v20 = 0;
    v21 = *(a3 + 16);
    v22 = a3 + 48;
    while (v21 != v20)
    {
      v23 = OUTLINED_FUNCTION_1_2();
      sub_25E1B7C7C(v23, v24, v25);
      v26 = OUTLINED_FUNCTION_1_2();
      v29 = sub_25E1B1E84(v26, v27, v28, v20, v19);
      sub_25E1B1E28(v29);
      ++v20;
      v30 = OUTLINED_FUNCTION_1_2();
      sub_25E1B5FBC(v30, v31, v32);
      v22 += 24;
    }

    v35 = 0;
    v36 = v52;
    while (1)
    {
      v37 = sqlite3_step(v19);
      if (v37 != 100)
      {
        break;
      }

      if (v35 + 1 >= v36)
      {
        goto LABEL_23;
      }

      if (a6)
      {
        a6(&v49);
      }

      else
      {
        v49 = 0;
        v50 = 0;
        v51 = -1;
      }

      v38 = v50;
      v39 = v51;
      if (v35 + 2 >= v36)
      {
        *v46 = v49;
        *(v46 + 8) = v38;
        *(v46 + 16) = v39;
        goto LABEL_28;
      }

      sub_25E1B5FA8(v49, v50, v51);
      ++v35;
    }

    v40 = v37;
    if (v37 != 101)
    {
      v44 = sub_25E1B2944();
      OUTLINED_FUNCTION_4_0(&type metadata for DataStore.Error, v44);
      *v45 = v40;
      *(v45 + 4) = 0;
      goto LABEL_25;
    }

    if (v35 < a4 || v35 >= v36)
    {
LABEL_23:
      v42 = sub_25E1B2944();
      OUTLINED_FUNCTION_4_0(&type metadata for DataStore.Error, v42);
      *v43 = 3;
      *(v43 + 4) = 1;
LABEL_25:
      swift_willThrow();
      goto LABEL_28;
    }

    *v46 = 0;
    *(v46 + 8) = 0;
    *(v46 + 16) = -1;
LABEL_28:
    sqlite3_finalize(v19);
  }

  else
  {
    v17 = sub_25E1B2944();
    OUTLINED_FUNCTION_4_0(&type metadata for DataStore.Error, v17);
    *v18 = 0;
    *(v18 + 4) = 1;
    swift_willThrow();
  }
}

uint64_t sub_25E1B6378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *__return_ptr), uint64_t a7)
{
  v9 = *(v7 + 16);
  if (v9)
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_25E1B66B0(a1, a2, v9, v14, v15);
    sub_25E1B1E28(v16);
    if (!v8)
    {
      v18 = *v14;
      if (*v14)
      {
        v34 = a4;
        MEMORY[0x25F8AE230](v15, -1, -1);
        MEMORY[0x25F8AE230](v14, -1, -1);
        v19 = 0;
        v20 = *(a3 + 16);
        v21 = (a3 + 48);
        while (v20 != v19)
        {
          v22 = *(v21 - 2);
          v23 = *(v21 - 1);
          v24 = *v21;
          sub_25E1B7C7C(v22, v23, *v21);
          v25 = sub_25E1B1E84(v22, v23, v24, v19, v18);
          sub_25E1B1E28(v25);
          ++v19;
          sub_25E1B5FBC(v22, v23, v24);
          v21 += 24;
        }

        v27 = 0;
        v7 = a7;
        while (1)
        {
          v28 = sqlite3_step(v18);
          if (v28 != 100)
          {
            break;
          }

          if (v27 + 1 >= a5)
          {
            goto LABEL_25;
          }

          if (a6)
          {
            a6(&v38);
          }

          else
          {
            LOBYTE(v38) = 1;
          }

          if (v27 + 2 >= a5)
          {
            v7 = v38;
            goto LABEL_27;
          }

          ++v27;
        }

        v29 = v28;
        if (v28 == 101)
        {
          v7 = 1;
          if (v27 >= v34 && v27 < a5)
          {
LABEL_27:
            sqlite3_finalize(v18);
            return v7;
          }

LABEL_25:
          sub_25E1B2944();
          swift_allocError();
          *v32 = 3;
          *(v32 + 4) = 1;
        }

        else
        {
          sub_25E1B2944();
          swift_allocError();
          *v31 = v29;
          *(v31 + 4) = 0;
        }

        swift_willThrow();
        goto LABEL_27;
      }

      sub_25E1B2944();
      swift_allocError();
      *v26 = 1;
      *(v26 + 4) = 1;
      swift_willThrow();
    }

    MEMORY[0x25F8AE230](v15, -1, -1);
    MEMORY[0x25F8AE230](v14, -1, -1);
  }

  else
  {
    sub_25E1B2944();
    swift_allocError();
    *v17 = 0;
    *(v17 + 4) = 1;
    swift_willThrow();
  }

  return v7;
}

void *sub_25E1B66B0(uint64_t a1, uint64_t a2, sqlite3 *db, sqlite3_stmt **a4, const char **a5)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      *zSql = a1;
      v9 = a2 & 0xFFFFFFFFFFFFFFLL;
      v6 = zSql;
      return sqlite3_prepare_v2(db, v6, -1, a4, a5);
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      return sqlite3_prepare_v2(db, v6, -1, a4, a5);
    }
  }

  result = sub_25E1B8740();
  if (!v5)
  {
    return v10;
  }

  return result;
}

void sub_25E1B6764(uint64_t a1, uint64_t a2, os_unfair_lock_s *a3)
{
  os_unfair_lock_lock(a3 + 6);
  sub_25E1B7D78(&a3[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(a3 + 6);
}

void *sub_25E1B67C4(void *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v5);
  if (!v2)
  {

    *a1 = v5;
  }

  return result;
}

uint64_t *static PegasusKeyValueStoreFactory.store(at:requiresAuthentication:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  v4 = a2;
  sub_25E1B85F0();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_1();
  v10 = v9 - v8;
  (*(v11 + 16))(v9 - v8, a1);
  v12 = type metadata accessor for KeyValueStore();
  swift_allocObject();
  result = sub_25E1B6E44(v10, v4);
  if (!v3)
  {
    a3[3] = v12;
    a3[4] = &off_286FDF040;
    *a3 = result;
  }

  return result;
}

uint64_t static PegasusKeyValueStoreFactory.deviceInfoStore(context:name:requiresAuthentication:)@<X0>(unint64_t a1@<X1>, unint64_t a2@<X2>, int a3@<W3>, uint64_t *a4@<X8>)
{
  v38 = a3;
  v33 = a1;
  v34 = a2;
  v32 = a4;
  v5 = sub_25E1B8580();
  OUTLINED_FUNCTION_0_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_1();
  v11 = v10 - v9;
  v35 = sub_25E1B85F0();
  OUTLINED_FUNCTION_0_1();
  v13 = v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v32 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v32 - v21;
  result = PegasusPersistenceContext.localDirectory()(v20);
  if (!v4)
  {
    v24 = 0x642E656369766564;
    if (v34)
    {
      v24 = v33;
    }

    v25 = 0xE900000000000062;
    if (v34)
    {
      v25 = v34;
    }

    v33 = v25;
    v36 = v24;
    v37 = v25;
    (*(v7 + 104))(v11, *MEMORY[0x277CC91D0], v5);
    sub_25E1B3DE8();

    sub_25E1B85E0();
    (*(v7 + 8))(v11, v5);

    v26 = *(v13 + 8);
    v27 = v20;
    v28 = v35;
    v26(v27, v35);
    (*(v13 + 16))(v17, v22, v28);
    v29 = type metadata accessor for KeyValueStore();
    swift_allocObject();
    v30 = sub_25E1B6E44(v17, v38 & 1);
    v31 = v32;
    v32[3] = v29;
    v31[4] = &off_286FDF040;
    *v31 = v30;
    return (v26)(v22, v28);
  }

  return result;
}

uint64_t static PegasusKeyValueStoreFactory.defaultStore(at:requiresAuthentication:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v2 = a1;
  v25 = a2;
  v3 = sub_25E1B8580();
  OUTLINED_FUNCTION_0_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_1();
  v9 = v8 - v7;
  v10 = sub_25E1B85F0();
  OUTLINED_FUNCTION_0_1();
  v12 = v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v24 - v17;
  v26 = 0xD000000000000017;
  v27 = 0x800000025E1BA1A0;
  (*(v5 + 104))(v9, *MEMORY[0x277CC91D0], v3);
  sub_25E1B3DE8();
  sub_25E1B85E0();
  (*(v5 + 8))(v9, v3);
  (*(v12 + 16))(v16, v18, v10);
  v19 = type metadata accessor for KeyValueStore();
  swift_allocObject();
  v20 = v28;
  v21 = sub_25E1B6E44(v16, v2);
  if (!v20)
  {
    v22 = v25;
    v25[3] = v19;
    v22[4] = &off_286FDF040;
    *v22 = v21;
  }

  return (*(v12 + 8))(v18, v10);
}

uint64_t *sub_25E1B6E44(uint64_t a1, unsigned int a2)
{
  v4 = v2;
  v7 = sub_25E1B85F0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a1, v7);
  type metadata accessor for DataStore();
  swift_allocObject();
  v11 = sub_25E1B1470(v10, a2);
  if (v3)
  {
    (*(v8 + 8))(a1, v7);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v11;
    sub_25E1B6378(0xD000000000000058, 0x800000025E1BA330, MEMORY[0x277D84F90], 0, 1, 0, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDEEA8, &qword_25E1B9418);
    v14 = swift_allocObject();
    *(v14 + 24) = 0;
    *(v14 + 16) = v12;
    (*(v8 + 8))(a1, v7);
    *(v4 + 16) = v14;
  }

  return v4;
}

uint64_t getEnumTagSinglePayload for PegasusKeyValueStoreFactory(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for PegasusKeyValueStoreFactory(_BYTE *result, int a2, int a3)
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

uint64_t sub_25E1B7168()
{
  sub_25E1B6764(sub_25E1B7330, 0, *(v0 + 16));

  return v0;
}

uint64_t sub_25E1B7208()
{
  v0 = sub_25E1B7168();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_25E1B7244(uint64_t *a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25E1B7294(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
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

uint64_t sub_25E1B72E8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_25E1B7300(void *result, int a2)
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

uint64_t sub_25E1B7330@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (*a1)
  {

    sub_25E1B1710();

    *a2 = 0;
  }

  else
  {
    sub_25E1B7BE4();
    swift_allocError();
    *v4 = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25E1B73B4()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_25E1B7BBC();
  os_unfair_lock_unlock(v1 + 6);
  return v3;
}

void sub_25E1B7434()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_25E1B7D94();
  os_unfair_lock_unlock(v1 + 6);
}

void sub_25E1B7504()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_25E1B7D94();
  os_unfair_lock_unlock(v1 + 6);
}

void sub_25E1B75C4()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_25E1B7BBC();
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_25E1B7640(void *a1)
{
  if (*a1)
  {

    sub_25E1B6378(0xD000000000000022, 0x800000025E1BA300, MEMORY[0x277D84F90], 0, 1, 0, 0);
    if (!v1)
    {
      sub_25E1B6378(0xD000000000000058, 0x800000025E1BA330, MEMORY[0x277D84F90], 0, 1, 0, 0);
    }
  }

  else
  {
    sub_25E1B7BE4();
    swift_allocError();
    *v3 = 2;
    return swift_willThrow();
  }
}

uint64_t *sub_25E1B7730@<X0>(uint64_t *result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X8>)
{
  if (!*result)
  {
    goto LABEL_7;
  }

  v9 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v9 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDEEA0, &qword_25E1B9410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25E1B9360;
  *(inited + 32) = a4 + 1;
  *(inited + 40) = 0;
  *(inited + 48) = 0;
  *(inited + 56) = a2;
  *(inited + 64) = a3;
  *(inited + 72) = 2;

  v12 = sub_25E1B18BC(0xD00000000000003ALL, 0x800000025E1BA2C0, inited, a4);
  if (v5)
  {

    swift_setDeallocating();
    result = sub_25E1B7C38();
LABEL_7:
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = -1;
    return result;
  }

  v15 = v12;
  v16 = v13;
  v17 = v14;

  swift_setDeallocating();
  result = sub_25E1B7C38();
  *a5 = v15;
  *(a5 + 8) = v16;
  *(a5 + 16) = v17;
  return result;
}

uint64_t sub_25E1B7888(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned __int8 a5, uint64_t a6, unint64_t a7, char a8)
{
  if (*a1)
  {
    v10 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v10 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDEEA0, &qword_25E1B9410);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25E1B9370;
      *(inited + 32) = a3;
      *(inited + 40) = a4;
      *(inited + 48) = 2;
      v16 = a5 + 1;
      *(inited + 56) = v16;
      *(inited + 64) = 0;
      *(inited + 72) = 0;
      *(inited + 80) = a6;
      *(inited + 88) = a7;
      *(inited + 96) = a8;
      *(inited + 104) = v16;
      *(inited + 112) = 0;
      *(inited + 120) = 0;
      *(inited + 128) = a6;
      *(inited + 136) = a7;
      *(inited + 144) = a8;
      sub_25E1B7C7C(a6, a7, a8);
      sub_25E1B7C7C(a6, a7, a8);

      sub_25E1B6378(0xD00000000000006FLL, 0x800000025E1BA250, inited, 0, 1, 0, 0);

      swift_setDeallocating();
      return sub_25E1B7C38();
    }

    sub_25E1B7BE4();
    swift_allocError();
    v19 = 1;
  }

  else
  {
    sub_25E1B7BE4();
    swift_allocError();
    v19 = 2;
  }

  *v18 = v19;
  return swift_willThrow();
}

uint64_t sub_25E1B7A4C(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*a1)
  {
    v6 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v6 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCDEEA0, &qword_25E1B9410);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25E1B9150;
      *(inited + 32) = a3;
      *(inited + 40) = a4;
      *(inited + 48) = 2;

      sub_25E1B6378(0xD000000000000027, 0x800000025E1BA220, inited, 0, 1, 0, 0);

      swift_setDeallocating();
      return sub_25E1B7C38();
    }

    sub_25E1B7BE4();
    swift_allocError();
    v10 = 1;
  }

  else
  {
    sub_25E1B7BE4();
    swift_allocError();
    v10 = 2;
  }

  *v9 = v10;
  return swift_willThrow();
}

unint64_t sub_25E1B7BE4()
{
  result = qword_27FCDEE98;
  if (!qword_27FCDEE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDEE98);
  }

  return result;
}

uint64_t sub_25E1B7C38()
{
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_25E1B7C7C(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 == 3)
  {
    return sub_25E1B7CA0(a1, a2);
  }

  if (a3 == 2)
  {
  }

  return a1;
}

uint64_t sub_25E1B7CA0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_5_0()
{

  JUMPOUT(0x25F8AE230);
}

uint64_t PegasusPersistenceControllerError.hashValue.getter()
{
  v1 = *v0;
  sub_25E1B87C0();
  MEMORY[0x25F8ADE30](v1);
  return sub_25E1B87E0();
}

uint64_t static PegasusPersistenceControllerFactory.create(with:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_25E1B85F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = type metadata accessor for PegasusFilePersistence(0);
  v9 = swift_allocObject();
  result = (*(v5 + 32))(v9 + OBJC_IVAR____TtC18PegasusPersistence22PegasusFilePersistence_baseFolder, v7, v4);
  a2[3] = v8;
  a2[4] = &off_286FDEE58;
  *a2 = v9;
  return result;
}

unint64_t sub_25E1B7FC0()
{
  result = qword_27FCDEEB0;
  if (!qword_27FCDEEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCDEEB0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PegasusPersistenceControllerError(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for PegasusPersistenceControllerFactory(_BYTE *result, int a2, int a3)
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

uint64_t PegasusPersistenceWriter.persistCodable<A>(_:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_25E1B84E0();
  swift_allocObject();
  v16[3] = v14;
  v16[4] = &protocol witness table for JSONEncoder;
  v16[0] = sub_25E1B84D0();
  (*(a6 + 24))(a1, v16, a2, a3, a5, a7, a4, a6);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t PegasusPersistenceWriter.persistCodable<A>(_:encoder:name:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  result = (*(v14 + 8))(a1, a6, a8, v13, v14);
  if (!v8)
  {
    v17 = result;
    v18 = v16;
    (*(a7 + 8))();
    return sub_25E1B2F5C(v17, v18);
  }

  return result;
}