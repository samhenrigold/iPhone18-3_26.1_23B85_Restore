__n128 OutgoingEventModel.init(clientIdentifier:groupID:outgoingEventData:groupVersionData:outgoingEventStateData:eventIdentifier:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, __n128 a11)
{
  result = a10;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5] = a11;
  return result;
}

uint64_t (*protocol witness for static SqlSchema.converter.getter in conformance OutgoingEventModel())()
{
  swift_beginAccess();
  v1 = static OutgoingEventModel.converter;
  v0 = *algn_281EF7B58;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned OutgoingEventModel?, @error @owned Error)partial apply;
}

uint64_t *OutgoingEventQuery.converter.unsafeMutableAddressor()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  return &static OutgoingEventQuery.converter;
}

uint64_t static OutgoingEventQuery.converter.getter()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static OutgoingEventQuery.converter;

  return v0;
}

uint64_t static OutgoingEventQuery.converter.setter(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static OutgoingEventQuery.converter = a1;
  qword_2800167A8 = a2;
}

uint64_t (*static OutgoingEventQuery.converter.modify(uint64_t a1))()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static StateMachineQuery.converter.modify;
}

uint64_t key path getter for static OutgoingEventQuery.converter : OutgoingEventQuery.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static OutgoingEventQuery.converter;
  v2 = qword_2800167A8;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned OutgoingEventModel?, @error @owned Error);
  a1[1] = v4;
}

uint64_t key path setter for static OutgoingEventQuery.converter : OutgoingEventQuery.Type(uint64_t *a1)
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
  static OutgoingEventQuery.converter = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out OutgoingEventModel?, @error @owned Error);
  qword_2800167A8 = v3;
}

sqlite3_stmt *OutgoingEventQuery.queryStatement(_:)(sqlite3 *a1, uint64_t a2, unint64_t a3)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v6 = strdup("SELECT * FROM Outgoing_Event_Table WHERE client_id = ? ORDER BY id ASC;");
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

uint64_t (*protocol witness for static SqlQuery.converter.getter in conformance OutgoingEventQuery())()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = static OutgoingEventQuery.converter;
  v0 = qword_2800167A8;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned OutgoingEventModel?, @error @owned Error);
}

unint64_t closure #1 in variable initialization expression of static OutgoingClientWithEventQuery.converter(sqlite3_stmt *a1)
{
  if (sqlite3_column_type(a1, 0) == 5 || (v2 = sqlite3_column_blob(a1, 0)) == 0)
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v6 = 3;
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
    return swift_willThrow();
  }

  else
  {
    v3 = v2;
    v4 = sqlite3_column_bytes(a1, 0);
    return specialized Data.init(bytes:count:)(v3, v4);
  }
}

uint64_t static OutgoingEventModel.converter.getter(uint64_t *a1, void *a2)
{
  swift_beginAccess();
  v3 = *a1;

  return v3;
}

uint64_t static OutgoingEventModel.converter.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  swift_beginAccess();
  *a3 = a1;
  *a4 = a2;
}

uint64_t key path getter for static OutgoingEventModel.converter : OutgoingEventModel.Type@<X0>(uint64_t *a1@<X3>, uint64_t *a2@<X4>, uint64_t a4@<X6>, void *a5@<X8>)
{
  swift_beginAccess();
  v9 = *a1;
  v10 = *a2;
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;
  *a5 = a4;
  a5[1] = v11;
}

uint64_t key path setter for static OutgoingEventModel.converter : OutgoingEventModel.Type(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t *a7, uint64_t a8)
{
  v12 = *a1;
  v11 = a1[1];
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  swift_beginAccess();
  *a6 = a8;
  *a7 = v13;
}

uint64_t (*protocol witness for static SqlQuery.converter.getter in conformance OutgoingClientWithEventQuery())@<X0>(uint64_t *x8_0@<X8>)
{
  swift_beginAccess();
  v1 = static OutgoingClientWithEventQuery.converter;
  v0 = *algn_281EF7B68;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned Data?, @error @owned Error);
}

sqlite3_stmt *specialized static OutgoingEventModel.createStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("CREATE TABLE IF NOT EXISTS Outgoing_Event_Table (\n    id INTEGER PRIMARY KEY AUTOINCREMENT,\n    client_id BLOB NOT NULL,\n    group_id BLOB NOT NULL,\n    event_identifier BLOB NOT NULL,\n    outgoing_event_data BLOB,\n    group_version_data BLOB,\n    outgoing_event_state_data BLOB\n);");
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

uint64_t specialized static OutgoingEventModel.createIndexStatements(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("CREATE INDEX IF NOT EXISTS Outgoing_Event_Table_Event_ID_Index ON Outgoing_Event_Table(event_identifier, group_id, client_id, id);");
  if (!v2)
  {
    __break(1u);
  }

  if (sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v3);

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0x726F7272456C7173;
    *(v4 + 16) = 0xE90000000000003ALL;
    return swift_willThrow();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVSgGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVSgGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_2653419E0;
    *(result + 32) = ppStmt[0];
  }

  return result;
}

sqlite3_stmt *specialized static OutgoingEventModel.dropStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("DROP TABLE IF EXISTS Outgoing_Event_Table");
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

sqlite3_stmt *specialized OutgoingClientWithEventQuery.queryStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("SELECT DISTINCT client_id FROM Outgoing_Event_Table;");
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

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for OutgoingEventModel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 96))
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

uint64_t storeEnumTagSinglePayload for OutgoingEventModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for OutgoingEventQuery(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for OutgoingEventQuery(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_26526EBB8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

double partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out OutgoingEventModel?, @error @owned Error)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out OutgoingEventModel?, @error @owned Error)(a1, a2);
}

{
  v5 = *(v2 + 16);
  v11 = a1;
  v5(v10, &v11);
  if (!v3)
  {
    v7 = v10[3];
    a2[2] = v10[2];
    a2[3] = v7;
    v8 = v10[5];
    a2[4] = v10[4];
    a2[5] = v8;
    result = *v10;
    v9 = v10[1];
    *a2 = v10[0];
    a2[1] = v9;
  }

  return result;
}

double partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned OutgoingEventModel?, @error @owned Error)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned OutgoingEventModel?, @error @owned Error)(a1, a2);
}

{
  (*(v2 + 16))(v9, *a1);
  if (!v3)
  {
    v6 = v9[3];
    a2[2] = v9[2];
    a2[3] = v6;
    v7 = v9[5];
    a2[4] = v9[4];
    a2[5] = v7;
    result = *v9;
    v8 = v9[1];
    *a2 = v9[0];
    a2[1] = v8;
  }

  return result;
}

double partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned OutgoingEventModel?, @error @owned Error)@<D0>(_OWORD *a1@<X8>)
{
  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned OutgoingEventModel?, @error @owned Error)(a1);
}

{
  (*(v1 + 16))(v8);
  if (!v2)
  {
    v5 = v8[3];
    a1[2] = v8[2];
    a1[3] = v5;
    v6 = v8[5];
    a1[4] = v8[4];
    a1[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  if (*a1)
  {
    v5 = a1[5];
    v37 = *a1;
    v38 = *(a1 + 1);
    v39 = *(a1 + 3);
    v40 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v37, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for MLS.UniqueClientIdentifier();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v36;
  }

  else
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v37 = *v3;
      if (!v12)
      {
        specialized _NativeDictionary.copy()();
        v13 = v37;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for MLS.UniqueClientIdentifier();
      v16 = *(v15 - 8);
      v35 = *(v16 + 8);
      v35(v14 + *(v16 + 72) * v11, v15);
      v17 = *(v13 + 56) + 48 * v11;
      v18 = *v17;
      swift_unknownObjectRelease(*(v17 + 32), v19, v20, v21, v22, v23, v24, v25);

      swift_unknownObjectRelease(v18, v26, v27, v28, v29, v30, v31, v32);
      specialized _NativeDictionary._delete(at:)(v11, v13);
      result = (v35)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v33 = type metadata accessor for MLS.UniqueClientIdentifier();
      v34 = *(*(v33 - 8) + 8);

      return v34(a2, v33);
    }
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
    v8[0] = *a1;
    v8[1] = v4;
    v8[2] = *(a1 + 32);
    v9 = *(a1 + 48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, a2, isUniquelyReferenced_nonNull_native);
    result = outlined destroy of RegClientIdentifier(a2);
    *v2 = v7;
  }

  else
  {
    outlined destroy of MLS.KeyPackageProvider?(a1, &_s24SecureMessagingAgentCore23RegistrationClientProxyVSgMd, &_s24SecureMessagingAgentCore23RegistrationClientProxyVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v8);
    outlined destroy of RegClientIdentifier(a2);
    return outlined destroy of MLS.KeyPackageProvider?(v8, &_s24SecureMessagingAgentCore23RegistrationClientProxyVSgMd, &_s24SecureMessagingAgentCore23RegistrationClientProxyVSgMR);
  }

  return result;
}

{
  if (*(a1 + 24))
  {
    outlined init with take of MLS.SwiftMLSPersisterProtocol(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = type metadata accessor for MLS.UniqueClientIdentifier();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    outlined destroy of MLS.KeyPackageProvider?(a1, &_s15SecureMessaging3MLSO25SwiftMLSPersisterProtocol_pSgMd, &_s15SecureMessaging3MLSO25SwiftMLSPersisterProtocol_pSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v9);
    v7 = type metadata accessor for MLS.UniqueClientIdentifier();
    (*(*(v7 - 8) + 8))(a2, v7);
    return outlined destroy of MLS.KeyPackageProvider?(v9, &_s15SecureMessaging3MLSO25SwiftMLSPersisterProtocol_pSgMd, &_s15SecureMessaging3MLSO25SwiftMLSPersisterProtocol_pSgMR);
  }

  return result;
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO20SwiftMLSClientPickerOSgMd, &_s15SecureMessaging3MLSO20SwiftMLSClientPickerOSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for MLS.SwiftMLSClientPicker();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    outlined destroy of MLS.KeyPackageProvider?(a1, &_s15SecureMessaging3MLSO20SwiftMLSClientPickerOSgMd, &_s15SecureMessaging3MLSO20SwiftMLSClientPickerOSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, MEMORY[0x277D4CFD0], specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v8);
    v14 = type metadata accessor for MLS.UniqueClientIdentifier();
    (*(*(v14 - 8) + 8))(a2, v14);
    return outlined destroy of MLS.KeyPackageProvider?(v8, &_s15SecureMessaging3MLSO20SwiftMLSClientPickerOSgMd, &_s15SecureMessaging3MLSO20SwiftMLSClientPickerOSgMR);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, a2, isUniquelyReferenced_nonNull_native);
    v17 = type metadata accessor for MLS.UniqueClientIdentifier();
    result = (*(*(v17 - 8) + 8))(a2, v17);
    *v2 = v19;
  }

  return result;
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO18KeyPackageProviderVSgMd, &_s15SecureMessaging3MLSO18KeyPackageProviderVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for MLS.KeyPackageProvider();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    outlined destroy of MLS.KeyPackageProvider?(a1, &_s15SecureMessaging3MLSO18KeyPackageProviderVSgMd, &_s15SecureMessaging3MLSO18KeyPackageProviderVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, MEMORY[0x277D4CF18], specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v8);
    v14 = type metadata accessor for MLS.UniqueClientIdentifier();
    (*(*(v14 - 8) + 8))(a2, v14);
    return outlined destroy of MLS.KeyPackageProvider?(v8, &_s15SecureMessaging3MLSO18KeyPackageProviderVSgMd, &_s15SecureMessaging3MLSO18KeyPackageProviderVSgMR);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, a2, isUniquelyReferenced_nonNull_native);
    v17 = type metadata accessor for MLS.UniqueClientIdentifier();
    result = (*(*(v17 - 8) + 8))(a2, v17);
    *v2 = v19;
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    v9 = type metadata accessor for KDSRegistration.UniqueClientIdentifier();
    result = (*(*(v9 - 8) + 8))(a3, v9);
    *v3 = v30;
  }

  else
  {
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if (v12)
    {
      v13 = v11;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      v31 = *v4;
      if (!v14)
      {
        specialized _NativeDictionary.copy()();
        v15 = v31;
      }

      v16 = *(v15 + 48);
      v17 = type metadata accessor for KDSRegistration.UniqueClientIdentifier();
      v18 = *(v17 - 8);
      v19 = *(v18 + 8);
      v19(v16 + *(v18 + 72) * v13, v17);
      v20 = *(*(v15 + 56) + 16 * v13);

      swift_unknownObjectRelease(v20, v21, v22, v23, v24, v25, v26, v27);
      specialized _NativeDictionary._delete(at:)(v13, v15);
      result = (v19)(a3, v17);
      *v4 = v15;
    }

    else
    {
      v28 = type metadata accessor for KDSRegistration.UniqueClientIdentifier();
      v29 = *(*(v28 - 8) + 8);

      return v29(a3, v28);
    }
  }

  return result;
}

uint64_t ClientXPCServer.addClientXPCProxy(clientProxy:with:)(void *a1, uint64_t a2)
{
  v5 = *(*v2 + 104);
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v6 = v5(v12);
  v8 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v8;
  *v8 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
  *v8 = v11;
  return v6(v12, 0);
}

uint64_t ClientXPCServer.removeClientXPCProxy(for:)(uint64_t a1)
{
  v3 = type metadata accessor for MLS.UniqueClientIdentifier();
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 16))(v6, a1);
  memset(v11, 0, sizeof(v11));
  v8 = (*(*v1 + 104))(v10);
  specialized Dictionary.subscript.setter(v11, v6);
  return v8(v10, 0);
}

uint64_t ClientXPCServer.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t ClientXPCServer.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO22UniqueClientIdentifierV_0cD9AgentCore0G8XPCProxyVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t ClientXPCProxy.init(client:swiftMLSClientCoordinator:clientCommunicator:clientDelegate:clientKPExchanger:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t ClientXPCServer.clientProxyByUUID.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t RegistrationClientServer.addRegClientProxy(regClientProxy:with:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for RegClientIdentifier(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  outlined init with copy of RegClientIdentifier(a2, v8);
  outlined init with copy of RegistrationClientProxy(a1, v13);
  v9 = (*(*v2 + 104))(v12);
  specialized Dictionary.subscript.setter(v13, v8);
  return v9(v12, 0);
}

uint64_t RegistrationClientServer.removeRegClientProxy(for:)(uint64_t a1)
{
  v3 = type metadata accessor for RegClientIdentifier(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of RegClientIdentifier(a1, v6);
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v7 = (*(*v1 + 104))(v9);
  specialized Dictionary.subscript.setter(v10, v6);
  return v7(v9, 0);
}

uint64_t RegistrationClientServer.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC24SecureMessagingAgentCore19RegClientIdentifierV_AC012RegistrationH5ProxyVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t RegistrationClientProxy.init(client:keyPackageExchanger:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = outlined init with take of MLS.SwiftMLSPersisterProtocol(a1, a4);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t RegClientIdentifier.clientIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MLS.ClientIdentifier();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RegClientIdentifier.init(clientIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MLS.ClientIdentifier();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t static RegClientIdentifier.== infix(_:_:)()
{
  type metadata accessor for MLS.ClientIdentifier();
  lazy protocol witness table accessor for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier(&lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier, MEMORY[0x277D4CD48], MEMORY[0x277D4CD60]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v1 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RegClientIdentifier.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x266756F60](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RegClientIdentifier.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x266756F60](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RegClientIdentifier.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000026534A490 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RegClientIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RegClientIdentifier.CodingKeys and conformance RegClientIdentifier.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RegClientIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RegClientIdentifier.CodingKeys and conformance RegClientIdentifier.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RegClientIdentifier.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore19RegClientIdentifierV10CodingKeys33_86BDAD103DBE62CE4F0929AAA9739F40LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore19RegClientIdentifierV10CodingKeys33_86BDAD103DBE62CE4F0929AAA9739F40LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RegClientIdentifier.CodingKeys and conformance RegClientIdentifier.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for MLS.ClientIdentifier();
  lazy protocol witness table accessor for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier(&lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier, MEMORY[0x277D4CD48], MEMORY[0x277D4CD50]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t RegClientIdentifier.hash(into:)(uint64_t a1)
{
  type metadata accessor for MLS.ClientIdentifier();
  lazy protocol witness table accessor for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier(&lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier, MEMORY[0x277D4CD48], MEMORY[0x277D4CD58]);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int RegClientIdentifier.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for MLS.ClientIdentifier();
  lazy protocol witness table accessor for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier(&lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier, MEMORY[0x277D4CD48], MEMORY[0x277D4CD58]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t RegClientIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for MLS.ClientIdentifier();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v22 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore19RegClientIdentifierV10CodingKeys33_86BDAD103DBE62CE4F0929AAA9739F40LLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore19RegClientIdentifierV10CodingKeys33_86BDAD103DBE62CE4F0929AAA9739F40LLOGMR);
  v20 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for RegClientIdentifier(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RegClientIdentifier.CodingKeys and conformance RegClientIdentifier.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v15 = v19;
    v16 = v21;
    lazy protocol witness table accessor for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier(&lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier, MEMORY[0x277D4CD48], MEMORY[0x277D4CD68]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v20 + 8))(v10, v7);
    (*(v15 + 32))(v14, v22, v4);
    outlined init with take of RegClientIdentifier(v14, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RegClientIdentifier()
{
  Hasher.init(_seed:)();
  type metadata accessor for MLS.ClientIdentifier();
  lazy protocol witness table accessor for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier(&lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier, MEMORY[0x277D4CD48], MEMORY[0x277D4CD58]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance RegClientIdentifier(uint64_t a1)
{
  type metadata accessor for MLS.ClientIdentifier();
  lazy protocol witness table accessor for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier(&lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier, MEMORY[0x277D4CD48], MEMORY[0x277D4CD58]);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RegClientIdentifier(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for MLS.ClientIdentifier();
  lazy protocol witness table accessor for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier(&lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier, MEMORY[0x277D4CD48], MEMORY[0x277D4CD58]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Encodable.encode(to:) in conformance RegClientIdentifier(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore19RegClientIdentifierV10CodingKeys33_86BDAD103DBE62CE4F0929AAA9739F40LLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore19RegClientIdentifierV10CodingKeys33_86BDAD103DBE62CE4F0929AAA9739F40LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RegClientIdentifier.CodingKeys and conformance RegClientIdentifier.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for MLS.ClientIdentifier();
  lazy protocol witness table accessor for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier(&lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier, MEMORY[0x277D4CD48], MEMORY[0x277D4CD50]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RegClientIdentifier()
{
  type metadata accessor for MLS.ClientIdentifier();
  lazy protocol witness table accessor for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier(&lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier, MEMORY[0x277D4CD48], MEMORY[0x277D4CD60]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v1 & 1;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v15;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for RegClientIdentifier(0);
    outlined destroy of RegClientIdentifier(v10 + *(*(v11 - 8) + 72) * v7);
    v12 = *(v9 + 56) + 56 * v7;
    v13 = *(v12 + 16);
    *a2 = *v12;
    *(a2 + 16) = v13;
    *(a2 + 32) = *(v12 + 32);
    *(a2 + 48) = *(v12 + 48);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 48) = 0;
    result = 0.0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for MLS.UniqueClientIdentifier();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    outlined init with take of MLS.SwiftMLSPersisterProtocol((*(v9 + 56) + 40 * v7), a2);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v9 = v5;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v12)
  {
    v13 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v5;
    v28 = *v9;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v15 = v28;
    }

    v16 = *(v15 + 48);
    v17 = type metadata accessor for MLS.UniqueClientIdentifier();
    v18 = v13;
    (*(*(v17 - 8) + 8))(v16 + *(*(v17 - 8) + 72) * v13, v17);
    v19 = *(v15 + 56);
    v20 = a2(0);
    v27 = *(v20 - 8);
    (*(v27 + 32))(a5, v19 + *(v27 + 72) * v18, v20);
    a3(v18, v15);
    *v9 = v15;
    v21 = *(v27 + 56);
    v22 = a5;
    v23 = 0;
    v24 = v20;
  }

  else
  {
    v25 = a2(0);
    v21 = *(*(v25 - 8) + 56);
    v24 = v25;
    v22 = a5;
    v23 = 1;
  }

  return v21(v22, v23, 1, v24);
}

uint64_t type metadata accessor for RegClientIdentifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for RegClientIdentifier;
  if (!type metadata singleton initialization cache for RegClientIdentifier)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RegClientIdentifier.CodingKeys and conformance RegClientIdentifier.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RegClientIdentifier.CodingKeys and conformance RegClientIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type RegClientIdentifier.CodingKeys and conformance RegClientIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegClientIdentifier.CodingKeys and conformance RegClientIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RegClientIdentifier.CodingKeys and conformance RegClientIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type RegClientIdentifier.CodingKeys and conformance RegClientIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegClientIdentifier.CodingKeys and conformance RegClientIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RegClientIdentifier.CodingKeys and conformance RegClientIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type RegClientIdentifier.CodingKeys and conformance RegClientIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegClientIdentifier.CodingKeys and conformance RegClientIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RegClientIdentifier.CodingKeys and conformance RegClientIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type RegClientIdentifier.CodingKeys and conformance RegClientIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegClientIdentifier.CodingKeys and conformance RegClientIdentifier.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26527112C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  return result;
}

uint64_t sub_265271178(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 96);

  return v2(v3);
}

uint64_t sub_2652711CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  return result;
}

uint64_t sub_265271218(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 96);

  return v2(v3);
}

uint64_t dispatch thunk of ClientXPCServer.addClientXPCProxy(clientProxy:with:)(_OWORD *a1)
{
  v2 = *(*v1 + 112);
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  return v2(v5);
}

uint64_t getEnumTagSinglePayload for ClientXPCProxy(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for ClientXPCProxy(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for RegistrationClientProxy(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for RegistrationClientProxy(uint64_t result, int a2, int a3)
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

uint64_t sub_26527161C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.ClientIdentifier();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26527169C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.ClientIdentifier();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata completion function for RegClientIdentifier(uint64_t a1)
{
  result = type metadata accessor for MLS.ClientIdentifier();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RegClientIdentifier.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for RegClientIdentifier.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t outlined destroy of MLS.KeyPackageProvider?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t DelegateBroadcaster.__allocating_init(clientConnection:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t DelegateBroadcaster.receive(event:forGroup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MLSActor();
  v4[6] = static MLSActor.shared.getter();
  lazy protocol witness table accessor for type MLSActor and conformance MLSActor(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](DelegateBroadcaster.receive(event:forGroup:), v6, v5);
}

uint64_t DelegateBroadcaster.receive(event:forGroup:)()
{
  v1 = type metadata accessor for MLS.ReceiveResult();
  v2 = type metadata accessor for MLS.ReceiveError();
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *(v3 + 16) = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_ACtMd, &_s10Foundation4DataV_ACtMR);
  v5 = MEMORY[0x277D4CCC0];
  lazy protocol witness table accessor for type MLSActor and conformance MLSActor(&lazy protocol witness table cache variable for type MLS.ReceiveResult and conformance MLS.ReceiveResult, MEMORY[0x277D4CCC0], MEMORY[0x277D4CCD0]);
  lazy protocol witness table accessor for type MLSActor and conformance MLSActor(&lazy protocol witness table cache variable for type MLS.ReceiveResult and conformance MLS.ReceiveResult, v5, MEMORY[0x277D4CCC8]);
  lazy protocol witness table accessor for type MLSActor and conformance MLSActor(&lazy protocol witness table cache variable for type MLS.ReceiveError and conformance MLS.ReceiveError, MEMORY[0x277D4CC98], MEMORY[0x277D4CC90]);
  *v4 = v0;
  v4[1] = DelegateBroadcaster.receive(event:forGroup:);
  v6 = *(v0 + 40);
  v7 = *(v0 + 16);

  return MEMORY[0x2821ACBF8](v7, v1, v2, partial apply for closure #1 in DelegateBroadcaster.receive(event:forGroup:), v3, partial apply for closure #2 in DelegateBroadcaster.receive(event:forGroup:), v6, v1);
}

{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = DelegateBroadcaster.receive(event:forGroup:);
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = DelegateBroadcaster.receive(event:forGroup:);
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

void closure #1 in DelegateBroadcaster.receive(event:forGroup:)(uint64_t *a3@<X8>)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingEventType<MLS.AllMember, Data> and conformance MLS.IncomingEventType<A, B>, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR, MEMORY[0x277D4CEB8]);
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v7 = v6;

  if (!v3)
  {
    swift_allocObject();
    JSONEncoder.init()();
    type metadata accessor for MLS.Group();
    lazy protocol witness table accessor for type MLSActor and conformance MLSActor(&lazy protocol witness table cache variable for type MLS.Group and conformance MLS.Group, MEMORY[0x277D4D1E0], MEMORY[0x277D4D1E8]);
    v8 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v10 = v9;

    *a3 = v5;
    a3[1] = v7;
    a3[2] = v8;
    a3[3] = v10;
  }
}

uint64_t DelegateBroadcaster.fetchGroupRecoveryInfo(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MLSActor();
  v4[6] = static MLSActor.shared.getter();
  lazy protocol witness table accessor for type MLSActor and conformance MLSActor(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](DelegateBroadcaster.fetchGroupRecoveryInfo(group:context:), v6, v5);
}

uint64_t DelegateBroadcaster.fetchGroupRecoveryInfo(group:context:)()
{
  GroupRecoveryInfoResult = type metadata accessor for MLS.FetchGroupRecoveryInfoResult();
  GroupRecoveryInfoError = type metadata accessor for MLS.FetchGroupRecoveryInfoError();
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *(v3 + 16) = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_ACtMd, &_s10Foundation4DataV_ACtMR);
  v5 = MEMORY[0x277D4D168];
  lazy protocol witness table accessor for type MLSActor and conformance MLSActor(&lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult and conformance MLS.FetchGroupRecoveryInfoResult, MEMORY[0x277D4D168], MEMORY[0x277D4D178]);
  lazy protocol witness table accessor for type MLSActor and conformance MLSActor(&lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult and conformance MLS.FetchGroupRecoveryInfoResult, v5, MEMORY[0x277D4D170]);
  lazy protocol witness table accessor for type MLSActor and conformance MLSActor(&lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError, MEMORY[0x277D4D158], MEMORY[0x277D4D150]);
  *v4 = v0;
  v4[1] = DelegateBroadcaster.receive(event:forGroup:);
  v6 = *(v0 + 40);
  v7 = *(v0 + 16);

  return MEMORY[0x2821ACBF8](v7, GroupRecoveryInfoResult, GroupRecoveryInfoError, partial apply for closure #1 in DelegateBroadcaster.fetchGroupRecoveryInfo(group:context:), v3, partial apply for closure #2 in DelegateBroadcaster.fetchGroupRecoveryInfo(group:context:), v6, GroupRecoveryInfoResult);
}

void closure #1 in DelegateBroadcaster.fetchGroupRecoveryInfo(group:context:)(uint64_t *a3@<X8>)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for MLS.Group();
  lazy protocol witness table accessor for type MLSActor and conformance MLSActor(&lazy protocol witness table cache variable for type MLS.Group and conformance MLS.Group, MEMORY[0x277D4D1E0], MEMORY[0x277D4D1E8]);
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v7 = v6;

  if (!v3)
  {
    swift_allocObject();
    JSONEncoder.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO29FetchGroupRecoveryInfoContextVSgMd, &_s15SecureMessaging3MLSO29FetchGroupRecoveryInfoContextVSgMR);
    lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoContext? and conformance <A> A?();
    v8 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v10 = v9;

    *a3 = v5;
    a3[1] = v7;
    a3[2] = v8;
    a3[3] = v10;
  }
}

uint64_t DelegateBroadcaster.fetchMember(uri:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MLSActor();
  v4[6] = static MLSActor.shared.getter();
  lazy protocol witness table accessor for type MLSActor and conformance MLSActor(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](DelegateBroadcaster.fetchMember(uri:context:), v6, v5);
}

uint64_t DelegateBroadcaster.fetchMember(uri:context:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17FetchMemberResultOy_AC03AllE0OGMd, &_s15SecureMessaging3MLSO17FetchMemberResultOy_AC03AllE0OGMR);
  MemberError = type metadata accessor for MLS.FetchMemberError();
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *(v3 + 16) = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_ACtMd, &_s10Foundation4DataV_ACtMR);
  lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>, &_s15SecureMessaging3MLSO17FetchMemberResultOy_AC03AllE0OGMd, &_s15SecureMessaging3MLSO17FetchMemberResultOy_AC03AllE0OGMR, MEMORY[0x277D4CDB0]);
  lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>, &_s15SecureMessaging3MLSO17FetchMemberResultOy_AC03AllE0OGMd, &_s15SecureMessaging3MLSO17FetchMemberResultOy_AC03AllE0OGMR, MEMORY[0x277D4CDA8]);
  lazy protocol witness table accessor for type MLSActor and conformance MLSActor(&lazy protocol witness table cache variable for type MLS.FetchMemberError and conformance MLS.FetchMemberError, MEMORY[0x277D4CD80], MEMORY[0x277D4CD78]);
  *v4 = v0;
  v4[1] = DelegateBroadcaster.fetchMember(uri:context:);
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);

  return MEMORY[0x2821ACBF8](v6, v1, MemberError, partial apply for closure #1 in DelegateBroadcaster.fetchMember(uri:context:), v3, partial apply for closure #2 in DelegateBroadcaster.fetchMember(uri:context:), v5, v1);
}

{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = DelegateBroadcaster.fetchMember(uri:context:);
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = DelegateBroadcaster.fetchMember(uri:context:);
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

void closure #1 in DelegateBroadcaster.fetchMember(uri:context:)(uint64_t *a3@<X8>)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for URI();
  lazy protocol witness table accessor for type MLSActor and conformance MLSActor(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258], MEMORY[0x277D4D260]);
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v7 = v6;

  if (!v3)
  {
    swift_allocObject();
    JSONEncoder.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO18FetchMemberContextVSgMd, &_s15SecureMessaging3MLSO18FetchMemberContextVSgMR);
    lazy protocol witness table accessor for type MLS.FetchMemberContext? and conformance <A> A?();
    v8 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v10 = v9;

    *a3 = v5;
    a3[1] = v7;
    a3[2] = v8;
    a3[3] = v10;
  }
}

void closure #2 in DelegateBroadcaster.receive(event:forGroup:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  v13 = *(a4 + 16);
  outlined copy of Data._Representation(*a1, v10);
  outlined copy of Data._Representation(v11, v12);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v15 = Data._bridgeToObjectiveC()().super.isa;
  aBlock[4] = a2;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Data?) -> ();
  aBlock[3] = a5;
  v16 = _Block_copy(aBlock);

  [v13 *a6];
  _Block_release(v16);

  outlined consume of Data._Representation(v11, v12);
  outlined consume of Data._Representation(v9, v10);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t DelegateBroadcaster.__deallocating_deinit(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  swift_unknownObjectRelease(*(v8 + 16), a2, a3, a4, a5, a6, a7, a8);

  return MEMORY[0x2821FE8D8](v8, 24, 7);
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t protocol witness for MLS.Delegate.receive(event:forGroup:) in conformance DelegateBroadcaster(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 96) + **(*v3 + 96));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v10(a1, a2, a3);
}

uint64_t protocol witness for MLS.Delegate.resendApplicationMessage(identifier:forGroup:context:) in conformance DelegateBroadcaster(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return MEMORY[0x2821ACB38](a1, a2, a3, a4, a5, a6, a7);
}

uint64_t protocol witness for MLS.Delegate.fetchGroupRecoveryInfo(group:context:) in conformance DelegateBroadcaster(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 104) + **(*v3 + 104));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v10(a1, a2, a3);
}

uint64_t protocol witness for MLS.Delegate.fetchMember(uri:context:) in conformance DelegateBroadcaster(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 112) + **(*v3 + 112));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of DelegateBroadcaster.receive(event:forGroup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 96) + **(*v3 + 96));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of DelegateBroadcaster.fetchGroupRecoveryInfo(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 104) + **(*v3 + 104));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of DelegateBroadcaster.fetchMember(uri:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 112) + **(*v3 + 112));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return v10(a1, a2, a3);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type MLS.FetchMemberContext? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type MLS.FetchMemberContext? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type MLS.FetchMemberContext? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15SecureMessaging3MLSO18FetchMemberContextVSgMd, &_s15SecureMessaging3MLSO18FetchMemberContextVSgMR);
    lazy protocol witness table accessor for type MLSActor and conformance MLSActor(&lazy protocol witness table cache variable for type MLS.FetchMemberContext and conformance MLS.FetchMemberContext, MEMORY[0x277D4CEE8], MEMORY[0x277D4CEF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchMemberContext? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoContext? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoContext? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoContext? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15SecureMessaging3MLSO29FetchGroupRecoveryInfoContextVSgMd, &_s15SecureMessaging3MLSO29FetchGroupRecoveryInfoContextVSgMR);
    lazy protocol witness table accessor for type MLSActor and conformance MLSActor(&lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoContext and conformance MLS.FetchGroupRecoveryInfoContext, MEMORY[0x277D4D180], MEMORY[0x277D4D188]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoContext? and conformance <A> A?);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MLSActor and conformance MLSActor(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SD4KeysVySiy24SecureMessagingAgentCore26KDSRegistrationPushHandlerC_SDys11AnyHashableVypGt0cD017RegistrationActorCYcc_GTt0g5(uint64_t a1)
{
  result = MEMORY[0x266756B80](*(a1 + 16), MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v3 = 0;
  v11 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = specialized Set._Variant.insert(_:)(&v10, *(*(a1 + 48) + ((v8 << 9) | (8 * v9)))))
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v11;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t DaemonPersister.inMemoryPersister.getter()
{
  v1 = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister____lazy_storage___inMemoryPersister;
  if (*(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister____lazy_storage___inMemoryPersister))
  {
    v2 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister____lazy_storage___inMemoryPersister);
  }

  else
  {
    v3 = v0;
    type metadata accessor for MLS.InMemoryPersister();
    swift_allocObject();
    v2 = MLS.InMemoryPersister.init()();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t (*DaemonPersister.inMemoryPersister.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = DaemonPersister.inMemoryPersister.getter();
  return DaemonPersister.inMemoryPersister.modify;
}

uint64_t DaemonPersister.fileDir.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_fileDir);

  return v1;
}

uint64_t DaemonPersister.dbFileName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_dbFileName);

  return v1;
}

