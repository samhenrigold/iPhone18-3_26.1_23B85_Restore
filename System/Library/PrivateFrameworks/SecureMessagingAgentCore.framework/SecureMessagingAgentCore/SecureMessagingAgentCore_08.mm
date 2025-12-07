sqlite3_stmt *KeyPackageModel.updateStatement(_:)(sqlite3 *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v10 = strdup("UPDATE Key_Package_Table SET\n    key_package = ?\nWHERE\n    client_id = ?;");
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

  v12 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_32;
    }

    v14 = *(a4 + 16);
    v15 = *(a4 + 24);
    LODWORD(a4) = a5;
    v11 = __DataStorage._bytes.getter();
    v16 = v11;
    if (v11)
    {
      LODWORD(a4) = a5;
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
        a4 = v19;
      }

      else
      {
        a4 = 0;
      }

      if (a4 >= 0xFFFFFFFF80000000)
      {
        if (a4 <= 0x7FFFFFFF)
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
    v20 = a4;
    v21 = (a4 >> 32) - a4;
    if (a4 >> 32 < a4)
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
        a4 = v21;
      }

      else
      {
        a4 = v11;
      }

      if (v16)
      {
        if (a4 < 0xFFFFFFFF80000000)
        {
          __break(1u);
          goto LABEL_79;
        }

        if (a4 > 0x7FFFFFFF)
        {
          __break(1u);
LABEL_32:
          *(&v45 + 6) = 0;
          *&v45 = 0;
          v11 = ppStmt[0];
          if (one-time initialization token for SQLITE_TRANSIENT == -1)
          {
LABEL_33:
            a5 = SQLITE_TRANSIENT;
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
        LODWORD(a4) = 0;
      }

LABEL_35:
      v11 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        v39 = ppStmt[0];
        swift_once();
        v11 = v39;
      }

      a5 = SQLITE_TRANSIENT;
      v13 = v16;
      goto LABEL_38;
    }

    LODWORD(a4) = a5;
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

  *&v45 = a4;
  WORD4(v45) = a5;
  BYTE10(v45) = BYTE2(a5);
  BYTE11(v45) = BYTE3(a5);
  BYTE12(v45) = BYTE4(a5);
  BYTE13(v45) = BYTE5(a5);
  v11 = ppStmt[0];
  LODWORD(a4) = BYTE6(a5);
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_79:
    v40 = v11;
    swift_once();
    v11 = v40;
  }

  a5 = SQLITE_TRANSIENT;
  v13 = &v45;
LABEL_38:
  v22 = a4;
LABEL_39:
  v11 = sqlite3_bind_blob(v11, 1, v13, v22, a5);
  if (v11)
  {
    goto LABEL_76;
  }

  v23 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v23 != 2)
    {
      goto LABEL_68;
    }

    v25 = *(a2 + 16);
    v26 = *(a2 + 24);
    a2 = __DataStorage._bytes.getter();
    if (a2)
    {
      v27 = __DataStorage._offset.getter();
      if (__OFSUB__(v25, v27))
      {
        goto LABEL_92;
      }

      a2 += v25 - v27;
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

      if (a2)
      {
        a4 = v29;
      }

      else
      {
        a4 = 0;
      }

      if (a4 >= 0xFFFFFFFF80000000)
      {
        if (a4 <= 0x7FFFFFFF)
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
    v30 = a2;
    v31 = (a2 >> 32) - a2;
    if (a2 >> 32 < a2)
    {
      __break(1u);
      goto LABEL_89;
    }

    a2 = __DataStorage._bytes.getter();
    if (!a2)
    {
      goto LABEL_62;
    }

    v32 = __DataStorage._offset.getter();
    if (!__OFSUB__(v30, v32))
    {
      a2 += v30 - v32;
LABEL_62:
      v33 = MEMORY[0x2667557A0]();
      if (v33 >= v31)
      {
        a4 = v31;
      }

      else
      {
        a4 = v33;
      }

      if (!a2)
      {
        LODWORD(a4) = 0;
        goto LABEL_72;
      }

      if (a4 < 0xFFFFFFFF80000000)
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

      if (a4 <= 0x7FFFFFFF)
      {
LABEL_72:
        v11 = ppStmt[0];
        if (one-time initialization token for SQLITE_TRANSIENT == -1)
        {
LABEL_73:
          v24 = a2;
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

  *&v45 = a2;
  WORD4(v45) = a3;
  BYTE10(v45) = BYTE2(a3);
  BYTE11(v45) = BYTE3(a3);
  BYTE12(v45) = BYTE4(a3);
  BYTE13(v45) = BYTE5(a3);
  v11 = ppStmt[0];
  LODWORD(a4) = BYTE6(a3);
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_87:
    v43 = v11;
    swift_once();
    v11 = v43;
  }

  v24 = &v45;
LABEL_74:
  v34 = a4;
LABEL_75:
  if (sqlite3_bind_blob(v11, 2, v24, v34, a5))
  {
    goto LABEL_76;
  }

  return ppStmt[0];
}

sqlite3_stmt *KeyPackageModel.deleteStatement(_:)(sqlite3 *a1, uint64_t a2, unint64_t a3)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v6 = strdup("DELETE FROM Key_Package_Table WHERE client_id = ?;");
  if (!v6)
  {
LABEL_49:
    __break(1u);
  }

  v7 = sqlite3_prepare_v2(a1, v6, -1, ppStmt, 0);
  if (v7)
  {
    goto LABEL_40;
  }

  v8 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v8)
    {
      *&v27 = a2;
      WORD4(v27) = a3;
      BYTE10(v27) = BYTE2(a3);
      BYTE11(v27) = BYTE3(a3);
      BYTE12(v27) = BYTE4(a3);
      BYTE13(v27) = BYTE5(a3);
      v9 = ppStmt[0];
      LODWORD(a2) = BYTE6(a3);
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_6:
        v10 = SQLITE_TRANSIENT;
        v11 = &v27;
        goto LABEL_39;
      }

LABEL_42:
      v25 = v9;
      swift_once();
      v9 = v25;
      goto LABEL_6;
    }

    goto LABEL_21;
  }

  if (v8 != 2)
  {
    goto LABEL_32;
  }

  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = __DataStorage._bytes.getter();
  if (v14)
  {
    v15 = __DataStorage._offset.getter();
    if (__OFSUB__(v12, v15))
    {
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v14 += v12 - v15;
  }

  v16 = __OFSUB__(v13, v12);
  v17 = v13 - v12;
  if (v16)
  {
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v7 = MEMORY[0x2667557A0]();
  if (v7 >= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v7;
  }

  if (v14)
  {
    a2 = v18;
  }

  else
  {
    a2 = 0;
  }

  if (a2 < 0xFFFFFFFF80000000)
  {
    goto LABEL_46;
  }

  if (a2 <= 0x7FFFFFFF)
  {
    goto LABEL_36;
  }

  __break(1u);
LABEL_21:
  if (a2 >> 32 >= a2)
  {
    v14 = __DataStorage._bytes.getter();
    if (!v14)
    {
      goto LABEL_25;
    }

    v19 = __DataStorage._offset.getter();
    if (!__OFSUB__(a2, v19))
    {
      v14 += a2 - v19;
LABEL_25:
      v9 = MEMORY[0x2667557A0]();
      if (v9 >= (a2 >> 32) - a2)
      {
        a2 = (a2 >> 32) - a2;
      }

      else
      {
        a2 = v9;
      }

      if (v14)
      {
        if (a2 < 0xFFFFFFFF80000000)
        {
          __break(1u);
          goto LABEL_42;
        }

        if (a2 > 0x7FFFFFFF)
        {
          __break(1u);
LABEL_32:
          *(&v27 + 6) = 0;
          *&v27 = 0;
          v7 = ppStmt[0];
          if (one-time initialization token for SQLITE_TRANSIENT == -1)
          {
            goto LABEL_33;
          }

          goto LABEL_44;
        }
      }

      else
      {
        LODWORD(a2) = 0;
      }

LABEL_36:
      v9 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        v24 = ppStmt[0];
        swift_once();
        v9 = v24;
      }

      v10 = SQLITE_TRANSIENT;
      v11 = v14;
LABEL_39:
      if (sqlite3_bind_blob(v9, 1, v11, a2, v10))
      {
        goto LABEL_40;
      }

      return ppStmt[0];
    }

    goto LABEL_48;
  }

  __break(1u);
LABEL_44:
  v26 = v7;
  swift_once();
  v7 = v26;
LABEL_33:
  if (!sqlite3_bind_blob(v7, 1, &v27, 0, SQLITE_TRANSIENT))
  {
    return ppStmt[0];
  }

LABEL_40:
  *&v27 = 0x726F7272456C7173;
  *(&v27 + 1) = 0xE90000000000003ALL;
  v21 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v21);

  v22 = v27;
  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v23 = 0;
  *(v23 + 8) = v22;
  return swift_willThrow();
}

unint64_t closure #1 in variable initialization expression of static KeyPackageModel.converter(sqlite3_stmt *a1)
{
  if (sqlite3_column_type(a1, 0) == 5)
  {
    goto LABEL_7;
  }

  v3 = sqlite3_column_blob(a1, 0);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = v3;
  v5 = sqlite3_column_bytes(a1, 0);
  v1 = specialized Data.init(bytes:count:)(v4, v5);
  v7 = v6;
  if (sqlite3_column_type(a1, 1) == 5 || (v8 = sqlite3_column_blob(a1, 1)) == 0)
  {
    outlined consume of Data._Representation(v1, v7);
LABEL_7:
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v11 = 3;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    swift_willThrow();
    return v1;
  }

  v9 = v8;
  v10 = sqlite3_column_bytes(a1, 1);
  specialized Data.init(bytes:count:)(v9, v10);
  return v1;
}

uint64_t (*static KeyPackageModel.converter.getter())()
{
  swift_beginAccess();
  v0 = static KeyPackageModel.converter;

  return v0;
}

uint64_t static KeyPackageModel.converter.setter(uint64_t (*a1)(), uint64_t a2)
{
  swift_beginAccess();
  static KeyPackageModel.converter = a1;
  qword_281EF87E0 = a2;
}

uint64_t key path getter for static KeyPackageModel.converter : KeyPackageModel.Type@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = static KeyPackageModel.converter;
  v2 = qword_281EF87E0;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned KeyPackageModel?, @error @owned Error)partial apply;
  a1[1] = v4;
}

uint64_t key path setter for static KeyPackageModel.converter : KeyPackageModel.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_beginAccess();
  static KeyPackageModel.converter = thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out ClientStateModel?, @error @owned Error)partial apply;
  qword_281EF87E0 = v3;
}

uint64_t (*protocol witness for static SqlSchema.converter.getter in conformance KeyPackageModel())@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v1 = static KeyPackageModel.converter;
  v0 = qword_281EF87E0;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned KeyPackageModel?, @error @owned Error)partial apply;
}

uint64_t *KeyPackageQuery.converter.unsafeMutableAddressor()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  return &static KeyPackageQuery.converter;
}

uint64_t static KeyPackageQuery.converter.getter()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static KeyPackageQuery.converter;

  return v0;
}

uint64_t static KeyPackageQuery.converter.setter(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static KeyPackageQuery.converter = a1;
  qword_280016958 = a2;
}

uint64_t (*static KeyPackageQuery.converter.modify(uint64_t a1))()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static StateMachineQuery.converter.modify;
}

uint64_t key path getter for static KeyPackageQuery.converter : KeyPackageQuery.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static KeyPackageQuery.converter;
  v2 = qword_280016958;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned KeyPackageModel?, @error @owned Error);
  a1[1] = v4;
}

uint64_t key path setter for static KeyPackageQuery.converter : KeyPackageQuery.Type(uint64_t *a1)
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
  static KeyPackageQuery.converter = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out ClientStateModel?, @error @owned Error);
  qword_280016958 = v3;
}

sqlite3_stmt *KeyPackageQuery.queryStatement(_:)(sqlite3 *a1, uint64_t a2, unint64_t a3)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v6 = strdup("SELECT * FROM Key_Package_Table WHERE client_id = ? LIMIT 1;");
  if (!v6)
  {
LABEL_49:
    __break(1u);
  }

  v7 = sqlite3_prepare_v2(a1, v6, -1, ppStmt, 0);
  if (v7)
  {
    goto LABEL_40;
  }

  v8 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v8)
    {
      *&v27 = a2;
      WORD4(v27) = a3;
      BYTE10(v27) = BYTE2(a3);
      BYTE11(v27) = BYTE3(a3);
      BYTE12(v27) = BYTE4(a3);
      BYTE13(v27) = BYTE5(a3);
      v9 = ppStmt[0];
      LODWORD(a2) = BYTE6(a3);
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_6:
        v10 = SQLITE_TRANSIENT;
        v11 = &v27;
        goto LABEL_39;
      }

LABEL_42:
      v25 = v9;
      swift_once();
      v9 = v25;
      goto LABEL_6;
    }

    goto LABEL_21;
  }

  if (v8 != 2)
  {
    goto LABEL_32;
  }

  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = __DataStorage._bytes.getter();
  if (v14)
  {
    v15 = __DataStorage._offset.getter();
    if (__OFSUB__(v12, v15))
    {
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v14 += v12 - v15;
  }

  v16 = __OFSUB__(v13, v12);
  v17 = v13 - v12;
  if (v16)
  {
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v7 = MEMORY[0x2667557A0]();
  if (v7 >= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v7;
  }

  if (v14)
  {
    a2 = v18;
  }

  else
  {
    a2 = 0;
  }

  if (a2 < 0xFFFFFFFF80000000)
  {
    goto LABEL_46;
  }

  if (a2 <= 0x7FFFFFFF)
  {
    goto LABEL_36;
  }

  __break(1u);
LABEL_21:
  if (a2 >> 32 >= a2)
  {
    v14 = __DataStorage._bytes.getter();
    if (!v14)
    {
      goto LABEL_25;
    }

    v19 = __DataStorage._offset.getter();
    if (!__OFSUB__(a2, v19))
    {
      v14 += a2 - v19;
LABEL_25:
      v9 = MEMORY[0x2667557A0]();
      if (v9 >= (a2 >> 32) - a2)
      {
        a2 = (a2 >> 32) - a2;
      }

      else
      {
        a2 = v9;
      }

      if (v14)
      {
        if (a2 < 0xFFFFFFFF80000000)
        {
          __break(1u);
          goto LABEL_42;
        }

        if (a2 > 0x7FFFFFFF)
        {
          __break(1u);
LABEL_32:
          *(&v27 + 6) = 0;
          *&v27 = 0;
          v7 = ppStmt[0];
          if (one-time initialization token for SQLITE_TRANSIENT == -1)
          {
            goto LABEL_33;
          }

          goto LABEL_44;
        }
      }

      else
      {
        LODWORD(a2) = 0;
      }

LABEL_36:
      v9 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        v24 = ppStmt[0];
        swift_once();
        v9 = v24;
      }

      v10 = SQLITE_TRANSIENT;
      v11 = v14;
LABEL_39:
      if (sqlite3_bind_blob(v9, 1, v11, a2, v10))
      {
        goto LABEL_40;
      }

      return ppStmt[0];
    }

    goto LABEL_48;
  }

  __break(1u);
LABEL_44:
  v26 = v7;
  swift_once();
  v7 = v26;
LABEL_33:
  if (!sqlite3_bind_blob(v7, 1, &v27, 0, SQLITE_TRANSIENT))
  {
    return ppStmt[0];
  }

LABEL_40:
  *&v27 = 0x726F7272456C7173;
  *(&v27 + 1) = 0xE90000000000003ALL;
  v21 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v21);

  v22 = v27;
  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v23 = 0;
  *(v23 + 8) = v22;
  return swift_willThrow();
}

uint64_t (*protocol witness for static SqlQuery.converter.getter in conformance KeyPackageQuery())@<X0>(uint64_t *a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = static KeyPackageQuery.converter;
  v0 = qword_280016958;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned KeyPackageModel?, @error @owned Error);
}

sqlite3_stmt *specialized static KeyPackageModel.createStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("CREATE TABLE IF NOT EXISTS Key_Package_Table (\n    client_id BLOB NOT NULL PRIMARY KEY,\n    key_package BLOB NOT NULL\n);");
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

sqlite3_stmt *specialized static KeyPackageModel.dropStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("DROP TABLE IF EXISTS Key_Package_Table");
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

uint64_t sub_265312930()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned KeyPackageModel?, @error @owned Error)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned KeyPackageModel?, @error @owned Error)(a1, a2);
}

{
  result = (*(v2 + 16))(*a1);
  if (!v3)
  {
    *a2 = result;
    a2[1] = v6;
    a2[2] = v7;
    a2[3] = v8;
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned KeyPackageModel?, @error @owned Error)@<X0>(uint64_t *a1@<X8>)
{
  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned KeyPackageModel?, @error @owned Error)(a1);
}

{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t KDSRegistrationStateMachine.__allocating_init(stateMachineOperator:networkOperator:simUniqueID:simLabelID:uriSupportedState:uniqueClientIdentifier:devicePushToken:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v13 = a1[3];
  v14 = a1[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a1, v13);
  v16 = a2[3];
  v17 = a2[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a2, v16);
  v19 = specialized KDSRegistrationStateMachine.__allocating_init(stateMachineOperator:networkOperator:simUniqueID:simLabelID:uriSupportedState:uniqueClientIdentifier:devicePushToken:)(v15, v18, a3, a4, a5, a6, a7, a8, a9, a10, v21, v13, v16, v14, v17);
  outlined consume of Data?(a9, a10);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v19;
}

unint64_t KDSRegistrationStateMachine.RegistrationState.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x7473696765726564;
    v6 = 0x73736563637573;
    if (a1 != 8)
    {
      v6 = 0x64656C696166;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x746E656449746567;
    if (a1 != 5)
    {
      v7 = 0x7265747369676572;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x676E6974696177;
    v2 = 0xD000000000000012;
    v3 = 0x6E65696C43746567;
    if (a1 != 3)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x7964616572;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance KDSRegistrationStateMachine.RegistrationState.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized KDSRegistrationStateMachine.RegistrationState.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.RegistrationState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.CodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.RegistrationState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.CodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t _s24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationF0O21GetClientIDCodingKeys33_229819B7868B1079C93FA683752F9003LLOs9CodingKeyAAsAIP11stringValuexSgSS_tcfCTW_0@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys(uint64_t a1)
{
  ClientIDCodingKeys = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys();

  return MEMORY[0x2821FE718](a1, ClientIDCodingKeys);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys(uint64_t a1)
{
  ClientIDCodingKeys = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys();

  return MEMORY[0x2821FE720](a1, ClientIDCodingKeys);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys(uint64_t a1)
{
  IdentityCodingKeys = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys();

  return MEMORY[0x2821FE718](a1, IdentityCodingKeys);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys(uint64_t a1)
{
  IdentityCodingKeys = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys();

  return MEMORY[0x2821FE720](a1, IdentityCodingKeys);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys(uint64_t a1)
{
  PhoneAuthInfoCodingKeys = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys();

  return MEMORY[0x2821FE718](a1, PhoneAuthInfoCodingKeys);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys(uint64_t a1)
{
  PhoneAuthInfoCodingKeys = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys();

  return MEMORY[0x2821FE720](a1, PhoneAuthInfoCodingKeys);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys(uint64_t a1)
{
  PhoneNumberInfoCodingKeys = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys();

  return MEMORY[0x2821FE718](a1, PhoneNumberInfoCodingKeys);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys(uint64_t a1)
{
  PhoneNumberInfoCodingKeys = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys();

  return MEMORY[0x2821FE720](a1, PhoneNumberInfoCodingKeys);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys(uint64_t a1)
{
  ready = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys();

  return MEMORY[0x2821FE718](a1, ready);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys(uint64_t a1)
{
  ready = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys();

  return MEMORY[0x2821FE720](a1, ready);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KDSRegistrationStateMachine.RegistrationState.encode(to:)(void *a1, int a2)
{
  v89 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O16FailedCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O16FailedCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v82 = *(v3 - 8);
  v83 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v81 = &v64 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O17SuccessCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O17SuccessCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v79 = *(v6 - 8);
  v80 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v78 = &v64 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O20DeregisterCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O20DeregisterCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v76 = *(v9 - 8);
  v77 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v75 = &v64 - v11;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O18RegisterCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O18RegisterCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74, v12);
  v72 = &v64 - v13;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O21GetIdentityCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O21GetIdentityCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71, v14);
  v69 = &v64 - v15;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O26GetPhoneAuthInfoCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O26GetPhoneAuthInfoCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68, v16);
  v66 = &v64 - v17;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O21GetClientIDCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O21GetClientIDCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v88 = *(v65 - 8);
  MEMORY[0x28223BE20](v65, v18);
  v87 = &v64 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O28GetPhoneNumberInfoCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O28GetPhoneNumberInfoCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v21 = *(v20 - 8);
  v85 = v20;
  v86 = v21;
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v64 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O15ReadyCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O15ReadyCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v64 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v64 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O17WaitingCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O17WaitingCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v84 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v64 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O10CodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O10CodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v34 = *(v33 - 8);
  v91 = v33;
  v92 = v34;
  MEMORY[0x28223BE20](v33, v35);
  v37 = &v64 - v36;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.CodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.CodingKeys();
  v90 = v37;
  v38 = v89;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v38 <= 0x15u)
  {
    v79 = v25;
    v80 = v29;
    v45 = v86;
    v44 = v87;
    v47 = v84;
    v46 = v85;
    v48 = v88;
    if (v38 > 0x13u)
    {
      if (v38 != 20)
      {
        if (v38 != 21)
        {
          goto LABEL_28;
        }

        v96 = 3;
        lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys();
        v52 = v44;
        v41 = v90;
        v40 = v91;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v48 + 8))(v52, v65);
        return (*(v92 + 8))(v41, v40);
      }

      v95[0] = 2;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys();
      v50 = v90;
      v51 = v91;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v45 + 8))(v24, v46);
    }

    else
    {
      if (v38 == 18)
      {
        v93 = 0;
        lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys();
        v41 = v90;
        v40 = v91;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v47 + 8))(v32, v80);
        return (*(v92 + 8))(v41, v40);
      }

      if (v38 != 19)
      {
        goto LABEL_28;
      }

      v94 = 1;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys();
      v49 = v28;
      v50 = v90;
      v51 = v91;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v64 + 8))(v49, v79);
    }

    return (*(v92 + 8))(v50, v51);
  }

  if (v38 <= 0x17u)
  {
    if (v38 == 22)
    {
      v97 = 4;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys();
      v59 = v66;
      v41 = v90;
      v40 = v91;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v54 = *(v67 + 8);
      v55 = v59;
      v56 = &v104;
    }

    else
    {
      if (v38 != 23)
      {
        goto LABEL_28;
      }

      v98 = 5;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys();
      v53 = v69;
      v41 = v90;
      v40 = v91;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v54 = *(v70 + 8);
      v55 = v53;
      v56 = &v105;
    }

    v42 = *(v56 - 32);
LABEL_25:
    v54(v55, v42);
    return (*(v92 + 8))(v41, v40);
  }

  if (v38 != 24)
  {
    if (v38 == 25)
    {
      v100 = 7;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys();
      v39 = v75;
      v41 = v90;
      v40 = v91;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v43 = v76;
      v42 = v77;
      goto LABEL_24;
    }

    if (v38 == 26)
    {
      v101 = 8;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys();
      v39 = v78;
      v41 = v90;
      v40 = v91;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v43 = v79;
      v42 = v80;
LABEL_24:
      v54 = *(v43 + 8);
      v55 = v39;
      goto LABEL_25;
    }

LABEL_28:
    v103 = 9;
    lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys();
    v60 = v81;
    v62 = v90;
    v61 = v91;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v102 = v38;
    lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError();
    v63 = v83;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v82 + 8))(v60, v63);
    return (*(v92 + 8))(v62, v61);
  }

  v99 = 6;
  lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys();
  v58 = v72;
  v41 = v90;
  v40 = v91;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v73 + 8))(v58, v74);
  return (*(v92 + 8))(v41, v40);
}

