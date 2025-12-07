uint64_t sub_26C066FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  *(v5 + 16) = 0;
  *(v5 + 40) = 1;
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  *(v5 + 48) = 0;
  *(v5 + 24) = a1;
  *(v5 + 32) = 0;
  result = swift_beginAccess();
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = sub_26C0AB8B0();

    swift_beginAccess();
    v10 = sqlite3_prepare_v2(v8, (v9 + 32), -1, (v5 + 16), 0);
    swift_endAccess();

    sub_26C0678E0(v10, 0);
    if (v4)
    {
    }

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26C067104(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{

  v6 = sub_26C0AB930();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    do
    {
      if (v8 == a1 && v9 == a2 || (sub_26C0ABC70() & 1) != 0)
      {
        sub_26C0AB800();
      }

      sub_26C0AB800();

      MEMORY[0x26D69A890](0, 0xE000000000000000);

      v8 = sub_26C0AB930();
      v9 = v10;
    }

    while (v10);
  }

  sub_26C0AB800();
  MEMORY[0x26D69A890](0, 0xE000000000000000);

  sub_26C0AB800();
  return 0;
}

void Cursor.subscript.getter(uint64_t iCol@<X0>, uint64_t a2@<X8>)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_21;
  }

  v4 = iCol;
  if (iCol > 0x7FFFFFFF)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    sub_26C0ABB30();

    v14 = sub_26C0ABC60();
    MEMORY[0x26D69A890](v14);

    sub_26C0ABBE0();
    __break(1u);
    return;
  }

  v5 = *v2;
  v6 = sqlite3_column_type(*v2, iCol);
  if (v6 <= 2)
  {
    if (v6 == 1)
    {
      v7 = sqlite3_column_int64(v5, v4);
      *(a2 + 24) = MEMORY[0x277D84A28];
      *(a2 + 32) = &protocol witness table for Int64;
      *a2 = v7;
      return;
    }

    if (v6 == 2)
    {
      v13 = sqlite3_column_double(v5, v4);
      *(a2 + 24) = MEMORY[0x277D839F8];
      *(a2 + 32) = &protocol witness table for Double;
      *a2 = v13;
      return;
    }

    goto LABEL_23;
  }

  if (v6 == 3)
  {
    if (sqlite3_column_text(v5, v4))
    {
      v8 = sub_26C0AB920();
      *(a2 + 24) = MEMORY[0x277D837D0];
      *(a2 + 32) = &protocol witness table for String;
      *a2 = v8;
      *(a2 + 8) = v9;
      return;
    }

    goto LABEL_22;
  }

  if (v6 == 5)
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  if (v6 != 4)
  {
    goto LABEL_23;
  }

  *(a2 + 24) = &type metadata for Blob;
  *(a2 + 32) = &protocol witness table for Blob;
  v10 = sqlite3_column_blob(v5, v4);
  if (v10)
  {
    v11 = v10;
    v12 = sqlite3_column_bytes(v5, v4);

    Blob.init(bytes:length:)(v11, v12, a2);
  }

  else
  {
    *a2 = MEMORY[0x277D84F90];
  }
}

uint64_t sub_26C067528@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC590;
  v6 = *(v2 + 8);
  if (*v2)
  {
    v7 = 0x44205443454C4553;
  }

  else
  {
    v7 = 0x5443454C4553;
  }

  if (*v2)
  {
    v8 = 0xEF54434E49545349;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  *(inited + 56) = v9;
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = v7;
  v10 = MEMORY[0x277D84F90];
  *(inited + 40) = v8;
  *(inited + 48) = v10;
  sub_26C0688D8(v6, (inited + 72));
  *(inited + 136) = v9;
  *(inited + 144) = &protocol witness table for Expression<A>;
  *(inited + 112) = 1297044038;
  *(inited + 120) = 0xE400000000000000;
  *(inited + 128) = v10;
  a1(1);
  sub_26C0688D8(inited, a2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  return swift_arrayDestroy();
}

uint64_t sub_26C067698@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  result = Statement.step()();
  if (v5)
  {
    result = MEMORY[0x26D69B350](v5);
LABEL_7:
    *a2 = 0;
    a2[1] = 0;
    return result;
  }

  if ((result & 1) == 0)
  {
    goto LABEL_7;
  }

  Statement.row.getter(v7);
  sub_26C06C95C(v7[0], v7[1]);
  *a2 = a1;
  a2[1] = v6;
}

unint64_t sub_26C06772C(uint64_t a1, uint64_t a2)
{
  sub_26C0ABD60();
  sub_26C0AB8D0();
  v4 = sub_26C0ABD80();

  return sub_26C06C440(a1, a2, v4);
}

uint64_t Statement.row.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[7];
  if (v2)
  {
    result = v1[8];
LABEL_5:
    *a1 = v2;
    a1[1] = result;
    return result;
  }

  v4 = a1;
  result = swift_beginAccess();
  v2 = v1[2];
  if (v2)
  {
    result = Statement.columnCount.getter();
    v1[7] = v2;
    v1[8] = result;
    a1 = v4;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t Statement.columnCount.getter()
{
  if (*(v0 + 40) != 1)
  {
    return *(v0 + 32);
  }

  swift_beginAccess();
  result = sqlite3_column_count(*(v0 + 16));
  *(v0 + 32) = result;
  *(v0 + 40) = 0;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26C067878(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

sqlite3 *sub_26C0678E0(uint64_t a1, uint64_t a2)
{
  if (qword_280B5B0A0 != -1)
  {
    swift_once();
  }

  v5 = off_280B5B0A8;
  if (*(off_280B5B0A8 + 2))
  {
    v6 = MEMORY[0x26D69ACD0](*(off_280B5B0A8 + 5), a1, 4);
    v7 = -1 << v5[32];
    v8 = v6 & ~v7;
    if ((*&v5[((v8 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v8))
    {
      v9 = ~v7;
      while (*(*(v5 + 6) + 4 * v8) != a1)
      {
        v8 = (v8 + 1) & v9;
        if (((*&v5[((v8 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v8) & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      return a1;
    }
  }

LABEL_8:
  swift_beginAccess();
  result = *(v2 + 16);
  if (result)
  {
    result = sqlite3_errmsg(result);
    if (result)
    {
      v11 = sub_26C0AB910();
      v13 = v12;
      sub_26C08FE58();
      swift_allocError();
      *v14 = v11;
      *(v14 + 8) = v13;
      *(v14 + 16) = a1;
      *(v14 + 24) = a2;
      swift_willThrow();

      return a1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Connection.prepare(_:)(void *a1)
{
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(*(v3 + 8) + 8))(v13, v4);
  v5 = v13[0];
  v6 = v13[1];
  v7 = v13[2];
  type metadata accessor for Statement();
  swift_allocObject();

  sub_26C066FF0(v8, v5, v6);
  if (v1)
  {
  }

  else
  {

    v9 = sub_26C06A5F0(v7);

    v11 = sub_26C06A790(a1);
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    *(v12 + 24) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479660, &qword_26C0AD888);
    result = swift_allocObject();
    *(result + 16) = sub_26C06C798;
    *(result + 24) = v12;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11SwiftSQLite10ExpressionVySbSgGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_Say11SwiftSQLite11Expressible_pG2by_AA10ExpressionVySbSgGSg6havingtSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

sqlite3 *sub_26C067C0C@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  swift_beginAccess();
  v5 = sqlite3_step(*(a1 + 16));
  result = sub_26C0678E0(v5, 0);
  if (!v2)
  {
    *a2 = result == 100;
  }

  return result;
}

uint64_t sub_26C067C80(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_26C067CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479708, &qword_26C0ADEB8);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_26C0688D0;
  *(v7 + 24) = v6;
  *a3 = v7;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t Statement.__deallocating_deinit()
{
  swift_beginAccess();
  sqlite3_finalize(*(v0 + 16));

  return swift_deallocClassInstance();
}

void *Blob.init(bytes:length:)@<X0>(void *result@<X0>, int64_t a2@<X1>, void *a3@<X8>)
{
  if (a2)
  {
    v5 = result;
    if (a2 < 1)
    {
      v6 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479460, "~#");
      v6 = swift_allocObject();
      v7 = _swift_stdlib_malloc_size(v6);
      v6[2] = a2;
      v6[3] = 2 * v7 - 64;
    }

    result = memcpy(v6 + 4, v5, a2);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  *a3 = v6;
  return result;
}

uint64_t sub_26C067EA0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t))
{
  v5 = *v4;
  v7 = *a1;
  v8 = *(a1 + 1);
  v9 = v5;
  return a4(&v7, a2, a3);
}

uint64_t Row.get<A>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  v30 = a3;
  v7 = sub_26C0ABAF0();
  v28 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v11 = *a1;
  v10 = a1[1];
  v12 = a1[2];
  v37 = *v4;
  v15 = type metadata accessor for Expression(0, v7, v13, v14);
  v31 = v11;
  v32 = v10;
  v33 = v12;
  v18 = type metadata accessor for Expression(0, a2, v16, v17);

  WitnessTable = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  ExpressionType.init<A>(_:)(&v31, v15, v18, WitnessTable, v20);
  v31 = v34;
  v32 = v35;
  v33 = v36;
  v21 = v38;
  Row.get<A>(_:)(&v31, a2, v30, v9);

  if (!v21)
  {
    v24 = v28;
    v23 = v29;
    v25 = *(a2 - 8);
    if ((*(v25 + 48))(v9, 1, a2) == 1)
    {
      (*(v24 + 8))(v9, v7);
      sub_26C072E10();
      swift_allocError();
      *v26 = v11;
      *(v26 + 8) = v10;
      *(v26 + 16) = 0;
      *(v26 + 24) = 3;
      swift_willThrow();
    }

    else
    {
      return (*(v25 + 32))(v23, v9, a2);
    }
  }

  return result;
}

{
  v6 = v5;
  v9 = *a1;
  v8 = a1[1];
  v10 = *v4;
  v11 = v4[1];
  v12 = *(*v4 + 16);
  swift_bridgeObjectRetain_n();
  if (v12)
  {
    v13 = v9;
    v14 = sub_26C06772C(v9, v8);
    if (v15)
    {
      v16 = v14;
      swift_bridgeObjectRelease_n();
      return sub_26C0681EC(*(*(v10 + 56) + 8 * v16), v11, a2, a3, a4);
    }

    v20 = *(v10 + 16);
    if (v20)
    {
      v21 = v5;
      v18 = sub_26C072BB4(v20, 0);
      v22 = sub_26C072C38(v55, v18 + 4, v20, v10);
      v19 = v55[0];
      v51 = v22;

      sub_26C072D90(v19);
      if (v51 != v20)
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v6 = v21;
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
    }

    v19 = v13;
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
    v19 = v9;
  }

  v45 = a4;
  v46 = v11;
  v47 = v10;
  v52 = v18[2];
  if (v52)
  {
    v23 = 0;
    v24 = (v18 + 5);
    v25 = MEMORY[0x277D84F90];
    v48 = v8;
    v49 = v19;
    while (v23 < v18[2])
    {
      v27 = *(v24 - 1);
      v26 = *v24;
      v55[0] = v27;
      v55[1] = v26;

      if (sub_26C072D98(v55, v19, v8))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v56 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26C06B938(0, *(v25 + 2) + 1, 1);
          v25 = v56;
        }

        v30 = *(v25 + 2);
        v29 = *(v25 + 3);
        if (v30 >= v29 >> 1)
        {
          sub_26C06B938((v29 > 1), v30 + 1, 1);
          v25 = v56;
        }

        *(v25 + 2) = v30 + 1;
        v31 = &v25[16 * v30];
        *(v31 + 4) = v27;
        *(v31 + 5) = v26;
        v19 = v49;
        v8 = v48;
      }

      else
      {
      }

      ++v23;
      v24 += 2;
      if (v52 == v23)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  v25 = MEMORY[0x277D84F90];
LABEL_22:
  v32 = v19;

  v33 = *(v25 + 2);

  if (v33)
  {
    if (v33 == 1)
    {

      if (*(v25 + 2))
      {
        if (*(v47 + 16))
        {
          v35 = *(v25 + 4);
          v34 = *(v25 + 5);

          v36 = sub_26C06772C(v35, v34);
          LOBYTE(v35) = v37;

          if (v35)
          {
            return sub_26C0681EC(*(*(v47 + 56) + 8 * v36), v46, a2, a3, v45);
          }

          goto LABEL_39;
        }

LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v43 = 2;
LABEL_35:
    sub_26C072E10();
    swift_allocError();
    *v44 = v32;
    *(v44 + 8) = v8;
    *(v44 + 16) = v25;
    *(v44 + 24) = v43;
    return swift_willThrow();
  }

  v38 = *(v47 + 16);
  if (v38)
  {
    v50 = v19;
    v39 = v8;
    v40 = v6;
    v41 = sub_26C072BB4(v38, 0);
    v42 = sub_26C072C38(v55, v41 + 4, v38, v47);
    v19 = v55[0];

    sub_26C072D90(v19);
    if (v42 != v38)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v6 = v40;
    v8 = v39;
    v32 = v50;
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
  }

  v55[0] = v41;
  v19 = v6;
  sub_26C0AA298(v55);
  if (!v6)
  {
    v25 = v55[0];
    v43 = 1;
    goto LABEL_35;
  }

LABEL_42:
  MEMORY[0x26D69B350](v19);

  __break(1u);
  return result;
}

uint64_t sub_26C0681EC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v29 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v27 = &v27 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v11 = sub_26C0ABAF0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  v16 = *(v10 - 8);
  result = MEMORY[0x28223BE20](v13);
  v19 = &v27 - v18;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > a1)
  {
    sub_26C067878(a2 + 40 * a1 + 32, v30, &qword_2804793C0, &qword_26C0AC810);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C0, &qword_26C0AC810);
    v20 = swift_dynamicCast();
    v21 = *(v16 + 56);
    if (v20)
    {
      v21(v15, 0, 1, v10);
      (*(v16 + 32))(v19, v15, v10);
      (*(a4 + 48))(v19, a3, a4);
      (*(v16 + 8))(v19, v10);
      v22 = v29;
      v23 = swift_dynamicCast();
      v24 = *(*(a3 - 8) + 56);
      if (v23)
      {
        v25 = v22;
        v26 = 0;
        return v24(v25, v26, 1, a3);
      }

      v25 = v22;
    }

    else
    {
      v21(v15, 1, 1, v10);
      (*(v12 + 8))(v15, v11);
      v24 = *(*(a3 - 8) + 56);
      v25 = v29;
    }

    v26 = 1;
    return v24(v25, v26, 1, a3);
  }

  __break(1u);
  return result;
}

uint64_t sub_26C068554@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_26C068624@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  sub_26C067528(a1, v27);
  sub_26C069260(v28);
  sub_26C069F20(v29);
  sub_26C069CC4(v30);
  sub_26C0696D8(v31);
  sub_26C06C11C(v32);
  sub_26C06A060(v33);
  v2 = MEMORY[0x277D84F90];
  for (i = 32; i != 312; i += 40)
  {
    sub_26C067878(&v26[i], &v23, &qword_280479360, &qword_26C0AC5D8);
    v17[0] = v23;
    v17[1] = v24;
    v18 = v25;
    if (*(&v24 + 1))
    {
      sub_26C06A3A8(v17, v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v2 = sub_26C06A384(0, v2[2] + 1, 1, v2);
        v22 = v2;
      }

      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        v2 = sub_26C06A384((v5 > 1), v6 + 1, 1, v2);
        v22 = v2;
      }

      v7 = v20;
      v8 = v21;
      v9 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
      MEMORY[0x28223BE20](v9);
      v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))(v11);
      sub_26C06A410(v6, v11, &v22, v7, v8);
      __swift_destroy_boxed_opaque_existential_1(v19);
    }

    else
    {
      sub_26C06A56C(v17, &qword_280479360, &qword_26C0AC5D8);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
  swift_arrayDestroy();
  sub_26C0688D8(v2, &v23);

  v13 = *(&v24 + 1);
  v14 = v25;
  __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
  (*(v14 + 8))(v13, v14);
  return __swift_destroy_boxed_opaque_existential_1(&v23);
}

uint64_t sub_26C0688D8@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    v6 = MEMORY[0x277D84F90];
    v7 = MEMORY[0x277D84F90];
LABEL_23:
    v29[0] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479408, &qword_26C0AC858);
    sub_26C068F2C(&qword_280B5B098, &qword_280479408, &qword_26C0AC858, MEMORY[0x277D83958]);
    v25 = sub_26C0AB810();
    v27 = v26;

    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
    a4[3] = result;
    a4[4] = &protocol witness table for Expression<A>;
    *a4 = v25;
    a4[1] = v27;
    a4[2] = v7;
    return result;
  }

  v5 = (a1 + 32);
  v6 = MEMORY[0x277D84F90];
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v5[3];
    v10 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v9);
    (*(v10 + 8))(v29, v9, v10);
    v11 = v29[0];
    v12 = v29[1];
    v13 = v29[2];

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26C068CD4(0, *(v6 + 16) + 1, 1, v6);
      v6 = result;
    }

    v15 = *(v6 + 16);
    v14 = *(v6 + 24);
    if (v15 >= v14 >> 1)
    {
      result = sub_26C068CD4((v14 > 1), v15 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 16) = v15 + 1;
    v16 = v6 + 16 * v15;
    *(v16 + 32) = v11;
    *(v16 + 40) = v12;
    v17 = *(v13 + 16);
    v18 = v7[2];
    v19 = v18 + v17;
    if (__OFADD__(v18, v17))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && (v20 = v7[3] >> 1, v20 >= v19))
    {
      if (*(v13 + 16))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v18 <= v19)
      {
        v21 = v18 + v17;
      }

      else
      {
        v21 = v18;
      }

      result = sub_26C068DE4(result, v21, 1, v7);
      v7 = result;
      v20 = *(result + 24) >> 1;
      if (*(v13 + 16))
      {
LABEL_18:
        if (v20 - v7[2] < v17)
        {
          goto LABEL_26;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C0, &qword_26C0AC810);
        swift_arrayInitWithCopy();

        if (v17)
        {
          v22 = v7[2];
          v23 = __OFADD__(v22, v17);
          v24 = v22 + v17;
          if (v23)
          {
            goto LABEL_27;
          }

          v7[2] = v24;
        }

        goto LABEL_4;
      }
    }

    if (v17)
    {
      goto LABEL_25;
    }

LABEL_4:

    v5 += 5;
    if (!--v4)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_26C068B98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return ExpressionType.expression.getter(a1, WitnessTable, a2);
}

uint64_t ExpressionType.expression.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = (*(a2 + 24))();
  v8 = v7;
  result = (*(a2 + 32))(a1, a2);
  *a3 = v6;
  a3[1] = v8;
  a3[2] = result;
  return result;
}

uint64_t sub_26C068C74()
{
  sub_26C06C114();
}

uint64_t sub_26C068C9C()
{
  v0 = sub_26C0696D0();

  return v0;
}

char *sub_26C068CD4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C8, &qword_26C0AC818);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26C068DE4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C0, &qword_26C0AC810);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26C068F2C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_26C068F7C@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v5 = v2[2];
  v4 = v2[3];
  v6 = v2[5];
  if (v6)
  {
    v7 = v2[4];
    if (a1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26C0AC540;
      sub_26C069100(v5, v4, (inited + 32));
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
      *(inited + 104) = &protocol witness table for Expression<A>;
      *(inited + 72) = 21313;
      *(inited + 80) = 0xE200000000000000;
      v10 = MEMORY[0x277D84F90];
      *(inited + 88) = MEMORY[0x277D84F90];
      *(inited + 96) = v9;
      *(inited + 136) = v9;
      *(inited + 144) = &protocol witness table for Expression<A>;
      *(inited + 112) = sub_26C067104(34, 0xE100000000000000, v7, v6);
      *(inited + 120) = v11;
      *(inited + 128) = v10;
      sub_26C0688D8(inited, a2);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
      return swift_arrayDestroy();
    }

    v5 = v2[4];
    v4 = v2[5];
  }

  else
  {
  }

  sub_26C069100(v5, v4, a2);
}

uint64_t sub_26C069100@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = sub_26C067104(34, 0xE100000000000000, a1, a2);
  v7 = v6;
  v8 = *(v3 + 56);
  if (v8)
  {
    v9 = *(v3 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C0AC580;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
    *(inited + 56) = v11;
    *(inited + 64) = &protocol witness table for Expression<A>;
    *(inited + 32) = sub_26C067104(34, 0xE100000000000000, v9, v8);
    v12 = MEMORY[0x277D84F90];
    *(inited + 40) = v13;
    *(inited + 48) = v12;
    *(inited + 96) = v11;
    *(inited + 104) = &protocol witness table for Expression<A>;
    *(inited + 72) = v5;
    *(inited + 80) = v7;
    *(inited + 88) = v12;
    sub_26C0688D8(inited, a3);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    return swift_arrayDestroy();
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
    a3[4] = &protocol witness table for Expression<A>;
    *a3 = v5;
    a3[1] = v7;
    a3[2] = MEMORY[0x277D84F90];
    a3[3] = result;
  }

  return result;
}

double sub_26C069260@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v2 + 16);
  if (v3)
  {
    v26 = a1;
    v37 = MEMORY[0x277D84F90];
    sub_26C07272C(0, v3, 0);
    v4 = v2 + 32;
    v5 = v37;
    v27 = xmmword_26C0AC590;
    v6 = MEMORY[0x277D84F90];
    do
    {
      sub_26C067878(v4, &v28, &qword_2804793E0, &qword_26C0AC830);
      v7 = v28;
      sub_26C06A3A8(&v29, v34);
      sub_26C06A3A8(&v32, v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
      inited = swift_initStackObject();
      *(inited + 16) = v27;
      v28 = 0;
      *&v29 = 0xE000000000000000;
      if (v7)
      {
        if (v7 == 1)
        {
          v9 = 0x52454E4E49;
        }

        else
        {
          v9 = 0x54554F205446454CLL;
        }

        if (v7 == 1)
        {
          v10 = 0xE500000000000000;
        }

        else
        {
          v10 = 0xEA00000000005245;
        }
      }

      else
      {
        v10 = 0xE500000000000000;
        v9 = 0x53534F5243;
      }

      MEMORY[0x26D69A890](v9, v10);

      MEMORY[0x26D69A890](0x4E494F4A20, 0xE500000000000000);
      v11 = v28;
      v12 = v29;
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
      *(inited + 56) = v13;
      *(inited + 64) = &protocol witness table for Expression<A>;
      *(inited + 32) = v11;
      *(inited + 40) = v12;
      *(inited + 48) = v6;
      v14 = v35;
      v15 = v36;
      __swift_project_boxed_opaque_existential_1(v34, v35);
      sub_26C070730(1, v14, v15, (inited + 72));
      *(inited + 136) = v13;
      *(inited + 144) = &protocol witness table for Expression<A>;
      *(inited + 112) = 20047;
      *(inited + 120) = 0xE200000000000000;
      *(inited + 128) = v6;
      sub_26C06B6BC(v33, inited + 152);
      sub_26C0688D8(inited, &v28);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
      swift_arrayDestroy();
      __swift_destroy_boxed_opaque_existential_1(v33);
      __swift_destroy_boxed_opaque_existential_1(v34);
      v37 = v5;
      v17 = *(v5 + 16);
      v16 = *(v5 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_26C07272C((v16 > 1), v17 + 1, 1);
      }

      v18 = v30;
      v19 = v31;
      v20 = __swift_mutable_project_boxed_opaque_existential_1(&v28, v30);
      MEMORY[0x28223BE20](v20);
      v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v23 + 16))(v22);
      sub_26C072778(v17, v22, &v37, v18, v19);
      __swift_destroy_boxed_opaque_existential_1(&v28);
      v5 = v37;
      v4 += 88;
      --v3;
    }

    while (v3);
    sub_26C0688D8(v37, v26);
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

double _s11SwiftSQLite12VirtualTableV_8databaseACSS_SSSgtcfC_0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26C0AC5C0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  *(v10 + 64) = &protocol witness table for Expression<A>;
  *(v10 + 32) = 42;
  *(v10 + 40) = 0xE100000000000000;
  v12 = MEMORY[0x277D84F90];
  *(v10 + 48) = MEMORY[0x277D84F90];
  *(v10 + 56) = v11;
  *a5 = 0;
  *(a5 + 8) = v10;
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 48) = a3;
  *(a5 + 56) = a4;
  *(a5 + 64) = v12;
  result = 0.0;
  *(a5 + 72) = 0u;
  *(a5 + 88) = 0u;
  *(a5 + 104) = 0u;
  *(a5 + 120) = 0;
  *(a5 + 128) = v12;
  *(a5 + 136) = 0;
  *(a5 + 144) = 0;
  *(a5 + 152) = 256;
  *(a5 + 160) = v12;
  return result;
}