uint64_t DaemonPersister.logger.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t DaemonPersister.ongoingTransaction.getter()
{
  v1 = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_ongoingTransaction;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DaemonPersister.ongoingTransaction.setter(char a1)
{
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_ongoingTransaction;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DaemonPersister.clientIDToSwiftMLSPersister.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_clientIDToSwiftMLSPersister;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t DaemonPersister.persistenceQueue.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySS_GSgMd, &_sScS12ContinuationVySS_GSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister____lazy_storage___persistenceQueue;
  if (*(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister____lazy_storage___persistenceQueue))
  {
    v7 = *(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister____lazy_storage___persistenceQueue);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySS_GMd, &_sScS12ContinuationVySS_GMR);
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    swift_weakInit();
    type metadata accessor for MLS.PersistenceQueue();
    swift_allocObject();
    v7 = MLS.PersistenceQueue.init(queueingPublisher:beginTransactionBlock:endTransactionBlock:rollbackTransactionBlock:)();
    *(v1 + v6) = v7;
  }

  return v7;
}

uint64_t sub_265273E9C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t closure #1 in DaemonPersister.persistenceQueue.getter(uint64_t a1)
{
  v1[8] = a1;
  type metadata accessor for MLSActor();
  v1[9] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[10] = v3;
  v1[11] = v2;

  return MEMORY[0x2822009F8](closure #1 in DaemonPersister.persistenceQueue.getter, v3, v2);
}

{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 112) = a1;
  *(v4 + 120) = v1;

  v5 = *(v3 + 96);
  if (v1)
  {
    v6 = closure #1 in DaemonPersister.persistenceQueue.getter;
  }

  else
  {
    v6 = closure #1 in DaemonPersister.persistenceQueue.getter;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t closure #1 in DaemonPersister.persistenceQueue.getter()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[12] = *(Strong + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);

    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = closure #1 in DaemonPersister.persistenceQueue.getter;

    return SqliteStore.prepare(_:)(0xD000000000000012, 0x800000026534A630);
  }

  else
  {

    swift_beginAccess();
    v4 = swift_weakLoadStrong();
    if (v4)
    {
      (*(*v4 + 200))(1);
    }

    v5 = v0[1];

    return v5();
  }
}

{
  v1 = v0[14];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[16] = v2;
    *v2 = v0;
    v2[1] = closure #1 in DaemonPersister.persistenceQueue.getter;

    return SqliteStore.execute(_:)(v1);
  }

  else
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    v4 = swift_allocError();
    *v5 = 2;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    swift_willThrow();

    v0[17] = v4;
    v6 = v0[10];
    v7 = v0[11];

    return MEMORY[0x2822009F8](closure #1 in DaemonPersister.persistenceQueue.getter, v6, v7);
  }
}

{
  v2 = *v1;

  if (v0)
  {
    v2[17] = v0;
    v3 = v2[10];
    v4 = v2[11];
    v5 = closure #1 in DaemonPersister.persistenceQueue.getter;
  }

  else
  {
    v3 = v2[10];
    v4 = v2[11];
    v5 = closure #1 in DaemonPersister.persistenceQueue.getter;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{

  v0[17] = v0[15];
  v1 = v0[10];
  v2 = v0[11];

  return MEMORY[0x2822009F8](closure #1 in DaemonPersister.persistenceQueue.getter, v1, v2);
}

{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 200))(1);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t partial apply for closure #1 in DaemonPersister.persistenceQueue.getter()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #1 in DaemonPersister.persistenceQueue.getter(v0);
}

uint64_t closure #2 in DaemonPersister.persistenceQueue.getter(uint64_t a1)
{
  v1[8] = a1;
  type metadata accessor for MLSActor();
  v1[9] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[10] = v3;
  v1[11] = v2;

  return MEMORY[0x2822009F8](closure #2 in DaemonPersister.persistenceQueue.getter, v3, v2);
}

{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 112) = a1;
  *(v4 + 120) = v1;

  v5 = *(v3 + 96);
  if (v1)
  {
    v6 = closure #2 in DaemonPersister.persistenceQueue.getter;
  }

  else
  {
    v6 = closure #2 in DaemonPersister.persistenceQueue.getter;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t closure #2 in DaemonPersister.persistenceQueue.getter()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[12] = *(Strong + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);

    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = closure #2 in DaemonPersister.persistenceQueue.getter;

    return SqliteStore.prepare(_:)(0x3B54494D4D4F43, 0xE700000000000000);
  }

  else
  {

    swift_beginAccess();
    v4 = swift_weakLoadStrong();
    if (v4)
    {
      (*(*v4 + 200))(0);
    }

    v5 = v0[1];

    return v5();
  }
}

{
  v1 = v0[14];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[16] = v2;
    *v2 = v0;
    v2[1] = closure #2 in DaemonPersister.persistenceQueue.getter;

    return SqliteStore.execute(_:)(v1);
  }

  else
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    v4 = swift_allocError();
    *v5 = 2;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    swift_willThrow();

    v0[17] = v4;
    v6 = v0[10];
    v7 = v0[11];

    return MEMORY[0x2822009F8](closure #2 in DaemonPersister.persistenceQueue.getter, v6, v7);
  }
}

{
  v2 = *v1;

  if (v0)
  {
    v2[17] = v0;
    v3 = v2[10];
    v4 = v2[11];
    v5 = closure #2 in DaemonPersister.persistenceQueue.getter;
  }

  else
  {
    v3 = v2[10];
    v4 = v2[11];
    v5 = closure #2 in DaemonPersister.persistenceQueue.getter;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{

  v0[17] = v0[15];
  v1 = v0[10];
  v2 = v0[11];

  return MEMORY[0x2822009F8](closure #2 in DaemonPersister.persistenceQueue.getter, v1, v2);
}

{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 200))(0);
  }

  v2 = *(v0 + 8);

  return v2();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t partial apply for closure #2 in DaemonPersister.persistenceQueue.getter()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #2 in DaemonPersister.persistenceQueue.getter(v0);
}

uint64_t closure #3 in DaemonPersister.persistenceQueue.getter(uint64_t a1)
{
  v1[8] = a1;
  type metadata accessor for MLSActor();
  v1[9] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[10] = v3;
  v1[11] = v2;

  return MEMORY[0x2822009F8](closure #3 in DaemonPersister.persistenceQueue.getter, v3, v2);
}

{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 112) = a1;
  *(v4 + 120) = v1;

  v5 = *(v3 + 96);
  if (v1)
  {
    v6 = closure #1 in DaemonPersister.persistenceQueue.getter;
  }

  else
  {
    v6 = closure #3 in DaemonPersister.persistenceQueue.getter;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t closure #3 in DaemonPersister.persistenceQueue.getter()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[12] = *(Strong + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);

    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = closure #3 in DaemonPersister.persistenceQueue.getter;

    return SqliteStore.prepare(_:)(0x4B4341424C4C4F52, 0xE90000000000003BLL);
  }

  else
  {

    swift_beginAccess();
    v4 = swift_weakLoadStrong();
    if (v4)
    {
      (*(*v4 + 200))(0);
    }

    v5 = v0[1];

    return v5();
  }
}

{
  v1 = v0[14];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[16] = v2;
    *v2 = v0;
    v2[1] = closure #3 in DaemonPersister.persistenceQueue.getter;

    return SqliteStore.execute(_:)(v1);
  }

  else
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    v4 = swift_allocError();
    *v5 = 2;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    swift_willThrow();

    v0[17] = v4;
    v6 = v0[10];
    v7 = v0[11];

    return MEMORY[0x2822009F8](closure #1 in DaemonPersister.persistenceQueue.getter, v6, v7);
  }
}

{
  v2 = *v1;

  if (v0)
  {
    v2[17] = v0;
    v3 = v2[10];
    v4 = v2[11];
    v5 = closure #1 in DaemonPersister.persistenceQueue.getter;
  }

  else
  {
    v3 = v2[10];
    v4 = v2[11];
    v5 = closure #3 in DaemonPersister.persistenceQueue.getter;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t partial apply for closure #3 in DaemonPersister.persistenceQueue.getter()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #3 in DaemonPersister.persistenceQueue.getter(v0);
}

uint64_t (*DaemonPersister.persistenceQueue.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = DaemonPersister.persistenceQueue.getter();
  return DaemonPersister.persistenceQueue.modify;
}

uint64_t DaemonPersister.useDatabase.getter()
{
  v0 = type metadata accessor for SMAFeatureFlagsKey();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277D4CC30], v0);
  v5 = SMAFeatureFlagsStore.isEnabled(feature:)();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t DaemonPersister.__allocating_init(fileDir:dbFileName:featureFlagStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  DaemonPersister.init(fileDir:dbFileName:featureFlagStore:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t DaemonPersister.init(fileDir:dbFileName:featureFlagStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v36 = a5;
  v33 = a3;
  v34 = a4;
  v31 = a1;
  v32 = a2;
  v7 = type metadata accessor for JSONEncoder.OutputFormatting();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v35 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LogCategory();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v11 + 104);
  v15(v14, *MEMORY[0x277D4C8F8], v10);
  secureMessagingLogger(category:)();
  v16 = *(v11 + 8);
  v16(v14, v10);
  *(v6 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister____lazy_storage___inMemoryPersister) = 0;
  v17 = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store;
  type metadata accessor for SqliteStore(0);
  v18 = swift_allocObject();
  swift_defaultActor_initialize();
  v15(v14, *MEMORY[0x277D4C920], v10);
  secureMessagingLogger(category:)();
  v16(v14, v10);
  *(v18 + OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db) = 0;
  *(v6 + v17) = v18;
  v19 = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_encoder;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  *(v6 + v19) = JSONEncoder.init()();
  v20 = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_decoder;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  *(v6 + v20) = JSONDecoder.init()();
  *(v6 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_ongoingTransaction) = 0;
  v21 = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_clientIDToSwiftMLSPersister;
  *(v6 + v21) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO22UniqueClientIdentifierV_AE25SwiftMLSPersisterProtocol_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v6 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister____lazy_storage___persistenceQueue) = 0;
  v22 = (v6 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_fileDir);
  v23 = v32;
  *v22 = v31;
  v22[1] = v23;
  v24 = (v6 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_dbFileName);
  v25 = v34;
  *v24 = v33;
  v24[1] = v25;
  v26 = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_featureFlagStore;
  v27 = type metadata accessor for SMAFeatureFlagsStore();
  v28 = *(v27 - 8);
  v29 = v36;
  (*(v28 + 16))(v6 + v26, v36, v27);
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  (*(v28 + 8))(v29, v27);
  return v6;
}

uint64_t DaemonPersister.setupDB()()
{
  v1[3] = v0;
  type metadata accessor for MLSActor();
  v1[4] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v2;
  v1[6] = v3;

  return MEMORY[0x2822009F8](DaemonPersister.setupDB(), v2, v3);
}

{
  if ((*(*v0[3] + 264))())
  {
    v0[7] = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_logger;
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_26524C000, v1, v2, "DaemonPersister setting up DB.", v3, 2u);
      MEMORY[0x2667577B0](v3, -1, -1);
    }

    v4 = v0[3];

    v5 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
    v6 = v4 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_fileDir;
    v7 = *(v4 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_fileDir);
    v8 = *(v6 + 8);
    v9 = MEMORY[0x266756A10](v7, v8);
    v0[2] = 0;
    v10 = [v5 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:v0 + 2];

    v11 = v0[2];
    if (v10)
    {
      v12 = v0[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_265343880;
      v14 = MEMORY[0x277D837D0];
      *(v13 + 56) = MEMORY[0x277D837D0];
      v15 = lazy protocol witness table accessor for type String and conformance String();
      *(v13 + 64) = v15;
      *(v13 + 32) = v7;
      *(v13 + 40) = v8;
      v16 = *(v12 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_dbFileName);
      v17 = *(v12 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_dbFileName + 8);
      *(v13 + 96) = v14;
      *(v13 + 104) = v15;
      *(v13 + 72) = v16;
      *(v13 + 80) = v17;
      v18 = v11;

      v19 = String.init(format:_:)();
      v21 = v20;
      v0[8] = v20;
      v0[9] = *(v12 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);
      v22 = swift_task_alloc();
      v0[10] = v22;
      *v22 = v0;
      v22[1] = DaemonPersister.setupDB();

      return SqliteStore.open(filePath:)(v19, v21);
    }

    v28 = v11;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    v27 = v0[1];
  }

  else
  {

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_26524C000, v24, v25, "DaemonPersister feature flag off. Not setting up DB.", v26, 2u);
      MEMORY[0x2667577B0](v26, -1, -1);
    }

    v27 = v0[1];
  }

  return v27();
}

{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = v2[5];
    v5 = v2[6];

    return MEMORY[0x2822009F8](DaemonPersister.setupDB(), v4, v5);
  }

  else
  {
    v6 = swift_task_alloc();
    v2[12] = v6;
    *v6 = v3;
    v6[1] = DaemonPersister.setupDB();

    return SqliteStore.createTable(_:)(&type metadata for ClientStateModel, &protocol witness table for ClientStateModel);
  }
}

{
  v2 = *v1;
  v2[13] = v0;

  if (v0)
  {
    v3 = v2[5];
    v4 = v2[6];

    return MEMORY[0x2822009F8](DaemonPersister.setupDB(), v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[14] = v5;
    *v5 = v2;
    v5[1] = DaemonPersister.setupDB();

    return SqliteStore.createTable(_:)(&type metadata for SecureMessagingClientModel, &protocol witness table for SecureMessagingClientModel);
  }
}

{
  v2 = *v1;
  v2[15] = v0;

  if (v0)
  {
    v3 = v2[5];
    v4 = v2[6];

    return MEMORY[0x2822009F8](DaemonPersister.setupDB(), v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[16] = v5;
    *v5 = v2;
    v5[1] = DaemonPersister.setupDB();

    return SqliteStore.createTable(_:)(&type metadata for GroupStateModel, &protocol witness table for GroupStateModel);
  }
}

{
  v2 = *v1;
  v2[17] = v0;

  if (v0)
  {
    v3 = v2[5];
    v4 = v2[6];

    return MEMORY[0x2822009F8](DaemonPersister.setupDB(), v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[18] = v5;
    *v5 = v2;
    v5[1] = DaemonPersister.setupDB();

    return SqliteStore.createTable(_:)(&type metadata for EpochModel, &protocol witness table for EpochModel);
  }
}

{
  v2 = *v1;
  v2[19] = v0;

  if (v0)
  {
    v3 = v2[5];
    v4 = v2[6];

    return MEMORY[0x2822009F8](DaemonPersister.setupDB(), v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[20] = v5;
    *v5 = v2;
    v5[1] = DaemonPersister.setupDB();

    return SqliteStore.createTable(_:)(&type metadata for GroupMemberModel, &protocol witness table for GroupMemberModel);
  }
}

{
  v2 = *v1;
  v2[21] = v0;

  if (v0)
  {
    v3 = v2[5];
    v4 = v2[6];

    return MEMORY[0x2822009F8](DaemonPersister.setupDB(), v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[22] = v5;
    *v5 = v2;
    v5[1] = DaemonPersister.setupDB();

    return SqliteStore.createTable(_:)(&type metadata for SecureMessagingGroupModel, &protocol witness table for SecureMessagingGroupModel);
  }
}

{
  v2 = *v1;
  v2[23] = v0;

  if (v0)
  {
    v3 = v2[5];
    v4 = v2[6];

    return MEMORY[0x2822009F8](DaemonPersister.setupDB(), v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[24] = v5;
    *v5 = v2;
    v5[1] = DaemonPersister.setupDB();

    return SqliteStore.createTable(_:)(&type metadata for KeyPackageModel, &protocol witness table for KeyPackageModel);
  }
}

{
  v2 = *v1;
  v2[25] = v0;

  if (v0)
  {
    v3 = v2[5];
    v4 = v2[6];

    return MEMORY[0x2822009F8](DaemonPersister.setupDB(), v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[26] = v5;
    *v5 = v2;
    v5[1] = DaemonPersister.setupDB();

    return SqliteStore.createTable(_:)(&type metadata for FailureToDecryptRetryModel, &protocol witness table for FailureToDecryptRetryModel);
  }
}

{
  v2 = *v1;
  v2[27] = v0;

  if (v0)
  {
    v3 = v2[5];
    v4 = v2[6];

    return MEMORY[0x2822009F8](DaemonPersister.setupDB(), v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[28] = v5;
    *v5 = v2;
    v5[1] = DaemonPersister.setupDB();

    return SqliteStore.createTable(_:)(&type metadata for IncomingEventModel, &protocol witness table for IncomingEventModel);
  }
}

{
  v2 = *v1;
  v2[29] = v0;

  if (v0)
  {
    v3 = v2[5];
    v4 = v2[6];

    return MEMORY[0x2822009F8](DaemonPersister.setupDB(), v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[30] = v5;
    *v5 = v2;
    v5[1] = DaemonPersister.setupDB();

    return SqliteStore.createTable(_:)(&type metadata for OutgoingEventModel, &protocol witness table for OutgoingEventModel);
  }
}

{
  v2 = *v1;
  v2[31] = v0;

  if (v0)
  {
    v3 = v2[5];
    v4 = v2[6];

    return MEMORY[0x2822009F8](DaemonPersister.setupDB(), v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[32] = v5;
    *v5 = v2;
    v5[1] = DaemonPersister.setupDB();

    return SqliteStore.createTable(_:)(&type metadata for KeyUpdateModel, &protocol witness table for KeyUpdateModel);
  }
}

{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = DaemonPersister.setupDB();
  }

  else
  {
    v5 = DaemonPersister.setupDB();
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
    _os_log_impl(&dword_26524C000, v1, v2, "DaemonPersister finished setting up DB.", v3, 2u);
    MEMORY[0x2667577B0](v3, -1, -1);
  }

  v4 = *(v0 + 8);

  return v4();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DaemonPersister.closeDB()()
{
  v1[2] = v0;
  type metadata accessor for MLSActor();
  v1[3] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](DaemonPersister.closeDB(), v3, v2);
}

{
  if ((*(**(v0 + 16) + 264))())
  {
    *(v0 + 48) = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_logger;
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_26524C000, v1, v2, "DaemonPersister closing DB.", v3, 2u);
      MEMORY[0x2667577B0](v3, -1, -1);
    }

    v4 = swift_task_alloc();
    *(v0 + 56) = v4;
    *v4 = v0;
    v4[1] = DaemonPersister.closeDB();

    return SqliteStore.close()();
  }

  else
  {

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_26524C000, v6, v7, "DaemonPersister feature flag off. Not closing DB.", v8, 2u);
      MEMORY[0x2667577B0](v8, -1, -1);
    }

    v9 = *(v0 + 8);

    return v9();
  }
}

{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = DaemonPersister.closeDB();
  }

  else
  {
    v5 = DaemonPersister.closeDB();
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
    _os_log_impl(&dword_26524C000, v1, v2, "DaemonPersister finished closing DB.", v3, 2u);
    MEMORY[0x2667577B0](v3, -1, -1);
  }

  v4 = *(v0 + 8);

  return v4();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DaemonPersister.deleteDB()()
{
  *(v1 + 24) = v0;
  type metadata accessor for MLSActor();
  *(v1 + 32) = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](DaemonPersister.deleteDB(), v3, v2);
}

{
  v1 = v0[3];

  v3 = (*(*v1 + 264))(v2);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  if ((v3 & 1) == 0)
  {
    if (v6)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "DaemonPersister feature flag off. Not deleting DB.";
      goto LABEL_9;
    }

LABEL_10:

    v25 = v0[1];
    goto LABEL_12;
  }

  if (v6)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26524C000, v4, v5, "DaemonPersister deleting DB.", v7, 2u);
    MEMORY[0x2667577B0](v7, -1, -1);
  }

  v8 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_265343880;
  v11 = *(v8 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_fileDir);
  v10 = *(v8 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_fileDir + 8);
  v12 = MEMORY[0x277D837D0];
  *(v9 + 56) = MEMORY[0x277D837D0];
  v13 = lazy protocol witness table accessor for type String and conformance String();
  *(v9 + 64) = v13;
  *(v9 + 32) = v11;
  *(v9 + 40) = v10;
  v14 = *(v8 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_dbFileName);
  v15 = *(v8 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_dbFileName + 8);
  *(v9 + 96) = v12;
  *(v9 + 104) = v13;
  *(v9 + 72) = v14;
  *(v9 + 80) = v15;

  v16 = String.init(format:_:)();
  v18 = v17;
  v19 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v20 = MEMORY[0x266756A10](v16, v18);

  v0[2] = 0;
  LODWORD(v18) = [v19 removeItemAtPath:v20 error:v0 + 2];

  v21 = v0[2];
  if (v18)
  {
    v22 = v21;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "DaemonPersister finished deleting DB.";
LABEL_9:
      _os_log_impl(&dword_26524C000, v4, v5, v24, v23, 2u);
      MEMORY[0x2667577B0](v23, -1, -1);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v26 = v21;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v25 = v0[1];
LABEL_12:

  return v25();
}

uint64_t DaemonPersister.atomically<A>(with:do:rollback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = a8;
  v9[10] = v8;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  type metadata accessor for MLSActor();
  v9[11] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v9[12] = v11;
  v9[13] = v10;

  return MEMORY[0x2822009F8](DaemonPersister.atomically<A>(with:do:rollback:), v11, v10);
}

uint64_t DaemonPersister.atomically<A>(with:do:rollback:)()
{
  v26 = v0;
  v1 = (*(**(v0 + 80) + 264))();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  if (v1)
  {
    if (v4)
    {
      v6 = *(v0 + 24);
      v5 = *(v0 + 32);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v25 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v25);
      _os_log_impl(&dword_26524C000, v2, v3, "DaemonPersister atomically using persistence mode { transactionID: %s }", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x2667577B0](v8, -1, -1);
      MEMORY[0x2667577B0](v7, -1, -1);
    }

    *(v0 + 112) = (*(**(v0 + 80) + 240))();
    v24 = (*MEMORY[0x277D4CD98] + MEMORY[0x277D4CD98]);
    v9 = swift_task_alloc();
    *(v0 + 120) = v9;
    *v9 = v0;
    v10 = DaemonPersister.atomically<A>(with:do:rollback:);
  }

  else
  {
    if (v4)
    {
      v12 = *(v0 + 24);
      v11 = *(v0 + 32);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25 = v14;
      *v13 = 136315138;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v25);
      _os_log_impl(&dword_26524C000, v2, v3, "DaemonPersister atomically using inMemory mode { transactionID: %s }", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x2667577B0](v14, -1, -1);
      MEMORY[0x2667577B0](v13, -1, -1);
    }

    *(v0 + 136) = (*(**(v0 + 80) + 168))();
    v24 = (*MEMORY[0x277D4CDE8] + MEMORY[0x277D4CDE8]);
    v9 = swift_task_alloc();
    *(v0 + 144) = v9;
    *v9 = v0;
    v10 = DaemonPersister.atomically<A>(with:do:rollback:);
  }

  v9[1] = v10;
  v15 = *(v0 + 64);
  v16 = *(v0 + 72);
  v17 = *(v0 + 48);
  v18 = *(v0 + 56);
  v19 = *(v0 + 32);
  v20 = *(v0 + 40);
  v21 = *(v0 + 16);
  v22 = *(v0 + 24);

  return v24(v21, v22, v19, v20, v17, v18, v15, v16);
}