unint64_t KDSRegistrationStateMachine.StateMachineError.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6F5464656C696166;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
    case 9:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x685064656C696166;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
    case 8:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0x43676E697373696DLL;
      break;
    case 12:
      result = 0x54676E697373696DLL;
      break;
    case 13:
      result = 0xD000000000000017;
      break;
    case 14:
    case 16:
      result = 0xD00000000000001CLL;
      break;
    case 15:
      result = 0xD000000000000011;
      break;
    case 17:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance KDSRegistrationStateMachine.RegistrationState@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = specialized KDSRegistrationStateMachine.RegistrationState.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance KDSRegistrationStateMachine.StateMachineError.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized KDSRegistrationStateMachine.StateMachineError.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.StateMachineError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.CodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.StateMachineError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.CodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys(uint64_t a1)
{
  ClientIDCodingKeys = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys();

  return MEMORY[0x2821FE718](a1, ClientIDCodingKeys);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys(uint64_t a1)
{
  ClientIDCodingKeys = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys();

  return MEMORY[0x2821FE720](a1, ClientIDCodingKeys);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys(uint64_t a1)
{
  IdentityCodingKeys = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys();

  return MEMORY[0x2821FE718](a1, IdentityCodingKeys);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys(uint64_t a1)
{
  IdentityCodingKeys = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys();

  return MEMORY[0x2821FE720](a1, IdentityCodingKeys);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys(uint64_t a1)
{
  PhoneNumberCodingKeys = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys();

  return MEMORY[0x2821FE718](a1, PhoneNumberCodingKeys);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys(uint64_t a1)
{
  PhoneNumberCodingKeys = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys();

  return MEMORY[0x2821FE720](a1, PhoneNumberCodingKeys);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys(uint64_t a1)
{
  Coding = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys();

  return MEMORY[0x2821FE718](a1, Coding);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys(uint64_t a1)
{
  Coding = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys();

  return MEMORY[0x2821FE720](a1, Coding);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys(uint64_t a1)
{
  HeartbeatIntervalCoding = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys();

  return MEMORY[0x2821FE718](a1, HeartbeatIntervalCoding);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys(uint64_t a1)
{
  HeartbeatIntervalCoding = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys();

  return MEMORY[0x2821FE720](a1, HeartbeatIntervalCoding);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KDSRegistrationStateMachine.StateMachineError.encode(to:)(void *a1, uint64_t a2)
{
  v126 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO37MissingServerVendedClientIDCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO37MissingServerVendedClientIDCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v124 = *(v3 - 8);
  v125 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v123 = &v75 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO38MissingNextHeartbeatIntervalCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO38MissingNextHeartbeatIntervalCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v121 = *(v6 - 8);
  v122 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v120 = &v75 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO27MissingKeyPackageCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO27MissingKeyPackageCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v118 = *(v9 - 8);
  v119 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v117 = &v75 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO38MissingPhoneNumberCredentialCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO38MissingPhoneNumberCredentialCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v115 = *(v12 - 8);
  v116 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v114 = &v75 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO33MissingResponseIdentityCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO33MissingResponseIdentityCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v112 = *(v15 - 8);
  v113 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v111 = &v75 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO23MissingTelURICodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO23MissingTelURICodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v109 = *(v18 - 8);
  v110 = v18;
  MEMORY[0x28223BE20](v18, v19);
  v108 = &v75 - v20;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO20MissingCSRCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO20MissingCSRCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107, v21);
  v105 = &v75 - v22;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO32MissingParticipantInfoCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO32MissingParticipantInfoCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104, v23);
  v102 = &v75 - v24;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO30MissingPhoneAuthInfoCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO30MissingPhoneAuthInfoCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101, v25);
  v99 = &v75 - v26;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO019InvalidURISupportedI10CodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO019InvalidURISupportedI10CodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98, v27);
  v96 = &v75 - v28;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO27FailedGetClientIDCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO27FailedGetClientIDCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95, v29);
  v93 = &v75 - v30;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO34FailedRegisterKeyPackageCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO34FailedRegisterKeyPackageCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92, v31);
  v90 = &v75 - v32;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO27FailedGetIdentityCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO27FailedGetIdentityCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89, v33);
  v87 = &v75 - v34;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO25FailedPhoneAuthCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO25FailedPhoneAuthCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86, v35);
  v84 = &v75 - v36;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO30FailedGetPhoneNumberCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO30FailedGetPhoneNumberCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83, v37);
  v81 = &v75 - v38;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO39InvalidClientUniqueIdentifierCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO39InvalidClientUniqueIdentifierCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80, v39);
  v78 = &v75 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO28MissingSimUniqueIDCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO28MissingSimUniqueIDCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v77 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v42);
  v44 = &v75 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO22FailedToLoadCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO22FailedToLoadCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v76 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v46);
  v48 = &v75 - v47;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO10CodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO10CodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v49 = *(v128 - 8);
  MEMORY[0x28223BE20](v128, v50);
  v52 = &v75 - v51;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.CodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.CodingKeys();
  v127 = v52;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v53 = (v49 + 8);
  switch(v126)
  {
    case 1:
      v130 = 1;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys();
      v58 = v127;
      v59 = v128;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v77 + 8))(v44, v41);
      goto LABEL_22;
    case 2:
      v130 = 2;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys();
      v68 = v78;
      v58 = v127;
      v59 = v128;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v63 = *(v79 + 8);
      v64 = v68;
      v65 = &v112;
      goto LABEL_21;
    case 3:
      v130 = 3;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys();
      v69 = v81;
      v58 = v127;
      v59 = v128;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v63 = *(v82 + 8);
      v64 = v69;
      v65 = &v115;
      goto LABEL_21;
    case 4:
      v130 = 4;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys();
      v66 = v84;
      v58 = v127;
      v59 = v128;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v63 = *(v85 + 8);
      v64 = v66;
      v65 = &v118;
      goto LABEL_21;
    case 5:
      v130 = 5;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys();
      v71 = v87;
      v58 = v127;
      v59 = v128;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v63 = *(v88 + 8);
      v64 = v71;
      v65 = &v121;
      goto LABEL_21;
    case 6:
      v130 = 6;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys();
      v72 = v90;
      v58 = v127;
      v59 = v128;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v63 = *(v91 + 8);
      v64 = v72;
      v65 = &v124;
      goto LABEL_21;
    case 7:
      v130 = 7;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys();
      v70 = v93;
      v58 = v127;
      v59 = v128;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v63 = *(v94 + 8);
      v64 = v70;
      v65 = &v127;
      goto LABEL_21;
    case 8:
      v130 = 8;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys();
      v74 = v96;
      v58 = v127;
      v59 = v128;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v63 = *(v97 + 8);
      v64 = v74;
      v65 = &v129;
      goto LABEL_21;
    case 9:
      v130 = 9;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys();
      v67 = v99;
      v58 = v127;
      v59 = v128;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v63 = *(v100 + 8);
      v64 = v67;
      v65 = &v131;
      goto LABEL_21;
    case 10:
      v130 = 10;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys();
      v73 = v102;
      v58 = v127;
      v59 = v128;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v63 = *(v103 + 8);
      v64 = v73;
      v65 = &v132;
      goto LABEL_21;
    case 11:
      v130 = 11;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys();
      v62 = v105;
      v58 = v127;
      v59 = v128;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v63 = *(v106 + 8);
      v64 = v62;
      v65 = &v133;
LABEL_21:
      v63(v64, *(v65 - 32));
      goto LABEL_22;
    case 12:
      v130 = 12;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys();
      v57 = v108;
      v58 = v127;
      v59 = v128;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v61 = v109;
      v60 = v110;
      goto LABEL_17;
    case 13:
      v130 = 13;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys();
      v57 = v111;
      v58 = v127;
      v59 = v128;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v61 = v112;
      v60 = v113;
      goto LABEL_17;
    case 14:
      v130 = 14;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys();
      v57 = v114;
      v58 = v127;
      v59 = v128;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v61 = v115;
      v60 = v116;
      goto LABEL_17;
    case 15:
      v130 = 15;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys();
      v57 = v117;
      v58 = v127;
      v59 = v128;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v61 = v118;
      v60 = v119;
      goto LABEL_17;
    case 16:
      v130 = 16;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys();
      v57 = v120;
      v58 = v127;
      v59 = v128;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v61 = v121;
      v60 = v122;
      goto LABEL_17;
    case 17:
      v130 = 17;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys();
      v57 = v123;
      v58 = v127;
      v59 = v128;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v61 = v124;
      v60 = v125;
LABEL_17:
      (*(v61 + 8))(v57, v60);
LABEL_22:
      result = (*v53)(v58, v59);
      break;
    default:
      v130 = 0;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys();
      v54 = v127;
      v55 = v128;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v76 + 8))(v48, v45);
      result = (*v53)(v54, v55);
      break;
  }

  return result;
}

Swift::Int KDSRegistrationStateMachine.StateMachineError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x266756F60](a1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Decodable.init(from:) in conformance KDSRegistrationStateMachine.StateMachineError@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = specialized KDSRegistrationStateMachine.StateMachineError.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t KDSRegistrationStateMachine.registrationState.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t KDSRegistrationStateMachine.simUniqueID.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t KDSRegistrationStateMachine.simLabelID.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t key path setter for KDSRegistrationStateMachine.uriSupportedState : KDSRegistrationStateMachine(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KDSRegistration.URISupportedState();
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return (*(**a2 + 272))(v7);
}

uint64_t KDSRegistrationStateMachine.uriSupportedState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_uriSupportedState;
  swift_beginAccess();
  v4 = type metadata accessor for KDSRegistration.URISupportedState();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t KDSRegistrationStateMachine.uriSupportedState.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_uriSupportedState;
  swift_beginAccess();
  v4 = type metadata accessor for KDSRegistration.URISupportedState();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t KDSRegistrationStateMachine.uniqueClientIdentifier.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t key path setter for KDSRegistrationStateMachine.phoneAuthInfo : KDSRegistrationStateMachine(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMd, &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v9 - v6;
  outlined init with copy of (MLS.UniqueClientIdentifier, MLS.KeyPackageProvider)(a1, &v9 - v6, &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMd, &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMR);
  return (*(**a2 + 296))(v7);
}

uint64_t key path setter for KDSRegistrationStateMachine.telURI : KDSRegistrationStateMachine(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v9 - v6;
  outlined init with copy of (MLS.UniqueClientIdentifier, MLS.KeyPackageProvider)(a1, &v9 - v6, &_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
  return (*(**a2 + 368))(v7);
}

uint64_t KDSRegistrationStateMachine.phoneAuthInfo.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return outlined init with copy of (MLS.UniqueClientIdentifier, MLS.KeyPackageProvider)(v4 + v8, a4, a2, a3);
}

uint64_t KDSRegistrationStateMachine.phoneAuthInfo.setter(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  outlined assign with take of KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo?(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t KDSRegistrationStateMachine.phoneNumberCredentialType.getter()
{
  v1 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_phoneNumberCredentialType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t KDSRegistrationStateMachine.phoneNumberCredentialType.setter(char a1)
{
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_phoneNumberCredentialType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t KDSRegistrationStateMachine.phoneNumberCredential.getter(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t KDSRegistrationStateMachine.phoneNumberCredential.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t key path setter for KDSRegistrationStateMachine.keyPackage : KDSRegistrationStateMachine(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO14KeyPackageInfoVSgMd, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v9 - v6;
  outlined init with copy of (MLS.UniqueClientIdentifier, MLS.KeyPackageProvider)(a1, &v9 - v6, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMd, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMR);
  return (*(**a2 + 464))(v7);
}

uint64_t KDSRegistrationStateMachine.nextHeartbeatInterval.getter()
{
  v1 = v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_nextHeartbeatInterval;
  swift_beginAccess();
  return *v1;
}

uint64_t KDSRegistrationStateMachine.nextHeartbeatInterval.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_nextHeartbeatInterval;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t KDSRegistrationStateMachine.participantInfo.getter(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  v3 = *v2;
  outlined copy of Data?(*v2, *(v2 + 8));
  return v3;
}

void KDSRegistrationStateMachine.participantInfo.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  outlined consume of Data?(v7, v8);
}

void KDSRegistrationStateMachine.heartbeatTransaction.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_heartbeatTransaction;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  swift_unknownObjectRelease(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t KDSRegistrationStateMachine.init(stateMachineOperator:networkOperator:simUniqueID:simLabelID:uriSupportedState:uniqueClientIdentifier:devicePushToken:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v29 = a4;
  v32 = a7;
  v33 = a8;
  v30 = a5;
  v31 = a6;
  v27 = a3;
  v13 = a1[3];
  v12 = a1[4];
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a1, v13);
  MEMORY[0x28223BE20](v14, v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v19 = a2[3];
  v18 = a2[4];
  v20 = __swift_mutable_project_boxed_opaque_existential_1(a2, v19);
  MEMORY[0x28223BE20](v20, v20);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22);
  v24 = specialized KDSRegistrationStateMachine.init(stateMachineOperator:networkOperator:simUniqueID:simLabelID:uriSupportedState:uniqueClientIdentifier:devicePushToken:)(v16, v22, v27, v29, v30, v31, v32, v33, a9, a10, v28, v13, v19, v12, v18);
  outlined consume of Data?(a9, a10);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v24;
}

uint64_t KDSRegistrationStateMachine.__allocating_init(stateMachineOperator:networkOperator:simUniqueID:simLabelID:uriSupportedState:uniqueClientIdentifier:initialState:phoneAuthInfo:participantInfo:csr:telURI:phoneNumberCredntial:keyPackage:nextHeartbeatInterval:devicePushToken:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, __int128 a14, uint64_t a16, unint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, unint64_t a22)
{
  v23 = a1[3];
  v24 = a1[4];
  v25 = __swift_mutable_project_boxed_opaque_existential_1(a1, v23);
  v26 = a2[3];
  v27 = a2[4];
  v28 = __swift_mutable_project_boxed_opaque_existential_1(a2, v26);
  *&v31 = a10;
  *(&v31 + 1) = a13;
  v29 = specialized KDSRegistrationStateMachine.__allocating_init(stateMachineOperator:networkOperator:simUniqueID:simLabelID:uriSupportedState:uniqueClientIdentifier:initialState:phoneAuthInfo:participantInfo:csr:telURI:phoneNumberCredntial:keyPackage:nextHeartbeatInterval:devicePushToken:)(v25, v28, a3, a4, a5, a6, a7, a8, a9, v31, a14, a18, a19, a20 & 1, a21, a22, v23, v26, v24, v27);
  outlined consume of Data?(a21, a22);
  outlined consume of Data?(a16, a17);
  outlined consume of Data?(a13, a14);
  outlined consume of Data?(a11, a12);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v29;
}

uint64_t KDSRegistrationStateMachine.init(stateMachineOperator:networkOperator:simUniqueID:simLabelID:uriSupportedState:uniqueClientIdentifier:initialState:phoneAuthInfo:participantInfo:csr:telURI:phoneNumberCredntial:keyPackage:nextHeartbeatInterval:devicePushToken:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17, uint64_t a18, uint64_t a19, unsigned __int8 a20, uint64_t a21, unint64_t a22)
{
  v49 = a3;
  v52 = a6;
  v53 = a7;
  v50 = a4;
  v51 = a5;
  v55 = a16;
  v56 = a8;
  v54 = a17;
  v47 = a9;
  v57 = a12;
  v58 = a11;
  v45 = a13;
  v46 = a10;
  v43 = a18;
  v44 = a15;
  v40 = a20;
  v24 = a1[3];
  v41 = a1[4];
  v42 = a19;
  v25 = __swift_mutable_project_boxed_opaque_existential_1(a1, v24);
  MEMORY[0x28223BE20](v25, v25);
  v27 = &v39[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v28 + 16))(v27);
  v29 = a2[3];
  v30 = a2[4];
  v31 = __swift_mutable_project_boxed_opaque_existential_1(a2, v29);
  MEMORY[0x28223BE20](v31, v31);
  v33 = &v39[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v34 + 16))(v33);
  v38 = v24;
  v35 = v45;
  v36 = specialized KDSRegistrationStateMachine.init(stateMachineOperator:networkOperator:simUniqueID:simLabelID:uriSupportedState:uniqueClientIdentifier:initialState:phoneAuthInfo:participantInfo:csr:telURI:phoneNumberCredntial:keyPackage:nextHeartbeatInterval:devicePushToken:)(v27, v33, v49, v50, v51, v52, v53, v56, v47, v46, v45, a14, v44, v43, v42, v40 & 1, a21, a22, v48, v38, v29, v41, v30);
  outlined consume of Data?(a21, a22);
  outlined consume of Data?(v55, v54);
  outlined consume of Data?(v35, a14);
  outlined consume of Data?(v58, v57);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v36;
}

uint64_t KDSRegistrationStateMachine.updateURISupportedState(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for KDSRegistration.URISupportedState();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = type metadata accessor for RegistrationActor();
  v2[12] = static RegistrationActor.shared.getter();
  v2[13] = _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20], MEMORY[0x277D4CC28]);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](KDSRegistrationStateMachine.updateURISupportedState(_:), v5, v4);
}

uint64_t KDSRegistrationStateMachine.updateURISupportedState(_:)()
{
  v1 = v0[9];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v6 = v0[2];
  v5 = v0[3];
  v7 = (*v5 + 264);
  v8 = *v7;
  (*v7)();
  v29 = *(v4 + 16);
  v29(v1, v6, v3);
  v9 = (*(*v5 + 272))(v1);
  (v8)(v9);
  v10 = *(v4 + 88);
  v11 = v10(v2, v3);
  if (v11 == *MEMORY[0x277D4CA28])
  {

    v12 = *MEMORY[0x277D4CA30];
    goto LABEL_3;
  }

  v12 = *MEMORY[0x277D4CA30];
  if (v11 == *MEMORY[0x277D4CA30])
  {

LABEL_7:
    v17 = v0[13];
    v18 = v0[10];
    v19 = v0[6];
    v20 = v0[4];
    v21 = v0[5];
    v22 = v0[3];
    v23 = type metadata accessor for TaskPriority();
    (*(*(v23 - 8) + 56))(v20, 1, 1, v23);

    v24 = static RegistrationActor.shared.getter();
    v25 = swift_allocObject();
    v25[2] = v24;
    v25[3] = v17;
    v25[4] = v22;
    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v20, &async function pointer to partial apply for closure #1 in KDSRegistrationStateMachine.rerun(), v25);

    (*(v19 + 8))(v18, v21);

    v26 = v0[1];

    return v26();
  }

  if (v11 == *MEMORY[0x277D4CA20])
  {

LABEL_3:
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];
    v29(v13, v0[10], v15);
    v16 = v10(v13, v15);
    (*(v14 + 8))(v13, v15);
    if (v16 == v12)
    {
      (*(*v0[3] + 248))(25);
    }

    goto LABEL_7;
  }

  v28 = v0[5];

  return MEMORY[0x2821FDEB8](v28, v28);
}

uint64_t KDSRegistrationStateMachine.heartbeat(transaction:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2[4] = swift_task_alloc();
  v2[5] = type metadata accessor for RegistrationActor();
  v2[6] = static RegistrationActor.shared.getter();
  v2[7] = _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20], MEMORY[0x277D4CC28]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[8] = v4;
  v2[9] = v3;

  return MEMORY[0x2822009F8](KDSRegistrationStateMachine.heartbeat(transaction:), v4, v3);
}

uint64_t KDSRegistrationStateMachine.heartbeat(transaction:)()
{
  if ((*(**(v0 + 24) + 240))() == 26)
  {
    v1 = *(**(v0 + 24) + 536);
    v2 = swift_unknownObjectRetain();
    v1(v2);
    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    *v3 = v0;
    v3[1] = KDSRegistrationStateMachine.heartbeat(transaction:);

    return KDSRegistrationStateMachine.needsCertRefresh()();
  }

  else
  {

    v5 = *(v0 + 8);

    return v5();
  }
}

{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 24);

  if (v1)
  {
    v5 = 22;
  }

  else
  {
    v5 = 24;
  }

  (*(*v4 + 248))(v5);
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);

  v7 = static RegistrationActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = v2;
  v8[4] = v4;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v3, &closure #1 in KDSRegistrationStateMachine.rerun()partial apply, v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t KDSRegistrationStateMachine.heartbeat(transaction:)(char a1)
{
  v2 = *v1;
  *(*v1 + 88) = a1;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);

  return MEMORY[0x2822009F8](KDSRegistrationStateMachine.heartbeat(transaction:), v4, v3);
}

uint64_t closure #1 in KDSRegistrationStateMachine.rerun()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[2] = type metadata accessor for RegistrationActor();
  v4[3] = static RegistrationActor.shared.getter();
  v8 = (*(*a4 + 592) + **(*a4 + 592));
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = closure #1 in KDSRegistrationStateMachine.rerun();

  return v8();
}

uint64_t closure #1 in KDSRegistrationStateMachine.rerun()()
{
  *(*v1 + 40) = v0;

  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20], MEMORY[0x277D4CC28]);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = closure #1 in KDSRegistrationStateMachine.rerun();
  }

  else
  {
    v4 = closure #1 in KDSRegistrationStateMachine.rerun();
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t KDSRegistrationStateMachine.run()()
{
  v1[4] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO14KeyPackageInfoVSgMd, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMR);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
  v1[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMd, &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMR);
  v1[7] = swift_task_alloc();
  IsRegisteredResult = type metadata accessor for KDSRegistration.IsRegisteredResult();
  v1[8] = IsRegisteredResult;
  v1[9] = *(IsRegisteredResult - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v1[13] = swift_task_alloc();
  v3 = type metadata accessor for KDSRegistration.URISupportedState();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = type metadata accessor for RegistrationActor();
  v1[19] = static RegistrationActor.shared.getter();
  v1[20] = _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20], MEMORY[0x277D4CC28]);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[21] = v5;
  v1[22] = v4;

  return MEMORY[0x2822009F8](KDSRegistrationStateMachine.run(), v5, v4);
}