void sub_26C0696D8(uint64_t a1@<X8>)
{
  v2 = *(v1 + 160);
  v3 = *(v2 + 16);
  if (!v3)
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v53 = a1;
  v4 = MEMORY[0x277D84F90];
  v70 = MEMORY[0x277D84F90];
  sub_26C07272C(0, v3, 0);
  v5 = v2 + 32;
  v6 = v70;
  while (1)
  {
    v55 = v3;
    sub_26C06B6BC(v5, v62);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
    v58 = &protocol witness table for Expression<A>;
    v56[0] = 0x4E4F494E55;
    v56[1] = 0xE500000000000000;
    v56[2] = v4;
    v54 = v57;
    v7 = v63;
    v8 = v64;
    v9 = __swift_project_boxed_opaque_existential_1(v62, v63);
    v60 = v7;
    v61 = *(v8 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v59);
    (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, v9, v7);
    v11 = v57;
    v12 = v58;
    __swift_project_boxed_opaque_existential_1(v56, v57);
    (v12[1])(&v65, v11, v12);
    v14 = v65;
    v13 = v66;
    v15 = v67;

    v16 = sub_26C068CD4(0, 1, 1, v4);
    v18 = *(v16 + 2);
    v17 = *(v16 + 3);
    if (v18 >= v17 >> 1)
    {
      v16 = sub_26C068CD4((v17 > 1), v18 + 1, 1, v16);
    }

    *(v16 + 2) = v18 + 1;
    v19 = &v16[16 * v18];
    *(v19 + 4) = v14;
    *(v19 + 5) = v13;
    v20 = v15[2];

    v21 = sub_26C068DE4(0, v20, 1, v4);
    v22 = v21;
    if (!v15[2])
    {
      break;
    }

    if ((v21[3] >> 1) - v21[2] < v20)
    {
      goto LABEL_33;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C0, &qword_26C0AC810);
    swift_arrayInitWithCopy();

    if (v20)
    {
      v23 = v22[2];
      v24 = __OFADD__(v23, v20);
      v25 = v23 + v20;
      if (v24)
      {
        goto LABEL_35;
      }

      v22[2] = v25;
    }

LABEL_11:

    v26 = v60;
    v27 = v61;
    __swift_project_boxed_opaque_existential_1(v59, v60);
    (*(v27 + 8))(&v65, v26, v27);
    v29 = v65;
    v28 = v66;
    v30 = v67;
    v32 = *(v16 + 2);
    v31 = *(v16 + 3);

    if (v32 >= v31 >> 1)
    {
      v16 = sub_26C068CD4((v31 > 1), v32 + 1, 1, v16);
    }

    *(v16 + 2) = v32 + 1;
    v33 = &v16[16 * v32];
    *(v33 + 4) = v29;
    *(v33 + 5) = v28;
    v34 = v30[2];
    v35 = v22[2];
    v36 = v35 + v34;
    if (__OFADD__(v35, v34))
    {
      goto LABEL_31;
    }

    v37 = v22[3] >> 1;

    if (v37 < v36)
    {
      if (v35 <= v36)
      {
        v40 = v35 + v34;
      }

      else
      {
        v40 = v35;
      }

      v22 = sub_26C068DE4(1, v40, 1, v22);
      v35 = v22[2];
      v37 = v22[3] >> 1;
      if (v30[2])
      {
LABEL_16:
        if ((v37 - v35) < v34)
        {
          goto LABEL_34;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C0, &qword_26C0AC810);
        swift_arrayInitWithCopy();

        if (v34)
        {
          v38 = v22[2];
          v24 = __OFADD__(v38, v34);
          v39 = v38 + v34;
          if (v24)
          {
            goto LABEL_36;
          }

          v22[2] = v39;
        }

        goto LABEL_25;
      }
    }

    else if (v34)
    {
      goto LABEL_16;
    }

    if (v34)
    {
      goto LABEL_32;
    }

LABEL_25:

    v65 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479408, &qword_26C0AC858);
    sub_26C068F2C(&qword_280B5B098, &qword_280479408, &qword_26C0AC858, MEMORY[0x277D83958]);
    v41 = sub_26C0AB810();
    v43 = v42;

    v68 = v54;
    v69 = &protocol witness table for Expression<A>;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
    v65 = v41;
    v66 = v43;
    v67 = v22;
    __swift_destroy_boxed_opaque_existential_1(v62);
    v70 = v6;
    v45 = *(v6 + 16);
    v44 = *(v6 + 24);
    if (v45 >= v44 >> 1)
    {
      sub_26C07272C((v44 > 1), v45 + 1, 1);
    }

    v46 = v68;
    v47 = v69;
    v48 = __swift_mutable_project_boxed_opaque_existential_1(&v65, v68);
    MEMORY[0x28223BE20](v48);
    v50 = &v52 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v51 + 16))(v50);
    sub_26C072778(v45, v50, &v70, v46, v47);
    __swift_destroy_boxed_opaque_existential_1(&v65);
    v6 = v70;
    v5 += 40;
    v3 = v55 - 1;
    v4 = MEMORY[0x277D84F90];
    if (v55 == 1)
    {
      sub_26C0688D8(v70, v53);

      return;
    }
  }

  if (!v20)
  {
    goto LABEL_11;
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_26C069CC4(uint64_t a1@<X8>)
{
  v3 = v1[12];
  if (v3)
  {
    v4 = v1[13];
    v5 = v1[14];
    v6 = v1[15];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C0AC580;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
    *(inited + 32) = 0x59422050554F5247;
    *(inited + 56) = v8;
    *(inited + 64) = &protocol witness table for Expression<A>;
    v9 = MEMORY[0x277D84F90];
    *(inited + 40) = 0xE800000000000000;
    *(inited + 48) = v9;

    sub_26C06E874(v4, v5, v6);
    sub_26C0688D8(v3, (inited + 72));
    sub_26C0688D8(inited, v12);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();

    if (v5)
    {
      v10 = swift_initStackObject();
      *(v10 + 16) = xmmword_26C0AC580;
      sub_26C06B6BC(v12, v10 + 32);
      v11 = swift_initStackObject();
      *(v11 + 16) = xmmword_26C0AC580;
      *(v11 + 56) = v8;
      *(v11 + 64) = &protocol witness table for Expression<A>;
      *(v11 + 32) = 0x474E49564148;
      *(v11 + 40) = 0xE600000000000000;
      *(v11 + 48) = MEMORY[0x277D84F90];
      *(v11 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
      *(v11 + 104) = &protocol witness table for Expression<A>;
      *(v11 + 72) = v4;
      *(v11 + 80) = v5;
      *(v11 + 88) = v6;
      sub_26C0688D8(v11, (v10 + 72));
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_26C0688D8(v10, a1);
      swift_setDeallocating();
      swift_arrayDestroy();
      __swift_destroy_boxed_opaque_existential_1(v12);
    }

    else
    {
      sub_26C06A3A8(v12, a1);
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }
}

double sub_26C069F20@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[10];
  if (v3)
  {
    v4 = v1[11];
    v5 = v1[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C0AC580;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
    *(inited + 32) = 0x4552454857;
    *(inited + 56) = v7;
    *(inited + 64) = &protocol witness table for Expression<A>;
    v8 = MEMORY[0x277D84F90];
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = v8;
    *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
    *(inited + 104) = &protocol witness table for Expression<A>;
    *(inited + 72) = v5;
    *(inited + 80) = v3;
    *(inited + 88) = v4;

    sub_26C0688D8(inited, a1);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void sub_26C06A060(uint64_t a1@<X8>)
{
  if (*(v1 + 153))
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    v3 = *(v1 + 152);
    v4 = sub_26C0ABC60();
    MEMORY[0x26D69A890](v4);

    if (v3)
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
      *(a1 + 32) = &protocol witness table for Expression<A>;
      *a1 = 0x2054494D494CLL;
      *(a1 + 8) = 0xE600000000000000;
      *(a1 + 16) = MEMORY[0x277D84F90];
      *(a1 + 24) = v5;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26C0AC580;
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
      *(inited + 56) = v7;
      *(inited + 64) = &protocol witness table for Expression<A>;
      *(inited + 32) = 0x2054494D494CLL;
      v8 = MEMORY[0x277D84F90];
      *(inited + 40) = 0xE600000000000000;
      *(inited + 48) = v8;
      v9 = sub_26C0ABC60();
      MEMORY[0x26D69A890](v9);

      *(inited + 96) = v7;
      *(inited + 104) = &protocol witness table for Expression<A>;
      *(inited + 72) = 0x2054455346464FLL;
      *(inited + 80) = 0xE700000000000000;
      *(inited + 88) = v8;
      sub_26C0688D8(inited, a1);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
      swift_arrayDestroy();
    }
  }
}

void *sub_26C06A23C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_26C06A3A8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_26C06A410(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_26C06A3A8(&v12, v10 + 40 * a1 + 32);
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26C06A56C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26C06A5F0(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  if (!v3)
  {
    return v2;
  }

  swift_beginAccess();
  sqlite3_reset(*(v2 + 16));
  sqlite3_clear_bindings(*(v2 + 16));
  if (v3 == sqlite3_bind_parameter_count(*(v2 + 16)))
  {
    v5 = a1 + 32;
    v6 = -v3;
    v7 = 1;
    do
    {
      sub_26C06D998(v5, v7++);
      v5 += 40;
    }

    while (v6 + v7 != 1);
    return v2;
  }

  sub_26C0ABB30();
  sqlite3_bind_parameter_count(*(v2 + 16));
  sub_26C0ABC60();

  MEMORY[0x26D69A890](0xD000000000000012, 0x800000026C0AE260);
  v9 = sub_26C0ABC60();
  MEMORY[0x26D69A890](v9);

  MEMORY[0x26D69A890](0x64657373617020, 0xE700000000000000);
  result = sub_26C0ABBE0();
  __break(1u);
  return result;
}

uint64_t sub_26C06A790(void *a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x277D84F98];
  v127 = (v4 + 16);
  v138 = a1;
  v139 = v5;
  *(v5 + 16) = 0;
  v6 = (v5 + 16);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 16))(v175, v7, v8);
  v9 = v175[1];

  sub_26C06B68C(v175);
  v10 = *(v9 + 16);
  v126 = v6;
  swift_beginAccess();
  v128 = v10;
  if (!v10)
  {
LABEL_90:

    swift_beginAccess();
    v35 = *(v4 + 16);

    return v35;
  }

  v11 = 0;
  v130 = v9 + 32;
  v133 = v4;
  v129 = v9;
  while (2)
  {
    if (v11 >= *(v9 + 16))
    {
      goto LABEL_99;
    }

    v132 = v11;
    sub_26C06B6BC(v130 + 40 * v11, v172);
    v12 = v173;
    v13 = v174;
    __swift_project_boxed_opaque_existential_1(v172, v173);
    (*(v13 + 8))(v170, v12, v13);
    v14 = v170[0];

    v15 = HIBYTE(*(&v14 + 1)) & 0xFLL;
    if ((*(&v14 + 1) & 0x2000000000000000) == 0)
    {
      v15 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15)
    {

      v34 = MEMORY[0x277D84F90];
      v18 = MEMORY[0x277D84F90];
      v35 = *(MEMORY[0x277D84F90] + 16);
      if (v35)
      {
        goto LABEL_34;
      }

LABEL_25:
      v36 = v34;

      if (*(v34 + 16))
      {
        goto LABEL_40;
      }

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
      result = sub_26C0ABCF0();
      __break(1u);
      return result;
    }

    v134 = v2;
    v16 = 0;
    v17 = 4 * v15;
    v18 = MEMORY[0x277D84F90];
    v19 = 15;
    do
    {
      while (1)
      {
        if (sub_26C0AB960() == 46 && v22 == 0xE100000000000000)
        {

          goto LABEL_16;
        }

        v23 = sub_26C0ABC70();

        if ((v23 & 1) == 0)
        {
          break;
        }

LABEL_16:
        if (v19 >> 14 != v16)
        {
          if (v16 < v19 >> 14)
          {
            goto LABEL_102;
          }

          v24 = sub_26C0AB980();
          v176 = v25;
          v27 = v26;
          v29 = v28;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_26C06B720(0, *(v18 + 2) + 1, 1, v18);
          }

          v30 = v18;
          v31 = *(v18 + 2);
          v32 = v30;
          v33 = *(v30 + 3);
          if (v31 >= v33 >> 1)
          {
            v32 = sub_26C06B720((v33 > 1), v31 + 1, 1, v32);
          }

          *(v32 + 2) = v31 + 1;
          v20 = &v32[32 * v31];
          v18 = v32;
          v21 = v176;
          *(v20 + 4) = v24;
          *(v20 + 5) = v21;
          *(v20 + 6) = v27;
          *(v20 + 7) = v29;
        }

        v19 = sub_26C0AB8F0();
        v16 = v19 >> 14;
        if (v19 >> 14 == v17)
        {
          goto LABEL_22;
        }
      }

      v16 = sub_26C0AB8F0() >> 14;
    }

    while (v16 != v17);
    v16 = v19 >> 14;
LABEL_22:
    if (v16 == v17)
    {

      v4 = v133;
      v2 = v134;
      goto LABEL_33;
    }

    if (v17 < v16)
    {
      goto LABEL_103;
    }

    v37 = sub_26C0AB980();
    v39 = v38;
    v41 = v40;
    v43 = v42;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_26C06B720(0, *(v18 + 2) + 1, 1, v18);
    }

    v4 = v133;
    v2 = v134;
    v44 = v18;
    v45 = *(v18 + 2);
    v46 = v44;
    v47 = *(v44 + 3);
    if (v45 >= v47 >> 1)
    {
      v46 = sub_26C06B720((v47 > 1), v45 + 1, 1, v46);
    }

    *(v46 + 2) = v45 + 1;
    v48 = &v46[32 * v45];
    v18 = v46;
    *(v48 + 4) = v37;
    *(v48 + 5) = v39;
    *(v48 + 6) = v41;
    *(v48 + 7) = v43;
LABEL_33:
    v34 = MEMORY[0x277D84F90];
    v35 = *(v18 + 2);
    if (!v35)
    {
      goto LABEL_25;
    }

LABEL_34:
    v135 = v2;
    *&v170[0] = v34;
    sub_26C06B938(0, v35, 0);
    v49 = 0;
    v36 = *&v170[0];
    v50 = (v18 + 56);
    do
    {
      if (v49 >= *(v18 + 2))
      {
        __break(1u);
LABEL_96:

        __swift_destroy_boxed_opaque_existential_1(&v156);
        goto LABEL_93;
      }

      v51 = v35;
      v52 = v18;
      v54 = *(v50 - 3);
      v53 = *(v50 - 2);
      v55 = v36;
      v56 = *(v50 - 1);
      v57 = *v50;

      v58 = v56;
      v36 = v55;
      v59 = MEMORY[0x26D69A850](v54, v53, v58, v57);
      v61 = v60;

      *&v170[0] = v55;
      v62 = *(v55 + 2);
      v63 = *(v36 + 3);
      if (v62 >= v63 >> 1)
      {
        sub_26C06B938((v63 > 1), v62 + 1, 1);
        v36 = *&v170[0];
      }

      ++v49;
      *(v36 + 2) = v62 + 1;
      v64 = &v36[16 * v62];
      *(v64 + 4) = v59;
      *(v64 + 5) = v61;
      v50 += 4;
      v35 = v51;
      v18 = v52;
    }

    while (v51 != v49);

    v4 = v133;
    v2 = v135;
    if (!*(v36 + 2))
    {
      goto LABEL_100;
    }

LABEL_40:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_26C0AAD84(v36);
      v65 = *(v36 + 2);
      if (v65)
      {
        goto LABEL_42;
      }

      goto LABEL_101;
    }

    v65 = *(v36 + 2);
    if (!v65)
    {
      goto LABEL_101;
    }

LABEL_42:
    v66 = v65 - 1;
    v67 = &v36[16 * v66];
    v69 = *(v67 + 4);
    v68 = *(v67 + 5);
    *(v36 + 2) = v66;
    *&v170[0] = v36;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479408, &qword_26C0AC858);
    sub_26C068F2C(&qword_280B5B098, &qword_280479408, &qword_26C0AC858, MEMORY[0x277D83958]);
    v70 = sub_26C0AB810();
    v72 = v71;

    if (v69 == 42 && v68 == 0xE100000000000000)
    {

      break;
    }

    v73 = sub_26C0ABC70();

    if ((v73 & 1) == 0)
    {

      v105 = v173;
      v106 = v174;
      __swift_project_boxed_opaque_existential_1(v172, v173);
      (*(v106 + 8))(v170, v105, v106);
      v107 = v170[0];

      v108 = *v126;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v140 = *v127;
      v110 = v140;
      v111 = sub_26C06772C(v107, *(&v107 + 1));
      v113 = *(v110 + 16);
      v114 = (v112 & 1) == 0;
      v115 = __OFADD__(v113, v114);
      v116 = v113 + v114;
      if (v115)
      {
        goto LABEL_104;
      }

      v117 = v112;
      if (*(v110 + 24) >= v116)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v121 = v111;
          sub_26C0A9960();
          v111 = v121;
          if (v117)
          {
            goto LABEL_78;
          }

          goto LABEL_85;
        }
      }

      else
      {
        sub_26C06C4F8(v116, isUniquelyReferenced_nonNull_native);
        v111 = sub_26C06772C(v107, *(&v107 + 1));
        if ((v117 & 1) != (v118 & 1))
        {
          goto LABEL_107;
        }
      }

      if (v117)
      {
LABEL_78:
        v119 = v111;

        v120 = v140;
        *(*(v140 + 56) + 8 * v119) = v108;
LABEL_87:
        *v127 = v120;
        swift_endAccess();
        v9 = v129;
        if (__OFADD__(v108, 1))
        {
          goto LABEL_105;
        }

        *v126 = v108 + 1;
        __swift_destroy_boxed_opaque_existential_1(v172);
LABEL_89:
        v11 = v132 + 1;
        if (v132 + 1 == v128)
        {
          goto LABEL_90;
        }

        continue;
      }