{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = DaemonPersister.atomically<A>(with:do:rollback:);
  }

  else
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = DaemonPersister.atomically<A>(with:do:rollback:);
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = DaemonPersister.atomically<A>(with:do:rollback:);
  }

  else
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = DaemonPersister.atomically<A>(with:do:rollback:);
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

uint64_t DaemonPersister.save(swiftMLSClientID:forIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = type metadata accessor for MLS.UniqueClientIdentifier();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v3[20] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[21] = v7;
  v3[22] = v6;

  return MEMORY[0x2822009F8](DaemonPersister.save(swiftMLSClientID:forIdentifier:), v7, v6);
}

uint64_t DaemonPersister.save(swiftMLSClientID:forIdentifier:)()
{
  v103 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  v3 = (*(**(v0 + 72) + 264))();
  v4 = *(v1 + 16);
  v5 = (v2 + 16);
  v6 = *(v0 + 120);
  v7 = *(v0 + 80);
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  if (v3)
  {
    v10 = *(v0 + 112);
    v91 = *(v1 + 16);
    v4(*(v0 + 152), v8, v6);
    v90 = *v5;
    (*v5)(v10, v9, v7);
    v11 = Logger.logObject.getter();
    v88 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v11, v88);
    v13 = *(v0 + 152);
    v15 = *(v0 + 120);
    v14 = *(v0 + 128);
    v16 = *(v0 + 88);
    v95 = *(v0 + 80);
    v98 = *(v0 + 112);
    if (v12)
    {
      v17 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v102[0] = v87;
      *v17 = 136315394;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      log = v11;
      v20 = v19;
      v89 = *(v14 + 8);
      v89(v13, v15);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v102);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      v25 = *(v16 + 8);
      v25(v98, v95);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v102);

      *(v17 + 14) = v26;
      _os_log_impl(&dword_26524C000, log, v88, "DaemonPersister saveSwiftMLSClientID using persistence mode { swiftMLSClientID: %s, identifier: %s }", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v87, -1, -1);
      MEMORY[0x2667577B0](v17, -1, -1);
    }

    else
    {

      v25 = *(v16 + 8);
      v25(v98, v95);
      v89 = *(v14 + 8);
      v27 = (v89)(v13, v15);
    }

    if ((*(**(v0 + 72) + 192))(v27))
    {
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D008]);
      v49 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      *(v0 + 184) = v49;
      *(v0 + 192) = v50;
      v79 = v49;
      v80 = v50;
      outlined copy of Data._Representation(v49, v50);
      v81 = UUID.uuidString.getter();
      v83 = v82;
      *(v0 + 200) = v82;
      *(v0 + 40) = &type metadata for SecureMessagingClientModel;
      *(v0 + 48) = &protocol witness table for SecureMessagingClientModel;
      v84 = swift_allocObject();
      *(v0 + 16) = v84;
      v84[2] = v79;
      v84[3] = v80;
      v84[4] = v81;
      v84[5] = v83;
      outlined copy of Data._Representation(v79, v80);

      v85 = swift_task_alloc();
      *(v0 + 208) = v85;
      *v85 = v0;
      v85[1] = DaemonPersister.save(swiftMLSClientID:forIdentifier:);

      return SqliteStore.insert(_:)(v0 + 16);
    }

    else
    {
      v101 = v25;
      v55 = *(v0 + 144);
      v56 = *(v0 + 120);
      v57 = *(v0 + 104);
      v58 = *(v0 + 80);
      v60 = *(v0 + 56);
      v59 = *(v0 + 64);

      v91(v55, v60, v56);
      v90(v57, v59, v58);
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.fault.getter();
      v63 = os_log_type_enabled(v61, v62);
      v64 = *(v0 + 144);
      v65 = *(v0 + 120);
      v66 = *(v0 + 104);
      v67 = *(v0 + 80);
      if (v63)
      {
        v94 = v62;
        v68 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v102[0] = v97;
        *v68 = 136315394;
        _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v69 = dispatch thunk of CustomStringConvertible.description.getter();
        v71 = v70;
        v89(v64, v65);
        v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v71, v102);

        *(v68 + 4) = v72;
        *(v68 + 12) = 2080;
        _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
        v73 = dispatch thunk of CustomStringConvertible.description.getter();
        v75 = v74;
        v101(v66, v67);
        v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, v102);

        *(v68 + 14) = v76;
        _os_log_impl(&dword_26524C000, v61, v94, "DaemonPersister saveSwiftMLSClientID called outside atomically block { swiftMLSClientID: %s, identifier: %s }", v68, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2667577B0](v97, -1, -1);
        MEMORY[0x2667577B0](v68, -1, -1);
      }

      else
      {

        v101(v66, v67);
        v89(v64, v65);
      }

      lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
      swift_allocError();
      *v77 = 6;
      *(v77 + 8) = 0;
      *(v77 + 16) = 0;
      swift_willThrow();

      v78 = *(v0 + 8);

      return v78();
    }
  }

  else
  {
    v28 = *(v0 + 96);
    v4(*(v0 + 136), v8, v6);
    (*v5)(v28, v9, v7);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    v31 = os_log_type_enabled(v29, v30);
    v33 = *(v0 + 128);
    v32 = *(v0 + 136);
    v34 = *(v0 + 120);
    v35 = *(v0 + 88);
    v36 = *(v0 + 96);
    v37 = *(v0 + 80);
    if (v31)
    {
      v96 = v30;
      v38 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v102[0] = v99;
      *v38 = 136315394;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v92 = v37;
      v93 = v29;
      v39 = v36;
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      (*(v33 + 8))(v32, v34);
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, v102);

      *(v38 + 4) = v43;
      *(v38 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      (*(v35 + 8))(v39, v92);
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, v102);

      *(v38 + 14) = v47;
      _os_log_impl(&dword_26524C000, v93, v96, "DaemonPersister saveSwiftMLSClientID using inMemory mode { swiftMLSClientID: %s, identifier: %s }", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v99, -1, -1);
      MEMORY[0x2667577B0](v38, -1, -1);
    }

    else
    {

      (*(v35 + 8))(v36, v37);
      v48 = (*(v33 + 8))(v32, v34);
    }

    *(v0 + 224) = (*(**(v0 + 72) + 168))(v48);
    v100 = (*MEMORY[0x277D4CE80] + MEMORY[0x277D4CE80]);
    v51 = swift_task_alloc();
    *(v0 + 232) = v51;
    *v51 = v0;
    v51[1] = DaemonPersister.save(swiftMLSClientID:forIdentifier:);
    v53 = *(v0 + 56);
    v52 = *(v0 + 64);

    return v100(v53, v52);
  }
}

{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    outlined consume of Data._Representation(v2[23], v2[24]);
    v3 = v2[21];
    v4 = v2[22];
    v5 = DaemonPersister.save(swiftMLSClientID:forIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 2);
    v3 = v2[21];
    v4 = v2[22];
    v5 = DaemonPersister.save(swiftMLSClientID:forIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{
  v1 = v0[24];
  v2 = v0[23];

  outlined consume of Data._Representation(v2, v1);

  outlined consume of Data._Representation(v2, v1);

  v3 = v0[1];

  return v3();
}

{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = *(v2 + 168);
    v4 = *(v2 + 176);
    v5 = DaemonPersister.save(swiftMLSClientID:forIdentifier:);
  }

  else
  {

    v3 = *(v2 + 168);
    v4 = *(v2 + 176);
    v5 = DaemonPersister.save(swiftMLSClientID:forIdentifier:);
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

{
  outlined consume of Data._Representation(v0[23], v0[24]);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t DaemonPersister.loadSwiftMLSClientID(identifier:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = type metadata accessor for MLS.UniqueClientIdentifier();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v3[15] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[16] = v6;
  v3[17] = v5;

  return MEMORY[0x2822009F8](DaemonPersister.loadSwiftMLSClientID(identifier:), v6, v5);
}

uint64_t DaemonPersister.loadSwiftMLSClientID(identifier:)()
{
  v43 = v0;
  v1 = *(v0 + 96);
  v2 = (*(**(v0 + 80) + 264))();
  v3 = *(v1 + 16);
  v4 = *(v0 + 88);
  v5 = *(v0 + 72);
  if (v2)
  {
    v3(*(v0 + 112), v5, v4);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 112);
    v10 = *(v0 + 88);
    v11 = *(v0 + 96);
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v42[0] = v13;
      *v12 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      (*(v11 + 8))(v9, v10);
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, v42);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_26524C000, v6, v7, "DaemonPersister loadSwiftMLSClientID using persistence mode { identifier: %s }", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x2667577B0](v13, -1, -1);
      MEMORY[0x2667577B0](v12, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v9, v10);
    }

    _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D008]);
    v30 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    *(v0 + 144) = v30;
    *(v0 + 152) = v31;
    v36 = v30;
    v37 = v31;
    outlined copy of Data._Representation(v30, v31);
    v38 = swift_task_alloc();
    *(v0 + 160) = v38;
    *v38 = v0;
    v38[1] = DaemonPersister.loadSwiftMLSClientID(identifier:);
    v33 = v36;
    v34 = v37;
    v35 = specialized SqliteStore.query<A>(_:);
  }

  else
  {
    v3(*(v0 + 104), v5, v4);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v22 = *(v0 + 96);
    v21 = *(v0 + 104);
    v23 = *(v0 + 88);
    if (v20)
    {
      v24 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v42[0] = v40;
      *v24 = 136315138;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v22 + 8))(v21, v23);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v42);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_26524C000, v18, v19, "DaemonPersister loadSwiftMLSClientID using inMemory mode { identifier: %s }", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x2667577B0](v40, -1, -1);
      MEMORY[0x2667577B0](v24, -1, -1);
    }

    else
    {

      v29 = (*(v22 + 8))(v21, v23);
    }

    *(v0 + 184) = (*(**(v0 + 80) + 168))(v29);
    v41 = (*MEMORY[0x277D4CE38] + MEMORY[0x277D4CE38]);
    v32 = swift_task_alloc();
    *(v0 + 192) = v32;
    *v32 = v0;
    v32[1] = DaemonPersister.loadSwiftMLSClientID(identifier:);
    v33 = *(v0 + 64);
    v34 = *(v0 + 72);
    v35 = v41;
  }

  return v35(v33, v34);
}

{
  v1 = *(v0 + 168);

  if (*(v1 + 16))
  {
    v2 = *(v0 + 168);
    v3 = *(v0 + 176);
    v4 = v2[4];
    v5 = v2[5];
    v7 = v2[6];
    v6 = v2[7];
    outlined copy of Data._Representation(v4, v5);
    swift_bridgeObjectRetain_n();

    outlined consume of Data._Representation(v4, v5);

    v8 = swift_task_alloc();
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    *(v0 + 16) = 4;
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    _s15SecureMessaging7rethrow_2as3logq_q_yKXK_xySScSgtxYKAA14VersatileErrorRzr0_lF();
    v9 = *(v0 + 144);
    v10 = *(v0 + 152);
    if (v3)
    {

      v11 = *(v0 + 40);
      v12 = *(v0 + 48);
      v13 = *(v0 + 56);
      lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
      swift_allocError();
      *v14 = v11;
      *(v14 + 8) = v12;
      *(v14 + 16) = v13;
      outlined consume of Data._Representation(v9, v10);

      v15 = *(v0 + 8);
      goto LABEL_7;
    }

    outlined consume of Data._Representation(*(v0 + 144), *(v0 + 152));
  }

  else
  {
    v16 = *(v0 + 144);
    v17 = *(v0 + 152);
    v18 = *(v0 + 64);

    outlined consume of Data._Representation(v16, v17);
    v19 = type metadata accessor for UUID();
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  }

  v15 = *(v0 + 8);
LABEL_7:

  return v15();
}

{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = DaemonPersister.loadSwiftMLSClientID(identifier:);
  }

  else
  {

    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = DaemonPersister.loadSwiftMLSClientID(identifier:);
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

{
  outlined consume of Data._Representation(v0[18], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t DaemonPersister.loadSwiftMLSClientID(identifier:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[21] = a1;
  v4[22] = v1;

  outlined consume of Data._Representation(v3[18], v3[19]);
  v5 = v3[17];
  v6 = v3[16];
  if (v1)
  {
    v7 = DaemonPersister.loadSwiftMLSClientID(identifier:);
  }

  else
  {
    v7 = DaemonPersister.loadSwiftMLSClientID(identifier:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t DaemonPersister.save(swiftMLSGroupID:forIdentifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[27] = a5;
  v6[28] = v5;
  v6[25] = a3;
  v6[26] = a4;
  v6[23] = a1;
  v6[24] = a2;
  type metadata accessor for MLSActor();
  v6[29] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[30] = v8;
  v6[31] = v7;

  return MEMORY[0x2822009F8](DaemonPersister.save(swiftMLSGroupID:forIdentifier:clientIdentifier:), v8, v7);
}

uint64_t DaemonPersister.save(swiftMLSGroupID:forIdentifier:clientIdentifier:)()
{
  v59 = v0;
  if ((*(**(v0 + 224) + 264))())
  {
    type metadata accessor for MLS.UniqueClientIdentifier();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D008]);
    v1 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    *(v0 + 256) = v1;
    *(v0 + 264) = v2;
    v55 = v1;
    v57 = v2;
    v22 = *(v0 + 184);
    v21 = *(v0 + 192);

    outlined copy of Data._Representation(v22, v21);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    outlined consume of Data._Representation(v22, v21);
    if (os_log_type_enabled(v23, v24))
    {
      v27 = *(v0 + 200);
      v26 = *(v0 + 208);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v58[0] = v29;
      *v28 = 136315394;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v26, v58);
      *(v28 + 12) = 2080;
      v30 = Data.readableDebugDescription.getter();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v58);

      *(v28 + 14) = v32;
      _os_log_impl(&dword_26524C000, v23, v24, "DaemonPersister saveSwiftMLSGroupID using persistence mode { identifier: %s, swiftMLSGroupID: %s }", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v29, -1, -1);
      MEMORY[0x2667577B0](v28, -1, -1);
    }

    if ((*(**(v0 + 224) + 192))())
    {
      v33 = *(v0 + 200);
      v34 = *(v0 + 208);
      v36 = *(v0 + 184);
      v35 = *(v0 + 192);
      *(v0 + 16) = v55;
      *(v0 + 24) = v57;
      *(v0 + 32) = v33;
      *(v0 + 40) = v34;
      *(v0 + 48) = v36;
      *(v0 + 56) = v35;
      *(v0 + 64) = xmmword_2653419D0;
      *(v0 + 168) = &type metadata for SecureMessagingGroupModel;
      *(v0 + 176) = &protocol witness table for SecureMessagingGroupModel;
      v37 = swift_allocObject();
      *(v0 + 144) = v37;
      v38 = *(v0 + 32);
      v39 = *(v0 + 48);
      v37[1] = *(v0 + 16);
      v37[2] = v38;
      v40 = *(v0 + 64);
      v37[3] = v39;
      v37[4] = v40;

      outlined copy of Data._Representation(v36, v35);
      outlined copy of Data._Representation(v55, v57);
      outlined init with copy of SecureMessagingGroupModel(v0 + 16, v0 + 80);
      v41 = swift_task_alloc();
      *(v0 + 272) = v41;
      *v41 = v0;
      v41[1] = DaemonPersister.save(swiftMLSGroupID:forIdentifier:clientIdentifier:);

      return SqliteStore.insert(_:)(v0 + 144);
    }

    else
    {
      v43 = *(v0 + 184);
      v42 = *(v0 + 192);

      outlined copy of Data._Representation(v43, v42);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.fault.getter();

      outlined consume of Data._Representation(v43, v42);
      if (os_log_type_enabled(v44, v45))
      {
        v47 = *(v0 + 200);
        v46 = *(v0 + 208);
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v58[0] = v49;
        *v48 = 136315394;
        *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v46, v58);
        *(v48 + 12) = 2080;
        v50 = Data.readableDebugDescription.getter();
        v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, v58);

        *(v48 + 14) = v52;
        _os_log_impl(&dword_26524C000, v44, v45, "DaemonPersister saveSwiftMLSGroupID called outside atomically block { identifier: %s, swiftMLSGroupID: %s }", v48, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2667577B0](v49, -1, -1);
        MEMORY[0x2667577B0](v48, -1, -1);
      }

      lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
      swift_allocError();
      *v53 = 6;
      *(v53 + 8) = 0;
      *(v53 + 16) = 0;
      swift_willThrow();
      outlined consume of Data._Representation(v55, v57);
      v54 = *(v0 + 8);

      return v54();
    }
  }

  else
  {
    v4 = *(v0 + 184);
    v3 = *(v0 + 192);

    outlined copy of Data._Representation(v4, v3);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    outlined consume of Data._Representation(v4, v3);
    if (os_log_type_enabled(v5, v6))
    {
      v8 = *(v0 + 200);
      v7 = *(v0 + 208);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v58[0] = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, v58);
      *(v9 + 12) = 2080;
      v11 = Data.readableDebugDescription.getter();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v58);

      *(v9 + 14) = v13;
      _os_log_impl(&dword_26524C000, v5, v6, "DaemonPersister saveSwiftMLSGroupID using inMemory mode { identifier: %s, swiftMLSGroupID: %s }", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v10, -1, -1);
      MEMORY[0x2667577B0](v9, -1, -1);
    }

    *(v0 + 288) = (*(**(v0 + 224) + 168))();
    v56 = (*MEMORY[0x277D4CE78] + MEMORY[0x277D4CE78]);
    v14 = swift_task_alloc();
    *(v0 + 296) = v14;
    *v14 = v0;
    v14[1] = DaemonPersister.save(swiftMLSGroupID:forIdentifier:clientIdentifier:);
    v15 = *(v0 + 208);
    v16 = *(v0 + 216);
    v17 = *(v0 + 192);
    v18 = *(v0 + 200);
    v19 = *(v0 + 184);

    return v56(v19, v17, v18, v15, v16);
  }
}

{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    outlined consume of Data._Representation(v2[32], v2[33]);
    v3 = v2[30];
    v4 = v2[31];
    v5 = DaemonPersister.save(swiftMLSGroupID:forIdentifier:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 18);
    v3 = v2[30];
    v4 = v2[31];
    v5 = DaemonPersister.save(swiftMLSGroupID:forIdentifier:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{
  v1 = v0[32];
  v2 = v0[33];

  outlined destroy of SecureMessagingGroupModel((v0 + 2));
  outlined consume of Data._Representation(v1, v2);
  v3 = v0[1];

  return v3();
}

{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = *(v2 + 240);
    v4 = *(v2 + 248);
    v5 = DaemonPersister.save(groupClientContextBlob:forIdentifier:clientIdentifier:);
  }

  else
  {

    v3 = *(v2 + 240);
    v4 = *(v2 + 248);
    v5 = DaemonPersister.save(groupClientContextBlob:forIdentifier:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{
  outlined destroy of SecureMessagingGroupModel(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t DaemonPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MLSActor();
  v4[6] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](DaemonPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:), v6, v5);
}

uint64_t DaemonPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:)()
{
  v28 = v0;
  if ((*(**(v0 + 40) + 264))())
  {
    type metadata accessor for MLS.UniqueClientIdentifier();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D008]);
    v1 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    *(v0 + 72) = v1;
    *(v0 + 80) = v2;
    v14 = v2;
    v15 = v1;

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v20 = *(v0 + 16);
      v19 = *(v0 + 24);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, v27);
      _os_log_impl(&dword_26524C000, v16, v17, "DaemonPersister loadSwiftMLSGroupID using persistence mode { identifier: %s }", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x2667577B0](v22, -1, -1);
      MEMORY[0x2667577B0](v21, -1, -1);
    }

    v23 = swift_task_alloc();
    *(v0 + 88) = v23;
    *v23 = v0;
    v23[1] = DaemonPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:);
    v24 = *(v0 + 16);
    v25 = *(v0 + 24);

    return specialized SqliteStore.query<A>(_:)(v15, v14, v24, v25);
  }

  else
  {

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = *(v0 + 16);
      v5 = *(v0 + 24);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v27[0] = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, v27);
      _os_log_impl(&dword_26524C000, v3, v4, "DaemonPersister loadSwiftMLSGroupID using inMemory mode { identifier: %s }", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x2667577B0](v8, -1, -1);
      MEMORY[0x2667577B0](v7, -1, -1);
    }

    *(v0 + 112) = (*(**(v0 + 40) + 168))();
    v26 = (*MEMORY[0x277D4CE28] + MEMORY[0x277D4CE28]);
    v9 = swift_task_alloc();
    *(v0 + 120) = v9;
    *v9 = v0;
    v9[1] = DaemonPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:);
    v10 = *(v0 + 24);
    v11 = *(v0 + 32);
    v12 = *(v0 + 16);

    return v26(v12, v10, v11);
  }
}

{
  v1 = v0[12];

  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  if (*(v1 + 16))
  {
    v11 = v2[5];
    v12 = v2[4];
    v5 = v2[8];
    v6 = v2[9];
    v7 = v2[10];
    v8 = v2[11];
    outlined copy of Data._Representation(v12, v11);

    outlined copy of Data?(v5, v6);
    outlined copy of Data?(v7, v8);
    outlined consume of Data._Representation(v4, v3);

    outlined copy of Data?(v5, v6);
    outlined consume of Data._Representation(v12, v11);

    outlined consume of Data?(v5, v6);
    outlined consume of Data?(v7, v8);
  }

  else
  {
    outlined consume of Data._Representation(v0[9], v0[10]);

    v5 = 0;
    v6 = 0xF000000000000000;
  }

  v9 = v0[1];

  return v9(v5, v6);
}