{
  v141 = v0;
  *(v0 + 184) = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_logger;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 32);
    v4 = swift_slowAlloc();
    v139 = v0;
    v140 = swift_slowAlloc();
    v5 = v140;
    *v4 = 136315138;
    *(v139 + 403) = (*(*v3 + 240))();
    v6 = String.init<A>(describing:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v140);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_26524C000, v1, v2, "State Machine run called. Current State: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    v9 = v5;
    v0 = v139;
    MEMORY[0x2667577B0](v9, -1, -1);
    MEMORY[0x2667577B0](v4, -1, -1);
  }

  else
  {
    v3 = *(v0 + 32);
  }

  *(v0 + 192) = v3;
  v10 = (*(**(v0 + 32) + 240))();
  if (v10 <= 0x15u)
  {
    if (v10 > 0x13u)
    {
      if (v10 == 20)
      {
        v71 = *(v0 + 128);
        v70 = *(v0 + 136);
        v72 = *(v0 + 112);
        v73 = *(v0 + 120);
        (*(**(v0 + 32) + 264))();
        (*(v73 + 104))(v71, *MEMORY[0x277D4CA30], v72);
        v74 = static KDSRegistration.URISupportedState.== infix(_:_:)();
        v75 = *(v73 + 8);
        v75(v71, v72);
        v75(v70, v72);
        if (v74)
        {
          v76 = swift_task_alloc();
          *(v0 + 200) = v76;
          *v76 = v0;
          v76[1] = KDSRegistrationStateMachine.run();

          return KDSRegistrationStateMachine.obtainPhoneNumberInfo()();
        }

        v122 = *(v0 + 160);
        v35 = *(v0 + 104);
        v123 = *(v0 + 32);

        (*(*v123 + 248))(18);
        v124 = type metadata accessor for TaskPriority();
        (*(*(v124 - 8) + 56))(v35, 1, 1, v124);

        v125 = static RegistrationActor.shared.getter();
        v39 = swift_allocObject();
        v39[2] = v125;
        v39[3] = v122;
        v39[4] = v123;
        v40 = &closure #1 in KDSRegistrationStateMachine.rerun()partial apply;
      }

      else
      {
        if (v10 != 21)
        {
          goto LABEL_53;
        }

        v42 = *(v0 + 128);
        v41 = *(v0 + 136);
        v43 = *(v0 + 112);
        v44 = *(v0 + 120);
        (*(**(v0 + 32) + 264))();
        (*(v44 + 104))(v42, *MEMORY[0x277D4CA30], v43);
        v45 = static KDSRegistration.URISupportedState.== infix(_:_:)();
        v46 = *(v44 + 8);
        v46(v42, v43);
        v46(v41, v43);
        if (v45)
        {
          v47 = swift_task_alloc();
          *(v0 + 216) = v47;
          *v47 = v0;
          v47[1] = KDSRegistrationStateMachine.run();

          return KDSRegistrationStateMachine.obtainKDSVendedClientID()();
        }

        v114 = *(v0 + 160);
        v35 = *(v0 + 104);
        v115 = *(v0 + 32);

        (*(*v115 + 248))(18);
        v116 = type metadata accessor for TaskPriority();
        (*(*(v116 - 8) + 56))(v35, 1, 1, v116);

        v117 = static RegistrationActor.shared.getter();
        v39 = swift_allocObject();
        v39[2] = v117;
        v39[3] = v114;
        v39[4] = v115;
        v40 = &closure #1 in KDSRegistrationStateMachine.rerun()partial apply;
      }
    }

    else
    {
      if (v10 == 18)
      {
        v57 = *(v0 + 128);
        v56 = *(v0 + 136);
        v58 = *(v0 + 112);
        v59 = *(v0 + 120);
        v60 = *(v0 + 32);

        (*(*v60 + 264))(v61);
        (*(v59 + 104))(v57, *MEMORY[0x277D4CA30], v58);
        LOBYTE(v60) = static KDSRegistration.URISupportedState.== infix(_:_:)();
        v62 = *(v59 + 8);
        v62(v57, v58);
        v62(v56, v58);
        if ((v60 & 1) == 0)
        {
LABEL_70:

          v138 = *(v0 + 8);

          return v138();
        }

        (*(**(v0 + 32) + 248))(19);
        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          *v65 = 0;
          _os_log_impl(&dword_26524C000, v63, v64, "State Machine moved from waiting -> ready", v65, 2u);
          MEMORY[0x2667577B0](v65, -1, -1);
        }

        v66 = *(v0 + 160);
        v35 = *(v0 + 104);
        v67 = *(v0 + 32);

        v68 = type metadata accessor for TaskPriority();
        (*(*(v68 - 8) + 56))(v35, 1, 1, v68);

        v69 = static RegistrationActor.shared.getter();
        v39 = swift_allocObject();
        v39[2] = v69;
        v39[3] = v66;
        v39[4] = v67;
        v40 = &closure #1 in KDSRegistrationStateMachine.rerun()partial apply;
        goto LABEL_68;
      }

      if (v10 != 19)
      {
        goto LABEL_53;
      }

      v23 = *(v0 + 128);
      v22 = *(v0 + 136);
      v24 = *(v0 + 112);
      v25 = *(v0 + 120);
      v26 = *(v0 + 32);

      (*(*v26 + 264))(v27);
      (*(v25 + 104))(v23, *MEMORY[0x277D4CA30], v24);
      v28 = static KDSRegistration.URISupportedState.== infix(_:_:)();
      v29 = *(v25 + 8);
      v29(v23, v24);
      v29(v22, v24);
      v30 = *(*v26 + 248);
      if ((v28 & 1) == 0)
      {
        v107 = *(v0 + 160);
        v108 = *(v0 + 104);
        v109 = *(v0 + 32);
        v30(18);
        v110 = type metadata accessor for TaskPriority();
        (*(*(v110 - 8) + 56))(v108, 1, 1, v110);

        v111 = static RegistrationActor.shared.getter();
        v39 = swift_allocObject();
        v39[2] = v111;
        v39[3] = v107;
        v39[4] = v109;
        v112 = &closure #1 in KDSRegistrationStateMachine.rerun()partial apply;
        v113 = v108;
LABEL_69:
        _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v113, v112, v39);

        goto LABEL_70;
      }

      v30(20);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_26524C000, v31, v32, "State Machine moved from ready -> getPhoneNumberInfo", v33, 2u);
        MEMORY[0x2667577B0](v33, -1, -1);
      }

      v34 = *(v0 + 160);
      v35 = *(v0 + 104);
      v36 = *(v0 + 32);

      v37 = type metadata accessor for TaskPriority();
      (*(*(v37 - 8) + 56))(v35, 1, 1, v37);

      v38 = static RegistrationActor.shared.getter();
      v39 = swift_allocObject();
      v39[2] = v38;
      v39[3] = v34;
      v39[4] = v36;
      v40 = &closure #1 in KDSRegistrationStateMachine.rerun()partial apply;
    }

LABEL_68:
    v112 = v40;
    v113 = v35;
    goto LABEL_69;
  }

  if (v10 <= 0x17u)
  {
    if (v10 == 22)
    {
      v85 = *(v0 + 128);
      v84 = *(v0 + 136);
      v86 = *(v0 + 112);
      v87 = *(v0 + 120);
      (*(**(v0 + 32) + 264))();
      (*(v87 + 104))(v85, *MEMORY[0x277D4CA30], v86);
      v88 = static KDSRegistration.URISupportedState.== infix(_:_:)();
      v89 = *(v87 + 8);
      v89(v85, v86);
      v89(v84, v86);
      if (v88)
      {
        v90 = swift_task_alloc();
        *(v0 + 232) = v90;
        *v90 = v0;
        v90[1] = KDSRegistrationStateMachine.run();

        return KDSRegistrationStateMachine.obtainPhoneAuthInfo()();
      }

      v130 = *(v0 + 160);
      v35 = *(v0 + 104);
      v131 = *(v0 + 32);

      (*(*v131 + 248))(18);
      v132 = type metadata accessor for TaskPriority();
      (*(*(v132 - 8) + 56))(v35, 1, 1, v132);

      v133 = static RegistrationActor.shared.getter();
      v39 = swift_allocObject();
      v39[2] = v133;
      v39[3] = v130;
      v39[4] = v131;
      v40 = &closure #1 in KDSRegistrationStateMachine.rerun()partial apply;
    }

    else
    {
      if (v10 != 23)
      {
        goto LABEL_53;
      }

      v50 = *(v0 + 128);
      v49 = *(v0 + 136);
      v51 = *(v0 + 112);
      v52 = *(v0 + 120);
      (*(**(v0 + 32) + 264))();
      (*(v52 + 104))(v50, *MEMORY[0x277D4CA30], v51);
      v53 = static KDSRegistration.URISupportedState.== infix(_:_:)();
      v54 = *(v52 + 8);
      v54(v50, v51);
      v54(v49, v51);
      if (v53)
      {
        v55 = swift_task_alloc();
        *(v0 + 248) = v55;
        *v55 = v0;
        v55[1] = KDSRegistrationStateMachine.run();

        return KDSRegistrationStateMachine.getIdentity()();
      }

      v118 = *(v0 + 160);
      v35 = *(v0 + 104);
      v119 = *(v0 + 32);

      (*(*v119 + 248))(18);
      v120 = type metadata accessor for TaskPriority();
      (*(*(v120 - 8) + 56))(v35, 1, 1, v120);

      v121 = static RegistrationActor.shared.getter();
      v39 = swift_allocObject();
      v39[2] = v121;
      v39[3] = v118;
      v39[4] = v119;
      v40 = &closure #1 in KDSRegistrationStateMachine.rerun()partial apply;
    }

    goto LABEL_68;
  }

  if (v10 == 24)
  {
    v78 = *(v0 + 128);
    v77 = *(v0 + 136);
    v79 = *(v0 + 112);
    v80 = *(v0 + 120);
    (*(**(v0 + 32) + 264))();
    (*(v80 + 104))(v78, *MEMORY[0x277D4CA30], v79);
    v81 = static KDSRegistration.URISupportedState.== infix(_:_:)();
    v82 = *(v80 + 8);
    v82(v78, v79);
    v82(v77, v79);
    if (v81)
    {
      v83 = swift_task_alloc();
      *(v0 + 264) = v83;
      *v83 = v0;
      v83[1] = KDSRegistrationStateMachine.run();

      return KDSRegistrationStateMachine.register()();
    }

    v126 = *(v0 + 160);
    v35 = *(v0 + 104);
    v127 = *(v0 + 32);

    (*(*v127 + 248))(18);
    v128 = type metadata accessor for TaskPriority();
    (*(*(v128 - 8) + 56))(v35, 1, 1, v128);

    v129 = static RegistrationActor.shared.getter();
    v39 = swift_allocObject();
    v39[2] = v129;
    v39[3] = v126;
    v39[4] = v127;
    v40 = &closure #1 in KDSRegistrationStateMachine.rerun()partial apply;
    goto LABEL_68;
  }

  if (v10 != 25)
  {
    if (v10 == 26)
    {
      v12 = *(v0 + 128);
      v11 = *(v0 + 136);
      v13 = *(v0 + 112);
      v14 = *(v0 + 120);
      (*(**(v0 + 32) + 264))();
      (*(v14 + 104))(v12, *MEMORY[0x277D4CA30], v13);
      v15 = static KDSRegistration.URISupportedState.== infix(_:_:)();
      v16 = *(v14 + 8);
      v16(v12, v13);
      v16(v11, v13);
      if (v15)
      {
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&dword_26524C000, v17, v18, "Success.", v19, 2u);
          MEMORY[0x2667577B0](v19, -1, -1);
        }

        KDSRegistration.IsRegisteredResult.init(isRegistered:)();
        v20 = swift_task_alloc();
        *(v0 + 320) = v20;
        *v20 = v0;
        v20[1] = KDSRegistrationStateMachine.run();
        v21 = *(v0 + 96);
LABEL_58:

        return KDSRegistrationStateMachine.broadcastRegistrationUpdate(isRegisteredResult:)(v21);
      }

      v134 = *(v0 + 160);
      v35 = *(v0 + 104);
      v135 = *(v0 + 32);

      (*(*v135 + 248))(18);
      v136 = type metadata accessor for TaskPriority();
      (*(*(v136 - 8) + 56))(v35, 1, 1, v136);

      v137 = static RegistrationActor.shared.getter();
      v39 = swift_allocObject();
      v39[2] = v137;
      v39[3] = v134;
      v39[4] = v135;
      v40 = &closure #1 in KDSRegistrationStateMachine.rerun()partial apply;
      goto LABEL_68;
    }

LABEL_53:
    v95 = v10;
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v140 = v99;
      *v98 = 136315138;
      *(v0 + 400) = v95;
      v100 = String.init<A>(describing:)();
      v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v101, &v140);

      *(v98 + 4) = v102;
      _os_log_impl(&dword_26524C000, v96, v97, "State machine failed with error %s", v98, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v99);
      MEMORY[0x2667577B0](v99, -1, -1);
      MEMORY[0x2667577B0](v98, -1, -1);
    }

    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      *v105 = 0;
      _os_log_impl(&dword_26524C000, v103, v104, "Releasing state machine transaction.", v105, 2u);
      MEMORY[0x2667577B0](v105, -1, -1);
    }

    KDSRegistration.IsRegisteredResult.init(isRegistered:)();
    v106 = swift_task_alloc();
    *(v0 + 336) = v106;
    *v106 = v0;
    v106[1] = KDSRegistrationStateMachine.run();
    v21 = *(v0 + 88);
    goto LABEL_58;
  }

  v91 = Logger.logObject.getter();
  v92 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    *v93 = 0;
    _os_log_impl(&dword_26524C000, v91, v92, "Deregistering", v93, 2u);
    MEMORY[0x2667577B0](v93, -1, -1);
  }

  v94 = swift_task_alloc();
  *(v0 + 352) = v94;
  *v94 = v0;
  v94[1] = KDSRegistrationStateMachine.run();

  return KDSRegistrationStateMachine.deregister()();
}

{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 176);
  v4 = *(v2 + 168);
  if (v0)
  {
    v5 = KDSRegistrationStateMachine.run();
  }

  else
  {
    v5 = KDSRegistrationStateMachine.run();
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = v0[4];

  (*(*v1 + 248))(21);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26524C000, v2, v3, "State Machine moved from getPhoneNumberInfo -> getClientID", v4, 2u);
    MEMORY[0x2667577B0](v4, -1, -1);
  }

  v5 = v0[20];
  v6 = v0[13];
  v7 = v0[4];

  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);

  v9 = static RegistrationActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v5;
  v10[4] = v7;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v6, &closure #1 in KDSRegistrationStateMachine.rerun()partial apply, v10);

  v11 = v0[1];

  return v11();
}

{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 176);
  v4 = *(v2 + 168);
  if (v0)
  {
    v5 = KDSRegistrationStateMachine.run();
  }

  else
  {
    v5 = KDSRegistrationStateMachine.run();
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = v0[4];

  (*(*v1 + 248))(22);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26524C000, v2, v3, "State Machine moved from getClientID -> getPhoneAuthInfo", v4, 2u);
    MEMORY[0x2667577B0](v4, -1, -1);
  }

  v5 = v0[20];
  v6 = v0[13];
  v7 = v0[4];

  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);

  v9 = static RegistrationActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v5;
  v10[4] = v7;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v6, &closure #1 in KDSRegistrationStateMachine.rerun()partial apply, v10);

  v11 = v0[1];

  return v11();
}

{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 176);
  v4 = *(v2 + 168);
  if (v0)
  {
    v5 = KDSRegistrationStateMachine.run();
  }

  else
  {
    v5 = KDSRegistrationStateMachine.run();
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = v0[4];

  (*(*v1 + 248))(23);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26524C000, v2, v3, "State Machine moved from getPhoneNumberInfo -> getIdentity", v4, 2u);
    MEMORY[0x2667577B0](v4, -1, -1);
  }

  v5 = v0[20];
  v6 = v0[13];
  v7 = v0[4];

  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);

  v9 = static RegistrationActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v5;
  v10[4] = v7;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v6, &closure #1 in KDSRegistrationStateMachine.rerun()partial apply, v10);

  v11 = v0[1];

  return v11();
}

{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 176);
  v4 = *(v2 + 168);
  if (v0)
  {
    v5 = KDSRegistrationStateMachine.run();
  }

  else
  {
    v5 = KDSRegistrationStateMachine.run();
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = v0[4];

  (*(*v1 + 248))(24);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26524C000, v2, v3, "State Machine moved from getIdentity -> register", v4, 2u);
    MEMORY[0x2667577B0](v4, -1, -1);
  }

  v5 = v0[20];
  v6 = v0[13];
  v7 = v0[4];

  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);

  v9 = static RegistrationActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v5;
  v10[4] = v7;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v6, &closure #1 in KDSRegistrationStateMachine.rerun()partial apply, v10);

  v11 = v0[1];

  return v11();
}

{
  v2 = *v1;
  *(*v1 + 272) = v0;

  v3 = *(v2 + 176);
  v4 = *(v2 + 168);
  if (v0)
  {
    v5 = KDSRegistrationStateMachine.run();
  }

  else
  {
    v5 = KDSRegistrationStateMachine.run();
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  (*(**(v0 + 32) + 248))(26);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_26524C000, v1, v2, "State Machine moved from register -> success", v3, 2u);
    MEMORY[0x2667577B0](v3, -1, -1);
  }

  v4 = swift_task_alloc();
  *(v0 + 280) = v4;
  *v4 = v0;
  v4[1] = KDSRegistrationStateMachine.run();

  return KDSRegistrationStateMachine.saveState()();
}

{
  v2 = *v1;
  v2[36] = v0;

  if (v0)
  {
    v3 = v2[21];
    v4 = v2[22];

    return MEMORY[0x2822009F8](KDSRegistrationStateMachine.run(), v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[37] = v5;
    *v5 = v2;
    v5[1] = KDSRegistrationStateMachine.run();

    return KDSRegistrationStateMachine.setupHeartbeat()();
  }
}

{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = *(v2 + 176);
  v4 = *(v2 + 168);
  if (v0)
  {
    v5 = KDSRegistrationStateMachine.run();
  }

  else
  {
    v5 = KDSRegistrationStateMachine.run();
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = (*(v0 + 32) + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 80) + **(v3 + 80));
  v4 = swift_task_alloc();
  *(v0 + 312) = v4;
  *v4 = v0;
  v4[1] = KDSRegistrationStateMachine.run();

  return v6(v2, v3);
}

{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return MEMORY[0x2822009F8](KDSRegistrationStateMachine.run(), v3, v2);
}

{
  v1 = v0[20];
  v2 = v0[13];
  v3 = v0[4];

  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);

  v5 = static RegistrationActor.shared.getter();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v1;
  v6[4] = v3;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v2, &closure #1 in KDSRegistrationStateMachine.rerun()partial apply, v6);

  v7 = v0[1];

  return v7();
}

{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  *(*v1 + 328) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 176);
  v7 = *(v2 + 168);
  if (v0)
  {
    v8 = KDSRegistrationStateMachine.run();
  }

  else
  {
    v8 = KDSRegistrationStateMachine.run();
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_26524C000, v1, v2, "Releasing state machine transaction.", v3, 2u);
    MEMORY[0x2667577B0](v3, -1, -1);
  }

  v4 = *(v0 + 32);

  (*(*v4 + 536))(0);

  v5 = *(v0 + 8);

  return v5();
}

{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  *(*v1 + 344) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 176);
  v7 = *(v2 + 168);
  if (v0)
  {
    v8 = KDSRegistrationStateMachine.run();
  }

  else
  {
    v8 = KDSRegistrationStateMachine.run();
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

{

  (*(**(v0 + 32) + 536))(0);

  v1 = *(v0 + 8);

  return v1();
}

{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 176);
  v4 = *(v2 + 168);
  if (v0)
  {
    v5 = KDSRegistrationStateMachine.run();
  }

  else
  {
    v5 = KDSRegistrationStateMachine.run();
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_26524C000, v1, v2, "Finished deregistration, clearing state.", v3, 2u);
    MEMORY[0x2667577B0](v3, -1, -1);
  }

  v4 = v0[4];

  (*(*v4 + 248))(18);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26524C000, v5, v6, "State Machine moved from deregister -> waiting", v7, 2u);
    MEMORY[0x2667577B0](v7, -1, -1);
  }

  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[4];
  v11 = v0[5];

  v12 = type metadata accessor for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  (*(*v10 + 296))(v9);
  (*(*v10 + 320))(0, 0xF000000000000000);
  (*(*v10 + 344))(0, 0xF000000000000000);
  v13 = type metadata accessor for URI();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  (*(*v10 + 368))(v8);
  (*(*v10 + 392))(0, 0);
  v14 = type metadata accessor for MLS.KeyPackageInfo();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  (*(*v10 + 464))(v11);
  (*(*v10 + 488))(0, 1);
  v15 = swift_task_alloc();
  v0[46] = v15;
  *v15 = v0;
  v15[1] = KDSRegistrationStateMachine.run();

  return KDSRegistrationStateMachine.saveState()();
}

{
  v2 = *v1;
  *(*v1 + 376) = v0;

  v3 = *(v2 + 176);
  v4 = *(v2 + 168);
  if (v0)
  {
    v5 = KDSRegistrationStateMachine.run();
  }

  else
  {
    v5 = KDSRegistrationStateMachine.run();
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  KDSRegistration.IsRegisteredResult.init(isRegistered:)();
  v1 = swift_task_alloc();
  *(v0 + 384) = v1;
  *v1 = v0;
  v1[1] = KDSRegistrationStateMachine.run();
  v2 = *(v0 + 80);

  return KDSRegistrationStateMachine.broadcastRegistrationUpdate(isRegisteredResult:)(v2);
}

{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  *(*v1 + 392) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 176);
  v7 = *(v2 + 168);
  if (v0)
  {
    v8 = KDSRegistrationStateMachine.run();
  }

  else
  {
    v8 = KDSRegistrationStateMachine.run();
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

{

  v1 = v0[20];
  v2 = v0[13];
  v3 = v0[4];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);

  v5 = static RegistrationActor.shared.getter();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v1;
  v6[4] = v3;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v2, &closure #1 in KDSRegistrationStateMachine.rerun()partial apply, v6);

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[26];
  v2 = v0[20];
  v3 = v0[13];
  v4 = v0[4];

  (*(*v4 + 248))(3);
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);

  v6 = static RegistrationActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v2;
  v7[4] = v4;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v3, &closure #1 in KDSRegistrationStateMachine.rerun()partial apply, v7);

  v8 = v0[1];

  return v8();
}

{
  v1 = v0[28];
  v2 = v0[20];
  v3 = v0[13];
  v4 = v0[4];

  (*(*v4 + 248))(7);
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);

  v6 = static RegistrationActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v2;
  v7[4] = v4;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v3, &closure #1 in KDSRegistrationStateMachine.rerun()partial apply, v7);

  v8 = v0[1];

  return v8();
}

