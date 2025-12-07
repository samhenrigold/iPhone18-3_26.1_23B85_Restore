sqlite3_stmt *GroupStateModel.deleteStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v3 = strdup("DELETE FROM Group_State_Table WHERE client_id = ? AND group_id = ?;");
  if (!v3)
  {
LABEL_97:
    __break(1u);
  }

  v4 = sqlite3_prepare_v2(a1, v3, -1, ppStmt, 0);
  if (v4)
  {
LABEL_79:
    *&v47 = 0x726F7272456C7173;
    *(&v47 + 1) = 0xE90000000000003ALL;
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v36);

    v37 = v47;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v38 = 0;
    *(v38 + 8) = v37;
    return swift_willThrow();
  }

  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v7)
    {
      *&v47 = *v1;
      DWORD2(v47) = v6;
      WORD6(v47) = WORD2(v6);
      v4 = ppStmt[0];
      LODWORD(v8) = BYTE6(v6);
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_6:
        v9 = SQLITE_TRANSIENT;
        v10 = &v47;
        LODWORD(v11) = v8;
        goto LABEL_42;
      }

LABEL_82:
      v42 = v4;
      swift_once();
      v4 = v42;
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  if (v7 != 2)
  {
    *(&v47 + 6) = 0;
    *&v47 = 0;
    v4 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_25:
      v9 = SQLITE_TRANSIENT;
      v10 = &v47;
      LODWORD(v11) = 0;
      goto LABEL_42;
    }

LABEL_84:
    v43 = v4;
    swift_once();
    v4 = v43;
    goto LABEL_25;
  }

  v12 = v1;
  v13 = *(v5 + 16);
  v14 = *(v5 + 24);
  v15 = __DataStorage._bytes.getter();
  if (v15)
  {
    v9 = v15;
    LODWORD(v1) = v6;
    v4 = __DataStorage._offset.getter();
    if (__OFSUB__(v13, v4))
    {
      __break(1u);
      goto LABEL_88;
    }

    v8 = v9 + v13 - v4;
    v9 = (v14 - v13);
    if (!__OFSUB__(v14, v13))
    {
      goto LABEL_11;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v8 = 0;
  v9 = (v14 - v13);
  if (__OFSUB__(v14, v13))
  {
    goto LABEL_28;
  }

LABEL_11:
  v1 = v6 & 0x3FFFFFFFFFFFFFFFLL;
  v4 = MEMORY[0x2667557A0]();
  if (v4 >= v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = v4;
  }

  if (v8)
  {
    v11 = v16;
  }

  else
  {
    v11 = 0;
  }

  if (v11 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_86;
  }

  v5 = 0x7FFFFFFFLL;
  if (v11 <= 0x7FFFFFFF)
  {
    goto LABEL_38;
  }

  __break(1u);
LABEL_20:
  v17 = v5;
  v18 = v5 >> 32;
  v13 = v18 - v17;
  if (v18 < v17)
  {
    __break(1u);
    goto LABEL_84;
  }

  v12 = v1;
  v19 = __DataStorage._bytes.getter();
  if (!v19)
  {
LABEL_29:
    v8 = 0;
    goto LABEL_30;
  }

  v9 = v19;
  LODWORD(v1) = v6;
  v4 = __DataStorage._offset.getter();
  if (__OFSUB__(v17, v4))
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v8 = v9 + v17 - v4;
LABEL_30:
  v1 = v6 & 0x3FFFFFFFFFFFFFFFLL;
  v4 = MEMORY[0x2667557A0]();
  if (v4 >= v13)
  {
    v11 = v13;
  }

  else
  {
    v11 = v4;
  }

  if (v8)
  {
    if (v11 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_82;
    }

    v1 = v12;
    if (v11 <= 0x7FFFFFFF)
    {
      goto LABEL_39;
    }

    __break(1u);
  }

  LODWORD(v11) = 0;
LABEL_38:
  v1 = v12;
LABEL_39:
  v4 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v40 = ppStmt[0];
    v41 = v11;
    swift_once();
    v4 = v40;
    LODWORD(v11) = v41;
  }

  v9 = SQLITE_TRANSIENT;
  v10 = v8;
LABEL_42:
  v4 = sqlite3_bind_blob(v4, 1, v10, v11, v9);
  if (v4)
  {
    goto LABEL_79;
  }

  v20 = *(v1 + 16);
  v21 = *(v1 + 24);
  v22 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v22 != 2)
    {
      goto LABEL_71;
    }

    v24 = *(v20 + 16);
    v25 = *(v20 + 24);
    v8 = __DataStorage._bytes.getter();
    if (v8)
    {
      v26 = __DataStorage._offset.getter();
      if (__OFSUB__(v24, v26))
      {
        goto LABEL_94;
      }

      v8 += v24 - v26;
    }

    v27 = __OFSUB__(v25, v24);
    v28 = v25 - v24;
    if (v27)
    {
      __break(1u);
    }

    else
    {
      v4 = MEMORY[0x2667557A0]();
      if (v4 >= v28)
      {
        v29 = v28;
      }

      else
      {
        v29 = v4;
      }

      if (v8)
      {
        v1 = v29;
      }

      else
      {
        v1 = 0;
      }

      if (v1 >= 0xFFFFFFFF80000000)
      {
        v20 = 0x7FFFFFFFLL;
        if (v1 <= 0x7FFFFFFF)
        {
          goto LABEL_75;
        }

        __break(1u);
        goto LABEL_61;
      }
    }

    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  if (v22)
  {
LABEL_61:
    v30 = v20;
    v31 = v20 >> 32;
    v32 = v31 - v30;
    if (v31 < v30)
    {
      __break(1u);
      goto LABEL_91;
    }

    v8 = __DataStorage._bytes.getter();
    if (!v8)
    {
      goto LABEL_65;
    }

    v33 = __DataStorage._offset.getter();
    if (!__OFSUB__(v30, v33))
    {
      v8 += v30 - v33;
LABEL_65:
      v34 = MEMORY[0x2667557A0]();
      if (v34 >= v32)
      {
        v1 = v32;
      }

      else
      {
        v1 = v34;
      }

      if (!v8)
      {
        LODWORD(v1) = 0;
        goto LABEL_75;
      }

      if (v1 < 0xFFFFFFFF80000000)
      {
        __break(1u);
LABEL_71:
        *(&v47 + 6) = 0;
        *&v47 = 0;
        v4 = ppStmt[0];
        if (one-time initialization token for SQLITE_TRANSIENT == -1)
        {
LABEL_72:
          v23 = &v47;
          v35 = 0;
          goto LABEL_78;
        }

LABEL_91:
        v46 = v4;
        swift_once();
        v4 = v46;
        goto LABEL_72;
      }

      if (v1 <= 0x7FFFFFFF)
      {
LABEL_75:
        v4 = ppStmt[0];
        if (one-time initialization token for SQLITE_TRANSIENT == -1)
        {
LABEL_76:
          v23 = v8;
          goto LABEL_77;
        }

LABEL_86:
        v44 = v4;
        swift_once();
        v4 = v44;
        goto LABEL_76;
      }

      goto LABEL_96;
    }

LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  *&v47 = *(v1 + 16);
  DWORD2(v47) = v21;
  WORD6(v47) = WORD2(v21);
  v4 = ppStmt[0];
  LODWORD(v1) = BYTE6(v21);
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_89:
    v45 = v4;
    swift_once();
    v4 = v45;
  }

  v23 = &v47;
LABEL_77:
  v35 = v1;
LABEL_78:
  if (sqlite3_bind_blob(v4, 2, v23, v35, v9))
  {
    goto LABEL_79;
  }

  return ppStmt[0];
}

unint64_t closure #1 in variable initialization expression of static GroupStateModel.converter@<X0>(sqlite3_stmt *a1@<X0>, unint64_t *a2@<X8>)
{
  if (sqlite3_column_type(a1, 0) != 5)
  {
    v4 = sqlite3_column_blob(a1, 0);
    if (v4)
    {
      v5 = v4;
      v6 = sqlite3_column_bytes(a1, 0);
      v7 = specialized Data.init(bytes:count:)(v5, v6);
      v9 = v8;
      if (sqlite3_column_type(a1, 1) == 5 || (v10 = sqlite3_column_blob(a1, 1)) == 0)
      {
        v21 = v7;
        v22 = v9;
      }

      else
      {
        v11 = v10;
        v12 = sqlite3_column_bytes(a1, 1);
        v13 = specialized Data.init(bytes:count:)(v11, v12);
        v15 = v14;
        if (sqlite3_column_type(a1, 2) != 5)
        {
          v16 = sqlite3_column_blob(a1, 2);
          if (v16)
          {
            v17 = v16;
            v18 = sqlite3_column_bytes(a1, 2);
            result = specialized Data.init(bytes:count:)(v17, v18);
            *a2 = v7;
            a2[1] = v9;
            a2[2] = v13;
            a2[3] = v15;
            a2[4] = result;
            a2[5] = v20;
            return result;
          }
        }

        outlined consume of Data._Representation(v7, v9);
        v21 = v13;
        v22 = v15;
      }

      outlined consume of Data._Representation(v21, v22);
    }
  }

  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v23 = 3;
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  return swift_willThrow();
}

uint64_t (*static GroupStateModel.converter.getter())()
{
  swift_beginAccess();
  v0 = static GroupStateModel.converter;

  return v0;
}

uint64_t static GroupStateModel.converter.setter(uint64_t (*a1)(), uint64_t a2)
{
  swift_beginAccess();
  static GroupStateModel.converter = a1;
  qword_281EF8580 = a2;
}

uint64_t key path getter for static GroupStateModel.converter : GroupStateModel.Type@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = static GroupStateModel.converter;
  v2 = qword_281EF8580;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned GroupStateModel?, @error @owned Error)partial apply;
  a1[1] = v4;
}

uint64_t key path setter for static GroupStateModel.converter : GroupStateModel.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_beginAccess();
  static GroupStateModel.converter = thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out GroupStateModel?, @error @owned Error)partial apply;
  qword_281EF8580 = v3;
}

double thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out GroupStateModel?, @error @owned Error)@<D0>(uint64_t a1@<X0>, void (*a2)(_OWORD *__return_ptr, uint64_t *)@<X1>, _OWORD *a3@<X8>)
{
  v9 = a1;
  a2(v8, &v9);
  if (!v3)
  {
    result = *v8;
    v6 = v8[1];
    v7 = v8[2];
    *a3 = v8[0];
    a3[1] = v6;
    a3[2] = v7;
  }

  return result;
}

uint64_t (*protocol witness for static SqlSchema.converter.getter in conformance GroupStateModel())()
{
  swift_beginAccess();
  v1 = static GroupStateModel.converter;
  v0 = qword_281EF8580;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned GroupStateModel?, @error @owned Error)partial apply;
}

uint64_t *GroupStateQuery.converter.unsafeMutableAddressor()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  return &static GroupStateQuery.converter;
}

uint64_t static GroupStateQuery.converter.getter()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static GroupStateQuery.converter;

  return v0;
}

uint64_t static GroupStateQuery.converter.setter(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static GroupStateQuery.converter = a1;
  qword_2800168D8 = a2;
}

uint64_t (*static GroupStateQuery.converter.modify(uint64_t a1))()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static StateMachineQuery.converter.modify;
}

uint64_t key path getter for static GroupStateQuery.converter : GroupStateQuery.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static GroupStateQuery.converter;
  v2 = qword_2800168D8;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned GroupStateModel?, @error @owned Error);
  a1[1] = v4;
}

uint64_t key path setter for static GroupStateQuery.converter : GroupStateQuery.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = one-time initialization token for converter;

  if (v4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static GroupStateQuery.converter = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out GroupStateModel?, @error @owned Error);
  qword_2800168D8 = v3;
}

sqlite3_stmt *GroupStateQuery.queryStatement(_:)(sqlite3 *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v10 = strdup("SELECT * FROM Group_State_Table WHERE client_id = ? AND group_id = ? LIMIT 1;");
  if (!v10)
  {
LABEL_95:
    __break(1u);
  }

  v11 = sqlite3_prepare_v2(a1, v10, -1, ppStmt, 0);
  if (v11)
  {
LABEL_76:
    *&v45 = 0x726F7272456C7173;
    *(&v45 + 1) = 0xE90000000000003ALL;
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v35);

    v36 = v45;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v37 = 0;
    *(v37 + 8) = v36;
    return swift_willThrow();
  }

  v12 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_32;
    }

    v14 = *(a2 + 16);
    v15 = *(a2 + 24);
    LODWORD(a2) = a3;
    v11 = __DataStorage._bytes.getter();
    v16 = v11;
    if (v11)
    {
      LODWORD(a2) = a3;
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v14, v11))
      {
        __break(1u);
        goto LABEL_86;
      }

      v16 += v14 - v11;
    }

    v17 = __OFSUB__(v15, v14);
    v18 = v15 - v14;
    if (v17)
    {
      __break(1u);
    }

    else
    {
      v11 = MEMORY[0x2667557A0]();
      if (v11 >= v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = v11;
      }

      if (v16)
      {
        a2 = v19;
      }

      else
      {
        a2 = 0;
      }

      if (a2 >= 0xFFFFFFFF80000000)
      {
        if (a2 <= 0x7FFFFFFF)
        {
          goto LABEL_35;
        }

        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_84;
  }

  if (v12)
  {
LABEL_21:
    v20 = a2;
    v21 = (a2 >> 32) - a2;
    if (a2 >> 32 < a2)
    {
      __break(1u);
      goto LABEL_81;
    }

    v16 = __DataStorage._bytes.getter();
    if (!v16)
    {
LABEL_25:
      v11 = MEMORY[0x2667557A0]();
      if (v11 >= v21)
      {
        a2 = v21;
      }

      else
      {
        a2 = v11;
      }

      if (v16)
      {
        if (a2 < 0xFFFFFFFF80000000)
        {
          __break(1u);
          goto LABEL_79;
        }

        if (a2 > 0x7FFFFFFF)
        {
          __break(1u);
LABEL_32:
          *(&v45 + 6) = 0;
          *&v45 = 0;
          v11 = ppStmt[0];
          if (one-time initialization token for SQLITE_TRANSIENT == -1)
          {
LABEL_33:
            a3 = SQLITE_TRANSIENT;
            v13 = &v45;
            v22 = 0;
            goto LABEL_39;
          }

LABEL_81:
          v41 = v11;
          swift_once();
          v11 = v41;
          goto LABEL_33;
        }
      }

      else
      {
        LODWORD(a2) = 0;
      }

LABEL_35:
      v11 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        v39 = ppStmt[0];
        swift_once();
        v11 = v39;
      }

      a3 = SQLITE_TRANSIENT;
      v13 = v16;
      goto LABEL_38;
    }

    LODWORD(a2) = a3;
    v11 = __DataStorage._offset.getter();
    if (!__OFSUB__(v20, v11))
    {
      v16 += v20 - v11;
      goto LABEL_25;
    }

LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  *&v45 = a2;
  WORD4(v45) = a3;
  BYTE10(v45) = BYTE2(a3);
  BYTE11(v45) = BYTE3(a3);
  BYTE12(v45) = BYTE4(a3);
  BYTE13(v45) = BYTE5(a3);
  v11 = ppStmt[0];
  LODWORD(a2) = BYTE6(a3);
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_79:
    v40 = v11;
    swift_once();
    v11 = v40;
  }

  a3 = SQLITE_TRANSIENT;
  v13 = &v45;
LABEL_38:
  v22 = a2;
LABEL_39:
  v11 = sqlite3_bind_blob(v11, 1, v13, v22, a3);
  if (v11)
  {
    goto LABEL_76;
  }

  v23 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v23 != 2)
    {
      goto LABEL_68;
    }

    v25 = *(a4 + 16);
    v26 = *(a4 + 24);
    a4 = __DataStorage._bytes.getter();
    if (a4)
    {
      v27 = __DataStorage._offset.getter();
      if (__OFSUB__(v25, v27))
      {
        goto LABEL_92;
      }

      a4 += v25 - v27;
    }

    v17 = __OFSUB__(v26, v25);
    v28 = v26 - v25;
    if (v17)
    {
      __break(1u);
    }

    else
    {
      v11 = MEMORY[0x2667557A0]();
      if (v11 >= v28)
      {
        v29 = v28;
      }

      else
      {
        v29 = v11;
      }

      if (a4)
      {
        a2 = v29;
      }

      else
      {
        a2 = 0;
      }

      if (a2 >= 0xFFFFFFFF80000000)
      {
        if (a2 <= 0x7FFFFFFF)
        {
          goto LABEL_72;
        }

        __break(1u);
        goto LABEL_58;
      }
    }

    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  if (v23)
  {
LABEL_58:
    v30 = a4;
    v31 = (a4 >> 32) - a4;
    if (a4 >> 32 < a4)
    {
      __break(1u);
      goto LABEL_89;
    }

    a4 = __DataStorage._bytes.getter();
    if (!a4)
    {
      goto LABEL_62;
    }

    v32 = __DataStorage._offset.getter();
    if (!__OFSUB__(v30, v32))
    {
      a4 += v30 - v32;
LABEL_62:
      v33 = MEMORY[0x2667557A0]();
      if (v33 >= v31)
      {
        a2 = v31;
      }

      else
      {
        a2 = v33;
      }

      if (!a4)
      {
        LODWORD(a2) = 0;
        goto LABEL_72;
      }

      if (a2 < 0xFFFFFFFF80000000)
      {
        __break(1u);
LABEL_68:
        *(&v45 + 6) = 0;
        *&v45 = 0;
        v11 = ppStmt[0];
        if (one-time initialization token for SQLITE_TRANSIENT == -1)
        {
LABEL_69:
          v24 = &v45;
          v34 = 0;
          goto LABEL_75;
        }

LABEL_89:
        v44 = v11;
        swift_once();
        v11 = v44;
        goto LABEL_69;
      }

      if (a2 <= 0x7FFFFFFF)
      {
LABEL_72:
        v11 = ppStmt[0];
        if (one-time initialization token for SQLITE_TRANSIENT == -1)
        {
LABEL_73:
          v24 = a4;
          goto LABEL_74;
        }

LABEL_84:
        v42 = v11;
        swift_once();
        v11 = v42;
        goto LABEL_73;
      }

      goto LABEL_94;
    }

LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  *&v45 = a4;
  WORD4(v45) = a5;
  BYTE10(v45) = BYTE2(a5);
  BYTE11(v45) = BYTE3(a5);
  BYTE12(v45) = BYTE4(a5);
  BYTE13(v45) = BYTE5(a5);
  v11 = ppStmt[0];
  LODWORD(a2) = BYTE6(a5);
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_87:
    v43 = v11;
    swift_once();
    v11 = v43;
  }

  v24 = &v45;
LABEL_74:
  v34 = a2;
LABEL_75:
  if (sqlite3_bind_blob(v11, 2, v24, v34, a3))
  {
    goto LABEL_76;
  }

  return ppStmt[0];
}

uint64_t (*protocol witness for static SqlQuery.converter.getter in conformance GroupStateQuery())()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = static GroupStateQuery.converter;
  v0 = qword_2800168D8;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned GroupStateModel?, @error @owned Error);
}

sqlite3_stmt *specialized static GroupStateModel.createStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("CREATE TABLE IF NOT EXISTS Group_State_Table (\n    client_id BLOB NOT NULL,\n    group_id BLOB NOT NULL,\n    group_state_data BLOB NOT NULL,\n    PRIMARY KEY (group_id, client_id)\n);");
  if (!v2)
  {
    __break(1u);
  }

  if (!sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    return ppStmt[0];
  }

  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v3);

  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0x726F7272456C7173;
  *(v4 + 16) = 0xE90000000000003ALL;
  return swift_willThrow();
}

sqlite3_stmt *specialized static GroupStateModel.dropStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("DROP TABLE IF EXISTS Group_State_Table");
  if (!v2)
  {
    __break(1u);
  }

  if (!sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    return ppStmt[0];
  }

  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v3);

  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0x726F7272456C7173;
  *(v4 + 16) = 0xE90000000000003ALL;
  return swift_willThrow();
}

uint64_t getEnumTagSinglePayload for GroupStateModel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 48))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for GroupStateModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_2652D5D18()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

double partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned GroupStateModel?, @error @owned Error)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned GroupStateModel?, @error @owned Error)(a1, a2);
}

{
  (*(v2 + 16))(v7, *a1);
  if (!v3)
  {
    v6 = v7[1];
    *a2 = v7[0];
    a2[1] = v6;
    result = *&v8;
    a2[2] = v8;
  }

  return result;
}

double partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned GroupStateModel?, @error @owned Error)@<D0>(_OWORD *a1@<X8>)
{
  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned GroupStateModel?, @error @owned Error)(a1);
}

{
  (*(v1 + 16))(v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Data?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (a3)
    {
LABEL_3:
      v9 = a3;
      a3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      goto LABEL_6;
    }
  }

  else
  {

    v8 = 0xF000000000000000;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v11 = 0xF000000000000000;
LABEL_6:
  v5(v4, v8, a3, v11);
  outlined consume of Data?(a3, v11);
  outlined consume of Data?(v4, v8);
}

uint64_t KDSRegistrationXPCBroadcaster.__allocating_init(clientIdentifier:clientConnection:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC24SecureMessagingAgentCore29KDSRegistrationXPCBroadcaster_clientIdentifier;
  v6 = type metadata accessor for KDSRegistration.ClientIdentifier();
  (*(*(v6 - 8) + 32))(v4 + v5, a1, v6);
  *(v4 + OBJC_IVAR____TtC24SecureMessagingAgentCore29KDSRegistrationXPCBroadcaster_clientConnection) = a2;
  return v4;
}

uint64_t KDSRegistrationXPCBroadcaster.clientIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore29KDSRegistrationXPCBroadcaster_clientIdentifier;
  v4 = type metadata accessor for KDSRegistration.ClientIdentifier();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t KDSRegistrationXPCBroadcaster.init(clientIdentifier:clientConnection:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC24SecureMessagingAgentCore29KDSRegistrationXPCBroadcaster_clientIdentifier;
  v6 = type metadata accessor for KDSRegistration.ClientIdentifier();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  *(v2 + OBJC_IVAR____TtC24SecureMessagingAgentCore29KDSRegistrationXPCBroadcaster_clientConnection) = a2;
  return v2;
}

uint64_t KDSRegistrationXPCBroadcaster.isRegisteredChanged(simUniqueID:isRegistered:context:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  type metadata accessor for RegistrationActor();
  v5[7] = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20], MEMORY[0x277D4CC28]);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x2822009F8](KDSRegistrationXPCBroadcaster.isRegisteredChanged(simUniqueID:isRegistered:context:completion:), v7, v6);
}

uint64_t KDSRegistrationXPCBroadcaster.isRegisteredChanged(simUniqueID:isRegistered:context:completion:)()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  IsRegisteredChangedError = type metadata accessor for KDSRegistration.IsRegisteredChangedError();
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = *(v0 + 24);
  *(v4 + 16) = v2;
  *(v4 + 24) = v5;
  *(v4 + 40) = v1;
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation4DataVACtMd, &_sSS_10Foundation4DataVACtMR);
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError, MEMORY[0x277D4CB68], MEMORY[0x277D4CB60]);
  *v6 = v0;
  v6[1] = KDSRegistrationXPCBroadcaster.isRegisteredChanged(simUniqueID:isRegistered:context:completion:);
  v7 = *(v0 + 48);
  v8 = MEMORY[0x277D839B0];
  v9 = MEMORY[0x277D839B0];

  return MEMORY[0x2821ACBF8](v0 + 104, v8, IsRegisteredChangedError, partial apply for closure #1 in KDSRegistrationXPCBroadcaster.isRegisteredChanged(simUniqueID:isRegistered:context:completion:), v4, partial apply for closure #2 in KDSRegistrationXPCBroadcaster.isRegisteredChanged(simUniqueID:isRegistered:context:completion:), v7, v9);
}

{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = KDSRegistrationXPCBroadcaster.isRegisteredChanged(simUniqueID:isRegistered:context:completion:);
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = DaemonPersister.loadEventsSinceLastKeyUpdate(forIdentifier:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{

  v1 = *(v0 + 8);

  return v1();
}

void closure #1 in KDSRegistrationXPCBroadcaster.isRegisteredChanged(simUniqueID:isRegistered:context:completion:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a5@<X8>)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for KDSRegistration.IsRegisteredResult();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredResult and conformance KDSRegistration.IsRegisteredResult, MEMORY[0x277D4CA70], MEMORY[0x277D4CA78]);
  v9 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v11 = v10;

  if (!v5)
  {
    swift_allocObject();
    JSONEncoder.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15KDSRegistrationO28RegistrationCompletedContextVSgMd, &_s15SecureMessaging15KDSRegistrationO28RegistrationCompletedContextVSgMR);
    lazy protocol witness table accessor for type KDSRegistration.RegistrationCompletedContext? and conformance <A> A?();
    v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v14 = v13;

    *a5 = a1;
    a5[1] = a2;
    a5[2] = v9;
    a5[3] = v11;
    a5[4] = v12;
    a5[5] = v14;
  }
}

void closure #2 in KDSRegistrationXPCBroadcaster.isRegisteredChanged(simUniqueID:isRegistered:context:completion:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  v11 = a1[5];
  v16 = *(a4 + OBJC_IVAR____TtC24SecureMessagingAgentCore29KDSRegistrationXPCBroadcaster_clientConnection);

  outlined copy of Data._Representation(v8, v9);
  outlined copy of Data._Representation(v10, v11);
  v12 = MEMORY[0x266756A10](v6, v7);

  isa = Data._bridgeToObjectiveC()().super.isa;
  v14 = Data._bridgeToObjectiveC()().super.isa;
  aBlock[4] = a2;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Data?) -> ();
  aBlock[3] = &block_descriptor_11;
  v15 = _Block_copy(aBlock);

  [v16 isRegisteredChangedWithSimUniqueID:v12 isRegistered:isa context:v14 completion:v15];
  _Block_release(v15);

  outlined consume of Data._Representation(v10, v11);
  outlined consume of Data._Representation(v8, v9);
}

uint64_t KDSRegistrationXPCBroadcaster.obtainPhoneAuthenticationInfo(request:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = type metadata accessor for KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v5 = type metadata accessor for KDSRegistration.ClientIdentifier();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  type metadata accessor for RegistrationActor();
  v3[15] = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20], MEMORY[0x277D4CC28]);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[16] = v7;
  v3[17] = v6;

  return MEMORY[0x2822009F8](KDSRegistrationXPCBroadcaster.obtainPhoneAuthenticationInfo(request:), v7, v6);
}