{
  v1 = v0[9];
  v2 = v0[10];

  outlined consume of Data._Representation(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t DaemonPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 96) = a1;
  *(v4 + 104) = v1;

  v5 = *(v3 + 64);
  v6 = *(v3 + 56);
  if (v1)
  {
    v7 = DaemonPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:);
  }

  else
  {
    v7 = DaemonPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t DaemonPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 128) = v2;

  if (v2)
  {
    v7 = v6[7];
    v8 = v6[8];
    v9 = DaemonPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:);
  }

  else
  {

    v6[17] = a2;
    v6[18] = a1;
    v7 = v6[7];
    v8 = v6[8];
    v9 = DaemonPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t DaemonPersister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MLSActor();
  v4[6] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](DaemonPersister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:), v6, v5);
}

uint64_t DaemonPersister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:)()
{
  v34 = v0;
  if ((*(**(v0 + 40) + 264))())
  {
    type metadata accessor for MLS.UniqueClientIdentifier();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D008]);
    v1 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    *(v0 + 72) = v1;
    *(v0 + 80) = v2;
    v17 = v2;
    v18 = v1;
    v20 = *(v0 + 16);
    v19 = *(v0 + 24);
    outlined copy of Data._Representation(v20, v19);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    outlined consume of Data._Representation(v20, v19);
    if (os_log_type_enabled(v21, v22))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v33[0] = v25;
      *v24 = 136315138;
      v26 = Data.description.getter();
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v33);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_26524C000, v21, v22, "DaemonPersister loadSecureMessagingGroupID using persistence mode { swiftMLSGroupID: %s }", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x2667577B0](v25, -1, -1);
      MEMORY[0x2667577B0](v24, -1, -1);
    }

    outlined copy of Data._Representation(*(v0 + 16), *(v0 + 24));
    v29 = swift_task_alloc();
    *(v0 + 88) = v29;
    *v29 = v0;
    v29[1] = DaemonPersister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:);
    v30 = *(v0 + 16);
    v31 = *(v0 + 24);

    return specialized SqliteStore.query<A>(_:)(v18, v17, v30, v31);
  }

  else
  {
    v4 = *(v0 + 16);
    v3 = *(v0 + 24);
    outlined copy of Data._Representation(v4, v3);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    outlined consume of Data._Representation(v4, v3);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v33[0] = v8;
      *v7 = 136315138;
      v9 = Data.description.getter();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v33);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_26524C000, v5, v6, "DaemonPersister loadSecureMessagingGroupID using inMemory mode { swiftMLSGroupID: %s }", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x2667577B0](v8, -1, -1);
      MEMORY[0x2667577B0](v7, -1, -1);
    }

    *(v0 + 112) = (*(**(v0 + 40) + 168))();
    v32 = (*MEMORY[0x277D4CDD8] + MEMORY[0x277D4CDD8]);
    v12 = swift_task_alloc();
    *(v0 + 120) = v12;
    *v12 = v0;
    v12[1] = DaemonPersister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:);
    v13 = *(v0 + 24);
    v14 = *(v0 + 32);
    v15 = *(v0 + 16);

    return v32(v15, v13, v14);
  }
}

{
  v1 = v0[12];

  v2 = *(v1 + 16);
  v3 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v7 = v0[2];
  v6 = v0[3];
  if (v2)
  {
    v17 = v3[5];
    v18 = v3[4];
    v8 = v3[7];
    v19 = v3[6];
    v10 = v3[8];
    v9 = v3[9];
    v16 = v0[3];
    v11 = v3[10];
    v12 = v3[11];
    outlined copy of Data._Representation(v18, v17);

    outlined copy of Data?(v10, v9);
    outlined copy of Data?(v11, v12);
    outlined consume of Data._Representation(v5, v4);
    outlined consume of Data._Representation(v7, v16);

    outlined consume of Data._Representation(v18, v17);

    outlined consume of Data?(v10, v9);
    outlined consume of Data?(v11, v12);
    v13 = v19;
  }

  else
  {
    outlined consume of Data._Representation(v0[9], v0[10]);
    outlined consume of Data._Representation(v7, v6);

    v13 = 0;
    v8 = 0;
  }

  v14 = v0[1];

  return v14(v13, v8);
}

{

  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[1];

  return v3(v1, v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[2];
  v3 = v0[3];

  outlined consume of Data._Representation(v1, v2);
  outlined consume of Data._Representation(v4, v3);
  v5 = v0[1];

  return v5();
}

uint64_t DaemonPersister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 96) = a1;
  *(v4 + 104) = v1;

  v5 = *(v3 + 64);
  v6 = *(v3 + 56);
  if (v1)
  {
    v7 = DaemonPersister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:);
  }

  else
  {
    v7 = DaemonPersister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t DaemonPersister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 128) = v2;

  if (v2)
  {
    v7 = v6[7];
    v8 = v6[8];
    v9 = DaemonPersister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:);
  }

  else
  {

    v6[17] = a2;
    v6[18] = a1;
    v7 = v6[7];
    v8 = v6[8];
    v9 = DaemonPersister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t DaemonPersister.save(groupClientContextBlob:forIdentifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[27] = a5;
  v6[28] = v5;
  v6[25] = a3;
  v6[26] = a4;
  v6[23] = a1;
  v6[24] = a2;
  type metadata accessor for MLSActor();
  v6[29] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[30] = v8;
  v6[31] = v7;

  return MEMORY[0x2822009F8](DaemonPersister.save(groupClientContextBlob:forIdentifier:clientIdentifier:), v8, v7);
}

uint64_t DaemonPersister.save(groupClientContextBlob:forIdentifier:clientIdentifier:)()
{
  v59 = v0;
  if ((*(**(v0 + 224) + 264))())
  {
    type metadata accessor for MLS.UniqueClientIdentifier();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D008]);
    v1 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    *(v0 + 256) = v1;
    *(v0 + 264) = v2;
    v55 = v1;
    v57 = v2;
    v22 = *(v0 + 184);
    v21 = *(v0 + 192);

    outlined copy of Data._Representation(v22, v21);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    outlined consume of Data._Representation(v22, v21);
    if (os_log_type_enabled(v23, v24))
    {
      v27 = *(v0 + 200);
      v26 = *(v0 + 208);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v58[0] = v29;
      *v28 = 136315394;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v26, v58);
      *(v28 + 12) = 2080;
      v30 = Data.readableDescription.getter();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v58);

      *(v28 + 14) = v32;
      _os_log_impl(&dword_26524C000, v23, v24, "DaemonPersister saveGroupClientContextBlob using persistence mode { identifier: %s, groupClientContextBlob: %s }", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v29, -1, -1);
      MEMORY[0x2667577B0](v28, -1, -1);
    }

    if ((*(**(v0 + 224) + 192))())
    {
      v33 = *(v0 + 200);
      v34 = *(v0 + 208);
      v36 = *(v0 + 184);
      v35 = *(v0 + 192);
      *(v0 + 16) = v55;
      *(v0 + 24) = v57;
      *(v0 + 32) = v33;
      *(v0 + 40) = v34;
      *(v0 + 48) = xmmword_2653419D0;
      *(v0 + 64) = v36;
      *(v0 + 72) = v35;
      *(v0 + 168) = &type metadata for SecureMessagingGroupModel;
      *(v0 + 176) = &protocol witness table for SecureMessagingGroupModel;
      v37 = swift_allocObject();
      *(v0 + 144) = v37;
      v38 = *(v0 + 32);
      v39 = *(v0 + 48);
      v37[1] = *(v0 + 16);
      v37[2] = v38;
      v40 = *(v0 + 64);
      v37[3] = v39;
      v37[4] = v40;

      outlined copy of Data._Representation(v36, v35);
      outlined copy of Data._Representation(v55, v57);
      outlined init with copy of SecureMessagingGroupModel(v0 + 16, v0 + 80);
      v41 = swift_task_alloc();
      *(v0 + 272) = v41;
      *v41 = v0;
      v41[1] = DaemonPersister.save(groupClientContextBlob:forIdentifier:clientIdentifier:);

      return SqliteStore.update(_:)(v0 + 144);
    }

    else
    {
      v43 = *(v0 + 184);
      v42 = *(v0 + 192);

      outlined copy of Data._Representation(v43, v42);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.fault.getter();

      outlined consume of Data._Representation(v43, v42);
      if (os_log_type_enabled(v44, v45))
      {
        v47 = *(v0 + 200);
        v46 = *(v0 + 208);
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v58[0] = v49;
        *v48 = 136315394;
        *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v46, v58);
        *(v48 + 12) = 2080;
        v50 = Data.readableDescription.getter();
        v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, v58);

        *(v48 + 14) = v52;
        _os_log_impl(&dword_26524C000, v44, v45, "DaemonPersister saveGroupClientContextBlob called outside atomically block { identifier: %s, groupClientContextBlob: %s }", v48, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2667577B0](v49, -1, -1);
        MEMORY[0x2667577B0](v48, -1, -1);
      }

      lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
      swift_allocError();
      *v53 = 6;
      *(v53 + 8) = 0;
      *(v53 + 16) = 0;
      swift_willThrow();
      outlined consume of Data._Representation(v55, v57);
      v54 = *(v0 + 8);

      return v54();
    }
  }

  else
  {
    v4 = *(v0 + 184);
    v3 = *(v0 + 192);

    outlined copy of Data._Representation(v4, v3);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    outlined consume of Data._Representation(v4, v3);
    if (os_log_type_enabled(v5, v6))
    {
      v8 = *(v0 + 200);
      v7 = *(v0 + 208);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v58[0] = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, v58);
      *(v9 + 12) = 2080;
      v11 = Data.readableDescription.getter();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v58);

      *(v9 + 14) = v13;
      _os_log_impl(&dword_26524C000, v5, v6, "DaemonPersister saveGroupClientContextBlob using inMemory mode { identifier: %s, groupClientContextBlob: %s }", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v10, -1, -1);
      MEMORY[0x2667577B0](v9, -1, -1);
    }

    *(v0 + 288) = (*(**(v0 + 224) + 168))();
    v56 = (*MEMORY[0x277D4CE90] + MEMORY[0x277D4CE90]);
    v14 = swift_task_alloc();
    *(v0 + 296) = v14;
    *v14 = v0;
    v14[1] = DaemonPersister.save(swiftMLSGroupID:forIdentifier:clientIdentifier:);
    v15 = *(v0 + 208);
    v16 = *(v0 + 216);
    v17 = *(v0 + 192);
    v18 = *(v0 + 200);
    v19 = *(v0 + 184);

    return v56(v19, v17, v18, v15, v16);
  }
}

{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    outlined consume of Data._Representation(v2[32], v2[33]);
    v3 = v2[30];
    v4 = v2[31];
    v5 = DaemonPersister.save(groupClientContextBlob:forIdentifier:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 18);
    v3 = v2[30];
    v4 = v2[31];
    v5 = DaemonPersister.save(groupClientContextBlob:forIdentifier:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t DaemonPersister.loadGroupClientContextBlob(identifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MLSActor();
  v4[6] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](DaemonPersister.loadGroupClientContextBlob(identifier:clientIdentifier:), v6, v5);
}

uint64_t DaemonPersister.loadGroupClientContextBlob(identifier:clientIdentifier:)()
{
  v28 = v0;
  if ((*(**(v0 + 40) + 264))())
  {
    type metadata accessor for MLS.UniqueClientIdentifier();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D008]);
    v1 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    *(v0 + 72) = v1;
    *(v0 + 80) = v2;
    v14 = v2;
    v15 = v1;

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v20 = *(v0 + 16);
      v19 = *(v0 + 24);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, v27);
      _os_log_impl(&dword_26524C000, v16, v17, "DaemonPersister loadGroupClientContextBlob using persistence mode { identifier: %s }", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x2667577B0](v22, -1, -1);
      MEMORY[0x2667577B0](v21, -1, -1);
    }

    v23 = swift_task_alloc();
    *(v0 + 88) = v23;
    *v23 = v0;
    v23[1] = DaemonPersister.loadGroupClientContextBlob(identifier:clientIdentifier:);
    v24 = *(v0 + 16);
    v25 = *(v0 + 24);

    return specialized SqliteStore.query<A>(_:)(v15, v14, v24, v25);
  }

  else
  {

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = *(v0 + 16);
      v5 = *(v0 + 24);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v27[0] = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, v27);
      _os_log_impl(&dword_26524C000, v3, v4, "DaemonPersister loadGroupClientContextBlob using inMemory mode { identifier: %s}", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x2667577B0](v8, -1, -1);
      MEMORY[0x2667577B0](v7, -1, -1);
    }

    *(v0 + 112) = (*(**(v0 + 40) + 168))();
    v26 = (*MEMORY[0x277D4CE48] + MEMORY[0x277D4CE48]);
    v9 = swift_task_alloc();
    *(v0 + 120) = v9;
    *v9 = v0;
    v9[1] = DaemonPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:);
    v10 = *(v0 + 24);
    v11 = *(v0 + 32);
    v12 = *(v0 + 16);

    return v26(v12, v10, v11);
  }
}

{
  v1 = v0[12];

  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  if (*(v1 + 16))
  {
    v11 = v2[5];
    v12 = v2[4];
    v5 = v2[8];
    v7 = v2[9];
    v6 = v2[10];
    v8 = v2[11];
    outlined copy of Data._Representation(v12, v11);

    outlined copy of Data?(v5, v7);
    outlined copy of Data?(v6, v8);
    outlined consume of Data._Representation(v4, v3);

    outlined copy of Data?(v6, v8);
    outlined consume of Data._Representation(v12, v11);

    outlined consume of Data?(v5, v7);
    outlined consume of Data?(v6, v8);
  }

  else
  {
    outlined consume of Data._Representation(v0[9], v0[10]);

    v6 = 0;
    v8 = 0xF000000000000000;
  }

  v9 = v0[1];

  return v9(v6, v8);
}

uint64_t DaemonPersister.loadGroupClientContextBlob(identifier:clientIdentifier:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 96) = a1;
  *(v4 + 104) = v1;

  v5 = *(v3 + 64);
  v6 = *(v3 + 56);
  if (v1)
  {
    v7 = DaemonPersister.loadGroupClientContextBlob(identifier:clientIdentifier:);
  }

  else
  {
    v7 = DaemonPersister.loadGroupClientContextBlob(identifier:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 376) = a4;
  *(v5 + 384) = v4;
  *(v5 + 85) = a3;
  *(v5 + 360) = a1;
  *(v5 + 368) = a2;
  v6 = type metadata accessor for MLS.PersistedMember();
  *(v5 + 392) = v6;
  *(v5 + 400) = *(v6 - 8);
  *(v5 + 408) = swift_task_alloc();
  type metadata accessor for MLSActor();
  *(v5 + 416) = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 424) = v8;
  *(v5 + 432) = v7;

  return MEMORY[0x2822009F8](DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:), v8, v7);
}

uint64_t DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:)()
{
  v33 = v0;
  if ((*(**(v0 + 384) + 264))())
  {
    type metadata accessor for MLS.UniqueClientIdentifier();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D008]);
    v1 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    *(v0 + 440) = v1;
    *(v0 + 448) = v2;
    v16 = v1;
    v17 = v2;

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v21 = *(v0 + 85);
      v23 = *(v0 + 360);
      v22 = *(v0 + 368);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32[0] = v25;
      *v24 = 136315394;
      *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, v32);
      *(v24 + 12) = 1024;
      *(v24 + 14) = v21;
      _os_log_impl(&dword_26524C000, v18, v19, "DaemonPersister loadGroupMembers using persistence mode. { identifier: %s, includePendingMembers: %{BOOL}d }", v24, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x2667577B0](v25, -1, -1);
      MEMORY[0x2667577B0](v24, -1, -1);
    }

    v26 = *(v0 + 85);

    outlined copy of Data._Representation(v16, v17);
    if (v26 == 1)
    {
      v31 = specialized SqliteStore.query<A>(_:);
      v27 = swift_task_alloc();
      *(v0 + 456) = v27;
      *v27 = v0;
      v28 = DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:);
    }

    else
    {
      v31 = specialized SqliteStore.query<A>(_:);
      v27 = swift_task_alloc();
      *(v0 + 472) = v27;
      *v27 = v0;
      v28 = DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:);
    }

    v27[1] = v28;
    v13 = *(v0 + 360);
    v12 = *(v0 + 368);
    v14 = v16;
    v11 = v17;
    v15 = v31;
  }

  else
  {

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 85);
      v7 = *(v0 + 360);
      v6 = *(v0 + 368);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v32[0] = v9;
      *v8 = 136315394;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, v32);
      *(v8 + 12) = 1024;
      *(v8 + 14) = v5;
      _os_log_impl(&dword_26524C000, v3, v4, "DaemonPersister loadGroupMembers using inMemory mode { identifier: %s, includePendingMembers: %{BOOL}d }", v8, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x2667577B0](v9, -1, -1);
      MEMORY[0x2667577B0](v8, -1, -1);
    }

    *(v0 + 488) = (*(**(v0 + 384) + 168))();
    v30 = (*MEMORY[0x277D4CE18] + MEMORY[0x277D4CE18]);
    v10 = swift_task_alloc();
    *(v0 + 496) = v10;
    *v10 = v0;
    v10[1] = DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:);
    v11 = *(v0 + 368);
    v12 = *(v0 + 376);
    v13 = *(v0 + 85);
    v14 = *(v0 + 360);
    v15 = v30;
  }

  return v15(v14, v11, v13, v12);
}

{
  v53 = v0;
  v4 = *(v0 + 464);
  v5 = *(v0 + 312);

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(v0 + 400);
    v48 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v8 = *(v5 + 16);
    if (!v8)
    {
      goto LABEL_20;
    }

    v9 = v48;
    v10 = *(v0 + 408);
    *(v0 + 16) = *(v5 + 32);
    v12 = *(v5 + 64);
    v11 = *(v5 + 80);
    v13 = *(v5 + 48);
    *(v0 + 77) = *(v5 + 93);
    *(v0 + 48) = v12;
    *(v0 + 64) = v11;
    *(v0 + 32) = v13;
    v14 = *(v5 + 80);
    v51 = *(v5 + 64);
    v52[0] = v14;
    *(v52 + 13) = *(v5 + 93);
    v15 = *(v5 + 48);
    v49 = *(v5 + 32);
    v50 = v15;
    outlined init with copy of GroupMemberModel(v0 + 16, v0 + 88);
    closure #1 in DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:)(&v49, (v0 + 352), v10);
    if (v4)
    {
      v17 = *(v0 + 440);
      v16 = *(v0 + 448);
      v18 = v52[0];
      *(v0 + 192) = v51;
      *(v0 + 208) = v18;
      *(v0 + 221) = *(v52 + 13);
      v19 = v50;
      *(v0 + 160) = v49;
      *(v0 + 176) = v19;
      outlined destroy of GroupMemberModel(v0 + 160);

      outlined consume of Data._Representation(v17, v16);

      v20 = *(v0 + 8);

      return v20();
    }

    v1 = v0 + 232;
    v2 = (v7 + 2);
    v24 = v52[0];
    *(v0 + 264) = v51;
    *(v0 + 280) = v24;
    *(v0 + 293) = *(v52 + 13);
    v25 = v50;
    *(v0 + 232) = v49;
    *(v0 + 248) = v25;
    outlined destroy of GroupMemberModel(v0 + 232);
    v3 = *(v48 + 16);
    v8 = *(v48 + 24);
    v4 = v3 + 1;
    if (v3 >= v8 >> 1)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v26 = *(v0 + 408);
      v27 = *(v0 + 392);
      *(v9 + 16) = v4;
      v47 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v45 = *(v7 + 4);
      v46 = *(v7 + 9);
      v45(v9 + v47 + v46 * v3, v26, v27);
      if (v6 == 1)
      {
        break;
      }

      v8 = *(v5 + 16);
      if (v8 >= 2)
      {
        v7 = (v5 + 104);
        v44 = 2 - v6;
        v6 = 1;
        do
        {
          v31 = *(v0 + 408);
          *(v0 + 16) = *v7;
          v33 = v7[2];
          v32 = v7[3];
          v34 = v7[1];
          *(v0 + 77) = *(v7 + 61);
          *(v0 + 48) = v33;
          *(v0 + 64) = v32;
          *(v0 + 32) = v34;
          v35 = v7[3];
          v51 = v7[2];
          v52[0] = v35;
          *(v52 + 13) = *(v7 + 61);
          v36 = v7[1];
          v49 = *v7;
          v50 = v36;
          outlined init with copy of GroupMemberModel(v0 + 16, v0 + 88);
          closure #1 in DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:)(&v49, (v0 + 352), v31);
          v3 = v2;
          v37 = v52[0];
          *(v1 + 32) = v51;
          *(v1 + 48) = v37;
          *(v1 + 61) = *(v52 + 13);
          v38 = v50;
          *v1 = v49;
          *(v1 + 16) = v38;
          outlined destroy of GroupMemberModel(v1);
          v48 = v9;
          v40 = *(v9 + 16);
          v39 = *(v9 + 24);
          v4 = v40 + 1;
          if (v40 >= v39 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
          }

          v41 = *(v0 + 408);
          v42 = *(v0 + 392);
          *(v9 + 16) = v4;
          v43 = v9 + v47 + v46 * v40;
          v2 = v3;
          v45(v43, v41, v42);
          if (v44 + v6 == 1)
          {
            goto LABEL_10;
          }

          v8 = *(v5 + 16);
          v7 = (v7 + 72);
        }

        while (++v6 < v8);
      }

LABEL_20:
      __break(1u);
LABEL_21:
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v4, 1);
      v9 = v48;
    }

LABEL_10:
    v29 = *(v0 + 440);
    v28 = *(v0 + 448);

    outlined consume of Data._Representation(v29, v28);
  }

  else
  {
    v23 = *(v0 + 440);
    v22 = *(v0 + 448);

    outlined consume of Data._Representation(v23, v22);
    v9 = MEMORY[0x277D84F90];
  }

  v30 = *(v0 + 8);

  return v30(v9);
}

{
  v53 = v0;
  v4 = *(v0 + 480);
  v5 = *(v0 + 336);

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(v0 + 400);
    v48 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v8 = *(v5 + 16);
    if (!v8)
    {
      goto LABEL_20;
    }

    v9 = v48;
    v10 = *(v0 + 408);
    *(v0 + 16) = *(v5 + 32);
    v12 = *(v5 + 64);
    v11 = *(v5 + 80);
    v13 = *(v5 + 48);
    *(v0 + 77) = *(v5 + 93);
    *(v0 + 48) = v12;
    *(v0 + 64) = v11;
    *(v0 + 32) = v13;
    v14 = *(v5 + 80);
    v51 = *(v5 + 64);
    v52[0] = v14;
    *(v52 + 13) = *(v5 + 93);
    v15 = *(v5 + 48);
    v49 = *(v5 + 32);
    v50 = v15;
    outlined init with copy of GroupMemberModel(v0 + 16, v0 + 88);
    closure #1 in DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:)(&v49, (v0 + 352), v10);
    if (v4)
    {
      v17 = *(v0 + 440);
      v16 = *(v0 + 448);
      v18 = v52[0];
      *(v0 + 192) = v51;
      *(v0 + 208) = v18;
      *(v0 + 221) = *(v52 + 13);
      v19 = v50;
      *(v0 + 160) = v49;
      *(v0 + 176) = v19;
      outlined destroy of GroupMemberModel(v0 + 160);

      outlined consume of Data._Representation(v17, v16);

      v20 = *(v0 + 8);

      return v20();
    }

    v1 = v0 + 232;
    v2 = (v7 + 2);
    v24 = v52[0];
    *(v0 + 264) = v51;
    *(v0 + 280) = v24;
    *(v0 + 293) = *(v52 + 13);
    v25 = v50;
    *(v0 + 232) = v49;
    *(v0 + 248) = v25;
    outlined destroy of GroupMemberModel(v0 + 232);
    v3 = *(v48 + 16);
    v8 = *(v48 + 24);
    v4 = v3 + 1;
    if (v3 >= v8 >> 1)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v26 = *(v0 + 408);
      v27 = *(v0 + 392);
      *(v9 + 16) = v4;
      v47 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v45 = *(v7 + 4);
      v46 = *(v7 + 9);
      v45(v9 + v47 + v46 * v3, v26, v27);
      if (v6 == 1)
      {
        break;
      }

      v8 = *(v5 + 16);
      if (v8 >= 2)
      {
        v7 = (v5 + 104);
        v44 = 2 - v6;
        v6 = 1;
        do
        {
          v31 = *(v0 + 408);
          *(v0 + 16) = *v7;
          v33 = v7[2];
          v32 = v7[3];
          v34 = v7[1];
          *(v0 + 77) = *(v7 + 61);
          *(v0 + 48) = v33;
          *(v0 + 64) = v32;
          *(v0 + 32) = v34;
          v35 = v7[3];
          v51 = v7[2];
          v52[0] = v35;
          *(v52 + 13) = *(v7 + 61);
          v36 = v7[1];
          v49 = *v7;
          v50 = v36;
          outlined init with copy of GroupMemberModel(v0 + 16, v0 + 88);
          closure #1 in DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:)(&v49, (v0 + 352), v31);
          v3 = v2;
          v37 = v52[0];
          *(v1 + 32) = v51;
          *(v1 + 48) = v37;
          *(v1 + 61) = *(v52 + 13);
          v38 = v50;
          *v1 = v49;
          *(v1 + 16) = v38;
          outlined destroy of GroupMemberModel(v1);
          v48 = v9;
          v40 = *(v9 + 16);
          v39 = *(v9 + 24);
          v4 = v40 + 1;
          if (v40 >= v39 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
          }

          v41 = *(v0 + 408);
          v42 = *(v0 + 392);
          *(v9 + 16) = v4;
          v43 = v9 + v47 + v46 * v40;
          v2 = v3;
          v45(v43, v41, v42);
          if (v44 + v6 == 1)
          {
            goto LABEL_10;
          }

          v8 = *(v5 + 16);
          v7 = (v7 + 72);
        }

        while (++v6 < v8);
      }

LABEL_20:
      __break(1u);
LABEL_21:
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v4, 1);
      v9 = v48;
    }

LABEL_10:
    v29 = *(v0 + 440);
    v28 = *(v0 + 448);

    outlined consume of Data._Representation(v29, v28);
  }

  else
  {
    v23 = *(v0 + 440);
    v22 = *(v0 + 448);

    outlined consume of Data._Representation(v23, v22);
    v9 = MEMORY[0x277D84F90];
  }

  v30 = *(v0 + 8);

  return v30(v9);
}