{
  v1 = v0[30];
  v2 = v0[20];
  v3 = v0[13];
  v4 = v0[4];

  (*(*v4 + 248))(4);
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);

  v6 = static RegistrationActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v2;
  v7[4] = v4;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v3, &closure #1 in KDSRegistrationStateMachine.rerun()partial apply, v7);

  v8 = v0[1];

  return v8();
}

{
  v1 = *(v0 + 256);

  *(v0 + 24) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 256);
  if (v3)
  {

    v5 = *(v0 + 402);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    if (v5)
    {
      v9 = 21;
    }

    else
    {
      v9 = 5;
    }

    if (v8)
    {
      if (v5)
      {
        v10 = "Server asked us to refresh our client ID";
      }

      else
      {
        v10 = "Server asked us not to retry the request.";
      }

      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_26524C000, v6, v7, v10, v11, 2u);
      MEMORY[0x2667577B0](v11, -1, -1);
    }

    v12 = *(v0 + 160);
    v13 = *(v0 + 104);
    v14 = *(v0 + 32);

    (*(*v14 + 248))(v9);
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);

    v16 = static RegistrationActor.shared.getter();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = v12;
    v17[4] = v14;
    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v13, &closure #1 in KDSRegistrationStateMachine.rerun()partial apply, v17);
  }

  else
  {

    v18 = v4;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 256);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = v21;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_26524C000, v19, v20, "Error in getIdentity %@", v22, 0xCu);
      outlined destroy of MLS.KeyPackageProvider?(v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x2667577B0](v23, -1, -1);
      MEMORY[0x2667577B0](v22, -1, -1);
    }

    v26 = *(v0 + 256);
    v27 = *(v0 + 160);
    v28 = *(v0 + 104);
    v29 = *(v0 + 32);

    (*(*v29 + 248))(5);
    v30 = type metadata accessor for TaskPriority();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);

    v31 = static RegistrationActor.shared.getter();
    v32 = swift_allocObject();
    v32[2] = v31;
    v32[3] = v27;
    v32[4] = v29;
    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v28, &closure #1 in KDSRegistrationStateMachine.rerun()partial apply, v32);
  }

  v33 = *(v0 + 8);

  return v33();
}

{
  v1 = *(v0 + 272);

  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 401);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    if (v3)
    {
      v7 = 21;
    }

    else
    {
      v7 = 5;
    }

    if (v6)
    {
      if (v3)
      {
        v8 = "Server asked us to refresh our client ID";
      }

      else
      {
        v8 = "Server asked us not to retry the request.";
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_26524C000, v4, v5, v8, v9, 2u);
      MEMORY[0x2667577B0](v9, -1, -1);
    }

    v10 = *(v0 + 160);
    v11 = *(v0 + 104);
    v12 = *(v0 + 32);

    (*(*v12 + 248))(v7);
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);

    v14 = static RegistrationActor.shared.getter();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = v10;
    v15[4] = v12;
    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v11, &closure #1 in KDSRegistrationStateMachine.rerun()partial apply, v15);

    v16 = *(v0 + 16);
  }

  else
  {

    v17 = v1;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = v1;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_26524C000, v18, v19, "Hit an error %@", v20, 0xCu);
      outlined destroy of MLS.KeyPackageProvider?(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x2667577B0](v21, -1, -1);
      MEMORY[0x2667577B0](v20, -1, -1);
    }

    v24 = *(v0 + 32);

    (*(*v24 + 248))(6);
    v16 = v1;
  }

  v25 = *(v0 + 8);

  return v25();
}

{
  v1 = *(v0 + 288);

  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 401);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    if (v3)
    {
      v7 = 21;
    }

    else
    {
      v7 = 5;
    }

    if (v6)
    {
      if (v3)
      {
        v8 = "Server asked us to refresh our client ID";
      }

      else
      {
        v8 = "Server asked us not to retry the request.";
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_26524C000, v4, v5, v8, v9, 2u);
      MEMORY[0x2667577B0](v9, -1, -1);
    }

    v10 = *(v0 + 160);
    v11 = *(v0 + 104);
    v12 = *(v0 + 32);

    (*(*v12 + 248))(v7);
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);

    v14 = static RegistrationActor.shared.getter();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = v10;
    v15[4] = v12;
    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v11, &closure #1 in KDSRegistrationStateMachine.rerun()partial apply, v15);

    v16 = *(v0 + 16);
  }

  else
  {

    v17 = v1;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = v1;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_26524C000, v18, v19, "Hit an error %@", v20, 0xCu);
      outlined destroy of MLS.KeyPackageProvider?(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x2667577B0](v21, -1, -1);
      MEMORY[0x2667577B0](v20, -1, -1);
    }

    v24 = *(v0 + 32);

    (*(*v24 + 248))(6);
    v16 = v1;
  }

  v25 = *(v0 + 8);

  return v25();
}

{
  v1 = *(v0 + 304);

  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 401);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    if (v3)
    {
      v7 = 21;
    }

    else
    {
      v7 = 5;
    }

    if (v6)
    {
      if (v3)
      {
        v8 = "Server asked us to refresh our client ID";
      }

      else
      {
        v8 = "Server asked us not to retry the request.";
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_26524C000, v4, v5, v8, v9, 2u);
      MEMORY[0x2667577B0](v9, -1, -1);
    }

    v10 = *(v0 + 160);
    v11 = *(v0 + 104);
    v12 = *(v0 + 32);

    (*(*v12 + 248))(v7);
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);

    v14 = static RegistrationActor.shared.getter();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = v10;
    v15[4] = v12;
    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v11, &closure #1 in KDSRegistrationStateMachine.rerun()partial apply, v15);

    v16 = *(v0 + 16);
  }

  else
  {

    v17 = v1;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = v1;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_26524C000, v18, v19, "Hit an error %@", v20, 0xCu);
      outlined destroy of MLS.KeyPackageProvider?(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x2667577B0](v21, -1, -1);
      MEMORY[0x2667577B0](v20, -1, -1);
    }

    v24 = *(v0 + 32);

    (*(*v24 + 248))(6);
    v16 = v1;
  }

  v25 = *(v0 + 8);

  return v25();
}

{
  v1 = v0[41];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[41];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_26524C000, v3, v4, "Error broadcasting successful registration. %@", v7, 0xCu);
    outlined destroy of MLS.KeyPackageProvider?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2667577B0](v8, -1, -1);
    MEMORY[0x2667577B0](v7, -1, -1);
  }

  else
  {
  }

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_26524C000, v11, v12, "Releasing state machine transaction.", v13, 2u);
    MEMORY[0x2667577B0](v13, -1, -1);
  }

  v14 = v0[4];

  (*(*v14 + 536))(0);

  v15 = v0[1];

  return v15();
}

{
  v1 = *(v0 + 344);

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 344);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_26524C000, v3, v4, "Error broadcasting deregisteration update. %@", v7, 0xCu);
    outlined destroy of MLS.KeyPackageProvider?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2667577B0](v8, -1, -1);
    MEMORY[0x2667577B0](v7, -1, -1);
  }

  else
  {
  }

  (*(**(v0 + 32) + 536))(0);

  v11 = *(v0 + 8);

  return v11();
}

{
  v1 = v0[45];
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[45];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_26524C000, v3, v4, "Error deregistering with server. %@", v7, 0xCu);
    outlined destroy of MLS.KeyPackageProvider?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2667577B0](v8, -1, -1);
    MEMORY[0x2667577B0](v7, -1, -1);
  }

  else
  {
  }

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_26524C000, v11, v12, "Finished deregistration, clearing state.", v13, 2u);
    MEMORY[0x2667577B0](v13, -1, -1);
  }

  v14 = v0[4];

  (*(*v14 + 248))(18);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_26524C000, v15, v16, "State Machine moved from deregister -> waiting", v17, 2u);
    MEMORY[0x2667577B0](v17, -1, -1);
  }

  v18 = v0[6];
  v19 = v0[7];
  v20 = v0[4];
  v21 = v0[5];

  v22 = type metadata accessor for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo();
  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  (*(*v20 + 296))(v19);
  (*(*v20 + 320))(0, 0xF000000000000000);
  (*(*v20 + 344))(0, 0xF000000000000000);
  v23 = type metadata accessor for URI();
  (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
  (*(*v20 + 368))(v18);
  (*(*v20 + 392))(0, 0);
  v24 = type metadata accessor for MLS.KeyPackageInfo();
  (*(*(v24 - 8) + 56))(v21, 1, 1, v24);
  (*(*v20 + 464))(v21);
  (*(*v20 + 488))(0, 1);
  v25 = swift_task_alloc();
  v0[46] = v25;
  *v25 = v0;
  v25[1] = KDSRegistrationStateMachine.run();

  return KDSRegistrationStateMachine.saveState()();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[49];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[49];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_26524C000, v3, v4, "Error broadcasting deregisteration update. %@", v7, 0xCu);
    outlined destroy of MLS.KeyPackageProvider?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2667577B0](v8, -1, -1);
    MEMORY[0x2667577B0](v7, -1, -1);
  }

  else
  {
  }

  v11 = v0[20];
  v12 = v0[13];
  v13 = v0[4];
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);

  v15 = static RegistrationActor.shared.getter();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v11;
  v16[4] = v13;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v12, &closure #1 in KDSRegistrationStateMachine.rerun()partial apply, v16);

  v17 = v0[1];

  return v17();
}

uint64_t KDSRegistrationStateMachine.obtainPhoneNumberInfo()()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
  v1[3] = swift_task_alloc();
  v1[4] = type metadata accessor for PhoneNumberInfo(0);
  v1[5] = swift_task_alloc();
  type metadata accessor for RegistrationActor();
  v1[6] = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20], MEMORY[0x277D4CC28]);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](KDSRegistrationStateMachine.obtainPhoneNumberInfo(), v3, v2);
}

{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator + 24);
  v3 = *(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator), v2);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v9 = (*(v3 + 8) + **(v3 + 8));
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = KDSRegistrationStateMachine.obtainPhoneNumberInfo();
  v7 = v0[5];

  return v9(v7, v4, v5, v2, v3);
}

{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = KDSRegistrationStateMachine.obtainPhoneNumberInfo();
  }

  else
  {
    v5 = KDSRegistrationStateMachine.obtainPhoneNumberInfo();
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  v5 = type metadata accessor for URI();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v2, v1, v5);
  (*(v6 + 56))(v2, 0, 1, v5);
  (*(*v4 + 368))(v2);
  v7 = (v1 + *(v3 + 20));
  v8 = *v7;
  v9 = v7[1];
  v10 = *(*v4 + 392);

  v10(v8, v9);
  (*(*v4 + 416))(*(v1 + *(v3 + 24)));
  outlined destroy of PhoneNumberInfo(v1);

  v11 = v0[1];

  return v11();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t KDSRegistrationStateMachine.obtainKDSVendedClientID()()
{
  v1[147] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
  v1[148] = swift_task_alloc();
  v2 = type metadata accessor for URI();
  v1[149] = v2;
  v1[150] = *(v2 - 8);
  v1[151] = swift_task_alloc();
  type metadata accessor for RegistrationActor();
  v1[152] = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20], MEMORY[0x277D4CC28]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[153] = v4;
  v1[154] = v3;

  return MEMORY[0x2822009F8](KDSRegistrationStateMachine.obtainKDSVendedClientID(), v4, v3);
}

{
  v56 = v0;
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1192);
  v3 = *(v0 + 1184);
  (*(**(v0 + 1176) + 360))();
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 1184);

    outlined destroy of MLS.KeyPackageProvider?(v4, &_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
    lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError();
    swift_allocError();
    *v5 = 12;
    swift_willThrow();
LABEL_13:

    v26 = *(v0 + 8);

    return v26();
  }

  v6 = *(v0 + 1176);
  v7 = (*(*(v0 + 1200) + 32))(*(v0 + 1208), *(v0 + 1184), *(v0 + 1192));
  v8 = (*(*v6 + 384))(v7);
  if (!v9)
  {
    v22 = *(v0 + 1208);
    v23 = *(v0 + 1200);
    v24 = *(v0 + 1192);

    lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError();
    swift_allocError();
    *v25 = 14;
    swift_willThrow();
    (*(v23 + 8))(v22, v24);
    goto LABEL_13;
  }

  v10 = v8;
  v11 = v9;
  v12 = *(v0 + 1176);
  v13 = (*(*v12 + 408))();
  if (v13 == 4)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  v15 = (*(*v12 + 432))();
  v17 = v16;
  if (v16)
  {
  }

  v18 = MEMORY[0x266756630](v15);
  if (v14 > 1u)
  {
    if (v14 == 2)
    {
      v20 = 0xE700000000000000;
      v21 = 0x7373654C534D53;
    }

    else
    {
      v20 = 0xE800000000000000;
      v21 = 0x6E656B6F54534352;
    }
  }

  else if (v14)
  {
    v20 = 0xE300000000000000;
    v21 = 5459283;
  }

  else
  {
    v20 = 0xE700000000000000;
    v21 = 0x6E776F6E6B6E55;
  }

  v28 = *(v0 + 1176);
  *(v0 + 16) = v18;
  *(v0 + 24) = v19;
  *(v0 + 32) = v10;
  *(v0 + 40) = v11;
  *(v0 + 48) = v21;
  *(v0 + 56) = v20;
  *(v0 + 64) = v17 == 0;
  *(v0 + 72) = xmmword_2653419D0;
  v29 = (*(*v28 + 504))();
  if (v30 >> 60 != 15)
  {
    v31 = v29;
    v32 = v30;
    outlined consume of Data?(0, 0xF000000000000000);
    *(v0 + 72) = v31;
    *(v0 + 80) = v32;
  }

  v33 = *(v0 + 16);
  *(v0 + 104) = *(v0 + 32);
  v34 = *(v0 + 64);
  *(v0 + 120) = *(v0 + 48);
  *(v0 + 136) = v34;
  *(v0 + 152) = *(v0 + 80);
  *(v0 + 88) = v33;
  outlined init with copy of GetClientIDRequest(v0 + 88, v0 + 160);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  outlined destroy of GetClientIDRequest(v0 + 88);
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v55 = v38;
    *v37 = 136315138;
    v39 = *(v0 + 104);
    v40 = *(v0 + 136);
    *(v0 + 912) = *(v0 + 120);
    *(v0 + 928) = v40;
    *(v0 + 944) = *(v0 + 152);
    *(v0 + 880) = *(v0 + 88);
    *(v0 + 896) = v39;
    outlined init with copy of GetClientIDRequest(v0 + 88, v0 + 952);
    v41 = String.init<A>(describing:)();
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v55);

    *(v37 + 4) = v43;
    _os_log_impl(&dword_26524C000, v35, v36, "GetClientID Request: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x2667577B0](v38, -1, -1);
    MEMORY[0x2667577B0](v37, -1, -1);
  }

  v44 = (*(v0 + 1176) + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_networkOperator);
  v45 = v44[3];
  v46 = v44[4];
  __swift_project_boxed_opaque_existential_1(v44, v45);
  swift_beginAccess();
  v48 = *(v0 + 16);
  v47 = *(v0 + 32);
  *(v0 + 248) = v47;
  v49 = *(v0 + 48);
  v50 = *(v0 + 64);
  *(v0 + 264) = v49;
  *(v0 + 280) = v50;
  v51 = *(v0 + 80);
  *(v0 + 296) = v51;
  *(v0 + 232) = v48;
  *(v0 + 336) = v49;
  *(v0 + 352) = v50;
  *(v0 + 368) = v51;
  *(v0 + 304) = v48;
  *(v0 + 320) = v47;
  v52 = *(v46 + 8);
  outlined init with copy of GetClientIDRequest(v0 + 232, v0 + 376);
  v54 = (v52 + *v52);
  v53 = swift_task_alloc();
  *(v0 + 1240) = v53;
  *v53 = v0;
  v53[1] = KDSRegistrationStateMachine.obtainKDSVendedClientID();

  return v54(v0 + 1024, v0 + 304, v45, v46);
}

{
  v2 = *v1;
  *(*v1 + 1248) = v0;

  if (v0)
  {
    *(v2 + 520) = *(v2 + 304);
    v3 = *(v2 + 320);
    v4 = *(v2 + 336);
    v5 = *(v2 + 352);
    *(v2 + 584) = *(v2 + 368);
    *(v2 + 552) = v4;
    *(v2 + 568) = v5;
    *(v2 + 536) = v3;
    outlined destroy of GetClientIDRequest(v2 + 520);
    v6 = *(v2 + 1232);
    v7 = *(v2 + 1224);
    v8 = KDSRegistrationStateMachine.obtainKDSVendedClientID();
  }

  else
  {
    v9 = *(v2 + 304);
    v10 = *(v2 + 320);
    v11 = *(v2 + 336);
    v12 = *(v2 + 352);
    *(v2 + 656) = *(v2 + 368);
    *(v2 + 624) = v11;
    *(v2 + 640) = v12;
    *(v2 + 592) = v9;
    *(v2 + 608) = v10;
    outlined destroy of GetClientIDRequest(v2 + 592);
    v6 = *(v2 + 1232);
    v7 = *(v2 + 1224);
    v8 = KDSRegistrationStateMachine.obtainKDSVendedClientID();
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

{
  *(v0 + 1136) = *(v0 + 1072);
  *(v0 + 1088) = *(v0 + 1024);
  *(v0 + 1104) = *(v0 + 1040);
  *(v0 + 1120) = *(v0 + 1056);
  v1 = *(v0 + 1144);
  *(v0 + 1256) = v1;
  if (v1)
  {
    v2 = *(v0 + 1176);
    v3 = *(v0 + 1136);

    outlined destroy of GetClientIDResponse(v0 + 1088);
    v4 = *(*v2 + 440);

    v4(v3, v1);
    v5 = *(v2 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator + 24);
    v6 = *(v2 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator + 32);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator), v5);
    v17 = (*(v6 + 40) + **(v6 + 40));
    v7 = swift_task_alloc();
    *(v0 + 1264) = v7;
    *v7 = v0;
    v7[1] = KDSRegistrationStateMachine.obtainKDSVendedClientID();
    v8 = *(v0 + 1208);

    return v17(v3, v1, v8, v5, v6);
  }

  else
  {
    v10 = *(v0 + 1208);
    v11 = *(v0 + 1200);
    v12 = *(v0 + 1192);

    outlined destroy of GetClientIDResponse(v0 + 1088);
    lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError();
    swift_allocError();
    *v13 = 17;
    swift_willThrow();
    (*(v11 + 8))(v10, v12);
    v14 = *(v0 + 64);
    *(v0 + 696) = *(v0 + 48);
    *(v0 + 712) = v14;
    *(v0 + 728) = *(v0 + 80);
    v15 = *(v0 + 32);
    *(v0 + 664) = *(v0 + 16);
    *(v0 + 680) = v15;
    outlined destroy of GetClientIDRequest(v0 + 664);

    v16 = *(v0 + 8);

    return v16();
  }
}

{
  v2 = *v1;
  *(*v1 + 1272) = v0;

  v3 = *(v2 + 1232);
  v4 = *(v2 + 1224);
  if (v0)
  {
    v5 = KDSRegistrationStateMachine.obtainKDSVendedClientID();
  }

  else
  {
    v5 = KDSRegistrationStateMachine.obtainKDSVendedClientID();
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = *(v0 + 1208);
  v2 = *(v0 + 1200);
  v3 = *(v0 + 1192);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 64);
  *(v0 + 840) = *(v0 + 48);
  *(v0 + 856) = v4;
  *(v0 + 872) = *(v0 + 80);
  v5 = *(v0 + 32);
  *(v0 + 808) = *(v0 + 16);
  *(v0 + 824) = v5;
  outlined destroy of GetClientIDRequest(v0 + 808);

  v6 = *(v0 + 8);

  return v6();
}

{
  v1 = *(v0 + 1208);
  v2 = *(v0 + 1200);
  v3 = *(v0 + 1192);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 64);
  *(v0 + 480) = *(v0 + 48);
  *(v0 + 496) = v4;
  *(v0 + 512) = *(v0 + 80);
  v5 = *(v0 + 32);
  *(v0 + 448) = *(v0 + 16);
  *(v0 + 464) = v5;
  outlined destroy of GetClientIDRequest(v0 + 448);

  v6 = *(v0 + 8);

  return v6();
}

{
  v1 = *(v0 + 1208);
  v2 = *(v0 + 1200);
  v3 = *(v0 + 1192);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 64);
  *(v0 + 768) = *(v0 + 48);
  *(v0 + 784) = v4;
  *(v0 + 800) = *(v0 + 80);
  v5 = *(v0 + 32);
  *(v0 + 736) = *(v0 + 16);
  *(v0 + 752) = v5;
  outlined destroy of GetClientIDRequest(v0 + 736);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t KDSRegistrationStateMachine.obtainPhoneAuthInfo()()
{
  v1[2] = v0;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMd, &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMR);
  v1[4] = swift_task_alloc();
  v2 = type metadata accessor for ASN1OctetString();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for DER.Serializer();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v4 = type metadata accessor for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo();
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
  v1[16] = swift_task_alloc();
  v5 = type metadata accessor for URI();
  v1[17] = v5;
  v1[18] = *(v5 - 8);
  v1[19] = swift_task_alloc();
  type metadata accessor for RegistrationActor();
  v1[20] = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20], MEMORY[0x277D4CC28]);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[21] = v7;
  v1[22] = v6;

  return MEMORY[0x2822009F8](KDSRegistrationStateMachine.obtainPhoneAuthInfo(), v7, v6);
}

{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  (*(**(v0 + 16) + 360))();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 128);

    outlined destroy of MLS.KeyPackageProvider?(v4, &_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
    lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError();
    swift_allocError();
    *v5 = 12;
    swift_willThrow();

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = *(v0 + 16);
    (*(*(v0 + 144) + 32))(*(v0 + 152), *(v0 + 128), *(v0 + 136));
    v9 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator;
    *(v0 + 184) = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator;
    v10 = *(v8 + v9 + 24);
    v11 = *(v8 + v9 + 32);
    __swift_project_boxed_opaque_existential_1((v8 + v9), v10);
    v14 = (*(v11 + 16) + **(v11 + 16));
    v12 = swift_task_alloc();
    *(v0 + 192) = v12;
    *v12 = v0;
    v12[1] = KDSRegistrationStateMachine.obtainPhoneAuthInfo();
    v13 = *(v0 + 152);

    return v14(v13, v10, v11);
  }
}

{
  v1 = v0[2];
  v2 = (v1 + v0[23]);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_uniqueClientIdentifier;
  v11 = (*(v4 + 24) + **(v4 + 24));
  v6 = swift_task_alloc();
  v0[28] = v6;
  *v6 = v0;
  v6[1] = KDSRegistrationStateMachine.obtainPhoneAuthInfo();
  v7 = v0[25];
  v8 = v0[26];
  v9 = v0[15];

  return v11(v9, v1 + v5, v7, v8, v3, v4);
}