LABEL_85:
      v120 = v140;
      *(v140 + 8 * (v111 >> 6) + 64) |= 1 << v111;
      *(v120[6] + 16 * v111) = v107;
      *(v120[7] + 8 * v111) = v108;
      v122 = v120[2];
      v115 = __OFADD__(v122, 1);
      v123 = v122 + 1;
      if (v115)
      {
        goto LABEL_106;
      }

      v120[2] = v123;
      goto LABEL_87;
    }

    break;
  }

  v176 = v72;
  sub_26C06B6BC(v138, v167);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_26C0AC5C0;
  *(v74 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  *(v74 + 64) = &protocol witness table for Expression<A>;
  *(v74 + 32) = 42;
  *(v74 + 40) = 0xE100000000000000;
  *(v74 + 48) = MEMORY[0x277D84F90];
  v75 = v168;
  v76 = v169;
  __swift_mutable_project_boxed_opaque_existential_1(v167, v168);
  v77 = (*(v76 + 32))(&v156, v75, v76);
  *v78 = 0;
  *(v78 + 8) = v74;

  v77(&v156, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793E8, &qword_26C0AC838);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_26C0AC5C0;
  v131 = v79;
  sub_26C06B6BC(v167, v79 + 32);
  v35 = v138[3];
  v80 = v138[4];
  __swift_project_boxed_opaque_existential_1(v138, v35);
  (*(v80 + 16))(&v156, v35, v80);
  v170[8] = v164;
  v170[9] = v165;
  v171 = v166;
  v170[4] = v160;
  v170[5] = v161;
  v170[6] = v162;
  v170[7] = v163;
  v170[0] = v156;
  v170[1] = v157;
  v170[2] = v158;
  v170[3] = v159;
  v81 = v160;

  sub_26C06B68C(v170);
  v82 = *(v81 + 16);
  if (v82)
  {
    v136 = v2;
    v155 = MEMORY[0x277D84F90];
    sub_26C072834(0, v82, 0);
    v83 = v155;
    v35 = v81 + 32;
    do
    {
      sub_26C067878(v35, &v140, &qword_2804793E0, &qword_26C0AC830);
      v151[2] = v142;
      v152[0] = v143;
      v152[1] = v144;
      v153 = v145;
      v151[0] = v140;
      v151[1] = v141;
      sub_26C06A3A8((v151 + 8), v154);
      __swift_destroy_boxed_opaque_existential_1(v152);
      v155 = v83;
      v85 = *(v83 + 16);
      v84 = *(v83 + 24);
      if (v85 >= v84 >> 1)
      {
        sub_26C072834((v84 > 1), v85 + 1, 1);
        v83 = v155;
      }

      *(v83 + 16) = v85 + 1;
      sub_26C06A3A8(v154, v83 + 40 * v85 + 32);
      v35 += 88;
      --v82;
    }

    while (v82);

    v2 = v136;
  }

  else
  {

    v83 = MEMORY[0x277D84F90];
  }

  *&v156 = v131;
  sub_26C06B97C(v83);
  v86 = v156;
  v87 = v176;
  v88 = HIBYTE(v176) & 0xF;
  if ((v176 & 0x2000000000000000) == 0)
  {
    v88 = v70 & 0xFFFFFFFFFFFFLL;
  }

  if (!v88)
  {

    v176 = *(v86 + 16);
    if (v176)
    {
      v100 = 0;
      v101 = v86 + 32;
      v4 = v133;
      while (v100 < *(v86 + 16))
      {
        sub_26C06B6BC(v101, v151);
        v102 = v138[3];
        v103 = v138[4];
        __swift_project_boxed_opaque_existential_1(v138, v102);
        (*(v103 + 16))(&v140, v102, v103);
        v164 = v148;
        v165 = v149;
        v166 = v150;
        v160 = v144;
        v161 = v145;
        v162 = v146;
        v163 = v147;
        v156 = v140;
        v157 = v141;
        v158 = v142;
        v159 = v143;
        v35 = v144;

        sub_26C06B68C(&v156);
        v104 = *(v35 + 16);

        sub_26C06BAC4(v151, v137, v104 != 0, v133, v139);
        if (v2)
        {
          __swift_destroy_boxed_opaque_existential_1(v151);

          goto LABEL_93;
        }

        ++v100;
        __swift_destroy_boxed_opaque_existential_1(v151);
        v101 += 40;
        if (v176 == v100)
        {
          goto LABEL_80;
        }
      }

LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    v4 = v133;
LABEL_80:

LABEL_81:
    __swift_destroy_boxed_opaque_existential_1(v167);
    __swift_destroy_boxed_opaque_existential_1(v172);
    v9 = v129;
    goto LABEL_89;
  }

  v89 = *(v156 + 16);
  if (v89)
  {
    v90 = 0;
    v91 = v156 + 32;
    while (1)
    {
      if (v90 >= *(v86 + 16))
      {
        __break(1u);
        goto LABEL_98;
      }

      sub_26C06B6BC(v91, &v156);
      v92 = *(&v157 + 1);
      v93 = v158;
      __swift_project_boxed_opaque_existential_1(&v156, *(&v157 + 1));
      sub_26C070730(0, v92, v93, &v140);
      v94 = *(&v141 + 1);
      v95 = v142;
      __swift_project_boxed_opaque_existential_1(&v140, *(&v141 + 1));
      v96 = *(v95 + 8);
      v97 = v95;
      v87 = v176;
      v96(v151, v94, v97);
      v35 = *(&v151[0] + 1);
      v98 = *&v151[0];

      if (__PAIR128__(v35, v98) == __PAIR128__(v87, v70))
      {
        break;
      }

      v99 = sub_26C0ABC70();

      __swift_destroy_boxed_opaque_existential_1(&v140);
      if (v99)
      {
        goto LABEL_74;
      }

      ++v90;
      __swift_destroy_boxed_opaque_existential_1(&v156);
      v91 += 40;
      if (v89 == v90)
      {
        goto LABEL_91;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(&v140);
LABEL_74:

    v4 = v133;
    sub_26C06BAC4(&v156, v137, 1, v133, v139);
    if (v2)
    {
      goto LABEL_96;
    }

    __swift_destroy_boxed_opaque_existential_1(&v156);
    goto LABEL_81;
  }

LABEL_91:

  sub_26C072E10();
  swift_allocError();
  *v124 = v70;
  *(v124 + 8) = v87;
  *(v124 + 16) = 0;
  *(v124 + 24) = 0;
  swift_willThrow();
LABEL_93:
  __swift_destroy_boxed_opaque_existential_1(v167);
  __swift_destroy_boxed_opaque_existential_1(v172);

  return v35;
}

uint64_t sub_26C06B61C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26C06B6BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_26C06B720(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793D0, &qword_26C0AC820);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26C06B82C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C8, &qword_26C0AC818);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26C06B938(char *a1, int64_t a2, char a3)
{
  result = sub_26C06B82C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_26C06B9A4(uint64_t result, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v5 = *(result + 16);
  v6 = *v4;
  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v7 + v5 <= *(v6 + 24) >> 1)
  {
    if (*(v11 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v6 = result;
  if (!*(v11 + 16))
  {
LABEL_10:

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_11:
    *v4 = v6;
    return result;
  }

  v12 = *(v6 + 16);
  v13 = __OFADD__(v12, v5);
  v14 = v12 + v5;
  if (!v13)
  {
    *(v6 + 16) = v14;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_26C06BAC4(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v77 = a5;
  v78 = a4;
  v73 = a3;
  v75 = a2;
  v5 = a1;
  v86[21] = *MEMORY[0x277D85DE8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  v7 = v5[3];
  v8 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v7);
  (*(v8 + 16))(v84, v7, v8);
  v9 = v84[3];
  v74 = v84[2];

  sub_26C06B68C(v84);
  v11 = v5[3];
  v10 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v11);
  v12 = v11;
  v13 = v5;
  (*(v10 + 16))(v85, v12, v10);
  v14 = v85[6];
  v15 = v85[7];

  sub_26C06B68C(v85);
  v16 = *(v8 + 40);
  v82 = DynamicType;
  v83 = v8;
  __swift_allocate_boxed_opaque_existential_1(v81);
  v16(v74, v9, v14, v15, DynamicType, v8);
  v17 = v5[3];
  v18 = v5[4];
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  (*(v18 + 16))(v86, v17, v18);
  LOBYTE(v5) = v86[0];
  v19 = v86[1];

  sub_26C06B68C(v86);
  v20 = v82;
  v21 = v83;
  __swift_mutable_project_boxed_opaque_existential_1(v81, v82);
  v22 = (*(v21 + 32))(v80, v20, v21);
  *v23 = v5;
  *(v23 + 8) = v19;

  v22(v80, 0);
  v25 = v82;
  v24 = v83;
  __swift_project_boxed_opaque_existential_1(v81, v82);
  (*(*(v24 + 8) + 8))(v80, v25);
  v26 = v80[0];
  v27 = v80[1];
  v28 = v80[2];
  type metadata accessor for Statement();
  swift_allocObject();

  sub_26C066FF0(v29, v26, v27);
  if (v76)
  {

    return __swift_destroy_boxed_opaque_existential_1(v81);
  }

  v74 = 0;

  sub_26C06A5F0(v28);

  v31 = Statement.columnNames.getter();

  v32 = *(v31 + 16);
  if (v32)
  {
    v80[0] = MEMORY[0x277D84F90];
    sub_26C06B938(0, v32, 0);
    v33 = v80[0];
    v76 = v31;
    v34 = (v31 + 40);
    do
    {
      v36 = *(v34 - 1);
      v35 = *v34;

      v37 = sub_26C067104(34, 0xE100000000000000, v36, v35);
      v39 = v38;

      v80[0] = v33;
      v41 = *(v33 + 16);
      v40 = *(v33 + 24);
      v42 = v33;
      if (v41 >= v40 >> 1)
      {
        sub_26C06B938((v40 > 1), v41 + 1, 1);
        v42 = v80[0];
      }

      *(v42 + 16) = v41 + 1;
      v43 = v42 + 16 * v41;
      *(v43 + 32) = v37;
      *(v43 + 40) = v39;
      v34 += 2;
      --v32;
      v33 = v42;
    }

    while (v32);

    if (v73)
    {
      goto LABEL_9;
    }
  }

  else
  {

    v33 = MEMORY[0x277D84F90];
    if (v73)
    {
LABEL_9:
      MEMORY[0x28223BE20](v44);
      v72[2] = v13;
      v45 = v74;
      v46 = sub_26C072874(sub_26C072A88, v72, v33);
      v74 = v45;

      v33 = v46;
    }
  }

  v47 = v78;
  v76 = *(v33 + 16);
  if (v76)
  {
    v48 = v77;
    swift_beginAccess();
    swift_beginAccess();
    v49 = 0;
    v50 = (v33 + 40);
    v75 = v33;
    while (1)
    {
      if (v49 >= *(v33 + 16))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
      }

      v52 = *(v50 - 1);
      v51 = *v50;
      v53 = *(v48 + 16);
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v79 = *(v47 + 16);
      v55 = v79;
      *(v47 + 16) = 0x8000000000000000;
      v56 = sub_26C06772C(v52, v51);
      v58 = v55[2];
      v59 = (v57 & 1) == 0;
      v60 = __OFADD__(v58, v59);
      v61 = v58 + v59;
      if (v60)
      {
        goto LABEL_29;
      }

      v62 = v57;
      if (v55[3] < v61)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_18;
      }

      v66 = v56;
      sub_26C0A9960();
      v56 = v66;
      if ((v62 & 1) == 0)
      {
LABEL_21:
        v65 = v79;
        v79[(v56 >> 6) + 8] |= 1 << v56;
        v67 = (v65[6] + 16 * v56);
        *v67 = v52;
        v67[1] = v51;
        *(v65[7] + 8 * v56) = v53;
        v68 = v65[2];
        v60 = __OFADD__(v68, 1);
        v69 = v68 + 1;
        if (v60)
        {
          goto LABEL_31;
        }

        v65[2] = v69;
        goto LABEL_23;
      }

LABEL_19:
      v64 = v56;

      v65 = v79;
      *(v79[7] + 8 * v64) = v53;
LABEL_23:
      v47 = v78;
      *(v78 + 16) = v65;
      swift_endAccess();
      v48 = v77;
      v70 = *(v77 + 16);
      v60 = __OFADD__(v70, 1);
      v71 = v70 + 1;
      v33 = v75;
      if (v60)
      {
        goto LABEL_30;
      }

      ++v49;
      *(v77 + 16) = v71;
      v50 += 2;
      if (v76 == v49)
      {
        goto LABEL_25;
      }
    }

    sub_26C06C4F8(v61, isUniquelyReferenced_nonNull_native);
    v56 = sub_26C06772C(v52, v51);
    if ((v62 & 1) != (v63 & 1))
    {
      result = sub_26C0ABCF0();
      __break(1u);
      return result;
    }

LABEL_18:
    if ((v62 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

LABEL_25:

  return __swift_destroy_boxed_opaque_existential_1(v81);
}

double sub_26C06C11C@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 128);
  if (*(v3 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C0AC580;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
    *(inited + 32) = 0x594220524544524FLL;
    *(inited + 56) = v5;
    *(inited + 64) = &protocol witness table for Expression<A>;
    v6 = MEMORY[0x277D84F90];
    *(inited + 40) = 0xE800000000000000;
    *(inited + 48) = v6;
    sub_26C0688D8(v3, (inited + 72));
    sub_26C0688D8(inited, a1);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_26C06C234@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[9];
  v25 = v1[8];
  v26 = v3;
  v4 = v1[3];
  v5 = v1[5];
  v21 = v1[4];
  v6 = v21;
  v22 = v5;
  v7 = v1[5];
  v8 = v1[7];
  v23 = v1[6];
  v9 = v23;
  v24 = v8;
  v10 = v1[1];
  v18[0] = *v1;
  v18[1] = v10;
  v11 = v1[3];
  v13 = *v1;
  v12 = v1[1];
  v19 = v1[2];
  v14 = v19;
  v20 = v11;
  v15 = v1[9];
  *(a1 + 128) = v25;
  *(a1 + 144) = v15;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *(a1 + 96) = v9;
  *(a1 + 112) = v2;
  *a1 = v13;
  *(a1 + 16) = v12;
  v27 = *(v1 + 20);
  *(a1 + 160) = *(v1 + 20);
  *(a1 + 32) = v14;
  *(a1 + 48) = v4;
  return sub_26C06B654(v18, v17);
}

int64_t Statement.columnNames.getter()
{
  v1 = v0;
  v2 = *(v0 + 48);
  if (v2)
  {

    return v2;
  }

  result = Statement.columnCount.getter();
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = result;
  if (result > 0x7FFFFFFF)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (result < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v2 = MEMORY[0x277D84F90];
  if (!result)
  {
LABEL_13:
    *(v1 + 48) = v2;

    return v2;
  }

  v12 = MEMORY[0x277D84F90];
  sub_26C06B938(0, result, 0);
  v2 = v12;
  swift_beginAccess();
  v5 = 0;
  while (1)
  {
    result = sqlite3_column_name(*(v1 + 16), v5);
    if (!result)
    {
      break;
    }

    result = sub_26C0AB910();
    v8 = *(v12 + 16);
    v7 = *(v12 + 24);
    if (v8 >= v7 >> 1)
    {
      v10 = result;
      v11 = v6;
      sub_26C06B938((v7 > 1), v8 + 1, 1);
      v6 = v11;
      result = v10;
    }

    *(v12 + 16) = v8 + 1;
    v9 = v12 + 16 * v8;
    *(v9 + 32) = result;
    *(v9 + 40) = v6;
    if (v4 == v5)
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v4 == ++v5)
    {
      goto LABEL_13;
    }
  }

LABEL_19:
  __break(1u);
  return result;
}

unint64_t sub_26C06C440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_26C0ABC70())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_26C06C4F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479710, &qword_26C0ADEC0);
  v34 = v4;
  result = sub_26C0ABC00();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_26C0ABD60();
      sub_26C0AB8D0();
      result = sub_26C0ABD80();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_26C06C7A0(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479450, &qword_26C0AC948);
  v10 = sub_26C06DF08();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_26C06C850(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

_BYTE *sub_26C06C850@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = sub_26C086E80(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_26C086F38(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_26C06D7B4(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_26C06C8E4@<X0>(uint64_t *a2@<X8>)
{

  v4 = sub_26C06C7A0(v3);
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
  return result;
}

uint64_t Row.subscript.getter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  return sub_26C067EA0(a1, a2, a3, Row.get<A>(_:));
}

{
  return sub_26C067EA0(a1, a2, a3, Row.get<A>(_:));
}

void sub_26C06C95C(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = (v3 + 16);

  swift_beginAccess();
  v5 = MEMORY[0x277D84F90];
  if (a2 >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = MEMORY[0x277D84F90] + 32;
    while (1)
    {
      v9 = v6 + 1;
      *v4 = v6 + 1;
      Cursor.subscript.getter(v6, v24);
      if (!v7)
      {
        v10 = v5[3];
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v11 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
        v13 = swift_allocObject();
        v14 = (_swift_stdlib_malloc_size(v13) - 32) / 40;
        v13[2] = v12;
        v13[3] = 2 * v14;
        v15 = (v13 + 4);
        v16 = v5[3] >> 1;
        if (v5[2])
        {
          if (v13 != v5 || v15 >= &v5[5 * v16 + 4])
          {
            memmove(v13 + 4, v5 + 4, 40 * v16);
          }

          v5[2] = 0;
        }

        v8 = v15 + 40 * v16;
        v7 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;

        v5 = v13;
      }

      v18 = __OFSUB__(v7--, 1);
      if (v18)
      {
        break;
      }

      v19 = v24[0];
      v20 = v24[1];
      *(v8 + 32) = v25;
      *v8 = v19;
      *(v8 + 16) = v20;
      v8 += 40;
      v6 = v9;
      if (a2 == v9)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v7 = 0;
LABEL_21:

  v21 = v5[3];
  if (v21 >= 2)
  {
    v22 = v21 >> 1;
    v18 = __OFSUB__(v22, v7);
    v23 = v22 - v7;
    if (v18)
    {
LABEL_27:
      __break(1u);
      return;
    }

    v5[2] = v23;
  }
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Statement.step()()
{
  v2 = *(v0 + 24);
  sub_26C06CD30();
  if (qword_280B5AF70 != -1)
  {
    swift_once();
  }

  sub_26C0ABAA0();
  v3 = sub_26C06CD98();
  if ((v14 & 1) != 0 || v13 != v3)
  {
    v6 = *(v2 + 88);
    sub_26C0ABAD0();

    if (!v1)
    {
      v5 = v15;
    }

    goto LABEL_14;
  }

  swift_beginAccess();
  v4 = sqlite3_step(*(v0 + 16));
  if (qword_280B5B0A0 != -1)
  {
    swift_once();
  }

  if (!sub_26C071740(v4, off_280B5B0A8))
  {
    swift_beginAccess();
    v7 = *(v2 + 16);
    if (v7)
    {
      v7 = sqlite3_errmsg(v7);
      if (v7)
      {
        v8 = sub_26C0AB910();
        v10 = v9;
        sub_26C08FE58();
        swift_allocError();
        *v11 = v8;
        *(v11 + 8) = v10;
        *(v11 + 16) = v4;
        *(v11 + 24) = 0;
        swift_willThrow();
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return v7;
  }

  v5 = v4 == 100;
LABEL_14:
  LOBYTE(v7) = v5;
  return v7;
}

unint64_t sub_26C06CD30()
{
  result = qword_280B5B040;
  if (!qword_280B5B040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280B5B040);
  }

  return result;
}

uint64_t sub_26C06CD98()
{
  result = v0;
  if (*(v0 + 104) != 1)
  {
    return *(v0 + 96);
  }

  *(v0 + 96) = v0;
  *(v0 + 104) = 0;
  return result;
}

uint64_t ExpressionType.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (*(a5 + 24))(a3, a5);
  v12 = v11;
  v13 = (*(a5 + 32))(a3, a5);
  (*(a4 + 40))(v10, v12, v13, a2, a4);
  v14 = *(*(a3 - 8) + 8);

  return v14(a1, a3);
}

uint64_t Value.expression.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Expression(0, a1, v10, v11);
  (*(v7 + 16))(v9, v3, a1);
  WitnessTable = swift_getWitnessTable();
  ExpressionType<>.init(value:)(v9, v12, WitnessTable, a2);
  v19[0] = v19[3];
  v19[1] = v19[4];
  v19[2] = v19[5];
  v14 = (*(WitnessTable + 24))(v12, WitnessTable);
  v16 = v15;
  v17 = (*(WitnessTable + 32))(v12, WitnessTable);
  *a3 = v14;
  a3[1] = v16;
  a3[2] = v17;
}

uint64_t sub_26C06D4A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  v18[3] = type metadata accessor for Expression(0, a3, a3, a4);
  v18[4] = &protocol witness table for Expression<A>;
  v18[0] = v12;
  v18[1] = v11;
  v18[2] = v13;
  v14 = *(a4 + 8);
  v17[3] = a3;
  v17[4] = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a2, a3);

  sub_26C06E7EC(v18, v17, 1, a5, a3, a6);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t QueryType.filter(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  (*(*(a2 - 8) + 16))(a4, v4, a2);
  (*(a3 + 16))(v24, a2, a3);
  v10 = v25;
  v11 = v26;
  v12 = v27;
  sub_26C06E874(v25, v26, v27);
  sub_26C06B68C(v24);
  if (v11)
  {
    v23[0] = v10;
    v23[1] = v11;
    v23[2] = v12;
    v22[0] = v8;
    v22[1] = v7;
    v22[2] = v9;
    && infix(_:_:)(v23, v22);
    sub_26C06E9FC(v10, v11, v12);
    v8 = v19;
    v7 = v20;
    v9 = v21;
  }

  else
  {
  }

  v13 = (*(a3 + 32))(v23, a2, a3);
  v15 = v14[9];
  v16 = v14[10];
  v17 = v14[11];
  v14[9] = v8;
  v14[10] = v7;
  v14[11] = v9;
  sub_26C06E9FC(v15, v16, v17);
  return v13(v23, 0);
}

{
  v7 = a1[1];
  v8 = a1[2];
  v10[0] = *a1;
  v10[1] = v7;
  v10[2] = v8;

  QueryType.filter(_:)(v10, a2, a3, a4);
}

uint64_t sub_26C06D7B4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_26C0AB6D0();
  swift_allocObject();
  result = sub_26C0AB690();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_26C06D83C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, void (*a7)(uint64_t *, void, unint64_t)@<X6>, uint64_t *a8@<X8>)
{
  v21 = 32;
  v22 = 0xE100000000000000;
  MEMORY[0x26D69A890](a3, a4);
  MEMORY[0x26D69A890](32, 0xE100000000000000);
  sub_26C0688D8(a1, &v21);

  v14 = v24;
  v15 = v25;
  __swift_project_boxed_opaque_existential_1(&v21, v24);
  (v15[1])(v20, v14, v15);
  v17 = v20[0];
  v16 = v20[1];
  v18 = v20[2];
  result = __swift_destroy_boxed_opaque_existential_1(&v21);
  if (a2)
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v25 = &protocol witness table for Expression<A>;
    v21 = v17;
    v22 = v16;
    v23 = v18;
    a7(&v21, 0, 0xE000000000000000);
    return __swift_destroy_boxed_opaque_existential_1(&v21);
  }

  else
  {
    *a8 = v17;
    a8[1] = v16;
    a8[2] = v18;
  }

  return result;
}

double sub_26C06D96C@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t Expression.init(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_26C06D998(sqlite3_int64 a1, uint64_t a2)
{
  if (!*(a1 + 24))
  {
    v7 = swift_beginAccess();
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      return sqlite3_bind_null(v2[2], a2);
    }

    __break(1u);
    goto LABEL_46;
  }

  sub_26C06DF6C(a1, v17);
  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479438, &unk_26C0ACEA0);
    if (swift_dynamicCast())
    {
      v3 = v15;
      v7 = swift_beginAccess();
      if (a2 >= 0xFFFFFFFF80000000)
      {
        if (a2 <= 0x7FFFFFFF)
        {
          v4 = *(v15 + 16);
          if (!(v4 >> 31))
          {
            v7 = v2[2];
            if (qword_280B5AF20 == -1)
            {
LABEL_8:
              sqlite3_bind_blob(v7, a2, (v3 + 32), v4, qword_280B5B228);
            }

LABEL_49:
            v14 = v7;
            swift_once();
            v7 = v14;
            goto LABEL_8;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

LABEL_46:
      __break(1u);
      goto LABEL_47;
    }
  }

  else
  {
    sub_26C071BDC(v17);
  }

  sub_26C06DF6C(a1, v17);
  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479438, &unk_26C0ACEA0);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      if (a2 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (a2 <= 0x7FFFFFFF)
      {
        return sqlite3_bind_double(v2[2], a2, *&v15);
      }

      __break(1u);
      goto LABEL_52;
    }
  }

  else
  {
    sub_26C071BDC(v17);
  }

  sub_26C06DF6C(a1, v17);
  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479438, &unk_26C0ACEA0);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      if (a2 >= 0xFFFFFFFF80000000)
      {
        if (a2 <= 0x7FFFFFFF)
        {
          return sqlite3_bind_int64(v2[2], a2, v15);
        }

        goto LABEL_53;
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }
  }

  else
  {
    sub_26C071BDC(v17);
  }

  sub_26C06DF6C(a1, v17);
  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479438, &unk_26C0ACEA0);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      if (a2 >= 0xFFFFFFFF80000000)
      {
        if (a2 <= 0x7FFFFFFF)
        {
          v2 = v2[2];
          if (qword_280B5AF20 == -1)
          {
LABEL_30:
            v9 = qword_280B5B228;
            v10 = sub_26C0AB8B0();

            sqlite3_bind_text(v2, a2, (v10 + 32), -1, v9);
          }

LABEL_56:
          swift_once();
          goto LABEL_30;
        }

LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

LABEL_54:
      __break(1u);
      goto LABEL_55;
    }
  }

  else
  {
    sub_26C071BDC(v17);
  }

  sub_26C06DF6C(a1, v17);
  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479438, &unk_26C0ACEA0);
    if (swift_dynamicCast())
    {
      v11 = MEMORY[0x277D84A28];
      v12 = v15;
LABEL_39:
      v18 = v11;
      v19 = &protocol witness table for Int64;
      v17[0] = v12;
      sub_26C06D998(v17, a2);
      v13 = v17;
      return sub_26C071BDC(v13);
    }
  }

  else
  {
    sub_26C071BDC(v17);
  }

  sub_26C06DF6C(a1, v17);
  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479438, &unk_26C0ACEA0);
    if (swift_dynamicCast())
    {
      v11 = MEMORY[0x277D84A28];
      v12 = v15;
      goto LABEL_39;
    }
  }

  else
  {
    sub_26C071BDC(v17);
  }

  sub_26C06DF6C(a1, &v15);
  if (!v16)
  {
    v13 = &v15;
    return sub_26C071BDC(v13);
  }

  sub_26C06A3A8(&v15, v17);
  *&v15 = 0;
  *(&v15 + 1) = 0xE000000000000000;
  sub_26C0ABB30();
  MEMORY[0x26D69A890](0xD00000000000001FLL, 0x800000026C0AE240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479438, &unk_26C0ACEA0);
  sub_26C0ABBD0();
  result = sub_26C0ABBE0();
  __break(1u);
  return result;
}

unint64_t sub_26C06DF08()
{
  result = qword_280B5A980;
  if (!qword_280B5A980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280479450, &qword_26C0AC948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B5A980);
  }

  return result;
}

uint64_t sub_26C06DF6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C0, &qword_26C0AC810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C06DFDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *x8_0@<X8>)
{
  v15 = *a1;
  v14 = a1[1];
  v16 = a1[2];
  v22[3] = type metadata accessor for Expression(0, a3, a3, a4);
  v22[4] = &protocol witness table for Expression<A>;
  v22[0] = v15;
  v22[1] = v14;
  v22[2] = v16;
  v17 = *(a4 + 8);
  v21[3] = a3;
  v21[4] = v17;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v22, inited + 32);
  sub_26C06B6BC(v21, inited + 72);

  sub_26C06E254(inited, 1, a6, a7, x8_0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v21);
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_26C06E148@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v16 = a2;
  v17 = a3;

  MEMORY[0x26D69A890](40, 0xE100000000000000);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = *(v7 + 8);
  v8(v15, v6, v7);
  v9 = v15[0];
  v10 = v15[1];

  MEMORY[0x26D69A890](v9, v10);

  MEMORY[0x26D69A890](41, 0xE100000000000000);
  v11 = v16;
  v12 = v17;
  v8(v15, v6, v7);
  v13 = v15[2];

  *a4 = v11;
  a4[1] = v12;
  a4[2] = v13;
  return result;
}

uint64_t != infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  return sub_26C06DFDC(a1, a2, a3, a4, 15649, 0xE200000000000000, x8_0);
}

{
  return sub_26C0922B4(a1, a2, a3, a4, 15649, 0xE200000000000000, 0x544F4E205349, x8_0, 0xE600000000000000);
}

uint64_t sub_26C06E288@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v16 = a2;
  v17 = a3;

  MEMORY[0x26D69A890](40, 0xE100000000000000);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = *(v7 + 8);
  v8(v15, v6, v7);
  v9 = v15[0];
  v10 = v15[1];

  MEMORY[0x26D69A890](v9, v10);

  MEMORY[0x26D69A890](41, 0xE100000000000000);
  v11 = v16;
  v12 = v17;
  v8(v15, v6, v7);
  v13 = v15[2];

  return Expression.init(_:_:)(v11, v12, v13, a4);
}

uint64_t sub_26C06E3AC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = type metadata accessor for Expression(0, a5, a3, a4);
  v24 = 32;
  v25 = 0xE100000000000000;
  MEMORY[0x26D69A890](a3, a4);
  MEMORY[0x26D69A890](32, 0xE100000000000000);
  sub_26C0688D8(a1, &v24);

  v12 = v27;
  v13 = v28;
  __swift_project_boxed_opaque_existential_1(&v24, v27);
  (v13[1])(&v22, v12, v13);
  v20 = v22;
  v21 = v23;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  WitnessTable = swift_getWitnessTable();
  v16 = sub_26C068F2C(&qword_280B5AF28, &qword_280479358, &qword_26C0AC5D0, &protocol conformance descriptor for Expression<A>);
  ExpressionType.init<A>(_:)(&v20, v11, v14, WitnessTable, v16);
  result = __swift_destroy_boxed_opaque_existential_1(&v24);
  v18 = v30;
  v19 = v31;
  if (a2)
  {
    v27 = v11;
    v28 = &protocol witness table for Expression<A>;
    v24 = v29;
    v25 = v30;
    v26 = v31;
    sub_26C06E288(&v24, 0, 0xE000000000000000, a6);
    return __swift_destroy_boxed_opaque_existential_1(&v24);
  }

  else
  {
    *a6 = v29;
    a6[1] = v18;
    a6[2] = v19;
  }

  return result;
}

uint64_t ExpressionType<>.init(value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26C0AC5C0;
  v9 = *(a4 + 56);
  swift_getAssociatedTypeWitness();
  *(v8 + 56) = swift_getAssociatedTypeWitness();
  *(v8 + 64) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1((v8 + 32));
  v10 = swift_checkMetadataState();
  v9(v10, a4);
  (*(a3 + 40))(63, 0xE100000000000000, v8, a2, a3);
  v11 = *(*(v10 - 8) + 8);

  return v11(a1, v10);
}