{

  v1 = *(v0 + 512);

  v2 = *(v0 + 8);

  return v2(v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  outlined consume of Data._Representation(v0[55], v0[56]);

  v1 = v0[1];

  return v1();
}

{
  outlined consume of Data._Representation(v0[55], v0[56]);

  v1 = v0[1];

  return v1();
}

uint64_t DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[38] = v2;
  v4[39] = a1;
  v4[40] = v1;
  v4[58] = v1;

  outlined consume of Data._Representation(v3[55], v3[56]);

  v5 = v3[54];
  v6 = v3[53];
  if (v1)
  {
    v7 = DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:);
  }

  else
  {
    v7 = DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v3 = *v2;
  v4 = *v2;
  v4[41] = v2;
  v4[42] = a1;
  v4[43] = v1;
  v4[60] = v1;

  outlined consume of Data._Representation(v3[55], v3[56]);

  v5 = v3[54];
  v6 = v3[53];
  if (v1)
  {
    v7 = DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:);
  }

  else
  {
    v7 = DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v4 = *v2;
  *(*v2 + 504) = v1;

  if (v1)
  {
    v5 = v4[53];
    v6 = v4[54];
    v7 = DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:);
  }

  else
  {

    v4[64] = a1;
    v5 = v4[53];
    v6 = v4[54];
    v7 = DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

void closure #1 in DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a2;
  v47 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO15PersistedMemberV0E5StateOSgMd, &_s15SecureMessaging3MLSO15PersistedMemberV0E5StateOSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v41 - v6;
  v8 = type metadata accessor for MLS.PersistedMember.MemberState();
  v48 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v41 - v14;
  v16 = type metadata accessor for MLS.AllMember();
  v18 = MEMORY[0x28223BE20](v16, v17);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v26 = &v41 - v25;
  v27 = *(a1 + 56);
  if (v27 >> 60 == 15)
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    v28 = swift_allocError();
    *v29 = 4;
    *(v29 + 8) = 0;
    *(v29 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    v42 = v8;
    v45 = v24;
    v46 = &v41;
    v30 = *(a1 + 48);
    v31 = *(a1 + 68);
    v43 = *(a1 + 64);
    v44 = v31;
    MEMORY[0x28223BE20](v22, v23);
    v53[0] = 4;
    v54 = 0;
    v55 = 0;
    outlined copy of Data._Representation(v30, v27);
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    v32 = v49;
    _s15SecureMessaging7rethrow_2as3logq_q_yKXK_xySScSgtxYKAA14VersatileErrorRzr0_lF();
    if (v32)
    {
      v33 = v50[0];
      v34 = v51;
      v35 = v52;
      lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
      v28 = swift_allocError();
      *v36 = v33;
      *(v36 + 8) = v34;
      *(v36 + 16) = v35;
      outlined consume of Data?(v30, v27);
    }

    else
    {
      v49 = v30;
      if ((v44 & 1) == 0)
      {
        v46 = 0;
        MLS.PersistedMember.MemberState.init(rawValue:)();
        v37 = v48;
        v38 = v42;
        if ((*(v48 + 48))(v7, 1, v42) != 1)
        {
          (*(v37 + 32))(v15, v7, v38);
          v40 = v45;
          (*(v45 + 16))(v20, v26, v16);
          (*(v37 + 16))(v12, v15, v38);
          MLS.PersistedMember.init(member:state:)();
          outlined consume of Data?(v49, v27);
          (*(v37 + 8))(v15, v38);
          (*(v40 + 8))(v26, v16);
          return;
        }

        outlined destroy of MLS.KeyPackageProvider?(v7, &_s15SecureMessaging3MLSO15PersistedMemberV0E5StateOSgMd, &_s15SecureMessaging3MLSO15PersistedMemberV0E5StateOSgMR);
      }

      lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
      v28 = swift_allocError();
      *v39 = 4;
      *(v39 + 8) = 0;
      *(v39 + 16) = 0;
      swift_willThrow();
      outlined consume of Data?(v49, v27);
      (*(v45 + 8))(v26, v16);
    }
  }

  *v56 = v28;
}

uint64_t DaemonPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[85] = v5;
  v6[84] = a5;
  v6[83] = a4;
  v6[82] = a3;
  v6[81] = a2;
  v6[80] = a1;
  v7 = type metadata accessor for MLS.PersistedMember.MemberState();
  v6[86] = v7;
  v6[87] = *(v7 - 8);
  v6[88] = swift_task_alloc();
  v6[89] = swift_task_alloc();
  v8 = type metadata accessor for URI();
  v6[90] = v8;
  v6[91] = *(v8 - 8);
  v6[92] = swift_task_alloc();
  v6[93] = swift_task_alloc();
  v9 = type metadata accessor for MLS.AllMember();
  v6[94] = v9;
  v6[95] = *(v9 - 8);
  v6[96] = swift_task_alloc();
  v6[97] = swift_task_alloc();
  v6[98] = swift_task_alloc();
  v6[99] = swift_task_alloc();
  v10 = type metadata accessor for MLS.PersistedMember();
  v6[100] = v10;
  v6[101] = *(v10 - 8);
  v6[102] = swift_task_alloc();
  v6[103] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v6[104] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[105] = v12;
  v6[106] = v11;

  return MEMORY[0x2822009F8](DaemonPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:), v12, v11);
}

uint64_t DaemonPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:)()
{
  v190 = v0;
  v1 = v0;
  if (((*(**(v0 + 680) + 264))() & 1) == 0)
  {

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 800);
      v184 = *(v0 + 664);
      v7 = *(v0 + 656);
      v8 = *(v1 + 648);
      v9 = v1;
      v10 = *(v1 + 640);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v189[0] = v12;
      *v11 = 136315650;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v8, v189);
      *(v11 + 12) = 2080;
      v13 = MEMORY[0x266756AF0](v7, v6);
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v189);

      *(v11 + 14) = v15;
      *(v11 + 22) = 2080;
      v1 = v9;
      v16 = MEMORY[0x266756AF0](v184, v6);
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v189);

      *(v11 + 24) = v18;
      _os_log_impl(&dword_26524C000, v4, v5, "DaemonPersister saveGroupMembers using inMemory mode { identifier: %s, membersToAdd: %s, membersToDelete: %s }", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v12, -1, -1);
      MEMORY[0x2667577B0](v11, -1, -1);
    }

    *(v1 + 984) = (*(**(v1 + 680) + 168))();
    v185 = (*MEMORY[0x277D4CE20] + MEMORY[0x277D4CE20]);
    v19 = swift_task_alloc();
    *(v1 + 992) = v19;
    *v19 = v1;
    v19[1] = DaemonPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:);
    v20 = *(v1 + 672);
    v21 = *(v1 + 664);
    v22 = *(v1 + 656);
    v23 = *(v1 + 648);
    v24 = *(v1 + 640);

    return v185(v24, v23, v22, v21, v20);
  }

  type metadata accessor for MLS.UniqueClientIdentifier();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D008]);
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 856) = v2;
  *(v0 + 864) = v3;
  v26 = v2;
  v27 = v3;
  *(v0 + 872) = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_logger;

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  v30 = os_log_type_enabled(v28, v29);
  v183 = v27;
  v182 = v26;
  if (v30)
  {
    v31 = *(v0 + 800);
    v186 = *(v0 + 664);
    v32 = *(v0 + 656);
    v33 = *(v0 + 648);
    v34 = *(v0 + 640);
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v189[0] = v36;
    *v35 = 136315650;
    v37 = v33;
    v1 = v0;
    *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v37, v189);
    *(v35 + 12) = 2080;
    v38 = MEMORY[0x266756AF0](v32, v31);
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v189);

    *(v35 + 14) = v40;
    v26 = v182;
    *(v35 + 22) = 2080;
    v41 = MEMORY[0x266756AF0](v186, v31);
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, v189);

    *(v35 + 24) = v43;
    v27 = v183;
    _os_log_impl(&dword_26524C000, v28, v29, "DaemonPersister saveGroupMembers using persistence mode. { identifier: %s, membersToAdd: %s, membersToDelete: %s }", v35, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v36, -1, -1);
    MEMORY[0x2667577B0](v35, -1, -1);
  }

  if (((*(**(v1 + 680) + 192))() & 1) == 0)
  {

    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = *(v1 + 800);
      v78 = *(v1 + 664);
      v79 = *(v1 + 656);
      v80 = *(v1 + 648);
      v81 = *(v1 + 640);
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v189[0] = v83;
      *v82 = 136315650;
      *(v82 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v80, v189);
      *(v82 + 12) = 2080;
      v84 = MEMORY[0x266756AF0](v79, v77);
      v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v85, v189);

      *(v82 + 14) = v86;
      v27 = v183;
      *(v82 + 22) = 2080;
      v26 = v182;
      v87 = MEMORY[0x266756AF0](v78, v77);
      v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v88, v189);

      *(v82 + 24) = v89;
      _os_log_impl(&dword_26524C000, v75, v76, "DaemonPersister saveGroupMembers called outside atomically block { identifier: %s, membersToAdd: %s, membersToDelete: %s }", v82, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v83, -1, -1);
      MEMORY[0x2667577B0](v82, -1, -1);
    }

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v90 = 6;
    *(v90 + 8) = 0;
    *(v90 + 16) = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v26, v27);

    v91 = *(v1 + 8);
    goto LABEL_20;
  }

  v44 = *(v1 + 656);
  v45 = *(v44 + 16);
  v46 = MEMORY[0x277D84F90];
  if (v45)
  {
    v47 = *(v1 + 808);
    v48 = *(v1 + 760);
    v49 = *(v1 + 728);
    v50 = *(v1 + 696);
    v189[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v45, 0);
    v46 = v189[0];
    v51 = *(v47 + 16);
    v47 += 16;
    v52 = v44 + ((*(v47 + 64) + 32) & ~*(v47 + 64));
    v53 = (v48 + 8);
    v167 = (v49 + 8);
    v169 = v51;
    v171 = (v47 - 8);
    v162 = *(v47 + 56);
    v164 = (v50 + 8);
    do
    {
      v178 = v45;
      v187 = v46;
      v54 = *(v1 + 792);
      v55 = *(v1 + 752);
      v56 = *(v1 + 744);
      v57 = *(v1 + 720);
      v176 = v52;
      v169(*(v1 + 824));
      MLS.PersistedMember.member.getter();
      MLS.AllMember.uri.getter();
      v58 = *v53;
      v59 = (*v53)(v54, v55);
      v60 = MEMORY[0x266756630](v59);
      v180 = v61;
      (*v167)(v56, v57);
      MLS.PersistedMember.member.getter();
      v62 = MLS.AllMember.dataRepresentation.getter();
      v64 = v63;
      v173 = v62;
      v174 = v60;
      v65 = *(v1 + 824);
      v66 = *(v1 + 800);
      v67 = *(v1 + 712);
      v68 = *(v1 + 688);
      v58(*(v1 + 784), *(v1 + 752));
      MLS.PersistedMember.state.getter();
      v69 = MLS.PersistedMember.MemberState.rawValue.getter();
      (*v164)(v67, v68);
      (*v171)(v65, v66);

      outlined copy of Data._Representation(v182, v183);
      v46 = v187;
      v189[0] = v187;
      v71 = *(v187 + 16);
      v70 = *(v187 + 24);
      if (v71 >= v70 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v71 + 1, 1);
        v46 = v189[0];
      }

      v72 = *(v1 + 648);
      v73 = *(v1 + 640);
      *(v46 + 16) = v71 + 1;
      v74 = v46 + 72 * v71;
      *(v74 + 32) = v182;
      *(v74 + 40) = v183;
      *(v74 + 48) = v73;
      *(v74 + 56) = v72;
      *(v74 + 64) = v174;
      *(v74 + 72) = v180;
      *(v74 + 80) = v173;
      *(v74 + 88) = v64;
      *(v74 + 96) = v69;
      *(v74 + 100) = 0;
      v52 = v176 + v162;
      v45 = v178 - 1;
      v53 = (v48 + 8);
    }

    while (v178 != 1);
  }

  *(v1 + 880) = v46;
  v92 = *(v1 + 664);
  v93 = *(v92 + 16);
  v94 = MEMORY[0x277D84F90];
  if (v93)
  {
    v188 = v46;
    v95 = *(v1 + 808);
    v96 = *(v1 + 760);
    v97 = *(v1 + 728);
    v98 = *(v1 + 696);
    v189[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v93, 0);
    v94 = v189[0];
    v99 = *(v95 + 16);
    v95 += 16;
    v100 = v92 + ((*(v95 + 64) + 32) & ~*(v95 + 64));
    v101 = (v96 + 8);
    v166 = (v97 + 8);
    v168 = v99;
    v170 = (v95 - 8);
    v163 = *(v95 + 56);
    v165 = (v98 + 8);
    do
    {
      v175 = v100;
      v177 = v93;
      v181 = v94;
      v102 = *(v1 + 776);
      v103 = *(v1 + 752);
      v104 = *(v1 + 736);
      v105 = *(v1 + 720);
      v168(*(v1 + 816));
      MLS.PersistedMember.member.getter();
      MLS.AllMember.uri.getter();
      v106 = v101;
      v107 = *v101;
      v108 = v107(v102, v103);
      v109 = MEMORY[0x266756630](v108);
      v179 = v110;
      (*v166)(v104, v105);
      MLS.PersistedMember.member.getter();
      v111 = MLS.AllMember.dataRepresentation.getter();
      v113 = v112;
      v172 = v111;
      v114 = *(v1 + 816);
      v115 = *(v1 + 800);
      v116 = *(v1 + 712);
      v117 = *(v1 + 688);
      v107(*(v1 + 768), *(v1 + 752));
      MLS.PersistedMember.state.getter();
      v118 = MLS.PersistedMember.MemberState.rawValue.getter();
      (*v165)(v116, v117);
      (*v170)(v114, v115);

      outlined copy of Data._Representation(v182, v183);
      v94 = v181;
      v189[0] = v181;
      v120 = *(v181 + 16);
      v119 = *(v181 + 24);
      v101 = v106;
      if (v120 >= v119 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v119 > 1), v120 + 1, 1);
        v94 = v189[0];
      }

      v121 = *(v1 + 648);
      v122 = *(v1 + 640);
      *(v94 + 16) = v120 + 1;
      v123 = v94 + 72 * v120;
      *(v123 + 32) = v182;
      *(v123 + 40) = v183;
      *(v123 + 48) = v122;
      *(v123 + 56) = v121;
      *(v123 + 64) = v109;
      *(v123 + 72) = v179;
      *(v123 + 80) = v172;
      *(v123 + 88) = v113;
      *(v123 + 96) = v118;
      *(v123 + 100) = 0;
      v100 = v175 + v163;
      v93 = v177 - 1;
    }

    while (v177 != 1);
    v46 = v188;
  }

  *(v1 + 888) = v94;
  v124 = Logger.logObject.getter();
  v125 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v124, v125))
  {
    v126 = swift_slowAlloc();
    *v126 = 0;
    _os_log_impl(&dword_26524C000, v124, v125, "DaemonPersister saveGroupMembers inserting members", v126, 2u);
    MEMORY[0x2667577B0](v126, -1, -1);
  }

  *(v1 + 896) = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store;
  if (*(v46 + 16))
  {
    *(v1 + 904) = 0;
    v127 = *(v1 + 880);
    *(v1 + 16) = *(v127 + 32);
    v129 = *(v127 + 64);
    v128 = *(v127 + 80);
    v130 = *(v127 + 48);
    *(v1 + 77) = *(v127 + 93);
    *(v1 + 48) = v129;
    *(v1 + 64) = v128;
    *(v1 + 32) = v130;
    *(v1 + 544) = &type metadata for GroupMemberModel;
    *(v1 + 552) = &protocol witness table for GroupMemberModel;
    v131 = swift_allocObject();
    *(v1 + 520) = v131;
    memmove((v131 + 16), (v127 + 32), 0x45uLL);
    outlined init with copy of GroupMemberModel(v1 + 16, v1 + 88);
    outlined init with copy of GroupMemberModel(v1 + 16, v1 + 160);
    v132 = swift_task_alloc();
    *(v1 + 912) = v132;
    *v132 = v1;
    v132[1] = DaemonPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:);
    v133 = v1 + 520;
LABEL_33:

    return SqliteStore.insert(_:)(v133);
  }

  v134 = Logger.logObject.getter();
  v135 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v134, v135))
  {
    v136 = swift_slowAlloc();
    *v136 = 0;
    _os_log_impl(&dword_26524C000, v134, v135, "DaemonPersister saveGroupMembers deleting members", v136, 2u);
    MEMORY[0x2667577B0](v136, -1, -1);
  }

  v137 = *(v1 + 888);

  v138 = *(v137 + 16);
  *(v1 + 928) = v138;
  v139 = *(v1 + 888);
  if (!v138)
  {
    v156 = *(v1 + 864);
    v157 = *(v1 + 856);

    outlined consume of Data._Representation(v157, v156);

    v91 = *(v1 + 8);
LABEL_20:

    return v91();
  }

  v140 = v1 + 232;
  v141 = *(v1 + 696);
  *(v1 + 1008) = *MEMORY[0x277D4CD28];
  v142 = *(v141 + 104);
  *(v1 + 936) = v142;
  *(v1 + 944) = 0;
  v143 = *(v1 + 704);
  v144 = *(v1 + 688);
  *(v1 + 232) = *(v139 + 32);
  v146 = *(v139 + 64);
  v145 = *(v139 + 80);
  v147 = *(v139 + 48);
  *(v1 + 293) = *(v139 + 93);
  *(v1 + 264) = v146;
  *(v1 + 280) = v145;
  *(v1 + 248) = v147;
  v148 = v1;
  v149 = *(v1 + 300);
  v150 = *(v148 + 296);
  v142(v143);
  outlined init with copy of GroupMemberModel(v140, v148 + 304);
  v151 = MLS.PersistedMember.MemberState.rawValue.getter();
  (*(v141 + 8))(v143, v144);
  if ((v149 & 1) == 0 && v150 == v151)
  {
    *(v148 + 624) = &type metadata for GroupMemberModel;
    *(v148 + 632) = &protocol witness table for GroupMemberModel;
    v152 = swift_allocObject();
    *(v148 + 600) = v152;
    v153 = *(v140 + 48);
    *(v152 + 48) = *(v140 + 32);
    *(v152 + 64) = v153;
    *(v152 + 77) = *(v140 + 61);
    v154 = *(v140 + 16);
    *(v152 + 16) = *v140;
    *(v152 + 32) = v154;
    outlined init with copy of GroupMemberModel(v140, v148 + 448);
    v155 = swift_task_alloc();
    *(v148 + 952) = v155;
    *v155 = v148;
    v155[1] = DaemonPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:);
    v133 = v148 + 600;
    goto LABEL_33;
  }

  *(v148 + 584) = &type metadata for GroupMemberModel;
  *(v148 + 592) = &protocol witness table for GroupMemberModel;
  v158 = swift_allocObject();
  *(v148 + 560) = v158;
  v159 = *(v140 + 48);
  *(v158 + 48) = *(v140 + 32);
  *(v158 + 64) = v159;
  *(v158 + 77) = *(v140 + 61);
  v160 = *(v140 + 16);
  *(v158 + 16) = *v140;
  *(v158 + 32) = v160;
  outlined init with copy of GroupMemberModel(v140, v148 + 376);
  v161 = swift_task_alloc();
  *(v148 + 968) = v161;
  *v161 = v148;
  v161[1] = DaemonPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:);

  return SqliteStore.delete(_:)(v148 + 560);
}

{
  v2 = *v1;
  *(*v1 + 920) = v0;

  if (v0)
  {

    v3 = v2[106];
    v4 = v2[105];
    v5 = DaemonPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 65);
    v3 = v2[106];
    v4 = v2[105];
    v5 = DaemonPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = *(v0 + 880);
  v2 = *(v0 + 904) + 1;
  result = outlined destroy of GroupMemberModel(v0 + 16);
  v4 = *(v1 + 16);
  if (v2 != v4)
  {
    v27 = *(v0 + 904) + 1;
    *(v0 + 904) = v27;
    if (v27 >= v4)
    {
      __break(1u);
      return result;
    }

    v28 = *(v0 + 880) + 72 * v27;
    *(v0 + 16) = *(v28 + 32);
    v30 = *(v28 + 64);
    v29 = *(v28 + 80);
    v31 = *(v28 + 48);
    *(v0 + 77) = *(v28 + 93);
    *(v0 + 48) = v30;
    *(v0 + 64) = v29;
    *(v0 + 32) = v31;
    *(v0 + 544) = &type metadata for GroupMemberModel;
    *(v0 + 552) = &protocol witness table for GroupMemberModel;
    v32 = swift_allocObject();
    *(v0 + 520) = v32;
    memmove((v32 + 16), (v28 + 32), 0x45uLL);
    outlined init with copy of GroupMemberModel(v0 + 16, v0 + 88);
    outlined init with copy of GroupMemberModel(v0 + 16, v0 + 160);
    v33 = swift_task_alloc();
    *(v0 + 912) = v33;
    *v33 = v0;
    v33[1] = DaemonPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:);
    v26 = v0 + 520;
    goto LABEL_10;
  }

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26524C000, v5, v6, "DaemonPersister saveGroupMembers deleting members", v7, 2u);
    MEMORY[0x2667577B0](v7, -1, -1);
  }

  v8 = *(v0 + 888);

  v9 = *(v8 + 16);
  *(v0 + 928) = v9;
  v10 = *(v0 + 888);
  if (v9)
  {
    v11 = (v0 + 232);
    v12 = *(v0 + 696);
    *(v0 + 1008) = *MEMORY[0x277D4CD28];
    v13 = *(v12 + 104);
    *(v0 + 936) = v13;
    *(v0 + 944) = 0;
    v14 = *(v0 + 704);
    v15 = *(v0 + 688);
    *(v0 + 232) = *(v10 + 32);
    v17 = *(v10 + 64);
    v16 = *(v10 + 80);
    v18 = *(v10 + 48);
    *(v0 + 293) = *(v10 + 93);
    *(v0 + 264) = v17;
    *(v0 + 280) = v16;
    *(v0 + 248) = v18;
    v19 = *(v0 + 300);
    v20 = *(v0 + 296);
    v13(v14);
    outlined init with copy of GroupMemberModel(v0 + 232, v0 + 304);
    v21 = MLS.PersistedMember.MemberState.rawValue.getter();
    (*(v12 + 8))(v14, v15);
    if ((v19 & 1) == 0 && v20 == v21)
    {
      *(v0 + 624) = &type metadata for GroupMemberModel;
      *(v0 + 632) = &protocol witness table for GroupMemberModel;
      v22 = swift_allocObject();
      *(v0 + 600) = v22;
      v23 = *(v0 + 280);
      *(v22 + 48) = *(v0 + 264);
      *(v22 + 64) = v23;
      *(v22 + 77) = *(v0 + 293);
      v24 = *(v0 + 248);
      *(v22 + 16) = *v11;
      *(v22 + 32) = v24;
      outlined init with copy of GroupMemberModel(v0 + 232, v0 + 448);
      v25 = swift_task_alloc();
      *(v0 + 952) = v25;
      *v25 = v0;
      v25[1] = DaemonPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:);
      v26 = v0 + 600;
LABEL_10:

      return SqliteStore.insert(_:)(v26);
    }

    *(v0 + 584) = &type metadata for GroupMemberModel;
    *(v0 + 592) = &protocol witness table for GroupMemberModel;
    v37 = swift_allocObject();
    *(v0 + 560) = v37;
    v38 = *(v0 + 280);
    *(v37 + 48) = *(v0 + 264);
    *(v37 + 64) = v38;
    *(v37 + 77) = *(v0 + 293);
    v39 = *(v0 + 248);
    *(v37 + 16) = *v11;
    *(v37 + 32) = v39;
    outlined init with copy of GroupMemberModel(v0 + 232, v0 + 376);
    v40 = swift_task_alloc();
    *(v0 + 968) = v40;
    *v40 = v0;
    v40[1] = DaemonPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:);

    return SqliteStore.delete(_:)(v0 + 560);
  }

  else
  {
    v34 = *(v0 + 864);
    v35 = *(v0 + 856);

    outlined consume of Data._Representation(v35, v34);

    v36 = *(v0 + 8);

    return v36();
  }
}

{
  v2 = *v1;
  *(*v1 + 960) = v0;

  if (v0)
  {

    v3 = v2[106];
    v4 = v2[105];
    v5 = DaemonPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 75);
    v3 = v2[106];
    v4 = v2[105];
    v5 = DaemonPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = (v0 + 232);
  v2 = *(v0 + 928);
  v3 = *(v0 + 944) + 1;
  result = outlined destroy of GroupMemberModel(v0 + 232);
  if (v3 == v2)
  {
    v5 = *(v0 + 864);
    v6 = *(v0 + 856);

    outlined consume of Data._Representation(v6, v5);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v8 = *(v0 + 888);
    v9 = *(v0 + 944) + 1;
    if (v9 >= *(v8 + 16))
    {
      __break(1u);
    }

    else
    {
      *(v0 + 944) = v9;
      v10 = *(v0 + 936);
      v11 = *(v0 + 1008);
      v12 = *(v0 + 704);
      v13 = *(v0 + 696);
      v14 = *(v0 + 688);
      v15 = v8 + 72 * v9;
      *v1 = *(v15 + 32);
      v17 = *(v15 + 64);
      v16 = *(v15 + 80);
      v18 = *(v15 + 48);
      *(v0 + 293) = *(v15 + 93);
      *(v0 + 264) = v17;
      *(v0 + 280) = v16;
      *(v0 + 248) = v18;
      v19 = *(v0 + 300);
      v20 = *(v0 + 296);
      v10(v12, v11, v14);
      outlined init with copy of GroupMemberModel(v0 + 232, v0 + 304);
      v21 = MLS.PersistedMember.MemberState.rawValue.getter();
      (*(v13 + 8))(v12, v14);
      if ((v19 & 1) != 0 || v20 != v21)
      {
        *(v0 + 584) = &type metadata for GroupMemberModel;
        *(v0 + 592) = &protocol witness table for GroupMemberModel;
        v26 = swift_allocObject();
        *(v0 + 560) = v26;
        v27 = *(v0 + 280);
        *(v26 + 48) = *(v0 + 264);
        *(v26 + 64) = v27;
        *(v26 + 77) = *(v0 + 293);
        v28 = *(v0 + 248);
        *(v26 + 16) = *v1;
        *(v26 + 32) = v28;
        outlined init with copy of GroupMemberModel(v0 + 232, v0 + 376);
        v29 = swift_task_alloc();
        *(v0 + 968) = v29;
        *v29 = v0;
        v29[1] = DaemonPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:);

        return SqliteStore.delete(_:)(v0 + 560);
      }

      else
      {
        *(v0 + 624) = &type metadata for GroupMemberModel;
        *(v0 + 632) = &protocol witness table for GroupMemberModel;
        v22 = swift_allocObject();
        *(v0 + 600) = v22;
        v23 = *(v0 + 280);
        *(v22 + 48) = *(v0 + 264);
        *(v22 + 64) = v23;
        *(v22 + 77) = *(v0 + 293);
        v24 = *(v0 + 248);
        *(v22 + 16) = *v1;
        *(v22 + 32) = v24;
        outlined init with copy of GroupMemberModel(v0 + 232, v0 + 448);
        v25 = swift_task_alloc();
        *(v0 + 952) = v25;
        *v25 = v0;
        v25[1] = DaemonPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:);

        return SqliteStore.insert(_:)(v0 + 600);
      }
    }
  }

  return result;
}