{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = *(v2 + 176);
  v4 = *(v2 + 168);
  if (v0)
  {
    v5 = KDSRegistrationStateMachine.obtainPhoneAuthInfo();
  }

  else
  {
    v5 = KDSRegistrationStateMachine.obtainPhoneAuthInfo();
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v75 = v0;
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[11];
  v4 = v0[12];

  v5 = *(v4 + 16);
  v5(v1, v2, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[14];
  if (v8)
  {
    v10 = v0[12];
    v11 = v0[13];
    v12 = v0[11];
    v13 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v74[0] = v68;
    *v13 = 136315138;
    v5(v11, v9, v12);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    v17 = *(v10 + 8);
    v17(v9, v12);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, v74);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_26524C000, v6, v7, "Received phoneAuthInfo: %s. Making response DER/ASN1 friendly.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v68);
    MEMORY[0x2667577B0](v68, -1, -1);
    MEMORY[0x2667577B0](v13, -1, -1);
  }

  else
  {
    v19 = v0[11];
    v20 = v0[12];

    v17 = *(v20 + 8);
    v17(v9, v19);
  }

  v21 = v0[29];
  DER.Serializer.init()();
  v22 = KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.acsSignature.getter();
  _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(v22, v23);

  ASN1OctetString.init(contentBytes:)();
  DER.Serializer.serialize<A>(_:)();
  if (v21)
  {
    v24 = v0[18];
    v71 = v0[19];
    v66 = v0[15];
    v69 = v0[17];
    v65 = v0[11];
    v25 = v0[9];
    v26 = v0[10];
    v27 = v17;
    v29 = v0[7];
    v28 = v0[8];
    v30 = v0[5];
    v31 = v0[6];
    outlined consume of Data._Representation(v0[25], v0[26]);

    (*(v31 + 8))(v29, v30);
    (*(v25 + 8))(v26, v28);
    v27(v66, v65);
    (*(v24 + 8))(v71, v69);

    v32 = v0[1];
  }

  else
  {
    v34 = v0[11];
    v33 = v0[12];
    v35 = v0[4];
    v36 = v0[2];
    v37 = DER.Serializer.serializedBytes.getter();
    v38 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v37);
    v40 = v39;

    outlined copy of Data._Representation(v38, v40);
    v70 = v38;
    KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.init(acsSignature:)();
    (*(v33 + 56))(v35, 0, 1, v34);
    (*(*v36 + 296))(v35);

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    v43 = os_log_type_enabled(v41, v42);
    v44 = v0[18];
    v45 = v0[19];
    v72 = v0[15];
    v73 = v0[17];
    v67 = v0[11];
    v46 = v0[9];
    v63 = v0[8];
    v64 = v0[10];
    v62 = v0[7];
    v47 = v0[6];
    v61 = v0[5];
    if (v43)
    {
      v59 = v0[18];
      v60 = v0[19];
      v55 = v0[25];
      v48 = v0[2];
      v56 = v0[26];
      v57 = v40;
      v49 = swift_slowAlloc();
      v58 = v17;
      v50 = swift_slowAlloc();
      v74[0] = v50;
      *v49 = 136315138;
      (*(*v48 + 288))();
      v51 = String.init<A>(describing:)();
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, v74);

      *(v49 + 4) = v53;
      _os_log_impl(&dword_26524C000, v41, v42, "Final PhoneAuthInfo: %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      MEMORY[0x2667577B0](v50, -1, -1);
      MEMORY[0x2667577B0](v49, -1, -1);
      outlined consume of Data._Representation(v55, v56);

      outlined consume of Data._Representation(v70, v57);

      (*(v47 + 8))(v62, v61);
      (*(v46 + 8))(v64, v63);
      v58(v72, v67);
      (*(v59 + 8))(v60, v73);
    }

    else
    {
      outlined consume of Data._Representation(v0[25], v0[26]);

      outlined consume of Data._Representation(v70, v40);

      (*(v47 + 8))(v62, v61);
      (*(v46 + 8))(v64, v63);
      v17(v72, v67);
      (*(v44 + 8))(v45, v73);
    }

    v32 = v0[1];
  }

  return v32();
}

{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[18];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[19];
  v4 = v0[17];
  v5 = v0[18];

  outlined consume of Data._Representation(v1, v2);
  (*(v5 + 8))(v3, v4);

  v6 = v0[1];

  return v6();
}

uint64_t KDSRegistrationStateMachine.obtainPhoneAuthInfo()(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[25] = a1;
  v5[26] = a2;
  v5[27] = v2;

  v6 = v4[22];
  v7 = v4[21];
  if (v2)
  {
    v8 = KDSRegistrationStateMachine.obtainPhoneAuthInfo();
  }

  else
  {
    v8 = KDSRegistrationStateMachine.obtainPhoneAuthInfo();
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

void *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4, v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      outlined consume of Data._Representation(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v11, 0);
      v15 = Data._copyContents(initializing:)();
      outlined consume of Data._Representation(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t KDSRegistrationStateMachine.getIdentity()()
{
  v1[266] = v0;
  v2 = type metadata accessor for MLS.Identity.Credential();
  v1[267] = v2;
  v1[268] = *(v2 - 8);
  v1[269] = swift_task_alloc();
  Identity = type metadata accessor for KDSRegistration.GetIdentityError.ErrorType();
  v1[270] = Identity;
  v1[271] = *(Identity - 8);
  v1[272] = swift_task_alloc();
  IdentityError = type metadata accessor for KDSRegistration.GetIdentityError();
  v1[273] = IdentityError;
  v1[274] = *(IdentityError - 8);
  v1[275] = swift_task_alloc();
  v1[276] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMd, &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMR);
  v1[277] = swift_task_alloc();
  v5 = type metadata accessor for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo();
  v1[278] = v5;
  v1[279] = *(v5 - 8);
  v1[280] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
  v1[281] = swift_task_alloc();
  v6 = type metadata accessor for URI();
  v1[282] = v6;
  v1[283] = *(v6 - 8);
  v1[284] = swift_task_alloc();
  type metadata accessor for RegistrationActor();
  v1[285] = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20], MEMORY[0x277D4CC28]);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[286] = v8;
  v1[287] = v7;

  return MEMORY[0x2822009F8](KDSRegistrationStateMachine.getIdentity(), v8, v7);
}

{
  v1 = *(v0 + 2264);
  v2 = *(v0 + 2256);
  v3 = *(v0 + 2248);
  (*(**(v0 + 2128) + 360))();
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 2248);

    outlined destroy of MLS.KeyPackageProvider?(v4, &_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
    lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError();
    swift_allocError();
    *v5 = 12;
    swift_willThrow();
LABEL_8:

    v20 = *(v0 + 8);

    return v20();
  }

  v6 = *(v0 + 2128);
  v7 = (*(*(v0 + 2264) + 32))(*(v0 + 2272), *(v0 + 2248), *(v0 + 2256));
  *(v0 + 2304) = (*(*v6 + 384))(v7);
  *(v0 + 2312) = v8;
  if (!v8)
  {
    v16 = *(v0 + 2272);
    v17 = *(v0 + 2264);
    v18 = *(v0 + 2256);

    lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError();
    swift_allocError();
    *v19 = 14;
    swift_willThrow();
    (*(v17 + 8))(v16, v18);
    goto LABEL_8;
  }

  v9 = *(v0 + 2128);
  *(v0 + 2400) = (*(*v9 + 408))();
  v10 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator;
  *(v0 + 2320) = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator;
  v11 = *(v9 + v10 + 24);
  v12 = *(v9 + v10 + 32);
  __swift_project_boxed_opaque_existential_1((v9 + v10), v11);
  v21 = (*(v12 + 32) + **(v12 + 32));
  v13 = swift_task_alloc();
  *(v0 + 2328) = v13;
  *v13 = v0;
  v13[1] = KDSRegistrationStateMachine.getIdentity();
  v14 = *(v0 + 2272);

  return v21(v0 + 2016, v14, v11, v12);
}

{
  v2 = *v1;
  *(*v1 + 2336) = v0;

  if (v0)
  {

    v3 = *(v2 + 2296);
    v4 = *(v2 + 2288);
    v5 = KDSRegistrationStateMachine.getIdentity();
  }

  else
  {
    v3 = *(v2 + 2296);
    v4 = *(v2 + 2288);
    v5 = KDSRegistrationStateMachine.getIdentity();
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v71 = v0;
  if (!*(v0 + 2040))
  {
    v15 = *(v0 + 2272);
    v16 = *(v0 + 2264);
    v17 = *(v0 + 2256);
    v18 = *(v0 + 2176);
    v19 = *(v0 + 2168);
    v20 = *(v0 + 2160);

    outlined destroy of MLS.KeyPackageProvider?(v0 + 2016, &_s15SecureMessaging3MLSO22SwiftMLSRCSCSRProtocol_pSgMd, &_s15SecureMessaging3MLSO22SwiftMLSRCSCSRProtocol_pSgMR);
    (*(v19 + 104))(v18, *MEMORY[0x277D4C9C0], v20);
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError, MEMORY[0x277D4C9F0], MEMORY[0x277D4C9F8]);
    swift_allocError();
    KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    (*(v16 + 8))(v15, v17);
    goto LABEL_5;
  }

  v1 = *(v0 + 2232);
  v2 = *(v0 + 2224);
  v3 = *(v0 + 2216);
  v4 = *(v0 + 2128);
  outlined init with take of MLS.SwiftMLSPersisterProtocol((v0 + 2016), v0 + 2056);
  __swift_project_boxed_opaque_existential_1((v0 + 2056), *(v0 + 2080));
  v5 = dispatch thunk of MLS.SwiftMLSRCSCSRProtocol.certificateSigningRequest.getter();
  (*(*v4 + 344))(v5);
  __swift_project_boxed_opaque_existential_1((v0 + 2056), *(v0 + 2080));
  v6 = dispatch thunk of MLS.SwiftMLSRCSCSRProtocol.participantInfo.getter();
  v7 = (*(*v4 + 320))(v6);
  (*(*v4 + 288))(v7);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v8 = *(v0 + 2272);
    v9 = *(v0 + 2264);
    v10 = *(v0 + 2256);
    v11 = *(v0 + 2216);
    v12 = *(v0 + 2176);
    v13 = *(v0 + 2168);
    v14 = *(v0 + 2160);

    outlined destroy of MLS.KeyPackageProvider?(v11, &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMd, &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMR);
    (*(v13 + 104))(v12, *MEMORY[0x277D4C9D8], v14);
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError, MEMORY[0x277D4C9F0], MEMORY[0x277D4C9F8]);
    swift_allocError();
    KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    (*(v9 + 8))(v8, v10);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2056));
LABEL_5:

    v21 = *(v0 + 8);

    return v21();
  }

  if (*(v0 + 2400) == 4)
  {
    v23 = 0;
  }

  else
  {
    v23 = *(v0 + 2400);
  }

  (*(*(v0 + 2232) + 32))(*(v0 + 2240), *(v0 + 2216), *(v0 + 2224));
  __swift_project_boxed_opaque_existential_1((v0 + 2056), *(v0 + 2080));
  v24 = dispatch thunk of MLS.SwiftMLSRCSCSRProtocol.participantInfo.getter();
  v26 = v25;
  __swift_project_boxed_opaque_existential_1((v0 + 2056), *(v0 + 2080));
  v27 = dispatch thunk of MLS.SwiftMLSRCSCSRProtocol.certificateSigningRequest.getter();
  v29 = v28;
  v30 = MEMORY[0x266756630]();
  v32 = v31;
  v33 = KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.acsSignature.getter();
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v35 = 0xE700000000000000;
      v36 = 0x7373654C534D53;
    }

    else
    {
      v35 = 0xE800000000000000;
      v36 = 0x6E656B6F54534352;
    }
  }

  else if (v23)
  {
    v35 = 0xE300000000000000;
    v36 = 5459283;
  }

  else
  {
    v35 = 0xE700000000000000;
    v36 = 0x6E776F6E6B6E55;
  }

  v37 = *(v0 + 2312);
  v38 = *(v0 + 2304);
  v39 = *(v0 + 2128);
  *(v0 + 240) = v24;
  *(v0 + 248) = v26;
  *(v0 + 256) = v27;
  *(v0 + 264) = v29;
  *(v0 + 272) = v30;
  *(v0 + 280) = v32;
  *(v0 + 288) = v33;
  *(v0 + 296) = v34;
  *(v0 + 304) = v38;
  *(v0 + 312) = v37;
  *(v0 + 320) = v36;
  *(v0 + 328) = v35;
  *(v0 + 336) = xmmword_2653419D0;
  v40 = (*(*v39 + 504))();
  if (v41 >> 60 != 15)
  {
    v42 = v40;
    v43 = v41;
    outlined consume of Data?(0, 0xF000000000000000);
    *(v0 + 336) = v42;
    *(v0 + 344) = v43;
  }

  *(v0 + 2344) = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_logger;
  v44 = *(v0 + 320);
  *(v0 + 416) = *(v0 + 304);
  *(v0 + 432) = v44;
  *(v0 + 448) = *(v0 + 336);
  v45 = *(v0 + 256);
  *(v0 + 352) = *(v0 + 240);
  *(v0 + 368) = v45;
  v46 = *(v0 + 288);
  *(v0 + 384) = *(v0 + 272);
  *(v0 + 400) = v46;
  outlined init with copy of IdentityRequest(v0 + 352, v0 + 464);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  outlined destroy of IdentityRequest(v0 + 352);
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v70 = v50;
    *v49 = 136315138;
    v51 = *(v0 + 432);
    *(v0 + 192) = *(v0 + 416);
    *(v0 + 208) = v51;
    *(v0 + 224) = *(v0 + 448);
    v52 = *(v0 + 368);
    *(v0 + 128) = *(v0 + 352);
    *(v0 + 144) = v52;
    v53 = *(v0 + 400);
    *(v0 + 160) = *(v0 + 384);
    *(v0 + 176) = v53;
    outlined init with copy of IdentityRequest(v0 + 352, v0 + 1360);
    v54 = String.init<A>(describing:)();
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, &v70);

    *(v49 + 4) = v56;
    _os_log_impl(&dword_26524C000, v47, v48, "getIdentity Request %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    MEMORY[0x2667577B0](v50, -1, -1);
    MEMORY[0x2667577B0](v49, -1, -1);
  }

  v57 = (*(v0 + 2128) + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_networkOperator);
  v58 = v57[3];
  v59 = v57[4];
  __swift_project_boxed_opaque_existential_1(v57, v58);
  swift_beginAccess();
  v60 = *(v0 + 304);
  v61 = *(v0 + 320);
  *(v0 + 640) = v60;
  *(v0 + 656) = v61;
  v62 = *(v0 + 336);
  *(v0 + 672) = v62;
  v63 = *(v0 + 240);
  v64 = *(v0 + 256);
  *(v0 + 576) = v63;
  *(v0 + 592) = v64;
  v66 = *(v0 + 272);
  v65 = *(v0 + 288);
  *(v0 + 608) = v66;
  *(v0 + 624) = v65;
  *(v0 + 912) = v63;
  *(v0 + 928) = v64;
  *(v0 + 944) = v66;
  *(v0 + 960) = v65;
  *(v0 + 976) = v60;
  *(v0 + 992) = v61;
  *(v0 + 1008) = v62;
  v67 = *(v59 + 32);
  outlined init with copy of IdentityRequest(v0 + 576, v0 + 1024);
  v69 = (v67 + *v67);
  v68 = swift_task_alloc();
  *(v0 + 2352) = v68;
  *v68 = v0;
  v68[1] = KDSRegistrationStateMachine.getIdentity();

  return v69(v0 + 1824, v0 + 912, v58, v59);
}

{
  v2 = *v1;
  *(*v1 + 2360) = v0;

  v3 = *(v2 + 912);
  v4 = *(v2 + 928);
  v5 = *(v2 + 960);
  if (v0)
  {
    *(v2 + 1280) = *(v2 + 944);
    *(v2 + 1264) = v4;
    *(v2 + 1248) = v3;
    v6 = *(v2 + 976);
    v7 = *(v2 + 992);
    *(v2 + 1344) = *(v2 + 1008);
    *(v2 + 1328) = v7;
    *(v2 + 1312) = v6;
    *(v2 + 1296) = v5;
    outlined destroy of IdentityRequest(v2 + 1248);
    v8 = *(v2 + 2296);
    v9 = *(v2 + 2288);
    v10 = KDSRegistrationStateMachine.getIdentity();
  }

  else
  {
    *(v2 + 1504) = *(v2 + 944);
    *(v2 + 1488) = v4;
    *(v2 + 1472) = v3;
    v11 = *(v2 + 976);
    v12 = *(v2 + 992);
    *(v2 + 1568) = *(v2 + 1008);
    *(v2 + 1552) = v12;
    *(v2 + 1536) = v11;
    *(v2 + 1520) = v5;
    outlined destroy of IdentityRequest(v2 + 1472);
    v8 = *(v2 + 2296);
    v9 = *(v2 + 2288);
    v10 = KDSRegistrationStateMachine.getIdentity();
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

{
  v69 = v0;
  *(v0 + 1696) = *(v0 + 1824);
  *(v0 + 1712) = *(v0 + 1840);
  *(v0 + 1728) = *(v0 + 1856);
  *(v0 + 1744) = *(v0 + 1872);
  outlined init with copy of IdentityResponse(v0 + 1696, v0 + 1760);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  outlined destroy of IdentityResponse(v0 + 1696);
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v68[0] = v4;
    *v3 = 136315138;
    v5 = *(v0 + 1712);
    *(v0 + 1888) = *(v0 + 1696);
    *(v0 + 1904) = v5;
    v6 = *(v0 + 1744);
    *(v0 + 1920) = *(v0 + 1728);
    *(v0 + 1936) = v6;
    outlined init with copy of IdentityResponse(v0 + 1696, v0 + 1952);
    v7 = String.init<A>(describing:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v68);

    *(v3 + 4) = v9;
    _os_log_impl(&dword_26524C000, v1, v2, "getIdentity Response %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x2667577B0](v4, -1, -1);
    MEMORY[0x2667577B0](v3, -1, -1);
  }

  v10 = *(v0 + 1744);
  *(v0 + 2368) = v10;
  v11 = *(v0 + 1752);
  *(v0 + 2376) = v11;
  if (v11 >> 60 == 15)
  {
    v12 = *(v0 + 2272);
    v13 = *(v0 + 2264);
    v14 = *(v0 + 2256);
    v15 = *(v0 + 2240);
    v16 = *(v0 + 2232);
    v17 = *(v0 + 2224);

    lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError();
    swift_allocError();
    *v18 = 13;
    swift_willThrow();
    outlined destroy of IdentityResponse(v0 + 1696);
    (*(v16 + 8))(v15, v17);
    (*(v13 + 8))(v12, v14);
    v19 = *(v0 + 320);
    *(v0 + 80) = *(v0 + 304);
    *(v0 + 96) = v19;
    *(v0 + 112) = *(v0 + 336);
    v20 = *(v0 + 256);
    *(v0 + 16) = *(v0 + 240);
    *(v0 + 32) = v20;
    v21 = *(v0 + 288);
    *(v0 + 48) = *(v0 + 272);
    *(v0 + 64) = v21;
    outlined destroy of IdentityRequest(v0 + 16);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2056));
LABEL_9:

    v41 = *(v0 + 8);

    return v41();
  }

  outlined copy of Data?(v10, v11);
  outlined copy of Data._Representation(v10, v11);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  outlined consume of Data?(v10, v11);
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v68[0] = v25;
    *v24 = 136315138;
    outlined copy of Data._Representation(v10, v11);
    v26 = Data.description.getter();
    v28 = v27;
    outlined consume of Data?(v10, v11);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, v68);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_26524C000, v22, v23, "getIdentity parsing response identity: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x2667577B0](v25, -1, -1);
    MEMORY[0x2667577B0](v24, -1, -1);
  }

  v65 = *(v0 + 2360);
  v30 = *(v0 + 2176);
  v31 = *(v0 + 2168);
  v32 = *(v0 + 2160);
  v33 = swift_task_alloc();
  *(v33 + 16) = v10;
  *(v33 + 24) = v11;
  (*(v31 + 104))(v30, *MEMORY[0x277D4C9E0], v32);
  KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17SecCertificateRefaGMd, &_sSaySo17SecCertificateRefaGMR);
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError, MEMORY[0x277D4C9F0], MEMORY[0x277D4C9E8]);
  _s15SecureMessaging7rethrow_2as3logq_q_yKXK_xySScSgtxYKAA14VersatileErrorRzr0_lF();
  if (v65)
  {
    v64 = *(v0 + 2256);
    v66 = *(v0 + 2272);
    v62 = *(v0 + 2240);
    v63 = *(v0 + 2264);
    v34 = *(v0 + 2232);
    v60 = *(v0 + 2200);
    v61 = *(v0 + 2224);
    v35 = *(v0 + 2192);
    v36 = *(v0 + 2184);
    (*(v35 + 8))(*(v0 + 2208), v36);

    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError, MEMORY[0x277D4C9F0], MEMORY[0x277D4C9F8]);
    swift_allocError();
    (*(v35 + 32))(v37, v60, v36);
    outlined consume of Data?(v10, v11);
    outlined destroy of IdentityResponse(v0 + 1696);
    (*(v34 + 8))(v62, v61);
    (*(v63 + 8))(v66, v64);
    v38 = *(v0 + 320);
    *(v0 + 1648) = *(v0 + 304);
    *(v0 + 1664) = v38;
    *(v0 + 1680) = *(v0 + 336);
    v39 = *(v0 + 256);
    *(v0 + 1584) = *(v0 + 240);
    *(v0 + 1600) = v39;
    v40 = *(v0 + 288);
    *(v0 + 1616) = *(v0 + 272);
    *(v0 + 1632) = v40;
    outlined destroy of IdentityRequest(v0 + 1584);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2056));

    goto LABEL_9;
  }

  (*(*(v0 + 2192) + 8))(*(v0 + 2208), *(v0 + 2184));

  v43 = *(v0 + 2120);

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v68[0] = v47;
    *v46 = 136315138;
    type metadata accessor for SecCertificateRef();
    v49 = MEMORY[0x266756AF0](v43, v48);
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v68);

    *(v46 + 4) = v51;
    _os_log_impl(&dword_26524C000, v44, v45, "getIdentity parsed response: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    MEMORY[0x2667577B0](v47, -1, -1);
    MEMORY[0x2667577B0](v46, -1, -1);
  }

  v52 = *(v0 + 2152);
  v53 = *(v0 + 2144);
  v54 = (*(v0 + 2128) + *(v0 + 2320));
  *v52 = v43;
  (*(v53 + 104))(v52);
  v55 = v54[3];
  v56 = v54[4];
  __swift_project_boxed_opaque_existential_1(v54, v55);
  v67 = (*(v56 + 48) + **(v56 + 48));
  v57 = swift_task_alloc();
  *(v0 + 2384) = v57;
  *v57 = v0;
  v57[1] = KDSRegistrationStateMachine.getIdentity();
  v58 = *(v0 + 2272);
  v59 = *(v0 + 2152);

  return v67(v59, v58, v55, v56);
}