uint64_t KDSRegistrationXPCBroadcaster.obtainPhoneAuthenticationInfo(request:)()
{
  (*(v0[13] + 104))(v0[14], *MEMORY[0x277D4C988], v0[12]);
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type KDSRegistration.ClientIdentifier and conformance KDSRegistration.ClientIdentifier, MEMORY[0x277D4C990], MEMORY[0x277D4C998]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  if (v0[2] == v0[4] && v0[3] == v0[5])
  {
    (*(v2 + 8))(v0[14], v0[12]);

LABEL_5:
    v5 = v0[7];
    v6 = type metadata accessor for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo();
    v7 = type metadata accessor for KDSRegistration.ObtainPhoneAuthenticationInfoError();
    v8 = swift_task_alloc();
    v0[18] = v8;
    *(v8 + 16) = v5;
    v9 = swift_task_alloc();
    v0[19] = v9;
    v10 = MEMORY[0x277D4C938];
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo, MEMORY[0x277D4C938], MEMORY[0x277D4C948]);
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo, v10, MEMORY[0x277D4C940]);
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError, MEMORY[0x277D4CC00], MEMORY[0x277D4CBF8]);
    *v9 = v0;
    v9[1] = KDSRegistrationXPCBroadcaster.obtainPhoneAuthenticationInfo(request:);
    v11 = v0[8];
    v12 = v0[6];

    return MEMORY[0x2821ACBF8](v12, v6, v7, partial apply for closure #1 in KDSRegistrationXPCBroadcaster.obtainPhoneAuthenticationInfo(request:), v8, partial apply for closure #2 in KDSRegistrationXPCBroadcaster.obtainPhoneAuthenticationInfo(request:), v11, v6);
  }

  v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  (*(v2 + 8))(v1, v3);

  if (v4)
  {
    goto LABEL_5;
  }

  v14 = v0[10];
  v13 = v0[11];
  v15 = v0[9];

  (*(v14 + 104))(v13, *MEMORY[0x277D4CBF0], v15);
  type metadata accessor for KDSRegistration.ObtainPhoneAuthenticationInfoError();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError, MEMORY[0x277D4CC00], MEMORY[0x277D4CC08]);
  swift_allocError();
  KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();
  swift_willThrow();

  v16 = v0[1];

  return v16();
}

{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = KDSRegistrationXPCBroadcaster.obtainPhoneAuthenticationInfo(request:);
  }

  else
  {

    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = KDSRegistrationXPCBroadcaster.obtainPhoneAuthenticationInfo(request:);
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in KDSRegistrationXPCBroadcaster.obtainPhoneAuthenticationInfo(request:)@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest, MEMORY[0x277D4C950], MEMORY[0x277D4C958]);
  v4 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v6 = v5;

  if (!v2)
  {
    *a2 = v4;
    a2[1] = v6;
  }

  return result;
}

void closure #2 in KDSRegistrationXPCBroadcaster.obtainPhoneAuthenticationInfo(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + OBJC_IVAR____TtC24SecureMessagingAgentCore29KDSRegistrationXPCBroadcaster_clientConnection);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v9[4] = a2;
  v9[5] = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Data?) -> ();
  v9[3] = &block_descriptor_8;
  v8 = _Block_copy(v9);

  [v6 obtainPhoneAuthenticationInfoWithRequest:isa completion:v8];
  _Block_release(v8);
}

uint64_t KDSRegistrationXPCBroadcaster.deinit()
{
  v1 = OBJC_IVAR____TtC24SecureMessagingAgentCore29KDSRegistrationXPCBroadcaster_clientIdentifier;
  v2 = type metadata accessor for KDSRegistration.ClientIdentifier();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease(*(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore29KDSRegistrationXPCBroadcaster_clientConnection), v3, v4, v5, v6, v7, v8, v9);
  return v0;
}

uint64_t KDSRegistrationXPCBroadcaster.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC24SecureMessagingAgentCore29KDSRegistrationXPCBroadcaster_clientIdentifier;
  v2 = type metadata accessor for KDSRegistration.ClientIdentifier();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease(*(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore29KDSRegistrationXPCBroadcaster_clientConnection), v3, v4, v5, v6, v7, v8, v9);
  v10 = *(*v0 + 48);
  v11 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v10, v11);
}

uint64_t type metadata accessor for KDSRegistrationXPCBroadcaster(uint64_t a1)
{
  result = type metadata singleton initialization cache for KDSRegistrationXPCBroadcaster;
  if (!type metadata singleton initialization cache for KDSRegistrationXPCBroadcaster)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for KDSRegistrationXPCBroadcaster(uint64_t a1)
{
  result = type metadata accessor for KDSRegistration.ClientIdentifier();
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

uint64_t dispatch thunk of KDSRegistrationXPCBroadcaster.isRegisteredChanged(simUniqueID:isRegistered:context:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 104) + **(*v6 + 104));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of KDSRegistrationXPCBroadcaster.obtainPhoneAuthenticationInfo(request:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 112) + **(*v2 + 112));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v8(a1, a2);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.RegistrationCompletedContext? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegistrationCompletedContext? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegistrationCompletedContext? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15SecureMessaging15KDSRegistrationO28RegistrationCompletedContextVSgMd, &_s15SecureMessaging15KDSRegistrationO28RegistrationCompletedContextVSgMR);
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type KDSRegistration.RegistrationCompletedContext and conformance KDSRegistration.RegistrationCompletedContext, MEMORY[0x277D4CBD8], MEMORY[0x277D4CBE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegistrationCompletedContext? and conformance <A> A?);
  }

  return result;
}

uint64_t _s15SecureMessaging17RegistrationActorCACScAAAWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t EpochModel.init(clientIdentifier:epochID:eraID:groupID:epochRecordData:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  return result;
}

uint64_t EpochQuery.init(clientIdentifier:epochID:eraID:groupID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t EpochModel.clientIdentifier.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t EpochModel.groupID.getter()
{
  v1 = *(v0 + 48);
  outlined copy of Data._Representation(v1, *(v0 + 56));
  return v1;
}

uint64_t EpochModel.epochRecordData.getter()
{
  v1 = *(v0 + 64);
  outlined copy of Data?(v1, *(v0 + 72));
  return v1;
}

void EpochModel.insertStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  if ((*(v1 + 24) & 1) != 0 || (*(v1 + 40) & 1) != 0 || (v2 = *(v1 + 72), v2 >> 60 == 15))
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v3 = 5;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    swift_willThrow();
    return;
  }

  v5 = *(v1 + 16);
  v6 = *(v1 + 32);
  v7 = *(v1 + 64);
  ppStmt[0] = 0;
  outlined copy of Data._Representation(v7, v2);
  v8 = strdup("INSERT OR REPLACE INTO Epoch_Table (client_id, epoch_id, era_id, group_id, epoch_record_data) VALUES (?, ?, ?, ?, ?);");
  if (!v8)
  {
    __break(1u);
    goto LABEL_139;
  }

  v9 = sqlite3_prepare_v2(a1, v8, -1, ppStmt, 0);
  if (v9)
  {
LABEL_85:
    *&v73 = 0x726F7272456C7173;
    *(&v73 + 1) = 0xE90000000000003ALL;
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v43);

    v44 = v73;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v45 = 0;
    *(v45 + 8) = v44;
    swift_willThrow();
    outlined consume of Data?(v7, v2);
    return;
  }

  v10 = *v1;
  v11 = *(v1 + 8);
  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v12 != 2)
    {
      *(&v73 + 6) = 0;
      *&v73 = 0;
      v9 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_20:
        a1 = SQLITE_TRANSIENT;
        v14 = &v73;
        LODWORD(v15) = 0;
        goto LABEL_44;
      }

LABEL_126:
      v62 = v5;
      v63 = v9;
      swift_once();
      v9 = v63;
      v5 = v62;
      goto LABEL_20;
    }

    v71 = v1;
    v72 = v5;
    v70 = v7;
    v16 = *(v10 + 16);
    v17 = *(v10 + 24);
    v18 = __DataStorage._bytes.getter();
    if (v18)
    {
      v19 = v18;
      v20 = __DataStorage._offset.getter();
      if (__OFSUB__(v16, v20))
      {
        goto LABEL_129;
      }

      v13 = (v16 - v20 + v19);
    }

    else
    {
      v13 = 0;
    }

    v25 = __OFSUB__(v17, v16);
    v26 = v17 - v16;
    if (v25)
    {
      __break(1u);
    }

    else
    {
      v27 = MEMORY[0x2667557A0]();
      if (v27 >= v26)
      {
        v28 = v26;
      }

      else
      {
        v28 = v27;
      }

      if (v13)
      {
        v15 = v28;
      }

      else
      {
        v15 = 0;
      }

      v7 = v70;
      if (v15 >= 0xFFFFFFFF80000000)
      {
        v5 = v72;
        if (v15 <= 0x7FFFFFFF)
        {
          goto LABEL_41;
        }

        __break(1u);
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
  }

  if (!v12)
  {
    *&v73 = *v1;
    DWORD2(v73) = v11;
    WORD6(v73) = WORD2(v11);
    v9 = ppStmt[0];
    LODWORD(v13) = BYTE6(v11);
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_10:
      a1 = SQLITE_TRANSIENT;
      v14 = &v73;
      LODWORD(v15) = v13;
      goto LABEL_44;
    }

LABEL_124:
    v60 = v5;
    v61 = v9;
    swift_once();
    v9 = v61;
    v5 = v60;
    goto LABEL_10;
  }

  v71 = v1;
  v72 = v5;
  v70 = v6;
  v6 = v7;
  v7 = v10;
  v21 = v10 >> 32;
  v5 = v21 - v7;
  if (v21 < v7)
  {
    __break(1u);
    goto LABEL_126;
  }

  v22 = __DataStorage._bytes.getter();
  if (!v22)
  {
LABEL_32:
    v13 = 0;
    goto LABEL_33;
  }

  v23 = v22;
  v24 = __DataStorage._offset.getter();
  if (__OFSUB__(v7, v24))
  {
    goto LABEL_130;
  }

  v13 = (v7 - v24 + v23);
LABEL_33:
  v7 = v6;
  v9 = MEMORY[0x2667557A0]();
  if (v9 >= v5)
  {
    v15 = v5;
  }

  else
  {
    v15 = v9;
  }

  v6 = v70;
  if (!v13)
  {
    goto LABEL_40;
  }

  v1 = v71;
  v5 = v72;
  if (v15 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_124;
  }

  if (v15 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_40:
    LODWORD(v15) = 0;
    v1 = v71;
    v5 = v72;
  }

LABEL_41:
  v9 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v58 = ppStmt[0];
    v59 = v15;
    swift_once();
    v9 = v58;
    v5 = v72;
    LODWORD(v15) = v59;
  }

  a1 = SQLITE_TRANSIENT;
  v14 = v13;
LABEL_44:
  if (sqlite3_bind_blob(v9, 1, v14, v15, a1))
  {
    goto LABEL_85;
  }

  if (sqlite3_bind_int64(ppStmt[0], 2, v5))
  {
    goto LABEL_85;
  }

  v29 = sqlite3_bind_int64(ppStmt[0], 3, v6);
  if (v29)
  {
    goto LABEL_85;
  }

  v30 = *(v1 + 48);
  v31 = *(v1 + 56);
  v32 = v31 >> 62;
  if ((v31 >> 62) <= 1)
  {
    if (!v32)
    {
      *&v73 = *(v1 + 48);
      DWORD2(v73) = v31;
      WORD6(v73) = WORD2(v31);
      v29 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        v65 = ppStmt[0];
        swift_once();
        v29 = v65;
      }

      v33 = BYTE6(v31);
      goto LABEL_78;
    }

    goto LABEL_66;
  }

  if (v32 != 2)
  {
    goto LABEL_76;
  }

  v34 = v7;
  v35 = *(v30 + 16);
  v36 = *(v30 + 24);
  LODWORD(v1) = *(v1 + 56);
  v29 = __DataStorage._bytes.getter();
  v7 = v29;
  if (v29)
  {
    LODWORD(v1) = v31;
    v29 = __DataStorage._offset.getter();
    if (__OFSUB__(v35, v29))
    {
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    v7 += v35 - v29;
  }

  v25 = __OFSUB__(v36, v35);
  v37 = v36 - v35;
  if (v25)
  {
    __break(1u);
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  v29 = MEMORY[0x2667557A0]();
  if (v29 >= v37)
  {
    v38 = v37;
  }

  else
  {
    v38 = v29;
  }

  if (v7)
  {
    v1 = v38;
  }

  else
  {
    v1 = 0;
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    goto LABEL_134;
  }

  v30 = 0x7FFFFFFFLL;
  if (v1 <= 0x7FFFFFFF)
  {
    goto LABEL_81;
  }

  __break(1u);
LABEL_66:
  v36 = v30;
  v39 = v30 >> 32;
  v40 = v39 - v36;
  if (v39 < v36)
  {
    __break(1u);
    goto LABEL_132;
  }

  v34 = v7;
  v7 = __DataStorage._bytes.getter();
  if (v7)
  {
    LODWORD(v1) = v31;
    v29 = __DataStorage._offset.getter();
    if (!__OFSUB__(v36, v29))
    {
      v7 += v36 - v29;
      goto LABEL_70;
    }

LABEL_136:
    __break(1u);
LABEL_137:
    v67 = v29;
    swift_once();
    v29 = v67;
LABEL_121:
    v57 = sqlite3_bind_blob(v29, 5, v7, v1, a1);
    v7 = v36;
    if (v57)
    {
      goto LABEL_85;
    }

LABEL_122:
    outlined consume of Data?(v7, v2);
    return;
  }

LABEL_70:
  v41 = MEMORY[0x2667557A0]();
  if (v41 >= v40)
  {
    v1 = v40;
  }

  else
  {
    v1 = v41;
  }

  if (v7)
  {
    if (v1 < 0xFFFFFFFF80000000)
    {
      __break(1u);
LABEL_76:
      *(&v73 + 6) = 0;
      *&v73 = 0;
      v29 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_77:
        v33 = 0;
LABEL_78:
        v8 = sqlite3_bind_blob(v29, 4, &v73, v33, a1);
        goto LABEL_84;
      }

LABEL_132:
      v66 = v29;
      swift_once();
      v29 = v66;
      goto LABEL_77;
    }

    if (v1 > 0x7FFFFFFF)
    {
LABEL_144:
      __break(1u);
      goto LABEL_145;
    }
  }

  else
  {
    LODWORD(v1) = 0;
  }

LABEL_81:
  v42 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v64 = ppStmt[0];
    swift_once();
    v42 = v64;
  }

  v8 = sqlite3_bind_blob(v42, 4, v7, v1, a1);
  v7 = v34;
LABEL_84:
  if (v8)
  {
    goto LABEL_85;
  }

  v46 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v46)
    {
      *&v73 = v7;
      WORD4(v73) = v2;
      BYTE10(v73) = BYTE2(v2);
      BYTE11(v73) = BYTE3(v2);
      BYTE12(v73) = BYTE4(v2);
      BYTE13(v73) = BYTE5(v2);
      v8 = ppStmt[0];
      LODWORD(v1) = BYTE6(v2);
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_89:
        v47 = v1;
        goto LABEL_116;
      }

LABEL_139:
      v68 = v8;
      swift_once();
      v8 = v68;
      goto LABEL_89;
    }

    goto LABEL_104;
  }

  if (v46 != 2)
  {
    goto LABEL_114;
  }

  v48 = *(v7 + 16);
  v49 = *(v7 + 24);
  v36 = v7;
  v7 = __DataStorage._bytes.getter();
  if (v7)
  {
    v50 = __DataStorage._offset.getter();
    if (__OFSUB__(v48, v50))
    {
LABEL_145:
      __break(1u);
      goto LABEL_146;
    }

    v7 += v48 - v50;
  }

  v25 = __OFSUB__(v49, v48);
  v51 = v49 - v48;
  if (v25)
  {
    __break(1u);
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  v8 = MEMORY[0x2667557A0]();
  if (v8 >= v51)
  {
    v52 = v51;
  }

  else
  {
    v52 = v8;
  }

  if (v7)
  {
    v1 = v52;
  }

  else
  {
    v1 = 0;
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    goto LABEL_143;
  }

  if (v1 <= 0x7FFFFFFF)
  {
    goto LABEL_120;
  }

  __break(1u);
LABEL_104:
  v53 = v7;
  v54 = (v7 >> 32) - v7;
  if (v7 >> 32 < v7)
  {
    __break(1u);
    goto LABEL_141;
  }

  v36 = v7;
  v7 = __DataStorage._bytes.getter();
  if (!v7)
  {
    goto LABEL_108;
  }

  v55 = __DataStorage._offset.getter();
  if (__OFSUB__(v53, v55))
  {
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v7 += v53 - v55;
LABEL_108:
  v56 = MEMORY[0x2667557A0]();
  if (v56 >= v54)
  {
    v1 = v54;
  }

  else
  {
    v1 = v56;
  }

  if (!v7)
  {
    LODWORD(v1) = 0;
    goto LABEL_120;
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_114:
    *(&v73 + 6) = 0;
    *&v73 = 0;
    v8 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_115:
      v47 = 0;
LABEL_116:
      if (sqlite3_bind_blob(v8, 5, &v73, v47, a1))
      {
        goto LABEL_85;
      }

      goto LABEL_122;
    }

LABEL_141:
    v69 = v8;
    swift_once();
    v8 = v69;
    goto LABEL_115;
  }

  if (v1 <= 0x7FFFFFFF)
  {
LABEL_120:
    v29 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
      goto LABEL_121;
    }

    goto LABEL_137;
  }

LABEL_147:
  __break(1u);
}

uint64_t EpochModel.deleteStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  if ((*(v1 + 24) & 1) == 0 && (*(v1 + 40) & 1) == 0)
  {
    v11 = *(v1 + 16);
    v12 = *(v1 + 32);
    result = strdup("DELETE FROM Epoch_Table WHERE epoch_id = ? AND era_id = ? AND client_id = ? AND group_id = ?;");
    if (!result)
    {
LABEL_194:
      __break(1u);
      goto LABEL_195;
    }

    if (sqlite3_prepare_v2(a1, result, -1, ppStmt, 0))
    {
      goto LABEL_90;
    }

    if (sqlite3_bind_int64(ppStmt[0], 1, v11))
    {
      goto LABEL_90;
    }

    result = sqlite3_bind_int64(ppStmt[0], 2, v12);
    if (result)
    {
      goto LABEL_90;
    }

    v13 = *v1;
    v14 = *(v1 + 8);
    v15 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      if (v15 == 2)
      {
        v42 = v1;
        v43 = *(v13 + 16);
        v44 = *(v13 + 24);
        LODWORD(v1) = *(v1 + 8);
        result = __DataStorage._bytes.getter();
        if (result)
        {
          v45 = result;
          LODWORD(v1) = v14;
          result = __DataStorage._offset.getter();
          if (__OFSUB__(v43, result))
          {
            __break(1u);
            goto LABEL_185;
          }

          v2 = v43 - result + v45;
        }

        else
        {
          v2 = 0;
        }

        a1 = (v44 - v43);
        if (__OFSUB__(v44, v43))
        {
          __break(1u);
        }

        else
        {
          LODWORD(v1) = v14;
          result = MEMORY[0x2667557A0]();
          if (result >= a1)
          {
            v51 = v44 - v43;
          }

          else
          {
            v51 = result;
          }

          if (v2)
          {
            v10 = v51;
          }

          else
          {
            v10 = 0;
          }

          if (v10 >= 0xFFFFFFFF80000000)
          {
            if (v10 <= 0x7FFFFFFF)
            {
              goto LABEL_122;
            }

            __break(1u);
            goto LABEL_113;
          }
        }

        __break(1u);
        goto LABEL_183;
      }

      *(&v76 + 6) = 0;
      *&v76 = 0;
      result = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_101:
        a1 = SQLITE_TRANSIENT;
        v16 = &v76;
        LODWORD(v10) = 0;
        goto LABEL_125;
      }
    }

    else
    {
      if (!v15)
      {
        *&v76 = *v1;
        DWORD2(v76) = v14;
        WORD6(v76) = WORD2(v14);
        result = ppStmt[0];
        LODWORD(v2) = BYTE6(v14);
        if (one-time initialization token for SQLITE_TRANSIENT == -1)
        {
LABEL_17:
          a1 = SQLITE_TRANSIENT;
          v16 = &v76;
          LODWORD(v10) = v2;
          goto LABEL_125;
        }

LABEL_178:
        v71 = result;
        swift_once();
        result = v71;
        goto LABEL_17;
      }

      v46 = v13;
      v47 = v13 >> 32;
      v43 = v47 - v46;
      if (v47 >= v46)
      {
        v42 = v1;
        v48 = __DataStorage._bytes.getter();
        if (v48)
        {
          v49 = v48;
          v50 = __DataStorage._offset.getter();
          if (!__OFSUB__(v46, v50))
          {
            v2 = v46 - v50 + v49;
LABEL_114:
            v1 = v14 & 0x3FFFFFFFFFFFFFFFLL;
            result = MEMORY[0x2667557A0]();
            if (result >= v43)
            {
              v10 = v43;
            }

            else
            {
              v10 = result;
            }

            if (v2)
            {
              if (v10 < 0xFFFFFFFF80000000)
              {
                __break(1u);
                goto LABEL_178;
              }

              v1 = v42;
              if (v10 <= 0x7FFFFFFF)
              {
LABEL_123:
                result = ppStmt[0];
                if (one-time initialization token for SQLITE_TRANSIENT == -1)
                {
LABEL_124:
                  a1 = SQLITE_TRANSIENT;
                  v16 = v2;
LABEL_125:
                  result = sqlite3_bind_blob(result, 3, v16, v10, a1);
                  if (result)
                  {
                    goto LABEL_90;
                  }

                  v52 = *(v1 + 48);
                  v53 = *(v1 + 56);
                  v54 = v53 >> 62;
                  if ((v53 >> 62) <= 1)
                  {
                    if (!v54)
                    {
                      *&v76 = *(v1 + 48);
                      DWORD2(v76) = v53;
                      WORD6(v76) = WORD2(v53);
                      result = ppStmt[0];
                      LODWORD(v1) = BYTE6(v53);
                      if (one-time initialization token for SQLITE_TRANSIENT == -1)
                      {
LABEL_129:
                        v28 = &v76;
                        v29 = 4;
                        goto LABEL_88;
                      }

LABEL_187:
                      v74 = result;
                      swift_once();
                      result = v74;
                      goto LABEL_129;
                    }

LABEL_144:
                    v59 = v52;
                    v60 = v52 >> 32;
                    v61 = v60 - v59;
                    if (v60 < v59)
                    {
                      __break(1u);
                      goto LABEL_189;
                    }

                    v2 = __DataStorage._bytes.getter();
                    if (!v2)
                    {
                      goto LABEL_148;
                    }

                    result = __DataStorage._offset.getter();
                    if (!__OFSUB__(v59, result))
                    {
                      v2 += v59 - result;
LABEL_148:
                      result = MEMORY[0x2667557A0]();
                      if (result >= v61)
                      {
                        v1 = v61;
                      }

                      else
                      {
                        v1 = result;
                      }

                      if (!v2)
                      {
                        LODWORD(v1) = 0;
                        goto LABEL_158;
                      }

                      if (v1 < 0xFFFFFFFF80000000)
                      {
                        __break(1u);
LABEL_154:
                        *(&v76 + 6) = 0;
                        *&v76 = 0;
                        result = ppStmt[0];
                        if (one-time initialization token for SQLITE_TRANSIENT == -1)
                        {
LABEL_155:
                          v28 = &v76;
                          v29 = 4;
                          v38 = 0;
                          goto LABEL_89;
                        }

LABEL_189:
                        v75 = result;
                        swift_once();
                        result = v75;
                        goto LABEL_155;
                      }

                      if (v1 <= 0x7FFFFFFF)
                      {
LABEL_158:
                        result = ppStmt[0];
                        if (one-time initialization token for SQLITE_TRANSIENT == -1)
                        {
LABEL_159:
                          v29 = 4;
                          goto LABEL_87;
                        }

LABEL_183:
                        v73 = result;
                        swift_once();
                        result = v73;
                        goto LABEL_159;
                      }

LABEL_195:
                      __break(1u);
                      return result;
                    }

                    goto LABEL_193;
                  }

                  if (v54 != 2)
                  {
                    goto LABEL_154;
                  }

                  v55 = *(v52 + 16);
                  v56 = *(v52 + 24);
                  result = __DataStorage._bytes.getter();
                  v2 = result;
                  if (result)
                  {
                    result = __DataStorage._offset.getter();
                    if (__OFSUB__(v55, result))
                    {
                      goto LABEL_192;
                    }

                    v2 += v55 - result;
                  }

                  v32 = __OFSUB__(v56, v55);
                  v57 = v56 - v55;
                  if (v32)
                  {
                    __break(1u);
                  }

                  else
                  {
                    result = MEMORY[0x2667557A0]();
                    if (result >= v57)
                    {
                      v58 = v57;
                    }

                    else
                    {
                      v58 = result;
                    }

                    if (v2)
                    {
                      v1 = v58;
                    }

                    else
                    {
                      v1 = 0;
                    }

                    if (v1 >= 0xFFFFFFFF80000000)
                    {
                      v52 = 0x7FFFFFFFLL;
                      if (v1 <= 0x7FFFFFFF)
                      {
                        goto LABEL_158;
                      }

                      __break(1u);
                      goto LABEL_144;
                    }
                  }

                  __break(1u);
LABEL_192:
                  __break(1u);
LABEL_193:
                  __break(1u);
                  goto LABEL_194;
                }

LABEL_176:
                v69 = result;
                v70 = v10;
                swift_once();
                result = v69;
                LODWORD(v10) = v70;
                goto LABEL_124;
              }

              __break(1u);
            }

            LODWORD(v10) = 0;
LABEL_122:
            v1 = v42;
            goto LABEL_123;
          }

LABEL_185:
          __break(1u);
        }

LABEL_113:
        v2 = 0;
        goto LABEL_114;
      }

      __break(1u);
    }

    v72 = result;
    swift_once();
    result = v72;
    goto LABEL_101;
  }

  result = strdup("DELETE FROM Epoch_Table WHERE client_id = ? AND group_id = ?;");
  if (!result)
  {
    __break(1u);
    goto LABEL_187;
  }

  v5 = sqlite3_prepare_v2(a1, result, -1, ppStmt, 0);
  if (v5)
  {
LABEL_90:
    *&v76 = 0x726F7272456C7173;
    *(&v76 + 1) = 0xE90000000000003ALL;
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v39);

    v40 = v76;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v41 = 0;
    *(v41 + 8) = v40;
    return swift_willThrow();
  }

  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2)
    {
      *(&v76 + 6) = 0;
      *&v76 = 0;
      v5 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_27:
        a1 = SQLITE_TRANSIENT;
        v9 = &v76;
        LODWORD(v10) = 0;
        goto LABEL_51;
      }