{
  v2 = *v1;
  *(*v1 + 976) = v0;

  if (v0)
  {

    v3 = v2[106];
    v4 = v2[105];
    v5 = DaemonPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 70);
    v3 = v2[106];
    v4 = v2[105];
    v5 = DaemonPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v2 = *v1;
  *(*v1 + 1000) = v0;

  if (v0)
  {
    v3 = *(v2 + 848);
    v4 = *(v2 + 840);
    v5 = DaemonPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:);
  }

  else
  {

    v3 = *(v2 + 848);
    v4 = *(v2 + 840);
    v5 = DaemonPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:);
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

{
  outlined consume of Data._Representation(v0[107], v0[108]);
  outlined destroy of GroupMemberModel((v0 + 2));

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 65);

  v1 = v0[1];

  return v1();
}

{
  outlined consume of Data._Representation(v0[107], v0[108]);

  outlined destroy of GroupMemberModel((v0 + 29));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 75);

  v1 = v0[1];

  return v1();
}

{
  outlined consume of Data._Representation(v0[107], v0[108]);

  outlined destroy of GroupMemberModel((v0 + 29));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 70);

  v1 = v0[1];

  return v1();
}

uint64_t DaemonPersister.replaceGroupMembers(identifier:newMembers:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[60] = a4;
  v5[61] = v4;
  v5[58] = a2;
  v5[59] = a3;
  v5[57] = a1;
  v6 = type metadata accessor for MLS.PersistedMember.MemberState();
  v5[62] = v6;
  v5[63] = *(v6 - 8);
  v5[64] = swift_task_alloc();
  v7 = type metadata accessor for URI();
  v5[65] = v7;
  v5[66] = *(v7 - 8);
  v5[67] = swift_task_alloc();
  v8 = type metadata accessor for MLS.AllMember();
  v5[68] = v8;
  v5[69] = *(v8 - 8);
  v5[70] = swift_task_alloc();
  v5[71] = swift_task_alloc();
  v9 = type metadata accessor for MLS.PersistedMember();
  v5[72] = v9;
  v5[73] = *(v9 - 8);
  v5[74] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v5[75] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[76] = v11;
  v5[77] = v10;

  return MEMORY[0x2822009F8](DaemonPersister.replaceGroupMembers(identifier:newMembers:clientIdentifier:), v11, v10);
}

uint64_t DaemonPersister.replaceGroupMembers(identifier:newMembers:clientIdentifier:)()
{
  v102 = v0;
  v1 = (*(**(v0 + 488) + 264))();
  *(v0 + 624) = OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_logger;

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  if (v1)
  {
    if (v4)
    {
      v5 = *(v0 + 576);
      v7 = *(v0 + 464);
      v6 = *(v0 + 472);
      v8 = *(v0 + 456);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v101[0] = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, v101);
      *(v9 + 12) = 2080;
      v11 = MEMORY[0x266756AF0](v6, v5);
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v101);

      *(v9 + 14) = v13;
      _os_log_impl(&dword_26524C000, v2, v3, "DaemonPersister replaceGroupMembers using persistence mode. { identifier: %s, newMembers: %s }", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v10, -1, -1);
      MEMORY[0x2667577B0](v9, -1, -1);
    }

    if ((*(**(v0 + 488) + 192))())
    {
      type metadata accessor for MLS.UniqueClientIdentifier();
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D008]);
      v14 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v99 = v15;
      v44 = v14;
      v45 = *(v0 + 472);
      v46 = *(v45 + 16);
      v47 = MEMORY[0x277D84F90];
      if (v46)
      {
        v48 = *(v0 + 584);
        v49 = *(v0 + 552);
        v50 = *(v0 + 528);
        v51 = *(v0 + 504);
        v101[0] = MEMORY[0x277D84F90];
        v96 = v46;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v46, 0);
        v47 = v101[0];
        v52 = *(v48 + 16);
        v48 += 16;
        v53 = v45 + ((*(v48 + 64) + 32) & ~*(v48 + 64));
        v89 = (v50 + 8);
        v90 = v52;
        v91 = (v48 - 8);
        v92 = (v49 + 8);
        v93 = v44;
        v87 = *(v48 + 56);
        v88 = (v51 + 8);
        do
        {
          v98 = v47;
          v54 = *(v0 + 568);
          v55 = *(v0 + 544);
          v56 = *(v0 + 536);
          v57 = *(v0 + 520);
          v95 = v53;
          v90(*(v0 + 592));
          MLS.PersistedMember.member.getter();
          MLS.AllMember.uri.getter();
          v58 = *v92;
          v59 = (*v92)(v54, v55);
          v60 = MEMORY[0x266756630](v59);
          v97 = v61;
          (*v89)(v56, v57);
          MLS.PersistedMember.member.getter();
          v62 = MLS.AllMember.dataRepresentation.getter();
          v94 = v63;
          v64 = *(v0 + 592);
          v65 = *(v0 + 576);
          v66 = *(v0 + 512);
          v67 = *(v0 + 496);
          v58(*(v0 + 560), *(v0 + 544));
          MLS.PersistedMember.state.getter();
          v68 = MLS.PersistedMember.MemberState.rawValue.getter();
          (*v88)(v66, v67);
          (*v91)(v64, v65);

          v44 = v93;
          outlined copy of Data._Representation(v93, v99);
          v47 = v98;
          v101[0] = v98;
          v70 = *(v98 + 16);
          v69 = *(v98 + 24);
          if (v70 >= v69 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v70 + 1, 1);
            v47 = v101[0];
          }

          v72 = *(v0 + 456);
          v71 = *(v0 + 464);
          *(v47 + 16) = v70 + 1;
          v73 = v47 + 72 * v70;
          *(v73 + 32) = v93;
          *(v73 + 40) = v99;
          *(v73 + 48) = v72;
          *(v73 + 56) = v71;
          *(v73 + 64) = v60;
          *(v73 + 72) = v97;
          *(v73 + 80) = v62;
          *(v73 + 88) = v94;
          *(v73 + 96) = v68;
          *(v73 + 100) = 0;
          v53 = v95 + v87;
          --v96;
        }

        while (v96);
      }

      *(v0 + 632) = v47;

      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v74, v75))
      {
        v77 = *(v0 + 456);
        v76 = *(v0 + 464);
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v101[0] = v79;
        *v78 = 136315138;
        *(v78 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v76, v101);
        _os_log_impl(&dword_26524C000, v74, v75, "DaemonPersister replaceGroupMembers clearing old members { group: %s }", v78, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v79);
        MEMORY[0x2667577B0](v79, -1, -1);
        MEMORY[0x2667577B0](v78, -1, -1);
      }

      v80 = *(v0 + 488);
      v81 = *(v0 + 456);
      v82 = *(v0 + 464);
      *(v0 + 16) = v44;
      *(v0 + 24) = v99;
      *(v0 + 32) = v81;
      *(v0 + 40) = v82;
      *(v0 + 48) = 0;
      *(v0 + 56) = 0;
      *(v0 + 64) = 0;
      *(v0 + 72) = 0xF000000000000000;
      *(v0 + 80) = 0;
      *(v0 + 84) = 1;
      *(v0 + 640) = *(v80 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);
      *(v0 + 400) = &type metadata for GroupMemberModel;
      *(v0 + 408) = &protocol witness table for GroupMemberModel;
      v83 = swift_allocObject();
      *(v0 + 376) = v83;
      v84 = *(v0 + 32);
      v85 = *(v0 + 64);
      *(v83 + 48) = *(v0 + 48);
      *(v83 + 64) = v85;
      *(v83 + 77) = *(v0 + 77);
      *(v83 + 16) = *(v0 + 16);
      *(v83 + 32) = v84;

      outlined init with copy of GroupMemberModel(v0 + 16, v0 + 88);
      v86 = swift_task_alloc();
      *(v0 + 648) = v86;
      *v86 = v0;
      v86[1] = DaemonPersister.replaceGroupMembers(identifier:newMembers:clientIdentifier:);

      return SqliteStore.delete(_:)(v0 + 376);
    }

    else
    {

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = *(v0 + 576);
        v35 = *(v0 + 464);
        v34 = *(v0 + 472);
        v36 = *(v0 + 456);
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v101[0] = v38;
        *v37 = 136315394;
        *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v35, v101);
        *(v37 + 12) = 2080;
        v39 = MEMORY[0x266756AF0](v34, v33);
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v101);

        *(v37 + 14) = v41;
        _os_log_impl(&dword_26524C000, v31, v32, "DaemonPersister replaceGroupMembers called outside atomically block { identifier: %s, newMembers: %s }", v37, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2667577B0](v38, -1, -1);
        MEMORY[0x2667577B0](v37, -1, -1);
      }

      lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
      swift_allocError();
      *v42 = 6;
      *(v42 + 8) = 0;
      *(v42 + 16) = 0;
      swift_willThrow();

      v43 = *(v0 + 8);

      return v43();
    }
  }

  else
  {
    if (v4)
    {
      v16 = *(v0 + 576);
      v18 = *(v0 + 464);
      v17 = *(v0 + 472);
      v19 = *(v0 + 456);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v101[0] = v21;
      *v20 = 136315394;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v18, v101);
      *(v20 + 12) = 2080;
      v22 = MEMORY[0x266756AF0](v17, v16);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v101);

      *(v20 + 14) = v24;
      _os_log_impl(&dword_26524C000, v2, v3, "DaemonPersister replaceGroupMembers using inMemory mode { group: %s, newMembers: %s }", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v21, -1, -1);
      MEMORY[0x2667577B0](v20, -1, -1);
    }

    *(v0 + 688) = (*(**(v0 + 488) + 168))();
    v100 = (*MEMORY[0x277D4CE30] + MEMORY[0x277D4CE30]);
    v25 = swift_task_alloc();
    *(v0 + 696) = v25;
    *v25 = v0;
    v25[1] = DaemonPersister.replaceGroupMembers(identifier:newMembers:clientIdentifier:);
    v26 = *(v0 + 472);
    v27 = *(v0 + 480);
    v29 = *(v0 + 456);
    v28 = *(v0 + 464);

    return v100(v29, v28, v26, v27);
  }
}

{
  v2 = *v1;
  *(*v1 + 656) = v0;

  if (v0)
  {

    v3 = v2[77];
    v4 = v2[76];
    v5 = DaemonPersister.replaceGroupMembers(identifier:newMembers:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 47);
    v3 = v2[77];
    v4 = v2[76];
    v5 = DaemonPersister.replaceGroupMembers(identifier:newMembers:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v16 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 456);
    v3 = *(v0 + 464);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v15);
    _os_log_impl(&dword_26524C000, v1, v2, "DaemonPersister replaceGroupMembers inserting members { group: %s }", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x2667577B0](v6, -1, -1);
    MEMORY[0x2667577B0](v5, -1, -1);
  }

  v7 = *(v0 + 632);
  if (*(v7 + 16))
  {
    *(v0 + 664) = 0;
    *(v0 + 160) = *(v7 + 32);
    v8 = *(v7 + 48);
    v9 = *(v7 + 64);
    v10 = *(v7 + 80);
    *(v0 + 221) = *(v7 + 93);
    *(v0 + 192) = v9;
    *(v0 + 208) = v10;
    *(v0 + 176) = v8;
    *(v0 + 440) = &type metadata for GroupMemberModel;
    *(v0 + 448) = &protocol witness table for GroupMemberModel;
    v11 = swift_allocObject();
    *(v0 + 416) = v11;
    memmove((v11 + 16), (v7 + 32), 0x45uLL);
    outlined init with copy of GroupMemberModel(v0 + 160, v0 + 232);
    outlined init with copy of GroupMemberModel(v0 + 160, v0 + 304);
    v12 = swift_task_alloc();
    *(v0 + 672) = v12;
    *v12 = v0;
    v12[1] = DaemonPersister.replaceGroupMembers(identifier:newMembers:clientIdentifier:);

    return SqliteStore.insert(_:)(v0 + 416);
  }

  else
  {

    outlined destroy of GroupMemberModel(v0 + 16);

    v14 = *(v0 + 8);

    return v14();
  }
}

{
  v2 = *v1;
  *(*v1 + 680) = v0;

  if (v0)
  {

    v3 = v2[77];
    v4 = v2[76];
    v5 = DaemonPersister.replaceGroupMembers(identifier:newMembers:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 52);
    v3 = v2[77];
    v4 = v2[76];
    v5 = DaemonPersister.replaceGroupMembers(identifier:newMembers:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = *(v0 + 632);
  v2 = *(v0 + 664) + 1;
  result = outlined destroy of GroupMemberModel(v0 + 160);
  v4 = *(v1 + 16);
  if (v2 == v4)
  {

    outlined destroy of GroupMemberModel(v0 + 16);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v6 = *(v0 + 664) + 1;
    *(v0 + 664) = v6;
    if (v6 >= v4)
    {
      __break(1u);
    }

    else
    {
      v7 = *(v0 + 632) + 72 * v6;
      *(v0 + 160) = *(v7 + 32);
      v8 = *(v7 + 48);
      v9 = *(v7 + 64);
      v10 = *(v7 + 80);
      *(v0 + 221) = *(v7 + 93);
      *(v0 + 192) = v9;
      *(v0 + 208) = v10;
      *(v0 + 176) = v8;
      *(v0 + 440) = &type metadata for GroupMemberModel;
      *(v0 + 448) = &protocol witness table for GroupMemberModel;
      v11 = swift_allocObject();
      *(v0 + 416) = v11;
      memmove((v11 + 16), (v7 + 32), 0x45uLL);
      outlined init with copy of GroupMemberModel(v0 + 160, v0 + 232);
      outlined init with copy of GroupMemberModel(v0 + 160, v0 + 304);
      v12 = swift_task_alloc();
      *(v0 + 672) = v12;
      *v12 = v0;
      v12[1] = DaemonPersister.replaceGroupMembers(identifier:newMembers:clientIdentifier:);

      return SqliteStore.insert(_:)(v0 + 416);
    }
  }

  return result;
}

{
  v2 = *v1;
  *(*v1 + 704) = v0;

  if (v0)
  {
    v3 = *(v2 + 616);
    v4 = *(v2 + 608);
    v5 = DaemonPersister.replaceGroupMembers(identifier:newMembers:clientIdentifier:);
  }

  else
  {

    v3 = *(v2 + 616);
    v4 = *(v2 + 608);
    v5 = DaemonPersister.replaceGroupMembers(identifier:newMembers:clientIdentifier:);
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

{
  outlined destroy of GroupMemberModel(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 376));

  v1 = *(v0 + 8);

  return v1();
}

{
  outlined destroy of GroupMemberModel(v0 + 16);
  outlined destroy of GroupMemberModel(v0 + 160);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 416));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DaemonPersister.loadRetryCount(forGroup:messageID:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  type metadata accessor for MLSActor();
  v6[14] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[15] = v8;
  v6[16] = v7;

  return MEMORY[0x2822009F8](DaemonPersister.loadRetryCount(forGroup:messageID:clientIdentifier:), v8, v7);
}

uint64_t DaemonPersister.loadRetryCount(forGroup:messageID:clientIdentifier:)()
{
  v33 = v0;
  v1 = (*(**(v0 + 104) + 264))();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  if (v1)
  {
    if (v4)
    {
      v6 = *(v0 + 80);
      v5 = *(v0 + 88);
      v8 = *(v0 + 64);
      v7 = *(v0 + 72);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v32[0] = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, v32);
      *(v9 + 12) = 2080;
      *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, v32);
      _os_log_impl(&dword_26524C000, v2, v3, "loadRetryCount saveGroupClientContextBlob using persistence mode { group: %s, messageID: %s }", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v10, -1, -1);
      MEMORY[0x2667577B0](v9, -1, -1);
    }

    type metadata accessor for MLS.UniqueClientIdentifier();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D008]);
    v11 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    *(v0 + 136) = v11;
    *(v0 + 144) = v12;
    v26 = *(v0 + 80);
    v27 = *(v0 + 88);
    v29 = *(v0 + 64);
    v28 = *(v0 + 72);
    *(v0 + 16) = v11;
    *(v0 + 24) = v12;
    *(v0 + 32) = v29;
    *(v0 + 40) = v28;
    *(v0 + 48) = v26;
    *(v0 + 56) = v27;

    v30 = swift_task_alloc();
    *(v0 + 152) = v30;
    *v30 = v0;
    v30[1] = DaemonPersister.loadRetryCount(forGroup:messageID:clientIdentifier:);

    return specialized SqliteStore.query<A>(_:)(v0 + 16);
  }

  else
  {
    if (v4)
    {
      v14 = *(v0 + 80);
      v13 = *(v0 + 88);
      v16 = *(v0 + 64);
      v15 = *(v0 + 72);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v32[0] = v18;
      *v17 = 136315394;
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, v32);
      *(v17 + 12) = 2080;
      *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, v32);
      _os_log_impl(&dword_26524C000, v2, v3, "DaemonPersister loadRetryCount using inMemory mode { group: %s, messageID: %s }", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v18, -1, -1);
      MEMORY[0x2667577B0](v17, -1, -1);
    }

    *(v0 + 176) = (*(**(v0 + 104) + 168))();
    v31 = (*MEMORY[0x277D4CE08] + MEMORY[0x277D4CE08]);
    v19 = swift_task_alloc();
    *(v0 + 184) = v19;
    *v19 = v0;
    v19[1] = DaemonPersister.loadRetryCount(forGroup:messageID:clientIdentifier:);
    v20 = *(v0 + 88);
    v21 = *(v0 + 96);
    v22 = *(v0 + 72);
    v23 = *(v0 + 80);
    v24 = *(v0 + 64);

    return v31(v24, v22, v23, v20, v21);
  }
}

{
  v1 = v0[20];

  v2 = *(v1 + 16);
  v3 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  if (v2)
  {
    v6 = *(v3 + 32);
    v7 = *(v3 + 40);
    v11 = *(v3 + 80);
    outlined copy of Data._Representation(v6, v7);

    outlined consume of Data._Representation(v5, v4);

    outlined consume of Data._Representation(v6, v7);

    v8 = v11;
  }

  else
  {
    outlined consume of Data._Representation(v0[17], v0[18]);

    v8 = 0;
  }

  v9 = v0[1];

  return v9(v8, v2 == 0);
}

{

  v1 = *(v0 + 200);
  v2 = *(v0 + 8);
  v3 = *(v0 + 208) & 1;

  return v2(v1, v3);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[17];
  v2 = v0[18];

  outlined consume of Data._Representation(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t DaemonPersister.loadRetryCount(forGroup:messageID:clientIdentifier:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 160) = a1;
  *(v4 + 168) = v1;

  v5 = *(v3 + 128);
  v6 = *(v3 + 120);
  if (v1)
  {
    v7 = DaemonPersister.loadRetryCount(forGroup:messageID:clientIdentifier:);
  }

  else
  {
    v7 = DaemonPersister.loadRetryCount(forGroup:messageID:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t DaemonPersister.loadRetryCount(forGroup:messageID:clientIdentifier:)(uint64_t a1, char a2)
{
  v6 = *v3;
  *(*v3 + 192) = v2;

  if (v2)
  {
    v7 = *(v6 + 120);
    v8 = *(v6 + 128);
    v9 = DaemonPersister.loadRetryCount(forGroup:messageID:clientIdentifier:);
  }

  else
  {

    *(v6 + 208) = a2;
    *(v6 + 200) = a1;
    v7 = *(v6 + 120);
    v8 = *(v6 + 128);
    v9 = DaemonPersister.loadRetryCount(forGroup:messageID:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t DaemonPersister.save(retryCount:forGroup:messageID:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[28] = a6;
  v7[29] = v6;
  v7[26] = a4;
  v7[27] = a5;
  v7[24] = a2;
  v7[25] = a3;
  v7[23] = a1;
  v8 = type metadata accessor for Date();
  v7[30] = v8;
  v7[31] = *(v8 - 8);
  v7[32] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v7[33] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[34] = v10;
  v7[35] = v9;

  return MEMORY[0x2822009F8](DaemonPersister.save(retryCount:forGroup:messageID:clientIdentifier:), v10, v9);
}

uint64_t DaemonPersister.save(retryCount:forGroup:messageID:clientIdentifier:)()
{
  v59 = v0;
  v1 = (*(**(v0 + 232) + 264))();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  if (v1)
  {
    if (v4)
    {
      v5 = *(v0 + 208);
      v7 = *(v0 + 192);
      v6 = *(v0 + 200);
      v54 = *(v0 + 216);
      v55 = *(v0 + 184);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v58[0] = v9;
      *v8 = 136315650;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, v58);
      *(v8 + 12) = 2080;
      *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v54, v58);
      *(v8 + 22) = 2048;
      *(v8 + 24) = v55;
      _os_log_impl(&dword_26524C000, v2, v3, "DaemonPersister saveRetryCount using persistence mode { group: %s, messageID: %s, retryCount: %ld }", v8, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v9, -1, -1);
      MEMORY[0x2667577B0](v8, -1, -1);
    }

    if ((*(**(v0 + 232) + 192))())
    {
      type metadata accessor for MLS.UniqueClientIdentifier();
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D008]);
      result = dispatch thunk of JSONEncoder.encode<A>(_:)();
      *(v0 + 288) = result;
      *(v0 + 296) = v11;
      v36 = *(v0 + 184);
      if (v36 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v36 <= 0x7FFFFFFF)
      {
        v38 = *(v0 + 248);
        v37 = *(v0 + 256);
        v39 = *(v0 + 240);
        v40 = result;
        v41 = v11;
        outlined copy of Data._Representation(result, v11);
        Date.init()();
        Date.timeIntervalSince1970.getter();
        v43 = v42;
        v44 = v42;
        result = (*(v38 + 8))(v37, v39);
        if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v43 > -9.22337204e18)
          {
            if (v43 < 9.22337204e18)
            {
              v45 = v40;
              v46 = *(v0 + 208);
              v47 = *(v0 + 216);
              v48 = *(v0 + 192);
              v49 = *(v0 + 200);
              *(v0 + 16) = v45;
              *(v0 + 24) = v41;
              *(v0 + 32) = v48;
              *(v0 + 40) = v49;
              *(v0 + 48) = v46;
              *(v0 + 56) = v47;
              *(v0 + 64) = v36;
              *(v0 + 72) = v43;
              *(v0 + 168) = &type metadata for FailureToDecryptRetryModel;
              *(v0 + 176) = &protocol witness table for FailureToDecryptRetryModel;
              v50 = swift_allocObject();
              *(v0 + 144) = v50;
              v51 = *(v0 + 32);
              v50[1] = *(v0 + 16);
              v50[2] = v51;
              v52 = *(v0 + 64);
              v50[3] = *(v0 + 48);
              v50[4] = v52;

              outlined init with copy of FailureToDecryptRetryModel(v0 + 16, v0 + 80);
              v53 = swift_task_alloc();
              *(v0 + 304) = v53;
              *v53 = v0;
              v53[1] = DaemonPersister.save(retryCount:forGroup:messageID:clientIdentifier:);

              return SqliteStore.insert(_:)(v0 + 144);
            }

LABEL_28:
            __break(1u);
            return result;
          }

LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      __break(1u);
      goto LABEL_26;
    }

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v28 = *(v0 + 208);
      v27 = *(v0 + 216);
      v30 = *(v0 + 192);
      v29 = *(v0 + 200);
      v31 = *(v0 + 184);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v58[0] = v33;
      *v32 = 136315650;
      *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v29, v58);
      *(v32 + 12) = 2080;
      *(v32 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v27, v58);
      *(v32 + 22) = 2048;
      *(v32 + 24) = v31;
      _os_log_impl(&dword_26524C000, v25, v26, "DaemonPersister saveRetryCount called outside atomically block { group: %s, messageID: %s, retryCount: %ld }", v32, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v33, -1, -1);
      MEMORY[0x2667577B0](v32, -1, -1);
    }

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v34 = 6;
    *(v34 + 8) = 0;
    *(v34 + 16) = 0;
    swift_willThrow();

    v35 = *(v0 + 8);

    return v35();
  }

  else
  {
    if (v4)
    {
      v13 = *(v0 + 208);
      v12 = *(v0 + 216);
      v15 = *(v0 + 192);
      v14 = *(v0 + 200);
      v56 = *(v0 + 184);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v58[0] = v17;
      *v16 = 136315650;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, v58);
      *(v16 + 12) = 2080;
      *(v16 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, v58);
      *(v16 + 22) = 2048;
      *(v16 + 24) = v56;
      _os_log_impl(&dword_26524C000, v2, v3, "DaemonPersister saveRetryCount using inMemory mode { group: %s, messageID: %s, retryCount: %ld }", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v17, -1, -1);
      MEMORY[0x2667577B0](v16, -1, -1);
    }

    *(v0 + 320) = (*(**(v0 + 232) + 168))();
    v57 = (*MEMORY[0x277D4CE68] + MEMORY[0x277D4CE68]);
    v18 = swift_task_alloc();
    *(v0 + 328) = v18;
    *v18 = v0;
    v18[1] = DaemonPersister.save(retryCount:forGroup:messageID:clientIdentifier:);
    v19 = *(v0 + 216);
    v20 = *(v0 + 224);
    v21 = *(v0 + 200);
    v22 = *(v0 + 208);
    v24 = *(v0 + 184);
    v23 = *(v0 + 192);

    return v57(v24, v23, v21, v22, v19, v20);
  }
}