{
  v2 = *v1;
  *(*v1 + 2392) = v0;

  v3 = *(v2 + 2296);
  v4 = *(v2 + 2288);
  if (v0)
  {
    v5 = KDSRegistrationStateMachine.getIdentity();
  }

  else
  {
    v5 = KDSRegistrationStateMachine.getIdentity();
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = *(v0 + 2376);
  v2 = *(v0 + 2368);
  v3 = *(v0 + 2264);
  v15 = *(v0 + 2256);
  v16 = *(v0 + 2272);
  v4 = *(v0 + 2240);
  v5 = *(v0 + 2232);
  v6 = *(v0 + 2224);
  v7 = *(v0 + 2152);
  v8 = *(v0 + 2144);
  v9 = *(v0 + 2136);

  outlined consume of Data?(v2, v1);
  outlined destroy of IdentityResponse(v0 + 1696);
  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v16, v15);
  v10 = *(v0 + 320);
  *(v0 + 752) = *(v0 + 304);
  *(v0 + 768) = v10;
  *(v0 + 784) = *(v0 + 336);
  v11 = *(v0 + 256);
  *(v0 + 688) = *(v0 + 240);
  *(v0 + 704) = v11;
  v12 = *(v0 + 288);
  *(v0 + 720) = *(v0 + 272);
  *(v0 + 736) = v12;
  outlined destroy of IdentityRequest(v0 + 688);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2056));

  v13 = *(v0 + 8);

  return v13();
}

{
  v1 = v0[284];
  v2 = v0[283];
  v3 = v0[282];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

{
  v1 = *(v0 + 2272);
  v2 = *(v0 + 2264);
  v3 = *(v0 + 2256);
  v4 = *(v0 + 2240);
  v5 = *(v0 + 2232);
  v6 = *(v0 + 2224);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = *(v0 + 272);
  *(v0 + 1184) = *(v0 + 288);
  v8 = *(v0 + 320);
  *(v0 + 1200) = *(v0 + 304);
  *(v0 + 1216) = v8;
  *(v0 + 1232) = *(v0 + 336);
  v9 = *(v0 + 256);
  *(v0 + 1136) = *(v0 + 240);
  *(v0 + 1152) = v9;
  *(v0 + 1168) = v7;
  outlined destroy of IdentityRequest(v0 + 1136);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2056));

  v10 = *(v0 + 8);

  return v10();
}

{
  v1 = *(v0 + 2376);
  v2 = *(v0 + 2368);
  v3 = *(v0 + 2264);
  v15 = *(v0 + 2256);
  v16 = *(v0 + 2272);
  v4 = *(v0 + 2240);
  v5 = *(v0 + 2232);
  v6 = *(v0 + 2224);
  v7 = *(v0 + 2152);
  v8 = *(v0 + 2144);
  v9 = *(v0 + 2136);

  outlined consume of Data?(v2, v1);
  outlined destroy of IdentityResponse(v0 + 1696);
  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v16, v15);
  v10 = *(v0 + 320);
  *(v0 + 864) = *(v0 + 304);
  *(v0 + 880) = v10;
  *(v0 + 896) = *(v0 + 336);
  v11 = *(v0 + 256);
  *(v0 + 800) = *(v0 + 240);
  *(v0 + 816) = v11;
  v12 = *(v0 + 288);
  *(v0 + 832) = *(v0 + 272);
  *(v0 + 848) = v12;
  outlined destroy of IdentityRequest(v0 + 800);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2056));

  v13 = *(v0 + 8);

  return v13();
}

void closure #1 in KDSRegistrationStateMachine.getIdentity()(uint64_t a1, unint64_t a2)
{

  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v8);
    _os_log_impl(&dword_26524C000, oslog, v4, "getIdentity failed parsing responseIdentity: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x2667577B0](v6, -1, -1);
    MEMORY[0x2667577B0](v5, -1, -1);
  }
}

uint64_t KDSRegistrationStateMachine.register()()
{
  v1[78] = v0;
  v2 = type metadata accessor for KDSRegistration.RegisterKeyPackageError.ErrorType();
  v1[79] = v2;
  v1[80] = *(v2 - 8);
  v1[81] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO14KeyPackageInfoVSgMd, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMR);
  v1[82] = swift_task_alloc();
  v3 = type metadata accessor for MLS.KeyPackageInfo();
  v1[83] = v3;
  v1[84] = *(v3 - 8);
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
  v1[87] = swift_task_alloc();
  v4 = type metadata accessor for URI();
  v1[88] = v4;
  v1[89] = *(v4 - 8);
  v1[90] = swift_task_alloc();
  type metadata accessor for RegistrationActor();
  v1[91] = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20], MEMORY[0x277D4CC28]);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[92] = v6;
  v1[93] = v5;

  return MEMORY[0x2822009F8](KDSRegistrationStateMachine.register(), v6, v5);
}

{
  v1 = *(v0 + 712);
  v2 = *(v0 + 704);
  v3 = *(v0 + 696);
  (*(**(v0 + 624) + 360))();
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 696);
    v5 = *(v0 + 648);
    v6 = *(v0 + 640);
    v7 = *(v0 + 632);

    outlined destroy of MLS.KeyPackageProvider?(v4, &_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
    (*(v6 + 104))(v5, *MEMORY[0x277D4CB20], v7);
    type metadata accessor for KDSRegistration.RegisterKeyPackageError();
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError, MEMORY[0x277D4CB48], MEMORY[0x277D4CB50]);
    swift_allocError();
    KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
LABEL_8:

    v24 = *(v0 + 8);

    return v24();
  }

  v8 = *(v0 + 624);
  v9 = (*(*(v0 + 712) + 32))(*(v0 + 720), *(v0 + 696), *(v0 + 704));
  *(v0 + 752) = (*(*v8 + 384))(v9);
  *(v0 + 760) = v10;
  if (!v10)
  {
    v18 = *(v0 + 720);
    v19 = *(v0 + 712);
    v20 = *(v0 + 704);
    v21 = *(v0 + 648);
    v22 = *(v0 + 640);
    v23 = *(v0 + 632);

    (*(v22 + 104))(v21, *MEMORY[0x277D4CB30], v23);
    type metadata accessor for KDSRegistration.RegisterKeyPackageError();
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError, MEMORY[0x277D4CB48], MEMORY[0x277D4CB50]);
    swift_allocError();
    KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    (*(v19 + 8))(v18, v20);
    goto LABEL_8;
  }

  v11 = *(v0 + 624);
  *(v0 + 872) = (*(*v11 + 408))();
  v12 = *(v11 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator + 24);
  v13 = *(v11 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator + 32);
  __swift_project_boxed_opaque_existential_1((v11 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator), v12);
  v25 = (*(v13 + 56) + **(v13 + 56));
  v14 = swift_task_alloc();
  *(v0 + 768) = v14;
  *v14 = v0;
  v14[1] = KDSRegistrationStateMachine.register();
  v15 = *(v0 + 720);
  v16 = *(v0 + 680);

  return v25(v16, v15, v12, v13);
}

{
  v2 = *v1;
  *(*v1 + 776) = v0;

  if (v0)
  {

    v3 = *(v2 + 744);
    v4 = *(v2 + 736);
    v5 = KDSRegistrationStateMachine.register();
  }

  else
  {
    v3 = *(v2 + 744);
    v4 = *(v2 + 736);
    v5 = KDSRegistrationStateMachine.register();
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = *(v0 + 688);
  v2 = *(v0 + 672);
  v3 = *(v0 + 664);
  v4 = *(v0 + 656);
  v5 = *(v0 + 624);
  if (*(v0 + 872) == 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v0 + 872);
  }

  (*(v2 + 32))(*(v0 + 688), *(v0 + 680), *(v0 + 664));
  (*(v2 + 16))(v4, v1, v3);
  (*(v2 + 56))(v4, 0, 1, v3);
  v7 = (*(*v5 + 464))(v4);
  v8 = MEMORY[0x266756630](v7);
  v32 = v9;
  v34 = v8;
  *(v0 + 784) = v8;
  *(v0 + 792) = v9;
  v10 = MLS.KeyPackageInfo.rawKeyPackage.getter();
  v12 = v11;
  v31 = v10;
  *(v0 + 800) = v10;
  *(v0 + 808) = v11;
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v13 = 0xE700000000000000;
      v14 = 0x7373654C534D53;
    }

    else
    {
      v13 = 0xE800000000000000;
      v14 = 0x6E656B6F54534352;
    }
  }

  else if (v6)
  {
    v13 = 0xE300000000000000;
    v14 = 5459283;
  }

  else
  {
    v13 = 0xE700000000000000;
    v14 = 0x6E776F6E6B6E55;
  }

  *(v0 + 824) = v13;
  *(v0 + 816) = v14;
  v15 = (*(**(v0 + 624) + 504))();
  if (v16 >> 60 == 15)
  {
    v17 = 0;
    v18 = 0xF000000000000000;
  }

  else
  {
    v17 = v15;
    v18 = v16;
    outlined consume of Data?(0, 0xF000000000000000);
  }

  *(v0 + 840) = v18;
  *(v0 + 832) = v17;
  v19 = *(v0 + 760);
  v20 = *(v0 + 752);
  v21 = *(v0 + 624);
  v22 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_networkOperator;
  *(v0 + 848) = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_networkOperator;
  v23 = *(v21 + v22 + 24);
  v24 = *(v21 + v22 + 32);
  __swift_project_boxed_opaque_existential_1((v21 + v22), v23);
  *(v0 + 24) = v32;
  *(v0 + 32) = v31;
  *(v0 + 40) = v12;
  *(v0 + 48) = v20;
  *(v0 + 56) = v19;
  *(v0 + 64) = v14;
  *(v0 + 72) = v13;
  *(v0 + 80) = v17;
  *(v0 + 88) = v18;
  v25 = *(v0 + 32);
  v26 = *(v0 + 64);
  v27 = *(v0 + 80);
  *(v0 + 128) = *(v0 + 48);
  *(v0 + 144) = v26;
  *(v0 + 16) = v34;
  *(v0 + 160) = v27;
  *(v0 + 96) = *(v0 + 16);
  *(v0 + 112) = v25;
  v28 = *(v24 + 16);
  outlined init with copy of RegisterKeyPackageRequest(v0 + 16, v0 + 176);
  v33 = (v28 + *v28);
  v29 = swift_task_alloc();
  *(v0 + 856) = v29;
  *v29 = v0;
  v29[1] = KDSRegistrationStateMachine.register();

  return v33(v0 + 576, v0 + 96, v23, v24);
}

{
  v2 = *v1;
  *(*v1 + 864) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 112);
  v5 = *(v2 + 128);
  v6 = *(v2 + 160);
  if (v0)
  {
    *(v2 + 384) = *(v2 + 144);
    *(v2 + 400) = v6;
    *(v2 + 352) = v4;
    *(v2 + 368) = v5;
    *(v2 + 336) = v3;
    outlined destroy of RegisterKeyPackageRequest(v2 + 336);
    v7 = *(v2 + 744);
    v8 = *(v2 + 736);
    v9 = KDSRegistrationStateMachine.register();
  }

  else
  {
    *(v2 + 464) = *(v2 + 144);
    *(v2 + 480) = v6;
    *(v2 + 432) = v4;
    *(v2 + 448) = v5;
    *(v2 + 416) = v3;
    outlined destroy of RegisterKeyPackageRequest(v2 + 416);

    v7 = *(v2 + 744);
    v8 = *(v2 + 736);
    v9 = KDSRegistrationStateMachine.register();
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

{
  v1 = *(v0 + 848);
  v2 = *(v0 + 624);

  v3 = *(v2 + v1 + 24);
  v4 = *(v2 + v1 + 32);
  __swift_project_boxed_opaque_existential_1((v2 + v1), v3);
  v5 = (*(v4 + 40))(v3, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = v5;
    _os_log_impl(&dword_26524C000, v6, v7, "Setting heartbeat interval to %f", v8, 0xCu);
    MEMORY[0x2667577B0](v8, -1, -1);
  }

  v9 = *(v0 + 832);
  v21 = *(v0 + 800);
  v22 = *(v0 + 816);
  v19 = *(v0 + 784);
  v20 = *(v0 + 752);
  v10 = *(v0 + 720);
  v11 = *(v0 + 712);
  v12 = *(v0 + 704);
  v23 = *(v0 + 840);
  v13 = *(v0 + 688);
  v14 = *(v0 + 672);
  v15 = *(v0 + 664);
  v16 = *(v0 + 624);

  (*(*v16 + 488))(COERCE_DOUBLE(*&v5), 0);
  (*(v14 + 8))(v13, v15);
  (*(v11 + 8))(v10, v12);
  *(v0 + 496) = v19;
  *(v0 + 512) = v21;
  *(v0 + 528) = v20;
  *(v0 + 544) = v22;
  *(v0 + 560) = v9;
  *(v0 + 568) = v23;
  outlined destroy of RegisterKeyPackageRequest(v0 + 496);

  v17 = *(v0 + 8);

  return v17();
}

{
  v1 = v0[97];
  v2 = v0[90];
  v3 = v0[89];
  v4 = v0[88];
  v5 = v0[81];
  v6 = v0[80];
  v7 = v0[79];

  (*(v6 + 104))(v5, *MEMORY[0x277D4CB18], v7);
  type metadata accessor for KDSRegistration.RegisterKeyPackageError();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError, MEMORY[0x277D4CB48], MEMORY[0x277D4CB50]);
  swift_allocError();
  KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();
  swift_willThrow();

  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

{
  v1 = *(v0 + 840);
  v2 = *(v0 + 832);
  v13 = *(v0 + 800);
  v14 = *(v0 + 816);
  v11 = *(v0 + 784);
  v12 = *(v0 + 752);
  v3 = *(v0 + 720);
  v4 = *(v0 + 712);
  v5 = *(v0 + 704);
  v6 = *(v0 + 688);
  v7 = *(v0 + 672);
  v8 = *(v0 + 664);

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  *(v0 + 256) = v11;
  *(v0 + 272) = v13;
  *(v0 + 288) = v12;
  *(v0 + 304) = v14;
  *(v0 + 320) = v2;
  *(v0 + 328) = v1;
  outlined destroy of RegisterKeyPackageRequest(v0 + 256);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t KDSRegistrationStateMachine.deregister()()
{
  v1[12] = v0;
  v2 = type metadata accessor for KDSRegistration.DeregisterKeyPackageError.ErrorType();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
  v1[16] = swift_task_alloc();
  v3 = type metadata accessor for URI();
  v1[17] = v3;
  v1[18] = *(v3 - 8);
  v1[19] = swift_task_alloc();
  type metadata accessor for RegistrationActor();
  v1[20] = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20], MEMORY[0x277D4CC28]);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[21] = v5;
  v1[22] = v4;

  return MEMORY[0x2822009F8](KDSRegistrationStateMachine.deregister(), v5, v4);
}

{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  (*(**(v0 + 96) + 360))();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 120);
    v5 = *(v0 + 128);
    v6 = *(v0 + 104);
    v7 = *(v0 + 112);

    outlined destroy of MLS.KeyPackageProvider?(v5, &_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
    (*(v7 + 104))(v4, *MEMORY[0x277D4CB78], v6);
    type metadata accessor for KDSRegistration.DeregisterKeyPackageError();
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError, MEMORY[0x277D4CB88], MEMORY[0x277D4CB90]);
    swift_allocError();
    KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();
    swift_willThrow();

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 96);
    v11 = (*(*(v0 + 144) + 32))(*(v0 + 152), *(v0 + 128), *(v0 + 136));
    v12 = MEMORY[0x266756630](v11);
    v14 = v13;
    *(v0 + 184) = v13;
    v15 = (*(*v10 + 504))();
    if (v16 >> 60 == 15)
    {
      v17 = 0;
      v18 = 0xF000000000000000;
    }

    else
    {
      v17 = v15;
      v18 = v16;
      outlined consume of Data?(0, 0xF000000000000000);
    }

    *(v0 + 192) = v17;
    *(v0 + 200) = v18;
    v19 = (*(v0 + 96) + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_networkOperator);
    v20 = v19[3];
    v21 = v19[4];
    __swift_project_boxed_opaque_existential_1(v19, v20);
    *(v0 + 64) = v12;
    *(v0 + 72) = v14;
    *(v0 + 80) = v17;
    *(v0 + 88) = v18;
    v22 = *(v21 + 24);

    outlined copy of Data?(v17, v18);
    v24 = (v22 + *v22);
    v23 = swift_task_alloc();
    *(v0 + 208) = v23;
    *v23 = v0;
    v23[1] = KDSRegistrationStateMachine.deregister();

    return v24(v0 + 16, v0 + 64, v20, v21);
  }
}

{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = v2[10];
    v4 = v2[11];

    outlined consume of Data?(v3, v4);
    v5 = v2[21];
    v6 = v2[22];
    v7 = KDSRegistrationStateMachine.deregister();
  }

  else
  {
    v8 = v2[10];
    v9 = v2[11];

    outlined consume of Data?(v8, v9);

    v5 = v2[21];
    v6 = v2[22];
    v7 = KDSRegistrationStateMachine.deregister();
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_26524C000, v1, v2, "Deregistered URI.", v3, 2u);
    MEMORY[0x2667577B0](v3, -1, -1);
  }

  v5 = v0[24];
  v4 = v0[25];
  v7 = v0[18];
  v6 = v0[19];
  v8 = v0[17];

  (*(v7 + 8))(v6, v8);

  outlined consume of Data?(v5, v4);

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[19];
  v4 = v0[17];
  v5 = v0[18];

  (*(v5 + 8))(v3, v4);

  outlined consume of Data?(v1, v2);

  v6 = v0[1];

  return v6();
}

uint64_t KDSRegistrationStateMachine.saveState()()
{
  v1[2] = v0;
  type metadata accessor for RegistrationActor();
  v1[3] = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20], MEMORY[0x277D4CC28]);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](KDSRegistrationStateMachine.saveState(), v3, v2);
}

{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_26524C000, v1, v2, "Saving state machine state.", v3, 2u);
    MEMORY[0x2667577B0](v3, -1, -1);
  }

  v4 = *(v0 + 16);

  v5 = (v4 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator);
  v6 = *(v4 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator + 24);
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v11 = (*(v7 + 64) + **(v7 + 64));
  v8 = swift_task_alloc();
  *(v0 + 48) = v8;
  *v8 = v0;
  v8[1] = KDSRegistrationStateMachine.saveState();
  v9 = *(v0 + 16);

  return v11(v9, v6, v7);
}

{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = KDSRegistrationStateMachine.saveState();
  }

  else
  {
    v5 = KDSRegistrationStateMachine.saveState();
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t KDSRegistrationStateMachine.setupHeartbeat()()
{
  v1[2] = v0;
  v2 = type metadata accessor for KDSRegistration.RegisterKeyPackageError.ErrorType();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  type metadata accessor for RegistrationActor();
  v1[6] = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20], MEMORY[0x277D4CC28]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x2822009F8](KDSRegistrationStateMachine.setupHeartbeat(), v4, v3);
}

{
  v0[9] = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_logger;
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_26524C000, v1, v2, "Setting up next heartbeat.", v3, 2u);
    MEMORY[0x2667577B0](v3, -1, -1);
  }

  v4 = v0[2];

  v5 = (*(*v4 + 480))();
  if (v6)
  {
    v7 = v0[5];
    v8 = v0[3];
    v9 = v0[4];

    (*(v9 + 104))(v7, *MEMORY[0x277D4CB40], v8);
    type metadata accessor for KDSRegistration.RegisterKeyPackageError();
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError, MEMORY[0x277D4CB48], MEMORY[0x277D4CB50]);
    swift_allocError();
    KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v5;
    v13 = (v0[2] + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator);
    v14 = v13[3];
    v15 = v13[4];
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v18 = (*(v15 + 72) + **(v15 + 72));
    v16 = swift_task_alloc();
    v0[10] = v16;
    *v16 = v0;
    v16[1] = KDSRegistrationStateMachine.setupHeartbeat();
    v17.n128_u64[0] = v12;

    return v18(v14, v15, v17);
  }
}

{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = KDSRegistrationStateMachine.setupHeartbeat();
  }

  else
  {
    v5 = KDSRegistrationStateMachine.setupHeartbeat();
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 88);

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 88);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_26524C000, v3, v4, "Error setting up heartbeat %@", v7, 0xCu);
    outlined destroy of MLS.KeyPackageProvider?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2667577B0](v8, -1, -1);
    MEMORY[0x2667577B0](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t KDSRegistrationStateMachine.broadcastRegistrationUpdate(isRegisteredResult:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for RegistrationActor();
  v2[4] = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20], MEMORY[0x277D4CC28]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](KDSRegistrationStateMachine.broadcastRegistrationUpdate(isRegisteredResult:), v4, v3);
}

uint64_t KDSRegistrationStateMachine.broadcastRegistrationUpdate(isRegisteredResult:)()
{
  v20 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[3];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136315394;
    type metadata accessor for KDSRegistration.UniqueClientIdentifier();
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type KDSRegistration.UniqueClientIdentifier and conformance KDSRegistration.UniqueClientIdentifier, MEMORY[0x277D4CAE8], MEMORY[0x277D4CB10]);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v19);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2080;
    *(v4 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v3 + 24), *(v3 + 32), &v19);
    _os_log_impl(&dword_26524C000, v1, v2, "Broadcasting success. uniqueClientIdentifier: %s, simUniqueID: %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v5, -1, -1);
    MEMORY[0x2667577B0](v4, -1, -1);
  }

  v9 = v0[3];
  v10 = *(v9 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator + 24);
  v11 = *(v9 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator + 32);
  __swift_project_boxed_opaque_existential_1((v9 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator), v10);
  v12 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_uniqueClientIdentifier;
  v13 = *(v9 + 24);
  v14 = *(v9 + 32);
  v18 = (*(v11 + 88) + **(v11 + 88));
  v15 = swift_task_alloc();
  v0[7] = v15;
  *v15 = v0;
  v15[1] = KDSRegistrationStateMachine.broadcastRegistrationUpdate(isRegisteredResult:);
  v16 = v0[2];

  return v18(v9 + v12, v13, v14, v16, v10, v11);
}