uint64_t sub_26C06E708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(a1, inited + 32);
  sub_26C06B6BC(a2, inited + 72);
  sub_26C06E3AC(inited, a3, a4, a5, a6, a7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  return swift_arrayDestroy();
}

uint64_t sub_26C06E7EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = sub_26C06E8B8(a4);
  sub_26C06E708(a1, a2, a3, v11, v12, a5, a6);
}

uint64_t & infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C06D4A0(a1, a2, a3, a4, 10, a5);
}

{
  return sub_26C090C78(a1, a2, a3, a4, 10, a5);
}

void sub_26C06E874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

uint64_t sub_26C06E8B8(char a1)
{
  result = 43;
  switch(a1)
  {
    case 1:
      result = 45;
      break;
    case 2:
      result = 21071;
      break;
    case 3:
      result = 4476481;
      break;
    case 4:
      result = 542396238;
      break;
    case 5:
      result = 42;
      break;
    case 6:
      result = 47;
      break;
    case 7:
      result = 37;
      break;
    case 8:
      result = 15420;
      break;
    case 9:
      result = 15934;
      break;
    case 10:
      result = 38;
      break;
    case 11:
      result = 124;
      break;
    case 12:
      result = 126;
      break;
    case 13:
      result = 61;
      break;
    case 14:
      result = 15649;
      break;
    case 15:
      result = 62;
      break;
    case 16:
      result = 60;
      break;
    case 17:
      result = 15678;
      break;
    case 18:
      result = 15676;
      break;
    case 19:
      result = 31868;
      break;
    default:
      return result;
  }

  return result;
}

void sub_26C06E9FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

void Connection.transaction(_:block:)(unsigned __int8 *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  sub_26C0ABB30();

  v26 = 0x204E49474542;
  v27 = 0xE600000000000000;
  v7 = 0x54414944454D4D49;
  if (v6 != 1)
  {
    v7 = 0x564953554C435845;
  }

  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0x4445525245464544;
  }

  if (v6)
  {
    v9 = 0xE900000000000045;
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  MEMORY[0x26D69A890](v8, v9);

  v10 = MEMORY[0x26D69A890](0x4341534E41525420, 0xEC0000004E4F4954);
  v25 = v22;
  v12 = v26;
  v11 = v27;
  MEMORY[0x28223BE20](v10);
  v23 = a2;
  v22[1] = a3;
  v22[0] = v13;
  sub_26C06CD30();
  if (qword_280B5AF70 != -1)
  {
    swift_once();
  }

  sub_26C0ABAA0();
  v14 = v26;
  v15 = v27;
  v16 = sub_26C06CD98();
  if ((v15 & 1) != 0 || v14 != v16)
  {
    v19 = *(v3 + 88);
    sub_26C0ABAD0();
  }

  else
  {
    type metadata accessor for Statement();
    swift_initStackObject();

    v18 = v24;
    sub_26C066FF0(v17, v12, v11);
    if (!v18)
    {

      Statement.run(_:)(MEMORY[0x277D84F90]);

      v23(v20);
      swift_initStackObject();

      sub_26C066FF0(v21, 0xD000000000000012, 0x800000026C0AE2C0);

      Statement.run(_:)(MEMORY[0x277D84F90]);
    }
  }
}

uint64_t sub_26C06EECC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for Statement();
  swift_initStackObject();

  sub_26C066FF0(v14, a2, a3);

  if (!v7)
  {
    Statement.run(_:)(MEMORY[0x277D84F90]);

    a4(v16);
    swift_initStackObject();

    sub_26C066FF0(a1, a6, a7);

    Statement.run(_:)(MEMORY[0x277D84F90]);
  }

  return result;
}

sqlite3 *Statement.run(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_26C06A5F0(a1);
  swift_beginAccess();
  v4 = *(v3 + 16);

  sqlite3_reset(v4);
  sub_26C06CD30();
  while (1)
  {
    while (1)
    {
      v5 = *(v3 + 24);
      if (qword_280B5AF70 != -1)
      {
        swift_once();
      }

      sub_26C0ABAA0();
      v6 = sub_26C06CD98();
      if ((v21 & 1) == 0 && v20 == v6)
      {
        break;
      }

      v14 = *(v5 + 88);
      sub_26C0ABAD0();
      if (v2)
      {

        return v3;
      }

      if ((v22 & 1) == 0)
      {
        return v3;
      }
    }

    v7 = *(v3 + 24);
    v8 = sqlite3_step(*(v3 + 16));
    if (qword_280B5B0A0 != -1)
    {
      swift_once();
    }

    v9 = off_280B5B0A8;
    if (!*(off_280B5B0A8 + 2))
    {
      break;
    }

    v10 = MEMORY[0x26D69ACD0](*(off_280B5B0A8 + 5), v8, 4);
    v11 = -1 << v9[32];
    v12 = v10 & ~v11;
    if (((*&v9[((v12 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v12) & 1) == 0)
    {
      break;
    }

    v13 = ~v11;
    while (*(*(v9 + 6) + 4 * v12) != v8)
    {
      v12 = (v12 + 1) & v13;
      if (((*&v9[((v12 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v12) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    if (v8 != 100)
    {
      return v3;
    }
  }

LABEL_19:
  swift_beginAccess();
  result = *(v7 + 16);
  if (result)
  {
    result = sqlite3_errmsg(result);
    if (result)
    {
      v16 = sub_26C0AB910();
      v18 = v17;
      sub_26C08FE58();
      swift_allocError();
      *v19 = v16;
      *(v19 + 8) = v18;
      *(v19 + 16) = v8;
      *(v19 + 24) = 0;
      swift_willThrow();

      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v3 = v1;
  if (*(a1 + 16))
  {
    v4 = Statement.run(_:)(a1);
    if (!v2)
    {
      return v4;
    }

    return v3;
  }

  else
  {
    swift_beginAccess();
    sqlite3_reset(*(v1 + 16));
    sub_26C06CD30();
    v5 = *(v1 + 24);
    while (1)
    {
      while (1)
      {
        if (qword_280B5AF70 != -1)
        {
          swift_once();
        }

        sub_26C0ABAA0();
        v6 = sub_26C06CD98();
        if ((v19 & 1) == 0 && v18 == v6)
        {
          break;
        }

        v13 = *(v5 + 88);
        sub_26C0ABAD0();

        if (v2)
        {
          return v3;
        }

        if ((v20 & 1) == 0)
        {
LABEL_26:

          return v3;
        }
      }

      v7 = sqlite3_step(*(v3 + 16));
      if (qword_280B5B0A0 != -1)
      {
        swift_once();
      }

      v8 = off_280B5B0A8;
      if (!*(off_280B5B0A8 + 2))
      {
        break;
      }

      v9 = MEMORY[0x26D69ACD0](*(off_280B5B0A8 + 5), v7, 4);
      v10 = -1 << v8[32];
      v11 = v9 & ~v10;
      if (((*&v8[((v11 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v11) & 1) == 0)
      {
        break;
      }

      v12 = ~v10;
      while (*(*(v8 + 6) + 4 * v11) != v7)
      {
        v11 = (v11 + 1) & v12;
        if (((*&v8[((v11 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v11) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      if (v7 != 100)
      {
        goto LABEL_26;
      }
    }

LABEL_22:
    swift_beginAccess();
    result = *(v5 + 16);
    if (result)
    {
      result = sqlite3_errmsg(result);
      if (result)
      {
        v3 = sub_26C0AB910();
        v16 = v15;
        sub_26C08FE58();
        swift_allocError();
        *v17 = v3;
        *(v17 + 8) = v16;
        *(v17 + 16) = v7;
        *(v17 + 24) = 0;
        swift_willThrow();
        return v3;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

{
  Statement.bind(_:)(a1);
  v1 = Statement.run(_:)(MEMORY[0x277D84F90]);

  return v1;
}

uint64_t == infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  return sub_26C06DFDC(a1, a2, a3, a4, 61, 0xE100000000000000, x8_0);
}

{
  return sub_26C0922B4(a1, a2, a3, a4, 61, 0xE100000000000000, 21321, x8_0, 0xE200000000000000);
}

uint64_t sub_26C06F45C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v19 = &protocol witness table for Expression<A>;
  v17[0] = v9;
  v17[1] = v8;
  v17[2] = v10;
  v16[3] = v18;
  v16[4] = &protocol witness table for Expression<A>;
  v16[0] = v12;
  v16[1] = v11;
  v16[2] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v17, inited + 32);
  sub_26C06B6BC(v16, inited + 72);

  a6(inited, 1, a5, 0xE200000000000000);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v16);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t && infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  return sub_26C093B6C(a1, a2, &qword_280479390, &qword_26C0AD880, sub_26C06E254);
}

{
  return sub_26C093B6C(a1, a2, &qword_280479398, &qword_26C0AC610, sub_26C085EE0);
}

uint64_t <- infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v8[1];
  v12 = v8[2];
  v16[0] = *v8;
  v16[1] = v11;
  v16[2] = v12;
  (*(v13 + 16))(v10);
  sub_26C06F6C4(v16, v10, a3, a4, x8_0);
}

uint64_t sub_26C06F6C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *a1;
  *(a5 + 24) = type metadata accessor for Expression(0, a3, a3, a4);
  *(a5 + 32) = &protocol witness table for Expression<A>;
  *a5 = v10;
  *(a5 + 8) = *(a1 + 1);
  v11 = *(a4 + 8);
  *(a5 + 64) = a3;
  *(a5 + 72) = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a5 + 40));
  v13 = *(*(a3 - 8) + 32);

  return v13(boxed_opaque_existential_1, a2, a3);
}

uint64_t <- infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v9 = sub_26C0ABAF0();
  MEMORY[0x28223BE20](v9);
  v11 = &v18[-1] - v10;
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  v18[0] = v12;
  v18[1] = v13;
  v18[2] = v14;
  (*(v15 + 16))(v11, a2);

  return sub_26C06F890(v18, v11, a4, x8_0);
}

uint64_t sub_26C06F890@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_26C0ABAF0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  v12 = *a1;
  v15 = type metadata accessor for Expression(0, v8, v13, v14);
  *(a4 + 24) = v15;
  *(a4 + 32) = &protocol witness table for Expression<A>;
  *a4 = v12;
  *(a4 + 8) = *(a1 + 1);
  (*(v9 + 16))(v11, a2, v8);
  *(a4 + 64) = v15;
  *(a4 + 72) = &protocol witness table for Expression<A>;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  ExpressionType<>.init(value:)(v11, v15, WitnessTable, a3, a4 + 40);
  return (*(v9 + 8))(a2, v8);
}

uint64_t ExpressionType<>.init(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a6;
  v30 = a2;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_26C0ABAF0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - v12;
  v14 = swift_getAssociatedTypeWitness();
  v27 = *(v14 - 8);
  v28 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_26C0AC5C0;
  v18 = a1;
  (*(v11 + 16))(v13, a1, v10);
  v19 = *(AssociatedTypeWitness - 8);
  if ((*(v19 + 48))(v13, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(v13, v10);
    *(v17 + 64) = 0;
    *(v17 + 32) = 0u;
    *(v17 + 48) = 0u;
  }

  else
  {
    v20 = *(a5 + 56);
    v25 = v16;
    v26 = v11;
    v20(AssociatedTypeWitness, a5);
    v11 = v26;
    (*(v19 + 8))(v13, AssociatedTypeWitness);
    v21 = v28;
    *(v17 + 56) = v28;
    *(v17 + 64) = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v17 + 32));
    (*(v27 + 32))(boxed_opaque_existential_1, v25, v21);
  }

  (*(a3 + 40))(63, 0xE100000000000000, v17, v30, a3);
  return (*(v11 + 8))(v18, v10);
}

uint64_t QueryType.insert(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *x8_0@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479400, &qword_26C0AC850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC5C0;
  sub_26C06FE38(a1, inited + 32);
  v12 = inited;

  sub_26C06FE94(v10);
  LOBYTE(v12) = 5;
  sub_26C0700AC(&v12, inited, a3, a4, x8_0);
}

uint64_t sub_26C06FE94(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_26C06FF8C(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_26C06FF8C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479400, &qword_26C0AC850);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26C0700AC@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v45 = a4;
  v44 = a3;
  v46 = a5;
  v43 = *a1;
  v5 = *(a2 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = a2 + 32;
    v8 = MEMORY[0x277D84F90];
    v47 = xmmword_26C0AC5C0;
    v9 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_26C06FE38(v7, &v67);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
      inited = swift_initStackObject();
      *(inited + 16) = v47;
      sub_26C06B6BC(&v67, inited + 32);
      v11 = v8[2];

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v13 = v8[3] >> 1, v14 = v8, v13 <= v11))
      {
        result = sub_26C06A384(result, v11 + 1, 1, v8);
        v14 = result;
        v13 = result[3] >> 1;
      }

      if (v13 <= v14[2])
      {
        break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
      swift_arrayInitWithCopy();

      ++v14[2];
      v15 = swift_initStackObject();
      *(v15 + 16) = v47;
      sub_26C06B6BC(&v70, v15 + 32);
      v16 = v9[2];

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v17 = v9[3] >> 1, v6 = v9, v17 <= v16))
      {
        result = sub_26C06A384(result, v16 + 1, 1, v9);
        v6 = result;
        v17 = result[3] >> 1;
      }

      if (v17 <= v6[2])
      {
        goto LABEL_41;
      }

      swift_arrayInitWithCopy();

      ++v6[2];

      sub_26C0717EC(&v67);
      v7 += 80;
      v8 = v14;
      v9 = v6;
      if (!--v5)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
LABEL_14:
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
    v54[8] = v18;
    v54[9] = &protocol witness table for Expression<A>;
    v54[5] = 0x545245534E49;
    v54[6] = 0xE600000000000000;
    v19 = MEMORY[0x277D84F90];
    v54[7] = MEMORY[0x277D84F90];
    if (v43 == 5)
    {
      v57 = 0;
      v56 = 0u;
      v55 = 0u;
    }

    else
    {
      v20 = 0xE600000000000000;
      v21 = 0x45524F4E4749;
      *&v67 = 2118223;
      *(&v67 + 1) = 0xE300000000000000;
      v22 = 0xE500000000000000;
      v23 = 0x54524F4241;
      if (v43 == 3)
      {
        v21 = 1279869254;
        v20 = 0xE400000000000000;
      }

      if (v43 != 2)
      {
        v23 = v21;
        v22 = v20;
      }

      v24 = 0xE700000000000000;
      v25 = 0x4543414C504552;
      if (v43)
      {
        v25 = 0x4B4341424C4C4F52;
        v24 = 0xE800000000000000;
      }

      if (v43 <= 1)
      {
        v26 = v25;
      }

      else
      {
        v26 = v23;
      }

      if (v43 <= 1)
      {
        v27 = v24;
      }

      else
      {
        v27 = v22;
      }

      MEMORY[0x26D69A890](v26, v27);

      *(&v56 + 1) = v18;
      v57 = &protocol witness table for Expression<A>;
      v55 = v67;
      v19 = MEMORY[0x277D84F90];
      *&v56 = MEMORY[0x277D84F90];
    }

    v61 = v18;
    v62 = &protocol witness table for Expression<A>;
    v58 = 1330925129;
    v59 = 0xE400000000000000;
    v60 = v19;
    sub_26C070730(0, v44, v45, v63);
    v64[3] = v18;
    v64[4] = &protocol witness table for Expression<A>;
    sub_26C0688D8(v14, &v67);
    sub_26C06E24C(&v67, v64, 0, 0xE000000000000000);
    __swift_destroy_boxed_opaque_existential_1(&v67);
    v64[5] = 0x5345554C4156;
    v64[6] = 0xE600000000000000;
    v64[7] = v19;
    v64[8] = v18;
    v64[9] = &protocol witness table for Expression<A>;
    v65[3] = v18;
    v65[4] = &protocol witness table for Expression<A>;
    sub_26C0688D8(v6, &v67);
    sub_26C06E24C(&v67, v65, 0, 0xE000000000000000);

    __swift_destroy_boxed_opaque_existential_1(&v67);
    sub_26C071840(v45, v66);
    for (i = 4; i != 44; i += 5)
    {
      sub_26C067878(&v54[i + 1], &v67, &qword_280479360, &qword_26C0AC5D8);
      v48[0] = v67;
      v48[1] = v68;
      v49 = v69;
      if (*(&v68 + 1))
      {
        sub_26C06A3A8(v48, &v50);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v54[0] = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v19 = sub_26C06A384(0, v19[2] + 1, 1, v19);
          v54[0] = v19;
        }

        v31 = v19[2];
        v30 = v19[3];
        if (v31 >= v30 >> 1)
        {
          v32 = sub_26C06A384((v30 > 1), v31 + 1, 1, v19);
          v54[0] = v32;
        }

        else
        {
          v32 = v19;
        }

        v33 = v52;
        v34 = v53;
        v35 = __swift_mutable_project_boxed_opaque_existential_1(&v50, v52);
        MEMORY[0x28223BE20](v35);
        v37 = &v42 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v38 + 16))(v37);
        sub_26C06A410(v31, v37, v54, v33, v34);
        __swift_destroy_boxed_opaque_existential_1(&v50);
        v19 = v32;
      }

      else
      {
        sub_26C06A56C(v48, &qword_280479360, &qword_26C0AC5D8);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
    swift_arrayDestroy();
    sub_26C0688D8(v19, &v67);

    v39 = *(&v68 + 1);
    v40 = v69;
    __swift_project_boxed_opaque_existential_1(&v67, *(&v68 + 1));
    (*(v40 + 8))(&v50, v39, v40);
    v41 = v46;
    *v46 = v50;
    *(v41 + 1) = v51;
    return __swift_destroy_boxed_opaque_existential_1(&v67);
  }

  return result;
}

uint64_t sub_26C070730@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a3 + 16);
  v8(v24, a2, a3);
  v10 = v24[4];
  v9 = v24[5];

  sub_26C06B68C(v24);
  if (v9)
  {
    if (a1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_26C0AC540;
      v8(v23, a2, a3);
      v12 = v23[2];
      v13 = v23[3];

      sub_26C06B68C(v23);
      sub_26C070B4C(v12, v13, a2, a3, (v11 + 32));

      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
      *(v11 + 104) = &protocol witness table for Expression<A>;
      *(v11 + 72) = 21313;
      *(v11 + 80) = 0xE200000000000000;
      v15 = MEMORY[0x277D84F90];
      *(v11 + 88) = MEMORY[0x277D84F90];
      *(v11 + 96) = v14;
      *(v11 + 136) = v14;
      *(v11 + 144) = &protocol witness table for Expression<A>;
      v16 = sub_26C067104(34, 0xE100000000000000, v10, v9);
      v18 = v17;

      *(v11 + 112) = v16;
      *(v11 + 120) = v18;
      *(v11 + 128) = v15;
      sub_26C0688D8(v11, a4);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
      swift_arrayDestroy();
      return swift_deallocClassInstance();
    }
  }

  v8(v23, a2, a3);
  v21 = v23[4];
  v20 = v23[5];

  sub_26C06B68C(v23);
  if (!v20)
  {
    v8(v22, a2, a3);
    v21 = v22[2];
    v20 = v22[3];

    sub_26C06B68C(v22);
  }

  sub_26C070B4C(v21, v20, a2, a3, a4);
}

double sub_26C07097C@<D0>(char a1@<W0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
  v4 = swift_allocObject();
  *&result = 1;
  v6 = MEMORY[0x277D84A28];
  *(v4 + 16) = xmmword_26C0AC5C0;
  *(v4 + 56) = v6;
  *(v4 + 64) = &protocol witness table for Int64;
  *(v4 + 32) = a1 & 1;
  *a2 = 63;
  a2[1] = 0xE100000000000000;
  a2[2] = v4;
  return result;
}

uint64_t sub_26C070A00@<X0>(void *a1@<X8>)
{
  v3 = sub_26C0AB740();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_26C0AC5C0;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = &protocol witness table for String;
  *(v7 + 32) = _s10Foundation4UUIDV11SwiftSQLiteE13datatypeValueSSvg_0();
  *(v7 + 40) = v8;
  result = (*(v4 + 8))(v6, v3);
  *a1 = 63;
  a1[1] = 0xE100000000000000;
  a1[2] = v7;
  return result;
}

uint64_t sub_26C070B4C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = sub_26C067104(34, 0xE100000000000000, a1, a2);
  v10 = v9;
  (*(a4 + 16))(v20, a3, a4);
  v12 = v20[6];
  v11 = v20[7];

  sub_26C06B68C(v20);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C0AC580;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
    *(inited + 56) = v14;
    *(inited + 64) = &protocol witness table for Expression<A>;
    v15 = sub_26C067104(34, 0xE100000000000000, v12, v11);
    v17 = v16;

    *(inited + 32) = v15;
    v18 = MEMORY[0x277D84F90];
    *(inited + 40) = v17;
    *(inited + 48) = v18;
    *(inited + 96) = v14;
    *(inited + 104) = &protocol witness table for Expression<A>;
    *(inited + 72) = v8;
    *(inited + 80) = v10;
    *(inited + 88) = v18;
    sub_26C0688D8(inited, a5);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    return swift_arrayDestroy();
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
    a5[4] = &protocol witness table for Expression<A>;
    *a5 = v8;
    a5[1] = v10;
    a5[2] = MEMORY[0x277D84F90];
    a5[3] = result;
  }

  return result;
}

uint64_t sub_26C070CF8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26C0AC5C0;
  *(v6 + 56) = &type metadata for Blob;
  *(v6 + 64) = &protocol witness table for Blob;
  sub_26C071078(a1, a2);
  result = sub_26C070EEC(a1, a2, a1, a2, (v6 + 32));
  *a3 = 63;
  a3[1] = 0xE100000000000000;
  a3[2] = v6;
  return result;
}

void *sub_26C070DB4@<X0>(void *result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  if (result)
  {
    v4 = result;
    v6 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v6 != 2)
      {
        goto LABEL_12;
      }

      v9 = *(a2 + 16);
      v8 = *(a2 + 24);
      v7 = v8 - v9;
      if (!__OFSUB__(v8, v9))
      {
        if (v7)
        {
          goto LABEL_9;
        }

LABEL_12:
        v10 = MEMORY[0x277D84F90];
        goto LABEL_13;
      }

      __break(1u);
    }

    else
    {
      if (!v6)
      {
        v7 = BYTE6(a3);
        if (!BYTE6(a3))
        {
          goto LABEL_12;
        }

LABEL_9:
        v10 = sub_26C070E78(v7, 0);
        result = memcpy(v10 + 4, v4, v7);
LABEL_13:
        *a4 = v10;
        return result;
      }

      v11 = HIDWORD(a2) - a2;
      if (!__OFSUB__(HIDWORD(a2), a2))
      {
        v7 = v11;
        if (v11)
        {
          goto LABEL_9;
        }

        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_26C070E78(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479460, "~#");
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_26C070EEC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      memset(v12, 0, 14);
      goto LABEL_9;
    }

    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
  }

  else
  {
    if (!v7)
    {
      v12[0] = a1;
      LOWORD(v12[1]) = a2;
      BYTE2(v12[1]) = BYTE2(a2);
      BYTE3(v12[1]) = BYTE3(a2);
      BYTE4(v12[1]) = BYTE4(a2);
      BYTE5(v12[1]) = BYTE5(a2);
LABEL_9:
      sub_26C070DB4(v12, a3, a4, a5);
      return sub_26C0710CC(a3, a4);
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  sub_26C071078(a3, a4);
  sub_26C071314(v8, v9, a3, a4, a5);
  return sub_26C0710CC(a3, a4);
}

uint64_t sub_26C071078(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_26C0710CC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_26C071124@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_26C0AB710();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D837D0];
  *(v8 + 16) = xmmword_26C0AC5C0;
  *(v8 + 56) = v9;
  *(v8 + 64) = &protocol witness table for String;
  if (qword_280B5A8E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = qword_280B5A8F0;
  v11 = sub_26C0AB6F0();
  v12 = [v10 stringFromDate_];

  v13 = sub_26C0AB840();
  v15 = v14;

  *(v8 + 32) = v13;
  *(v8 + 40) = v15;
  result = (*(v5 + 8))(v7, v4);
  *a1 = 63;
  a1[1] = 0xE100000000000000;
  a1[2] = v8;
  return result;
}

char *sub_26C071314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  result = sub_26C0AB6A0();
  v11 = result;
  if (result)
  {
    result = sub_26C0AB6C0();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_7;
    }

    v11 += a1 - result;
  }

  if (!__OFSUB__(a2, a1))
  {
    sub_26C0AB6B0();
    sub_26C070DB4(v11, a3, a4, a5);
    return sub_26C0710CC(a3, a4);
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_26C0713D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26C0AC5C0;
  sub_26C06B6BC(a1, v9 + 32);

  sub_26C0714B8(v10);
  sub_26C0714E8(v5, v9, a3, a3, *(a4 + 8), *(a4 + 8));
}

uint64_t sub_26C0714E8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a5 + 16);
  v10(v22, a3, a5);
  v11 = v22[3];
  v18 = v22[2];

  sub_26C06B68C(v22);
  v10(v23, a3, a5);
  v13 = v23[6];
  v12 = v23[7];

  sub_26C06B68C(v23);
  (*(a6 + 40))(v18, v11, v13, v12, a4, a6);
  v10(v21, a3, a5);
  (*(a6 + 24))(v21, a4, a6);
  v14 = *(a6 + 32);

  v15 = v14(v21, a4, a6);
  *v16 = a1;
  *(v16 + 8) = a2;

  return v15(v21, 0);
}

__n128 sub_26C071680(uint64_t a1)
{
  v3 = *(v1 + 144);
  v13[8] = *(v1 + 128);
  v13[9] = v3;
  v14 = *(v1 + 160);
  v4 = *(v1 + 80);
  v13[4] = *(v1 + 64);
  v13[5] = v4;
  v5 = *(v1 + 112);
  v13[6] = *(v1 + 96);
  v13[7] = v5;
  v6 = *(v1 + 16);
  v13[0] = *v1;
  v13[1] = v6;
  v7 = *(v1 + 48);
  v13[2] = *(v1 + 32);
  v13[3] = v7;
  sub_26C071710(v13);
  v8 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v8;
  *(v1 + 160) = *(a1 + 160);
  v9 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v9;
  v10 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v10;
  v11 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v11;
  result = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = result;
  return result;
}

BOOL sub_26C071740(unsigned int a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = MEMORY[0x26D69ACD0](*(a2 + 40), a1, 4);
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 4 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

double sub_26C071840@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 16))(v10);
  v3 = v11;
  v4 = v12;
  v5 = v13;
  sub_26C06E874(v11, v12, v13);
  sub_26C06B68C(v10);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C0AC580;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
    *(inited + 32) = 0x4552454857;
    *(inited + 56) = v7;
    *(inited + 64) = &protocol witness table for Expression<A>;
    v8 = MEMORY[0x277D84F90];
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = v8;
    *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
    *(inited + 104) = &protocol witness table for Expression<A>;
    *(inited + 72) = v3;
    *(inited + 80) = v4;
    *(inited + 88) = v5;
    sub_26C0688D8(inited, a2);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
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

Swift::Int64 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Connection.run(_:)(SwiftSQLite::Insert a1)
{
  v3 = v2;
  v5 = *a1.template._countAndFlagsBits;
  v4 = *(a1.template._countAndFlagsBits + 8);
  v6 = *(a1.template._countAndFlagsBits + 16);
  sub_26C06CD30();
  v7 = qword_280B5AF70;

  if (v7 != -1)
  {
    swift_once();
  }

  sub_26C0ABAA0();
  v8 = sub_26C06CD98();
  if ((v15 & 1) != 0 || v14 != v8)
  {
    v11 = *(v1 + 88);
    sub_26C0ABAD0();

    if (!v3)
    {
      return v13;
    }
  }

  else
  {
    type metadata accessor for Statement();
    swift_initStackObject();

    sub_26C066FF0(v9, v5, v4);

    if (v3)
    {
    }

    else
    {
      Statement.run(_:)(v6);

      swift_beginAccess();
      result = *(v1 + 16);
      if (result)
      {
        insert_rowid = sqlite3_last_insert_rowid(result);

        return insert_rowid;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_26C071BDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C0, &qword_26C0AC810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t QueryType.limit(_:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, v5);
  if (a2)
  {
    a1 = 0;
  }

  v10 = (*(a4 + 32))(v13, a3, a4);
  *(v11 + 136) = a1;
  *(v11 + 144) = 0;
  *(v11 + 152) = (a2 & 1) == 0;
  *(v11 + 153) = a2 & 1;
  return v10(v13, 0);
}

uint64_t QueryType.namespace<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v9 = type metadata accessor for Expression(0, a3, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C070730(0, a2, a4, (inited + 32));
  *(inited + 96) = v9;
  *(inited + 104) = &protocol witness table for Expression<A>;
  *(inited + 72) = v7;
  *(inited + 80) = v6;
  *(inited + 88) = v8;

  sub_26C0688D8(inited, v21);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  v11 = v22;
  v12 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  (*(v12 + 8))(&v19, v11, v12);
  v17 = v19;
  v18 = v20;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  WitnessTable = swift_getWitnessTable();
  v15 = sub_26C068F2C(&qword_280B5AF28, &qword_280479358, &qword_26C0AC5D0, &protocol conformance descriptor for Expression<A>);
  ExpressionType.init<A>(_:)(&v17, v9, v13, WitnessTable, v15);
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

double sub_26C071F30@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
  v4 = swift_allocObject();
  *&result = 1;
  *(v4 + 16) = xmmword_26C0AC5C0;
  *(v4 + 56) = MEMORY[0x277D84A28];
  *(v4 + 64) = &protocol witness table for Int64;
  *(v4 + 32) = a1;
  *a2 = 63;
  a2[1] = 0xE100000000000000;
  a2[2] = v4;
  return result;
}

uint64_t QueryType.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  return QueryType.namespace<A>(_:)(&v5, a2, a3, a4);
}

{
  v8 = *a1;
  v9 = *(a1 + 8);
  v6 = sub_26C0ABAF0();
  return QueryType.namespace<A>(_:)(&v8, a2, v6, a4);
}

uint64_t sub_26C071FFC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v11 = *a1;
  v10 = a1[1];
  v12 = a1[2];
  v14 = *a2;
  v13 = a2[1];
  v15 = a2[2];
  v20 = type metadata accessor for Expression(0, a3, a3, a4);
  v21 = &protocol witness table for Expression<A>;
  v19[0] = v11;
  v19[1] = v10;
  v19[2] = v12;
  v18[3] = v20;
  v18[4] = &protocol witness table for Expression<A>;
  v18[0] = v14;
  v18[1] = v13;
  v18[2] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v19, inited + 32);
  sub_26C06B6BC(v18, inited + 72);

  sub_26C06E254(inited, 1, a5, a6, a7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v18);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t QueryType.join(_:_:on:)@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a3;
  v11 = a3[1];
  v12 = a3[2];
  v15 = *a1;
  v14[0] = v10;
  v14[1] = v11;
  v14[2] = v12;

  QueryType.join(_:_:on:)(&v15, a2, v14, a4, a5, a6);
}

{
  v31 = *a1;
  v11 = *a3;
  v10 = a3[1];
  v12 = a3[2];
  (*(*(a4 - 8) + 16))(a6, v6, a4);
  sub_26C06B6BC(a2, v42);
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  (*(v14 + 16))(v43, v13, v14);
  v15 = v44;
  v16 = v45;
  v17 = v46;
  sub_26C06E874(v44, v45, v46);
  sub_26C06B68C(v43);
  if (v16 && (*&v38 = v11, *(&v38 + 1) = v10, v39 = v12, v32[0] = v15, v32[1] = v16, v32[2] = v17, *(&v34 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610), *&v35 = &protocol witness table for Expression<A>, && infix(_:_:)(&v38, v32), sub_26C06E9FC(v15, v16, v17), *(&v34 + 1)))
  {
    sub_26C06A3A8(&v33, &v38);
  }

  else
  {
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
    v41 = &protocol witness table for Expression<A>;
    *&v38 = v11;
    *(&v38 + 1) = v10;
    v39 = v12;
  }

  LOBYTE(v33) = v31;
  sub_26C06A3A8(v42, &v33 + 8);
  sub_26C06A3A8(&v38, v36);
  v18 = (*(a5 + 32))(v32, a4, a5);
  v20 = v19;
  v21 = *(v19 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 64) = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_26C072494(0, v21[2] + 1, 1, v21);
    *(v20 + 64) = v21;
  }

  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = sub_26C072494((v23 > 1), v24 + 1, 1, v21);
    *(v20 + 64) = v21;
  }

  v21[2] = v24 + 1;
  v25 = &v21[11 * v24];
  v26 = v34;
  *(v25 + 2) = v33;
  *(v25 + 3) = v26;
  v27 = v35;
  v28 = v36[0];
  v29 = v36[1];
  v25[14] = v37;
  *(v25 + 5) = v28;
  *(v25 + 6) = v29;
  *(v25 + 4) = v27;
  return v18(v32, 0);
}