LABEL_161:
      v65 = v5;
      swift_once();
      v5 = v65;
      goto LABEL_27;
    }

    v17 = v1;
    v18 = *(v6 + 16);
    v19 = *(v6 + 24);
    LODWORD(v1) = *(v1 + 8);
    result = __DataStorage._bytes.getter();
    if (result)
    {
      a1 = result;
      LODWORD(v1) = v7;
      result = __DataStorage._offset.getter();
      if (__OFSUB__(v18, result))
      {
LABEL_165:
        __break(1u);
        goto LABEL_166;
      }

      v2 = a1 + v18 - result;
    }

    else
    {
      v2 = 0;
    }

    a1 = (v19 - v18);
    if (__OFSUB__(v19, v18))
    {
      __break(1u);
    }

    else
    {
      LODWORD(v1) = v7;
      result = MEMORY[0x2667557A0]();
      if (result >= a1)
      {
        v24 = v19 - v18;
      }

      else
      {
        v24 = result;
      }

      if (v2)
      {
        v10 = v24;
      }

      else
      {
        v10 = 0;
      }

      if (v10 >= 0xFFFFFFFF80000000)
      {
        if (v10 <= 0x7FFFFFFF)
        {
          v1 = v17;
          goto LABEL_48;
        }

        goto LABEL_164;
      }
    }

    __break(1u);
LABEL_164:
    __break(1u);
    goto LABEL_165;
  }

  if (!v8)
  {
    *&v76 = *v1;
    DWORD2(v76) = v7;
    WORD6(v76) = WORD2(v7);
    v5 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT != -1)
    {
      v64 = ppStmt[0];
      swift_once();
      v5 = v64;
    }

    a1 = SQLITE_TRANSIENT;
    v9 = &v76;
    LODWORD(v10) = BYTE6(v7);
    goto LABEL_51;
  }

  v2 = v6;
  v20 = v6 >> 32;
  v21 = v20 - v2;
  if (v20 < v2)
  {
    __break(1u);
    goto LABEL_161;
  }

  v22 = v1;
  v23 = __DataStorage._bytes.getter();
  if (!v23)
  {
    v2 = 0;
    goto LABEL_40;
  }

  a1 = v23;
  LODWORD(v1) = v7;
  result = __DataStorage._offset.getter();
  if (__OFSUB__(v2, result))
  {
LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

  v2 = a1 + v2 - result;
LABEL_40:
  result = MEMORY[0x2667557A0]();
  if (result >= v21)
  {
    v10 = v21;
  }

  else
  {
    v10 = result;
  }

  if (v2)
  {
    if (v10 >= 0xFFFFFFFF80000000)
    {
      v1 = v22;
      if (v10 > 0x7FFFFFFF)
      {
LABEL_172:
        __break(1u);
        goto LABEL_173;
      }

      goto LABEL_48;
    }

    __break(1u);
  }

  LODWORD(v10) = 0;
  v1 = v22;
LABEL_48:
  v5 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v62 = ppStmt[0];
    v63 = v10;
    swift_once();
    v5 = v62;
    LODWORD(v10) = v63;
  }

  a1 = SQLITE_TRANSIENT;
  v9 = v2;
LABEL_51:
  result = sqlite3_bind_blob(v5, 1, v9, v10, a1);
  if (result)
  {
    goto LABEL_90;
  }

  v25 = *(v1 + 48);
  v26 = *(v1 + 56);
  v27 = v26 >> 62;
  if ((v26 >> 62) <= 1)
  {
    if (!v27)
    {
      *&v76 = *(v1 + 48);
      DWORD2(v76) = v26;
      WORD6(v76) = WORD2(v26);
      result = ppStmt[0];
      LODWORD(v1) = BYTE6(v26);
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        v67 = ppStmt[0];
        swift_once();
        result = v67;
      }

      v28 = &v76;
      v29 = 2;
      goto LABEL_88;
    }

    goto LABEL_71;
  }

  if (v27 != 2)
  {
    goto LABEL_81;
  }

  v30 = *(v25 + 16);
  v31 = *(v25 + 24);
  v1 = v26 & 0x3FFFFFFFFFFFFFFFLL;
  result = __DataStorage._bytes.getter();
  v2 = result;
  if (result)
  {
    v1 = v26 & 0x3FFFFFFFFFFFFFFFLL;
    result = __DataStorage._offset.getter();
    if (__OFSUB__(v30, result))
    {
LABEL_173:
      __break(1u);
      goto LABEL_174;
    }

    v2 += v30 - result;
  }

  v32 = __OFSUB__(v31, v30);
  v33 = v31 - v30;
  if (v32)
  {
    __break(1u);
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  result = MEMORY[0x2667557A0]();
  if (result >= v33)
  {
    v34 = v33;
  }

  else
  {
    v34 = result;
  }

  if (v2)
  {
    v1 = v34;
  }

  else
  {
    v1 = 0;
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    goto LABEL_171;
  }

  v25 = 0x7FFFFFFFLL;
  if (v1 <= 0x7FFFFFFF)
  {
    goto LABEL_85;
  }

  __break(1u);
LABEL_71:
  v35 = v25;
  v36 = v25 >> 32;
  v37 = v36 - v35;
  if (v36 < v35)
  {
    __break(1u);
    goto LABEL_169;
  }

  v2 = __DataStorage._bytes.getter();
  if (v2)
  {
    v1 = v26 & 0x3FFFFFFFFFFFFFFFLL;
    result = __DataStorage._offset.getter();
    if (!__OFSUB__(v35, result))
    {
      v2 += v35 - result;
      goto LABEL_75;
    }

LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

LABEL_75:
  result = MEMORY[0x2667557A0]();
  if (result >= v37)
  {
    v1 = v37;
  }

  else
  {
    v1 = result;
  }

  if (!v2)
  {
    LODWORD(v1) = 0;
    goto LABEL_85;
  }

  if (v1 >= 0xFFFFFFFF80000000)
  {
    if (v1 <= 0x7FFFFFFF)
    {
LABEL_85:
      result = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_86:
        v29 = 2;
LABEL_87:
        v28 = v2;
LABEL_88:
        v38 = v1;
        goto LABEL_89;
      }

LABEL_167:
      v66 = result;
      swift_once();
      result = v66;
      goto LABEL_86;
    }

    goto LABEL_175;
  }

  __break(1u);
LABEL_81:
  *(&v76 + 6) = 0;
  *&v76 = 0;
  result = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_169:
    v68 = result;
    swift_once();
    result = v68;
  }

  v28 = &v76;
  v29 = 2;
  v38 = 0;
LABEL_89:
  if (sqlite3_bind_blob(result, v29, v28, v38, a1))
  {
    goto LABEL_90;
  }

  return ppStmt[0];
}

unint64_t closure #1 in variable initialization expression of static EpochModel.converter@<X0>(sqlite3_stmt *a1@<X0>, uint64_t a2@<X8>)
{
  if (sqlite3_column_type(a1, 0) == 5)
  {
    goto LABEL_11;
  }

  v4 = sqlite3_column_blob(a1, 0);
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = v4;
  v6 = sqlite3_column_bytes(a1, 0);
  v7 = specialized Data.init(bytes:count:)(v5, v6);
  v9 = v8;
  if (sqlite3_column_type(a1, 1) == 5 || (v10 = sqlite3_column_int64(a1, 1), sqlite3_column_type(a1, 2) == 5) || (v11 = sqlite3_column_int64(a1, 2), sqlite3_column_type(a1, 3) == 5) || (v12 = sqlite3_column_blob(a1, 3)) == 0)
  {
    v18 = v7;
    v19 = v9;
    goto LABEL_10;
  }

  v13 = v12;
  v14 = sqlite3_column_bytes(a1, 3);
  v15 = specialized Data.init(bytes:count:)(v13, v14);
  v17 = v16;
  if (sqlite3_column_type(a1, 4) == 5 || (v26 = v17, (v22 = sqlite3_column_blob(a1, 4)) == 0))
  {
    outlined consume of Data._Representation(v7, v9);
    v18 = v15;
    v19 = v17;
LABEL_10:
    outlined consume of Data._Representation(v18, v19);
LABEL_11:
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v20 = 3;
    *(v20 + 8) = 0;
    *(v20 + 16) = 0;
    return swift_willThrow();
  }

  v23 = v22;
  v24 = sqlite3_column_bytes(a1, 4);
  result = specialized Data.init(bytes:count:)(v23, v24);
  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
  *(a2 + 24) = 0;
  *(a2 + 32) = v11;
  *(a2 + 40) = 0;
  *(a2 + 48) = v15;
  *(a2 + 56) = v26;
  *(a2 + 64) = result;
  *(a2 + 72) = v25;
  return result;
}

uint64_t (*static EpochModel.converter.getter())()
{
  swift_beginAccess();
  v0 = static EpochModel.converter;

  return v0;
}

uint64_t static EpochModel.converter.setter(uint64_t (*a1)(), uint64_t a2)
{
  swift_beginAccess();
  static EpochModel.converter = a1;
  qword_281EF8668 = a2;
}

uint64_t key path getter for static EpochModel.converter : EpochModel.Type@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = static EpochModel.converter;
  v2 = qword_281EF8668;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned EpochModel?, @error @owned Error)partial apply;
  a1[1] = v4;
}

uint64_t key path setter for static EpochModel.converter : EpochModel.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_beginAccess();
  static EpochModel.converter = thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out EpochModel?, @error @owned Error)partial apply;
  qword_281EF8668 = v3;
}

double (*protocol witness for static SqlSchema.converter.getter in conformance EpochModel())@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v1 = static EpochModel.converter;
  v0 = qword_281EF8668;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned EpochModel?, @error @owned Error)partial apply;
}

uint64_t *EpochQuery.converter.unsafeMutableAddressor()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  return &static EpochQuery.converter;
}

uint64_t static EpochQuery.converter.getter()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static EpochQuery.converter;

  return v0;
}

uint64_t static EpochQuery.converter.setter(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static EpochQuery.converter = a1;
  qword_2800168F8 = a2;
}

uint64_t (*static EpochQuery.converter.modify(uint64_t a1))()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static StateMachineQuery.converter.modify;
}

uint64_t key path getter for static EpochQuery.converter : EpochQuery.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static EpochQuery.converter;
  v2 = qword_2800168F8;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned EpochModel?, @error @owned Error);
  a1[1] = v4;
}

uint64_t key path setter for static EpochQuery.converter : EpochQuery.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = one-time initialization token for converter;

  if (v4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static EpochQuery.converter = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out EpochModel?, @error @owned Error);
  qword_2800168F8 = v3;
}

uint64_t EpochQuery.clientIdentifier.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t EpochQuery.groupID.getter()
{
  v1 = *(v0 + 32);
  outlined copy of Data._Representation(v1, *(v0 + 40));
  return v1;
}

sqlite3_stmt *EpochQuery.queryStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v3 = strdup("SELECT * FROM Epoch_Table WHERE epoch_id = ? AND era_id = ? AND client_id = ? AND group_id = ? LIMIT 1;");
  if (!v3)
  {
LABEL_98:
    __break(1u);
  }

  if (sqlite3_prepare_v2(a1, v3, -1, ppStmt, 0))
  {
    goto LABEL_80;
  }

  if (sqlite3_bind_int64(ppStmt[0], 1, *(v1 + 16)))
  {
    goto LABEL_80;
  }

  v4 = sqlite3_bind_int64(ppStmt[0], 2, *(v1 + 24));
  if (v4)
  {
    goto LABEL_80;
  }

  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 == 2)
    {
      v12 = v1;
      v13 = *(v5 + 16);
      v14 = *(v5 + 24);
      LODWORD(v1) = *(v1 + 8);
      v15 = __DataStorage._bytes.getter();
      if (v15)
      {
        v9 = v15;
        LODWORD(v1) = v6;
        v15 = __DataStorage._offset.getter();
        if (__OFSUB__(v13, v15))
        {
          __break(1u);
          goto LABEL_90;
        }

        v8 = v9 + v13 - v15;
      }

      else
      {
        v8 = 0;
      }

      v9 = (v14 - v13);
      if (__OFSUB__(v14, v13))
      {
        __break(1u);
      }

      else
      {
        LODWORD(v1) = v6;
        v15 = MEMORY[0x2667557A0]();
        if (v15 >= v9)
        {
          v19 = v14 - v13;
        }

        else
        {
          v19 = v15;
        }

        if (v8)
        {
          v11 = v19;
        }

        else
        {
          v11 = 0;
        }

        if (v11 >= 0xFFFFFFFF80000000)
        {
          if (v11 <= 0x7FFFFFFF)
          {
            goto LABEL_39;
          }

          __break(1u);
          goto LABEL_30;
        }
      }

      __break(1u);
      goto LABEL_88;
    }

    *(&v46 + 6) = 0;
    *&v46 = 0;
    v4 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_18:
      v9 = SQLITE_TRANSIENT;
      v10 = &v46;
      LODWORD(v11) = 0;
      goto LABEL_43;
    }

LABEL_85:
    v42 = v4;
    swift_once();
    v4 = v42;
    goto LABEL_18;
  }

  if (!v7)
  {
    *&v46 = *v1;
    DWORD2(v46) = v6;
    WORD6(v46) = WORD2(v6);
    v4 = ppStmt[0];
    LODWORD(v8) = BYTE6(v6);
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_8:
      v9 = SQLITE_TRANSIENT;
      v10 = &v46;
      LODWORD(v11) = v8;
      goto LABEL_43;
    }

LABEL_83:
    v41 = v4;
    swift_once();
    v4 = v41;
    goto LABEL_8;
  }

  v16 = v5;
  v17 = v5 >> 32;
  v13 = v17 - v16;
  if (v17 < v16)
  {
    __break(1u);
    goto LABEL_85;
  }

  v12 = v1;
  v18 = __DataStorage._bytes.getter();
  if (!v18)
  {
LABEL_30:
    v8 = 0;
    goto LABEL_31;
  }

  v9 = v18;
  LODWORD(v1) = v6;
  v15 = __DataStorage._offset.getter();
  if (__OFSUB__(v16, v15))
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v8 = v9 + v16 - v15;
LABEL_31:
  v1 = v6 & 0x3FFFFFFFFFFFFFFFLL;
  v4 = MEMORY[0x2667557A0]();
  if (v4 >= v13)
  {
    v11 = v13;
  }

  else
  {
    v11 = v4;
  }

  if (v8)
  {
    if (v11 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_83;
    }

    v1 = v12;
    if (v11 <= 0x7FFFFFFF)
    {
      goto LABEL_40;
    }

    __break(1u);
  }

  LODWORD(v11) = 0;
LABEL_39:
  v1 = v12;
LABEL_40:
  v4 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v39 = ppStmt[0];
    v40 = v11;
    swift_once();
    v4 = v39;
    LODWORD(v11) = v40;
  }

  v9 = SQLITE_TRANSIENT;
  v10 = v8;
LABEL_43:
  v15 = sqlite3_bind_blob(v4, 3, v10, v11, v9);
  if (v15)
  {
LABEL_80:
    *&v46 = 0x726F7272456C7173;
    *(&v46 + 1) = 0xE90000000000003ALL;
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v36);

    v37 = v46;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v38 = 0;
    *(v38 + 8) = v37;
    return swift_willThrow();
  }

  v20 = *(v1 + 32);
  v21 = *(v1 + 40);
  v22 = v21 >> 62;
  if ((v21 >> 62) <= 1)
  {
    if (!v22)
    {
      *&v46 = *(v1 + 32);
      DWORD2(v46) = v21;
      WORD6(v46) = WORD2(v21);
      v15 = ppStmt[0];
      LODWORD(v1) = BYTE6(v21);
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_47:
        v23 = &v46;
LABEL_78:
        v35 = v1;
        goto LABEL_79;
      }

LABEL_91:
      v44 = v15;
      swift_once();
      v15 = v44;
      goto LABEL_47;
    }

    goto LABEL_62;
  }

  if (v22 != 2)
  {
    goto LABEL_72;
  }

  v24 = *(v20 + 16);
  v25 = *(v20 + 24);
  v8 = __DataStorage._bytes.getter();
  if (v8)
  {
    v26 = __DataStorage._offset.getter();
    if (__OFSUB__(v24, v26))
    {
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v8 += v24 - v26;
  }

  v27 = __OFSUB__(v25, v24);
  v28 = v25 - v24;
  if (v27)
  {
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v15 = MEMORY[0x2667557A0]();
  if (v15 >= v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = v15;
  }

  if (v8)
  {
    v1 = v29;
  }

  else
  {
    v1 = 0;
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    goto LABEL_95;
  }

  v20 = 0x7FFFFFFFLL;
  if (v1 <= 0x7FFFFFFF)
  {
    goto LABEL_76;
  }

  __break(1u);
LABEL_62:
  v30 = v20;
  v31 = v20 >> 32;
  v32 = v31 - v30;
  if (v31 < v30)
  {
    __break(1u);
    goto LABEL_93;
  }

  v8 = __DataStorage._bytes.getter();
  if (v8)
  {
    v33 = __DataStorage._offset.getter();
    if (!__OFSUB__(v30, v33))
    {
      v8 += v30 - v33;
      goto LABEL_66;
    }

    goto LABEL_97;
  }

LABEL_66:
  result = MEMORY[0x2667557A0]();
  if (result >= v32)
  {
    v1 = v32;
  }

  else
  {
    v1 = result;
  }

  if (!v8)
  {
    LODWORD(v1) = 0;
    goto LABEL_76;
  }

  if (v1 >= 0xFFFFFFFF80000000)
  {
    if (v1 > 0x7FFFFFFF)
    {
      __break(1u);
      return result;
    }

LABEL_76:
    v15 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_77:
      v23 = v8;
      goto LABEL_78;
    }

LABEL_88:
    v43 = v15;
    swift_once();
    v15 = v43;
    goto LABEL_77;
  }

  __break(1u);
LABEL_72:
  *(&v46 + 6) = 0;
  *&v46 = 0;
  v15 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_93:
    v45 = v15;
    swift_once();
    v15 = v45;
  }

  v23 = &v46;
  v35 = 0;
LABEL_79:
  if (sqlite3_bind_blob(v15, 4, v23, v35, v9))
  {
    goto LABEL_80;
  }

  return ppStmt[0];
}

double (*protocol witness for static SqlQuery.converter.getter in conformance EpochQuery())@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = static EpochQuery.converter;
  v0 = qword_2800168F8;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned EpochModel?, @error @owned Error);
}

sqlite3_stmt *specialized static EpochModel.createStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("CREATE TABLE IF NOT EXISTS Epoch_Table (\n    client_id BLOB NOT NULL,\n    epoch_id BIGINT NOT NULL,\n    era_id BIGINT NOT NULL,\n    group_id BLOB NOT NULL,\n    epoch_record_data BLOB NOT NULL,\n    PRIMARY KEY (epoch_id, era_id, group_id, client_id)\n);");
  if (!v2)
  {
    __break(1u);
  }

  if (!sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    return ppStmt[0];
  }

  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v3);

  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0x726F7272456C7173;
  *(v4 + 16) = 0xE90000000000003ALL;
  return swift_willThrow();
}

sqlite3_stmt *specialized static EpochModel.dropStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("DROP TABLE IF EXISTS Epoch_Table");
  if (!v2)
  {
    __break(1u);
  }

  if (!sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    return ppStmt[0];
  }

  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v3);

  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0x726F7272456C7173;
  *(v4 + 16) = 0xE90000000000003ALL;
  return swift_willThrow();
}

uint64_t getEnumTagSinglePayload for EpochModel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 80))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for EpochModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_2652D9F00()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

__n128 partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out EpochModel?, @error @owned Error)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v9 = a1;
  v5(v8, &v9);
  if (!v3)
  {
    v7 = v8[3];
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v7;
    *(a2 + 64) = v8[4];
    result = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = result;
  }

  return result;
}

__n128 partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned EpochModel?, @error @owned Error)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  (*(v2 + 16))(v7, *a1);
  if (!v3)
  {
    v6 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v6;
    *(a2 + 64) = v7[4];
    result = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = result;
  }

  return result;
}

__n128 partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned EpochModel?, @error @owned Error)@<Q0>(uint64_t a1@<X8>)
{
  (*(v1 + 16))(v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t MLSDaemon.setupInternalConnection(mlsDaemonClient:regClientKeyPackageExchanger:identifier:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[3];
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, v8);
  ObjectType = swift_getObjectType();

  return specialized MLSDaemon.setupInternalConnection(mlsDaemonClient:regClientKeyPackageExchanger:identifier:)(v10, a2, a4, v4, v8, ObjectType, v9, a3);
}

void thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSData?, @unowned NSData?) -> ()(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  if (a4 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = Data._bridgeToObjectiveC()().super.isa;
  }

  v9 = v8;
  (*(a5 + 16))(a5, isa);
}

uint64_t MLSDaemon.publicSigningKey(for:with:)(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v3[25] = v4;
  v3[26] = *(v4 - 8);
  v3[27] = swift_task_alloc();
  v5 = type metadata accessor for MLS.SwiftMLSClientPicker();
  v3[28] = v5;
  v3[29] = *(v5 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v6 = type metadata accessor for URI();
  v3[32] = v6;
  v3[33] = *(v6 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v7 = type metadata accessor for MLS.ClientIdentifier();
  v3[37] = v7;
  v3[38] = *(v7 - 8);
  v3[39] = swift_task_alloc();
  v8 = type metadata accessor for MLS.UniqueClientIdentifier();
  v3[40] = v8;
  v3[41] = *(v8 - 8);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLSDaemon.publicSigningKey(for:with:), 0, 0);
}

uint64_t MLSDaemon.publicSigningKey(for:with:)()
{
  v41 = v0;
  v1 = v0[44];
  v2 = v0[41];
  v36 = v0[40];
  v38 = v0[43];
  v3 = v0[36];
  v4 = v0[35];
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[22];
  (*(v0[38] + 16))(v0[39], v0[23], v0[37]);
  v8 = *(v5 + 16);
  v0[45] = v8;
  v0[46] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v7, v6);
  MLS.UniqueClientIdentifier.init(clientIdentifier:clientURI:)();
  v0[47] = OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_logger;
  v8(v4, v7, v6);
  v9 = *(v2 + 16);
  v0[48] = v9;
  v0[49] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v38, v1, v36);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[43];
  v15 = v0[40];
  v14 = v0[41];
  v16 = v0[35];
  v18 = v0[32];
  v17 = v0[33];
  if (v12)
  {
    v37 = v11;
    v19 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = v39;
    *v19 = 136315394;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258], MEMORY[0x277D4D270]);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v15;
    log = v10;
    v21 = v13;
    v23 = v22;
    v24 = *(v17 + 8);
    v24(v16, v18);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v23, &v40);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2080;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v29 = *(v14 + 8);
    v29(v21, v34);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v40);

    *(v19 + 14) = v30;
    _os_log_impl(&dword_26524C000, log, v37, "MLSDaemon publicSigningKey called { uri: %s, clientIdentifier: %s }", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v39, -1, -1);
    MEMORY[0x2667577B0](v19, -1, -1);
  }

  else
  {

    v29 = *(v14 + 8);
    v29(v13, v15);
    v24 = *(v17 + 8);
    v24(v16, v18);
  }

  v0[50] = v24;
  v0[51] = v29;
  v31 = swift_task_alloc();
  v0[52] = v31;
  *v31 = v0;
  v31[1] = MLSDaemon.publicSigningKey(for:with:);
  v32 = v0[44];

  return MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:)(v32);
}

{
  *(*v1 + 424) = v0;

  if (v0)
  {
    v2 = MLSDaemon.publicSigningKey(for:with:);
  }

  else
  {
    v2 = MLSDaemon.publicSigningKey(for:with:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[24];
  v2 = (*MEMORY[0x277D85000] & *v1) + 136;
  v0[54] = *((*MEMORY[0x277D85000] & *v1) + 0x88);
  v0[55] = v2 & 0xFFFFFFFFFFFFLL | 0x2693000000000000;
  type metadata accessor for MLSActor();
  v0[56] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](MLSDaemon.publicSigningKey(for:with:), v4, v3);
}

{
  v1 = *(v0 + 432);

  *(v0 + 456) = v1(v2);

  return MEMORY[0x2822009F8](MLSDaemon.publicSigningKey(for:with:), 0, 0);
}

{
  v67 = v0;
  if (*(v0[57] + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[44]), (v2 & 1) != 0))
  {
    v4 = v0[30];
    v3 = v0[31];
    v5 = v0[28];
    v6 = v0[29];
    v7 = *(v6 + 16);
    v7(v3, *(v0[57] + 56) + *(v6 + 72) * v1, v5);

    v7(v4, v3, v5);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[29];
    v11 = v0[30];
    v13 = v0[28];
    if (v10)
    {
      v64 = v0[28];
      v14 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v66[0] = v62;
      *v14 = 136315138;
      log = v9;
      MLS.SwiftMLSClientPicker.client.getter();
      __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
      dispatch thunk of MLS.SwiftMLSClientProtocol.signaturePublicKey.getter();
      __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
      v15 = dispatch thunk of MLS.Cryptography.SerializablePublicKey.data.getter();
      v17 = v16;
      v18 = Data.base64EncodedString(options:)(0);
      outlined consume of Data._Representation(v15, v17);
      v19 = v64;
      v65 = *(v12 + 8);
      v65(v11, v19);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18._countAndFlagsBits, v18._object, v66);

      *(v14 + 4) = v20;
      _os_log_impl(&dword_26524C000, v8, log, "MLSDaemon publicSigningKey data: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v62);
      MEMORY[0x2667577B0](v62, -1, -1);
      MEMORY[0x2667577B0](v14, -1, -1);
    }

    else
    {

      v65 = *(v12 + 8);
      v65(v11, v13);
    }

    v48 = v0[44];
    v56 = v0[51];
    v49 = v0[40];
    v50 = v0[31];
    v51 = v0[28];
    MLS.SwiftMLSClientPicker.client.getter();
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    dispatch thunk of MLS.SwiftMLSClientProtocol.signaturePublicKey.getter();
    __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    v52 = dispatch thunk of MLS.Cryptography.SerializablePublicKey.data.getter();
    v54 = v53;
    v65(v50, v51);
    v56(v48, v49);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

    v55 = v0[1];

    return v55(v52, v54);
  }

  else
  {
    loga = v0[48];
    v21 = v0[44];
    v22 = v0[45];
    v23 = v0[42];
    v24 = v0[40];
    v25 = v0[34];
    v26 = v0[32];
    v27 = v0[22];

    v22(v25, v27, v26);
    (loga)(v23, v21, v24);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    v30 = os_log_type_enabled(v28, v29);
    v31 = v0[50];
    v32 = v0[51];
    v33 = v0[42];
    v34 = v0[40];
    v35 = v0[34];
    v36 = v0[32];
    if (v30)
    {
      logb = v28;
      v37 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v66[0] = v63;
      *v37 = 136315394;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258], MEMORY[0x277D4D270]);
      v57 = v32;
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v29;
      v40 = v39;
      v31(v35, v36);
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, v66);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      v57(v33, v34);
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, v66);

      *(v37 + 14) = v45;
      _os_log_impl(&dword_26524C000, logb, v58, "MLSDaemon publicSigningKey has no clientXPCProxy { uri: %s, uniqueClientIdentifier: %s }", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v63, -1, -1);
      MEMORY[0x2667577B0](v37, -1, -1);
    }

    else
    {

      v32(v33, v34);
      v31(v35, v36);
    }

    (*(v0[26] + 104))(v0[27], *MEMORY[0x277D4D2B0], v0[25]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0], MEMORY[0x277D4D2C8]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    (v0[51])(v0[44], v0[40]);

    v46 = v0[1];

    return v46();
  }
}