{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = KDSRegistrationStateMachine.broadcastRegistrationUpdate(isRegisteredResult:);
  }

  else
  {
    v5 = KDSRegistrationStateMachine.broadcastRegistrationUpdate(isRegisteredResult:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t KDSRegistrationStateMachine.needsCertRefresh()()
{
  v1[12] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v1[13] = swift_task_alloc();
  v2 = type metadata accessor for Date();
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v3 = type metadata accessor for MLS.Identity.Credential();
  v1[22] = v3;
  v1[23] = *(v3 - 8);
  v1[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
  v1[25] = swift_task_alloc();
  v4 = type metadata accessor for URI();
  v1[26] = v4;
  v1[27] = *(v4 - 8);
  v1[28] = swift_task_alloc();
  type metadata accessor for RegistrationActor();
  v1[29] = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20], MEMORY[0x277D4CC28]);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[30] = v6;
  v1[31] = v5;

  return MEMORY[0x2822009F8](KDSRegistrationStateMachine.needsCertRefresh(), v6, v5);
}

{
  v0[32] = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_logger;
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_26524C000, v1, v2, "StateMachine checking if cert needs refresh.", v3, 2u);
    MEMORY[0x2667577B0](v3, -1, -1);
  }

  v4 = v0[26];
  v5 = v0[27];
  v6 = v0[25];
  v7 = v0[12];

  (*(*v7 + 360))();
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    v8 = v0[25];

    outlined destroy of MLS.KeyPackageProvider?(v8, &_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_26524C000, v9, v10, "Lost local URI, will try to refresh cert.", v11, 2u);
      MEMORY[0x2667577B0](v11, -1, -1);
    }

    v12 = v0[1];

    return v12(1);
  }

  else
  {
    v14 = v0[12];
    (*(v0[27] + 32))(v0[28], v0[25], v0[26]);
    v15 = *(v14 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator + 24);
    v16 = *(v14 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator + 32);
    __swift_project_boxed_opaque_existential_1((v14 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator), v15);
    v20 = (*(v16 + 96) + **(v16 + 96));
    v17 = swift_task_alloc();
    v0[33] = v17;
    *v17 = v0;
    v17[1] = KDSRegistrationStateMachine.needsCertRefresh();
    v18 = v0[28];
    v19 = v0[24];

    return v20(v19, v18, v15, v16);
  }
}

{
  v2 = *v1;
  *(*v1 + 272) = v0;

  v3 = *(v2 + 248);
  v4 = *(v2 + 240);
  if (v0)
  {
    v5 = KDSRegistrationStateMachine.needsCertRefresh();
  }

  else
  {
    v5 = KDSRegistrationStateMachine.needsCertRefresh();
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v88 = v0;
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];

  MLS.Identity.Credential.issuanceDate.getter();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[13];
    (*(v0[23] + 8))(v0[24], v0[22]);
    outlined destroy of MLS.KeyPackageProvider?(v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_3:
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = os_log_type_enabled(v5, v6);
    v9 = v0[27];
    v8 = v0[28];
    v10 = v0[26];
    if (v7)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_26524C000, v5, v6, "Will try to refresh cert.", v11, 2u);
      MEMORY[0x2667577B0](v11, -1, -1);
    }

    (*(v9 + 8))(v8, v10);
    v84 = 1;
    goto LABEL_6;
  }

  (*(v0[15] + 32))(v0[21], v0[13], v0[14]);
  static ServerBag.kdsBag.getter();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  dispatch thunk of ServerBag.KDS.issueCertInterval.getter();
  v15 = v14;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  static ServerBag.kdsBag.getter();
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  dispatch thunk of ServerBag.KDS.refreshKeysInterval.getter();
  v17 = v16;
  result = __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v18 = v15 / v17;
  if (v15 / v17 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v19 = COERCE_UNSIGNED_INT64(fabs(v15 / v17)) > 0x7FEFFFFFFFFFFFFFLL;
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v19)
  {
    goto LABEL_26;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v20 = v18 * v17;
  if ((v18 * v17) >> 64 != v20 >> 63)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v21 = v0[15];
  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  v22 = *(v21 + 16);
  v24 = v0[20];
  v23 = v0[21];
  v25 = v0[14];
  if (v26 >= v20)
  {
    v47 = v0[16];
    v22(v0[17], v23, v0[14]);
    v22(v47, v24, v25);
    v48 = Logger.logObject.getter();
    v81 = static os_log_type_t.default.getter();
    v49 = os_log_type_enabled(v48, v81);
    v50 = v0[23];
    v51 = v0[24];
    v52 = v0[22];
    v83 = v0[20];
    v86 = v0[21];
    v54 = v0[16];
    v53 = v0[17];
    v55 = v0[14];
    v56 = v0[15];
    if (v49)
    {
      v76 = v20;
      v57 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v87 = v73;
      *v57 = 136315650;
      _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v78 = v52;
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v71 = v48;
      v60 = v59;
      v61 = *(v56 + 8);
      v61(v53, v55);
      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, &v87);

      *(v57 + 4) = v62;
      *(v57 + 12) = 2080;
      v63 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v64;
      v61(v54, v55);
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v65, &v87);

      *(v57 + 14) = v66;
      *(v57 + 22) = 2048;
      *(v57 + 24) = v76;
      _os_log_impl(&dword_26524C000, v71, v81, "Cert will need refresh. { issueDate: %s, currentDate: %s, flooredCertRefreshInterval: %ld }", v57, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v73, -1, -1);
      MEMORY[0x2667577B0](v57, -1, -1);

      v61(v83, v55);
      v61(v86, v55);
      (*(v50 + 8))(v51, v78);
    }

    else
    {

      v68 = *(v56 + 8);
      v68(v54, v55);
      v68(v53, v55);
      v68(v83, v55);
      v68(v86, v55);
      (*(v50 + 8))(v51, v52);
    }

    goto LABEL_3;
  }

  v27 = v0[18];
  v22(v0[19], v23, v0[14]);
  v22(v27, v24, v25);
  v28 = Logger.logObject.getter();
  v74 = static os_log_type_t.default.getter();
  v29 = os_log_type_enabled(v28, v74);
  v30 = v0[27];
  v31 = v0[28];
  v32 = v0[26];
  v82 = v0[24];
  v85 = v0[23];
  v79 = v0[21];
  v80 = v0[22];
  v33 = v0[19];
  v77 = v0[20];
  v34 = v0[18];
  v36 = v0[14];
  v35 = v0[15];
  if (v29)
  {
    v72 = v0[27];
    v37 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v87 = v69;
    *v37 = 136315650;
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v75 = v20;
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v70 = v31;
    v40 = v39;
    v41 = *(v35 + 8);
    v41(v33, v36);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v87);

    *(v37 + 4) = v42;
    *(v37 + 12) = 2080;
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    v41(v34, v36);
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v87);

    *(v37 + 14) = v46;
    *(v37 + 22) = 2048;
    *(v37 + 24) = v75;
    _os_log_impl(&dword_26524C000, v28, v74, "Cert does not need refresh. { issueDate: %s, currentDate: %s, flooredCertRefreshInterval: %ld }", v37, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v69, -1, -1);
    MEMORY[0x2667577B0](v37, -1, -1);

    v41(v77, v36);
    v41(v79, v36);
    (*(v85 + 8))(v82, v80);
    (*(v72 + 8))(v70, v32);
  }

  else
  {

    v67 = *(v35 + 8);
    v67(v34, v36);
    v67(v33, v36);
    v67(v77, v36);
    v67(v79, v36);
    (*(v85 + 8))(v82, v80);
    (*(v30 + 8))(v31, v32);
  }

  v84 = 0;
LABEL_6:

  v12 = v0[1];

  return v12(v84);
}

{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[34];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_26524C000, v1, v2, "Failed to get existing credential", v5, 2u);
    MEMORY[0x2667577B0](v5, -1, -1);
  }

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[27];
  v9 = v0[28];
  v11 = v0[26];
  if (v8)
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_26524C000, v6, v7, "Will try to refresh cert.", v12, 2u);
    MEMORY[0x2667577B0](v12, -1, -1);
  }

  (*(v10 + 8))(v9, v11);

  v13 = v0[1];

  return v13(1);
}

uint64_t KDSRegistrationStateMachine.stateMachineModel()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO14KeyPackageInfoVSgMd, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMR);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for MLS.KeyPackageInfo();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMd, &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMR);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
  v2[12] = swift_task_alloc();
  v5 = type metadata accessor for URI();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v6 = type metadata accessor for KDSRegistration.URISupportedState();
  v2[16] = v6;
  v2[17] = *(v6 - 8);
  v2[18] = swift_task_alloc();
  type metadata accessor for RegistrationActor();
  v2[19] = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20], MEMORY[0x277D4CC28]);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](KDSRegistrationStateMachine.stateMachineModel(), v8, v7);
}

uint64_t KDSRegistrationStateMachine.stateMachineModel()()
{

  type metadata accessor for KDSRegistration.UniqueClientIdentifier();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type KDSRegistration.UniqueClientIdentifier and conformance KDSRegistration.UniqueClientIdentifier, MEMORY[0x277D4CAE8], MEMORY[0x277D4CAF0]);
  v59 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v60 = v1;
  v2 = *(v0 + 24);
  v3 = v2[4];
  v58 = v2[3];
  v4 = v2[6];
  v57 = v2[5];
  v5 = *(*v2 + 264);

  v5(v6);
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type KDSRegistration.URISupportedState and conformance KDSRegistration.URISupportedState, MEMORY[0x277D4CA38], MEMORY[0x277D4CA40]);
  v7 = v4;
  v55 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v56 = v8;
  v9 = *(v0 + 24);
  v10 = (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  *(v0 + 160) = (*(*v9 + 240))(v10);
  lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState and conformance KDSRegistrationStateMachine.RegistrationState();
  v54 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v13 = v12;
  v15 = *(v0 + 104);
  v14 = *(v0 + 112);
  v16 = *(v0 + 96);
  (*(**(v0 + 24) + 360))();
  v17 = (*(v14 + 48))(v16, 1, v15);
  v18 = v3;
  if (v17 == 1)
  {
    v19 = outlined destroy of MLS.KeyPackageProvider?(*(v0 + 96), &_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
    v20 = 0;
    v53 = 0xF000000000000000;
  }

  else
  {
    (*(*(v0 + 112) + 32))(*(v0 + 120), *(v0 + 96), *(v0 + 104));
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258], MEMORY[0x277D4D260]);
    v20 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v53 = v21;
    v19 = (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
  }

  v23 = *(v0 + 72);
  v22 = *(v0 + 80);
  v24 = *(v0 + 64);
  (*(**(v0 + 24) + 288))(v19);
  if ((*(v22 + 48))(v24, 1, v23) == 1)
  {
    v61 = v18;
    v25 = outlined destroy of MLS.KeyPackageProvider?(*(v0 + 64), &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMd, &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMR);
    v51 = 0xF000000000000000;
    v52 = 0;
  }

  else
  {
    (*(*(v0 + 80) + 32))(*(v0 + 88), *(v0 + 64), *(v0 + 72));
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo, MEMORY[0x277D4C938], MEMORY[0x277D4C940]);
    v26 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v51 = v27;
    v52 = v26;
    v61 = v18;
    v25 = (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
  }

  v29 = *(v0 + 40);
  v28 = *(v0 + 48);
  v30 = *(v0 + 24);
  v31 = *(v0 + 32);
  v32 = (*(*v30 + 312))(v25);
  v49 = v33;
  v50 = v32;
  v34 = (*(*v30 + 336))();
  v47 = v35;
  v48 = v34;
  (*(*v30 + 456))();
  if ((*(v28 + 48))(v31, 1, v29) == 1)
  {
    v36 = outlined destroy of MLS.KeyPackageProvider?(*(v0 + 32), &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMd, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMR);
    v46 = 0;
    v45 = 0xF000000000000000;
  }

  else
  {
    v37 = *(v0 + 48);
    v38 = *(v0 + 56);
    v39 = *(v0 + 40);
    (*(v37 + 32))(v38, *(v0 + 32), v39);
    v46 = MLS.KeyPackageInfo.rawKeyPackage.getter();
    v45 = v40;
    v36 = (*(v37 + 8))(v38, v39);
  }

  v41 = *(v0 + 16);
  v42 = (*(**(v0 + 24) + 480))(v36);
  *v41 = v59;
  *(v41 + 8) = v60;
  *(v41 + 16) = v58;
  *(v41 + 24) = v61;
  *(v41 + 32) = v57;
  *(v41 + 40) = v7;
  *(v41 + 48) = v20;
  *(v41 + 56) = v53;
  *(v41 + 64) = v55;
  *(v41 + 72) = v56;
  *(v41 + 80) = v54;
  *(v41 + 88) = v13;
  *(v41 + 96) = v52;
  *(v41 + 104) = v51;
  *(v41 + 112) = v50;
  *(v41 + 120) = v49;
  *(v41 + 128) = v48;
  *(v41 + 136) = v47;
  *(v41 + 144) = v46;
  *(v41 + 152) = v45;
  *(v41 + 160) = v42;
  *(v41 + 168) = v43 & 1;

  v44 = *(v0 + 8);

  return v44();
}

uint64_t KDSRegistrationStateMachine.deinit()
{

  v1 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_uriSupportedState;
  v2 = type metadata accessor for KDSRegistration.URISupportedState();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_networkOperator));
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_uniqueClientIdentifier;
  v4 = type metadata accessor for KDSRegistration.UniqueClientIdentifier();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_logger;
  v6 = type metadata accessor for Logger();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  outlined destroy of MLS.KeyPackageProvider?(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_phoneAuthInfo, &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMd, &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMR);
  outlined consume of Data?(*(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_participantInfo), *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_participantInfo + 8));
  outlined consume of Data?(*(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_CSR), *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_CSR + 8));
  outlined destroy of MLS.KeyPackageProvider?(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_telURI, &_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);

  outlined destroy of MLS.KeyPackageProvider?(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_keyPackage, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMd, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMR);
  outlined consume of Data?(*(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_devicePushToken), *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_devicePushToken + 8));
  swift_unknownObjectRelease(*(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_heartbeatTransaction), v7, v8, v9, v10, v11, v12, v13);

  return v0;
}

uint64_t KDSRegistrationStateMachine.__deallocating_deinit()
{
  KDSRegistrationStateMachine.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

_BYTE *closure #1 in Data.init<A>(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = specialized Data.InlineData.init(_:)(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = specialized Data.LargeSlice.init(_:)(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = specialized Data.InlineSlice.init(_:)(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

BOOL specialized static KDSRegistrationStateMachine.RegistrationState.== infix(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 0x15u)
  {
    if (a1 > 0x13u)
    {
      if (a1 == 20)
      {
        return a2 == 20;
      }

      if (a1 == 21)
      {
        return a2 == 21;
      }
    }

    else
    {
      if (a1 == 18)
      {
        return a2 == 18;
      }

      if (a1 == 19)
      {
        return a2 == 19;
      }
    }
  }

  else if (a1 <= 0x17u)
  {
    if (a1 == 22)
    {
      return a2 == 22;
    }

    if (a1 == 23)
    {
      return a2 == 23;
    }
  }

  else
  {
    switch(a1)
    {
      case 0x18u:
        return a2 == 24;
      case 0x19u:
        return a2 == 25;
      case 0x1Au:
        return a2 == 26;
    }
  }

  if (a2 - 18 < 9)
  {
    return 0;
  }

  return a1 == a2;
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t specialized KDSRegistrationStateMachine.init(stateMachineOperator:networkOperator:simUniqueID:simLabelID:uriSupportedState:uniqueClientIdentifier:devicePushToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v68 = a8;
  v65 = a6;
  v66 = a7;
  v64 = a5;
  v63 = a4;
  v62 = a3;
  v69 = a9;
  v70 = a10;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v71 = &v61 - v19;
  v20 = type metadata accessor for JSONEncoder.OutputFormatting();
  MEMORY[0x28223BE20](v20 - 8, v21);
  v67 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for LogCategory();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73[3] = a12;
  v73[4] = a14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v73);
  (*(*(a12 - 8) + 32))(boxed_opaque_existential_1, a1, a12);
  v72[3] = a13;
  v72[4] = a15;
  v29 = __swift_allocate_boxed_opaque_existential_1(v72);
  (*(*(a13 - 8) + 32))(v29, a2, a13);
  (*(v24 + 104))(v27, *MEMORY[0x277D4C918], v23);
  secureMessagingLogger(category:)();
  (*(v24 + 8))(v27, v23);
  v30 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_phoneAuthInfo;
  v31 = type metadata accessor for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo();
  (*(*(v31 - 8) + 56))(a11 + v30, 1, 1, v31);
  v61 = xmmword_2653419D0;
  *(a11 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_participantInfo) = xmmword_2653419D0;
  *(a11 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_CSR) = xmmword_2653419D0;
  v32 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_telURI;
  v33 = type metadata accessor for URI();
  (*(*(v33 - 8) + 56))(a11 + v32, 1, 1, v33);
  v34 = (a11 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_phoneNumberCredential);
  *v34 = 0;
  v34[1] = 0;
  *(a11 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_phoneNumberCredentialType) = 4;
  v35 = (a11 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_serverVendedClientID);
  *v35 = 0;
  v35[1] = 0;
  v36 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_keyPackage;
  v37 = type metadata accessor for MLS.KeyPackageInfo();
  (*(*(v37 - 8) + 56))(a11 + v36, 1, 1, v37);
  v38 = a11 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_nextHeartbeatInterval;
  *v38 = 0;
  *(v38 + 8) = 1;
  *(a11 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_devicePushToken) = v61;
  *(a11 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_heartbeatTransaction) = 0;
  v39 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_encoder;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  *(a11 + v39) = JSONEncoder.init()();
  *(a11 + 16) = 18;
  v40 = v63;
  *(a11 + 24) = v62;
  *(a11 + 32) = v40;
  v41 = v65;
  *(a11 + 40) = v64;
  *(a11 + 48) = v41;
  v42 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_uriSupportedState;
  v43 = type metadata accessor for KDSRegistration.URISupportedState();
  v44 = *(v43 - 8);
  v45 = v66;
  (*(v44 + 16))(a11 + v42, v66, v43);
  outlined init with copy of SMAUserDefaultsProtocol(v73, a11 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator);
  outlined init with copy of SMAUserDefaultsProtocol(v72, a11 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_networkOperator);
  v46 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_uniqueClientIdentifier;
  v47 = type metadata accessor for KDSRegistration.UniqueClientIdentifier();
  v48 = *(v47 - 8);
  v49 = v68;
  (*(v48 + 16))(a11 + v46, v68, v47);
  v50 = (a11 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_devicePushToken);
  swift_beginAccess();
  v51 = *v50;
  v52 = v50[1];
  v53 = v69;
  v54 = v70;
  *v50 = v69;
  v50[1] = v54;
  outlined copy of Data?(v53, v54);
  outlined consume of Data?(v51, v52);
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  v55 = type metadata accessor for TaskPriority();
  v56 = v71;
  (*(*(v55 - 8) + 56))(v71, 1, 1, v55);
  type metadata accessor for RegistrationActor();

  v57 = static RegistrationActor.shared.getter();
  v58 = _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20], MEMORY[0x277D4CC28]);
  v59 = swift_allocObject();
  v59[2] = v57;
  v59[3] = v58;
  v59[4] = a11;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v56, &closure #1 in KDSRegistrationStateMachine.rerun()partial apply, v59);

  (*(v48 + 8))(v49, v47);
  (*(v44 + 8))(v45, v43);
  __swift_destroy_boxed_opaque_existential_1Tm(v72);
  __swift_destroy_boxed_opaque_existential_1Tm(v73);
  return a11;
}

uint64_t specialized KDSRegistrationStateMachine.__allocating_init(stateMachineOperator:networkOperator:simUniqueID:simLabelID:uriSupportedState:uniqueClientIdentifier:devicePushToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v34 = a7;
  v35 = a8;
  v32 = a5;
  v33 = a6;
  v30 = a3;
  v31 = a4;
  v29 = a9;
  v27 = a2;
  v28 = a10;
  v16 = *(a13 - 8);
  v17 = MEMORY[0x28223BE20](a1, a2);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a12 - 8);
  MEMORY[0x28223BE20](v17, v21);
  v23 = &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KDSRegistrationStateMachine(0);
  v24 = swift_allocObject();
  (*(v20 + 16))(v23, a1, a12);
  (*(v16 + 16))(v19, v27, a13);
  return specialized KDSRegistrationStateMachine.init(stateMachineOperator:networkOperator:simUniqueID:simLabelID:uriSupportedState:uniqueClientIdentifier:devicePushToken:)(v23, v19, v30, v31, v32, v33, v34, v35, v29, v28, v24, a12, a13, a14, a15);
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.CodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.CodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.CodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.CodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.CodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.CodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.CodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.CodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.CodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.CodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.CodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.CodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.CodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys);
  }

  return result;
}