{
  v2 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = v2[34];
    v4 = v2[35];
    v5 = DaemonPersister.save(retryCount:forGroup:messageID:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 18);
    v3 = v2[34];
    v4 = v2[35];
    v5 = DaemonPersister.save(retryCount:forGroup:messageID:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{
  v1 = v0[36];
  v2 = v0[37];

  outlined destroy of FailureToDecryptRetryModel((v0 + 2));
  outlined consume of Data._Representation(v1, v2);

  v3 = v0[1];

  return v3();
}

{
  v2 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = *(v2 + 272);
    v4 = *(v2 + 280);
    v5 = DaemonPersister.save(retryCount:forGroup:messageID:clientIdentifier:);
  }

  else
  {

    v3 = *(v2 + 272);
    v4 = *(v2 + 280);
    v5 = DaemonPersister.save(retryCount:forGroup:messageID:clientIdentifier:);
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

{
  outlined consume of Data._Representation(v0[36], v0[37]);
  outlined destroy of FailureToDecryptRetryModel((v0 + 2));

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 18);

  v1 = v0[1];

  return v1();
}

uint64_t DaemonPersister.deleteGroup(identifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[48] = a3;
  v4[49] = v3;
  v4[46] = a1;
  v4[47] = a2;
  type metadata accessor for MLSActor();
  v4[50] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[51] = v6;
  v4[52] = v5;

  return MEMORY[0x2822009F8](DaemonPersister.deleteGroup(identifier:clientIdentifier:), v6, v5);
}

uint64_t DaemonPersister.deleteGroup(identifier:clientIdentifier:)()
{
  v39 = v0;
  v1 = (*(**(v0 + 392) + 264))();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  if (v1)
  {
    if (v4)
    {
      v6 = *(v0 + 368);
      v5 = *(v0 + 376);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v38[0] = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, v38);
      _os_log_impl(&dword_26524C000, v2, v3, "DaemonPersister deleteGroup using persistence mode { identifier: %s }", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x2667577B0](v8, -1, -1);
      MEMORY[0x2667577B0](v7, -1, -1);
    }

    if ((*(**(v0 + 392) + 192))())
    {
      type metadata accessor for MLS.UniqueClientIdentifier();
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D008]);
      v9 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      *(v0 + 424) = v9;
      *(v0 + 432) = v10;
      v28 = *(v0 + 392);
      v29 = *(v0 + 368);
      v30 = *(v0 + 376);
      *(v0 + 16) = v9;
      *(v0 + 24) = v10;
      *(v0 + 32) = v29;
      *(v0 + 40) = v30;
      *(v0 + 48) = 0;
      *(v0 + 56) = 0;
      *(v0 + 64) = 0;
      *(v0 + 72) = 0xF000000000000000;
      *(v0 + 80) = 0;
      *(v0 + 84) = 1;
      *(v0 + 440) = *(v28 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_store);
      *(v0 + 312) = &type metadata for GroupMemberModel;
      *(v0 + 320) = &protocol witness table for GroupMemberModel;
      v31 = v9;
      v32 = v10;
      v33 = swift_allocObject();
      *(v0 + 288) = v33;
      v34 = *(v0 + 32);
      v35 = *(v0 + 64);
      *(v33 + 48) = *(v0 + 48);
      *(v33 + 64) = v35;
      *(v33 + 77) = *(v0 + 77);
      *(v33 + 16) = *(v0 + 16);
      *(v33 + 32) = v34;

      outlined copy of Data._Representation(v31, v32);
      outlined init with copy of GroupMemberModel(v0 + 16, v0 + 88);
      v36 = swift_task_alloc();
      *(v0 + 448) = v36;
      *v36 = v0;
      v36[1] = DaemonPersister.deleteGroup(identifier:clientIdentifier:);

      return SqliteStore.delete(_:)(v0 + 288);
    }

    else
    {

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v23 = *(v0 + 368);
        v22 = *(v0 + 376);
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v38[0] = v25;
        *v24 = 136315138;
        *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, v38);
        _os_log_impl(&dword_26524C000, v20, v21, "DaemonPersister deleteGroup called outside atomically block { identifier: %s }", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v25);
        MEMORY[0x2667577B0](v25, -1, -1);
        MEMORY[0x2667577B0](v24, -1, -1);
      }

      lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
      swift_allocError();
      *v26 = 6;
      *(v26 + 8) = 0;
      *(v26 + 16) = 0;
      swift_willThrow();
      v27 = *(v0 + 8);

      return v27();
    }
  }

  else
  {
    if (v4)
    {
      v12 = *(v0 + 368);
      v11 = *(v0 + 376);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v38[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, v38);
      _os_log_impl(&dword_26524C000, v2, v3, "DaemonPersister deleteGroup using inMemory mode { identifier: %s }", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x2667577B0](v14, -1, -1);
      MEMORY[0x2667577B0](v13, -1, -1);
    }

    *(v0 + 480) = (*(**(v0 + 392) + 168))();
    v37 = (*MEMORY[0x277D4CDF8] + MEMORY[0x277D4CDF8]);
    v15 = swift_task_alloc();
    *(v0 + 488) = v15;
    *v15 = v0;
    v15[1] = DaemonPersister.deleteGroup(identifier:clientIdentifier:);
    v16 = *(v0 + 376);
    v17 = *(v0 + 384);
    v18 = *(v0 + 368);

    return v37(v18, v16, v17);
  }
}

{
  v2 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    outlined consume of Data._Representation(v2[53], v2[54]);
    v3 = v2[51];
    v4 = v2[52];
    v5 = DaemonPersister.deleteGroup(identifier:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 36);
    v3 = v2[51];
    v4 = v2[52];
    v5 = DaemonPersister.deleteGroup(identifier:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{
  v1 = *(v0 + 424);
  v2 = *(v0 + 432);
  v3 = *(v0 + 368);
  v4 = *(v0 + 376);
  *(v0 + 160) = v1;
  *(v0 + 168) = v2;
  *(v0 + 176) = v3;
  *(v0 + 184) = v4;
  *(v0 + 192) = xmmword_2653419D0;
  *(v0 + 208) = xmmword_2653419D0;
  *(v0 + 352) = &type metadata for SecureMessagingGroupModel;
  *(v0 + 360) = &protocol witness table for SecureMessagingGroupModel;
  v5 = swift_allocObject();
  *(v0 + 328) = v5;
  v6 = *(v0 + 176);
  v7 = *(v0 + 192);
  v5[1] = *(v0 + 160);
  v5[2] = v6;
  v8 = *(v0 + 208);
  v5[3] = v7;
  v5[4] = v8;

  outlined copy of Data._Representation(v1, v2);
  outlined init with copy of SecureMessagingGroupModel(v0 + 160, v0 + 224);
  v9 = swift_task_alloc();
  *(v0 + 464) = v9;
  *v9 = v0;
  v9[1] = DaemonPersister.deleteGroup(identifier:clientIdentifier:);

  return SqliteStore.delete(_:)(v0 + 328);
}

{
  v2 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    outlined consume of Data._Representation(v2[53], v2[54]);
    v3 = v2[51];
    v4 = v2[52];
    v5 = DaemonPersister.deleteGroup(identifier:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 41);
    v3 = v2[51];
    v4 = v2[52];
    v5 = DaemonPersister.deleteGroup(identifier:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{
  v1 = v0[53];
  v2 = v0[54];

  outlined destroy of SecureMessagingGroupModel((v0 + 20));
  outlined destroy of GroupMemberModel((v0 + 2));
  outlined consume of Data._Representation(v1, v2);
  v3 = v0[1];

  return v3();
}

{
  v2 = *v1;
  *(*v1 + 496) = v0;

  if (v0)
  {
    v3 = *(v2 + 408);
    v4 = *(v2 + 416);
    v5 = DaemonPersister.deleteGroup(identifier:clientIdentifier:);
  }

  else
  {

    v3 = *(v2 + 408);
    v4 = *(v2 + 416);
    v5 = DaemonPersister.deleteGroup(identifier:clientIdentifier:);
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

{
  outlined destroy of GroupMemberModel(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 288));
  v1 = *(v0 + 8);

  return v1();
}

{
  outlined destroy of GroupMemberModel(v0 + 16);
  outlined destroy of SecureMessagingGroupModel(v0 + 160);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 328));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t DaemonPersister.deleteSecureMessagingGroup(identifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[27] = a3;
  v4[28] = v3;
  v4[25] = a1;
  v4[26] = a2;
  type metadata accessor for MLSActor();
  v4[29] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[30] = v6;
  v4[31] = v5;

  return MEMORY[0x2822009F8](DaemonPersister.deleteSecureMessagingGroup(identifier:clientIdentifier:), v6, v5);
}

uint64_t DaemonPersister.deleteSecureMessagingGroup(identifier:clientIdentifier:)()
{
  v38 = v0;
  v1 = (*(**(v0 + 224) + 264))();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  if (v1)
  {
    if (v4)
    {
      v6 = *(v0 + 200);
      v5 = *(v0 + 208);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v37[0] = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, v37);
      _os_log_impl(&dword_26524C000, v2, v3, "DaemonPersister deleteSecureMessagingGroup using persistence mode { identifier: %s }", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x2667577B0](v8, -1, -1);
      MEMORY[0x2667577B0](v7, -1, -1);
    }

    if ((*(**(v0 + 224) + 192))())
    {
      type metadata accessor for MLS.UniqueClientIdentifier();
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D008]);
      v9 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      *(v0 + 256) = v9;
      *(v0 + 264) = v10;
      v28 = *(v0 + 200);
      v29 = *(v0 + 208);
      *(v0 + 16) = v9;
      *(v0 + 24) = v10;
      *(v0 + 32) = v28;
      *(v0 + 40) = v29;
      *(v0 + 48) = 0;
      *(v0 + 56) = 0;
      *(v0 + 64) = 0;
      *(v0 + 72) = 0xF000000000000000;
      *(v0 + 80) = 0;
      *(v0 + 84) = 1;
      *(v0 + 184) = &type metadata for GroupMemberModel;
      *(v0 + 192) = &protocol witness table for GroupMemberModel;
      v30 = v9;
      v31 = v10;
      v32 = swift_allocObject();
      *(v0 + 160) = v32;
      v33 = *(v0 + 32);
      v34 = *(v0 + 64);
      *(v32 + 48) = *(v0 + 48);
      *(v32 + 64) = v34;
      *(v32 + 77) = *(v0 + 77);
      *(v32 + 16) = *(v0 + 16);
      *(v32 + 32) = v33;

      outlined copy of Data._Representation(v30, v31);
      outlined init with copy of GroupMemberModel(v0 + 16, v0 + 88);
      v35 = swift_task_alloc();
      *(v0 + 272) = v35;
      *v35 = v0;
      v35[1] = DaemonPersister.deleteSecureMessagingGroup(identifier:clientIdentifier:);

      return SqliteStore.delete(_:)(v0 + 160);
    }

    else
    {

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v23 = *(v0 + 200);
        v22 = *(v0 + 208);
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v37[0] = v25;
        *v24 = 136315138;
        *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, v37);
        _os_log_impl(&dword_26524C000, v20, v21, "DaemonPersister deleteSecureMessagingGroup called outside atomically block { identifier: %s }", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v25);
        MEMORY[0x2667577B0](v25, -1, -1);
        MEMORY[0x2667577B0](v24, -1, -1);
      }

      lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
      swift_allocError();
      *v26 = 6;
      *(v26 + 8) = 0;
      *(v26 + 16) = 0;
      swift_willThrow();
      v27 = *(v0 + 8);

      return v27();
    }
  }

  else
  {
    if (v4)
    {
      v12 = *(v0 + 200);
      v11 = *(v0 + 208);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v37[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, v37);
      _os_log_impl(&dword_26524C000, v2, v3, "DaemonPersister deleteSecureMessagingGroup using inMemory mode { identifier: %s }", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x2667577B0](v14, -1, -1);
      MEMORY[0x2667577B0](v13, -1, -1);
    }

    *(v0 + 288) = (*(**(v0 + 224) + 168))();
    v36 = (*MEMORY[0x277D4CDE0] + MEMORY[0x277D4CDE0]);
    v15 = swift_task_alloc();
    *(v0 + 296) = v15;
    *v15 = v0;
    v15[1] = DaemonPersister.deleteSecureMessagingGroup(identifier:clientIdentifier:);
    v16 = *(v0 + 208);
    v17 = *(v0 + 216);
    v18 = *(v0 + 200);

    return v36(v18, v16, v17);
  }
}

{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    outlined consume of Data._Representation(v2[32], v2[33]);
    v3 = v2[30];
    v4 = v2[31];
    v5 = DaemonPersister.deleteSecureMessagingGroup(identifier:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 20);
    v3 = v2[30];
    v4 = v2[31];
    v5 = DaemonPersister.deleteSecureMessagingGroup(identifier:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{
  v1 = v0[32];
  v2 = v0[33];

  outlined destroy of GroupMemberModel((v0 + 2));
  outlined consume of Data._Representation(v1, v2);
  v3 = v0[1];

  return v3();
}

{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = *(v2 + 240);
    v4 = *(v2 + 248);
    v5 = DaemonPersister.deleteSecureMessagingGroup(identifier:clientIdentifier:);
  }

  else
  {

    v3 = *(v2 + 240);
    v4 = *(v2 + 248);
    v5 = DaemonPersister.deleteSecureMessagingGroup(identifier:clientIdentifier:);
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

{
  outlined destroy of GroupMemberModel(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 160));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t DaemonPersister.save(outgoingEventUpdate:forGroup:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[101] = v4;
  v5[100] = a4;
  v5[99] = a3;
  v5[98] = a2;
  v5[97] = a1;
  v6 = type metadata accessor for MLS.OutgoingEventState();
  v5[102] = v6;
  v5[103] = *(v6 - 8);
  v5[104] = swift_task_alloc();
  v7 = type metadata accessor for MLS.GroupVersion();
  v5[105] = v7;
  v5[106] = *(v7 - 8);
  v5[107] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
  v5[108] = swift_task_alloc();
  v5[109] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v5[110] = v8;
  v5[111] = *(v8 - 8);
  v5[112] = swift_task_alloc();
  v9 = type metadata accessor for MLS.UniqueClientIdentifier();
  v5[113] = v9;
  v5[114] = *(v9 - 8);
  v5[115] = swift_task_alloc();
  v5[116] = swift_task_alloc();
  v10 = type metadata accessor for MLS.OutgoingEventUpdate();
  v5[117] = v10;
  v5[118] = *(v10 - 8);
  v5[119] = swift_task_alloc();
  v5[120] = swift_task_alloc();
  v5[121] = swift_task_alloc();
  v5[122] = swift_task_alloc();
  v5[123] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v5[124] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[125] = v12;
  v5[126] = v11;

  return MEMORY[0x2822009F8](DaemonPersister.save(outgoingEventUpdate:forGroup:clientIdentifier:), v12, v11);
}

uint64_t DaemonPersister.save(outgoingEventUpdate:forGroup:clientIdentifier:)()
{
  v177 = v0;
  v1 = *(v0 + 944);
  v2 = (*(**(v0 + 808) + 264))();
  v3 = *(v1 + 16);
  v4 = *(v0 + 936);
  if (v2)
  {
    v5 = *(v0 + 928);
    v6 = *(v0 + 912);
    v7 = *(v0 + 904);
    v8 = *(v0 + 800);
    v3(*(v0 + 984), *(v0 + 776), v4);
    v162 = *(v6 + 16);
    v162(v5, v8, v7);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    log = v9;
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 984);
    v170 = v3;
    if (v11)
    {
      v13 = *(v0 + 976);
      v153 = v10;
      v14 = *(v0 + 944);
      v15 = *(v0 + 936);
      v159 = *(v0 + 928);
      v16 = *(v0 + 912);
      v146 = *(v0 + 792);
      v147 = *(v0 + 904);
      v145 = *(v0 + 784);
      v17 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      v176[0] = v150;
      *v17 = 136315650;
      v3(v13, v12, v15);
      v18 = String.init<A>(describing:)();
      v20 = v19;
      v21 = *(v14 + 8);
      v21(v12, v15);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v176);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2080;
      *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v145, v146, v176);
      *(v17 + 22) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v23 = v159;
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      v160 = *(v16 + 8);
      v160(v23, v147);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v176);

      *(v17 + 24) = v27;
      _os_log_impl(&dword_26524C000, log, v153, "DaemonPersister saveOutgoingEventUpdate using persistence mode { outgoingEventUpdate: %s, group: %s, client: %s }", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v150, -1, -1);
      MEMORY[0x2667577B0](v17, -1, -1);
    }

    else
    {
      v41 = *(v0 + 944);
      v42 = *(v0 + 936);
      v43 = *(v0 + 928);
      v44 = *(v0 + 912);
      v45 = *(v0 + 904);

      v160 = *(v44 + 8);
      v160(v43, v45);
      v21 = *(v41 + 8);
      v28 = (v21)(v12, v42);
    }

    if ((*(**(v0 + 808) + 192))(v28))
    {
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D008]);
      v46 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      *(v0 + 1016) = v46;
      *(v0 + 1024) = v47;
      v165 = v46;
      loga = v47;
      v82 = *(v0 + 792);
      *(v0 + 712) = *(v0 + 784);
      *(v0 + 720) = v82;
      v83 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      *(v0 + 1032) = v83;
      *(v0 + 1040) = v84;
      v161 = v83;
      v163 = v84;
      v86 = *(v0 + 968);
      v87 = *(v0 + 944);
      v88 = *(v0 + 936);
      v170(v86, *(v0 + 776), v88);
      v89 = (*(v87 + 88))(v86, v88);
      if (v89 == *MEMORY[0x277D4CF78])
      {
        v90 = *(v0 + 968);
        v91 = *(v0 + 896);
        v92 = *(v0 + 888);
        v93 = *(v0 + 880);
        v157 = *(v0 + 872);
        v94 = *(v0 + 848);
        v172 = *(v0 + 840);
        v175 = *(v0 + 856);
        (*(*(v0 + 944) + 96))(v90, *(v0 + 936));
        v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVG_AC0dE5StateVSgAC12GroupVersionVtMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVG_AC0dE5StateVSgAC12GroupVersionVtMR);
        v96 = *(v95 + 48);
        v97 = *(v95 + 64);
        (*(v92 + 32))(v91, v90, v93);
        outlined init with take of MLS.OutgoingEventState?(v90 + v96, v157, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
        (*(v94 + 32))(v175, v90 + v97, v172);
        *(v0 + 760) = MLS.OutgoingEventType.storageIdentifier.getter();
        *(v0 + 768) = v98;
        v99 = dispatch thunk of JSONEncoder.encode<A>(_:)();
        *(v0 + 1048) = v99;
        *(v0 + 1056) = v100;
        v158 = v99;
        v173 = v100;

        lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.OutgoingEventType<MLS.AllMember, Data> and conformance MLS.OutgoingEventType<A, B>, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR, MEMORY[0x277D4CEC8]);
        v117 = dispatch thunk of JSONEncoder.encode<A>(_:)();
        *(v0 + 1064) = v117;
        *(v0 + 1072) = v118;
        v152 = v117;
        v155 = v118;
        _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.GroupVersion and conformance MLS.GroupVersion, MEMORY[0x277D4CC78], MEMORY[0x277D4CC80]);
        v120 = dispatch thunk of JSONEncoder.encode<A>(_:)();
        *(v0 + 1080) = v120;
        *(v0 + 1088) = v121;
        v130 = v121;
        v149 = v120;
        v131 = *(v0 + 864);
        v132 = *(v0 + 824);
        v133 = *(v0 + 816);
        outlined init with copy of MLS.OutgoingEventState?(*(v0 + 872), v131);
        v134 = (*(v132 + 48))(v131, 1, v133);
        if (v134 == 1)
        {
          outlined destroy of MLS.KeyPackageProvider?(*(v0 + 864), &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
          v135 = 0;
          v136 = 0xF000000000000000;
        }

        else
        {
          (*(*(v0 + 824) + 32))(*(v0 + 832), *(v0 + 864), *(v0 + 816));
          _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.OutgoingEventState and conformance MLS.OutgoingEventState, MEMORY[0x277D4CF20], MEMORY[0x277D4CF28]);
          v137 = dispatch thunk of JSONEncoder.encode<A>(_:)();
          v136 = v138;
          v139 = v137;
          (*(*(v0 + 824) + 8))(*(v0 + 832), *(v0 + 816));
          v135 = v139;
        }

        *(v0 + 400) = v165;
        *(v0 + 408) = loga;
        *(v0 + 416) = v161;
        *(v0 + 424) = v163;
        *(v0 + 432) = v152;
        *(v0 + 440) = v155;
        *(v0 + 448) = v149;
        *(v0 + 456) = v130;
        *(v0 + 464) = v135;
        *(v0 + 472) = v136;
        *(v0 + 480) = v158;
        *(v0 + 488) = v173;
        *(v0 + 696) = &type metadata for OutgoingEventModel;
        *(v0 + 704) = &protocol witness table for OutgoingEventModel;
        v140 = swift_allocObject();
        *(v0 + 672) = v140;
        v141 = *(v0 + 448);
        v140[3] = *(v0 + 432);
        v140[4] = v141;
        v142 = *(v0 + 480);
        v140[5] = *(v0 + 464);
        v140[6] = v142;
        v143 = *(v0 + 416);
        v140[1] = *(v0 + 400);
        v140[2] = v143;
        outlined copy of Data._Representation(v165, loga);
        outlined copy of Data._Representation(v161, v163);
        outlined copy of Data._Representation(v152, v155);
        outlined copy of Data._Representation(v149, v130);
        outlined copy of Data._Representation(v158, v173);
        outlined init with copy of OutgoingEventModel(v0 + 400, v0 + 496);
        v144 = swift_task_alloc();
        *(v0 + 1096) = v144;
        *v144 = v0;
        v144[1] = DaemonPersister.save(outgoingEventUpdate:forGroup:clientIdentifier:);

        return SqliteStore.insert(_:)(v0 + 672);
      }

      else if (v89 == *MEMORY[0x277D4CF80])
      {
        v101 = *(v0 + 968);
        (*(*(v0 + 944) + 96))(v101, *(v0 + 936));
        v102 = v101[1];
        *(v0 + 744) = *v101;
        *(v0 + 752) = v102;
        v103 = dispatch thunk of JSONEncoder.encode<A>(_:)();
        *(v0 + 1112) = v103;
        *(v0 + 1120) = v104;
        v105 = v103;
        v106 = v104;

        *(v0 + 208) = v165;
        *(v0 + 216) = loga;
        *(v0 + 224) = v161;
        *(v0 + 232) = v163;
        *(v0 + 240) = xmmword_2653419D0;
        *(v0 + 256) = xmmword_2653419D0;
        *(v0 + 272) = xmmword_2653419D0;
        *(v0 + 288) = v105;
        *(v0 + 296) = v106;
        *(v0 + 656) = &type metadata for OutgoingEventModel;
        *(v0 + 664) = &protocol witness table for OutgoingEventModel;
        v107 = swift_allocObject();
        *(v0 + 632) = v107;
        v108 = *(v0 + 256);
        v109 = *(v0 + 272);
        v110 = *(v0 + 224);
        v107[3] = *(v0 + 240);
        v107[4] = v108;
        v111 = *(v0 + 288);
        v107[5] = v109;
        v107[6] = v111;
        v107[1] = *(v0 + 208);
        v107[2] = v110;
        outlined copy of Data._Representation(v105, v106);
        outlined init with copy of OutgoingEventModel(v0 + 208, v0 + 304);
        v112 = swift_task_alloc();
        *(v0 + 1128) = v112;
        *v112 = v0;
        v112[1] = DaemonPersister.save(outgoingEventUpdate:forGroup:clientIdentifier:);

        return SqliteStore.delete(_:)(v0 + 632);
      }

      else if (v89 == *MEMORY[0x277D4CF70])
      {
        v113 = *(v0 + 968);
        (*(*(v0 + 944) + 96))(v113, *(v0 + 936));
        v114 = v113[1];
        *(v0 + 728) = *v113;
        *(v0 + 736) = v114;
        v115 = dispatch thunk of JSONEncoder.encode<A>(_:)();
        *(v0 + 1144) = v115;
        *(v0 + 1152) = v116;
        v122 = v115;
        v123 = v116;

        *(v0 + 16) = v165;
        *(v0 + 24) = loga;
        *(v0 + 32) = v161;
        *(v0 + 40) = v163;
        *(v0 + 48) = xmmword_2653419D0;
        *(v0 + 64) = xmmword_2653419D0;
        *(v0 + 80) = xmmword_2653419D0;
        *(v0 + 96) = v122;
        *(v0 + 104) = v123;
        *(v0 + 616) = &type metadata for OutgoingEventModel;
        *(v0 + 624) = &protocol witness table for OutgoingEventModel;
        v124 = swift_allocObject();
        *(v0 + 592) = v124;
        v125 = *(v0 + 64);
        v126 = *(v0 + 80);
        v127 = *(v0 + 32);
        v124[3] = *(v0 + 48);
        v124[4] = v125;
        v128 = *(v0 + 96);
        v124[5] = v126;
        v124[6] = v128;
        v124[1] = *(v0 + 16);
        v124[2] = v127;
        outlined copy of Data._Representation(v122, v123);
        outlined init with copy of OutgoingEventModel(v0 + 16, v0 + 112);
        v129 = swift_task_alloc();
        *(v0 + 1160) = v129;
        *v129 = v0;
        v129[1] = DaemonPersister.save(outgoingEventUpdate:forGroup:clientIdentifier:);

        return SqliteStore.update(_:)(v0 + 592);
      }

      else
      {
        v119 = *(v0 + 936);

        return MEMORY[0x2821FDEB8](v119, v119);
      }
    }

    else
    {
      logb = v21;
      v57 = *(v0 + 960);
      v58 = *(v0 + 936);
      v59 = *(v0 + 920);
      v60 = *(v0 + 904);
      v61 = *(v0 + 800);
      v62 = *(v0 + 776);

      v170(v57, v62, v58);
      v162(v59, v61, v60);

      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = *(v0 + 976);
        v66 = *(v0 + 960);
        v67 = *(v0 + 936);
        v154 = *(v0 + 904);
        v156 = *(v0 + 920);
        v148 = *(v0 + 784);
        v151 = *(v0 + 792);
        v68 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        v176[0] = v164;
        *v68 = 136315650;
        v170(v65, v66, v67);
        v69 = String.init<A>(describing:)();
        v71 = v70;
        (logb)(v66, v67);
        v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v71, v176);

        *(v68 + 4) = v72;
        *(v68 + 12) = 2080;
        *(v68 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v148, v151, v176);
        *(v68 + 22) = 2080;
        _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
        v73 = dispatch thunk of CustomStringConvertible.description.getter();
        v75 = v74;
        v160(v156, v154);
        v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, v176);

        *(v68 + 24) = v76;
        _os_log_impl(&dword_26524C000, v63, v64, "DaemonPersister saveOutgoingEventUpdate called outside atomically block { outgoingEventUpdate: %s, group: %s, client: %s }", v68, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x2667577B0](v164, -1, -1);
        MEMORY[0x2667577B0](v68, -1, -1);
      }

      else
      {
        v77 = *(v0 + 960);
        v78 = *(v0 + 936);
        v79 = *(v0 + 920);
        v80 = *(v0 + 904);

        v160(v79, v80);
        (logb)(v77, v78);
      }

      lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
      swift_allocError();
      *v81 = 6;
      *(v81 + 8) = 0;
      *(v81 + 16) = 0;
      swift_willThrow();

      v85 = *(v0 + 8);

      return v85();
    }
  }

  else
  {
    v3(*(v0 + 952), *(v0 + 776), v4);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 976);
      v32 = *(v0 + 952);
      v171 = v3;
      v33 = *(v0 + 944);
      v34 = *(v0 + 936);
      v35 = swift_slowAlloc();
      logc = swift_slowAlloc();
      v176[0] = logc;
      *v35 = 136315138;
      v171(v31, v32, v34);
      v36 = String.init<A>(describing:)();
      v38 = v37;
      (*(v33 + 8))(v32, v34);
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, v176);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_26524C000, v29, v30, "DaemonPersister saveOutgoingEventUpdate using inMemory mode { outgoingEventUpdate: %s }", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(logc);
      MEMORY[0x2667577B0](logc, -1, -1);
      MEMORY[0x2667577B0](v35, -1, -1);
    }

    else
    {
      v48 = *(v0 + 952);
      v49 = *(v0 + 944);
      v50 = *(v0 + 936);

      v40 = (*(v49 + 8))(v48, v50);
    }

    *(v0 + 1176) = (*(**(v0 + 808) + 168))(v40);
    v174 = (*MEMORY[0x277D4CE88] + MEMORY[0x277D4CE88]);
    v51 = swift_task_alloc();
    *(v0 + 1184) = v51;
    *v51 = v0;
    v51[1] = DaemonPersister.save(outgoingEventUpdate:forGroup:clientIdentifier:);
    v52 = *(v0 + 800);
    v53 = *(v0 + 792);
    v54 = *(v0 + 784);
    v55 = *(v0 + 776);

    return v174(v55, v54, v53, v52);
  }
}