{
  (*(v0 + 408))(*(v0 + 352), *(v0 + 320));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLSDaemon.getKeyPackage(for:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for MLS.Client.KeyPackage();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = type metadata accessor for MLS.SwiftMLSClientPicker();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v8 = type metadata accessor for URI();
  v4[16] = v8;
  v4[17] = *(v8 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v9 = type metadata accessor for MLS.ClientIdentifier();
  v4[21] = v9;
  v4[22] = *(v9 - 8);
  v4[23] = swift_task_alloc();
  v10 = type metadata accessor for MLS.UniqueClientIdentifier();
  v4[24] = v10;
  v4[25] = *(v10 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLSDaemon.getKeyPackage(for:with:), 0, 0);
}

uint64_t MLSDaemon.getKeyPackage(for:with:)()
{
  v41 = v0;
  v1 = v0[28];
  v2 = v0[25];
  v36 = v0[24];
  v38 = v0[27];
  v3 = v0[20];
  v4 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[3];
  (*(v0[22] + 16))(v0[23], v0[4], v0[21]);
  v8 = *(v5 + 16);
  v0[29] = v8;
  v0[30] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v7, v6);
  MLS.UniqueClientIdentifier.init(clientIdentifier:clientURI:)();
  v0[31] = OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_logger;
  v8(v4, v7, v6);
  v9 = *(v2 + 16);
  v0[32] = v9;
  v0[33] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v38, v1, v36);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[27];
  v15 = v0[24];
  v14 = v0[25];
  v16 = v0[19];
  v18 = v0[16];
  v17 = v0[17];
  if (v12)
  {
    v37 = v11;
    v19 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = v39;
    *v19 = 136315394;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258], MEMORY[0x277D4D270]);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v15;
    log = v10;
    v21 = v13;
    v23 = v22;
    v24 = *(v17 + 8);
    v24(v16, v18);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v23, &v40);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2080;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v29 = *(v14 + 8);
    v29(v21, v34);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v40);

    *(v19 + 14) = v30;
    _os_log_impl(&dword_26524C000, log, v37, "MLSDaemon getKeyPackage called { uri: %s, clientIdentifier: %s }", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v39, -1, -1);
    MEMORY[0x2667577B0](v19, -1, -1);
  }

  else
  {

    v29 = *(v14 + 8);
    v29(v13, v15);
    v24 = *(v17 + 8);
    v24(v16, v18);
  }

  v0[34] = v24;
  v0[35] = v29;
  v31 = swift_task_alloc();
  v0[36] = v31;
  *v31 = v0;
  v31[1] = MLSDaemon.getKeyPackage(for:with:);
  v32 = v0[28];

  return MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:)(v32);
}

{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = MLSDaemon.getKeyPackage(for:with:);
  }

  else
  {
    v2 = MLSDaemon.getKeyPackage(for:with:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[5];
  v2 = (*MEMORY[0x277D85000] & *v1) + 136;
  v0[38] = *((*MEMORY[0x277D85000] & *v1) + 0x88);
  v0[39] = v2 & 0xFFFFFFFFFFFFLL | 0x2693000000000000;
  type metadata accessor for MLSActor();
  v0[40] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](MLSDaemon.getKeyPackage(for:with:), v4, v3);
}

{
  v1 = *(v0 + 304);

  *(v0 + 328) = v1(v2);

  return MEMORY[0x2822009F8](MLSDaemon.getKeyPackage(for:with:), 0, 0);
}

{
  v49 = v0;
  if (*(v0[41] + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[28]), (v2 & 1) != 0))
  {
    v3 = v0[14];
    v4 = v0[15];
    v5 = v0[12];
    v6 = v0[13];
    (*(v6 + 16))(v3, *(v0[41] + 56) + *(v6 + 72) * v1, v5);

    (*(v6 + 32))(v4, v3, v5);
    _StringGuts.grow(_:)(16);

    strcpy(v48, "getKeyPackage-");
    HIBYTE(v48[1]) = -18;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v7);

    v8 = v48[0];
    v9 = v48[1];
    v0[42] = v48[1];
    v10 = swift_task_alloc();
    v0[43] = v10;
    *(v10 + 16) = v4;
    v11 = swift_task_alloc();
    v0[44] = v11;
    v12 = type metadata accessor for DaemonPersister(0);
    v13 = _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type DaemonPersister and conformance DaemonPersister, type metadata accessor for DaemonPersister, &protocol conformance descriptor for DaemonPersister);
    *v11 = v0;
    v11[1] = MLSDaemon.getKeyPackage(for:with:);
    v14 = v0[11];
    v15 = v0[9];

    return MEMORY[0x2821ACB80](v14, v8, v9, &async function pointer to partial apply for closure #1 in MLSDaemon.getKeyPackage(for:with:), v10, v12, v15, v13);
  }

  else
  {
    log = v0[32];
    v16 = v0[28];
    v17 = v0[29];
    v18 = v0[26];
    v19 = v0[24];
    v20 = v0[18];
    v21 = v0[16];
    v22 = v0[3];

    v17(v20, v22, v21);
    (log)(v18, v16, v19);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[34];
    v27 = v0[35];
    v28 = v0[26];
    v29 = v0[24];
    v30 = v0[18];
    v31 = v0[16];
    if (v25)
    {
      loga = v23;
      v32 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48[0] = v47;
      *v32 = 136315394;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258], MEMORY[0x277D4D270]);
      v43 = v27;
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v24;
      v35 = v34;
      v26(v30, v31);
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, v48);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      v43(v28, v29);
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, v48);

      *(v32 + 14) = v40;
      _os_log_impl(&dword_26524C000, loga, v44, "MLSDaemon getKeyPackage has no clientXPCProxy { uri: %s, uniqueClientIdentifier: %s }", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v47, -1, -1);
      MEMORY[0x2667577B0](v32, -1, -1);
    }

    else
    {

      v27(v28, v29);
      v26(v30, v31);
    }

    (*(v0[7] + 104))(v0[8], *MEMORY[0x277D4D2B0], v0[6]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0], MEMORY[0x277D4D2C8]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    (v0[35])(v0[28], v0[24]);

    v41 = v0[1];

    return v41();
  }
}

{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = MLSDaemon.getKeyPackage(for:with:);
  }

  else
  {
    v2 = MLSDaemon.getKeyPackage(for:with:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[28];
  v11 = v0[35];
  v2 = v0[24];
  v10 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  MLS.Client.KeyPackage.rawRepresentation.getter();
  MLS.KeyPackageInfo.init(keyPackage:)();
  (*(v6 + 8))(v5, v7);
  v11(v1, v2);
  (*(v3 + 8))(v10, v4);

  v8 = v0[1];

  return v8();
}

{
  (*(v0 + 280))(*(v0 + 224), *(v0 + 192));

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 104);
  (*(v0 + 280))(*(v0 + 224), *(v0 + 192));
  (*(v1 + 8))(*(v0 + 120), *(v0 + 96));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t MLSDaemon.credentialSigningRequest(for:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  Identity = type metadata accessor for KDSRegistration.GetIdentityError.ErrorType();
  v4[14] = Identity;
  v4[15] = *(Identity - 8);
  v4[16] = swift_task_alloc();
  v7 = type metadata accessor for MLS.SwiftMLSClientPicker();
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v8 = type metadata accessor for URI();
  v4[21] = v8;
  v4[22] = *(v8 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v9 = type metadata accessor for MLS.ClientIdentifier();
  v4[27] = v9;
  v4[28] = *(v9 - 8);
  v4[29] = swift_task_alloc();
  v10 = type metadata accessor for MLS.UniqueClientIdentifier();
  v4[30] = v10;
  v4[31] = *(v10 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLSDaemon.credentialSigningRequest(for:with:), 0, 0);
}

uint64_t MLSDaemon.credentialSigningRequest(for:with:)()
{
  v41 = v0;
  v1 = v0[35];
  v2 = v0[31];
  v36 = v0[30];
  v38 = v0[34];
  v3 = v0[26];
  v4 = v0[25];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[8];
  (*(v0[28] + 16))(v0[29], v0[9], v0[27]);
  v8 = *(v5 + 16);
  v0[36] = v8;
  v0[37] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v7, v6);
  MLS.UniqueClientIdentifier.init(clientIdentifier:clientURI:)();
  v0[38] = OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_logger;
  v8(v4, v7, v6);
  v9 = *(v2 + 16);
  v0[39] = v9;
  v0[40] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v38, v1, v36);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[34];
  v15 = v0[30];
  v14 = v0[31];
  v16 = v0[25];
  v18 = v0[21];
  v17 = v0[22];
  if (v12)
  {
    v37 = v11;
    v19 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = v39;
    *v19 = 136315394;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258], MEMORY[0x277D4D270]);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v15;
    log = v10;
    v21 = v13;
    v23 = v22;
    v24 = *(v17 + 8);
    v24(v16, v18);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v23, &v40);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2080;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v29 = *(v14 + 8);
    v29(v21, v34);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v40);

    *(v19 + 14) = v30;
    _os_log_impl(&dword_26524C000, log, v37, "MLSDaemon credentialSigningRequest called { uri: %s, clientIdentifier: %s }", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v39, -1, -1);
    MEMORY[0x2667577B0](v19, -1, -1);
  }

  else
  {

    v29 = *(v14 + 8);
    v29(v13, v15);
    v24 = *(v17 + 8);
    v24(v16, v18);
  }

  v0[41] = v24;
  v0[42] = v29;
  v31 = swift_task_alloc();
  v0[43] = v31;
  *v31 = v0;
  v31[1] = MLSDaemon.credentialSigningRequest(for:with:);
  v32 = v0[35];

  return MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:)(v32);
}

{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = MLSDaemon.credentialSigningRequest(for:with:);
  }

  else
  {
    v2 = MLSDaemon.credentialSigningRequest(for:with:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[10];
  v2 = (*MEMORY[0x277D85000] & *v1) + 136;
  v0[45] = *((*MEMORY[0x277D85000] & *v1) + 0x88);
  v0[46] = v2 & 0xFFFFFFFFFFFFLL | 0x2693000000000000;
  type metadata accessor for MLSActor();
  v0[47] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](MLSDaemon.credentialSigningRequest(for:with:), v4, v3);
}

{
  v1 = *(v0 + 360);

  *(v0 + 384) = v1(v2);

  return MEMORY[0x2822009F8](MLSDaemon.credentialSigningRequest(for:with:), 0, 0);
}

{
  v86 = v0;
  if (!*(v0[48] + 16) || (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[35]), (v2 & 1) == 0))
  {
    log = v0[39];
    v17 = v0[35];
    v18 = v0[36];
    v19 = v0[32];
    v20 = v0[30];
    v21 = v0[23];
    v22 = v0[21];
    v23 = v0[8];

    v18(v21, v23, v22);
    (log)(v19, v17, v20);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    v26 = os_log_type_enabled(v24, v25);
    v27 = v0[41];
    v83 = v0[42];
    v28 = v0[32];
    v29 = v0[30];
    v30 = v0[23];
    v31 = v0[21];
    if (v26)
    {
      loga = v24;
      v32 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v85[0] = v80;
      *v32 = 136315394;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258], MEMORY[0x277D4D270]);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v75 = v25;
      v35 = v34;
      v27(v30, v31);
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, v85);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      v83(v28, v29);
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, v85);

      *(v32 + 14) = v40;
      _os_log_impl(&dword_26524C000, loga, v75, "MLSDaemon getKeyPackage has no clientXPCProxy { uri: %s, uniqueClientIdentifier: %s }", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v80, -1, -1);
      MEMORY[0x2667577B0](v32, -1, -1);
    }

    else
    {

      v83(v28, v29);
      v27(v30, v31);
    }

    v41 = v0[42];
    v42 = v0[35];
    v43 = v0[30];
    (*(v0[12] + 104))(v0[13], *MEMORY[0x277D4D2B0], v0[11]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0], MEMORY[0x277D4D2C8]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    v41(v42, v43);
    goto LABEL_11;
  }

  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[17];
  v6 = v0[18];
  v7 = *(v6 + 16);
  v7(v3, *(v0[48] + 56) + *(v6 + 72) * v1, v5);

  v7(v4, v3, v5);
  v8 = (*(v6 + 88))(v4, v5);
  if (v8 == *MEMORY[0x277D4CFC0])
  {
    v9 = v0[19];
    (*(v0[18] + 96))(v9, v0[17]);
    outlined init with take of MLS.SwiftMLSPersisterProtocol(v9, (v0 + 2));
    v10 = v0[5];
    v11 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v10);
    v12 = MEMORY[0x266756630]();
    v14 = v13;
    v0[49] = v13;
    v15 = swift_task_alloc();
    v0[50] = v15;
    *v15 = v0;
    v15[1] = MLSDaemon.credentialSigningRequest(for:with:);
    v16 = v0[7];

    return MEMORY[0x2821ACAA8](v16, v12, v14, v10, v11);
  }

  if (v8 == *MEMORY[0x277D4CFC8])
  {
    v45 = v0[39];
    v46 = v0[35];
    v47 = v0[33];
    v48 = v0[30];
    (v0[36])(v0[24], v0[8], v0[21]);
    v45(v47, v46, v48);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    v51 = os_log_type_enabled(v49, v50);
    v52 = v0[41];
    v84 = v0[42];
    v53 = v0[33];
    v54 = v0[30];
    v55 = v0[24];
    v56 = v0[21];
    if (v51)
    {
      logb = v49;
      v57 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v85[0] = v81;
      *v57 = 136315394;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258], MEMORY[0x277D4D270]);
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v50;
      v60 = v59;
      v52(v55, v56);
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, v85);

      *(v57 + 4) = v61;
      *(v57 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      v84(v53, v54);
      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, v85);

      *(v57 + 14) = v65;
      _os_log_impl(&dword_26524C000, logb, v76, "MLSDaemon credentialSigningRequest called on invalid swiftMLSClient { uri: %s, uniqueClientIdentifier: %s }", v57, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v81, -1, -1);
      MEMORY[0x2667577B0](v57, -1, -1);
    }

    else
    {

      v84(v53, v54);
      v52(v55, v56);
    }

    v82 = v0[42];
    v67 = v0[35];
    v68 = v0[30];
    v69 = v0[19];
    v70 = v0[20];
    v71 = v0[17];
    v72 = v0[18];
    (*(v0[15] + 104))(v0[16], *MEMORY[0x277D4C9D0], v0[14]);
    type metadata accessor for KDSRegistration.GetIdentityError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError, MEMORY[0x277D4C9F0], MEMORY[0x277D4C9F8]);
    swift_allocError();
    KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    v73 = *(v72 + 8);
    v73(v70, v71);
    v82(v67, v68);
    v73(v69, v71);
LABEL_11:

    v44 = v0[1];

    return v44();
  }

  v66 = v0[17];

  return MEMORY[0x2821FDEB8](v66, v66);
}

{
  *(*v1 + 408) = v0;

  if (v0)
  {
    v2 = MLSDaemon.credentialSigningRequest(for:with:);
  }

  else
  {
    v2 = MLSDaemon.credentialSigningRequest(for:with:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[42];
  v2 = v0[35];
  v3 = v0[30];
  (*(v0[18] + 8))(v0[20], v0[17]);
  v1(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t MLSDaemon.loadCredential(credential:uri:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  Identity = type metadata accessor for KDSRegistration.GetIdentityError.ErrorType();
  v4[14] = Identity;
  v4[15] = *(Identity - 8);
  v4[16] = swift_task_alloc();
  v7 = type metadata accessor for MLS.SwiftMLSClientPicker();
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v8 = type metadata accessor for URI();
  v4[21] = v8;
  v4[22] = *(v8 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v9 = type metadata accessor for MLS.ClientIdentifier();
  v4[27] = v9;
  v4[28] = *(v9 - 8);
  v4[29] = swift_task_alloc();
  v10 = type metadata accessor for MLS.UniqueClientIdentifier();
  v4[30] = v10;
  v4[31] = *(v10 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLSDaemon.loadCredential(credential:uri:with:), 0, 0);
}

uint64_t MLSDaemon.loadCredential(credential:uri:with:)()
{
  v41 = v0;
  v1 = v0[35];
  v2 = v0[31];
  v36 = v0[30];
  v38 = v0[34];
  v3 = v0[26];
  v4 = v0[25];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[8];
  (*(v0[28] + 16))(v0[29], v0[9], v0[27]);
  v8 = *(v5 + 16);
  v0[36] = v8;
  v0[37] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v7, v6);
  MLS.UniqueClientIdentifier.init(clientIdentifier:clientURI:)();
  v0[38] = OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_logger;
  v8(v4, v7, v6);
  v9 = *(v2 + 16);
  v0[39] = v9;
  v0[40] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v38, v1, v36);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[34];
  v15 = v0[30];
  v14 = v0[31];
  v16 = v0[25];
  v18 = v0[21];
  v17 = v0[22];
  if (v12)
  {
    v37 = v11;
    v19 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = v39;
    *v19 = 136315394;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258], MEMORY[0x277D4D270]);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v15;
    log = v10;
    v21 = v13;
    v23 = v22;
    v24 = *(v17 + 8);
    v24(v16, v18);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v23, &v40);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2080;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v29 = *(v14 + 8);
    v29(v21, v34);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v40);

    *(v19 + 14) = v30;
    _os_log_impl(&dword_26524C000, log, v37, "MLSDaemon loadCredential called { uri: %s, clientIdentifier: %s }", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v39, -1, -1);
    MEMORY[0x2667577B0](v19, -1, -1);
  }

  else
  {

    v29 = *(v14 + 8);
    v29(v13, v15);
    v24 = *(v17 + 8);
    v24(v16, v18);
  }

  v0[41] = v24;
  v0[42] = v29;
  v31 = swift_task_alloc();
  v0[43] = v31;
  *v31 = v0;
  v31[1] = MLSDaemon.loadCredential(credential:uri:with:);
  v32 = v0[35];

  return MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:)(v32);
}

{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = MLSDaemon.loadCredential(credential:uri:with:);
  }

  else
  {
    v2 = MLSDaemon.loadCredential(credential:uri:with:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[10];
  v2 = (*MEMORY[0x277D85000] & *v1) + 136;
  v0[45] = *((*MEMORY[0x277D85000] & *v1) + 0x88);
  v0[46] = v2 & 0xFFFFFFFFFFFFLL | 0x2693000000000000;
  type metadata accessor for MLSActor();
  v0[47] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](MLSDaemon.loadCredential(credential:uri:with:), v4, v3);
}

{
  v1 = *(v0 + 360);

  *(v0 + 384) = v1(v2);

  return MEMORY[0x2822009F8](MLSDaemon.loadCredential(credential:uri:with:), 0, 0);
}

{
  v86 = v0;
  if (!*(*(v0 + 384) + 16) || (v1 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 280)), (v2 & 1) == 0))
  {
    log = *(v0 + 312);
    v16 = *(v0 + 280);
    v17 = *(v0 + 288);
    v18 = *(v0 + 256);
    v19 = *(v0 + 240);
    v20 = *(v0 + 184);
    v21 = *(v0 + 168);
    v22 = *(v0 + 64);

    v17(v20, v22, v21);
    (log)(v18, v16, v19);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 328);
    v83 = *(v0 + 336);
    v27 = *(v0 + 256);
    v28 = *(v0 + 240);
    v29 = *(v0 + 184);
    v30 = *(v0 + 168);
    if (v25)
    {
      loga = v23;
      v31 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v85 = v79;
      *v31 = 136315394;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258], MEMORY[0x277D4D270]);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v74 = v24;
      v34 = v33;
      v26(v29, v30);
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v85);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      v83(v27, v28);
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v85);

      *(v31 + 14) = v39;
      _os_log_impl(&dword_26524C000, loga, v74, "MLSDaemon loadCredential has no clientXPCProxy { uri: %s, uniqueClientIdentifier: %s }", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v79, -1, -1);
      MEMORY[0x2667577B0](v31, -1, -1);
    }

    else
    {

      v83(v27, v28);
      v26(v29, v30);
    }

    v40 = *(v0 + 336);
    v41 = *(v0 + 280);
    v42 = *(v0 + 240);
    (*(*(v0 + 96) + 104))(*(v0 + 104), *MEMORY[0x277D4D2B0], *(v0 + 88));
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0], MEMORY[0x277D4D2C8]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    v40(v41, v42);
    goto LABEL_11;
  }

  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 136);
  v6 = *(v0 + 144);
  v7 = *(v6 + 16);
  v7(v3, *(*(v0 + 384) + 56) + *(v6 + 72) * v1, v5);

  v7(v4, v3, v5);
  v8 = (*(v6 + 88))(v4, v5);
  if (v8 == *MEMORY[0x277D4CFC0])
  {
    v9 = *(v0 + 152);
    v82 = *(v0 + 56);
    (*(*(v0 + 144) + 96))(v9, *(v0 + 136));
    outlined init with take of MLS.SwiftMLSPersisterProtocol(v9, v0 + 16);
    _StringGuts.grow(_:)(17);

    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v10);

    *(v0 + 392) = 0xEF2D6C6169746E65;
    v11 = swift_task_alloc();
    *(v0 + 400) = v11;
    *(v11 + 16) = v0 + 16;
    *(v11 + 24) = v82;
    v12 = swift_task_alloc();
    *(v0 + 408) = v12;
    v13 = type metadata accessor for DaemonPersister(0);
    v14 = _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type DaemonPersister and conformance DaemonPersister, type metadata accessor for DaemonPersister, &protocol conformance descriptor for DaemonPersister);
    *v12 = v0;
    v12[1] = MLSDaemon.loadCredential(credential:uri:with:);
    v15 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2821ACB80](v14, 0x6465724364616F6CLL, 0xEF2D6C6169746E65, &async function pointer to partial apply for closure #1 in MLSDaemon.loadCredential(credential:uri:with:), v11, v13, v15, v14);
  }

  if (v8 == *MEMORY[0x277D4CFC8])
  {
    v44 = *(v0 + 312);
    v45 = *(v0 + 280);
    v46 = *(v0 + 264);
    v47 = *(v0 + 240);
    (*(v0 + 288))(*(v0 + 192), *(v0 + 64), *(v0 + 168));
    v44(v46, v45, v47);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    v50 = os_log_type_enabled(v48, v49);
    v51 = *(v0 + 328);
    v84 = *(v0 + 336);
    v52 = *(v0 + 264);
    v53 = *(v0 + 240);
    v54 = *(v0 + 192);
    v55 = *(v0 + 168);
    if (v50)
    {
      logb = v48;
      v56 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v85 = v80;
      *v56 = 136315394;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258], MEMORY[0x277D4D270]);
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v75 = v49;
      v59 = v58;
      v51(v54, v55);
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, &v85);

      *(v56 + 4) = v60;
      *(v56 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      v84(v52, v53);
      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, &v85);

      *(v56 + 14) = v64;
      _os_log_impl(&dword_26524C000, logb, v75, "MLSDaemon loadCredential called on invalid swiftMLSClient { uri: %s, uniqueClientIdentifier: %s }", v56, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v80, -1, -1);
      MEMORY[0x2667577B0](v56, -1, -1);
    }

    else
    {

      v84(v52, v53);
      v51(v54, v55);
    }

    v81 = *(v0 + 336);
    v66 = *(v0 + 280);
    v67 = *(v0 + 240);
    v68 = *(v0 + 152);
    v69 = *(v0 + 160);
    v70 = *(v0 + 136);
    v71 = *(v0 + 144);
    (*(*(v0 + 120) + 104))(*(v0 + 128), *MEMORY[0x277D4C9D0], *(v0 + 112));
    type metadata accessor for KDSRegistration.GetIdentityError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError, MEMORY[0x277D4C9F0], MEMORY[0x277D4C9F8]);
    swift_allocError();
    KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    v72 = *(v71 + 8);
    v72(v69, v70);
    v81(v66, v67);
    v72(v68, v70);
LABEL_11:

    v43 = *(v0 + 8);

    return v43();
  }

  v65 = *(v0 + 136);

  return MEMORY[0x2821FDEB8](v65, v65);
}