uint64_t specialized KDSRegistrationStateMachine.RegistrationState.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6974696177 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7964616572 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000026534C560 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E65696C43746567 && a2 == 0xEB00000000444974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026534C580 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746E656449746567 && a2 == 0xEB00000000797469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7265747369676572 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7473696765726564 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x73736563637573 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000)
  {

    return 9;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t specialized KDSRegistrationStateMachine.RegistrationState.init(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O16FailedCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O16FailedCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v3 = *(v2 - 8);
  v156 = v2;
  v157 = v3;
  MEMORY[0x28223BE20](v2, v4);
  v161 = &v135 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O17SuccessCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O17SuccessCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v154 = *(v6 - 8);
  v155 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v160 = &v135 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O20DeregisterCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O20DeregisterCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v152 = *(v9 - 8);
  v153 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v165 = &v135 - v11;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O18RegisterCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O18RegisterCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151, v12);
  v164 = &v135 - v13;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O21GetIdentityCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O21GetIdentityCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v148 = *(v149 - 8);
  MEMORY[0x28223BE20](v149, v14);
  v163 = &v135 - v15;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O26GetPhoneAuthInfoCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O26GetPhoneAuthInfoCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v147 = *(v146 - 8);
  MEMORY[0x28223BE20](v146, v16);
  v159 = &v135 - v17;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O21GetClientIDCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O21GetClientIDCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145, v18);
  v158 = &v135 - v19;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O28GetPhoneNumberInfoCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O28GetPhoneNumberInfoCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v142 = *(v143 - 8);
  MEMORY[0x28223BE20](v143, v20);
  v162 = &v135 - v21;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O15ReadyCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O15ReadyCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141, v22);
  v24 = &v135 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O17WaitingCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O17WaitingCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v139 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v135 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O10CodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC012RegistrationI0O10CodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v135 - v32;
  v34 = a1[3];
  v166 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v34);
  lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.CodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.CodingKeys();
  v35 = v167;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v35)
  {
    v137 = v28;
    v136 = v25;
    v28 = v162;
    v36 = v163;
    v138 = 0;
    v38 = v164;
    v37 = v165;
    v167 = v30;
    v39 = KeyedDecodingContainer.allKeys.getter();
    v40 = (2 * *v39->clientXPCServer) | 1;
    v168 = v39;
    anon_0_2 = v39->_anon_0_2;
    v170 = 0;
    v171 = v40;
    v41 = specialized Collection<>.popFirst()();
    if (v41 != 10 && v170 == v171 >> 1)
    {
      if (v41 > 4u)
      {
        if (v41 <= 6u)
        {
          v44 = v167;
          if (v41 == 5)
          {
            v172 = 5;
            lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetIdentityCodingKeys();
            v79 = v138;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (!v79)
            {
              (*(v148 + 8))(v36, v149);
              (*(v44 + 8))(v33, v29);
              swift_unknownObjectRelease(v168, v80, v81, v82, v83, v84, v85, v86);
              v28 = 23;
              goto LABEL_13;
            }
          }

          else
          {
            v172 = 6;
            lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.RegisterCodingKeys();
            v112 = v138;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (!v112)
            {
              (*(v150 + 8))(v38, v151);
              (*(v44 + 8))(v33, v29);
              swift_unknownObjectRelease(v168, v121, v122, v123, v124, v125, v126, v127);
              v28 = 24;
              goto LABEL_13;
            }
          }
        }

        else
        {
          v44 = v167;
          if (v41 == 7)
          {
            v172 = 7;
            lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.DeregisterCodingKeys();
            v94 = v138;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (!v94)
            {
              (*(v152 + 8))(v37, v153);
              (*(v44 + 8))(v33, v29);
              swift_unknownObjectRelease(v168, v95, v96, v97, v98, v99, v100, v101);
              v28 = 25;
              goto LABEL_13;
            }
          }

          else
          {
            v62 = v138;
            if (v41 == 8)
            {
              v172 = 8;
              lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.SuccessCodingKeys();
              v63 = v160;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              if (!v62)
              {
                (*(v154 + 8))(v63, v155);
                (*(v44 + 8))(v33, v29);
                swift_unknownObjectRelease(v168, v64, v65, v66, v67, v68, v69, v70);
                v28 = 26;
                goto LABEL_13;
              }
            }

            else
            {
              v172 = 9;
              lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.FailedCodingKeys();
              v103 = v161;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              if (!v62)
              {
                lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError and conformance KDSRegistrationStateMachine.StateMachineError();
                v104 = v156;
                KeyedDecodingContainer.decode<A>(_:forKey:)();
                (*(v157 + 8))(v103, v104);
                (*(v44 + 8))(v33, v29);
                swift_unknownObjectRelease(v168, v128, v129, v130, v131, v132, v133, v134);
                v28 = v172;
                goto LABEL_13;
              }
            }
          }
        }
      }

      else
      {
        v42 = v138;
        if (v41 > 1u)
        {
          if (v41 != 2)
          {
            if (v41 == 3)
            {
              v172 = 3;
              lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetClientIDCodingKeys();
              v43 = v158;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              v44 = v167;
              if (!v42)
              {
                (*(v144 + 8))(v43, v145);
                (*(v44 + 8))(v33, v29);
                swift_unknownObjectRelease(v168, v45, v46, v47, v48, v49, v50, v51);
                v28 = 21;
                goto LABEL_13;
              }

              goto LABEL_36;
            }

            v172 = 4;
            lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneAuthInfoCodingKeys();
            v102 = v159;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            v71 = v167;
            if (!v42)
            {
              (*(v147 + 8))(v102, v146);
              (*(v71 + 8))(v33, v29);
              swift_unknownObjectRelease(v168, v114, v115, v116, v117, v118, v119, v120);
              v28 = 22;
              goto LABEL_13;
            }

            goto LABEL_30;
          }

          v172 = 2;
          lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.GetPhoneNumberInfoCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v42)
          {
            (*(v142 + 8))(v28, v143);
            (*(v167 + 8))(v33, v29);
            swift_unknownObjectRelease(v168, v87, v88, v89, v90, v91, v92, v93);
            v28 = 20;
            goto LABEL_13;
          }

LABEL_11:
          (*(v167 + 8))(v33, v29);
LABEL_12:
          swift_unknownObjectRelease(v168, v54, v55, v56, v57, v58, v59, v60);
          goto LABEL_13;
        }

        if (!v41)
        {
          v172 = 0;
          lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.WaitingCodingKeys();
          v28 = v137;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v71 = v167;
          if (!v42)
          {
            (*(v139 + 8))(v28, v136);
            (*(v71 + 8))(v33, v29);
            swift_unknownObjectRelease(v168, v72, v73, v74, v75, v76, v77, v78);
            v28 = 18;
            goto LABEL_13;
          }

LABEL_30:
          (*(v71 + 8))(v33, v29);
          goto LABEL_12;
        }

        v172 = 1;
        lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys and conformance KDSRegistrationStateMachine.RegistrationState.ReadyCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v44 = v167;
        if (!v42)
        {
          (*(v140 + 8))(v24, v141);
          (*(v44 + 8))(v33, v29);
          swift_unknownObjectRelease(v168, v105, v106, v107, v108, v109, v110, v111);
          v28 = 19;
          goto LABEL_13;
        }
      }

LABEL_36:
      v113 = *(v44 + 8);
      v28 = v44 + 8;
      v113(v33, v29);
      goto LABEL_12;
    }

    v28 = type metadata accessor for DecodingError();
    swift_allocError();
    v53 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v53 = &type metadata for KDSRegistrationStateMachine.RegistrationState;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v28 - 8) + 104))(v53, *MEMORY[0x277D84160], v28);
    swift_willThrow();
    goto LABEL_11;
  }

LABEL_13:
  __swift_destroy_boxed_opaque_existential_1Tm(v166);
  return v28;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.CodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.CodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.CodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.CodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.CodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.CodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.CodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.CodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.CodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.CodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.CodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.CodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.CodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys);
  }

  return result;
}

uint64_t specialized KDSRegistrationStateMachine.StateMachineError.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F5464656C696166 && a2 == 0xEC00000064616F4CLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000026534C5A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000026534C5C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x800000026534C5E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x685064656C696166 && a2 == 0xEF68747541656E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026534C600 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x800000026534C620 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026534C640 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000018 && 0x800000026534C660 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x800000026534C680 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x800000026534C6A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x43676E697373696DLL && a2 == 0xEA00000000005253 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x54676E697373696DLL && a2 == 0xED00004952556C65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000017 && 0x800000026534C6C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000026534C6E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026534C700 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000026534C720 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000026534C740 == a2)
  {

    return 17;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

uint64_t specialized KDSRegistrationStateMachine.StateMachineError.init(from:)(void *a1)
{
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO37MissingServerVendedClientIDCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO37MissingServerVendedClientIDCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v146 = *(v163 - 8);
  MEMORY[0x28223BE20](v163, v2);
  v159 = v110 - v3;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO38MissingNextHeartbeatIntervalCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO38MissingNextHeartbeatIntervalCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145, v4);
  v158 = v110 - v5;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO27MissingKeyPackageCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO27MissingKeyPackageCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v142 = *(v143 - 8);
  MEMORY[0x28223BE20](v143, v6);
  v157 = v110 - v7;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO38MissingPhoneNumberCredentialCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO38MissingPhoneNumberCredentialCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141, v8);
  v156 = v110 - v9;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO33MissingResponseIdentityCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO33MissingResponseIdentityCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139, v10);
  v155 = v110 - v11;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO23MissingTelURICodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO23MissingTelURICodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137, v12);
  v154 = v110 - v13;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO20MissingCSRCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO20MissingCSRCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135, v14);
  v153 = v110 - v15;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO32MissingParticipantInfoCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO32MissingParticipantInfoCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133, v16);
  v152 = v110 - v17;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO30MissingPhoneAuthInfoCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO30MissingPhoneAuthInfoCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131, v18);
  v151 = v110 - v19;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO019InvalidURISupportedI10CodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO019InvalidURISupportedI10CodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129, v20);
  v150 = v110 - v21;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO27FailedGetClientIDCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO27FailedGetClientIDCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127, v22);
  v162 = v110 - v23;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO34FailedRegisterKeyPackageCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO34FailedRegisterKeyPackageCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v125 = *(v124 - 8);
  MEMORY[0x28223BE20](v124, v24);
  v161 = v110 - v25;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO27FailedGetIdentityCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO27FailedGetIdentityCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123, v26);
  v160 = v110 - v27;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO25FailedPhoneAuthCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO25FailedPhoneAuthCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121, v28);
  v149 = v110 - v29;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO30FailedGetPhoneNumberCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO30FailedGetPhoneNumberCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119, v30);
  v148 = v110 - v31;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO39InvalidClientUniqueIdentifierCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO39InvalidClientUniqueIdentifierCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117, v32);
  v147 = v110 - v33;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO28MissingSimUniqueIDCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO28MissingSimUniqueIDCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115, v34);
  v36 = v110 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO22FailedToLoadCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO22FailedToLoadCodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v113 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v38);
  v40 = v110 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO10CodingKeys33_229819B7868B1079C93FA683752F9003LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore27KDSRegistrationStateMachineC0iJ5ErrorO10CodingKeys33_229819B7868B1079C93FA683752F9003LLOGMR);
  v42 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v43);
  v45 = v110 - v44;
  v46 = a1[3];
  v165 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v46);
  lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.CodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.CodingKeys();
  v47 = v164;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v47)
  {
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1Tm(v165);
    return v42;
  }

  v111 = v40;
  v110[1] = v37;
  v112 = v36;
  v49 = v160;
  v48 = v161;
  v164 = 0;
  v50 = v162;
  v51 = v163;
  v52 = v42;
  v53 = KeyedDecodingContainer.allKeys.getter();
  v54 = (2 * *v53->clientXPCServer) | 1;
  v166 = v53;
  anon_0_2 = v53->_anon_0_2;
  v168 = 0;
  v169 = v54;
  v55 = specialized Collection<>.popFirst()();
  if (v168 != v169 >> 1)
  {
LABEL_6:
    v61 = type metadata accessor for DecodingError();
    swift_allocError();
    v63 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v63 = &type metadata for KDSRegistrationStateMachine.StateMachineError;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v61 - 8) + 104))(v63, *MEMORY[0x277D84160], v61);
    swift_willThrow();
LABEL_7:
    (*(v52 + 8))(v45, v41);
    swift_unknownObjectRelease(v166, v64, v65, v66, v67, v68, v69, v70);
    goto LABEL_8;
  }

  v42 = v55;
  switch(v55)
  {
    case 0:
      v171 = 0;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedToLoadCodingKeys();
      v56 = v111;
      v57 = v164;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v57)
      {
        goto LABEL_7;
      }

      v58 = *(v113 + 8);
      v59 = v56;
      p_anon_0_2 = &v142;
      goto LABEL_44;
    case 1:
      v171 = 1;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingSimUniqueIDCodingKeys();
      v91 = v112;
      v92 = v164;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v92)
      {
        goto LABEL_7;
      }

      v58 = *(v114 + 8);
      v59 = v91;
      p_anon_0_2 = &v147;
      goto LABEL_44;
    case 2:
      v171 = 2;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidClientUniqueIdentifierCodingKeys();
      v84 = v147;
      v85 = v164;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v85)
      {
        goto LABEL_7;
      }

      v58 = *(v116 + 8);
      v59 = v84;
      p_anon_0_2 = &v149;
      goto LABEL_44;
    case 3:
      v171 = 3;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetPhoneNumberCodingKeys();
      v88 = v148;
      v89 = v164;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v89)
      {
        goto LABEL_7;
      }

      v58 = *(v118 + 8);
      v59 = v88;
      p_anon_0_2 = &v151;
      goto LABEL_44;
    case 4:
      v171 = 4;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedPhoneAuthCodingKeys();
      v78 = v149;
      v79 = v164;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v79)
      {
        goto LABEL_7;
      }

      v58 = *(v120 + 8);
      v59 = v78;
      p_anon_0_2 = &v153;
      goto LABEL_44;
    case 5:
      v171 = 5;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetIdentityCodingKeys();
      v95 = v164;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v95)
      {
        goto LABEL_7;
      }

      v58 = *(v122 + 8);
      v59 = v49;
      p_anon_0_2 = &v155;
      goto LABEL_44;
    case 6:
      v171 = 6;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedRegisterKeyPackageCodingKeys();
      v98 = v164;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v98)
      {
        goto LABEL_7;
      }

      v58 = *(v125 + 8);
      v59 = v48;
      p_anon_0_2 = &v156;
      goto LABEL_44;
    case 7:
      v171 = 7;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.FailedGetClientIDCodingKeys();
      v90 = v164;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v90)
      {
        goto LABEL_7;
      }

      v58 = *(v126 + 8);
      v59 = v50;
      p_anon_0_2 = &v159;
      goto LABEL_44;
    case 8:
      v171 = 8;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.InvalidURISupportedStateCodingKeys();
      v101 = v150;
      v102 = v164;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v102)
      {
        goto LABEL_7;
      }

      v58 = *(v128 + 8);
      v59 = v101;
      p_anon_0_2 = &v161;
      goto LABEL_44;
    case 9:
      v171 = 9;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneAuthInfoCodingKeys();
      v82 = v151;
      v83 = v164;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v83)
      {
        goto LABEL_7;
      }

      v58 = *(v130 + 8);
      v59 = v82;
      p_anon_0_2 = &v163;
      goto LABEL_44;
    case 10:
      v171 = 10;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingParticipantInfoCodingKeys();
      v99 = v152;
      v100 = v164;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v100)
      {
        goto LABEL_7;
      }

      v58 = *(v132 + 8);
      v59 = v99;
      p_anon_0_2 = &v165;
      goto LABEL_44;
    case 11:
      v171 = 11;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingCSRCodingKeys();
      v76 = v153;
      v77 = v164;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v77)
      {
        goto LABEL_7;
      }

      v58 = *(v134 + 8);
      v59 = v76;
      p_anon_0_2 = &anon_0_2;
      goto LABEL_44;
    case 12:
      v171 = 12;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingTelURICodingKeys();
      v80 = v154;
      v81 = v164;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v81)
      {
        goto LABEL_7;
      }

      v58 = *(v136 + 8);
      v59 = v80;
      p_anon_0_2 = &v169;
      goto LABEL_44;
    case 13:
      v171 = 13;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingResponseIdentityCodingKeys();
      v96 = v155;
      v97 = v164;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v97)
      {
        goto LABEL_7;
      }

      v58 = *(v138 + 8);
      v59 = v96;
      p_anon_0_2 = &v170;
      goto LABEL_44;
    case 14:
      v171 = 14;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingPhoneNumberCredentialCodingKeys();
      v74 = v156;
      v75 = v164;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v75)
      {
        goto LABEL_7;
      }

      v58 = *(v140 + 8);
      v59 = v74;
      p_anon_0_2 = &v172;
      goto LABEL_44;
    case 15:
      v171 = 15;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingKeyPackageCodingKeys();
      v86 = v157;
      v87 = v164;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v87)
      {
        goto LABEL_7;
      }

      v58 = *(v142 + 8);
      v59 = v86;
      p_anon_0_2 = &v173;
      goto LABEL_44;
    case 16:
      v171 = 16;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingNextHeartbeatIntervalCodingKeys();
      v72 = v158;
      v73 = v164;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v73)
      {
        goto LABEL_7;
      }

      v58 = *(v144 + 8);
      v59 = v72;
      p_anon_0_2 = &v174;
LABEL_44:
      v58(v59, *(p_anon_0_2 - 32));
      break;
    case 17:
      v171 = 17;
      lazy protocol witness table accessor for type KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys and conformance KDSRegistrationStateMachine.StateMachineError.MissingServerVendedClientIDCodingKeys();
      v93 = v159;
      v94 = v164;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v94)
      {
        goto LABEL_7;
      }

      (*(v146 + 8))(v93, v51);
      break;
    default:
      goto LABEL_6;
  }

  (*(v52 + 8))(v45, v41);
  swift_unknownObjectRelease(v166, v103, v104, v105, v106, v107, v108, v109);
  __swift_destroy_boxed_opaque_existential_1Tm(v165);
  return v42;
}

uint64_t outlined assign with take of KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t specialized KDSRegistrationStateMachine.init(stateMachineOperator:networkOperator:simUniqueID:simLabelID:uriSupportedState:uniqueClientIdentifier:initialState:phoneAuthInfo:participantInfo:csr:telURI:phoneNumberCredntial:keyPackage:nextHeartbeatInterval:devicePushToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, uint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v94 = a8;
  v95 = a7;
  v81 = a6;
  v80 = a5;
  v79 = a4;
  v78 = a3;
  v92 = a18;
  v90 = a17;
  v89 = a16;
  v88 = a15;
  v87 = a14;
  v85 = a13;
  v84 = a12;
  v93 = a10;
  v83 = a11;
  v82 = a9;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v91 = &v77 - v27;
  v28 = type metadata accessor for JSONEncoder.OutputFormatting();
  MEMORY[0x28223BE20](v28 - 8, v29);
  v86 = &v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for LogCategory();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v33);
  v35 = &v77 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97[3] = a20;
  v97[4] = a22;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v97);
  (*(*(a20 - 8) + 32))(boxed_opaque_existential_1, a1, a20);
  v96[3] = a21;
  v96[4] = a23;
  v37 = __swift_allocate_boxed_opaque_existential_1(v96);
  (*(*(a21 - 8) + 32))(v37, a2, a21);
  (*(v32 + 104))(v35, *MEMORY[0x277D4C918], v31);
  secureMessagingLogger(category:)();
  (*(v32 + 8))(v35, v31);
  v38 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_phoneAuthInfo;
  v39 = type metadata accessor for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo();
  (*(*(v39 - 8) + 56))(a19 + v38, 1, 1, v39);
  v77 = xmmword_2653419D0;
  *(a19 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_participantInfo) = xmmword_2653419D0;
  *(a19 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_CSR) = xmmword_2653419D0;
  v40 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_telURI;
  v41 = type metadata accessor for URI();
  (*(*(v41 - 8) + 56))(a19 + v40, 1, 1, v41);
  v42 = (a19 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_phoneNumberCredential);
  *v42 = 0;
  v42[1] = 0;
  *(a19 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_phoneNumberCredentialType) = 4;
  v43 = (a19 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_serverVendedClientID);
  *v43 = 0;
  v43[1] = 0;
  v44 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_keyPackage;
  v45 = type metadata accessor for MLS.KeyPackageInfo();
  (*(*(v45 - 8) + 56))(a19 + v44, 1, 1, v45);
  v46 = a19 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_nextHeartbeatInterval;
  *v46 = 0;
  *(v46 + 8) = 1;
  *(a19 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_devicePushToken) = v77;
  *(a19 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_heartbeatTransaction) = 0;
  v47 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_encoder;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  *(a19 + v47) = JSONEncoder.init()();
  outlined init with copy of SMAUserDefaultsProtocol(v97, a19 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator);
  outlined init with copy of SMAUserDefaultsProtocol(v96, a19 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_networkOperator);
  v48 = v79;
  *(a19 + 24) = v78;
  *(a19 + 32) = v48;
  v49 = v81;
  *(a19 + 40) = v80;
  *(a19 + 48) = v49;
  v50 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_uriSupportedState;
  v51 = type metadata accessor for KDSRegistration.URISupportedState();
  v52 = *(v51 - 8);
  (*(v52 + 16))(a19 + v50, v95, v51);
  v53 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_uniqueClientIdentifier;
  v54 = type metadata accessor for KDSRegistration.UniqueClientIdentifier();
  v55 = *(v54 - 8);
  (*(v55 + 16))(a19 + v53, v94, v54);
  *(a19 + 16) = v82;
  v56 = (a19 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_CSR);
  swift_beginAccess();
  v57 = *v56;
  v58 = v56[1];
  v59 = v83;
  v60 = v84;
  *v56 = v83;
  v56[1] = v60;
  outlined copy of Data?(v59, v60);
  outlined consume of Data?(v57, v58);
  v61 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_telURI;
  swift_beginAccess();
  v62 = v85;
  outlined assign with copy of URI?(v85, a19 + v61, &_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
  swift_endAccess();
  v63 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_keyPackage;
  swift_beginAccess();
  v64 = v87;
  outlined assign with copy of URI?(v87, a19 + v63, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMd, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMR);
  swift_endAccess();
  v65 = a19 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_nextHeartbeatInterval;
  swift_beginAccess();
  *v65 = v88;
  *(v65 + 8) = v89 & 1;
  v66 = (a19 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_devicePushToken);
  swift_beginAccess();
  v68 = *v66;
  v67 = v66[1];
  v69 = v90;
  v70 = v92;
  *v66 = v90;
  v66[1] = v70;
  outlined copy of Data?(v69, v70);
  outlined consume of Data?(v68, v67);
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  v71 = type metadata accessor for TaskPriority();
  v72 = v91;
  (*(*(v71 - 8) + 56))(v91, 1, 1, v71);
  type metadata accessor for RegistrationActor();

  v73 = static RegistrationActor.shared.getter();
  v74 = _s15SecureMessaging17RegistrationActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20], MEMORY[0x277D4CC28]);
  v75 = swift_allocObject();
  v75[2] = v73;
  v75[3] = v74;
  v75[4] = a19;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v72, &closure #1 in KDSRegistrationStateMachine.rerun()partial apply, v75);

  outlined destroy of MLS.KeyPackageProvider?(v64, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMd, &_s15SecureMessaging3MLSO14KeyPackageInfoVSgMR);
  outlined destroy of MLS.KeyPackageProvider?(v62, &_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
  outlined destroy of MLS.KeyPackageProvider?(v93, &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMd, &_s15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoVSgMR);
  (*(v55 + 8))(v94, v54);
  (*(v52 + 8))(v95, v51);
  __swift_destroy_boxed_opaque_existential_1Tm(v96);
  __swift_destroy_boxed_opaque_existential_1Tm(v97);
  return a19;
}

uint64_t specialized KDSRegistrationStateMachine.__allocating_init(stateMachineOperator:networkOperator:simUniqueID:simLabelID:uriSupportedState:uniqueClientIdentifier:initialState:phoneAuthInfo:participantInfo:csr:telURI:phoneNumberCredntial:keyPackage:nextHeartbeatInterval:devicePushToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, unint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v44 = a7;
  v45 = a8;
  v42 = a5;
  v43 = a6;
  v40 = a3;
  v41 = a4;
  v39 = a9;
  v37 = a11;
  v38 = a10;
  v35 = a13;
  v36 = a12;
  v34 = a15;
  v32 = a2;
  v33 = a16;
  v31 = a19;
  v21 = *(a18 - 8);
  v22 = MEMORY[0x28223BE20](a1, a2);
  v24 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a17 - 8);
  MEMORY[0x28223BE20](v22, v26);
  v28 = &v31 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KDSRegistrationStateMachine(0);
  v29 = swift_allocObject();
  (*(v25 + 16))(v28, a1, a17);
  (*(v21 + 16))(v24, v32, a18);
  return specialized KDSRegistrationStateMachine.init(stateMachineOperator:networkOperator:simUniqueID:simLabelID:uriSupportedState:uniqueClientIdentifier:initialState:phoneAuthInfo:participantInfo:csr:telURI:phoneNumberCredntial:keyPackage:nextHeartbeatInterval:devicePushToken:)(v28, v24, v40, v41, v42, v43, v44, v45, v39, v38, *(&v38 + 1), v37, *(&v37 + 1), v36, v35, a14 & 1, v34, v33, v29, a17, a18, v31, a20);
}

unint64_t lazy protocol witness table accessor for type KDSRegistrationStateMachine.RegistrationState and conformance KDSRegistrationStateMachine.RegistrationState()
{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState and conformance KDSRegistrationStateMachine.RegistrationState;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState and conformance KDSRegistrationStateMachine.RegistrationState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState and conformance KDSRegistrationStateMachine.RegistrationState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState and conformance KDSRegistrationStateMachine.RegistrationState;
  if (!lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState and conformance KDSRegistrationStateMachine.RegistrationState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistrationStateMachine.RegistrationState and conformance KDSRegistrationStateMachine.RegistrationState);
  }

  return result;
}