void *sub_26C072494(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793D8, &qword_26C0AC828);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[11 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793E0, &qword_26C0AC830);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26C0725E4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_26C07272C(void *a1, int64_t a2, char a3)
{
  result = sub_26C0725E4(a1, a2, a3, *v3, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
  *v3 = result;
  return result;
}

uint64_t sub_26C072778(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_26C06A3A8(&v12, v10 + 40 * a1 + 32);
}

void *sub_26C072834(void *a1, int64_t a2, char a3)
{
  result = sub_26C0725E4(a1, a2, a3, *v3, &qword_2804793E8, &qword_26C0AC838, &qword_2804793F0, &qword_26C0AC840);
  *v3 = result;
  return result;
}

uint64_t sub_26C072874(void (*a1)(void *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v19 = MEMORY[0x277D84F90];
  sub_26C06B938(0, v5, 0);
  v6 = v19;
  for (i = (a3 + 40); ; i += 2)
  {
    v9 = *i;
    v17[0] = *(i - 1);
    v17[1] = v9;

    a1(v18, v17);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v18[0];
    v10 = v18[1];
    v19 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_26C06B938((v12 > 1), v13 + 1, 1);
      v6 = v19;
    }

    *(v6 + 16) = v13 + 1;
    v14 = v6 + 16 * v13;
    *(v14 + 32) = v11;
    *(v14 + 40) = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26C07299C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  sub_26C070730(0, v6, v7, v15);
  v8 = v16;
  v9 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  (*(v9 + 8))(v14, v8, v9);
  v10 = v14[0];
  v11 = v14[1];

  v18 = v10;
  v19 = v11;
  __swift_destroy_boxed_opaque_existential_1(v15);
  MEMORY[0x26D69A890](46, 0xE100000000000000);
  result = MEMORY[0x26D69A890](v4, v5);
  v13 = v19;
  *a3 = v18;
  a3[1] = v13;
  return result;
}

uint64_t sub_26C072AB8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479440, &qword_26C0AC8D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_26C0AB720();
  v8 = *(a2 - 8);
  result = (*(v8 + 48))(v7, 1, a2);
  if (result != 1)
  {
    return (*(v8 + 32))(a3, v7, a2);
  }

  __break(1u);
  return result;
}

void *sub_26C072BB4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C8, &qword_26C0AC818);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_26C072C38(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_26C072D98(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x26D69A890](a2, a3);
  v3 = sub_26C0AB940();

  return v3 & 1;
}

unint64_t sub_26C072E10()
{
  result = qword_280B5A978;
  if (!qword_280B5A978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B5A978);
  }

  return result;
}

void sub_26C072E70(uint64_t *a1)
{
  if (qword_280B5A8E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_280B5A8F0;
  v2 = sub_26C0AB830();
  v3 = [v1 dateFromString_];

  if (v3)
  {
    sub_26C0AB700();
  }

  else
  {
    __break(1u);
  }
}

double sub_26C072F4C@<D0>(void *a1@<X8>, double a2@<D0>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
  v4 = swift_allocObject();
  *&result = 1;
  *(v4 + 16) = xmmword_26C0AC5C0;
  *(v4 + 56) = MEMORY[0x277D839F8];
  *(v4 + 64) = &protocol witness table for Double;
  *(v4 + 32) = a2;
  *a1 = 63;
  a1[1] = 0xE100000000000000;
  a1[2] = v4;
  return result;
}

uint64_t sub_26C073028()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26C073060()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26C073098()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_26C0730D0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26C073178@<X0>(uint64_t *a1@<X8>)
{
  result = Statement.columnCount.getter();
  *a1 = result;
  return result;
}

void *sub_26C0731A4(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(v2 + 32) = *result;
  *(v2 + 40) = 0;
  return result;
}

int64_t sub_26C0731B8@<X0>(int64_t *a1@<X8>)
{
  result = Statement.columnNames.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26C0731E4(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 48) = *a1;
}

uint64_t sub_26C073228@<X0>(void *a1@<X8>)
{
  result = Statement.row.getter(v4);
  v3 = v4[1];
  *a1 = v4[0];
  a1[1] = v3;
  return result;
}

void *sub_26C073264(void *result, uint64_t *a2)
{
  v2 = result[1];
  v3 = *a2;
  *(v3 + 56) = *result;
  *(v3 + 64) = v2;
  return result;
}

uint64_t sub_26C073274()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26C0732BC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26C0732F4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26C073304(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

double sub_26C073314@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 24);
  *a2 = result;
  return result;
}

uint64_t sub_26C073404()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_26C07343C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_26C07345C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

Swift::String __swiftcall SchemaType.drop(ifExists:)(Swift::Bool ifExists)
{
  sub_26C070730(0, v1, *(v2 + 8), v10);
  v4 = sub_26C073520(0x454C424154, 0xE500000000000000, v10, ifExists);
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_1(v10);
  v7 = v4;
  v8 = v6;
  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

uint64_t sub_26C073520(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *&v29 = 0x20504F5244;
  *(&v29 + 1) = 0xE500000000000000;
  MEMORY[0x26D69A890](a1, a2);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  v37 = &protocol witness table for Expression<A>;
  v33 = 0x20504F5244;
  v34 = 0xE500000000000000;
  v35 = MEMORY[0x277D84F90];
  v36 = v6;
  if (a4)
  {
    v7 = xmmword_26C0AC550;
    v8 = MEMORY[0x277D84F90];
    v9 = &protocol witness table for Expression<A>;
  }

  else
  {
    v6 = 0;
    v9 = 0;
    v8 = 0;
    v7 = 0uLL;
  }

  v40 = v6;
  v41 = v9;
  v38 = v7;
  v39 = v8;
  sub_26C06B6BC(a3, &v42);
  v10 = MEMORY[0x277D84F90];
  for (i = 32; i != 152; i += 40)
  {
    sub_26C067878(&v32[i], &v29, &qword_280479360, &qword_26C0AC5D8);
    v23[0] = v29;
    v23[1] = v30;
    v24 = v31;
    if (*(&v30 + 1))
    {
      sub_26C06A3A8(v23, v25);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = sub_26C06A23C(0, v10[2] + 1, 1, v10, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v28 = v10;
      }

      v14 = v10[2];
      v13 = v10[3];
      if (v14 >= v13 >> 1)
      {
        v10 = sub_26C06A23C((v13 > 1), v14 + 1, 1, v10, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v28 = v10;
      }

      v16 = v26;
      v15 = v27;
      v17 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
      MEMORY[0x28223BE20](v17);
      v19 = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v19);
      sub_26C06A410(v14, v19, &v28, v16, v15);
      __swift_destroy_boxed_opaque_existential_1(v25);
    }

    else
    {
      sub_26C06A56C(v23, &qword_280479360, &qword_26C0AC5D8);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
  swift_arrayDestroy();
  sub_26C0688D8(v10, &v29);

  __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
  countAndFlagsBits = Expressible.asSQL()()._countAndFlagsBits;
  __swift_destroy_boxed_opaque_existential_1(&v29);
  return countAndFlagsBits;
}

uint64_t Table.create(temporary:ifNotExists:withoutRowid:block:)(char a1, char a2, char a3, void (*a4)(void))
{
  v9 = v4[9];
  v61 = v4[8];
  v62 = v9;
  v63 = *(v4 + 20);
  v10 = v4[5];
  v57 = v4[4];
  v58 = v10;
  v11 = v4[7];
  v59 = v4[6];
  v60 = v11;
  v12 = v4[1];
  v53 = *v4;
  v54 = v12;
  v13 = v4[3];
  v55 = v4[2];
  v56 = v13;
  type metadata accessor for TableBuilder();
  v14 = swift_allocObject();
  *(v14 + 16) = MEMORY[0x277D84F90];
  v36[1] = v14;
  a4();
  if (*(&v55 + 1))
  {
    v15 = *(&v55 + 1);
    v16 = v55;
  }

  else
  {
    v15 = *(&v54 + 1);
    v16 = v54;
  }

  sub_26C069100(v16, v15, &v43);

  if (a1)
  {
    v17 = 1;
  }

  else
  {
    v17 = 2;
  }

  sub_26C073CCC(0x454C424154, 0xE500000000000000, &v43, v17, a2 & 1, v47);
  __swift_destroy_boxed_opaque_existential_1(&v43);
  swift_beginAccess();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  v48[3] = v18;
  v48[4] = &protocol witness table for Expression<A>;

  sub_26C0688D8(v19, &v43);

  sub_26C06E148(&v43, 0, 0xE000000000000000, v48);
  __swift_destroy_boxed_opaque_existential_1(&v43);
  if (a3)
  {
    v20 = xmmword_26C0AC560;
    v21 = MEMORY[0x277D84F90];
    v22 = &protocol witness table for Expression<A>;
  }

  else
  {
    v18 = 0;
    v22 = 0;
    v21 = 0;
    v20 = 0uLL;
  }

  v51 = v18;
  v52 = v22;
  v49 = v20;
  v23 = 32;
  v50 = v21;
  v24 = MEMORY[0x277D84F90];
  do
  {
    sub_26C067878(&v46[v23], &v43, &qword_280479360, &qword_26C0AC5D8);
    v37[0] = v43;
    v37[1] = v44;
    v38 = v45;
    if (*(&v44 + 1))
    {
      sub_26C06A3A8(v37, v39);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42[0] = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = sub_26C06A23C(0, v24[2] + 1, 1, v24, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v42[0] = v24;
      }

      v27 = v24[2];
      v26 = v24[3];
      if (v27 >= v26 >> 1)
      {
        v24 = sub_26C06A23C((v26 > 1), v27 + 1, 1, v24, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v42[0] = v24;
      }

      v28 = v40;
      v29 = v41;
      v30 = __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
      MEMORY[0x28223BE20](v30);
      v32 = v36 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v33 + 16))(v32);
      sub_26C06A410(v27, v32, v42, v28, v29);
      __swift_destroy_boxed_opaque_existential_1(v39);
    }

    else
    {
      sub_26C06A56C(v37, &qword_280479360, &qword_26C0AC5D8);
    }

    v23 += 40;
  }

  while (v23 != 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
  swift_arrayDestroy();
  sub_26C0688D8(v24, &v43);

  __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
  countAndFlagsBits = Expressible.asSQL()()._countAndFlagsBits;

  __swift_destroy_boxed_opaque_existential_1(&v43);
  return countAndFlagsBits;
}

uint64_t sub_26C073CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  v34 = a6;
  v11 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  v43[9] = &protocol witness table for Expression<A>;
  v43[5] = 0x455441455243;
  v43[6] = 0xE600000000000000;
  v43[7] = MEMORY[0x277D84F90];
  v43[8] = v12;
  if (v11 == 2)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v13 = 0x455551494E55;
    if (a4)
    {
      v13 = 0x5241524F504D4554;
    }

    v14 = 0xE900000000000059;
    if ((a4 & 1) == 0)
    {
      v14 = 0xE600000000000000;
    }

    v17 = &protocol witness table for Expression<A>;
    v15 = MEMORY[0x277D84F90];
    v16 = v12;
  }

  v43[10] = v13;
  v43[11] = v14;
  v43[12] = v15;
  v43[13] = v16;
  v43[18] = v12;
  v43[19] = &protocol witness table for Expression<A>;
  v43[14] = v17;
  v43[15] = a1;
  v43[16] = a2;
  v43[17] = MEMORY[0x277D84F90];
  if (a5)
  {
    v18 = xmmword_26C0AC570;
    v19 = MEMORY[0x277D84F90];
    v20 = &protocol witness table for Expression<A>;
  }

  else
  {
    v12 = 0;
    v20 = 0;
    v19 = 0;
    v18 = 0uLL;
  }

  v46 = v12;
  v47 = v20;
  v44 = v18;
  v45 = v19;
  sub_26C06B6BC(a3, &v48);

  v21 = MEMORY[0x277D84F90];
  for (i = 4; i != 29; i += 5)
  {
    sub_26C067878(&v43[i + 1], &v40, &qword_280479360, &qword_26C0AC5D8);
    v35[0] = v40;
    v35[1] = v41;
    v36 = v42;
    if (*(&v41 + 1))
    {
      sub_26C06A3A8(v35, v37);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43[0] = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = sub_26C06A23C(0, v21[2] + 1, 1, v21, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v43[0] = v21;
      }

      v25 = v21[2];
      v24 = v21[3];
      if (v25 >= v24 >> 1)
      {
        v21 = sub_26C06A23C((v24 > 1), v25 + 1, 1, v21, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v43[0] = v21;
      }

      v26 = v38;
      v27 = v39;
      v28 = __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
      MEMORY[0x28223BE20](v28);
      v30 = &v33 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v31 + 16))(v30);
      sub_26C06A410(v25, v30, v43, v26, v27);
      __swift_destroy_boxed_opaque_existential_1(v37);
    }

    else
    {
      sub_26C06A56C(v35, &qword_280479360, &qword_26C0AC5D8);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
  swift_arrayDestroy();
  sub_26C0688D8(v21, v34);
}

uint64_t Table.addColumn<A>(_:check:defaultValue:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a2[1];
  v45 = *a2;
  v46 = a3;
  v12 = a2[2];
  v13 = v5[9];
  v72 = v5[8];
  v73 = v13;
  v74 = *(v5 + 20);
  v14 = v5[5];
  v68 = v5[4];
  v69 = v14;
  v15 = v5[7];
  v70 = v5[6];
  v71 = v15;
  v16 = v5[1];
  v64 = *v5;
  v65 = v16;
  v17 = v5[3];
  v66 = v5[2];
  v67 = v17;
  v63[3] = type metadata accessor for Expression(0, a4, a3, a4);
  v63[4] = &protocol witness table for Expression<A>;
  v63[0] = v8;
  v63[1] = v9;
  v63[2] = v10;
  v18 = *(a5 + 40);

  v19 = v18(a4, a5);
  v21 = v20;
  v47 = v11;
  v48 = v12;
  if (v11)
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479390, &qword_26C0AD880);
    v23 = &protocol witness table for Expression<A>;
    v24 = v45;
    v25 = v45;
  }

  else
  {
    v25 = 0;
    v12 = 0;
    v22 = 0;
    v23 = 0;
    v24 = v45;
  }

  v62[0] = v25;
  v62[1] = v11;
  v62[2] = v12;
  v62[3] = v22;
  v62[4] = v23;
  v26 = *(a5 + 8);
  v61[3] = a4;
  v61[4] = v26;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v61);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, v46, a4);
  memset(v60, 0, 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479368, &qword_26C0AC5E0);
  v28 = swift_allocObject();
  sub_26C06B6BC(v63, v28 + 32);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  *(v28 + 104) = &protocol witness table for Expression<A>;
  *(v28 + 72) = v19;
  *(v28 + 80) = v21;
  v30 = MEMORY[0x277D84F90];
  *(v28 + 88) = MEMORY[0x277D84F90];
  *(v28 + 96) = v29;
  *(v28 + 112) = 0u;
  *(v28 + 128) = 0u;
  *(v28 + 176) = v29;
  *(v28 + 184) = &protocol witness table for Expression<A>;
  *(v28 + 144) = 0;
  *(v28 + 152) = 0x4C4C554E20544F4ELL;
  *(v28 + 160) = 0xE800000000000000;
  *(v28 + 168) = v30;
  *(v28 + 192) = 0u;
  *(v28 + 208) = 0u;
  *(v28 + 224) = 0;
  sub_26C067878(v62, &v55, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v56 + 1))
  {
    sub_26C06A3A8(&v55, &v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_26C0AC580;
    *(v31 + 56) = v29;
    *(v31 + 64) = &protocol witness table for Expression<A>;
    *(v31 + 32) = 0x4B43454843;
    *(v31 + 40) = 0xE500000000000000;
    *(v31 + 48) = v30;
    sub_26C06B6BC(&v49, v31 + 72);
    sub_26C06E874(v24, v47, v48);

    sub_26C0688D8(v31, (v28 + 232));
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1(&v49);
  }

  else
  {
    *(v28 + 264) = 0;
    *(v28 + 248) = 0u;
    *(v28 + 232) = 0u;
    sub_26C06E874(v24, v47, v48);
  }

  sub_26C067878(v61, &v55, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v56 + 1))
  {
    sub_26C06A3A8(&v55, &v49);
    *(v28 + 296) = v29;
    *(v28 + 304) = &protocol witness table for Expression<A>;
    sub_26C06E148(&v49, 0x20544C5541464544, 0xE800000000000000, (v28 + 272));
    __swift_destroy_boxed_opaque_existential_1(&v49);
  }

  else
  {
    *(v28 + 304) = 0;
    *(v28 + 272) = 0u;
    *(v28 + 288) = 0u;
  }

  sub_26C067878(v60, &v55, &qword_280479370, &qword_26C0AC5E8);
  if (*(&v56 + 1))
  {
    v51[0] = v57;
    v51[1] = v58;
    v51[2] = v59;
    v49 = v55;
    v50 = v56;
    sub_26C080BEC(&v49, v51 + 8, (v28 + 312));

    sub_26C06A56C(&v49, &qword_280479378, &qword_26C0AC5F0);
  }

  else
  {

    *(v28 + 344) = 0;
    *(v28 + 312) = 0u;
    *(v28 + 328) = 0u;
  }

  v32 = MEMORY[0x277D84F90];
  *(v28 + 384) = 0;
  v33 = 32;
  *(v28 + 352) = 0u;
  *(v28 + 368) = 0u;
  do
  {
    sub_26C067878(v28 + v33, &v55, &qword_280479360, &qword_26C0AC5D8);
    v52[0] = v55;
    v52[1] = v56;
    v53 = v57;
    if (*(&v56 + 1))
    {
      sub_26C06A3A8(v52, &v49);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = sub_26C06A23C(0, v32[2] + 1, 1, v32, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v54 = v32;
      }

      v36 = v32[2];
      v35 = v32[3];
      if (v36 >= v35 >> 1)
      {
        v32 = sub_26C06A23C((v35 > 1), v36 + 1, 1, v32, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v54 = v32;
      }

      v37 = *(&v50 + 1);
      v38 = *&v51[0];
      v39 = __swift_mutable_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
      MEMORY[0x28223BE20](v39);
      v41 = &v45 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v42 + 16))(v41);
      sub_26C06A410(v36, v41, &v54, v37, v38);
      __swift_destroy_boxed_opaque_existential_1(&v49);
    }

    else
    {
      sub_26C06A56C(v52, &qword_280479360, &qword_26C0AC5D8);
    }

    v33 += 40;
  }

  while (v33 != 392);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_26C0688D8(v32, &v55);

  sub_26C06A56C(v60, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v61, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v62, &qword_280479360, &qword_26C0AC5D8);
  __swift_destroy_boxed_opaque_existential_1(v63);
  v43 = sub_26C074764(&v55);
  __swift_destroy_boxed_opaque_existential_1(&v55);
  return v43;
}