{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = MLSDaemon.loadCredential(credential:uri:with:);
  }

  else
  {
    v2 = MLSDaemon.loadCredential(credential:uri:with:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[42];
  v2 = v0[35];
  v3 = v0[30];
  (*(v0[18] + 8))(v0[20], v0[17]);
  v1(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v4 = v0[1];

  return v4();
}

{
  (*(v0 + 336))(*(v0 + 280), *(v0 + 240));

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[42];
  v2 = v0[35];
  v3 = v0[30];
  (*(v0[18] + 8))(v0[20], v0[17]);
  v1(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t MLSDaemon.updateClientID(swiftMLSClientID:for:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  Client = type metadata accessor for KDSRegistration.GetClientIDError.ErrorType();
  v5[10] = Client;
  v5[11] = *(Client - 8);
  v5[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5[13] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();
  v9 = type metadata accessor for MLS.SwiftMLSClientPicker();
  v5[17] = v9;
  v5[18] = *(v9 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  type metadata accessor for RegClientIdentifier(0);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v10 = type metadata accessor for URI();
  v5[24] = v10;
  v5[25] = *(v10 - 8);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v11 = type metadata accessor for MLS.ClientIdentifier();
  v5[29] = v11;
  v5[30] = *(v11 - 8);
  v5[31] = swift_task_alloc();
  v12 = type metadata accessor for MLS.UniqueClientIdentifier();
  v5[32] = v12;
  v5[33] = *(v12 - 8);
  v5[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLSDaemon.updateClientID(swiftMLSClientID:for:with:), 0, 0);
}

uint64_t MLSDaemon.updateClientID(swiftMLSClientID:for:with:)()
{
  v38 = v0;
  v1 = v0[28];
  v2 = v0[24];
  v3 = v0[25];
  v32 = v0[27];
  v34 = v0[23];
  v4 = v0[5];
  v5 = v0[4];
  (*(v0[30] + 16))(v0[31], v4, v0[29]);
  v6 = *(v3 + 16);
  v0[35] = v6;
  v0[36] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v2);
  MLS.UniqueClientIdentifier.init(clientIdentifier:clientURI:)();
  v0[37] = OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_logger;
  v6(v32, v5, v2);
  outlined init with copy of RegClientIdentifier(v4, v34);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v36 = v8;
    v9 = v0[27];
    v11 = v0[24];
    v10 = v0[25];
    v12 = v0[22];
    v33 = v0[23];
    v13 = v0[2];
    v14 = v0[3];
    v15 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v37 = v35;
    *v15 = 136315650;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v37);
    *(v15 + 12) = 2080;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258], MEMORY[0x277D4D270]);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v19 = *(v10 + 8);
    v19(v9, v11);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v37);

    *(v15 + 14) = v20;
    *(v15 + 22) = 2080;
    outlined init with copy of RegClientIdentifier(v33, v12);
    v21 = MLS.ClientIdentifier.description.getter();
    v23 = v22;
    outlined destroy of RegClientIdentifier(v12);
    outlined destroy of RegClientIdentifier(v33);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v37);

    *(v15 + 24) = v24;
    _os_log_impl(&dword_26524C000, v7, v36, "MLSDaemon updateClientID called { swiftMLSClientID: %s, uri: %s, clientIdentifier: %s }", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v35, -1, -1);
    MEMORY[0x2667577B0](v15, -1, -1);
  }

  else
  {
    v25 = v0[27];
    v26 = v0[24];
    v27 = v0[25];
    v28 = v0[23];

    outlined destroy of RegClientIdentifier(v28);
    v19 = *(v27 + 8);
    v19(v25, v26);
  }

  v0[38] = v19;
  v29 = swift_task_alloc();
  v0[39] = v29;
  *v29 = v0;
  v29[1] = MLSDaemon.updateClientID(swiftMLSClientID:for:with:);
  v30 = v0[34];

  return MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:)(v30);
}

{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = MLSDaemon.updateClientID(swiftMLSClientID:for:with:);
  }

  else
  {
    v2 = MLSDaemon.updateClientID(swiftMLSClientID:for:with:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[6];
  v2 = (*MEMORY[0x277D85000] & *v1) + 136;
  v0[41] = *((*MEMORY[0x277D85000] & *v1) + 0x88);
  v0[42] = v2 & 0xFFFFFFFFFFFFLL | 0x2693000000000000;
  type metadata accessor for MLSActor();
  v0[43] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](MLSDaemon.updateClientID(swiftMLSClientID:for:with:), v4, v3);
}

{
  v1 = *(v0 + 328);

  *(v0 + 352) = v1(v2);

  return MEMORY[0x2822009F8](MLSDaemon.updateClientID(swiftMLSClientID:for:with:), 0, 0);
}

{
  v57 = v0;
  if (!*(v0[44] + 16) || (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[34]), (v2 & 1) == 0))
  {
    v15 = v0[35];
    v16 = v0[26];
    v17 = v0[24];
    v18 = v0[21];
    v19 = v0[5];
    v20 = v0[4];

    v15(v16, v20, v17);
    outlined init with copy of RegClientIdentifier(v19, v18);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[38];
    v25 = v0[26];
    v26 = v0[24];
    if (v23)
    {
      v27 = v0[22];
      v52 = v0[21];
      v28 = v0[2];
      v29 = v0[3];
      log = v21;
      v30 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v56 = v55;
      *v30 = 136315650;
      *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v56);
      *(v30 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258], MEMORY[0x277D4D270]);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      v24(v25, v26);
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v56);

      *(v30 + 14) = v34;
      *(v30 + 22) = 2080;
      outlined init with copy of RegClientIdentifier(v52, v27);
      v35 = MLS.ClientIdentifier.description.getter();
      v37 = v36;
      outlined destroy of RegClientIdentifier(v27);
      outlined destroy of RegClientIdentifier(v52);
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v56);

      *(v30 + 24) = v38;
      _os_log_impl(&dword_26524C000, log, v22, "MLSDaemon updateClientID has no clientXPCProxy { swiftMLSClientID: %s, uri: %s, clientIdentifier: %s }", v30, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v55, -1, -1);
      MEMORY[0x2667577B0](v30, -1, -1);
    }

    else
    {
      v39 = v0[21];

      outlined destroy of RegClientIdentifier(v39);
      v24(v25, v26);
    }

    (*(v0[8] + 104))(v0[9], *MEMORY[0x277D4D2B0], v0[7]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0], MEMORY[0x277D4D2C8]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    goto LABEL_9;
  }

  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[15];
  v54 = v0[14];
  v8 = v0[13];
  (*(v6 + 16))(v4, *(v0[44] + 56) + *(v6 + 72) * v1, v5);

  (*(v6 + 32))(v3, v4, v5);
  UUID.init(uuidString:)();
  if ((*(v7 + 48))(v8, 1, v54) == 1)
  {
    v9 = v0[20];
    v10 = v0[17];
    v11 = v0[18];
    v12 = v0[12];
    v13 = v0[10];
    v14 = v0[11];
    outlined destroy of MLS.KeyPackageProvider?(v0[13], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v14 + 104))(v12, *MEMORY[0x277D4C9A8], v13);
    type metadata accessor for KDSRegistration.GetClientIDError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError, MEMORY[0x277D4C9B0], MEMORY[0x277D4C9B8]);
    swift_allocError();
    KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    (*(v11 + 8))(v9, v10);
LABEL_9:
    (*(v0[33] + 8))(v0[34], v0[32]);

    v40 = v0[1];

    return v40();
  }

  v42 = v0[34];
  v43 = v0[20];
  v44 = v0[16];
  v45 = v0[6];
  (*(v0[15] + 32))(v44, v0[13], v0[14]);
  _StringGuts.grow(_:)(17);

  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
  v46 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v46);

  v0[45] = 0xEF2D4449746E6569;
  v47 = swift_task_alloc();
  v0[46] = v47;
  v47[2] = v43;
  v47[3] = v44;
  v47[4] = v45;
  v47[5] = v42;
  v48 = swift_task_alloc();
  v0[47] = v48;
  v49 = type metadata accessor for DaemonPersister(0);
  v50 = _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type DaemonPersister and conformance DaemonPersister, type metadata accessor for DaemonPersister, &protocol conformance descriptor for DaemonPersister);
  *v48 = v0;
  v48[1] = MLSDaemon.updateClientID(swiftMLSClientID:for:with:);
  v51 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2821ACB80](v50, 0x6C43657461647075, 0xEF2D4449746E6569, &async function pointer to partial apply for closure #1 in MLSDaemon.updateClientID(swiftMLSClientID:for:with:), v47, v49, v51, v50);
}

{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = MLSDaemon.updateClientID(swiftMLSClientID:for:with:);
  }

  else
  {

    v2 = MLSDaemon.updateClientID(swiftMLSClientID:for:with:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[32];
  v4 = v0[20];
  v5 = v0[18];
  v6 = v0[17];
  (*(v0[15] + 8))(v0[16], v0[14]);
  (*(v5 + 8))(v4, v6);
  (*(v1 + 8))(v2, v3);

  v7 = v0[1];

  return v7();
}

{
  (*(v0[33] + 8))(v0[34], v0[32]);

  v1 = v0[1];

  return v1();
}

{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  (*(v0[33] + 8))(v0[34], v0[32]);

  v7 = v0[1];

  return v7();
}

uint64_t MLSDaemon.getCredential(uri:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  Credential = type metadata accessor for KDSRegistration.GetCredentialError.ErrorType();
  v4[14] = Credential;
  v4[15] = *(Credential - 8);
  v4[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O8IdentityO10CredentialOSgMd, &_s8SwiftMLS0B0O8IdentityO10CredentialOSgMR);
  v4[17] = swift_task_alloc();
  v7 = type metadata accessor for MLS.SwiftMLSClientPicker();
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v8 = type metadata accessor for URI();
  v4[22] = v8;
  v4[23] = *(v8 - 8);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v9 = type metadata accessor for MLS.ClientIdentifier();
  v4[28] = v9;
  v4[29] = *(v9 - 8);
  v4[30] = swift_task_alloc();
  v10 = type metadata accessor for MLS.UniqueClientIdentifier();
  v4[31] = v10;
  v4[32] = *(v10 - 8);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLSDaemon.getCredential(uri:with:), 0, 0);
}

uint64_t MLSDaemon.getCredential(uri:with:)()
{
  v41 = v0;
  v1 = v0[36];
  v2 = v0[32];
  v36 = v0[31];
  v38 = v0[35];
  v3 = v0[27];
  v4 = v0[26];
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[8];
  (*(v0[29] + 16))(v0[30], v0[9], v0[28]);
  v8 = *(v5 + 16);
  v0[37] = v8;
  v0[38] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v7, v6);
  MLS.UniqueClientIdentifier.init(clientIdentifier:clientURI:)();
  v0[39] = OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_logger;
  v8(v4, v7, v6);
  v9 = *(v2 + 16);
  v0[40] = v9;
  v0[41] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v38, v1, v36);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[35];
  v15 = v0[31];
  v14 = v0[32];
  v16 = v0[26];
  v18 = v0[22];
  v17 = v0[23];
  if (v12)
  {
    v37 = v11;
    v19 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = v39;
    *v19 = 136315394;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258], MEMORY[0x277D4D270]);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v15;
    log = v10;
    v21 = v13;
    v23 = v22;
    v24 = *(v17 + 8);
    v24(v16, v18);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v23, &v40);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2080;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v29 = *(v14 + 8);
    v29(v21, v34);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v40);

    *(v19 + 14) = v30;
    _os_log_impl(&dword_26524C000, log, v37, "MLSDaemon getCredential called { uri: %s, clientIdentifier: %s }", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v39, -1, -1);
    MEMORY[0x2667577B0](v19, -1, -1);
  }

  else
  {

    v29 = *(v14 + 8);
    v29(v13, v15);
    v24 = *(v17 + 8);
    v24(v16, v18);
  }

  v0[42] = v24;
  v0[43] = v29;
  v31 = swift_task_alloc();
  v0[44] = v31;
  *v31 = v0;
  v31[1] = MLSDaemon.getCredential(uri:with:);
  v32 = v0[36];

  return MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:)(v32);
}

{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = MLSDaemon.getCredential(uri:with:);
  }

  else
  {
    v2 = MLSDaemon.getCredential(uri:with:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[10];
  v2 = (*MEMORY[0x277D85000] & *v1) + 136;
  v0[46] = *((*MEMORY[0x277D85000] & *v1) + 0x88);
  v0[47] = v2 & 0xFFFFFFFFFFFFLL | 0x2693000000000000;
  type metadata accessor for MLSActor();
  v0[48] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](MLSDaemon.getCredential(uri:with:), v4, v3);
}

{
  v1 = *(v0 + 368);

  *(v0 + 392) = v1(v2);

  return MEMORY[0x2822009F8](MLSDaemon.getCredential(uri:with:), 0, 0);
}

{
  v95 = v0;
  if (!*(v0[49] + 16) || (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[36]), (v2 & 1) == 0))
  {
    log = v0[40];
    v22 = v0[36];
    v23 = v0[37];
    v24 = v0[33];
    v25 = v0[31];
    v26 = v0[24];
    v27 = v0[22];
    v28 = v0[8];

    v23(v26, v28, v27);
    (log)(v24, v22, v25);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v0[42];
    v92 = v0[43];
    v33 = v0[33];
    v34 = v0[31];
    v35 = v0[24];
    v36 = v0[22];
    if (v31)
    {
      loga = v29;
      v37 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v94[0] = v89;
      *v37 = 136315394;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258], MEMORY[0x277D4D270]);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v83 = v30;
      v40 = v39;
      v32(v35, v36);
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, v94);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      v92(v33, v34);
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, v94);

      *(v37 + 14) = v45;
      _os_log_impl(&dword_26524C000, loga, v83, "MLSDaemon getCredential has no clientXPCProxy { uri: %s, uniqueClientIdentifier: %s }", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v89, -1, -1);
      MEMORY[0x2667577B0](v37, -1, -1);
    }

    else
    {

      v92(v33, v34);
      v32(v35, v36);
    }

    v46 = v0[43];
    v47 = v0[36];
    v48 = v0[31];
    (*(v0[12] + 104))(v0[13], *MEMORY[0x277D4D2B0], v0[11]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0], MEMORY[0x277D4D2C8]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    v46(v47, v48);
    goto LABEL_10;
  }

  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[18];
  v6 = v0[19];
  v7 = *(v6 + 16);
  v7(v3, *(v0[49] + 56) + *(v6 + 72) * v1, v5);

  v7(v4, v3, v5);
  v8 = (*(v6 + 88))(v4, v5);
  if (v8 == *MEMORY[0x277D4CFC0])
  {
    v9 = v0[20];
    v10 = v0[17];
    (*(v0[19] + 96))(v9, v0[18]);
    outlined init with take of MLS.SwiftMLSPersisterProtocol(v9, (v0 + 2));
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    dispatch thunk of MLS.SwiftMLSClientProtocol.credential.getter();
    v11 = type metadata accessor for MLS.Identity.Credential();
    v12 = *(v11 - 8);
    v13 = (*(v12 + 48))(v10, 1, v11);
    v88 = v0[43];
    v14 = v0[36];
    if (v13 != 1)
    {
      v72 = v0[31];
      v73 = v0[17];
      v74 = v0[7];
      (*(v0[19] + 8))(v0[21], v0[18]);
      v88(v14, v72);
      (*(v12 + 32))(v74, v73, v11);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

      v49 = v0[1];
      goto LABEL_11;
    }

    v15 = v0[31];
    v16 = v0[21];
    v17 = v0[18];
    v18 = v0[19];
    v19 = v0[16];
    v20 = v0[14];
    v21 = v0[15];
    outlined destroy of MLS.KeyPackageProvider?(v0[17], &_s8SwiftMLS0B0O8IdentityO10CredentialOSgMd, &_s8SwiftMLS0B0O8IdentityO10CredentialOSgMR);
    (*(v21 + 104))(v19, *MEMORY[0x277D4CA50], v20);
    type metadata accessor for KDSRegistration.GetCredentialError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError, MEMORY[0x277D4CA60], MEMORY[0x277D4CA68]);
    swift_allocError();
    KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    (*(v18 + 8))(v16, v17);
    v88(v14, v15);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
LABEL_10:

    v49 = v0[1];
LABEL_11:

    return v49();
  }

  if (v8 == *MEMORY[0x277D4CFC8])
  {
    v51 = v0[40];
    v52 = v0[36];
    v53 = v0[34];
    v54 = v0[31];
    (v0[37])(v0[25], v0[8], v0[22]);
    v51(v53, v52, v54);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    v57 = os_log_type_enabled(v55, v56);
    v58 = v0[42];
    v93 = v0[43];
    v59 = v0[34];
    v60 = v0[31];
    v61 = v0[25];
    v62 = v0[22];
    if (v57)
    {
      logb = v55;
      v63 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v94[0] = v90;
      *v63 = 136315394;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258], MEMORY[0x277D4D270]);
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v84 = v56;
      v66 = v65;
      v58(v61, v62);
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, v94);

      *(v63 + 4) = v67;
      *(v63 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v68 = dispatch thunk of CustomStringConvertible.description.getter();
      v70 = v69;
      v93(v59, v60);
      v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, v94);

      *(v63 + 14) = v71;
      _os_log_impl(&dword_26524C000, logb, v84, "MLSDaemon getCredential called on invalid swiftMLSClient { uri: %s, uniqueClientIdentifier: %s }", v63, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v90, -1, -1);
      MEMORY[0x2667577B0](v63, -1, -1);
    }

    else
    {

      v93(v59, v60);
      v58(v61, v62);
    }

    v91 = v0[43];
    v76 = v0[36];
    v77 = v0[31];
    v78 = v0[20];
    v79 = v0[21];
    v80 = v0[18];
    v81 = v0[19];
    (*(v0[15] + 104))(v0[16], *MEMORY[0x277D4CA58], v0[14]);
    type metadata accessor for KDSRegistration.GetCredentialError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError, MEMORY[0x277D4CA60], MEMORY[0x277D4CA68]);
    swift_allocError();
    KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    v82 = *(v81 + 8);
    v82(v79, v80);
    v91(v76, v77);
    v82(v78, v80);
    goto LABEL_10;
  }

  v75 = v0[18];

  return MEMORY[0x2821FDEB8](v75, v75);
}

{
  (*(v0 + 344))(*(v0 + 288), *(v0 + 248));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLSDaemon.signWithParticipantKey(nonce:for:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v7 = type metadata accessor for KDSRegistration.SignWithParticipantKeyError.ErrorType();
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();
  v8 = type metadata accessor for MLS.RCSClient.SignNonceOutput();
  v5[18] = v8;
  v5[19] = *(v8 - 8);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v9 = type metadata accessor for MLS.RCSClient.SignNonceInput();
  v5[22] = v9;
  v5[23] = *(v9 - 8);
  v5[24] = swift_task_alloc();
  v10 = type metadata accessor for MLS.SwiftMLSClientPicker();
  v5[25] = v10;
  v5[26] = *(v10 - 8);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v11 = type metadata accessor for URI();
  v5[29] = v11;
  v5[30] = *(v11 - 8);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v12 = type metadata accessor for MLS.ClientIdentifier();
  v5[35] = v12;
  v5[36] = *(v12 - 8);
  v5[37] = swift_task_alloc();
  v13 = type metadata accessor for MLS.UniqueClientIdentifier();
  v5[38] = v13;
  v5[39] = *(v13 - 8);
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLSDaemon.signWithParticipantKey(nonce:for:with:), 0, 0);
}

uint64_t MLSDaemon.signWithParticipantKey(nonce:for:with:)()
{
  v44 = v0;
  v1 = v0[43];
  v2 = v0[39];
  v38 = v0[38];
  log = v0[42];
  v3 = v0[34];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[9];
  v35 = v0[33];
  v36 = v0[8];
  v7 = v0[7];
  (*(v0[36] + 16))(v0[37], v0[10], v0[35]);
  v8 = *(v4 + 16);
  v0[44] = v8;
  v0[45] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v6, v5);
  MLS.UniqueClientIdentifier.init(clientIdentifier:clientURI:)();
  v0[46] = OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_logger;
  v8(v35, v6, v5);
  v9 = *(v2 + 16);
  v0[47] = v9;
  v0[48] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(log, v1, v38);
  outlined copy of Data._Representation(v7, v36);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(v7, v36);
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[42];
  v15 = v0[38];
  v14 = v0[39];
  v16 = v0[33];
  v18 = v0[29];
  v17 = v0[30];
  if (v12)
  {
    v39 = v0[42];
    loga = v10;
    v19 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = v42;
    *v19 = 136315650;
    v20 = Data.base64EncodedString(options:)(0);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20._countAndFlagsBits, v20._object, &v43);

    *(v19 + 4) = v21;
    *(v19 + 12) = 2080;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258], MEMORY[0x277D4D270]);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v37 = v11;
    v25 = *(v17 + 8);
    v25(v16, v18);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v43);

    *(v19 + 14) = v26;
    *(v19 + 22) = 2080;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    v30 = *(v14 + 8);
    v30(v39, v15);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v43);

    *(v19 + 24) = v31;
    _os_log_impl(&dword_26524C000, loga, v37, "MLSDaemon signWithParticipantKey called. { nonce: %s, uri: %s, clientIdentifier: %s}", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v42, -1, -1);
    MEMORY[0x2667577B0](v19, -1, -1);
  }

  else
  {

    v30 = *(v14 + 8);
    v30(v13, v15);
    v25 = *(v17 + 8);
    v25(v16, v18);
  }

  v0[49] = v25;
  v0[50] = v30;
  v32 = swift_task_alloc();
  v0[51] = v32;
  *v32 = v0;
  v32[1] = MLSDaemon.signWithParticipantKey(nonce:for:with:);
  v33 = v0[43];

  return MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:)(v33);
}

{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = MLSDaemon.signWithParticipantKey(nonce:for:with:);
  }

  else
  {
    v2 = MLSDaemon.signWithParticipantKey(nonce:for:with:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[11];
  v2 = (*MEMORY[0x277D85000] & *v1) + 136;
  v0[53] = *((*MEMORY[0x277D85000] & *v1) + 0x88);
  v0[54] = v2 & 0xFFFFFFFFFFFFLL | 0x2693000000000000;
  type metadata accessor for MLSActor();
  v0[55] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](MLSDaemon.signWithParticipantKey(nonce:for:with:), v4, v3);
}

{
  v1 = *(v0 + 424);

  *(v0 + 448) = v1(v2);

  return MEMORY[0x2822009F8](MLSDaemon.signWithParticipantKey(nonce:for:with:), 0, 0);
}

{
  v86 = v0;
  if (!*(v0[56] + 16) || (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[43]), (v2 & 1) == 0))
  {
    log = v0[47];
    v17 = v0[43];
    v18 = v0[44];
    v19 = v0[40];
    v20 = v0[38];
    v21 = v0[31];
    v22 = v0[29];
    v23 = v0[9];

    v18(v21, v23, v22);
    (log)(v19, v17, v20);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    v26 = os_log_type_enabled(v24, v25);
    v27 = v0[49];
    v83 = v0[50];
    v28 = v0[40];
    v29 = v0[38];
    v30 = v0[31];
    v31 = v0[29];
    if (v26)
    {
      loga = v24;
      v32 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v85[0] = v80;
      *v32 = 136315394;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258], MEMORY[0x277D4D270]);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v75 = v25;
      v35 = v34;
      v27(v30, v31);
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, v85);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      v83(v28, v29);
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, v85);

      *(v32 + 14) = v40;
      _os_log_impl(&dword_26524C000, loga, v75, "MLSDaemon signWithParticipantKey has no clientXPCProxy { uri: %s, uniqueClientIdentifier: %s }", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v80, -1, -1);
      MEMORY[0x2667577B0](v32, -1, -1);
    }

    else
    {

      v83(v28, v29);
      v27(v30, v31);
    }

    v41 = v0[50];
    v42 = v0[43];
    v43 = v0[38];
    (*(v0[13] + 104))(v0[14], *MEMORY[0x277D4D2B0], v0[12]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0], MEMORY[0x277D4D2C8]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    v41(v42, v43);
    goto LABEL_11;
  }

  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[25];
  v6 = v0[26];
  v7 = *(v6 + 16);
  v7(v3, *(v0[56] + 56) + *(v6 + 72) * v1, v5);

  v7(v4, v3, v5);
  v8 = (*(v6 + 88))(v4, v5);
  if (v8 == *MEMORY[0x277D4CFC0])
  {
    v9 = v0[27];
    v10 = v0[8];
    v11 = v0[7];
    (*(v0[26] + 96))(v9, v0[25]);
    outlined init with take of MLS.SwiftMLSPersisterProtocol(v9, (v0 + 2));
    outlined copy of Data._Representation(v11, v10);
    MEMORY[0x266756630]();
    MLS.RCSClient.SignNonceInput.init(nonce:telURI:)();
    v12 = v0[5];
    v13 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v12);
    v14 = swift_task_alloc();
    v0[57] = v14;
    *v14 = v0;
    v14[1] = MLSDaemon.signWithParticipantKey(nonce:for:with:);
    v15 = v0[24];
    v16 = v0[21];

    return MEMORY[0x2821ACAA0](v16, v15, v12, v13);
  }

  if (v8 == *MEMORY[0x277D4CFC8])
  {
    v45 = v0[47];
    v46 = v0[43];
    v47 = v0[41];
    v48 = v0[38];
    (v0[44])(v0[32], v0[9], v0[29]);
    v45(v47, v46, v48);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    v51 = os_log_type_enabled(v49, v50);
    v52 = v0[49];
    v84 = v0[50];
    v53 = v0[41];
    v54 = v0[38];
    v55 = v0[32];
    v56 = v0[29];
    if (v51)
    {
      logb = v49;
      v57 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v85[0] = v81;
      *v57 = 136315394;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258], MEMORY[0x277D4D270]);
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v50;
      v60 = v59;
      v52(v55, v56);
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, v85);

      *(v57 + 4) = v61;
      *(v57 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      v84(v53, v54);
      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, v85);

      *(v57 + 14) = v65;
      _os_log_impl(&dword_26524C000, logb, v76, "MLSDaemon signWithParticipantKey called on invalid swiftMLSClient { uri: %s, uniqueClientIdentifier: %s }", v57, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v81, -1, -1);
      MEMORY[0x2667577B0](v57, -1, -1);
    }

    else
    {

      v84(v53, v54);
      v52(v55, v56);
    }

    v82 = v0[50];
    v67 = v0[43];
    v68 = v0[38];
    v69 = v0[27];
    v70 = v0[28];
    v71 = v0[25];
    v72 = v0[26];
    (*(v0[16] + 104))(v0[17], *MEMORY[0x277D4CBB8], v0[15]);
    type metadata accessor for KDSRegistration.SignWithParticipantKeyError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError, MEMORY[0x277D4CBC8], MEMORY[0x277D4CBD0]);
    swift_allocError();
    KDSRegistration.IsRegisteredError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    v73 = *(v72 + 8);
    v73(v70, v71);
    v82(v67, v68);
    v73(v69, v71);
LABEL_11:

    v44 = v0[1];

    return v44();
  }

  v66 = v0[25];

  return MEMORY[0x2821FDEB8](v66, v66);
}

{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = MLSDaemon.signWithParticipantKey(nonce:for:with:);
  }

  else
  {
    v2 = MLSDaemon.signWithParticipantKey(nonce:for:with:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v32 = v0;
  (*(v0[19] + 16))(v0[20], v0[21], v0[18]);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31 = v28;
    *v7 = 136315138;
    v8 = MLS.RCSClient.SignNonceOutput.signature.getter();
    v10 = v9;
    v11 = Data.base64EncodedString(options:)(0);
    outlined consume of Data._Representation(v8, v10);
    v30 = *(v5 + 8);
    v30(v4, v6);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11._countAndFlagsBits, v11._object, &v31);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_26524C000, v1, v2, "MLSDaemon signWithParticipantKey got nonce signature. { signature: %s }", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x2667577B0](v28, -1, -1);
    MEMORY[0x2667577B0](v7, -1, -1);
  }

  else
  {

    v30 = *(v5 + 8);
    v30(v4, v6);
  }

  v13 = v0[43];
  v27 = v0[50];
  v26 = v0[38];
  v25 = v0[28];
  v14 = v0[25];
  v15 = v0[26];
  v17 = v0[23];
  v16 = v0[24];
  v19 = v0[21];
  v18 = v0[22];
  v20 = v0[18];
  v21 = MLS.RCSClient.SignNonceOutput.signature.getter();
  v29 = v22;
  v30(v19, v20);
  (*(v17 + 8))(v16, v18);
  (*(v15 + 8))(v25, v14);
  v27(v13, v26);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v23 = v0[1];

  return v23(v21, v29);
}