{
  v2 = *v1;
  *(*v1 + 1104) = v0;

  if (v0)
  {
    v3 = v2[126];
    v4 = v2[125];
    v5 = DaemonPersister.save(outgoingEventUpdate:forGroup:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 84);
    v3 = v2[126];
    v4 = v2[125];
    v5 = DaemonPersister.save(outgoingEventUpdate:forGroup:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = v0[136];
  v2 = v0[135];
  v3 = v0[134];
  v4 = v0[133];
  v5 = v0[132];
  v6 = v0[131];
  v7 = v0[129];
  v19 = v0[112];
  v8 = v0[111];
  v18 = v0[110];
  v16 = v0[128];
  v17 = v0[109];
  v14 = v0[127];
  v15 = v0[107];
  v9 = v0[106];
  v12 = v0[130];
  v13 = v0[105];

  outlined destroy of OutgoingEventModel((v0 + 50));
  outlined consume of Data._Representation(v6, v5);
  outlined consume of Data._Representation(v2, v1);
  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v7, v12);
  outlined consume of Data._Representation(v14, v16);
  (*(v9 + 8))(v15, v13);
  outlined destroy of MLS.KeyPackageProvider?(v17, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
  (*(v8 + 8))(v19, v18);

  v10 = v0[1];

  return v10();
}

{
  v2 = *v1;
  *(*v1 + 1136) = v0;

  if (v0)
  {
    outlined consume of Data._Representation(v2[139], v2[140]);
    v3 = v2[126];
    v4 = v2[125];
    v5 = DaemonPersister.save(outgoingEventUpdate:forGroup:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 79);
    v3 = v2[126];
    v4 = v2[125];
    v5 = DaemonPersister.save(outgoingEventUpdate:forGroup:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = v0[140];
  v2 = v0[139];

  outlined destroy of OutgoingEventModel((v0 + 26));
  outlined consume of Data._Representation(v2, v1);

  v3 = v0[1];

  return v3();
}

{
  v2 = *v1;
  *(*v1 + 1168) = v0;

  if (v0)
  {
    outlined consume of Data._Representation(v2[143], v2[144]);
    v3 = v2[126];
    v4 = v2[125];
    v5 = DaemonPersister.save(outgoingEventUpdate:forGroup:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 74);
    v3 = v2[126];
    v4 = v2[125];
    v5 = DaemonPersister.save(outgoingEventUpdate:forGroup:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = v0[144];
  v2 = v0[143];

  outlined destroy of OutgoingEventModel((v0 + 2));
  outlined consume of Data._Representation(v2, v1);

  v3 = v0[1];

  return v3();
}

{
  v2 = *v1;
  *(*v1 + 1192) = v0;

  if (v0)
  {
    v3 = *(v2 + 1008);
    v4 = *(v2 + 1000);
    v5 = DaemonPersister.save(outgoingEventUpdate:forGroup:clientIdentifier:);
  }

  else
  {

    v3 = *(v2 + 1008);
    v4 = *(v2 + 1000);
    v5 = DaemonPersister.save(outgoingEventUpdate:forGroup:clientIdentifier:);
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

{
  v1 = v0[136];
  v2 = v0[135];
  v3 = v0[134];
  v4 = v0[133];
  v5 = v0[132];
  v6 = v0[131];
  v7 = v0[129];
  v19 = v0[112];
  v8 = v0[111];
  v18 = v0[110];
  v16 = v0[128];
  v17 = v0[109];
  v14 = v0[127];
  v15 = v0[107];
  v9 = v0[106];
  v12 = v0[130];
  v13 = v0[105];

  outlined destroy of OutgoingEventModel((v0 + 50));
  outlined consume of Data._Representation(v6, v5);
  outlined consume of Data._Representation(v2, v1);
  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v7, v12);
  outlined consume of Data._Representation(v14, v16);
  (*(v9 + 8))(v15, v13);
  outlined destroy of MLS.KeyPackageProvider?(v17, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
  (*(v8 + 8))(v19, v18);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 84);

  v10 = v0[1];

  return v10();
}

{
  outlined destroy of OutgoingEventModel(v0 + 208);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 632));

  v1 = *(v0 + 8);

  return v1();
}

{
  outlined destroy of OutgoingEventModel(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 592));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DaemonPersister.save(incomingEvent:forGroup:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[30] = a4;
  v5[31] = v4;
  v5[28] = a2;
  v5[29] = a3;
  v5[27] = a1;
  v6 = type metadata accessor for MLS.UniqueClientIdentifier();
  v5[32] = v6;
  v5[33] = *(v6 - 8);
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v5[36] = v7;
  v5[37] = *(v7 - 8);
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v5[42] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[43] = v9;
  v5[44] = v8;

  return MEMORY[0x2822009F8](DaemonPersister.save(incomingEvent:forGroup:clientIdentifier:), v9, v8);
}

uint64_t DaemonPersister.save(incomingEvent:forGroup:clientIdentifier:)()
{
  v122 = v0;
  v1 = *(v0 + 296);
  v2 = (*(**(v0 + 248) + 264))();
  v3 = *(v1 + 16);
  v4 = *(v0 + 288);
  if (v2)
  {
    v5 = *(v0 + 280);
    v6 = *(v0 + 256);
    v7 = *(v0 + 264);
    v8 = *(v0 + 240);
    v3(*(v0 + 328), *(v0 + 216), v4);
    v112 = *(v7 + 16);
    v112(v5, v8, v6);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 328);
    v117 = v3;
    if (v11)
    {
      v13 = *(v0 + 320);
      v109 = v10;
      v14 = *(v0 + 288);
      v15 = *(v0 + 296);
      v103 = *(v0 + 280);
      v105 = *(v0 + 264);
      v101 = *(v0 + 232);
      v102 = *(v0 + 256);
      v100 = *(v0 + 224);
      v16 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v121[0] = v107;
      *v16 = 136315650;
      v3(v13, v12, v14);
      v17 = String.init<A>(describing:)();
      v19 = v18;
      v111 = *(v15 + 8);
      v111(v12, v14);
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v121);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      *(v16 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v101, v121);
      *(v16 + 22) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      v24 = *(v105 + 8);
      v24(v103, v102);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v121);

      *(v16 + 24) = v25;
      _os_log_impl(&dword_26524C000, v9, v109, "DaemonPersister saveIncomingEvent using persistence mode { incomingEvent: %s, group: %s, client: %s }", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v107, -1, -1);
      MEMORY[0x2667577B0](v16, -1, -1);
    }

    else
    {
      v39 = *(v0 + 288);
      v40 = *(v0 + 296);
      v41 = *(v0 + 280);
      v42 = *(v0 + 256);
      v43 = *(v0 + 264);

      v24 = *(v43 + 8);
      v24(v41, v42);
      v111 = *(v40 + 8);
      v26 = (v111)(v12, v39);
    }

    if ((*(**(v0 + 248) + 192))(v26))
    {
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D008]);
      v44 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      *(v0 + 360) = v44;
      *(v0 + 368) = v45;
      v80 = v44;
      v81 = v45;
      v82 = *(v0 + 232);
      *(v0 + 184) = *(v0 + 224);
      *(v0 + 192) = v82;
      v83 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      *(v0 + 376) = v83;
      *(v0 + 384) = v84;
      v86 = v83;
      v87 = v84;
      lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingEventType<MLS.AllMember, Data> and conformance MLS.IncomingEventType<A, B>, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR, MEMORY[0x277D4CEB8]);
      v88 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      *(v0 + 392) = v88;
      *(v0 + 400) = v89;
      v116 = v88;
      v120 = v89;
      *(v0 + 200) = MLS.IncomingEventType.identifier.getter();
      *(v0 + 208) = v90;
      v91 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      *(v0 + 408) = v91;
      *(v0 + 416) = v92;
      v93 = v91;
      v94 = v92;

      *(v0 + 16) = v80;
      *(v0 + 24) = v81;
      *(v0 + 32) = v86;
      *(v0 + 40) = v87;
      *(v0 + 48) = v116;
      *(v0 + 56) = v120;
      *(v0 + 64) = v93;
      *(v0 + 72) = v94;
      *(v0 + 168) = &type metadata for IncomingEventModel;
      *(v0 + 176) = &protocol witness table for IncomingEventModel;
      v95 = swift_allocObject();
      *(v0 + 144) = v95;
      v96 = *(v0 + 32);
      v97 = *(v0 + 48);
      v95[1] = *(v0 + 16);
      v95[2] = v96;
      v98 = *(v0 + 64);
      v95[3] = v97;
      v95[4] = v98;
      outlined copy of Data._Representation(v80, v81);
      outlined copy of Data._Representation(v86, v87);
      outlined copy of Data._Representation(v116, v120);
      outlined copy of Data._Representation(v93, v94);
      outlined init with copy of IncomingEventModel(v0 + 16, v0 + 80);
      v99 = swift_task_alloc();
      *(v0 + 424) = v99;
      *v99 = v0;
      v99[1] = DaemonPersister.save(incomingEvent:forGroup:clientIdentifier:);

      return SqliteStore.insert(_:)(v0 + 144);
    }

    else
    {
      v55 = *(v0 + 312);
      v56 = *(v0 + 288);
      v57 = *(v0 + 272);
      v58 = *(v0 + 256);
      v59 = *(v0 + 240);
      v60 = *(v0 + 216);

      v117(v55, v60, v56);
      v112(v57, v59, v58);

      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v61, v62))
      {
        v113 = v24;
        v63 = *(v0 + 312);
        v64 = *(v0 + 320);
        v65 = *(v0 + 288);
        v108 = *(v0 + 256);
        v110 = *(v0 + 272);
        v104 = *(v0 + 224);
        v106 = *(v0 + 232);
        v66 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        v121[0] = v115;
        *v66 = 136315650;
        v117(v64, v63, v65);
        v67 = String.init<A>(describing:)();
        v69 = v68;
        v111(v63, v65);
        v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, v121);

        *(v66 + 4) = v70;
        *(v66 + 12) = 2080;
        *(v66 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v106, v121);
        *(v66 + 22) = 2080;
        _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
        v71 = dispatch thunk of CustomStringConvertible.description.getter();
        v73 = v72;
        v113(v110, v108);
        v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v73, v121);

        *(v66 + 24) = v74;
        _os_log_impl(&dword_26524C000, v61, v62, "DaemonPersister saveIncomingEvent called outside atomically block { incomingEvent: %s, group: %s, client: %s }", v66, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x2667577B0](v115, -1, -1);
        MEMORY[0x2667577B0](v66, -1, -1);
      }

      else
      {
        v75 = *(v0 + 312);
        v76 = *(v0 + 288);
        v77 = *(v0 + 272);
        v78 = *(v0 + 256);

        v24(v77, v78);
        v111(v75, v76);
      }

      lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
      swift_allocError();
      *v79 = 6;
      *(v79 + 8) = 0;
      *(v79 + 16) = 0;
      swift_willThrow();

      v85 = *(v0 + 8);

      return v85();
    }
  }

  else
  {
    v3(*(v0 + 304), *(v0 + 216), v4);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v118 = v3;
      v29 = *(v0 + 320);
      v31 = *(v0 + 296);
      v30 = *(v0 + 304);
      v32 = *(v0 + 288);
      v33 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v121[0] = v114;
      *v33 = 136315138;
      v118(v29, v30, v32);
      v34 = String.init<A>(describing:)();
      v36 = v35;
      (*(v31 + 8))(v30, v32);
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, v121);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_26524C000, v27, v28, "DaemonPersister saveIncomingEvent using inMemory mode { incomingEvent: %s }", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v114);
      MEMORY[0x2667577B0](v114, -1, -1);
      MEMORY[0x2667577B0](v33, -1, -1);
    }

    else
    {
      v47 = *(v0 + 296);
      v46 = *(v0 + 304);
      v48 = *(v0 + 288);

      v38 = (*(v47 + 8))(v46, v48);
    }

    *(v0 + 440) = (*(**(v0 + 248) + 168))(v38);
    v119 = (*MEMORY[0x277D4CE70] + MEMORY[0x277D4CE70]);
    v49 = swift_task_alloc();
    *(v0 + 448) = v49;
    *v49 = v0;
    v49[1] = DaemonPersister.save(incomingEvent:forGroup:clientIdentifier:);
    v50 = *(v0 + 232);
    v51 = *(v0 + 240);
    v53 = *(v0 + 216);
    v52 = *(v0 + 224);

    return v119(v53, v52, v50, v51);
  }
}

{
  v2 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v4 = v2[49];
    v3 = v2[50];
    v6 = v2[47];
    v5 = v2[48];
    v8 = v2[45];
    v7 = v2[46];
    outlined consume of Data._Representation(v2[51], v2[52]);
    outlined consume of Data._Representation(v4, v3);
    outlined consume of Data._Representation(v6, v5);
    outlined consume of Data._Representation(v8, v7);
    v9 = v2[43];
    v10 = v2[44];
    v11 = DaemonPersister.save(incomingEvent:forGroup:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 18);
    v9 = v2[43];
    v10 = v2[44];
    v11 = DaemonPersister.save(incomingEvent:forGroup:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

{
  v1 = v0[51];
  v2 = v0[52];
  v4 = v0[49];
  v3 = v0[50];
  v6 = v0[47];
  v5 = v0[48];
  v8 = v0[45];
  v7 = v0[46];

  outlined destroy of IncomingEventModel((v0 + 2));
  outlined consume of Data._Representation(v1, v2);
  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v6, v5);
  outlined consume of Data._Representation(v8, v7);

  v9 = v0[1];

  return v9();
}

{
  v2 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v3 = *(v2 + 344);
    v4 = *(v2 + 352);
    v5 = DaemonPersister.save(incomingEvent:forGroup:clientIdentifier:);
  }

  else
  {

    v3 = *(v2 + 344);
    v4 = *(v2 + 352);
    v5 = DaemonPersister.save(incomingEvent:forGroup:clientIdentifier:);
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

{
  outlined destroy of IncomingEventModel(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DaemonPersister.delete(incomingEvent:forGroup:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[30] = a4;
  v5[31] = v4;
  v5[28] = a2;
  v5[29] = a3;
  v5[27] = a1;
  v6 = type metadata accessor for MLS.UniqueClientIdentifier();
  v5[32] = v6;
  v5[33] = *(v6 - 8);
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v5[36] = v7;
  v5[37] = *(v7 - 8);
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v5[42] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[43] = v9;
  v5[44] = v8;

  return MEMORY[0x2822009F8](DaemonPersister.delete(incomingEvent:forGroup:clientIdentifier:), v9, v8);
}

uint64_t DaemonPersister.delete(incomingEvent:forGroup:clientIdentifier:)()
{
  v122 = v0;
  v1 = *(v0 + 296);
  v2 = (*(**(v0 + 248) + 264))();
  v3 = *(v1 + 16);
  v4 = *(v0 + 288);
  if (v2)
  {
    v5 = *(v0 + 280);
    v6 = *(v0 + 256);
    v7 = *(v0 + 264);
    v8 = *(v0 + 240);
    v3(*(v0 + 328), *(v0 + 216), v4);
    v112 = *(v7 + 16);
    v112(v5, v8, v6);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 328);
    v117 = v3;
    if (v11)
    {
      v13 = *(v0 + 320);
      v109 = v10;
      v14 = *(v0 + 288);
      v15 = *(v0 + 296);
      v103 = *(v0 + 280);
      v105 = *(v0 + 264);
      v101 = *(v0 + 232);
      v102 = *(v0 + 256);
      v100 = *(v0 + 224);
      v16 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v121[0] = v107;
      *v16 = 136315650;
      v3(v13, v12, v14);
      v17 = String.init<A>(describing:)();
      v19 = v18;
      v111 = *(v15 + 8);
      v111(v12, v14);
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v121);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      *(v16 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v101, v121);
      *(v16 + 22) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      v24 = *(v105 + 8);
      v24(v103, v102);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v121);

      *(v16 + 24) = v25;
      _os_log_impl(&dword_26524C000, v9, v109, "DaemonPersister deleteIncomingEvent using persistence mode { incomingEvent: %s, group: %s, client: %s }", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v107, -1, -1);
      MEMORY[0x2667577B0](v16, -1, -1);
    }

    else
    {
      v39 = *(v0 + 288);
      v40 = *(v0 + 296);
      v41 = *(v0 + 280);
      v42 = *(v0 + 256);
      v43 = *(v0 + 264);

      v24 = *(v43 + 8);
      v24(v41, v42);
      v111 = *(v40 + 8);
      v26 = (v111)(v12, v39);
    }

    if ((*(**(v0 + 248) + 192))(v26))
    {
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D008]);
      v44 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      *(v0 + 360) = v44;
      *(v0 + 368) = v45;
      v80 = v44;
      v81 = v45;
      v82 = *(v0 + 232);
      *(v0 + 184) = *(v0 + 224);
      *(v0 + 192) = v82;
      v83 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      *(v0 + 376) = v83;
      *(v0 + 384) = v84;
      v86 = v83;
      v87 = v84;
      lazy protocol witness table accessor for type MLS.FetchMemberResult<MLS.AllMember> and conformance MLS.FetchMemberResult<A>(&lazy protocol witness table cache variable for type MLS.IncomingEventType<MLS.AllMember, Data> and conformance MLS.IncomingEventType<A, B>, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR, MEMORY[0x277D4CEB8]);
      v88 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      *(v0 + 392) = v88;
      *(v0 + 400) = v89;
      v116 = v88;
      v120 = v89;
      *(v0 + 200) = MLS.IncomingEventType.identifier.getter();
      *(v0 + 208) = v90;
      v91 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      *(v0 + 408) = v91;
      *(v0 + 416) = v92;
      v93 = v91;
      v94 = v92;

      *(v0 + 16) = v80;
      *(v0 + 24) = v81;
      *(v0 + 32) = v86;
      *(v0 + 40) = v87;
      *(v0 + 48) = v116;
      *(v0 + 56) = v120;
      *(v0 + 64) = v93;
      *(v0 + 72) = v94;
      *(v0 + 168) = &type metadata for IncomingEventModel;
      *(v0 + 176) = &protocol witness table for IncomingEventModel;
      v95 = swift_allocObject();
      *(v0 + 144) = v95;
      v96 = *(v0 + 32);
      v97 = *(v0 + 48);
      v95[1] = *(v0 + 16);
      v95[2] = v96;
      v98 = *(v0 + 64);
      v95[3] = v97;
      v95[4] = v98;
      outlined copy of Data._Representation(v80, v81);
      outlined copy of Data._Representation(v86, v87);
      outlined copy of Data._Representation(v116, v120);
      outlined copy of Data._Representation(v93, v94);
      outlined init with copy of IncomingEventModel(v0 + 16, v0 + 80);
      v99 = swift_task_alloc();
      *(v0 + 424) = v99;
      *v99 = v0;
      v99[1] = DaemonPersister.delete(incomingEvent:forGroup:clientIdentifier:);

      return SqliteStore.delete(_:)(v0 + 144);
    }

    else
    {
      v55 = *(v0 + 312);
      v56 = *(v0 + 288);
      v57 = *(v0 + 272);
      v58 = *(v0 + 256);
      v59 = *(v0 + 240);
      v60 = *(v0 + 216);

      v117(v55, v60, v56);
      v112(v57, v59, v58);

      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v61, v62))
      {
        v113 = v24;
        v63 = *(v0 + 312);
        v64 = *(v0 + 320);
        v65 = *(v0 + 288);
        v108 = *(v0 + 256);
        v110 = *(v0 + 272);
        v104 = *(v0 + 224);
        v106 = *(v0 + 232);
        v66 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        v121[0] = v115;
        *v66 = 136315650;
        v117(v64, v63, v65);
        v67 = String.init<A>(describing:)();
        v69 = v68;
        v111(v63, v65);
        v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, v121);

        *(v66 + 4) = v70;
        *(v66 + 12) = 2080;
        *(v66 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v106, v121);
        *(v66 + 22) = 2080;
        _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D028]);
        v71 = dispatch thunk of CustomStringConvertible.description.getter();
        v73 = v72;
        v113(v110, v108);
        v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v73, v121);

        *(v66 + 24) = v74;
        _os_log_impl(&dword_26524C000, v61, v62, "DaemonPersister deleteIncomingEvent called outside atomically block { incomingEvent: %s, group: %s, client: %s }", v66, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x2667577B0](v115, -1, -1);
        MEMORY[0x2667577B0](v66, -1, -1);
      }

      else
      {
        v75 = *(v0 + 312);
        v76 = *(v0 + 288);
        v77 = *(v0 + 272);
        v78 = *(v0 + 256);

        v24(v77, v78);
        v111(v75, v76);
      }

      lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
      swift_allocError();
      *v79 = 6;
      *(v79 + 8) = 0;
      *(v79 + 16) = 0;
      swift_willThrow();

      v85 = *(v0 + 8);

      return v85();
    }
  }

  else
  {
    v3(*(v0 + 304), *(v0 + 216), v4);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v118 = v3;
      v29 = *(v0 + 320);
      v31 = *(v0 + 296);
      v30 = *(v0 + 304);
      v32 = *(v0 + 288);
      v33 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v121[0] = v114;
      *v33 = 136315138;
      v118(v29, v30, v32);
      v34 = String.init<A>(describing:)();
      v36 = v35;
      (*(v31 + 8))(v30, v32);
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, v121);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_26524C000, v27, v28, "DaemonPersister deleteIncomingEvent using inMemory mode { incomingEvent: %s }", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v114);
      MEMORY[0x2667577B0](v114, -1, -1);
      MEMORY[0x2667577B0](v33, -1, -1);
    }

    else
    {
      v47 = *(v0 + 296);
      v46 = *(v0 + 304);
      v48 = *(v0 + 288);

      v38 = (*(v47 + 8))(v46, v48);
    }

    *(v0 + 440) = (*(**(v0 + 248) + 168))(v38);
    v119 = (*MEMORY[0x277D4CEB0] + MEMORY[0x277D4CEB0]);
    v49 = swift_task_alloc();
    *(v0 + 448) = v49;
    *v49 = v0;
    v49[1] = DaemonPersister.delete(incomingEvent:forGroup:clientIdentifier:);
    v50 = *(v0 + 232);
    v51 = *(v0 + 240);
    v53 = *(v0 + 216);
    v52 = *(v0 + 224);

    return v119(v53, v52, v50, v51);
  }
}

{
  v2 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v4 = v2[49];
    v3 = v2[50];
    v6 = v2[47];
    v5 = v2[48];
    v8 = v2[45];
    v7 = v2[46];
    outlined consume of Data._Representation(v2[51], v2[52]);
    outlined consume of Data._Representation(v4, v3);
    outlined consume of Data._Representation(v6, v5);
    outlined consume of Data._Representation(v8, v7);
    v9 = v2[43];
    v10 = v2[44];
    v11 = DaemonPersister.delete(incomingEvent:forGroup:clientIdentifier:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 18);
    v9 = v2[43];
    v10 = v2[44];
    v11 = DaemonPersister.delete(incomingEvent:forGroup:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

{
  v2 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v3 = *(v2 + 344);
    v4 = *(v2 + 352);
    v5 = DaemonPersister.delete(incomingEvent:forGroup:clientIdentifier:);
  }

  else
  {

    v3 = *(v2 + 344);
    v4 = *(v2 + 352);
    v5 = DaemonPersister.delete(incomingEvent:forGroup:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t DaemonPersister.save(eventsSinceLastKeyUpdate:forIdentifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  Update = type metadata accessor for MLS.EventsSinceLastUpdate();
  v5[12] = Update;
  v5[13] = *(Update - 8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  type metadata accessor for MLSActor();
  v5[18] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[19] = v8;
  v5[20] = v7;

  return MEMORY[0x2822009F8](DaemonPersister.save(eventsSinceLastKeyUpdate:forIdentifier:clientIdentifier:), v8, v7);
}