{
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v11 = a2[1];
  v43 = *a2;
  v44 = a3;
  v42 = v11;
  v12 = a2[2];
  v13 = v5[9];
  v68 = v5[8];
  v69 = v13;
  v70 = *(v5 + 20);
  v14 = v5[5];
  v64 = v5[4];
  v65 = v14;
  v15 = v5[7];
  v66 = v5[6];
  v67 = v15;
  v16 = v5[1];
  v60 = *v5;
  v61 = v16;
  v17 = v5[3];
  v62 = v5[2];
  v63 = v17;
  v59[3] = type metadata accessor for Expression(0, a4, a3, a4);
  v59[4] = &protocol witness table for Expression<A>;
  v59[0] = v9;
  v59[1] = v8;
  v59[2] = v10;
  v18 = *(a5 + 40);

  v19 = v18(a4, a5);
  v21 = v20;
  v58[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
  v58[4] = &protocol witness table for Expression<A>;
  v58[0] = v43;
  v58[1] = v42;
  v58[2] = v12;
  v22 = *(a5 + 8);
  v57[3] = a4;
  v57[4] = v22;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, v44, a4);
  memset(v56, 0, sizeof(v56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479368, &qword_26C0AC5E0);
  v24 = swift_allocObject();
  sub_26C06B6BC(v59, v24 + 32);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  *(v24 + 104) = &protocol witness table for Expression<A>;
  *(v24 + 72) = v19;
  *(v24 + 80) = v21;
  v26 = MEMORY[0x277D84F90];
  *(v24 + 88) = MEMORY[0x277D84F90];
  *(v24 + 96) = v25;
  *(v24 + 112) = 0u;
  *(v24 + 128) = 0u;
  *(v24 + 176) = v25;
  *(v24 + 184) = &protocol witness table for Expression<A>;
  *(v24 + 144) = 0;
  *(v24 + 152) = 0x4C4C554E20544F4ELL;
  *(v24 + 160) = 0xE800000000000000;
  *(v24 + 168) = v26;
  *(v24 + 192) = 0u;
  *(v24 + 208) = 0u;
  *(v24 + 224) = 0;
  sub_26C067878(v58, &v51, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v52 + 1))
  {
    sub_26C06A3A8(&v51, &v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_26C0AC580;
    *(v27 + 56) = v25;
    *(v27 + 64) = &protocol witness table for Expression<A>;
    *(v27 + 32) = 0x4B43454843;
    *(v27 + 40) = 0xE500000000000000;
    *(v27 + 48) = v26;
    sub_26C06B6BC(&v45, v27 + 72);

    sub_26C0688D8(v27, (v24 + 232));
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1(&v45);
  }

  else
  {
    *(v24 + 264) = 0;
    *(v24 + 248) = 0u;
    *(v24 + 232) = 0u;
  }

  sub_26C067878(v57, &v51, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v52 + 1))
  {
    sub_26C06A3A8(&v51, &v45);
    *(v24 + 296) = v25;
    *(v24 + 304) = &protocol witness table for Expression<A>;
    sub_26C06E148(&v45, 0x20544C5541464544, 0xE800000000000000, (v24 + 272));
    __swift_destroy_boxed_opaque_existential_1(&v45);
  }

  else
  {
    *(v24 + 304) = 0;
    *(v24 + 272) = 0u;
    *(v24 + 288) = 0u;
  }

  sub_26C067878(v56, &v51, &qword_280479370, &qword_26C0AC5E8);
  if (*(&v52 + 1))
  {
    v47[0] = v53;
    v47[1] = v54;
    v47[2] = v55;
    v45 = v51;
    v46 = v52;
    sub_26C080BEC(&v45, v47 + 8, (v24 + 312));

    sub_26C06A56C(&v45, &qword_280479378, &qword_26C0AC5F0);
  }

  else
  {

    *(v24 + 344) = 0;
    *(v24 + 312) = 0u;
    *(v24 + 328) = 0u;
  }

  v28 = MEMORY[0x277D84F90];
  *(v24 + 384) = 0;
  v29 = 32;
  *(v24 + 352) = 0u;
  *(v24 + 368) = 0u;
  do
  {
    sub_26C067878(v24 + v29, &v51, &qword_280479360, &qword_26C0AC5D8);
    v48[0] = v51;
    v48[1] = v52;
    v49 = v53;
    if (*(&v52 + 1))
    {
      sub_26C06A3A8(v48, &v45);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = sub_26C06A23C(0, v28[2] + 1, 1, v28, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v50 = v28;
      }

      v32 = v28[2];
      v31 = v28[3];
      if (v32 >= v31 >> 1)
      {
        v28 = sub_26C06A23C((v31 > 1), v32 + 1, 1, v28, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v50 = v28;
      }

      v33 = *(&v46 + 1);
      v34 = *&v47[0];
      v35 = __swift_mutable_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
      MEMORY[0x28223BE20](v35);
      v37 = &v41 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v38 + 16))(v37);
      sub_26C06A410(v32, v37, &v50, v33, v34);
      __swift_destroy_boxed_opaque_existential_1(&v45);
    }

    else
    {
      sub_26C06A56C(v48, &qword_280479360, &qword_26C0AC5D8);
    }

    v29 += 40;
  }

  while (v29 != 392);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_26C0688D8(v28, &v51);

  sub_26C06A56C(v56, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v57, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v58, &qword_280479360, &qword_26C0AC5D8);
  __swift_destroy_boxed_opaque_existential_1(v59);
  v39 = sub_26C074764(&v51);
  __swift_destroy_boxed_opaque_existential_1(&v51);
  return v39;
}

{
  v62 = a3;
  v10 = sub_26C0ABAF0();
  v66 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v59 - v11;
  v14 = *a1;
  v13 = a1[1];
  v15 = a1[2];
  v16 = *a2;
  v17 = a2[1];
  v60 = a2[2];
  v61 = v16;
  v18 = v5[9];
  v92 = v5[8];
  v93 = v18;
  v94 = *(v5 + 20);
  v19 = v5[5];
  v88 = v5[4];
  v89 = v19;
  v20 = v5[7];
  v90 = v5[6];
  v91 = v20;
  v21 = v5[1];
  v84 = *v5;
  v85 = v21;
  v22 = v5[3];
  v86 = v5[2];
  v87 = v22;
  v65 = v23;
  v83[3] = type metadata accessor for Expression(0, v23, v24, v25);
  v83[4] = &protocol witness table for Expression<A>;
  v83[0] = v14;
  v83[1] = v13;
  v83[2] = v15;
  v26 = *(a5 + 40);

  v27 = v26(a4, a5);
  v63 = v28;
  v64 = v27;
  if (v17)
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479390, &qword_26C0AD880);
    v30 = &protocol witness table for Expression<A>;
    v31 = v60;
    v32 = v61;
    v33 = v61;
    v34 = v17;
    v35 = v60;
  }

  else
  {
    v35 = v60;
    v32 = v61;
    v34 = 0;
    v33 = 0;
    v31 = 0;
    v29 = 0;
    v30 = 0;
  }

  v82[0] = v33;
  v82[1] = v17;
  v82[2] = v31;
  v82[3] = v29;
  v82[4] = v30;
  v37 = v65;
  v36 = v66;
  (*(v66 + 16))(v12, v62, v65);
  v38 = *(a4 - 8);
  if ((*(v38 + 48))(v12, 1, a4) == 1)
  {
    sub_26C06E874(v32, v34, v35);
    (*(v36 + 8))(v12, v37);
    v81 = 0;
    v79 = 0u;
    v80 = 0u;
  }

  else
  {
    v39 = *(a5 + 8);
    *(&v80 + 1) = a4;
    v81 = v39;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v79);
    (*(v38 + 32))(boxed_opaque_existential_1, v12, a4);
    sub_26C06E874(v32, v34, v35);
  }

  memset(v78, 0, sizeof(v78));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479368, &qword_26C0AC5E0);
  v41 = swift_allocObject();
  sub_26C06B6BC(v83, v41 + 32);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  *(v41 + 104) = &protocol witness table for Expression<A>;
  v43 = v63;
  *(v41 + 72) = v64;
  *(v41 + 80) = v43;
  v44 = MEMORY[0x277D84F90];
  *(v41 + 88) = MEMORY[0x277D84F90];
  *(v41 + 96) = v42;
  *(v41 + 112) = 0u;
  *(v41 + 128) = 0u;
  *(v41 + 144) = 0u;
  *(v41 + 160) = 0u;
  *(v41 + 176) = 0u;
  *(v41 + 192) = 0u;
  *(v41 + 208) = 0u;
  *(v41 + 224) = 0;
  sub_26C067878(v82, &v73, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v74 + 1))
  {
    sub_26C06A3A8(&v73, &v67);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_26C0AC580;
    *(v45 + 56) = v42;
    *(v45 + 64) = &protocol witness table for Expression<A>;
    *(v45 + 32) = 0x4B43454843;
    *(v45 + 40) = 0xE500000000000000;
    *(v45 + 48) = v44;
    sub_26C06B6BC(&v67, v45 + 72);

    sub_26C0688D8(v45, (v41 + 232));
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1(&v67);
  }

  else
  {
    *(v41 + 264) = 0;
    *(v41 + 248) = 0u;
    *(v41 + 232) = 0u;
  }

  sub_26C067878(&v79, &v73, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v74 + 1))
  {
    sub_26C06A3A8(&v73, &v67);
    *(v41 + 296) = v42;
    *(v41 + 304) = &protocol witness table for Expression<A>;
    sub_26C06E148(&v67, 0x20544C5541464544, 0xE800000000000000, (v41 + 272));
    __swift_destroy_boxed_opaque_existential_1(&v67);
  }

  else
  {
    *(v41 + 304) = 0;
    *(v41 + 272) = 0u;
    *(v41 + 288) = 0u;
  }

  sub_26C067878(v78, &v73, &qword_280479370, &qword_26C0AC5E8);
  if (*(&v74 + 1))
  {
    v69[0] = v75;
    v69[1] = v76;
    v69[2] = v77;
    v67 = v73;
    v68 = v74;
    sub_26C080BEC(&v67, v69 + 8, (v41 + 312));

    sub_26C06A56C(&v67, &qword_280479378, &qword_26C0AC5F0);
  }

  else
  {

    *(v41 + 344) = 0;
    *(v41 + 312) = 0u;
    *(v41 + 328) = 0u;
  }

  v46 = MEMORY[0x277D84F90];
  *(v41 + 384) = 0;
  v47 = 32;
  *(v41 + 352) = 0u;
  *(v41 + 368) = 0u;
  do
  {
    sub_26C067878(v41 + v47, &v73, &qword_280479360, &qword_26C0AC5D8);
    v70[0] = v73;
    v70[1] = v74;
    v71 = v75;
    if (*(&v74 + 1))
    {
      sub_26C06A3A8(v70, &v67);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = v46;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v46 = sub_26C06A23C(0, v46[2] + 1, 1, v46, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v72 = v46;
      }

      v50 = v46[2];
      v49 = v46[3];
      if (v50 >= v49 >> 1)
      {
        v46 = sub_26C06A23C((v49 > 1), v50 + 1, 1, v46, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v72 = v46;
      }

      v51 = *(&v68 + 1);
      v52 = *&v69[0];
      v53 = __swift_mutable_project_boxed_opaque_existential_1(&v67, *(&v68 + 1));
      MEMORY[0x28223BE20](v53);
      v55 = &v59 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v56 + 16))(v55);
      sub_26C06A410(v50, v55, &v72, v51, v52);
      __swift_destroy_boxed_opaque_existential_1(&v67);
    }

    else
    {
      sub_26C06A56C(v70, &qword_280479360, &qword_26C0AC5D8);
    }

    v47 += 40;
  }

  while (v47 != 392);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_26C0688D8(v46, &v73);

  sub_26C06A56C(v78, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(&v79, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v82, &qword_280479360, &qword_26C0AC5D8);
  __swift_destroy_boxed_opaque_existential_1(v83);
  v57 = sub_26C074764(&v73);
  __swift_destroy_boxed_opaque_existential_1(&v73);
  return v57;
}

{
  v54 = a3;
  v10 = sub_26C0ABAF0();
  v53 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v52 = &v50 - v11;
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  v15 = *a2;
  v50 = a2[1];
  v51 = v15;
  v16 = a2[2];
  v17 = v5[9];
  v81 = v5[8];
  v82 = v17;
  v83 = *(v5 + 20);
  v18 = v5[5];
  v77 = v5[4];
  v78 = v18;
  v19 = v5[7];
  v79 = v5[6];
  v80 = v19;
  v20 = v5[1];
  v73 = *v5;
  v74 = v20;
  v21 = v5[3];
  v75 = v5[2];
  v76 = v21;
  v72[3] = type metadata accessor for Expression(0, v10, v22, v23);
  v72[4] = &protocol witness table for Expression<A>;
  v72[0] = v12;
  v72[1] = v13;
  v72[2] = v14;
  v24 = *(a5 + 40);

  v55 = v24(a4, a5);
  v26 = v25;
  v71[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
  v71[4] = &protocol witness table for Expression<A>;
  v71[0] = v51;
  v71[1] = v50;
  v71[2] = v16;
  v27 = v52;
  v28 = v53;
  (*(v53 + 16))(v52, v54, v10);
  v29 = *(a4 - 8);
  if ((*(v29 + 48))(v27, 1, a4) == 1)
  {
    v30 = *(v28 + 8);

    v30(v27, v10);
    v70 = 0;
    v68 = 0u;
    v69 = 0u;
  }

  else
  {
    v31 = *(a5 + 8);
    *(&v69 + 1) = a4;
    v70 = v31;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v68);
    (*(v29 + 32))(boxed_opaque_existential_1, v27, a4);
  }

  memset(v67, 0, sizeof(v67));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479368, &qword_26C0AC5E0);
  v33 = swift_allocObject();
  sub_26C06B6BC(v72, v33 + 32);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  *(v33 + 104) = &protocol witness table for Expression<A>;
  *(v33 + 72) = v55;
  *(v33 + 80) = v26;
  v35 = MEMORY[0x277D84F90];
  *(v33 + 88) = MEMORY[0x277D84F90];
  *(v33 + 96) = v34;
  *(v33 + 112) = 0u;
  *(v33 + 128) = 0u;
  *(v33 + 144) = 0u;
  *(v33 + 160) = 0u;
  *(v33 + 176) = 0u;
  *(v33 + 192) = 0u;
  *(v33 + 208) = 0u;
  *(v33 + 224) = 0;
  sub_26C067878(v71, &v62, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v63 + 1))
  {
    sub_26C06A3A8(&v62, &v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_26C0AC580;
    *(v36 + 56) = v34;
    *(v36 + 64) = &protocol witness table for Expression<A>;
    *(v36 + 32) = 0x4B43454843;
    *(v36 + 40) = 0xE500000000000000;
    *(v36 + 48) = v35;
    sub_26C06B6BC(&v56, v36 + 72);

    sub_26C0688D8(v36, (v33 + 232));
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1(&v56);
  }

  else
  {
    *(v33 + 264) = 0;
    *(v33 + 248) = 0u;
    *(v33 + 232) = 0u;
  }

  sub_26C067878(&v68, &v62, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v63 + 1))
  {
    sub_26C06A3A8(&v62, &v56);
    *(v33 + 296) = v34;
    *(v33 + 304) = &protocol witness table for Expression<A>;
    sub_26C06E148(&v56, 0x20544C5541464544, 0xE800000000000000, (v33 + 272));
    __swift_destroy_boxed_opaque_existential_1(&v56);
  }

  else
  {
    *(v33 + 304) = 0;
    *(v33 + 272) = 0u;
    *(v33 + 288) = 0u;
  }

  sub_26C067878(v67, &v62, &qword_280479370, &qword_26C0AC5E8);
  if (*(&v63 + 1))
  {
    v58[0] = v64;
    v58[1] = v65;
    v58[2] = v66;
    v56 = v62;
    v57 = v63;
    sub_26C080BEC(&v56, v58 + 8, (v33 + 312));

    sub_26C06A56C(&v56, &qword_280479378, &qword_26C0AC5F0);
  }

  else
  {

    *(v33 + 344) = 0;
    *(v33 + 312) = 0u;
    *(v33 + 328) = 0u;
  }

  v37 = MEMORY[0x277D84F90];
  *(v33 + 384) = 0;
  v38 = 32;
  *(v33 + 352) = 0u;
  *(v33 + 368) = 0u;
  do
  {
    sub_26C067878(v33 + v38, &v62, &qword_280479360, &qword_26C0AC5D8);
    v59[0] = v62;
    v59[1] = v63;
    v60 = v64;
    if (*(&v63 + 1))
    {
      sub_26C06A3A8(v59, &v56);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v61 = v37;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v37 = sub_26C06A23C(0, v37[2] + 1, 1, v37, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v61 = v37;
      }

      v41 = v37[2];
      v40 = v37[3];
      if (v41 >= v40 >> 1)
      {
        v37 = sub_26C06A23C((v40 > 1), v41 + 1, 1, v37, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v61 = v37;
      }

      v42 = *(&v57 + 1);
      v43 = *&v58[0];
      v44 = __swift_mutable_project_boxed_opaque_existential_1(&v56, *(&v57 + 1));
      MEMORY[0x28223BE20](v44);
      v46 = &v50 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v47 + 16))(v46);
      sub_26C06A410(v41, v46, &v61, v42, v43);
      __swift_destroy_boxed_opaque_existential_1(&v56);
    }

    else
    {
      sub_26C06A56C(v59, &qword_280479360, &qword_26C0AC5D8);
    }

    v38 += 40;
  }

  while (v38 != 392);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_26C0688D8(v37, &v62);

  sub_26C06A56C(v67, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(&v68, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v71, &qword_280479360, &qword_26C0AC5D8);
  __swift_destroy_boxed_opaque_existential_1(v72);
  v48 = sub_26C074764(&v62);
  __swift_destroy_boxed_opaque_existential_1(&v62);
  return v48;
}

uint64_t sub_26C074764(uint64_t a1)
{
  v3 = v1[9];
  v24 = v1[8];
  v25 = v3;
  v26 = *(v1 + 20);
  v4 = v1[5];
  v20 = v1[4];
  v21 = v4;
  v5 = v1[7];
  v22 = v1[6];
  v23 = v5;
  v6 = v1[1];
  v16 = *v1;
  v17 = v6;
  v7 = v1[3];
  v18 = v1[2];
  v19 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC590;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  *(inited + 32) = 0x4154205245544C41;
  *(inited + 56) = v9;
  *(inited + 64) = &protocol witness table for Expression<A>;
  v10 = MEMORY[0x277D84F90];
  *(inited + 40) = 0xEB00000000454C42;
  *(inited + 48) = v10;
  if (*(&v18 + 1))
  {
    v11 = *(&v18 + 1);
    v12 = v18;
  }

  else
  {
    v11 = *(&v17 + 1);
    v12 = v17;
  }

  sub_26C069100(v12, v11, (inited + 72));

  *(inited + 136) = v9;
  *(inited + 144) = &protocol witness table for Expression<A>;
  *(inited + 112) = 0x554C4F4320444441;
  *(inited + 120) = 0xEA00000000004E4DLL;
  *(inited + 128) = v10;
  sub_26C06B6BC(a1, inited + 152);
  sub_26C0688D8(inited, v15);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  countAndFlagsBits = Expressible.asSQL()()._countAndFlagsBits;
  __swift_destroy_boxed_opaque_existential_1(v15);
  return countAndFlagsBits;
}