{
  (*(v0 + 400))(*(v0 + 344), *(v0 + 304));

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[50];
  v2 = v0[43];
  v3 = v0[38];
  v4 = v0[28];
  v5 = v0[25];
  v6 = v0[26];
  (*(v0[23] + 8))(v0[24], v0[22]);
  (*(v6 + 8))(v4, v5);
  v1(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v7 = v0[1];

  return v7();
}

uint64_t MLSDaemon.xpcLogger.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for Logger();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t MLSDaemon.swiftMLSClientByClientID.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

id MLSDaemon.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MLSDaemon.init()()
{
  v1 = v0;
  v2 = type metadata accessor for SMAFeatureFlagsStore();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LogCategory();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v7 + 104);
  v11(v10, *MEMORY[0x277D4C8F0], v6);
  secureMessagingLogger(category:)();
  v12 = *(v7 + 8);
  v12(v10, v6);
  v11(v10, *MEMORY[0x277D4C930], v6);
  secureMessagingLogger(category:)();
  v12(v10, v6);
  v13 = OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_persister;
  v30 = 0;
  v31 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  v14 = NSHomeDirectory();
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v30 = v15;
  v31 = v17;
  MEMORY[0x266756A70](0xD000000000000019, 0x80000002653491A0);
  v18 = v30;
  v19 = v31;
  default argument 0 of SMAFeatureFlagsStore.init(overrides:)();
  SMAFeatureFlagsStore.init(overrides:)();
  type metadata accessor for DaemonPersister(0);
  swift_allocObject();
  *&v1[v13] = DaemonPersister.init(fileDir:dbFileName:featureFlagStore:)(v18, v19, 0x65726F7453534C4DLL, 0xEB0000000062642ELL, v5);
  v20 = OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_clientXPCServer;
  type metadata accessor for ClientXPCServer();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D84F90];
  *(v21 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO22UniqueClientIdentifierV_0cD9AgentCore0G8XPCProxyVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *&v1[v20] = v21;
  v23 = OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_regClientServer;
  type metadata accessor for RegistrationClientServer();
  v24 = swift_allocObject();
  *(v24 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC24SecureMessagingAgentCore19RegClientIdentifierV_AC012RegistrationH5ProxyVTt0g5Tf4g_n(v22);
  *&v1[v23] = v24;
  v25 = OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_swiftMLSClientByClientID;
  *&v1[v25] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO22UniqueClientIdentifierV_AE20SwiftMLSClientPickerOTt0g5Tf4g_n(v22);
  v26 = OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_keyPackageProviderByClientID;
  *&v1[v26] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO22UniqueClientIdentifierV_AE18KeyPackageProviderVTt0g5Tf4g_n(v22);
  v27 = type metadata accessor for MLSDaemon(0);
  v29.receiver = v1;
  v29.super_class = v27;
  return objc_msgSendSuper2(&v29, sel_init);
}

uint64_t MLSDaemon.start()()
{
  v1[2] = v0;
  v2 = type metadata accessor for SMAFeatureFlagsKey();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLSDaemon.start(), 0, 0);
}

{
  v38 = v0;
  if (os_variant_has_internal_content())
  {
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_26524C000, v1, v2, "We're an internal install.", v3, 2u);
      MEMORY[0x2667577B0](v3, -1, -1);
    }
  }

  v4 = static SMAFeatureFlagsKey.allCases.getter();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v36[4];
    v37 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v7 = v37;
    v8 = *(v6 + 16);
    v6 += 16;
    v9 = v4 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v33 = *(v6 + 56);
    v34 = v8;
    v32 = (v6 - 8);
    do
    {
      v10 = v36[5];
      v11 = v36[3];
      v34(v10, v9, v11);
      v12 = SMAFeatureFlagsKey.feature.getter();
      v14 = v13;
      v16 = v15;
      v17 = SMAFeatureFlagsKey.isEnabled.getter();
      (*v32)(v10, v11);
      v37 = v7;
      v19 = *(v7 + 16);
      v18 = *(v7 + 24);
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
        v7 = v37;
      }

      *(v7 + 16) = v19 + 1;
      v20 = v7 + 24 * v19;
      *(v20 + 32) = v12;
      *(v20 + 40) = v14;
      *(v20 + 48) = v16;
      *(v20 + 49) = v17 & 1;
      v9 += v33;
      --v5;
    }

    while (v5);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v37 = v24;
    *v23 = 136315138;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12StaticStringV_SbtMd, &_ss12StaticStringV_SbtMR);
    v26 = MEMORY[0x266756AF0](v7, v25);
    v28 = v27;

    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v37);

    *(v23 + 4) = v29;
    _os_log_impl(&dword_26524C000, v21, v22, "MLSDaemon start { enabledFeatureFlags: %s }", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x2667577B0](v24, -1, -1);
    MEMORY[0x2667577B0](v23, -1, -1);
  }

  else
  {
  }

  v35 = (*(**(v36[2] + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_persister) + 280) + **(**(v36[2] + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_persister) + 280));
  v30 = swift_task_alloc();
  v36[6] = v30;
  *v30 = v36;
  v30[1] = MLSDaemon.start();

  return v35();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

Swift::Void __swiftcall MLSDaemon.setupXPCNotificationPoster()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v10 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MLSActor();
  v6 = v0;
  v7 = static MLSActor.shared.getter();
  v8 = _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v6;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in MLSDaemon.setupXPCNotificationPoster(), v9);
}

uint64_t closure #1 in MLSDaemon.setupXPCNotificationPoster()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for URI();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = type metadata accessor for MLS.ClientIdentifier();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  v7 = type metadata accessor for MLS.UniqueClientIdentifier();
  v4[9] = v7;
  v4[10] = *(v7 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v4[13] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[14] = v9;
  v4[15] = v8;

  return MEMORY[0x2822009F8](closure #1 in MLSDaemon.setupXPCNotificationPoster(), v9, v8);
}

uint64_t closure #1 in MLSDaemon.setupXPCNotificationPoster()()
{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_26524C000, v1, v2, "MLSDaemon loading persisted client identifiers", v3, 2u);
    MEMORY[0x2667577B0](v3, -1, -1);
  }

  v4 = *(v0 + 16);

  v7 = (*(**(v4 + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_persister) + 464) + **(**(v4 + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_persister) + 464));
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  *v5 = v0;
  v5[1] = closure #1 in MLSDaemon.setupXPCNotificationPoster();

  return v7();
}

{
  v41 = v0;
  v1 = v0[17];

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[10];
    v4 = *(v3 + 16);
    v3 += 16;
    v36 = v4;
    v5 = v0[17] + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v35 = *(v3 + 56);
    v33 = (v0[7] + 8);
    v32 = (v0[4] + 8);
    v34 = (v3 - 8);
    do
    {
      v39 = v2;
      v23 = v0[11];
      v22 = v0[12];
      v24 = v0[9];
      v36(v22, v5, v24);
      v36(v23, v22, v24);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      v27 = os_log_type_enabled(v25, v26);
      v28 = v0[11];
      v29 = v0[9];
      if (v27)
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v40[0] = v7;
        *v6 = 136315138;
        _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
        v8 = dispatch thunk of CustomStringConvertible.description.getter();
        v10 = v9;
        v38 = *v34;
        (*v34)(v28, v29);
        v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, v40);

        *(v6 + 4) = v11;
        _os_log_impl(&dword_26524C000, v25, v26, "MLSDaemon pinging client to reconnect { uniqueClientIdentifier: %s }", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v7);
        MEMORY[0x2667577B0](v7, -1, -1);
        MEMORY[0x2667577B0](v6, -1, -1);
      }

      else
      {

        v38 = *v34;
        (*v34)(v28, v29);
      }

      v12 = v0[12];
      v13 = v0[8];
      v37 = v0[9];
      v15 = v0[5];
      v14 = v0[6];
      v16 = v0[3];
      v40[0] = static XPCUtils.XPCNotifyPoster.DeliveryPostIdentifierPrefix.getter();
      v40[1] = v17;
      MEMORY[0x266756A70](45, 0xE100000000000000);
      MLS.UniqueClientIdentifier.clientIdentifier.getter();
      v18 = MLS.ClientIdentifier.rawValue.getter();
      v20 = v19;
      (*v33)(v13, v14);
      MEMORY[0x266756A70](v18, v20);

      MEMORY[0x266756A70](45, 0xE100000000000000);
      MLS.UniqueClientIdentifier.clientURI.getter();
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258], MEMORY[0x277D4D270]);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266756A70](v21);

      (*v32)(v15, v16);
      static XPCUtils.XPCNotifyPoster.post(postIdentifier:)();

      v38(v12, v37);
      v5 += v35;
      v2 = v39 - 1;
    }

    while (v39 != 1);
  }

  v30 = v0[1];

  return v30();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in MLSDaemon.setupXPCNotificationPoster()(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 136) = a1;
  *(v4 + 144) = v1;

  v5 = *(v3 + 120);
  v6 = *(v3 + 112);
  if (v1)
  {
    v7 = closure #1 in MLSDaemon.setupXPCNotificationPoster();
  }

  else
  {
    v7 = closure #1 in MLSDaemon.setupXPCNotificationPoster();
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v29 - v10;
  outlined init with copy of (MLS.UniqueClientIdentifier, MLS.KeyPackageProvider)(a3, v29 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of MLS.KeyPackageProvider?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease(v15, v17, v19, v20, v21, v22, v23, v24);
    if (a2)
    {
LABEL_6:
      v25 = String.utf8CString.getter() + 32;

      if (v18 | v16)
      {
        v30[0] = 0;
        v30[1] = 0;
        v26 = v30;
        v30[2] = v16;
        v30[3] = v18;
      }

      else
      {
        v26 = 0;
      }

      v29[1] = 7;
      v29[2] = v26;
      v29[3] = v25;
      v27 = swift_task_create();

      outlined destroy of MLS.KeyPackageProvider?(a3, &_sScPSgMd, &_sScPSgMR);

      return v27;
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

  outlined destroy of MLS.KeyPackageProvider?(a3, &_sScPSgMd, &_sScPSgMR);
  if (v18 | v16)
  {
    v30[4] = 0;
    v30[5] = 0;
    v30[6] = v16;
    v30[7] = v18;
  }

  return swift_task_create();
}

id MLSDaemon.__deallocating_deinit()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_logger, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26524C000, v7, v8, "MLSDaemon deinit", v9, 2u);
    MEMORY[0x2667577B0](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v10 = type metadata accessor for MLSDaemon(0);
  v12.receiver = v1;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, sel_dealloc);
}

uint64_t MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for MLS.UniqueClientIdentifier();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO20SwiftMLSClientPickerOSgMd, &_s15SecureMessaging3MLSO20SwiftMLSClientPickerOSgMR);
  v2[7] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v2[8] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[9] = v5;
  v2[10] = v4;

  return MEMORY[0x2822009F8](MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:), v5, v4);
}

uint64_t MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:)()
{
  v38 = v0;
  v1 = (*((*MEMORY[0x277D85000] & **(v0 + 24)) + 0x88))();
  if (*(v1 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 16)), (v3 & 1) != 0))
  {
    v4 = v2;
    v5 = *(v0 + 56);
    v6 = *(v0 + 40);
    v7 = *(v0 + 32);
    v36 = *(v0 + 48);
    v8 = *(v0 + 16);

    v9 = *(v1 + 56);
    v10 = type metadata accessor for MLS.SwiftMLSClientPicker();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v5, v9 + *(v11 + 72) * v4, v10);

    (*(v11 + 56))(v5, 0, 1, v10);
    outlined destroy of MLS.KeyPackageProvider?(v5, &_s15SecureMessaging3MLSO20SwiftMLSClientPickerOSgMd, &_s15SecureMessaging3MLSO20SwiftMLSClientPickerOSgMR);
    (*(v6 + 16))(v36, v8, v7);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    v14 = os_log_type_enabled(v12, v13);
    v16 = *(v0 + 40);
    v15 = *(v0 + 48);
    v17 = *(v0 + 32);
    if (v14)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v37 = v19;
      *v18 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      (*(v16 + 8))(v15, v17);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v37);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_26524C000, v12, v13, "MLSDaemon already created SwiftMLSClient { clientIdentifier: %s }", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x2667577B0](v19, -1, -1);
      MEMORY[0x2667577B0](v18, -1, -1);
    }

    else
    {

      (*(v16 + 8))(v15, v17);
    }

    v34 = *(v0 + 8);

    return v34();
  }

  else
  {
    v24 = *(v0 + 56);
    v25 = *(v0 + 24);
    v26 = *(v0 + 16);

    v27 = type metadata accessor for MLS.SwiftMLSClientPicker();
    (*(*(v27 - 8) + 56))(v24, 1, 1, v27);
    outlined destroy of MLS.KeyPackageProvider?(v24, &_s15SecureMessaging3MLSO20SwiftMLSClientPickerOSgMd, &_s15SecureMessaging3MLSO20SwiftMLSClientPickerOSgMR);
    _StringGuts.grow(_:)(21);

    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v28);

    *(v0 + 88) = 0x800000026534BBC0;
    v29 = swift_task_alloc();
    *(v0 + 96) = v29;
    *(v29 + 16) = v25;
    *(v29 + 24) = v26;
    v30 = swift_task_alloc();
    *(v0 + 104) = v30;
    v31 = type metadata accessor for DaemonPersister(0);
    v32 = _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type DaemonPersister and conformance DaemonPersister, type metadata accessor for DaemonPersister, &protocol conformance descriptor for DaemonPersister);
    *v30 = v0;
    v30[1] = MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:);
    v33 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2821ACB80](v32, 0xD000000000000013, 0x800000026534BBC0, &async function pointer to partial apply for closure #1 in MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:), v29, v31, v33, v32);
  }
}

{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:);
  }

  else
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:);
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO18KeyPackageProviderVSgMd, &_s15SecureMessaging3MLSO18KeyPackageProviderVSgMR);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO20SwiftMLSClientPickerOSgMd, &_s15SecureMessaging3MLSO20SwiftMLSClientPickerOSgMR);
  v3[13] = swift_task_alloc();
  v4 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v6 = type metadata accessor for MLS.UniqueClientIdentifier();
  v3[23] = v6;
  v3[24] = *(v6 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v7 = type metadata accessor for MLS.ClientIdentifier();
  v3[30] = v7;
  v3[31] = *(v7 - 8);
  v3[32] = swift_task_alloc();
  v8 = type metadata accessor for MLS.SwiftMLSClientPicker();
  v3[33] = v8;
  v3[34] = *(v8 - 8);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v9 = type metadata accessor for MLS.Client.Configuration();
  v3[37] = v9;
  v3[38] = *(v9 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v3[45] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[46] = v11;
  v3[47] = v10;

  return MEMORY[0x2822009F8](closure #1 in MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:), v11, v10);
}

uint64_t closure #1 in MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:)()
{
  v1 = *(v0[10] + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_persister);
  v0[48] = v1;
  v6 = (*(*v1 + 320) + **(*v1 + 320));
  v2 = swift_task_alloc();
  v0[49] = v2;
  *v2 = v0;
  v2[1] = closure #1 in MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:);
  v3 = v0[44];
  v4 = v0[11];

  return v6(v3, v4);
}

{
  v2 = *v1;
  v2[50] = v0;

  if (v0)
  {
    v3 = v2[46];
    v4 = v2[47];

    return MEMORY[0x2822009F8](closure #1 in MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:), v3, v4);
  }

  else
  {
    v5 = _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type DaemonPersister and conformance DaemonPersister, type metadata accessor for DaemonPersister, &protocol conformance descriptor for DaemonPersister);
    v2[51] = v5;
    v6 = swift_task_alloc();
    v2[52] = v6;
    *v6 = v2;
    v6[1] = closure #1 in MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:);
    v7 = v2[48];
    v8 = v2[41];
    v9 = v2[11];

    return MEMORY[0x2821AC9F8](v8, v9, v7, v5, 0);
  }
}

{
  v2 = *v1;
  *(*v1 + 424) = v0;

  v3 = *(v2 + 376);
  v4 = *(v2 + 368);
  if (v0)
  {
    v5 = closure #1 in MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:);
  }

  else
  {
    v5 = closure #1 in MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v82 = v0;
  v1 = v0[66];

  if (v1)
  {
    v2 = v0[66];
    v77 = v0[63];
    v3 = v0[55];
    v4 = v0[36];
    v5 = v0[34];
    v6 = v0[27];
    v8 = v0[22];
    v7 = v0[23];
    v9 = v0[20];
    v10 = v0[17];
    v11 = v0[11];
    v12 = MEMORY[0x277D4D2D0];
    v4[3] = v0[62];
    v4[4] = v12;
    *v4 = v2;
    (*(v5 + 104))();
    v3(v6, v11, v7);
    v77(v9, v8, v10);
    v13 = Logger.logObject.getter();
    v79 = static os_log_type_t.default.getter();
    v14 = os_log_type_enabled(v13, v79);
    v15 = v0[57];
    v16 = v0[27];
    v17 = v0[23];
    v18 = v0[22];
    v19 = v0[20];
    v21 = v0[17];
    v20 = v0[18];
    if (v14)
    {
      v78 = v0[22];
      v22 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v81[0] = v76;
      *v22 = 136315394;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v74 = v21;
      v75 = v13;
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      v15(v16, v17);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v81);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      v30 = *(v20 + 8);
      v30(v19, v74);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v81);

      *(v22 + 14) = v31;
      _os_log_impl(&dword_26524C000, v75, v79, "MLSDaemon loaded old RCSSwiftMLSClient { clientIdentifier: %s, persistedClientUUID: %s }", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v76, -1, -1);
      MEMORY[0x2667577B0](v22, -1, -1);

      v30(v78, v74);
    }

    else
    {

      v44 = *(v20 + 8);
      v44(v19, v21);
      v15(v16, v17);
      v44(v18, v21);
    }

    v67 = v0[55];
    v73 = v0[44];
    v72 = v0[41];
    v70 = v0[38];
    v71 = v0[37];
    v45 = v0[36];
    v65 = v45;
    v69 = v0[35];
    v47 = v0[33];
    v46 = v0[34];
    v64 = v0[25];
    v66 = v0[23];
    v48 = v0[13];
    v68 = v0[12];
    v49 = v0[10];
    v50 = v0[11];
    v67();
    v51 = *(v46 + 16);
    v51(v48, v45, v47);
    (*(v46 + 56))(v48, 0, 1, v47);
    v52 = (*((*MEMORY[0x277D85000] & *v49) + 0x98))(v0 + 2);
    specialized Dictionary.subscript.setter(v48, v64);
    v52(v0 + 2, 0);
    (v67)(v64, v50, v66);
    v51(v69, v65, v47);

    MLS.KeyPackageProvider.init(swiftMLSClient:persister:)();
    v53 = type metadata accessor for MLS.KeyPackageProvider();
    (*(*(v53 - 8) + 56))(v68, 0, 1, v53);
    v54 = (*((*MEMORY[0x277D85000] & *v49) + 0xB0))(v0 + 6);
    specialized Dictionary.subscript.setter(v68, v64);
    v54(v0 + 6, 0);
    (*(v70 + 8))(v72, v71);
    outlined destroy of MLS.KeyPackageProvider?(v73, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v46 + 8))(v65, v47);

    v55 = v0[1];
  }

  else
  {
    (v0[55])(v0[28], v0[11], v0[23]);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    v34 = os_log_type_enabled(v32, v33);
    v35 = v0[57];
    v36 = v0[28];
    v37 = v0[23];
    if (v34)
    {
      v80 = v0[57];
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v81[0] = v39;
      *v38 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      v80(v36, v37);
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, v81);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_26524C000, v32, v33, "MLSDaemon failed creating RCSSwiftMLSClient { clientIdentifier: %s }", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x2667577B0](v39, -1, -1);
      MEMORY[0x2667577B0](v38, -1, -1);
    }

    else
    {

      v35(v36, v37);
    }

    v56 = v0[44];
    v57 = v0[41];
    v58 = v0[37];
    v59 = v0[38];
    v60 = v0[22];
    v61 = v0[17];
    v62 = v0[18];
    (*(v0[15] + 104))(v0[16], *MEMORY[0x277D4D2B8], v0[14]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0], MEMORY[0x277D4D2C8]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    (*(v62 + 8))(v60, v61);
    (*(v59 + 8))(v57, v58);
    outlined destroy of MLS.KeyPackageProvider?(v56, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

    v55 = v0[1];
  }

  return v55();
}

{
  v1 = v0[48];

  dispatch thunk of MLS.Client.Client.clientUUID.getter();

  v6 = (*(*v1 + 312) + **(*v1 + 312));
  v2 = swift_task_alloc();
  v0[68] = v2;
  *v2 = v0;
  v2[1] = closure #1 in MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:);
  v3 = v0[19];
  v4 = v0[11];

  return v6(v3, v4);
}

{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 144);
  v5 = *(*v1 + 136);
  *(*v1 + 552) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 376);
  v7 = *(v2 + 368);
  if (v0)
  {
    v8 = closure #1 in MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:);
  }

  else
  {
    v8 = closure #1 in MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:);
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

{
  v47 = v0;
  v1 = v0[60];
  v2 = v0[58];
  v44 = v0[55];
  v3 = v0[36];
  v4 = v0[33];
  v5 = v0[34];
  v6 = v0[26];
  v7 = v0[23];
  v8 = v0[11];

  v9 = MEMORY[0x277D4D2D0];
  v3[3] = v2;
  v3[4] = v9;
  *v3 = v1;
  (*(v5 + 104))(v3, *MEMORY[0x277D4CFC0], v4);
  v44(v6, v8, v7);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[57];
  v14 = v0[26];
  v15 = v0[23];
  if (v12)
  {
    v45 = v0[57];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v46 = v17;
    *v16 = 136315138;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v45(v14, v15);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v46);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_26524C000, v10, v11, "MLSDaemon created new RCSSwiftMLSClient { clientIdentifier: %s }", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x2667577B0](v17, -1, -1);
    MEMORY[0x2667577B0](v16, -1, -1);
  }

  else
  {

    v13(v14, v15);
  }

  v37 = v0[55];
  v43 = v0[44];
  v42 = v0[41];
  v40 = v0[38];
  v41 = v0[37];
  v22 = v0[36];
  v35 = v22;
  v39 = v0[35];
  v24 = v0[33];
  v23 = v0[34];
  v34 = v0[25];
  v36 = v0[23];
  v25 = v0[13];
  v38 = v0[12];
  v26 = v0[10];
  v27 = v0[11];
  v37();
  v28 = *(v23 + 16);
  v28(v25, v22, v24);
  (*(v23 + 56))(v25, 0, 1, v24);
  v29 = (*((*MEMORY[0x277D85000] & *v26) + 0x98))(v0 + 2);
  specialized Dictionary.subscript.setter(v25, v34);
  v29(v0 + 2, 0);
  (v37)(v34, v27, v36);
  v28(v39, v35, v24);

  MLS.KeyPackageProvider.init(swiftMLSClient:persister:)();
  v30 = type metadata accessor for MLS.KeyPackageProvider();
  (*(*(v30 - 8) + 56))(v38, 0, 1, v30);
  v31 = (*((*MEMORY[0x277D85000] & *v26) + 0xB0))(v0 + 6);
  specialized Dictionary.subscript.setter(v38, v34);
  v31(v0 + 6, 0);
  (*(v40 + 8))(v42, v41);
  outlined destroy of MLS.KeyPackageProvider?(v43, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(v23 + 8))(v35, v24);

  v32 = v0[1];

  return v32();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 352);

  outlined destroy of MLS.KeyPackageProvider?(v1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[44];
  v2 = v0[41];
  v3 = v0[37];
  v4 = v0[38];
  v5 = v0[22];
  v6 = v0[17];
  v7 = v0[18];

  (*(v7 + 8))(v5, v6);
  (*(v4 + 8))(v2, v3);
  outlined destroy of MLS.KeyPackageProvider?(v1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  v8 = v0[1];

  return v8();
}

{
  v1 = v0[44];
  v2 = v0[41];
  v3 = v0[37];
  v4 = v0[38];

  (*(v4 + 8))(v2, v3);
  outlined destroy of MLS.KeyPackageProvider?(v1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[44];
  v2 = v0[41];
  v3 = v0[37];
  v4 = v0[38];

  (*(v4 + 8))(v2, v3);
  outlined destroy of MLS.KeyPackageProvider?(v1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  v5 = v0[1];

  return v5();
}

uint64_t closure #1 in MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:)(uint64_t a1)
{
  v51 = v1;
  v3 = v1[31];
  v2 = v1[32];
  v4 = v1[30];
  MLS.UniqueClientIdentifier.clientIdentifier.getter();
  if ((*(v3 + 88))(v2, v4) == *MEMORY[0x277D4CD40])
  {
    v5 = v1[29];
    v6 = v1[23];
    v7 = v1[24];
    v8 = v1[11];
    v1[54] = OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_logger;
    v9 = *(v7 + 16);
    v1[55] = v9;
    v1[56] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v9(v5, v8, v6);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v1[29];
    v14 = v1[23];
    v15 = v1[24];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50 = v49;
      *v16 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      v20 = *(v15 + 8);
      v20(v13, v14);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v50);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_26524C000, v10, v11, "MLSDaemon creating RCSSwiftMLSClient { clientIdentifier: %s }", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x2667577B0](v49, -1, -1);
      MEMORY[0x2667577B0](v16, -1, -1);
    }

    else
    {

      v20 = *(v15 + 8);
      v20(v13, v14);
    }

    v1[57] = v20;
    v23 = v1[43];
    v24 = v1[17];
    v25 = v1[18];
    outlined init with copy of (MLS.UniqueClientIdentifier, MLS.KeyPackageProvider)(v1[44], v23, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if ((*(v25 + 48))(v23, 1, v24) == 1)
    {
      v26 = v1[41];
      v27 = v1[42];
      v28 = v1[40];
      v29 = v1[37];
      v30 = v1[38];
      v31 = v1[17];
      v32 = v1[18];
      outlined destroy of MLS.KeyPackageProvider?(v1[43], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v1[58] = type metadata accessor for MLS.RCSClient();
      (*(v30 + 16))(v28, v26, v29);
      (*(v32 + 56))(v27, 1, 1, v31);
      v33 = swift_task_alloc();
      v1[59] = v33;
      *v33 = v1;
      v33[1] = closure #1 in MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:);
      v34 = v1[42];
      v35 = v1[40];

      return MEMORY[0x2821D00D8](v35, v34);
    }

    else
    {
      v36 = v1[41];
      v38 = v1[38];
      v37 = v1[39];
      v39 = v1[37];
      v41 = v1[21];
      v40 = v1[22];
      v42 = v1[17];
      v43 = v1[18];
      (*(v43 + 32))(v40, v1[43], v42);
      v1[62] = type metadata accessor for MLS.RCSClient();
      (*(v38 + 16))(v37, v36, v39);
      v44 = *(v43 + 16);
      v1[63] = v44;
      v1[64] = (v43 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v44(v41, v40, v42);
      v45 = swift_task_alloc();
      v1[65] = v45;
      *v45 = v1;
      v45[1] = closure #1 in MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:);
      v46 = v1[39];
      v47 = v1[21];

      return MEMORY[0x2821D00E0](v46, v47);
    }
  }

  else
  {
    v22 = v1[30];

    return MEMORY[0x2821FDEB8](v22, v22);
  }
}

{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 480) = a1;
  *(v4 + 488) = v1;

  v5 = *(v3 + 376);
  v6 = *(v3 + 368);
  if (v1)
  {
    v7 = closure #1 in MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:);
  }

  else
  {
    v7 = closure #1 in MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 528) = a1;
  *(v4 + 536) = v1;

  v5 = *(v3 + 376);
  v6 = *(v3 + 368);
  if (v1)
  {
    v7 = closure #1 in MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:);
  }

  else
  {
    v7 = closure #1 in MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a3;
  outlined copy of Data._Representation(a2, a3);
  v29 = v7;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(a2, v10);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v30 = v16;
    *v15 = 136315138;
    v17 = Data.description.getter();
    v19 = v10;
    v20 = a4;
    v21 = a5;
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v30);

    *(v15 + 4) = v22;
    a5 = v21;
    a4 = v20;
    v10 = v19;
    _os_log_impl(&dword_26524C000, v13, v14, "MLSDaemon setupXPCConnection called { uniqueClientIdentifier: %s }", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x2667577B0](v16, -1, -1);
    MEMORY[0x2667577B0](v15, -1, -1);
  }

  type metadata accessor for MLS.ClientCreationError();
  v23 = swift_allocObject();
  v23[2] = a2;
  v23[3] = v10;
  v23[4] = a4;
  v23[5] = a5;
  v23[6] = v29;
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = v29;
  v25 = swift_allocObject();
  *(v25 + 16) = &async function pointer to partial apply for closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:);
  *(v25 + 24) = v24;
  v26 = v29;
  outlined copy of Data._Representation(a2, v10);
  v27 = v26;
  outlined copy of Data._Representation(a4, a5);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC9AllMemberOtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC9AllMemberOtMR);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.ClientCreationError and conformance MLS.ClientCreationError, MEMORY[0x277D4CF48], MEMORY[0x277D4CF40]);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #1 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:)@<X0>(_DWORD *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v47 = a4;
  v42[1] = a5;
  v43 = a6;
  v46 = a3;
  v6 = type metadata accessor for MLS.AllMember();
  v44 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MLS.UniqueClientIdentifier();
  v45 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = v42 - v16;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D020]);
  v18 = v48;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v18)
  {
    v20 = v14;
    v48 = v17;
    v21 = v45;
    swift_allocObject();
    JSONDecoder.init()();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.AllMember and conformance MLS.AllMember, MEMORY[0x277D4D218], MEMORY[0x277D4D238]);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v22 = v21;
    v23 = *(v21 + 16);
    v24 = v20;
    v25 = v10;
    v23(v20, v48, v10);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v46 = v28;
      v47 = swift_slowAlloc();
      v49 = v47;
      *v28 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v24;
      v31 = v22;
      v32 = v9;
      v34 = v33;
      (*(v31 + 8))(v30, v25);
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v34, &v49);
      v9 = v32;

      v36 = v46;
      *(v46 + 1) = v35;
      v37 = v36;
      _os_log_impl(&dword_26524C000, v26, v27, "MLSDaemon setupXPCConnection decoded { uniqueClientIdentifier: %s }", v36, 0xCu);
      v38 = v47;
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      MEMORY[0x2667577B0](v38, -1, -1);
      MEMORY[0x2667577B0](v37, -1, -1);

      v39 = v43;
    }

    else
    {

      (*(v22 + 8))(v24, v25);
      v39 = v43;
      v31 = v22;
    }

    v40 = v44;
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC9AllMemberOtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC9AllMemberOtMR) + 48);
    (*(v31 + 32))(v39, v48, v25);
    return (*(v40 + 32))(v39 + v41, v9, v6);
  }

  return result;
}

uint64_t closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[39] = a3;
  v4[40] = a4;
  v4[37] = a1;
  v4[38] = a2;
  type metadata accessor for SMAFeatureFlagsStore();
  v4[41] = swift_task_alloc();
  v5 = type metadata accessor for MLS.AllMember();
  v4[42] = v5;
  v4[43] = *(v5 - 8);
  v4[44] = swift_task_alloc();
  type metadata accessor for RegClientIdentifier(0);
  v4[45] = swift_task_alloc();
  v6 = type metadata accessor for MLS.ClientIdentifier();
  v4[46] = v6;
  v4[47] = *(v6 - 8);
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v7 = type metadata accessor for MLS.KeyPackageProvider();
  v4[50] = v7;
  v4[51] = *(v7 - 8);
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v8 = type metadata accessor for MLS.SwiftMLSClientPicker();
  v4[54] = v8;
  v4[55] = *(v8 - 8);
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v9 = type metadata accessor for MLS.UniqueClientIdentifier();
  v4[58] = v9;
  v4[59] = *(v9 - 8);
  v4[60] = swift_task_alloc();
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:), 0, 0);
}

uint64_t closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:)()
{
  v42 = v0;
  v1 = v0[58];
  v2 = v0[59];
  v3 = v0[37];
  if (v0[39])
  {
    v4 = v0[65];
    v5 = *(v2 + 16);
    v0[67] = v5;
    v0[68] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v5(v4, v3, v1);
    swift_unknownObjectRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[65];
    v10 = v0[58];
    v11 = v0[59];
    if (v8)
    {
      v12 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v41 = v39;
      *v12 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      v16 = *(v11 + 8);
      v16(v9, v10);
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v41);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_26524C000, v6, v7, "MLSDaemon adding clientXPCProxy { uniqueClientIdentifier: %s }", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x2667577B0](v39, -1, -1);
      MEMORY[0x2667577B0](v12, -1, -1);
    }

    else
    {

      v16 = *(v11 + 8);
      v16(v9, v10);
    }

    v0[70] = v16;
    v32 = swift_task_alloc();
    v0[71] = v32;
    *v32 = v0;
    v32[1] = closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:);
    v33 = v0[37];

    return MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:)(v33);
  }

  else
  {
    v18 = v0[66];
    v19 = *(v2 + 16);
    v0[69] = v19;
    v19(v18, v3, v1);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[66];
    v24 = v0[58];
    v25 = v0[59];
    if (v22)
    {
      v26 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = v40;
      *v26 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      v30 = *(v25 + 8);
      v30(v23, v24);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v41);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_26524C000, v20, v21, "MLSDaemon removing clientXPCProxy { uniqueClientIdentifier: %s }", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x2667577B0](v40, -1, -1);
      MEMORY[0x2667577B0](v26, -1, -1);
    }

    else
    {

      v30 = *(v25 + 8);
      v30(v23, v24);
    }

    v0[114] = v30;
    v35 = *(v0[40] + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_clientXPCServer);
    v0[115] = v35;
    v36 = *v35 + 120;
    v0[116] = *v36;
    v0[117] = v36 & 0xFFFFFFFFFFFFLL | 0xB4A8000000000000;
    type metadata accessor for MLSActor();
    v0[118] = static MLSActor.shared.getter();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
    v38 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:), v38, v37);
  }
}

{
  *(*v1 + 576) = v0;

  if (v0)
  {
    v2 = closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:);
  }

  else
  {
    v2 = closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[40];
  v2 = (*MEMORY[0x277D85000] & *v1) + 136;
  v0[73] = *((*MEMORY[0x277D85000] & *v1) + 0x88);
  v0[74] = v2 & 0xFFFFFFFFFFFFLL | 0x2693000000000000;
  v0[75] = type metadata accessor for MLSActor();
  v0[76] = static MLSActor.shared.getter();
  v0[77] = _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:), v4, v3);
}

{
  v1 = *(v0 + 584);

  *(v0 + 624) = v1(v2);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:), 0, 0);
}

{
  v48 = v0;
  if (*(v0[78] + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[37]), (v2 & 1) != 0))
  {
    v3 = v0[57];
    v4 = v0[54];
    v5 = v0[55];
    v6 = v0[40];
    v7 = *(v5 + 16);
    v5 += 16;
    v8 = *(v0[78] + 56) + *(v5 + 56) * v1;
    v0[79] = v7;
    v0[80] = v5 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v7(v3, v8, v4);

    v9 = (*MEMORY[0x277D85000] & *v6) + 160;
    v0[81] = *((*MEMORY[0x277D85000] & *v6) + 0xA0);
    v0[82] = v9 & 0xFFFFFFFFFFFFLL | 0x475000000000000;
    v0[83] = static MLSActor.shared.getter();
    v11 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:), v11, v10);
  }

  else
  {
    v12 = v0[67];
    v13 = v0[64];
    v14 = v0[58];
    v15 = v0[37];

    v12(v13, v15, v14);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[70];
    v20 = v0[64];
    v21 = v0[58];
    v22 = v0[39];
    if (v18)
    {
      v46 = v0[39];
      v23 = swift_slowAlloc();
      v45 = v19;
      v24 = swift_slowAlloc();
      v47 = v24;
      *v23 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      v45(v20, v21);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v47);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_26524C000, v16, v17, "MLSDaemon error setting up swift mls client { uniqueClientIdentifier: %s }", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x2667577B0](v24, -1, -1);
      MEMORY[0x2667577B0](v23, -1, -1);
      swift_unknownObjectRelease(v46, v29, v30, v31, v32, v33, v34, v35);
    }

    else
    {

      swift_unknownObjectRelease(v22, v36, v37, v38, v39, v40, v41, v42);
      v19(v20, v21);
    }

    v43 = v0[1];

    return v43(0);
  }
}

{
  v1 = *(v0 + 648);

  *(v0 + 672) = v1(v2);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:), 0, 0);
}

{
  v62 = v0;
  if (*(v0[84] + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[37]), (v2 & 1) != 0))
  {
    v3 = v0[53];
    v4 = v0[50];
    v5 = v0[51];
    v6 = v0[49];
    v7 = v0[46];
    v8 = v0[47];
    v9 = *(v5 + 16);
    v5 += 16;
    v10 = *(v0[84] + 56) + *(v5 + 56) * v1;
    v0[85] = v9;
    v0[86] = v5 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v9(v3, v10, v4);

    MLS.UniqueClientIdentifier.clientIdentifier.getter();
    v11 = (*(v8 + 88))(v6, v7);
    if (v11 == *MEMORY[0x277D4CD40])
    {
      v12 = v11;
      v13 = v0[46];
      v14 = v0[47];
      v15 = v0[45];
      v16 = *(v0[40] + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_regClientServer);
      v0[87] = v16;
      (*(v14 + 104))(v15, v12, v13);
      v17 = *v16 + 88;
      v0[88] = *v17;
      v0[89] = v17 & 0xFFFFFFFFFFFFLL | 0x5C72000000000000;
      v0[90] = static MLSActor.shared.getter();
      v19 = dispatch thunk of Actor.unownedExecutor.getter();

      return MEMORY[0x2822009F8](closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:), v19, v18);
    }

    else
    {
      v54 = v0[46];

      return MEMORY[0x2821FDEB8](v54, v54);
    }
  }

  else
  {
    v20 = v0[67];
    v21 = v0[63];
    v22 = v0[58];
    v23 = v0[37];

    v20(v21, v23, v22);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    v26 = os_log_type_enabled(v24, v25);
    v60 = v0[70];
    v27 = v0[63];
    v28 = v0[58];
    v29 = v0[57];
    v30 = v0[54];
    v31 = v0[55];
    v32 = v0[39];
    if (v26)
    {
      v59 = v0[39];
      v33 = swift_slowAlloc();
      v56 = v25;
      v34 = swift_slowAlloc();
      v61 = v34;
      *v33 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v57 = v30;
      v58 = v29;
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      v60(v27, v28);
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v61);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_26524C000, v24, v56, "MLSDaemon error setting up key package provider { uniqueClientIdentifier: %s }", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x2667577B0](v34, -1, -1);
      MEMORY[0x2667577B0](v33, -1, -1);

      swift_unknownObjectRelease(v59, v39, v40, v41, v42, v43, v44, v45);
      (*(v31 + 8))(v58, v57);
    }

    else
    {

      swift_unknownObjectRelease(v32, v46, v47, v48, v49, v50, v51, v52);
      v60(v27, v28);
      (*(v31 + 8))(v29, v30);
    }

    v53 = v0[1];

    return v53(0);
  }
}

{
  v1 = *(v0 + 704);

  *(v0 + 728) = v1(v2);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:), 0, 0);
}

{
  v53 = v0;
  if (*(*(v0 + 728) + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 360)), (v2 & 1) != 0))
  {
    v3 = *(v0 + 360);
    outlined init with copy of RegistrationClientProxy(*(*(v0 + 728) + 56) + 56 * v1, v0 + 72);
    outlined destroy of RegClientIdentifier(v3);

    v4 = *(v0 + 104);
    *(v0 + 64) = *(v0 + 120);
    v5 = *(v0 + 88);
    *(v0 + 16) = *(v0 + 72);
    *(v0 + 32) = v5;
    *(v0 + 48) = v4;
    *(v0 + 736) = *(v0 + 56);
    swift_unknownObjectRetain_n();
    *(v0 + 752) = static MLSActor.shared.getter();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:), v7, v6);
  }

  else
  {
    v8 = *(v0 + 536);
    v9 = *(v0 + 496);
    v10 = *(v0 + 464);
    v11 = *(v0 + 360);
    v12 = *(v0 + 296);

    outlined destroy of RegClientIdentifier(v11);
    v8(v9, v12, v10);
    v13 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    v14 = os_log_type_enabled(v13, v49);
    v15 = *(v0 + 496);
    v16 = *(v0 + 464);
    v50 = *(v0 + 560);
    v17 = *(v0 + 456);
    v18 = *(v0 + 432);
    v19 = *(v0 + 440);
    v20 = *(v0 + 424);
    v22 = *(v0 + 400);
    v21 = *(v0 + 408);
    v51 = *(v0 + 312);
    if (v14)
    {
      v48 = *(v0 + 400);
      v23 = swift_slowAlloc();
      v47 = v17;
      v24 = swift_slowAlloc();
      v52 = v24;
      *v23 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v45 = v20;
      v46 = v18;
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      v50(v15, v16);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v52);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_26524C000, v13, v49, "MLSDaemon error setting up key package exchanger { uniqueClientIdentifier: %s }", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x2667577B0](v24, -1, -1);
      MEMORY[0x2667577B0](v23, -1, -1);

      swift_unknownObjectRelease(v51, v29, v30, v31, v32, v33, v34, v35);
      (*(v21 + 8))(v45, v48);
      (*(v19 + 8))(v47, v46);
    }

    else
    {

      swift_unknownObjectRelease(v51, v36, v37, v38, v39, v40, v41, v42);
      v50(v15, v16);
      (*(v21 + 8))(v20, v22);
      (*(v19 + 8))(v17, v18);
    }

    v43 = *(v0 + 8);

    return v43(0);
  }
}

{

  *(v0 + 760) = type metadata accessor for MLS.EncryptedRCSCredentialProvider();
  swift_allocObject();
  *(v0 + 768) = MLS.EncryptedRCSCredentialProvider.init()();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:), 0, 0);
}

{
  v1 = v0[96];
  v2 = MEMORY[0x277D4D1A0];
  v0[25] = v0[95];
  v0[26] = v2;
  v0[22] = v1;
  outlined destroy of RegistrationClientProxy((v0 + 2));
  swift_unknownObjectRetain();
  v0[97] = static MLSActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:), v4, v3);
}

{
  v1 = v0[39];

  v0[98] = type metadata accessor for CommunicatorBroadcaster();
  v2 = swift_allocObject();
  v0[99] = v2;
  *(v2 + 16) = v1;

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:), 0, 0);
}

{
  swift_unknownObjectRetain();
  *(v0 + 800) = static MLSActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:), v2, v1);
}

{
  v1 = v0[39];

  v0[101] = type metadata accessor for DelegateBroadcaster();
  v2 = swift_allocObject();
  v0[102] = v2;
  *(v2 + 16) = v1;

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:), 0, 0);
}

{
  v0[103] = swift_getObjectType();
  v0[104] = type metadata accessor for MLS.DaemonClientEventDeliverer();

  v0[105] = static MLSActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:), v2, v1);
}

{

  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type CommunicatorBroadcaster and conformance CommunicatorBroadcaster, type metadata accessor for CommunicatorBroadcaster, &protocol conformance descriptor for CommunicatorBroadcaster);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type DelegateBroadcaster and conformance DelegateBroadcaster, type metadata accessor for DelegateBroadcaster, &protocol conformance descriptor for DelegateBroadcaster);
  *(v0 + 848) = MLS.DaemonClientEventDeliverer.__allocating_init<A, B, C>(communicator:delegate:keyPackageExchanger:)();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:), 0, 0);
}

{
  v1 = *(v0 + 888);
  v2 = *(v0 + 296);

  v1(v0 + 128, v2);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:), 0, 0);
}

{
  v68 = v0;
  (*(v0 + 536))(*(v0 + 488), *(v0 + 296), *(v0 + 464));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  log = v1;
  v3 = os_log_type_enabled(v1, v2);
  v62 = *(v0 + 736);
  v4 = *(v0 + 488);
  v6 = *(v0 + 464);
  v5 = *(v0 + 472);
  v7 = *(v0 + 456);
  v9 = *(v0 + 432);
  v8 = *(v0 + 440);
  v10 = *(v0 + 408);
  v63 = *(v0 + 400);
  v64 = *(v0 + 424);
  v61 = *(v0 + 312);
  if (v3)
  {
    v60 = *(v0 + 456);
    v11 = swift_slowAlloc();
    v59 = v9;
    v12 = swift_slowAlloc();
    v67 = v12;
    *v11 = 136315138;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v58 = v8;
    v15 = v14;
    v66 = *(v5 + 8);
    v66(v4, v6);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v67);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_26524C000, log, v2, "MLSDaemon setup SwiftMLSClientCoordinator { uniqueClientIdentifier: %s }", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x2667577B0](v12, -1, -1);
    MEMORY[0x2667577B0](v11, -1, -1);
    swift_unknownObjectRelease(v61, v17, v18, v19, v20, v21, v22, v23);

    swift_unknownObjectRelease(v62, v24, v25, v26, v27, v28, v29, v30);

    (*(v10 + 8))(v64, v63);
    (*(v58 + 8))(v60, v59);
  }

  else
  {

    swift_unknownObjectRelease(v62, v31, v32, v33, v34, v35, v36, v37);

    swift_unknownObjectRelease(v61, v38, v39, v40, v41, v42, v43, v44);
    v66 = *(v5 + 8);
    v66(v4, v6);
    (*(v10 + 8))(v64, v63);
    (*(v8 + 8))(v7, v9);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
  (*(*(v0 + 472) + 16))(*(v0 + 480), *(v0 + 296), *(v0 + 464));
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  v47 = os_log_type_enabled(v45, v46);
  v48 = *(v0 + 480);
  v49 = *(v0 + 464);
  if (v47)
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v67 = v51;
    *v50 = 136315138;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v54 = v53;
    v66(v48, v49);
    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, &v67);

    *(v50 + 4) = v55;
    _os_log_impl(&dword_26524C000, v45, v46, "MLSDaemon setupXPCConnection replying with success { uniqueClientIdentifier: %s }", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    MEMORY[0x2667577B0](v51, -1, -1);
    MEMORY[0x2667577B0](v50, -1, -1);
  }

  else
  {

    v66(v48, v49);
  }

  v56 = *(v0 + 8);

  return v56(1);
}

{
  v1 = *(v0 + 928);
  v2 = *(v0 + 296);

  v1(v2);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:), 0, 0);
}

{
  v17 = v0;
  v1 = *(v0 + 912);
  (*(v0 + 552))(*(v0 + 480), *(v0 + 296), *(v0 + 464));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 480);
  v6 = *(v0 + 464);
  if (v4)
  {
    v15 = v1;
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    v15(v5, v6);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_26524C000, v2, v3, "MLSDaemon setupXPCConnection replying with success { uniqueClientIdentifier: %s }", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x2667577B0](v8, -1, -1);
    MEMORY[0x2667577B0](v7, -1, -1);
  }

  else
  {

    v1(v5, v6);
  }

  v13 = *(v0 + 8);

  return v13(1);
}

uint64_t closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:)(uint64_t a1)
{
  v23 = v1[79];
  v2 = v1[56];
  v3 = v1[53];
  v4 = v1[54];
  v5 = v1[52];
  v6 = v1[50];
  v7 = v1[43];
  v21 = v1[44];
  v22 = v1[57];
  v19 = v1[85];
  v20 = v1[42];
  v8 = v1[40];
  v9 = v1[38];
  MLS.UniqueClientIdentifier.clientIdentifier.getter();
  v10 = *(v8 + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_persister);
  v11 = _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type DaemonPersister and conformance DaemonPersister, type metadata accessor for DaemonPersister, &protocol conformance descriptor for DaemonPersister);
  outlined init with copy of SMAUserDefaultsProtocol((v1 + 22), (v1 + 27));
  v19(v5, v3, v6);
  v23(v2, v22, v4);
  (*(v7 + 16))(v21, v9, v20);

  static ServerBag.mlsBag.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.AllMember and conformance MLS.AllMember, MEMORY[0x277D4D218], MEMORY[0x277D4D210]);
  lazy protocol witness table accessor for type Data and conformance Data();
  default argument 7 of MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO25SwiftMLSClientCoordinatorCy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO25SwiftMLSClientCoordinatorCy_AC9AllMemberO10Foundation4DataVGMR);
  swift_allocObject();
  v12 = swift_task_alloc();
  v1[107] = v12;
  *v12 = v1;
  v12[1] = closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:);
  v13 = v1[106];
  v14 = v1[56];
  v15 = v1[52];
  v16 = v1[48];
  v17 = MEMORY[0x277D4D128];

  return MEMORY[0x2821ACA88](v16, v13, v17, v10, v11, v1 + 27, v15, v14);
}

{
  v3 = *v2;
  *(v3 + 864) = a1;
  *(v3 + 872) = v1;

  if (v1)
  {
    v4 = closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:);
  }

  else
  {
    v4 = closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v2 = *(v1 + 864);
  v3 = *(v1 + 816);
  v4 = *(v1 + 792);
  v5 = *(v1 + 320);
  *(v1 + 128) = *(v1 + 312);
  *(v1 + 136) = v2;
  *(v1 + 144) = v4;
  *(v1 + 152) = v3;
  *(v1 + 160) = *(v1 + 736);
  v6 = *(v5 + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_clientXPCServer);
  *(v1 + 880) = v6;
  v7 = *v6 + 112;
  *(v1 + 888) = *v7;
  *(v1 + 896) = v7 & 0xFFFFFFFFFFFFLL | 0x3176000000000000;
  *(v1 + 904) = static MLSActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:), v9, v8);
}

uint64_t closure #2 in MLSDaemon.setupXPCConnection(client:uniqueClientIdentifier:selfMember:completion:)(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v24 = *(v8 + 456);
  v9 = *(v8 + 432);
  v10 = *(v8 + 440);
  v11 = *(v8 + 424);
  v13 = *(v8 + 400);
  v12 = *(v8 + 408);
  v14 = *(v8 + 312);
  swift_unknownObjectRelease(*(v8 + 736), a2, a3, a4, a5, a6, a7, a8);

  swift_unknownObjectRelease(v14, v15, v16, v17, v18, v19, v20, v21);
  (*(v12 + 8))(v11, v13);
  (*(v10 + 8))(v24, v9);
  __swift_destroy_boxed_opaque_existential_1Tm((v8 + 176));

  v22 = *(v8 + 8);

  return v22(0);
}

{
  swift_unknownObjectRelease(*(v8 + 312), a2, a3, a4, a5, a6, a7, a8);

  v9 = *(v8 + 8);

  return v9(0);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.AllMember) -> (@unowned Bool, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC9AllMemberOtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC9AllMemberOtMR) + 48);
  v9 = (a3 + *a3);
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @in_guaranteed MLS.AllMember) -> (@unowned Bool, @error @owned Error);

  return v9(a2, a2 + v6);
}

uint64_t MLSDaemon.selfKeyPackage(uniqueClientIdentifier:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  outlined copy of Data._Representation(a1, a2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(a1, a2);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    v12 = Data.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v19);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_26524C000, v8, v9, "MLSDaemon selfKeyPackage called { uniqueClientIdentifier: %s }", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x2667577B0](v11, -1, -1);
    MEMORY[0x2667577B0](v10, -1, -1);
  }

  type metadata accessor for MLS.SelfKeyPackageError();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = v5;
  *(swift_allocObject() + 16) = v5;
  v16 = v5;
  outlined copy of Data._Representation(a1, a2);
  type metadata accessor for MLS.UniqueClientIdentifier();
  type metadata accessor for MLS.KeyPackageInfo();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError, MEMORY[0x277D4CF90], MEMORY[0x277D4CF88]);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.KeyPackageInfo and conformance MLS.KeyPackageInfo, MEMORY[0x277D4CCE8], MEMORY[0x277D4CCF0]);
  v17 = v16;
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

void closure #1 in MLSDaemon.selfKeyPackage(uniqueClientIdentifier:completion:)(uint64_t a3@<X8>)
{
  v5 = type metadata accessor for MLS.UniqueClientIdentifier();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D020]);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v3)
  {
    (*(v6 + 16))(v9, a3, v5);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v19;
      *v12 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      (*(v6 + 8))(v9, v5);
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v20);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_26524C000, v10, v11, "MLSDaemon selfKeyPackage decoded { uniqueClientIdentifier: %s }", v12, 0xCu);
      v17 = v19;
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x2667577B0](v17, -1, -1);
      MEMORY[0x2667577B0](v12, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }
  }
}

uint64_t closure #2 in MLSDaemon.selfKeyPackage(uniqueClientIdentifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for MLS.UniqueClientIdentifier();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.selfKeyPackage(uniqueClientIdentifier:completion:), 0, 0);
}