uint64_t Table.addColumn<A>(_:unique:check:references:_:)(uint64_t *a1, int a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v57 = a2;
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = a3[1];
  v54 = *a3;
  v14 = a3[2];
  v15 = a5[1];
  v55 = *a5;
  v56 = a4;
  v59 = v15;
  v60 = a5[2];
  v61 = v14;
  v16 = v7[9];
  v87 = v7[8];
  v88 = v16;
  v89 = *(v7 + 20);
  v17 = v7[5];
  v83 = v7[4];
  v84 = v17;
  v18 = v7[7];
  v85 = v7[6];
  v86 = v18;
  v19 = v7[1];
  v79 = *v7;
  v80 = v19;
  v20 = v7[3];
  v81 = v7[2];
  v82 = v20;
  v21 = type metadata accessor for Expression(0, a6, a3, a4);
  v78[3] = v21;
  v78[4] = &protocol witness table for Expression<A>;
  v78[0] = v10;
  v78[1] = v11;
  v78[2] = v12;
  v22 = *(a7 + 40);

  v23 = v22(a6, a7);
  v62 = v24;
  v58 = v13;
  if (v13)
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479390, &qword_26C0AD880);
    v26 = &protocol witness table for Expression<A>;
    v27 = v54;
    v28 = v54;
    v29 = v61;
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v25 = 0;
    v26 = 0;
    v27 = v54;
  }

  v77[0] = v28;
  v77[1] = v13;
  v77[2] = v29;
  v77[3] = v25;
  v77[4] = v26;
  v76 = 0;
  memset(v75, 0, sizeof(v75));
  sub_26C06B6BC(v56, v74);
  v74[8] = v21;
  v74[9] = &protocol witness table for Expression<A>;
  v74[5] = v55;
  v74[6] = v59;
  v74[7] = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479368, &qword_26C0AC5E0);
  v30 = swift_allocObject();
  sub_26C06B6BC(v78, v30 + 32);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  v32 = 0uLL;
  v33 = v31;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  *(v30 + 104) = &protocol witness table for Expression<A>;
  v37 = v62;
  *(v30 + 72) = v23;
  *(v30 + 80) = v37;
  v38 = MEMORY[0x277D84F90];
  *(v30 + 88) = MEMORY[0x277D84F90];
  *(v30 + 96) = v31;
  *(v30 + 112) = 0u;
  *(v30 + 128) = 0u;
  *(v30 + 176) = v31;
  *(v30 + 184) = &protocol witness table for Expression<A>;
  *(v30 + 144) = 0;
  *(v30 + 152) = 0x4C4C554E20544F4ELL;
  *(v30 + 160) = 0xE800000000000000;
  *(v30 + 168) = v38;
  if (v57)
  {
    v32 = xmmword_26C0AC5A0;
    v36 = MEMORY[0x277D84F90];
    v35 = &protocol witness table for Expression<A>;
    v34 = v31;
  }

  *(v30 + 216) = v34;
  *(v30 + 224) = v35;
  *(v30 + 192) = v32;
  *(v30 + 208) = v36;
  sub_26C067878(v77, &v69, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v70 + 1))
  {
    sub_26C06A3A8(&v69, &v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_26C0AC580;
    *(v39 + 56) = v33;
    *(v39 + 64) = &protocol witness table for Expression<A>;
    *(v39 + 32) = 0x4B43454843;
    *(v39 + 40) = 0xE500000000000000;
    *(v39 + 48) = v38;
    sub_26C06B6BC(&v63, v39 + 72);
    sub_26C06E874(v27, v58, v61);

    sub_26C0688D8(v39, (v30 + 232));
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1(&v63);
  }

  else
  {
    *(v30 + 264) = 0;
    *(v30 + 248) = 0u;
    *(v30 + 232) = 0u;
    sub_26C06E874(v27, v58, v61);
  }

  sub_26C067878(v75, &v69, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v70 + 1))
  {
    sub_26C06A3A8(&v69, &v63);
    *(v30 + 296) = v33;
    *(v30 + 304) = &protocol witness table for Expression<A>;
    sub_26C06E148(&v63, 0x20544C5541464544, 0xE800000000000000, (v30 + 272));
    __swift_destroy_boxed_opaque_existential_1(&v63);
  }

  else
  {
    *(v30 + 304) = 0;
    *(v30 + 272) = 0u;
    *(v30 + 288) = 0u;
  }

  sub_26C067878(v74, &v69, &qword_280479370, &qword_26C0AC5E8);
  if (*(&v70 + 1))
  {
    v65[0] = v71;
    v65[1] = v72;
    v65[2] = v73;
    v63 = v69;
    v64 = v70;
    sub_26C080BEC(&v63, v65 + 8, (v30 + 312));

    sub_26C06A56C(&v63, &qword_280479378, &qword_26C0AC5F0);
  }

  else
  {

    *(v30 + 344) = 0;
    *(v30 + 312) = 0u;
    *(v30 + 328) = 0u;
  }

  v40 = MEMORY[0x277D84F90];
  *(v30 + 384) = 0;
  v41 = 32;
  *(v30 + 352) = 0u;
  *(v30 + 368) = 0u;
  do
  {
    sub_26C067878(v30 + v41, &v69, &qword_280479360, &qword_26C0AC5D8);
    v66[0] = v69;
    v66[1] = v70;
    v67 = v71;
    if (*(&v70 + 1))
    {
      sub_26C06A3A8(v66, &v63);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = v40;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v40 = sub_26C06A23C(0, v40[2] + 1, 1, v40, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v68 = v40;
      }

      v44 = v40[2];
      v43 = v40[3];
      if (v44 >= v43 >> 1)
      {
        v40 = sub_26C06A23C((v43 > 1), v44 + 1, 1, v40, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v68 = v40;
      }

      v45 = *(&v64 + 1);
      v46 = *&v65[0];
      v47 = __swift_mutable_project_boxed_opaque_existential_1(&v63, *(&v64 + 1));
      MEMORY[0x28223BE20](v47);
      v49 = &v53 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v50 + 16))(v49);
      sub_26C06A410(v44, v49, &v68, v45, v46);
      __swift_destroy_boxed_opaque_existential_1(&v63);
    }

    else
    {
      sub_26C06A56C(v66, &qword_280479360, &qword_26C0AC5D8);
    }

    v41 += 40;
  }

  while (v41 != 392);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_26C0688D8(v40, &v69);

  sub_26C06A56C(v75, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v74, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v77, &qword_280479360, &qword_26C0AC5D8);
  __swift_destroy_boxed_opaque_existential_1(v78);
  v51 = sub_26C074764(&v69);
  __swift_destroy_boxed_opaque_existential_1(&v69);
  return v51;
}

{
  v53 = a2;
  v11 = *a1;
  v10 = a1[1];
  v12 = a1[2];
  v13 = *a3;
  v14 = a3[2];
  v54 = a3[1];
  v55 = v14;
  v16 = *a5;
  v15 = a5[1];
  v49 = v13;
  v50 = v16;
  v56 = v15;
  v51 = a5[2];
  v52 = a4;
  v17 = v7[9];
  v81 = v7[8];
  v82 = v17;
  v83 = *(v7 + 20);
  v18 = v7[5];
  v77 = v7[4];
  v78 = v18;
  v19 = v7[7];
  v79 = v7[6];
  v80 = v19;
  v20 = v7[1];
  v73 = *v7;
  v74 = v20;
  v21 = v7[3];
  v75 = v7[2];
  v76 = v21;
  v22 = type metadata accessor for Expression(0, a6, a3, a4);
  v72[3] = v22;
  v72[4] = &protocol witness table for Expression<A>;
  v72[0] = v11;
  v72[1] = v10;
  v72[2] = v12;
  v23 = *(a7 + 40);

  v24 = v23(a6, a7);
  v26 = v25;
  v71[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
  v71[4] = &protocol witness table for Expression<A>;
  v71[0] = v49;
  v71[1] = v54;
  v71[2] = v55;
  v70 = 0;
  memset(v69, 0, sizeof(v69));
  sub_26C06B6BC(v52, v68);
  v68[8] = v22;
  v68[9] = &protocol witness table for Expression<A>;
  v68[5] = v50;
  v68[6] = v56;
  v68[7] = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479368, &qword_26C0AC5E0);
  v27 = swift_allocObject();
  sub_26C06B6BC(v72, v27 + 32);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  v29 = 0uLL;
  v30 = v28;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  *(v27 + 104) = &protocol witness table for Expression<A>;
  *(v27 + 72) = v24;
  *(v27 + 80) = v26;
  v34 = MEMORY[0x277D84F90];
  *(v27 + 88) = MEMORY[0x277D84F90];
  *(v27 + 96) = v28;
  *(v27 + 112) = 0u;
  *(v27 + 128) = 0u;
  *(v27 + 176) = v28;
  *(v27 + 184) = &protocol witness table for Expression<A>;
  *(v27 + 144) = 0;
  *(v27 + 152) = 0x4C4C554E20544F4ELL;
  *(v27 + 160) = 0xE800000000000000;
  *(v27 + 168) = v34;
  if (v53)
  {
    v29 = xmmword_26C0AC5A0;
    v33 = MEMORY[0x277D84F90];
    v32 = &protocol witness table for Expression<A>;
    v31 = v28;
  }

  *(v27 + 216) = v31;
  *(v27 + 224) = v32;
  *(v27 + 192) = v29;
  *(v27 + 208) = v33;
  sub_26C067878(v71, &v63, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v64 + 1))
  {
    sub_26C06A3A8(&v63, &v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_26C0AC580;
    *(v35 + 56) = v30;
    *(v35 + 64) = &protocol witness table for Expression<A>;
    *(v35 + 32) = 0x4B43454843;
    *(v35 + 40) = 0xE500000000000000;
    *(v35 + 48) = v34;
    sub_26C06B6BC(&v57, v35 + 72);

    sub_26C0688D8(v35, (v27 + 232));
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1(&v57);
  }

  else
  {
    *(v27 + 264) = 0;
    *(v27 + 248) = 0u;
    *(v27 + 232) = 0u;
  }

  sub_26C067878(v69, &v63, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v64 + 1))
  {
    sub_26C06A3A8(&v63, &v57);
    *(v27 + 296) = v30;
    *(v27 + 304) = &protocol witness table for Expression<A>;
    sub_26C06E148(&v57, 0x20544C5541464544, 0xE800000000000000, (v27 + 272));
    __swift_destroy_boxed_opaque_existential_1(&v57);
  }

  else
  {
    *(v27 + 304) = 0;
    *(v27 + 272) = 0u;
    *(v27 + 288) = 0u;
  }

  sub_26C067878(v68, &v63, &qword_280479370, &qword_26C0AC5E8);
  if (*(&v64 + 1))
  {
    v59[0] = v65;
    v59[1] = v66;
    v59[2] = v67;
    v57 = v63;
    v58 = v64;
    sub_26C080BEC(&v57, v59 + 8, (v27 + 312));

    sub_26C06A56C(&v57, &qword_280479378, &qword_26C0AC5F0);
  }

  else
  {

    *(v27 + 344) = 0;
    *(v27 + 312) = 0u;
    *(v27 + 328) = 0u;
  }

  v36 = MEMORY[0x277D84F90];
  *(v27 + 384) = 0;
  v37 = 32;
  *(v27 + 352) = 0u;
  *(v27 + 368) = 0u;
  do
  {
    sub_26C067878(v27 + v37, &v63, &qword_280479360, &qword_26C0AC5D8);
    v60[0] = v63;
    v60[1] = v64;
    v61 = v65;
    if (*(&v64 + 1))
    {
      sub_26C06A3A8(v60, &v57);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62 = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = sub_26C06A23C(0, v36[2] + 1, 1, v36, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v62 = v36;
      }

      v40 = v36[2];
      v39 = v36[3];
      if (v40 >= v39 >> 1)
      {
        v36 = sub_26C06A23C((v39 > 1), v40 + 1, 1, v36, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v62 = v36;
      }

      v41 = *(&v58 + 1);
      v42 = *&v59[0];
      v43 = __swift_mutable_project_boxed_opaque_existential_1(&v57, *(&v58 + 1));
      MEMORY[0x28223BE20](v43);
      v45 = &v49 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v46 + 16))(v45);
      sub_26C06A410(v40, v45, &v62, v41, v42);
      __swift_destroy_boxed_opaque_existential_1(&v57);
    }

    else
    {
      sub_26C06A56C(v60, &qword_280479360, &qword_26C0AC5D8);
    }

    v37 += 40;
  }

  while (v37 != 392);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_26C0688D8(v36, &v63);

  sub_26C06A56C(v69, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v68, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v71, &qword_280479360, &qword_26C0AC5D8);
  __swift_destroy_boxed_opaque_existential_1(v72);
  v47 = sub_26C074764(&v63);
  __swift_destroy_boxed_opaque_existential_1(&v63);
  return v47;
}

{
  v60 = a2;
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = a3[1];
  v57 = *a3;
  v14 = a3[2];
  v15 = a5[1];
  v58 = *a5;
  v59 = a4;
  v62 = v15;
  v64 = a5[2];
  v16 = v7[9];
  v90 = v7[8];
  v91 = v16;
  v92 = *(v7 + 20);
  v17 = v7[5];
  v86 = v7[4];
  v87 = v17;
  v18 = v7[7];
  v88 = v7[6];
  v89 = v18;
  v19 = v7[1];
  v82 = *v7;
  v83 = v19;
  v20 = v7[3];
  v84 = v7[2];
  v85 = v20;
  v21 = sub_26C0ABAF0();
  v81[3] = type metadata accessor for Expression(0, v21, v22, v23);
  v81[4] = &protocol witness table for Expression<A>;
  v81[0] = v10;
  v81[1] = v11;
  v81[2] = v12;
  v24 = *(a7 + 40);

  v25 = v24(a6, a7);
  v65 = v26;
  v63 = v13;
  v61 = v14;
  if (v13)
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479390, &qword_26C0AD880);
    v28 = &protocol witness table for Expression<A>;
    v29 = v57;
    v30 = v57;
  }

  else
  {
    v30 = 0;
    v14 = 0;
    v27 = 0;
    v28 = 0;
    v29 = v57;
  }

  v80[0] = v30;
  v80[1] = v13;
  v80[2] = v14;
  v80[3] = v27;
  v80[4] = v28;
  v79 = 0;
  memset(v78, 0, sizeof(v78));
  sub_26C06B6BC(v59, v77);
  v77[8] = type metadata accessor for Expression(0, a6, v31, v32);
  v77[9] = &protocol witness table for Expression<A>;
  v77[5] = v58;
  v77[6] = v62;
  v77[7] = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479368, &qword_26C0AC5E0);
  v33 = swift_allocObject();
  sub_26C06B6BC(v81, v33 + 32);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  v35 = 0uLL;
  v36 = v34;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  *(v33 + 104) = &protocol witness table for Expression<A>;
  v40 = v65;
  *(v33 + 72) = v25;
  *(v33 + 80) = v40;
  v41 = MEMORY[0x277D84F90];
  *(v33 + 88) = MEMORY[0x277D84F90];
  *(v33 + 96) = v34;
  *(v33 + 112) = 0u;
  *(v33 + 128) = 0u;
  *(v33 + 144) = 0u;
  *(v33 + 160) = 0u;
  *(v33 + 176) = 0u;
  if (v60)
  {
    v35 = xmmword_26C0AC5A0;
    v39 = MEMORY[0x277D84F90];
    v38 = &protocol witness table for Expression<A>;
    v37 = v34;
  }

  *(v33 + 216) = v37;
  *(v33 + 224) = v38;
  *(v33 + 192) = v35;
  *(v33 + 208) = v39;
  sub_26C067878(v80, &v72, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v73 + 1))
  {
    sub_26C06A3A8(&v72, &v66);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_26C0AC580;
    *(v42 + 56) = v36;
    *(v42 + 64) = &protocol witness table for Expression<A>;
    *(v42 + 32) = 0x4B43454843;
    *(v42 + 40) = 0xE500000000000000;
    *(v42 + 48) = v41;
    sub_26C06B6BC(&v66, v42 + 72);
    sub_26C06E874(v29, v63, v61);

    sub_26C0688D8(v42, (v33 + 232));
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1(&v66);
  }

  else
  {
    *(v33 + 264) = 0;
    *(v33 + 248) = 0u;
    *(v33 + 232) = 0u;
    sub_26C06E874(v29, v63, v61);
  }

  sub_26C067878(v78, &v72, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v73 + 1))
  {
    sub_26C06A3A8(&v72, &v66);
    *(v33 + 296) = v36;
    *(v33 + 304) = &protocol witness table for Expression<A>;
    sub_26C06E148(&v66, 0x20544C5541464544, 0xE800000000000000, (v33 + 272));
    __swift_destroy_boxed_opaque_existential_1(&v66);
  }

  else
  {
    *(v33 + 304) = 0;
    *(v33 + 272) = 0u;
    *(v33 + 288) = 0u;
  }

  sub_26C067878(v77, &v72, &qword_280479370, &qword_26C0AC5E8);
  if (*(&v73 + 1))
  {
    v68[0] = v74;
    v68[1] = v75;
    v68[2] = v76;
    v66 = v72;
    v67 = v73;
    sub_26C080BEC(&v66, v68 + 8, (v33 + 312));

    sub_26C06A56C(&v66, &qword_280479378, &qword_26C0AC5F0);
  }

  else
  {

    *(v33 + 344) = 0;
    *(v33 + 312) = 0u;
    *(v33 + 328) = 0u;
  }

  v43 = MEMORY[0x277D84F90];
  *(v33 + 384) = 0;
  v44 = 32;
  *(v33 + 352) = 0u;
  *(v33 + 368) = 0u;
  v65 = v33;
  do
  {
    sub_26C067878(v33 + v44, &v72, &qword_280479360, &qword_26C0AC5D8);
    v69[0] = v72;
    v69[1] = v73;
    v70 = v74;
    if (*(&v73 + 1))
    {
      sub_26C06A3A8(v69, &v66);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v71 = v43;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v43 = sub_26C06A23C(0, v43[2] + 1, 1, v43, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v71 = v43;
      }

      v47 = v43[2];
      v46 = v43[3];
      if (v47 >= v46 >> 1)
      {
        v43 = sub_26C06A23C((v46 > 1), v47 + 1, 1, v43, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v71 = v43;
      }

      v48 = *(&v67 + 1);
      v49 = *&v68[0];
      v50 = __swift_mutable_project_boxed_opaque_existential_1(&v66, *(&v67 + 1));
      MEMORY[0x28223BE20](v50);
      v52 = &v56 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v53 + 16))(v52);
      sub_26C06A410(v47, v52, &v71, v48, v49);
      __swift_destroy_boxed_opaque_existential_1(&v66);
      v33 = v65;
    }

    else
    {
      sub_26C06A56C(v69, &qword_280479360, &qword_26C0AC5D8);
    }

    v44 += 40;
  }

  while (v44 != 392);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_26C0688D8(v43, &v72);

  sub_26C06A56C(v78, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v77, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v80, &qword_280479360, &qword_26C0AC5D8);
  __swift_destroy_boxed_opaque_existential_1(v81);
  v54 = sub_26C074764(&v72);
  __swift_destroy_boxed_opaque_existential_1(&v72);
  return v54;
}

{
  v57 = a2;
  v11 = *a1;
  v10 = a1[1];
  v12 = a1[2];
  v13 = a3[1];
  v14 = a3[2];
  v58 = *a3;
  v59 = v14;
  v15 = a5[1];
  v56 = *a5;
  v54 = a4;
  v55 = v15;
  v53 = a5[2];
  v16 = v7[9];
  v84 = v7[8];
  v85 = v16;
  v86 = *(v7 + 20);
  v17 = v7[5];
  v80 = v7[4];
  v81 = v17;
  v18 = v7[7];
  v82 = v7[6];
  v83 = v18;
  v19 = v7[1];
  v76 = *v7;
  v77 = v19;
  v20 = v7[3];
  v78 = v7[2];
  v79 = v20;
  v21 = sub_26C0ABAF0();
  v75[3] = type metadata accessor for Expression(0, v21, v22, v23);
  v75[4] = &protocol witness table for Expression<A>;
  v75[0] = v11;
  v75[1] = v10;
  v75[2] = v12;
  v24 = *(a7 + 40);

  v25 = v24(a6, a7);
  v27 = v26;
  v74[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
  v74[4] = &protocol witness table for Expression<A>;
  v74[0] = v58;
  v74[1] = v13;
  v58 = v13;
  v74[2] = v59;
  v73 = 0;
  memset(v72, 0, sizeof(v72));
  sub_26C06B6BC(v54, v71);
  v71[8] = type metadata accessor for Expression(0, a6, v28, v29);
  v71[9] = &protocol witness table for Expression<A>;
  v71[5] = v56;
  v71[6] = v55;
  v71[7] = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479368, &qword_26C0AC5E0);
  v30 = swift_allocObject();
  sub_26C06B6BC(v75, v30 + 32);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  v32 = 0uLL;
  v33 = v31;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  *(v30 + 104) = &protocol witness table for Expression<A>;
  *(v30 + 72) = v25;
  *(v30 + 80) = v27;
  v37 = MEMORY[0x277D84F90];
  *(v30 + 88) = MEMORY[0x277D84F90];
  *(v30 + 96) = v31;
  *(v30 + 112) = 0u;
  *(v30 + 128) = 0u;
  *(v30 + 144) = 0u;
  *(v30 + 160) = 0u;
  *(v30 + 176) = 0u;
  if (v57)
  {
    v32 = xmmword_26C0AC5A0;
    v36 = MEMORY[0x277D84F90];
    v35 = &protocol witness table for Expression<A>;
    v34 = v31;
  }

  *(v30 + 216) = v34;
  *(v30 + 224) = v35;
  *(v30 + 192) = v32;
  *(v30 + 208) = v36;
  sub_26C067878(v74, &v66, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v67 + 1))
  {
    sub_26C06A3A8(&v66, &v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_26C0AC580;
    *(v38 + 56) = v33;
    *(v38 + 64) = &protocol witness table for Expression<A>;
    *(v38 + 32) = 0x4B43454843;
    *(v38 + 40) = 0xE500000000000000;
    *(v38 + 48) = v37;
    sub_26C06B6BC(&v60, v38 + 72);

    sub_26C0688D8(v38, (v30 + 232));
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1(&v60);
  }

  else
  {
    *(v30 + 264) = 0;
    *(v30 + 248) = 0u;
    *(v30 + 232) = 0u;
  }

  sub_26C067878(v72, &v66, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v67 + 1))
  {
    sub_26C06A3A8(&v66, &v60);
    *(v30 + 296) = v33;
    *(v30 + 304) = &protocol witness table for Expression<A>;
    sub_26C06E148(&v60, 0x20544C5541464544, 0xE800000000000000, (v30 + 272));
    __swift_destroy_boxed_opaque_existential_1(&v60);
  }

  else
  {
    *(v30 + 304) = 0;
    *(v30 + 272) = 0u;
    *(v30 + 288) = 0u;
  }

  sub_26C067878(v71, &v66, &qword_280479370, &qword_26C0AC5E8);
  if (*(&v67 + 1))
  {
    v62[0] = v68;
    v62[1] = v69;
    v62[2] = v70;
    v60 = v66;
    v61 = v67;
    sub_26C080BEC(&v60, v62 + 8, (v30 + 312));

    sub_26C06A56C(&v60, &qword_280479378, &qword_26C0AC5F0);
  }

  else
  {

    *(v30 + 344) = 0;
    *(v30 + 312) = 0u;
    *(v30 + 328) = 0u;
  }

  v39 = MEMORY[0x277D84F90];
  *(v30 + 384) = 0;
  v40 = 32;
  *(v30 + 352) = 0u;
  *(v30 + 368) = 0u;
  v59 = v30;
  do
  {
    sub_26C067878(v30 + v40, &v66, &qword_280479360, &qword_26C0AC5D8);
    v63[0] = v66;
    v63[1] = v67;
    v64 = v68;
    if (*(&v67 + 1))
    {
      sub_26C06A3A8(v63, &v60);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = v39;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = sub_26C06A23C(0, v39[2] + 1, 1, v39, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v65 = v39;
      }

      v43 = v39[2];
      v42 = v39[3];
      if (v43 >= v42 >> 1)
      {
        v39 = sub_26C06A23C((v42 > 1), v43 + 1, 1, v39, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v65 = v39;
      }

      v44 = *(&v61 + 1);
      v45 = *&v62[0];
      v46 = __swift_mutable_project_boxed_opaque_existential_1(&v60, *(&v61 + 1));
      MEMORY[0x28223BE20](v46);
      v48 = &v52 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v49 + 16))(v48);
      sub_26C06A410(v43, v48, &v65, v44, v45);
      __swift_destroy_boxed_opaque_existential_1(&v60);
      v30 = v59;
    }

    else
    {
      sub_26C06A56C(v63, &qword_280479360, &qword_26C0AC5D8);
    }

    v40 += 40;
  }

  while (v40 != 392);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_26C0688D8(v39, &v66);

  sub_26C06A56C(v72, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v71, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v74, &qword_280479360, &qword_26C0AC5D8);
  __swift_destroy_boxed_opaque_existential_1(v75);
  v50 = sub_26C074764(&v66);
  __swift_destroy_boxed_opaque_existential_1(&v66);
  return v50;
}