uint64_t closure #2 in MLSDaemon.selfKeyPackage(uniqueClientIdentifier:completion:)()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_clientXPCServer);
  v0[12] = v1;
  v2 = *v1 + 88;
  v0[13] = *v2;
  v0[14] = v2 & 0xFFFFFFFFFFFFLL | 0xB098000000000000;
  type metadata accessor for MLSActor();
  v0[15] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.selfKeyPackage(uniqueClientIdentifier:completion:), v4, v3);
}

{
  v1 = *(v0 + 104);

  *(v0 + 128) = v1(v2);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.selfKeyPackage(uniqueClientIdentifier:completion:), 0, 0);
}

{
  v42 = v0;
  if (*(v0[16] + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[3]), (v2 & 1) != 0))
  {
    v3 = v0[9];
    v4 = v0[10];
    v5 = v0[8];
    v6 = v0[3];
    v7 = (*(v0[16] + 56) + 48 * v1);
    v0[17] = *v7;
    v0[18] = v7[1];
    v0[19] = v7[2];
    v0[20] = v7[3];
    v0[21] = v7[4];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    (*(v3 + 16))(v4, v6, v5);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[9];
    v12 = v0[10];
    v13 = v0[8];
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v41[0] = v15;
      *v14 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v11 + 8))(v12, v13);
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v41);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_26524C000, v8, v9, "MLSDaemon selfKeyPackage calling SwiftMLS { uniqueClientIdentifier: %s }", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x2667577B0](v15, -1, -1);
      MEMORY[0x2667577B0](v14, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v12, v13);
    }

    v40 = (*MEMORY[0x277D4D070] + MEMORY[0x277D4D070]);
    v38 = swift_task_alloc();
    v0[22] = v38;
    *v38 = v0;
    v38[1] = closure #2 in MLSDaemon.selfKeyPackage(uniqueClientIdentifier:completion:);
    v39 = v0[2];

    return v40(v39);
  }

  else
  {
    v20 = v0[11];
    v21 = v0[8];
    v22 = v0[9];
    v23 = v0[3];

    (*(v22 + 16))(v20, v23, v21);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    v26 = os_log_type_enabled(v24, v25);
    v27 = v0[11];
    v28 = v0[8];
    v29 = v0[9];
    if (v26)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v41[0] = v31;
      *v30 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      (*(v29 + 8))(v27, v28);
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, v41);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_26524C000, v24, v25, "MLSDaemon selfKeyPackage has no clientXPCProxy { uniqueClientIdentifier: %s }", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x2667577B0](v31, -1, -1);
      MEMORY[0x2667577B0](v30, -1, -1);
    }

    else
    {

      (*(v29 + 8))(v27, v28);
    }

    (*(v0[6] + 104))(v0[7], *MEMORY[0x277D4D2B0], v0[5]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0], MEMORY[0x277D4D2C8]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();

    v36 = v0[1];

    return v36();
  }
}

{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = closure #2 in MLSDaemon.selfKeyPackage(uniqueClientIdentifier:completion:);
  }

  else
  {
    v2 = closure #2 in MLSDaemon.selfKeyPackage(uniqueClientIdentifier:completion:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t closure #2 in MLSDaemon.selfKeyPackage(uniqueClientIdentifier:completion:)(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 168);
  swift_unknownObjectRelease(*(v8 + 136), a2, a3, a4, a5, a6, a7, a8);

  swift_unknownObjectRelease(v9, v10, v11, v12, v13, v14, v15, v16);

  v17 = *(v8 + 8);

  return v17();
}

{
  v9 = *(v8 + 168);
  swift_unknownObjectRelease(*(v8 + 136), a2, a3, a4, a5, a6, a7, a8);

  swift_unknownObjectRelease(v9, v10, v11, v12, v13, v14, v15, v16);

  v17 = *(v8 + 8);

  return v17();
}

uint64_t MLSDaemon.createGroup(uniqueClientIdentifier:identifier:otherMembers:groupCreationContext:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  outlined copy of Data._Representation(a1, a2);
  v31 = v10;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(a1, a2);
  if (os_log_type_enabled(v16, v17))
  {
    v30 = a3;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v35 = v19;
    *v18 = 136315138;
    v20 = Data.description.getter();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v35);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_26524C000, v16, v17, "MLSDaemon createGroup called { uniqueClientIdentifier: %s }", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x2667577B0](v19, -1, -1);
    v23 = v18;
    a3 = v30;
    MEMORY[0x2667577B0](v23, -1, -1);
  }

  type metadata accessor for MLS.GroupCreationError();
  v24 = swift_allocObject();
  v24[2] = a1;
  v24[3] = a2;
  v24[4] = a5;
  v24[5] = a6;
  v24[6] = a7;
  v24[7] = a8;
  v24[8] = v31;
  v25 = swift_allocObject();
  v25[2] = v31;
  v25[3] = a3;
  v25[4] = a4;
  v26 = swift_allocObject();
  *(v26 + 16) = &async function pointer to partial apply for closure #2 in MLSDaemon.createGroup(uniqueClientIdentifier:identifier:otherMembers:groupCreationContext:completion:);
  *(v26 + 24) = v25;
  v27 = v31;
  outlined copy of Data._Representation(a1, a2);
  v28 = v27;
  outlined copy of Data._Representation(a5, a6);
  outlined copy of Data._Representation(a7, a8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAC9AllMemberOGAC20GroupCreationContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAC9AllMemberOGAC20GroupCreationContextVy_10Foundation4DataVGtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMR);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError, MEMORY[0x277D4CF00], MEMORY[0x277D4CEF8]);
  lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.GroupCreationProcessedContext<Data> and conformance MLS.GroupCreationProcessedContext<A>, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMR, MEMORY[0x277D4D190]);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #1 in MLSDaemon.createGroup(uniqueClientIdentifier:identifier:otherMembers:groupCreationContext:completion:)@<X0>(uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v68 = a2;
  v60 = a7;
  v61 = a8;
  v63 = a5;
  v64 = a6;
  v65 = a3;
  v66 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v62 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v58 - v14;
  v16 = type metadata accessor for MLS.UniqueClientIdentifier();
  v67 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16, v17);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v58 - v22;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D020]);
  v24 = v69;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v24)
  {
    v59 = v12;
    v68 = v8;
    v69 = v23;
    swift_allocObject();
    JSONDecoder.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
    lazy protocol witness table accessor for type [MLS.AllMember] and conformance <A> [A]();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v26 = v70;
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.GroupCreationContext<Data> and conformance MLS.GroupCreationContext<A>, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR, MEMORY[0x277D4CF98]);
    v27 = v15;
    v28 = v68;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v29 = v67;
    v30 = v16;
    v31 = v69;
    v66 = v26;
    v32 = v30;

    v33 = v62;
    v34 = *(v62 + 16);
    v35 = v27;
    v36 = v59;
    v65 = v35;
    v34(v59);
    v37 = v31;
    v38 = v32;
    (*(v29 + 16))(v20, v37, v32);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v70 = v42;
      *v41 = 136315394;
      LODWORD(v64) = v40;
      v43 = MLS.SigningContext.identifier.getter();
      v45 = v44;
      (*(v62 + 8))(v36, v68);
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v70);

      *(v41 + 4) = v46;
      *(v41 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      (*(v67 + 8))(v20, v38);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v70);
      v28 = v68;

      *(v41 + 14) = v50;
      _os_log_impl(&dword_26524C000, v39, v64, "MLSDaemon createGroup decoded { identifier: %s, uniqueClientIdentifier: %s }", v41, 0x16u);
      swift_arrayDestroy();
      v51 = v42;
      v29 = v67;
      MEMORY[0x2667577B0](v51, -1, -1);
      v52 = v41;
      v33 = v62;
      MEMORY[0x2667577B0](v52, -1, -1);
    }

    else
    {

      (*(v29 + 8))(v20, v38);
      (*(v33 + 8))(v36, v28);
    }

    v53 = v61;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAC9AllMemberOGAC20GroupCreationContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAC9AllMemberOGAC20GroupCreationContextVy_10Foundation4DataVGtMR);
    v55 = *(v54 + 48);
    v56 = *(v54 + 64);
    (*(v29 + 32))(v53, v69, v38);
    v57 = v65;
    *(v53 + v55) = v66;
    return (*(v33 + 32))(v53 + v56, v57, v28);
  }

  return result;
}

uint64_t closure #2 in MLSDaemon.createGroup(uniqueClientIdentifier:identifier:otherMembers:groupCreationContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  v8 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v7[13] = v8;
  v7[14] = *(v8 - 8);
  v7[15] = swift_task_alloc();
  v9 = type metadata accessor for MLS.UniqueClientIdentifier();
  v7[16] = v9;
  v7[17] = *(v9 - 8);
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v10 = type metadata accessor for Metric();
  v7[20] = v10;
  v7[21] = *(v10 - 8);
  v7[22] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v7[23] = v11;
  v7[24] = *(v11 - 8);
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.createGroup(uniqueClientIdentifier:identifier:otherMembers:groupCreationContext:completion:), 0, 0);
}

uint64_t closure #2 in MLSDaemon.createGroup(uniqueClientIdentifier:identifier:otherMembers:groupCreationContext:completion:)()
{
  v1 = *(v0[10] + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_clientXPCServer);
  v0[28] = v1;
  v2 = *v1 + 88;
  v0[29] = *v2;
  v0[30] = v2 & 0xFFFFFFFFFFFFLL | 0xB098000000000000;
  type metadata accessor for MLSActor();
  v0[31] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.createGroup(uniqueClientIdentifier:identifier:otherMembers:groupCreationContext:completion:), v4, v3);
}

{
  v1 = *(v0 + 232);

  *(v0 + 256) = v1(v2);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.createGroup(uniqueClientIdentifier:identifier:otherMembers:groupCreationContext:completion:), 0, 0);
}

{
  v80 = v0;
  if (*(v0[32] + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[7]), (v2 & 1) != 0))
  {
    v3 = v0[27];
    v4 = v0[24];
    v75 = v0[23];
    v5 = v0[21];
    v64 = v0[22];
    v6 = v0[20];
    v66 = v0[17];
    v67 = v0[26];
    v68 = v0[16];
    log = v0[19];
    v63 = v0[9];
    v65 = v0[7];
    v7 = (*(v0[32] + 56) + 48 * v1);
    v0[33] = *v7;
    v0[34] = v7[1];
    v0[35] = v7[2];
    v0[36] = v7[3];
    v0[37] = v7[4];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    v8 = *(v4 + 16);
    v8(v3, v63, v75);
    (*(v5 + 104))(v64, *MEMORY[0x277D4D278], v6);
    v9 = MLS.GroupCreationContext.metricCollector.modify();
    MetricCollector.end(metric:)();
    (*(v5 + 8))(v64, v6);
    v9(v0 + 2, 0);
    v8(v67, v63, v75);
    (*(v66 + 16))(log, v65, v68);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[26];
    v14 = v0[23];
    v15 = v0[24];
    v16 = v0[19];
    v18 = v0[16];
    v17 = v0[17];
    if (v12)
    {
      v72 = v11;
      v19 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v79[0] = v76;
      *v19 = 136315394;
      v20 = MLS.SigningContext.identifier.getter();
      v69 = v16;
      loga = v10;
      v22 = v21;
      v23 = *(v15 + 8);
      v23(v13, v14);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v79);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v17 + 8))(v69, v18);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v79);

      *(v19 + 14) = v28;
      _os_log_impl(&dword_26524C000, loga, v72, "MLSDaemon createGroup calling SwiftMLS { identifier: %s, uniqueClientIdentifier: %s }", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v76, -1, -1);
      MEMORY[0x2667577B0](v19, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
      v23 = *(v15 + 8);
      v23(v13, v14);
    }

    v0[38] = v23;
    v78 = (*MEMORY[0x277D4D078] + MEMORY[0x277D4D078]);
    v57 = swift_task_alloc();
    v0[39] = v57;
    *v57 = v0;
    v57[1] = closure #2 in MLSDaemon.createGroup(uniqueClientIdentifier:identifier:otherMembers:groupCreationContext:completion:);
    v58 = v0[27];
    v59 = v0[11];
    v60 = v0[12];
    v61 = v0[8];
    v62 = v0[6];

    return v78(v62, v59, v60, v61, v58);
  }

  else
  {
    v30 = v0[24];
    v29 = v0[25];
    v31 = v0[23];
    v33 = v0[17];
    v32 = v0[18];
    v34 = v0[16];
    v35 = v0[9];
    v36 = v0[7];

    (*(v30 + 16))(v29, v35, v31);
    (*(v33 + 16))(v32, v36, v34);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[24];
    v41 = v0[25];
    v42 = v0[23];
    v43 = v0[17];
    v44 = v0[18];
    v45 = v0[16];
    if (v39)
    {
      v74 = v37;
      v46 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v79[0] = v77;
      *v46 = 136315394;
      v47 = MLS.SigningContext.identifier.getter();
      v73 = v38;
      v49 = v48;
      (*(v40 + 8))(v41, v42);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, v79);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v43 + 8))(v44, v45);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v79);

      *(v46 + 14) = v54;
      _os_log_impl(&dword_26524C000, v74, v73, "MLSDaemon createGroup has no clientXPCProxy { identifier: %s, uniqueClientIdentifier: %s }", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v77, -1, -1);
      MEMORY[0x2667577B0](v46, -1, -1);
    }

    else
    {

      (*(v43 + 8))(v44, v45);
      (*(v40 + 8))(v41, v42);
    }

    (*(v0[14] + 104))(v0[15], *MEMORY[0x277D4D2B0], v0[13]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0], MEMORY[0x277D4D2C8]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();

    v55 = v0[1];

    return v55();
  }
}

{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = closure #2 in MLSDaemon.createGroup(uniqueClientIdentifier:identifier:otherMembers:groupCreationContext:completion:);
  }

  else
  {
    v2 = closure #2 in MLSDaemon.createGroup(uniqueClientIdentifier:identifier:otherMembers:groupCreationContext:completion:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t closure #2 in MLSDaemon.createGroup(uniqueClientIdentifier:identifier:otherMembers:groupCreationContext:completion:)(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 296);
  v10 = *(v8 + 304);
  v11 = *(v8 + 216);
  v12 = *(v8 + 184);
  swift_unknownObjectRelease(*(v8 + 264), a2, a3, a4, a5, a6, a7, a8);

  swift_unknownObjectRelease(v9, v13, v14, v15, v16, v17, v18, v19);
  v10(v11, v12);

  v20 = *(v8 + 8);

  return v20();
}

{
  v9 = *(v8 + 296);
  v10 = *(v8 + 304);
  v11 = *(v8 + 216);
  v12 = *(v8 + 184);
  swift_unknownObjectRelease(*(v8 + 264), a2, a3, a4, a5, a6, a7, a8);

  swift_unknownObjectRelease(v9, v13, v14, v15, v16, v17, v18, v19);
  v10(v11, v12);

  v20 = *(v8 + 8);

  return v20();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed MLS.UniqueClientIdentifier, @guaranteed [MLS.AllMember], @in_guaranteed MLS.GroupCreationContext<Data>) -> (@out MLS.GroupCreationProcessedContext<Data>, @error @owned Error)(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAC9AllMemberOGAC20GroupCreationContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAC9AllMemberOGAC20GroupCreationContextVy_10Foundation4DataVGtMR);
  v8 = *(a2 + *(v7 + 48));
  v9 = *(v7 + 64);
  v12 = (a3 + *a3);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v12(a1, a2, v8, a2 + v9);
}

uint64_t MLSDaemon.joinGroup(uniqueClientIdentifier:identifier:otherMembers:welcome:groupCreationContext:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12)
{
  outlined copy of Data._Representation(a1, a2);
  v18 = v12;
  v19 = a2;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(a1, v19);
  if (os_log_type_enabled(v20, v21))
  {
    v35 = a3;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v40 = v23;
    *v22 = 136315138;
    v24 = Data.description.getter();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v40);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_26524C000, v20, v21, "MLSDaemon joinGroup called { uniqueClientIdentifier: %s }", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x2667577B0](v23, -1, -1);
    v27 = v22;
    a3 = v35;
    MEMORY[0x2667577B0](v27, -1, -1);
  }

  type metadata accessor for MLS.GroupCreationError();
  v28 = swift_allocObject();
  v28[2] = a1;
  v28[3] = v19;
  v28[4] = a5;
  v28[5] = a6;
  v28[6] = a7;
  v34 = v19;
  v29 = a8;
  v28[7] = a8;
  v28[8] = a9;
  v28[9] = a10;
  v28[10] = v18;
  v30 = swift_allocObject();
  v30[2] = v18;
  v30[3] = a3;
  v30[4] = a4;
  v36 = swift_allocObject();
  *(v36 + 16) = &async function pointer to partial apply for closure #2 in MLSDaemon.joinGroup(uniqueClientIdentifier:identifier:otherMembers:welcome:groupCreationContext:completion:);
  *(v36 + 24) = v30;
  v31 = v18;
  outlined copy of Data._Representation(a1, v34);
  v32 = v31;
  outlined copy of Data._Representation(a5, a6);
  outlined copy of Data._Representation(a7, v29);
  outlined copy of Data._Representation(a9, a10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAC9AllMemberOGAC15IncomingMessageVy_AGGAC20GroupCreationContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAC9AllMemberOGAC15IncomingMessageVy_AGGAC20GroupCreationContextVy_10Foundation4DataVGtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMR);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.GroupCreationError and conformance MLS.GroupCreationError, MEMORY[0x277D4CF00], MEMORY[0x277D4CEF8]);
  lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.GroupCreationProcessedContext<Data> and conformance MLS.GroupCreationProcessedContext<A>, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO29GroupCreationProcessedContextVy_10Foundation4DataVGMR, MEMORY[0x277D4D190]);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #1 in MLSDaemon.joinGroup(uniqueClientIdentifier:identifier:otherMembers:welcome:groupCreationContext:completion:)@<X0>(char *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, NSObject *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v68 = a7;
  v69 = a8;
  v71 = a5;
  v72 = a6;
  v75 = a3;
  v76 = a4;
  v80 = a1;
  v74 = a9;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v79 = *(v73 - 8);
  v11 = MEMORY[0x28223BE20](v73, v10);
  v67 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v78 = &v63 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR);
  v70 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v63 - v17;
  v19 = type metadata accessor for MLS.UniqueClientIdentifier();
  v77 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19, v20);
  v23 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v63 - v25;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D020]);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v9)
  {
    v63 = v23;
    v64 = v15;
    v80 = v26;
    v65 = v18;
    v66 = v19;
    v28 = v78;
    v29 = v79;
    v30 = v73;
    v31 = v74;
    swift_allocObject();
    JSONDecoder.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
    lazy protocol witness table accessor for type [MLS.AllMember] and conformance <A> [A]();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v32 = v81;
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingMessage<MLS.AllMember> and conformance MLS.IncomingMessage<A>, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO15IncomingMessageVy_AC9AllMemberOGMR, MEMORY[0x277D4CD20]);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v76 = v32;

    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.GroupCreationContext<Data> and conformance MLS.GroupCreationContext<A>, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR, MEMORY[0x277D4CF98]);
    v33 = v30;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v75 = 0;

    v34 = v67;
    (*(v29 + 16))(v67, v28, v30);
    v35 = v77;
    v36 = v63;
    v37 = v66;
    (*(v77 + 16))(v63, v80, v66);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v71 = v38;
      v41 = v40;
      v72 = swift_slowAlloc();
      v81 = v72;
      *v41 = 136315394;
      LODWORD(v69) = v39;
      v42 = MLS.SigningContext.identifier.getter();
      v43 = v37;
      v44 = v35;
      v46 = v45;
      (*(v79 + 8))(v34, v30);
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v46, &v81);

      *(v41 + 4) = v47;
      *(v41 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v48 = v43;
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      (*(v44 + 8))(v36, v43);
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v81);
      v33 = v30;
      v53 = v48;

      *(v41 + 14) = v52;
      v54 = v71;
      _os_log_impl(&dword_26524C000, v71, v69, "MLSDaemon joinGroup decoded { identifier: %s, uniqueClientIdentifier: %s }", v41, 0x16u);
      v55 = v72;
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v55, -1, -1);
      MEMORY[0x2667577B0](v41, -1, -1);

      v56 = v79;
    }

    else
    {

      (*(v35 + 8))(v36, v37);
      v57 = v79;
      (*(v79 + 8))(v34, v30);
      v53 = v37;
      v44 = v35;
      v56 = v57;
    }

    v58 = v65;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAC9AllMemberOGAC15IncomingMessageVy_AGGAC20GroupCreationContextVy_10Foundation4DataVGtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_SayAC9AllMemberOGAC15IncomingMessageVy_AGGAC20GroupCreationContextVy_10Foundation4DataVGtMR);
    v60 = v59[12];
    v61 = v59[16];
    v62 = v59[20];
    (*(v44 + 32))(v31, v80, v53);
    *(v31 + v60) = v76;
    (*(v70 + 32))(v31 + v61, v58, v64);
    return (*(v56 + 32))(v31 + v62, v78, v33);
  }

  return result;
}

uint64_t closure #2 in MLSDaemon.joinGroup(uniqueClientIdentifier:identifier:otherMembers:welcome:groupCreationContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a3;
  v8[9] = a4;
  v8[6] = a1;
  v8[7] = a2;
  v9 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();
  v10 = type metadata accessor for MLS.UniqueClientIdentifier();
  v8[17] = v10;
  v8[18] = *(v10 - 8);
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v11 = type metadata accessor for Metric();
  v8[21] = v11;
  v8[22] = *(v11 - 8);
  v8[23] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO20GroupCreationContextVy_10Foundation4DataVGMR);
  v8[24] = v12;
  v8[25] = *(v12 - 8);
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.joinGroup(uniqueClientIdentifier:identifier:otherMembers:welcome:groupCreationContext:completion:), 0, 0);
}

uint64_t closure #2 in MLSDaemon.joinGroup(uniqueClientIdentifier:identifier:otherMembers:welcome:groupCreationContext:completion:)()
{
  v1 = *(v0[11] + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_clientXPCServer);
  v0[29] = v1;
  v2 = *v1 + 88;
  v0[30] = *v2;
  v0[31] = v2 & 0xFFFFFFFFFFFFLL | 0xB098000000000000;
  type metadata accessor for MLSActor();
  v0[32] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.joinGroup(uniqueClientIdentifier:identifier:otherMembers:welcome:groupCreationContext:completion:), v4, v3);
}

{
  v1 = *(v0 + 240);

  *(v0 + 264) = v1(v2);

  return MEMORY[0x2822009F8](closure #2 in MLSDaemon.joinGroup(uniqueClientIdentifier:identifier:otherMembers:welcome:groupCreationContext:completion:), 0, 0);
}

{
  v81 = v0;
  if (*(v0[33] + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[7]), (v2 & 1) != 0))
  {
    v3 = v0[28];
    v4 = v0[25];
    v76 = v0[24];
    v5 = v0[22];
    v65 = v0[23];
    v6 = v0[21];
    v67 = v0[18];
    v68 = v0[27];
    v69 = v0[17];
    log = v0[20];
    v64 = v0[10];
    v66 = v0[7];
    v7 = (*(v0[33] + 56) + 48 * v1);
    v0[34] = *v7;
    v0[35] = v7[1];
    v0[36] = v7[2];
    v0[37] = v7[3];
    v0[38] = v7[4];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    v8 = *(v4 + 16);
    v8(v3, v64, v76);
    (*(v5 + 104))(v65, *MEMORY[0x277D4D278], v6);
    v9 = MLS.GroupCreationContext.metricCollector.modify();
    MetricCollector.end(metric:)();
    (*(v5 + 8))(v65, v6);
    v9(v0 + 2, 0);
    v8(v68, v64, v76);
    (*(v67 + 16))(log, v66, v69);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[27];
    v14 = v0[24];
    v15 = v0[25];
    v16 = v0[20];
    v18 = v0[17];
    v17 = v0[18];
    if (v12)
    {
      v73 = v11;
      v19 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v80[0] = v77;
      *v19 = 136315394;
      v20 = MLS.SigningContext.identifier.getter();
      v70 = v16;
      loga = v10;
      v22 = v21;
      v23 = *(v15 + 8);
      v23(v13, v14);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v80);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v17 + 8))(v70, v18);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v80);

      *(v19 + 14) = v28;
      _os_log_impl(&dword_26524C000, loga, v73, "MLSDaemon joinGroup calling SwiftMLS { identifier: %s, uniqueClientIdentifier: %s }", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v77, -1, -1);
      MEMORY[0x2667577B0](v19, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
      v23 = *(v15 + 8);
      v23(v13, v14);
    }

    v0[39] = v23;
    v79 = (*MEMORY[0x277D4D108] + MEMORY[0x277D4D108]);
    v57 = swift_task_alloc();
    v0[40] = v57;
    *v57 = v0;
    v57[1] = closure #2 in MLSDaemon.joinGroup(uniqueClientIdentifier:identifier:otherMembers:welcome:groupCreationContext:completion:);
    v58 = v0[28];
    v59 = v0[12];
    v60 = v0[13];
    v61 = v0[8];
    v62 = v0[9];
    v63 = v0[6];

    return v79(v63, v59, v60, v61, v62, v58);
  }

  else
  {
    v30 = v0[25];
    v29 = v0[26];
    v31 = v0[24];
    v33 = v0[18];
    v32 = v0[19];
    v34 = v0[17];
    v35 = v0[10];
    v36 = v0[7];

    (*(v30 + 16))(v29, v35, v31);
    (*(v33 + 16))(v32, v36, v34);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[25];
    v41 = v0[26];
    v42 = v0[24];
    v43 = v0[18];
    v44 = v0[19];
    v45 = v0[17];
    if (v39)
    {
      v75 = v37;
      v46 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v80[0] = v78;
      *v46 = 136315394;
      v47 = MLS.SigningContext.identifier.getter();
      v74 = v38;
      v49 = v48;
      (*(v40 + 8))(v41, v42);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, v80);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v43 + 8))(v44, v45);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v80);

      *(v46 + 14) = v54;
      _os_log_impl(&dword_26524C000, v75, v74, "MLSDaemon joinGroup has no clientXPCProxy { identifier: %s, uniqueClientIdentifier: %s }", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v78, -1, -1);
      MEMORY[0x2667577B0](v46, -1, -1);
    }

    else
    {

      (*(v43 + 8))(v44, v45);
      (*(v40 + 8))(v41, v42);
    }

    (*(v0[15] + 104))(v0[16], *MEMORY[0x277D4D2B0], v0[14]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0], MEMORY[0x277D4D2C8]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();

    v55 = v0[1];

    return v55();
  }
}

{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = closure #2 in MLSDaemon.joinGroup(uniqueClientIdentifier:identifier:otherMembers:welcome:groupCreationContext:completion:);
  }

  else
  {
    v2 = closure #2 in MLSDaemon.joinGroup(uniqueClientIdentifier:identifier:otherMembers:welcome:groupCreationContext:completion:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}