uint64_t Table.addColumn<A>(_:check:defaultValue:collate:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v12 = a2[1];
  v49 = *a2;
  v50 = a3;
  v13 = a2[2];
  v14 = *a4;
  v52 = a4[1];
  v53 = v14;
  v15 = v6[9];
  v78 = v6[8];
  v79 = v15;
  v80 = *(v6 + 20);
  v16 = v6[5];
  v74 = v6[4];
  v75 = v16;
  v17 = v6[7];
  v76 = v6[6];
  v77 = v17;
  v18 = v6[1];
  v70 = *v6;
  v71 = v18;
  v19 = v6[3];
  v72 = v6[2];
  v73 = v19;
  v69[3] = type metadata accessor for Expression(0, a5, a3, a4);
  v69[4] = &protocol witness table for Expression<A>;
  v69[0] = v10;
  v69[1] = v9;
  v69[2] = v11;
  v20 = *(a6 + 40);

  v21 = v20(a5, a6);
  v23 = v22;
  v54 = v13;
  v51 = v12;
  if (v12)
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479390, &qword_26C0AD880);
    v25 = &protocol witness table for Expression<A>;
    v26 = v49;
    v27 = v49;
  }

  else
  {
    v27 = 0;
    v13 = 0;
    v24 = 0;
    v25 = 0;
    v26 = v49;
  }

  v68[0] = v27;
  v68[1] = v12;
  v68[2] = v13;
  v68[3] = v24;
  v68[4] = v25;
  v28 = *(a6 + 8);
  v67[3] = a5;
  v67[4] = v28;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v67);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, v50, a5);
  memset(v66, 0, 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479368, &qword_26C0AC5E0);
  v30 = swift_allocObject();
  sub_26C06B6BC(v69, v30 + 32);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  *(v30 + 104) = &protocol witness table for Expression<A>;
  *(v30 + 72) = v21;
  *(v30 + 80) = v23;
  v32 = MEMORY[0x277D84F90];
  *(v30 + 88) = MEMORY[0x277D84F90];
  *(v30 + 96) = v31;
  *(v30 + 112) = 0u;
  *(v30 + 128) = 0u;
  *(v30 + 176) = v31;
  *(v30 + 184) = &protocol witness table for Expression<A>;
  *(v30 + 144) = 0;
  *(v30 + 152) = 0x4C4C554E20544F4ELL;
  *(v30 + 160) = 0xE800000000000000;
  *(v30 + 168) = v32;
  *(v30 + 192) = 0u;
  *(v30 + 208) = 0u;
  *(v30 + 224) = 0;
  sub_26C067878(v68, &v61, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v62 + 1))
  {
    sub_26C06A3A8(&v61, &v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_26C0AC580;
    *(v33 + 56) = v31;
    *(v33 + 64) = &protocol witness table for Expression<A>;
    *(v33 + 32) = 0x4B43454843;
    *(v33 + 40) = 0xE500000000000000;
    *(v33 + 48) = v32;
    sub_26C06B6BC(&v55, v33 + 72);
    sub_26C06E874(v26, v51, v54);
    sub_26C082220(v53, v52);

    sub_26C0688D8(v33, (v30 + 232));
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1(&v55);
  }

  else
  {
    *(v30 + 264) = 0;
    *(v30 + 248) = 0u;
    *(v30 + 232) = 0u;
    sub_26C06E874(v26, v51, v54);
    sub_26C082220(v53, v52);
  }

  sub_26C067878(v67, &v61, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v62 + 1))
  {
    sub_26C06A3A8(&v61, &v55);
    *(v30 + 296) = v31;
    *(v30 + 304) = &protocol witness table for Expression<A>;
    sub_26C06E148(&v55, 0x20544C5541464544, 0xE800000000000000, (v30 + 272));
    __swift_destroy_boxed_opaque_existential_1(&v55);
  }

  else
  {
    *(v30 + 304) = 0;
    *(v30 + 272) = 0u;
    *(v30 + 288) = 0u;
  }

  sub_26C067878(v66, &v61, &qword_280479370, &qword_26C0AC5E8);
  if (*(&v62 + 1))
  {
    v57[0] = v63;
    v57[1] = v64;
    v57[2] = v65;
    v55 = v61;
    v56 = v62;
    sub_26C080BEC(&v55, v57 + 8, (v30 + 312));

    sub_26C06A56C(&v55, &qword_280479378, &qword_26C0AC5F0);
  }

  else
  {

    *(v30 + 344) = 0;
    *(v30 + 312) = 0u;
    *(v30 + 328) = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  v34 = swift_allocObject();
  *(v34 + 32) = 0x4554414C4C4F43;
  *(v34 + 16) = xmmword_26C0AC580;
  *(v34 + 56) = v31;
  *(v34 + 64) = &protocol witness table for Expression<A>;
  *(v34 + 40) = 0xE700000000000000;
  *(v34 + 48) = v32;
  *(v34 + 96) = &type metadata for Collation;
  *(v34 + 104) = &protocol witness table for Collation;
  v36 = v52;
  v35 = v53;
  *(v34 + 72) = v53;
  *(v34 + 80) = v36;
  sub_26C082220(v35, v36);
  v37 = 32;
  sub_26C0688D8(v34, (v30 + 352));
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v54 = v30;
  do
  {
    sub_26C067878(v30 + v37, &v61, &qword_280479360, &qword_26C0AC5D8);
    v58[0] = v61;
    v58[1] = v62;
    v59 = v63;
    if (*(&v62 + 1))
    {
      sub_26C06A3A8(v58, &v55);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60 = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = sub_26C06A23C(0, v32[2] + 1, 1, v32, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v60 = v32;
      }

      v40 = v32[2];
      v39 = v32[3];
      if (v40 >= v39 >> 1)
      {
        v32 = sub_26C06A23C((v39 > 1), v40 + 1, 1, v32, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v60 = v32;
      }

      v41 = *(&v56 + 1);
      v42 = *&v57[0];
      v43 = __swift_mutable_project_boxed_opaque_existential_1(&v55, *(&v56 + 1));
      MEMORY[0x28223BE20](v43);
      v45 = &v49 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v46 + 16))(v45);
      sub_26C06A410(v40, v45, &v60, v41, v42);
      __swift_destroy_boxed_opaque_existential_1(&v55);
      v30 = v54;
    }

    else
    {
      sub_26C06A56C(v58, &qword_280479360, &qword_26C0AC5D8);
    }

    v37 += 40;
  }

  while (v37 != 392);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_26C0688D8(v32, &v61);

  sub_26C082234(v53, v52);
  sub_26C06A56C(v66, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v67, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v68, &qword_280479360, &qword_26C0AC5D8);
  __swift_destroy_boxed_opaque_existential_1(v69);
  v47 = sub_26C074764(&v61);
  __swift_destroy_boxed_opaque_existential_1(&v61);
  return v47;
}

{
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = *a2;
  v13 = a2[1];
  v46 = a2[2];
  v47 = a3;
  v14 = a4[1];
  v49 = *a4;
  v50 = v12;
  v48 = v14;
  v15 = v6[9];
  v74 = v6[8];
  v75 = v15;
  v76 = *(v6 + 20);
  v16 = v6[5];
  v70 = v6[4];
  v71 = v16;
  v17 = v6[7];
  v72 = v6[6];
  v73 = v17;
  v18 = v6[1];
  v66 = *v6;
  v67 = v18;
  v19 = v6[3];
  v68 = v6[2];
  v69 = v19;
  v65[3] = type metadata accessor for Expression(0, a5, a3, a4);
  v65[4] = &protocol witness table for Expression<A>;
  v65[0] = v9;
  v65[1] = v10;
  v65[2] = v11;
  v20 = *(a6 + 40);

  v21 = v20(a5, a6);
  v23 = v22;
  v64[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
  v64[4] = &protocol witness table for Expression<A>;
  v64[0] = v50;
  v64[1] = v13;
  v50 = v13;
  v64[2] = v46;
  v24 = *(a6 + 8);
  v63[3] = a5;
  v63[4] = v24;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v63);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, v47, a5);
  memset(v62, 0, sizeof(v62));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479368, &qword_26C0AC5E0);
  v26 = swift_allocObject();
  sub_26C06B6BC(v65, v26 + 32);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  *(v26 + 104) = &protocol witness table for Expression<A>;
  *(v26 + 72) = v21;
  *(v26 + 80) = v23;
  v28 = MEMORY[0x277D84F90];
  *(v26 + 88) = MEMORY[0x277D84F90];
  *(v26 + 96) = v27;
  *(v26 + 112) = 0u;
  *(v26 + 128) = 0u;
  *(v26 + 176) = v27;
  *(v26 + 184) = &protocol witness table for Expression<A>;
  *(v26 + 144) = 0;
  *(v26 + 152) = 0x4C4C554E20544F4ELL;
  *(v26 + 160) = 0xE800000000000000;
  *(v26 + 168) = v28;
  *(v26 + 192) = 0u;
  *(v26 + 208) = 0u;
  *(v26 + 224) = 0;
  sub_26C067878(v64, &v57, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v58 + 1))
  {
    sub_26C06A3A8(&v57, &v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_26C0AC580;
    *(v29 + 56) = v27;
    *(v29 + 64) = &protocol witness table for Expression<A>;
    *(v29 + 32) = 0x4B43454843;
    *(v29 + 40) = 0xE500000000000000;
    *(v29 + 48) = v28;
    sub_26C06B6BC(&v51, v29 + 72);

    v31 = v48;
    v30 = v49;
    sub_26C082220(v49, v48);

    sub_26C0688D8(v29, (v26 + 232));
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1(&v51);
  }

  else
  {
    *(v26 + 264) = 0;
    *(v26 + 248) = 0u;
    *(v26 + 232) = 0u;

    v31 = v48;
    v30 = v49;
    sub_26C082220(v49, v48);
  }

  sub_26C067878(v63, &v57, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v58 + 1))
  {
    sub_26C06A3A8(&v57, &v51);
    *(v26 + 296) = v27;
    *(v26 + 304) = &protocol witness table for Expression<A>;
    sub_26C06E148(&v51, 0x20544C5541464544, 0xE800000000000000, (v26 + 272));
    __swift_destroy_boxed_opaque_existential_1(&v51);
  }

  else
  {
    *(v26 + 304) = 0;
    *(v26 + 272) = 0u;
    *(v26 + 288) = 0u;
  }

  sub_26C067878(v62, &v57, &qword_280479370, &qword_26C0AC5E8);
  if (*(&v58 + 1))
  {
    v53[0] = v59;
    v53[1] = v60;
    v53[2] = v61;
    v51 = v57;
    v52 = v58;
    sub_26C080BEC(&v51, v53 + 8, (v26 + 312));

    sub_26C06A56C(&v51, &qword_280479378, &qword_26C0AC5F0);
  }

  else
  {

    *(v26 + 344) = 0;
    *(v26 + 312) = 0u;
    *(v26 + 328) = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  v32 = swift_allocObject();
  *(v32 + 32) = 0x4554414C4C4F43;
  *(v32 + 16) = xmmword_26C0AC580;
  *(v32 + 56) = v27;
  *(v32 + 64) = &protocol witness table for Expression<A>;
  *(v32 + 40) = 0xE700000000000000;
  *(v32 + 48) = v28;
  *(v32 + 96) = &type metadata for Collation;
  *(v32 + 104) = &protocol witness table for Collation;
  *(v32 + 72) = v30;
  *(v32 + 80) = v31;
  sub_26C082220(v30, v31);
  v33 = 32;
  sub_26C0688D8(v32, (v26 + 352));
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v50 = v26;
  do
  {
    sub_26C067878(v26 + v33, &v57, &qword_280479360, &qword_26C0AC5D8);
    v54[0] = v57;
    v54[1] = v58;
    v55 = v59;
    if (*(&v58 + 1))
    {
      sub_26C06A3A8(v54, &v51);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = sub_26C06A23C(0, v28[2] + 1, 1, v28, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v56 = v28;
      }

      v36 = v28[2];
      v35 = v28[3];
      if (v36 >= v35 >> 1)
      {
        v28 = sub_26C06A23C((v35 > 1), v36 + 1, 1, v28, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v56 = v28;
      }

      v37 = *(&v52 + 1);
      v38 = *&v53[0];
      v39 = __swift_mutable_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
      MEMORY[0x28223BE20](v39);
      v41 = &v45 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v42 + 16))(v41);
      sub_26C06A410(v36, v41, &v56, v37, v38);
      __swift_destroy_boxed_opaque_existential_1(&v51);
      v26 = v50;
    }

    else
    {
      sub_26C06A56C(v54, &qword_280479360, &qword_26C0AC5D8);
    }

    v33 += 40;
  }

  while (v33 != 392);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_26C0688D8(v28, &v57);

  sub_26C082234(v49, v48);
  sub_26C06A56C(v62, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(v63, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v64, &qword_280479360, &qword_26C0AC5D8);
  __swift_destroy_boxed_opaque_existential_1(v65);
  v43 = sub_26C074764(&v57);
  __swift_destroy_boxed_opaque_existential_1(&v57);
  return v43;
}

{
  v66 = a3;
  v12 = sub_26C0ABAF0();
  v73 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v64 - v13;
  v16 = *a1;
  v15 = a1[1];
  v17 = a1[2];
  v18 = *a2;
  v64 = a2[1];
  v65 = v18;
  v19 = a2[2];
  v20 = *a4;
  v71 = a4[1];
  v72 = v20;
  v21 = v6[9];
  v99 = v6[8];
  v100 = v21;
  v101 = *(v6 + 20);
  v22 = v6[5];
  v95 = v6[4];
  v96 = v22;
  v23 = v6[7];
  v97 = v6[6];
  v98 = v23;
  v24 = v6[1];
  v91 = *v6;
  v92 = v24;
  v25 = v6[3];
  v93 = v6[2];
  v94 = v25;
  v68 = v26;
  v90[3] = type metadata accessor for Expression(0, v26, v27, v28);
  v90[4] = &protocol witness table for Expression<A>;
  v90[0] = v16;
  v90[1] = v15;
  v90[2] = v17;
  v29 = *(a6 + 40);

  v30 = v29(a5, a6);
  v31 = v64;
  v67 = v30;
  v69 = v19;
  v70 = v32;
  if (v64)
  {
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479390, &qword_26C0AD880);
    v34 = &protocol witness table for Expression<A>;
    v35 = v65;
    v36 = v65;
    v37 = v31;
    v38 = v31;
  }

  else
  {
    v37 = 0;
    v36 = 0;
    v38 = 0;
    v19 = 0;
    v33 = 0;
    v34 = 0;
    v35 = v65;
  }

  v89[0] = v36;
  v89[1] = v38;
  v89[2] = v19;
  v89[3] = v33;
  v89[4] = v34;
  v39 = v73;
  v40 = v68;
  (*(v73 + 16))(v14, v66, v68);
  v41 = *(a5 - 8);
  if ((*(v41 + 48))(v14, 1, a5) == 1)
  {
    sub_26C06E874(v35, v37, v69);
    (*(v39 + 8))(v14, v40);
    v88 = 0;
    v86 = 0u;
    v87 = 0u;
  }

  else
  {
    v42 = *(a6 + 8);
    *(&v87 + 1) = a5;
    v88 = v42;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v86);
    (*(v41 + 32))(boxed_opaque_existential_1, v14, a5);
    sub_26C06E874(v35, v37, v69);
  }

  v44 = v70;
  memset(v85, 0, sizeof(v85));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479368, &qword_26C0AC5E0);
  v45 = swift_allocObject();
  sub_26C06B6BC(v90, v45 + 32);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  *(v45 + 104) = &protocol witness table for Expression<A>;
  *(v45 + 72) = v67;
  *(v45 + 80) = v44;
  v47 = MEMORY[0x277D84F90];
  *(v45 + 88) = MEMORY[0x277D84F90];
  *(v45 + 96) = v46;
  *(v45 + 112) = 0u;
  *(v45 + 128) = 0u;
  *(v45 + 144) = 0u;
  *(v45 + 160) = 0u;
  *(v45 + 176) = 0u;
  *(v45 + 192) = 0u;
  *(v45 + 208) = 0u;
  *(v45 + 224) = 0;
  sub_26C067878(v89, &v80, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v81 + 1))
  {
    sub_26C06A3A8(&v80, &v74);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_26C0AC580;
    *(v48 + 56) = v46;
    *(v48 + 64) = &protocol witness table for Expression<A>;
    *(v48 + 32) = 0x4B43454843;
    *(v48 + 40) = 0xE500000000000000;
    *(v48 + 48) = v47;
    sub_26C06B6BC(&v74, v48 + 72);
    sub_26C082220(v72, v71);

    sub_26C0688D8(v48, (v45 + 232));
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1(&v74);
  }

  else
  {
    *(v45 + 264) = 0;
    *(v45 + 248) = 0u;
    *(v45 + 232) = 0u;
    sub_26C082220(v72, v71);
  }

  sub_26C067878(&v86, &v80, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v81 + 1))
  {
    sub_26C06A3A8(&v80, &v74);
    *(v45 + 296) = v46;
    *(v45 + 304) = &protocol witness table for Expression<A>;
    sub_26C06E148(&v74, 0x20544C5541464544, 0xE800000000000000, (v45 + 272));
    __swift_destroy_boxed_opaque_existential_1(&v74);
  }

  else
  {
    *(v45 + 304) = 0;
    *(v45 + 272) = 0u;
    *(v45 + 288) = 0u;
  }

  sub_26C067878(v85, &v80, &qword_280479370, &qword_26C0AC5E8);
  if (*(&v81 + 1))
  {
    v76[0] = v82;
    v76[1] = v83;
    v76[2] = v84;
    v74 = v80;
    v75 = v81;
    sub_26C080BEC(&v74, v76 + 8, (v45 + 312));

    sub_26C06A56C(&v74, &qword_280479378, &qword_26C0AC5F0);
  }

  else
  {

    *(v45 + 344) = 0;
    *(v45 + 312) = 0u;
    *(v45 + 328) = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  v49 = swift_allocObject();
  *(v49 + 32) = 0x4554414C4C4F43;
  *(v49 + 16) = xmmword_26C0AC580;
  *(v49 + 56) = v46;
  *(v49 + 64) = &protocol witness table for Expression<A>;
  *(v49 + 40) = 0xE700000000000000;
  *(v49 + 48) = v47;
  *(v49 + 96) = &type metadata for Collation;
  *(v49 + 104) = &protocol witness table for Collation;
  v51 = v71;
  v50 = v72;
  *(v49 + 72) = v72;
  *(v49 + 80) = v51;
  sub_26C082220(v50, v51);
  v52 = 32;
  sub_26C0688D8(v49, (v45 + 352));
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v73 = v45;
  do
  {
    sub_26C067878(v45 + v52, &v80, &qword_280479360, &qword_26C0AC5D8);
    v77[0] = v80;
    v77[1] = v81;
    v78 = v82;
    if (*(&v81 + 1))
    {
      sub_26C06A3A8(v77, &v74);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v79 = v47;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v47 = sub_26C06A23C(0, v47[2] + 1, 1, v47, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v79 = v47;
      }

      v55 = v47[2];
      v54 = v47[3];
      if (v55 >= v54 >> 1)
      {
        v47 = sub_26C06A23C((v54 > 1), v55 + 1, 1, v47, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v79 = v47;
      }

      v56 = *(&v75 + 1);
      v57 = *&v76[0];
      v58 = __swift_mutable_project_boxed_opaque_existential_1(&v74, *(&v75 + 1));
      MEMORY[0x28223BE20](v58);
      v60 = &v64 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v61 + 16))(v60);
      sub_26C06A410(v55, v60, &v79, v56, v57);
      __swift_destroy_boxed_opaque_existential_1(&v74);
      v45 = v73;
    }

    else
    {
      sub_26C06A56C(v77, &qword_280479360, &qword_26C0AC5D8);
    }

    v52 += 40;
  }

  while (v52 != 392);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_26C0688D8(v47, &v80);

  sub_26C082234(v72, v71);
  sub_26C06A56C(v85, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(&v86, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v89, &qword_280479360, &qword_26C0AC5D8);
  __swift_destroy_boxed_opaque_existential_1(v90);
  v62 = sub_26C074764(&v80);
  __swift_destroy_boxed_opaque_existential_1(&v80);
  return v62;
}

{
  v60 = a6;
  v62 = a3;
  v11 = sub_26C0ABAF0();
  v59 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v61 = &v56 - v12;
  v13 = *a1;
  v14 = a1[1];
  v15 = a1[2];
  v16 = *a2;
  v57 = a2[1];
  v58 = v16;
  v56 = a2[2];
  v17 = *a4;
  v63 = a4[1];
  v64 = v17;
  v18 = v6[9];
  v91 = v6[8];
  v92 = v18;
  v93 = *(v6 + 20);
  v19 = v6[5];
  v87 = v6[4];
  v88 = v19;
  v20 = v6[7];
  v89 = v6[6];
  v90 = v20;
  v21 = v6[1];
  v83 = *v6;
  v84 = v21;
  v22 = v6[3];
  v85 = v6[2];
  v86 = v22;
  v82[3] = type metadata accessor for Expression(0, v11, v23, v24);
  v82[4] = &protocol witness table for Expression<A>;
  v82[0] = v13;
  v82[1] = v14;
  v82[2] = v15;
  v25 = v60;
  v26 = *(v60 + 40);

  v27 = v25;
  v28 = v26(a5, v25);
  v29 = v59;
  v65 = v28;
  v31 = v30;
  v81[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
  v81[4] = &protocol witness table for Expression<A>;
  v32 = v61;
  v81[0] = v58;
  v81[1] = v57;
  v81[2] = v56;
  (*(v29 + 16))(v61, v62, v11);
  v33 = *(a5 - 8);
  if ((*(v33 + 48))(v32, 1, a5) == 1)
  {
    v34 = *(v29 + 8);

    v34(v32, v11);
    v80 = 0;
    v78 = 0u;
    v79 = 0u;
  }

  else
  {
    v35 = *(v27 + 8);
    *(&v79 + 1) = a5;
    v80 = v35;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v78);
    (*(v33 + 32))(boxed_opaque_existential_1, v32, a5);
  }

  memset(v77, 0, sizeof(v77));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479368, &qword_26C0AC5E0);
  v37 = swift_allocObject();
  sub_26C06B6BC(v82, v37 + 32);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  *(v37 + 104) = &protocol witness table for Expression<A>;
  *(v37 + 72) = v65;
  *(v37 + 80) = v31;
  v39 = MEMORY[0x277D84F90];
  *(v37 + 88) = MEMORY[0x277D84F90];
  *(v37 + 96) = v38;
  *(v37 + 112) = 0u;
  *(v37 + 128) = 0u;
  *(v37 + 144) = 0u;
  *(v37 + 160) = 0u;
  *(v37 + 176) = 0u;
  *(v37 + 192) = 0u;
  *(v37 + 208) = 0u;
  *(v37 + 224) = 0;
  sub_26C067878(v81, &v72, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v73 + 1))
  {
    sub_26C06A3A8(&v72, &v66);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_26C0AC580;
    *(v40 + 56) = v38;
    *(v40 + 64) = &protocol witness table for Expression<A>;
    *(v40 + 32) = 0x4B43454843;
    *(v40 + 40) = 0xE500000000000000;
    *(v40 + 48) = v39;
    sub_26C06B6BC(&v66, v40 + 72);
    sub_26C082220(v64, v63);

    sub_26C0688D8(v40, (v37 + 232));
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1(&v66);
  }

  else
  {
    *(v37 + 264) = 0;
    *(v37 + 248) = 0u;
    *(v37 + 232) = 0u;
    sub_26C082220(v64, v63);
  }

  sub_26C067878(&v78, &v72, &qword_280479360, &qword_26C0AC5D8);
  if (*(&v73 + 1))
  {
    sub_26C06A3A8(&v72, &v66);
    *(v37 + 296) = v38;
    *(v37 + 304) = &protocol witness table for Expression<A>;
    sub_26C06E148(&v66, 0x20544C5541464544, 0xE800000000000000, (v37 + 272));
    __swift_destroy_boxed_opaque_existential_1(&v66);
  }

  else
  {
    *(v37 + 304) = 0;
    *(v37 + 272) = 0u;
    *(v37 + 288) = 0u;
  }

  sub_26C067878(v77, &v72, &qword_280479370, &qword_26C0AC5E8);
  if (*(&v73 + 1))
  {
    v68[0] = v74;
    v68[1] = v75;
    v68[2] = v76;
    v66 = v72;
    v67 = v73;
    sub_26C080BEC(&v66, v68 + 8, (v37 + 312));

    sub_26C06A56C(&v66, &qword_280479378, &qword_26C0AC5F0);
  }

  else
  {

    *(v37 + 344) = 0;
    *(v37 + 312) = 0u;
    *(v37 + 328) = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  v41 = swift_allocObject();
  *(v41 + 32) = 0x4554414C4C4F43;
  *(v41 + 16) = xmmword_26C0AC580;
  *(v41 + 56) = v38;
  *(v41 + 64) = &protocol witness table for Expression<A>;
  *(v41 + 40) = 0xE700000000000000;
  *(v41 + 48) = v39;
  *(v41 + 96) = &type metadata for Collation;
  *(v41 + 104) = &protocol witness table for Collation;
  v43 = v63;
  v42 = v64;
  *(v41 + 72) = v64;
  *(v41 + 80) = v43;
  sub_26C082220(v42, v43);
  v44 = 32;
  sub_26C0688D8(v41, (v37 + 352));
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v65 = v37;
  do
  {
    sub_26C067878(v37 + v44, &v72, &qword_280479360, &qword_26C0AC5D8);
    v69[0] = v72;
    v69[1] = v73;
    v70 = v74;
    if (*(&v73 + 1))
    {
      sub_26C06A3A8(v69, &v66);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v71 = v39;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = sub_26C06A23C(0, v39[2] + 1, 1, v39, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v71 = v39;
      }

      v47 = v39[2];
      v46 = v39[3];
      if (v47 >= v46 >> 1)
      {
        v39 = sub_26C06A23C((v46 > 1), v47 + 1, 1, v39, &qword_280479380, &qword_26C0AC5F8, &qword_280479388, &unk_26C0AC600);
        v71 = v39;
      }

      v48 = *(&v67 + 1);
      v49 = *&v68[0];
      v50 = __swift_mutable_project_boxed_opaque_existential_1(&v66, *(&v67 + 1));
      MEMORY[0x28223BE20](v50);
      v52 = &v56 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v53 + 16))(v52);
      sub_26C06A410(v47, v52, &v71, v48, v49);
      __swift_destroy_boxed_opaque_existential_1(&v66);
      v37 = v65;
    }

    else
    {
      sub_26C06A56C(v69, &qword_280479360, &qword_26C0AC5D8);
    }

    v44 += 40;
  }

  while (v44 != 392);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_26C0688D8(v39, &v72);

  sub_26C082234(v64, v63);
  sub_26C06A56C(v77, &qword_280479370, &qword_26C0AC5E8);
  sub_26C06A56C(&v78, &qword_280479360, &qword_26C0AC5D8);
  sub_26C06A56C(v81, &qword_280479360, &qword_26C0AC5D8);
  __swift_destroy_boxed_opaque_existential_1(v82);
  v54 = sub_26C074764(&v72);
  __swift_destroy_boxed_opaque_existential_1(&v72);
  return v54;
}