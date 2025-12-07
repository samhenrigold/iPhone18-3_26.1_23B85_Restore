Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Statement.step()()
{
  v2 = *(v0 + 24);
  sub_1DB143044();
  if (qword_1EE13F098 != -1)
  {
    swift_once();
  }

  sub_1DB2BB294();
  if ((v8 & 1) != 0 || v7 != v2)
  {
    sub_1DB2BB2C4(&v9);
    if (!v1)
    {
      return v9;
    }
  }

  else
  {
    v3 = *(v0 + 16);
    os_unfair_lock_lock((v3 + 24));
    sub_1DB256240((v3 + 16), &v6);
    os_unfair_lock_unlock((v3 + 24));
    if (!v1)
    {
      return v6;
    }
  }

  return v4;
}

void Cursor.subscript.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  os_unfair_lock_lock(*v2 + 6);
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v6 = sqlite3_column_type(*&v5[4]._os_unfair_lock_opaque, a1);
  os_unfair_lock_unlock(v5 + 6);
  if (v6 <= 2)
  {
    if (v6 == 1)
    {
      os_unfair_lock_lock(v5 + 6);
      v15 = sqlite3_column_int64(*&v5[4]._os_unfair_lock_opaque, a1);
      os_unfair_lock_unlock(v5 + 6);
      *(a2 + 24) = MEMORY[0x1E69E7360];
      *(a2 + 32) = &protocol witness table for Int64;
      *a2 = v15;
      return;
    }

    if (v6 == 2)
    {
      os_unfair_lock_lock(v5 + 6);
      v11 = sqlite3_column_double(*&v5[4]._os_unfair_lock_opaque, a1);
      os_unfair_lock_unlock(v5 + 6);
      *(a2 + 24) = MEMORY[0x1E69E63B0];
      *(a2 + 32) = &protocol witness table for Double;
      *a2 = v11;
      return;
    }

    goto LABEL_15;
  }

  if (v6 == 3)
  {
    os_unfair_lock_lock(v5 + 6);
    if (sqlite3_column_text(*&v5[4]._os_unfair_lock_opaque, a1))
    {
      v12 = sub_1DB2BAF14();
      v14 = v13;
      os_unfair_lock_unlock(v5 + 6);
      *(a2 + 24) = MEMORY[0x1E69E6158];
      *(a2 + 32) = &protocol witness table for String;
      *a2 = v12;
      *(a2 + 8) = v14;
      return;
    }

    goto LABEL_23;
  }

  if (v6 == 5)
  {
LABEL_16:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  if (v6 != 4)
  {
LABEL_15:
    sub_1DB2BB4F4();

    v16 = sub_1DB2BB8F4();
    MEMORY[0x1E1283490](v16);

    sub_1DB15B09C(0xD000000000000019, 0x80000001DB2D1D60);

    goto LABEL_16;
  }

  *(a2 + 24) = &type metadata for Blob;
  *(a2 + 32) = sub_1DB138CA8();
  os_unfair_lock_lock(v5 + 6);
  v7 = *&v5[4]._os_unfair_lock_opaque;
  v8 = sqlite3_column_blob(v7, a1);
  if (v8)
  {
    v9 = v8;
    v10 = sqlite3_column_bytes(v7, a1);
    Blob.init(bytes:length:)(v9, v10, a2);
  }

  else
  {
    *a2 = MEMORY[0x1E69E7CC0];
  }

  os_unfair_lock_unlock(v5 + 6);
}

void sub_1DB254768(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 16);
  os_unfair_lock_lock((v4 + 24));
  sub_1DB256240((v4 + 16), &v5);
  os_unfair_lock_unlock((v4 + 24));
  if (!v2)
  {
    *a2 = v5;
  }
}

const char *sub_1DB2547D8@<X0>(sqlite3_stmt **a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v4 = *(a2 + 24);
  v5 = sqlite3_step(*a1);

  result = sub_1DB252CB8(v5, v4, 0);
  if (v8 <= 0xFFFFFFFEFFFFFFFFLL)
  {
    v10 = result;
    v11 = v7;
    v12 = v8;
    v13 = v9;
    sub_1DB1365E0();
    v14 = swift_allocError();
    *v15 = v10;
    v15[1] = v11;
    v15[2] = v12;
    v15[3] = v13;
    sub_1DB1434F4(v10, v11, v12, v13);
    sub_1DB15B294(v14);
    MEMORY[0x1E1284A10](v14);
    swift_allocError();
    *v16 = v10;
    v16[1] = v11;
    v16[2] = v12;
    v16[3] = v13;
    return swift_willThrow();
  }

  else
  {
    *a3 = v5 == 100;
  }

  return result;
}

uint64_t Statement.makeIterator()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sqlite3_reset(*(v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

void sub_1DB254934(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v3 + 16);
  os_unfair_lock_lock((v4 + 24));
  sqlite3_reset(*(v4 + 16));
  os_unfair_lock_unlock((v4 + 24));
  *a1 = v3;
}

uint64_t sub_1DB254988()
{
  sub_1DB2555D0(*v0);
  v2 = v1;

  return v2;
}

uint64_t Array.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DB2BB364();
  v23 = *(v8 - 8);
  v24 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  v29 = *(a2 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v22 - v15;
  v32 = sub_1DB2BACA4();
  v17 = *(a4 + 16);
  v18 = v31;
  v30 = a1;
  v31 = a3;
  v17(a3, a4);
  if (v18)
  {
    (*(*(v31 - 8) + 8))(v30);
  }

  else
  {
    v26 = v17;
    v27 = a4 + 16;
    v20 = *(v29 + 48);
    v19 = v29 + 48;
    v28 = a4;
    v29 = v20;
    v25 = (v19 - 16);
    while ((v29)(v11, 1, a2) != 1)
    {
      (*v25)(v16, v11, a2);
      (*(v19 - 32))(v14, v16, a2);
      sub_1DB2BB154();
      sub_1DB2BB134();
      (*(v19 - 40))(v16, a2);
      v26(v31, v28);
    }

    (*(*(v31 - 8) + 8))(v30);
    (*(v23 + 8))(v11, v24);
    return v32;
  }
}

Swift::OpaquePointer_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Statement.failableNext()()
{
  v1 = Statement.step()();
  v2 = 0;
  if (!v3 && v1)
  {
    Statement.row.getter(v6);
    sub_1DB255C80(v6[0], v6[1]);
    v5 = v4;

    v2 = v5;
  }

  result.value._rawValue = v2;
  result.is_nil = v0;
  return result;
}

uint64_t sub_1DB254E5C@<X0>(uint64_t *a1@<X8>)
{
  result = Statement.step()();
  if (!v3)
  {
    if (result)
    {
      Statement.row.getter(v6);
      sub_1DB255C80(v6[0], v6[1]);
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    *a1 = v5;
  }

  return result;
}

uint64_t sub_1DB254ED0@<X0>(uint64_t *a1@<X8>)
{
  result = Statement.step()();
  if (v3)
  {
    sub_1DB15B294(v3);
    result = MEMORY[0x1E1284A10](v3);
LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  Statement.row.getter(v6);
  sub_1DB255C80(v6[0], v6[1]);
  v5 = v4;

LABEL_6:
  *a1 = v5;
  return result;
}

void sub_1DB254F54()
{
  Statement.columnNames.getter();
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v0 + 40);
    while (v3 < *(v1 + 16))
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      v7 = sub_1DB2B995C(34, 0xE100000000000000, v6, v5);
      v9 = v8;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1DB142A70(v3, v7, v9, isUniquelyReferenced_nonNull_native);

      v4 += 2;
      if (v2 == ++v3)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

const char *Statement.description.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  result = sqlite3_sql(*(v1 + 16));
  if (result)
  {
    v3 = sub_1DB2BAF04();
    os_unfair_lock_unlock((v1 + 24));
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

const char *sub_1DB2550B0()
{
  v1 = *(*v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  result = sqlite3_sql(*(v1 + 16));
  if (result)
  {
    v3 = sub_1DB2BAF04();
    os_unfair_lock_unlock((v1 + 24));
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void Cursor.subscript.getter(uint64_t a1)
{
  v3 = *v1;
  os_unfair_lock_lock((v3 + 24));
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a1 <= 0x7FFFFFFF)
  {
    sqlite3_column_double(*(v3 + 16), a1);
    os_unfair_lock_unlock((v3 + 24));
    return;
  }

  __break(1u);
}

{
  v3 = *v1;
  os_unfair_lock_lock(*v1 + 6);
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (sqlite3_column_text(*&v3[4]._os_unfair_lock_opaque, a1))
  {
    sub_1DB2BAF14();
    os_unfair_lock_unlock(v3 + 6);
    return;
  }

LABEL_7:
  __break(1u);
}

{
  v3 = *v1;
  os_unfair_lock_lock((v3 + 24));
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a1 <= 0x7FFFFFFF)
  {
    sqlite3_column_int64(*(v3 + 16), a1);
    os_unfair_lock_unlock((v3 + 24));
    return;
  }

  __break(1u);
}

void Cursor.subscript.getter(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  os_unfair_lock_lock((v5 + 24));
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v6 = *(v5 + 16);
  v7 = sqlite3_column_blob(v6, a1);
  if (v7)
  {
    v8 = v7;
    v9 = sqlite3_column_bytes(v6, a1);
    Blob.init(bytes:length:)(v8, v9, a2);
  }

  else
  {
    *a2 = MEMORY[0x1E69E7CC0];
  }

  os_unfair_lock_unlock((v5 + 24));
}

void sub_1DB25532C(uint64_t a1)
{
  v3 = *v1;
  os_unfair_lock_lock((v3 + 24));
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a1 <= 0x7FFFFFFF)
  {
    sqlite3_column_int64(*(v3 + 16), a1);
    os_unfair_lock_unlock((v3 + 24));
    return;
  }

  __break(1u);
}

uint64_t Cursor.makeIterator()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F98, &qword_1DB2CC400);
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1DB14A23C;
  *(v5 + 24) = v4;

  return v5;
}

double sub_1DB25543C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  if (v6 >= a2)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *&result = 1;
    *(a3 + 24) = xmmword_1DB2C77D0;
  }

  else
  {
    swift_beginAccess();
    *(a1 + 16) = v6 + 1;
    Cursor.subscript.getter(v6, a3);
  }

  return result;
}

uint64_t sub_1DB2554E8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v3;
  v6[4] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F98, &qword_1DB2CC400);
  result = swift_allocObject();
  *(result + 16) = sub_1DB256258;
  *(result + 24) = v6;
  *a1 = result;
  return result;
}

uint64_t sub_1DB255590()
{
  sub_1DB255C80(*v0, v0[1]);
  v2 = v1;

  return v2;
}

void sub_1DB2555D0(uint64_t a1)
{
  v3 = *(a1 + 16);
  os_unfair_lock_lock((v3 + 24));
  v56 = (v3 + 16);
  sqlite3_reset(*(v3 + 16));
  v57 = v3;
  os_unfair_lock_unlock((v3 + 24));
  sub_1DB143044();
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  v58 = *(a1 + 24);
  for (i = MEMORY[0x1E69E7CC0] + 32; ; i = (v7 + 1))
  {
    if (qword_1EE13F098 != -1)
    {
      swift_once();
    }

    sub_1DB2BB294();
    if ((v67 & 1) != 0 || v66 != v58)
    {
      break;
    }

    os_unfair_lock_lock(v57 + 6);
    sub_1DB256240(v56, &v66);
    os_unfair_lock_unlock(v57 + 6);
    if ((v66 & 1) == 0)
    {
      goto LABEL_71;
    }

LABEL_12:
    v59 = i;
    v60 = v5;
    v61 = v4;
    Statement.row.getter(&v66);
    v9 = v66;
    v8 = v67;
    swift_retain_n();
    v63 = v8;
    if (v8 >= 1)
    {
      v10 = 0;
      v11 = 0;
      v12 = MEMORY[0x1E69E7CC0];
      v13 = (MEMORY[0x1E69E7CC0] + 32);
      while (1)
      {
        os_unfair_lock_lock((v9 + 24));
        if (v10 == 0x80000000)
        {
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
          return;
        }

        v14 = sqlite3_column_type(*(v9 + 16), v10);
        os_unfair_lock_unlock((v9 + 24));
        if (v14 > 2)
        {
          break;
        }

        if (v14 == 1)
        {
          os_unfair_lock_lock((v9 + 24));
          v22 = COERCE_DOUBLE(sqlite3_column_int64(*(v9 + 16), v10));
          os_unfair_lock_unlock((v9 + 24));
          v25 = MEMORY[0x1E69E7360];
          v15 = &protocol witness table for Int64;
          if (v11)
          {
            goto LABEL_49;
          }
        }

        else
        {
          if (v14 != 2)
          {
            goto LABEL_32;
          }

          os_unfair_lock_lock((v9 + 24));
          v24 = sqlite3_column_double(*(v9 + 16), v10);
          os_unfair_lock_unlock((v9 + 24));
          v22 = v24;
          v25 = MEMORY[0x1E69E63B0];
          v15 = &protocol witness table for Double;
          if (v11)
          {
            goto LABEL_49;
          }
        }

LABEL_39:
        v28 = v12[3];
        if (((v28 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_77;
        }

        v62 = v1;
        v29 = v28 & 0xFFFFFFFFFFFFFFFELL;
        if (v29 <= 1)
        {
          v30 = 1;
        }

        else
        {
          v30 = v29;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
        v31 = swift_allocObject();
        v32 = (_swift_stdlib_malloc_size(v31) - 32) / 40;
        v31[2] = v30;
        v31[3] = 2 * v32;
        v33 = v12;
        v34 = (v31 + 4);
        v35 = v12[2];
        v36 = v12[3] >> 1;
        if (v35)
        {
          v37 = v33 + 4;
          if (v31 != v33 || v34 >= v37 + 40 * v36)
          {
            memmove(v31 + 4, v37, 40 * v36);
          }

          v33[2] = 0;
        }

        v13 = (v34 + 40 * v36);
        v11 = (v32 & 0x7FFFFFFFFFFFFFFFLL) - v36;

        v12 = v31;
        v1 = v62;
LABEL_49:
        v38 = __OFSUB__(v11--, 1);
        if (v38)
        {
          goto LABEL_76;
        }

        ++v10;
        *v13 = v22;
        *(v13 + 1) = v1;
        v13[2] = 0.0;
        *(v13 + 3) = v25;
        *(v13 + 4) = v15;
        v13 += 5;
        if (v63 == v10)
        {
          goto LABEL_53;
        }
      }

      if (v14 == 3)
      {
        os_unfair_lock_lock((v9 + 24));
        if (!sqlite3_column_text(*(v9 + 16), v10))
        {
          goto LABEL_82;
        }

        v22 = COERCE_DOUBLE(sub_1DB2BAF14());
        v1 = v26;
        os_unfair_lock_unlock((v9 + 24));
        v25 = MEMORY[0x1E69E6158];
        v15 = &protocol witness table for String;
        if (v11)
        {
          goto LABEL_49;
        }

        goto LABEL_39;
      }

      if (v14 != 5)
      {
        if (v14 == 4)
        {
          v15 = sub_1DB138CA8();
          os_unfair_lock_lock((v9 + 24));
          v16 = *(v9 + 16);
          v17 = sqlite3_column_blob(v16, v10);
          if (v17 && (v18 = v17, (v19 = sqlite3_column_bytes(v16, v10)) != 0))
          {
            v20 = v1;
            v21 = v19;
            if (v19 <= 0)
            {
              v22 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CD8, &unk_1DB2BCC50);
              v22 = COERCE_DOUBLE(swift_allocObject());
              v23 = _swift_stdlib_malloc_size(*&v22);
              *(*&v22 + 16) = v21;
              *(*&v22 + 24) = 2 * v23 - 64;
            }

            memcpy((*&v22 + 32), v18, v21);
            v1 = v20;
          }

          else
          {
            v22 = MEMORY[0x1E69E7CC0];
          }

          os_unfair_lock_unlock((v9 + 24));
          v25 = &type metadata for Blob;
          if (v11)
          {
            goto LABEL_49;
          }

          goto LABEL_39;
        }

LABEL_32:
        v64 = 0;
        v65 = 0xE000000000000000;
        sub_1DB2BB4F4();

        v64 = 0xD000000000000019;
        v65 = 0x80000001DB2D1D60;
        v27 = sub_1DB2BB8F4();
        MEMORY[0x1E1283490](v27);

        sub_1DB15B09C(v64, v65);
      }

      v1 = 0;
      v22 = 0.0;
      v25 = 0;
      v15 = 0;
      if (v11)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    }

    v11 = 0;
    v12 = MEMORY[0x1E69E7CC0];
LABEL_53:

    v39 = v12[3];
    if (v39 >= 2)
    {
      v40 = v39 >> 1;
      v38 = __OFSUB__(v40, v11);
      v41 = v40 - v11;
      if (v38)
      {
        goto LABEL_79;
      }

      v12[2] = v41;
    }

    if (v61)
    {
      v5 = v60;
      v7 = v59;
      v4 = v61 - 1;
      if (__OFSUB__(v61, 1))
      {
        goto LABEL_78;
      }
    }

    else
    {
      v42 = v60[3];
      if (((v42 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_80;
      }

      v43 = v42 & 0xFFFFFFFFFFFFFFFELL;
      if (v43 <= 1)
      {
        v44 = 1;
      }

      else
      {
        v44 = v43;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28C88, &unk_1DB2CC5F0);
      v45 = swift_allocObject();
      v46 = _swift_stdlib_malloc_size(v45);
      v47 = v46 - 32;
      if (v46 < 32)
      {
        v47 = v46 - 25;
      }

      v48 = v47 >> 3;
      v45[2] = v44;
      v45[3] = 2 * (v47 >> 3);
      v49 = (v45 + 4);
      v50 = v60[3] >> 1;
      if (v60[2])
      {
        v51 = v60 + 4;
        if (v45 != v60 || v49 >= v51 + 8 * v50)
        {
          memmove(v45 + 4, v51, 8 * v50);
        }

        v60[2] = 0;
      }

      v7 = (v49 + 8 * v50);
      v52 = (v48 & 0x7FFFFFFFFFFFFFFFLL) - v50;

      v5 = v45;
      v38 = __OFSUB__(v52, 1);
      v4 = v52 - 1;
      if (v38)
      {
        goto LABEL_78;
      }
    }

    *v7 = v12;
  }

  sub_1DB2BB2C4(&v64);
  if (v64 == 1)
  {
    goto LABEL_12;
  }

LABEL_71:
  v53 = v5[3];
  if (v53 >= 2)
  {
    v54 = v53 >> 1;
    v38 = __OFSUB__(v54, v4);
    v55 = v54 - v4;
    if (v38)
    {
      goto LABEL_81;
    }

    v5[2] = v55;
  }
}

void sub_1DB255C80(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = (v3 + 16);
  swift_retain_n();

  swift_beginAccess();
  v5 = MEMORY[0x1E69E7CC0];
  if (a2 >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0] + 32;
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

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
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

uint64_t sub_1DB255E8C(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = *(v2 + 16);
    os_unfair_lock_lock((v5 + 24));
    v6 = *(v5 + 16);
    sqlite3_reset(v6);
    sqlite3_clear_bindings(v6);
    os_unfair_lock_unlock((v5 + 24));
    os_unfair_lock_lock((v5 + 24));
    v7 = sqlite3_bind_parameter_count(*(v5 + 16));
    os_unfair_lock_unlock((v5 + 24));
    if (v3 == v7)
    {
      v8 = a1 + 32;
      v9 = 1;
      do
      {
        sub_1DB253CF8(v8, v9++);
        v8 += 40;
      }

      while (v9 - v3 != 1);
    }

    else
    {
      sub_1DB2BB4F4();
      v10 = sub_1DB2BB8F4();
      v12 = v11;

      MEMORY[0x1E1283490](0xD000000000000012, 0x80000001DB2D6860);
      v13 = sub_1DB2BB8F4();
      MEMORY[0x1E1283490](v13);

      MEMORY[0x1E1283490](0x64657373617020, 0xE700000000000000);
      sub_1DB15B09C(v10, v12);
    }
  }

  return v2;
}

uint64_t sub_1DB256024@<X0>(sqlite3_stmt **a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_1DB2BAE24();
  LODWORD(v3) = sqlite3_bind_parameter_index(v3, (v4 + 32));

  *a2 = v3;
  return result;
}

unint64_t sub_1DB256088()
{
  result = qword_1ECC28C70;
  if (!qword_1ECC28C70)
  {
    type metadata accessor for Statement();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28C70);
  }

  return result;
}

unint64_t sub_1DB256100(uint64_t a1)
{
  result = sub_1DB256088();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB25612C()
{
  result = qword_1ECC28C78;
  if (!qword_1ECC28C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC28C80, &qword_1DB2CC4E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28C78);
  }

  return result;
}

uint64_t objectdestroy_4Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DB256278()
{
  v1 = *(v0 + 16);
  if (v1 <= 2)
  {
    if (!*(v0 + 16))
    {
      goto LABEL_13;
    }

    if (v1 == 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (*(v0 + 16) <= 4u)
    {
      if (v1 == 3)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if (v1 == 5)
    {
LABEL_12:
      v2 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      v3 = [v2 description];

      sub_1DB2BAD94();
LABEL_13:
      sub_1DB2BA634();
    }
  }

  return sub_1DB2BA634();
}

OnDeviceStorageCore::URIQueryParameter::FileMode_optional __swiftcall URIQueryParameter.FileMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB2BB6F4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t URIQueryParameter.FileMode.rawValue.getter()
{
  v1 = 28530;
  v2 = 6518642;
  if (*v0 != 2)
  {
    v2 = 0x79726F6D656DLL;
  }

  if (*v0)
  {
    v1 = 30578;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DB2565EC()
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB25668C(uint64_t a1)
{
  sub_1DB2BAE84();
}

uint64_t sub_1DB256718(uint64_t a1)
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

void sub_1DB2567C0(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 28530;
  v4 = 0xE300000000000000;
  v5 = 6518642;
  if (*v1 != 2)
  {
    v5 = 0x79726F6D656DLL;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 30578;
    v2 = 0xE200000000000000;
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

OnDeviceStorageCore::URIQueryParameter::CacheMode_optional __swiftcall URIQueryParameter.CacheMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB2BB6F4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t URIQueryParameter.CacheMode.rawValue.getter()
{
  if (*v0)
  {
    return 0x65746176697270;
  }

  else
  {
    return 0x646572616873;
  }
}

uint64_t sub_1DB2568B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65746176697270;
  }

  else
  {
    v3 = 0x646572616873;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x65746176697270;
  }

  else
  {
    v5 = 0x646572616873;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DB2BB924();
  }

  return v8 & 1;
}

uint64_t sub_1DB25695C()
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB2569DC(uint64_t a1)
{
  sub_1DB2BAE84();
}

uint64_t sub_1DB256A48(uint64_t a1)
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB256AC4@<X0>(char *a2@<X8>)
{
  v3 = sub_1DB2BB6F4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1DB256B24(uint64_t *a1@<X8>)
{
  v2 = 0x646572616873;
  if (*v1)
  {
    v2 = 0x65746176697270;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t URIQueryParameter.description.getter()
{
  v1 = sub_1DB2BA644();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v3) = *(v0 + 16);
  v8 = *v0;
  v9 = v3;
  v5 = sub_1DB256278();
  v6 = MEMORY[0x1E1282BD0](v5);
  (*(v2 + 8))(v4, v1);
  return v6;
}

unint64_t sub_1DB256C5C()
{
  result = qword_1ECC28C90;
  if (!qword_1ECC28C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28C90);
  }

  return result;
}

unint64_t sub_1DB256CB4()
{
  result = qword_1ECC28C98;
  if (!qword_1ECC28C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28C98);
  }

  return result;
}

uint64_t sub_1DB256D08()
{
  v1 = sub_1DB2BA644();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v3) = *(v0 + 16);
  v8 = *v0;
  v9 = v3;
  v5 = sub_1DB256278();
  v6 = MEMORY[0x1E1282BD0](v5);
  (*(v2 + 8))(v4, v1);
  return v6;
}

uint64_t sub_1DB256E0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1DB256E54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

double sub_1DB256F2C@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_1DB256F38@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1DB256FD0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_1DB256FF0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Connection.cipherVersion.getter()
{
  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v0, 0xD000000000000015, 0x80000001DB2D6880);
  v1 = MEMORY[0x1E69E7CC0];
  sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

  Statement.scalar(_:)(v1, &v4);

  if (*(&v5 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F28, &unk_1DB2BD520);
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1DB145A68(&v4);
    return 0;
  }
}

void Connection.key(_:db:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v8 = sub_1DB2BAF34();
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  sub_1DB2BAE24();
  sqlite3_activate_see();
  v9 = *(v6 + 16);
  os_unfair_lock_lock(v9 + 6);
  if (v8 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v8 > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
    return;
  }

  if (a4)
  {
    sub_1DB2BAE24();
  }

  v10 = sqlite3_key_v2();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock(v9 + 6);

  v11 = sub_1DB252CB8(v10, v6, 0);
  if (v13 <= 0xFFFFFFFEFFFFFFFFLL)
  {
    v17 = v11;
    v18 = v12;
    v19 = v13;
    v20 = v14;
    sub_1DB1365E0();
    v21 = swift_allocError();
    *v22 = v17;
    v22[1] = v18;
    v22[2] = v19;
    v22[3] = v20;
    sub_1DB1434F4(v17, v18, v19, v20);
    sub_1DB15B294(v21);
    MEMORY[0x1E1284A10](v21);
    swift_allocError();
    *v23 = v17;
    v23[1] = v18;
    v23[2] = v19;
    v23[3] = v20;
    swift_willThrow();
  }

  else
  {
    type metadata accessor for Statement();
    swift_allocObject();

    sub_1DB253534(v15, 0xD000000000000023, 0x80000001DB2D68A0);
    if (!v5)
    {
      v16 = MEMORY[0x1E69E7CC0];
      sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

      Statement.scalar(_:)(v16, v24);

      sub_1DB145A68(v24);
    }
  }
}

void Connection.key(_:db:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v7 = *(*a1 + 16);
  sqlite3_activate_see();
  v8 = *(v5 + 16);
  os_unfair_lock_lock(v8 + 6);
  if (v7 >> 31)
  {
    __break(1u);
  }

  else
  {
    if (a3)
    {
      sub_1DB2BAE24();
    }

    v9 = sqlite3_key_v2();
    swift_unknownObjectRelease();
    os_unfair_lock_unlock(v8 + 6);

    v10 = sub_1DB252CB8(v9, v5, 0);
    if (v12 <= 0xFFFFFFFEFFFFFFFFLL)
    {
      v16 = v10;
      v17 = v11;
      v18 = v12;
      v19 = v13;
      sub_1DB1365E0();
      v20 = swift_allocError();
      *v21 = v16;
      v21[1] = v17;
      v21[2] = v18;
      v21[3] = v19;
      sub_1DB1434F4(v16, v17, v18, v19);
      sub_1DB15B294(v20);
      MEMORY[0x1E1284A10](v20);
      swift_allocError();
      *v22 = v16;
      v22[1] = v17;
      v22[2] = v18;
      v22[3] = v19;
      swift_willThrow();
    }

    else
    {
      type metadata accessor for Statement();
      swift_allocObject();

      sub_1DB253534(v14, 0xD000000000000023, 0x80000001DB2D68A0);
      if (!v4)
      {
        v15 = MEMORY[0x1E69E7CC0];
        sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

        Statement.scalar(_:)(v15, v23);

        sub_1DB145A68(v23);
      }
    }
  }
}

void sub_1DB257708(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  if (!a1)
  {
    sub_1DB135B68();
    swift_allocError();
    *v12 = 0xD000000000000025;
    *(v12 + 8) = 0x80000001DB2D68F0;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *(v12 + 48) = 0;
LABEL_11:
    swift_willThrow();
    return;
  }

  v10 = a2 - a1;
  sqlite3_activate_see();
  v11 = *(a5 + 16);
  os_unfair_lock_lock(v11 + 6);
  if (v10 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v10 > 0x7FFFFFFF)
  {
LABEL_14:
    __break(1u);
    return;
  }

  if (a4)
  {
    sub_1DB2BAE24();
  }

  v13 = sqlite3_key_v2();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock(v11 + 6);

  v14 = sub_1DB252CB8(v13, a5, 0);
  if (v16 <= 0xFFFFFFFEFFFFFFFFLL)
  {
    v20 = v14;
    v21 = v15;
    v22 = v16;
    v23 = v17;
    sub_1DB1365E0();
    v24 = swift_allocError();
    *v25 = v20;
    v25[1] = v21;
    v25[2] = v22;
    v25[3] = v23;
    sub_1DB1434F4(v20, v21, v22, v23);
    sub_1DB15B294(v24);
    MEMORY[0x1E1284A10](v24);
    swift_allocError();
    *v26 = v20;
    v26[1] = v21;
    v26[2] = v22;
    v26[3] = v23;
    goto LABEL_11;
  }

  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v18, 0xD000000000000023, 0x80000001DB2D68A0);
  if (!v6)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

    Statement.scalar(_:)(v19, v27);

    sub_1DB145A68(v27);
    *a6 = a5;
  }
}

uint64_t Connection.keyAndMigrate(_:db:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    v7 = sub_1DB2BAF34();
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v8 = sub_1DB2BAE24();
  sub_1DB258078(a3, a4, v8 + 32, v7, 1);
  v10 = v9;
  if (!v4)
  {
  }

  return v10;
}

void Connection.keyAndMigrate(_:db:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DB258078(a2, a3, *a1 + 32, *(*a1 + 16), 1);
  if (!v3)
  {
  }
}

void sub_1DB257AB4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  if (a1)
  {
    sub_1DB258078(a3, a4, a1, a2 - a1, 1);
    if (!v5)
    {
      *a5 = v7;
    }
  }

  else
  {
    sub_1DB135B68();
    swift_allocError();
    *v8 = 0xD000000000000025;
    *(v8 + 8) = 0x80000001DB2D68F0;
    *(v8 + 16) = 0u;
    *(v8 + 32) = 0u;
    *(v8 + 48) = 0;
    swift_willThrow();
  }
}

uint64_t Connection.rekey(_:db:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    v7 = sub_1DB2BAF34();
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v8 = sub_1DB2BAE24();
  sub_1DB2584A4(a3, a4, v8 + 32, v7);
  v10 = v9;
  if (!v4)
  {
  }

  return v10;
}

void Connection.rekey(_:db:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DB2584A4(a2, a3, *a1 + 32, *(*a1 + 16));
  if (!v3)
  {
  }
}

void *sub_1DB257C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_1DB2BA7A4();
  if (!v6)
  {
    return v8;
  }

  return result;
}

void sub_1DB257CF0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  if (a1)
  {
    sub_1DB2584A4(a3, a4, a1, a2 - a1);
    if (!v5)
    {
      *a5 = v7;
    }
  }

  else
  {
    sub_1DB135B68();
    swift_allocError();
    *v8 = 0xD000000000000025;
    *(v8 + 8) = 0x80000001DB2D68F0;
    *(v8 + 16) = 0u;
    *(v8 + 32) = 0u;
    *(v8 + 48) = 0;
    swift_willThrow();
  }
}

uint64_t Connection.cipherExport(_:key:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 2);
  v16 = *a1;
  v17 = v5;
  Connection.attach(_:as:key:)(&v16, 0x655F726568706963, 0xED000074726F7078, a2, a3);
  if (!v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    inited = swift_initStackObject();
    strcpy((inited + 32), "cipher_export");
    v7 = MEMORY[0x1E69E6158];
    *(inited + 16) = xmmword_1DB2BCC40;
    *(inited + 56) = v7;
    *(inited + 64) = &protocol witness table for String;
    *(inited + 46) = -4864;
    type metadata accessor for Statement();
    swift_allocObject();

    sub_1DB253534(v8, 0xD00000000000001ALL, 0x80000001DB2D68D0);
    v18 = 0;
    v9 = MEMORY[0x1E69E6158];
    sub_1DB255E8C(inited);

    v10 = v18;
    Statement.run(_:)(MEMORY[0x1E69E7CC0]);
    v18 = v10;
    if (v10)
    {
LABEL_5:

      return v3;
    }

    swift_setDeallocating();
    sub_1DB145A68(inited + 32);
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_1DB2BCC40;
    strcpy((v12 + 32), "cipher_export");
    *(v12 + 56) = v9;
    *(v12 + 64) = &protocol witness table for String;
    *(v12 + 46) = -4864;
    swift_allocObject();

    v14 = v18;
    sub_1DB253534(v13, 0xD000000000000011, 0x80000001DB2D1A00);
    v18 = v14;
    if (!v14)
    {
      sub_1DB255E8C(v12);

      v15 = v18;
      Statement.run(_:)(MEMORY[0x1E69E7CC0]);
      v18 = v15;
      if (!v15)
      {

        swift_setDeallocating();
        sub_1DB145A68(v12 + 32);

        return v3;
      }

      goto LABEL_5;
    }
  }

  return v3;
}

void sub_1DB258078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = v5;
  sqlite3_activate_see();
  v11 = *(v7 + 16);
  os_unfair_lock_lock(v11 + 6);
  if (a4 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (a4 > 0x7FFFFFFF)
  {
LABEL_23:
    __break(1u);
    return;
  }

  if (a2)
  {
    sub_1DB2BAE24();
  }

  v12 = sqlite3_key_v2();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock(v11 + 6);

  v13 = sub_1DB252CB8(v12, v7, 0);
  if (v15 <= 0xFFFFFFFEFFFFFFFFLL)
  {
    v19 = v13;
    v20 = v14;
    v21 = v15;
    v22 = v16;
    sub_1DB1365E0();
    v23 = swift_allocError();
    *v24 = v19;
    v24[1] = v20;
    v24[2] = v21;
    v24[3] = v22;
    sub_1DB136634(v19, v20, v21, v22);
    sub_1DB15B294(v23);
    MEMORY[0x1E1284A10](v23);
    swift_allocError();
    *v25 = v19;
    v25[1] = v20;
    v25[2] = v21;
    v25[3] = v22;
    swift_willThrow();
    return;
  }

  if ((a5 & 1) == 0)
  {
    goto LABEL_18;
  }

  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v17, 0xD000000000000016, 0x80000001DB2D6920);
  if (v6)
  {
    return;
  }

  v18 = MEMORY[0x1E69E7CC0];
  sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

  Statement.scalar(_:)(v18, v38);

  sub_1DB1609EC(v38, &v35);
  if (!v37)
  {
    sub_1DB145A68(&v35);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F28, &unk_1DB2BD520);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_1DB2BB4F4();

    v35 = 0xD000000000000022;
    v36 = 0x80000001DB2D6940;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
    v26 = sub_1DB2BB354();
    MEMORY[0x1E1283490](v26);

    v27 = v35;
    v28 = v36;
    sub_1DB1365E0();
    swift_allocError();
    *v29 = v27;
    *(v29 + 8) = v28;
    *(v29 + 16) = xmmword_1DB2C77D0;
    swift_willThrow();
    goto LABEL_20;
  }

  if (v33 != 48 || v34 != 0xE100000000000000)
  {
    v30 = sub_1DB2BB924();

    if (v30)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

LABEL_17:
  sub_1DB145A68(v38);
LABEL_18:
  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v31, 0xD000000000000023, 0x80000001DB2D68A0);
  if (v6)
  {
    return;
  }

  v32 = MEMORY[0x1E69E7CC0];
  sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

  Statement.scalar(_:)(v32, v38);

LABEL_20:
  sub_1DB145A68(v38);
}

void sub_1DB2584A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  os_unfair_lock_lock(v7 + 6);
  if (a4 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a4 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (a2)
  {
    sub_1DB2BAE24();
  }

  v8 = sqlite3_rekey_v2();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock(v7 + 6);

  v9 = sub_1DB252CB8(v8, v4, 0);
  if (v11 < 0xFFFFFFFF00000000)
  {
    v13 = v9;
    v14 = v10;
    v15 = v11;
    v16 = v12;
    sub_1DB1365E0();
    v17 = swift_allocError();
    *v18 = v13;
    v18[1] = v14;
    v18[2] = v15;
    v18[3] = v16;
    sub_1DB136634(v13, v14, v15, v16);
    sub_1DB15B294(v17);
    MEMORY[0x1E1284A10](v17);
    swift_allocError();
    *v19 = v13;
    v19[1] = v14;
    v19[2] = v15;
    v19[3] = v16;
    swift_willThrow();
  }
}

uint64_t sub_1DB258638(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  sub_1DB138470(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_1DB2BB464();
  v6 = result;
  v7 = 0;
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 36);
    v10 = (*(a1 + 48) + 16 * v6);
    v11 = v10[1];
    v24 = *v10;
    v12 = *(v25 + 16);
    v13 = *(v25 + 24);

    if (v12 >= v13 >> 1)
    {
      result = sub_1DB138470((v13 > 1), v12 + 1, 1);
    }

    *(v25 + 16) = v12 + 1;
    v14 = v25 + 16 * v12;
    *(v14 + 32) = v24;
    *(v14 + 40) = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v15 = *(a1 + 56 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1DB25CF78(v6, v23, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_1DB25CF78(v6, v23, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t static Module.FTS4(_:_:)@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BCC40;
  sub_1DB164980(a1, inited + 32);

  sub_1DB1414E8(v6);
  type metadata accessor for FTS4Config();
  v7 = swift_initStackObject();
  *(v7 + 104) = 0u;
  *(v7 + 120) = 0u;
  *(v7 + 136) = 0u;
  *(v7 + 152) = 513;
  v8 = MEMORY[0x1E69E7CC0];
  *(v7 + 16) = MEMORY[0x1E69E7CC0];
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = v8;
  *(v7 + 56) = 0u;
  *(v7 + 72) = 0u;
  *(v7 + 81) = 0u;
  v9 = sub_1DB25CA00(inited);

  v10 = v9[3];
  v11 = v9[4];
  v12 = v9[5];
  v9[4] = 0;
  v9[5] = 0;
  v9[3] = 0;
  sub_1DB1718E4(v10, v11, v12);
  v13 = sub_1DB25B130();

  *a3 = 879981670;
  a3[1] = 0xE400000000000000;
  a3[2] = v13;
  return result;
}

uint64_t static Module.FTS4(_:tokenize:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  type metadata accessor for FTS4Config();
  inited = swift_initStackObject();
  *(inited + 104) = 0u;
  *(inited + 120) = 0u;
  *(inited + 136) = 0u;
  *(inited + 152) = 513;
  v9 = MEMORY[0x1E69E7CC0];
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  *(inited + 24) = 0;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = v9;
  *(inited + 56) = 0u;
  *(inited + 72) = 0u;
  *(inited + 81) = 0u;
  v10 = sub_1DB25CA00(a1);

  v11 = v10[3];
  v12 = v10[4];
  v13 = v10[5];
  v10[3] = v5;
  v10[4] = v6;
  v10[5] = v7;
  sub_1DB1757B0(v5, v6, v7);
  sub_1DB1718E4(v11, v12, v13);
  v14 = sub_1DB25B130();

  *a3 = 879981670;
  a3[1] = 0xE400000000000000;
  a3[2] = v14;
  return result;
}

double FTS4Config.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 513;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = v2;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 81) = 0u;
  return result;
}

uint64_t static Module.FTS4(_:)@<X0>(void *a1@<X8>)
{
  result = sub_1DB25B130();
  *a1 = 879981670;
  a1[1] = 0xE400000000000000;
  a1[2] = result;
  return result;
}

uint64_t VirtualTable.match(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = v3[9];
  v24 = v3[8];
  v25 = v7;
  v26 = v3[10];
  v27 = *(v3 + 22);
  v8 = v3[5];
  v20 = v3[4];
  v21 = v8;
  v9 = v3[7];
  v22 = v3[6];
  v23 = v9;
  v10 = v3[1];
  v16 = *v3;
  v17 = v10;
  v11 = v3[3];
  v18 = v3[2];
  v19 = v11;
  sub_1DB258C78(0, v15);
  v14[3] = MEMORY[0x1E69E6158];
  v14[4] = &protocol witness table for String;
  v14[0] = a1;
  v14[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v15, inited + 32);
  sub_1DB164980(v14, inited + 72);

  sub_1DB2B57D4(inited, 1, 0x484354414DLL, 0xE500000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v15);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

{
  v7 = v3[9];
  v29 = v3[8];
  v30 = v7;
  v31 = v3[10];
  v32 = *(v3 + 22);
  v8 = v3[5];
  v25 = v3[4];
  v26 = v8;
  v9 = v3[7];
  v27 = v3[6];
  v28 = v9;
  v10 = v3[1];
  v21 = *v3;
  v22 = v10;
  v11 = v3[3];
  v23 = v3[2];
  v24 = v11;
  sub_1DB258C78(0, v19);
  v18[3] = MEMORY[0x1E69E6158];
  v18[4] = &protocol witness table for String;
  v18[0] = a1;
  v18[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v19, inited + 32);
  sub_1DB164980(v18, inited + 72);

  sub_1DB2B57D4(inited, 1, 0x484354414DLL, 0xE500000000000000, v20);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v19);
  __swift_destroy_boxed_opaque_existential_1(v18);
  v13 = v20[0];
  v14 = v20[1];
  v15 = v20[2];
  a3[3] = &type metadata for VirtualTable;
  a3[4] = sub_1DB25CB30();
  v16 = swift_allocObject();
  *a3 = v16;

  sub_1DB259694(v13, v14, v15, v16 + 16);
  swift_bridgeObjectRelease_n();
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1DB258C78@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v5 = v2[2];
  v4 = v2[3];
  v7 = v2[5];
  v6 = v2[6];
  v8 = v2[7];
  if (v7)
  {
    if (a1)
    {
      v30 = v2[4];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DB2BD590;
      v10 = sub_1DB2B995C(34, 0xE100000000000000, v5, v4);
      v29 = v11;
      v12 = MEMORY[0x1E69E7CC0];
      if (v8)
      {
        v13 = swift_initStackObject();
        *(v13 + 16) = xmmword_1DB2BD5A0;
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
        *(v13 + 56) = v14;
        v15 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
        *(v13 + 64) = v15;
        *(v13 + 32) = sub_1DB2B995C(34, 0xE100000000000000, v6, v8);
        *(v13 + 40) = v16;
        *(v13 + 48) = MEMORY[0x1E69E7CC0];
        *(v13 + 96) = v14;
        *(v13 + 104) = v15;
        *(v13 + 72) = v10;
        *(v13 + 80) = v29;
        v12 = MEMORY[0x1E69E7CC0];
        *(v13 + 88) = MEMORY[0x1E69E7CC0];
        sub_1DB2B9A70(v13, (inited + 32));
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
        swift_arrayDestroy();
      }

      else
      {
        *(inited + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
        *(inited + 64) = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
        *(inited + 32) = v10;
        *(inited + 40) = v29;
        *(inited + 48) = v12;
      }

      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
      *(inited + 96) = v26;
      v27 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
      *(inited + 104) = v27;
      *(inited + 72) = 21313;
      *(inited + 80) = 0xE200000000000000;
      *(inited + 88) = v12;
      *(inited + 136) = v26;
      *(inited + 144) = v27;
      *(inited + 112) = sub_1DB2B995C(34, 0xE100000000000000, v30, v7);
      *(inited + 120) = v28;
      *(inited + 128) = v12;
      sub_1DB2B9A70(inited, a2);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
      return swift_arrayDestroy();
    }

    v5 = v2[4];
    v4 = v2[5];
  }

  else
  {
  }

  v17 = sub_1DB2B995C(34, 0xE100000000000000, v5, v4);
  v19 = v18;

  if (!v8)
  {
    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    result = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
    a2[4] = result;
    *a2 = v17;
    a2[1] = v19;
    a2[2] = MEMORY[0x1E69E7CC0];
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1DB2BD5A0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(v20 + 56) = v21;
  v22 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  *(v20 + 64) = v22;
  *(v20 + 32) = sub_1DB2B995C(34, 0xE100000000000000, v6, v8);
  v23 = MEMORY[0x1E69E7CC0];
  *(v20 + 40) = v24;
  *(v20 + 48) = v23;
  *(v20 + 96) = v21;
  *(v20 + 104) = v22;
  *(v20 + 72) = v17;
  *(v20 + 80) = v19;
  *(v20 + 88) = v23;
  sub_1DB2B9A70(v20, a2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  return swift_arrayDestroy();
}

uint64_t VirtualTable.match(_:)(uint64_t *a1)
{
  return sub_1DB25913C(a1, &qword_1ECC280D8, &unk_1DB2C4B30, qword_1EE1400C0, sub_1DB2B57D4);
}

{
  return sub_1DB25913C(a1, &qword_1ECC280E0, &unk_1DB2CE7A0, &qword_1EE13EF70, sub_1DB2B594C);
}

uint64_t sub_1DB25913C(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, void (*a5)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  v11 = *a1;
  v10 = a1[1];
  v12 = a1[2];
  v13 = v5[9];
  v30 = v5[8];
  v31 = v13;
  v32 = v5[10];
  v33 = *(v5 + 22);
  v14 = v5[5];
  v26 = v5[4];
  v27 = v14;
  v15 = v5[7];
  v28 = v5[6];
  v29 = v15;
  v16 = v5[1];
  v22 = *v5;
  v23 = v16;
  v17 = v5[3];
  v24 = v5[2];
  v25 = v17;
  sub_1DB258C78(0, v21);
  v20[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v20[0] = v11;
  v20[1] = v10;
  v20[4] = sub_1DB1688F0(a4, a2, a3, &protocol conformance descriptor for Expression<A>);
  v20[2] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v21, inited + 32);
  sub_1DB164980(v20, inited + 72);

  a5(inited, 1, 0x484354414DLL, 0xE500000000000000);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v21);
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t VirtualTable.match(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = v2[9];
  v28 = v2[8];
  v29 = v5;
  v30 = v2[10];
  v31 = *(v2 + 22);
  v6 = v2[5];
  v24 = v2[4];
  v25 = v6;
  v7 = v2[7];
  v26 = v2[6];
  v27 = v7;
  v8 = v2[1];
  v20 = *v2;
  v21 = v8;
  v9 = v2[3];
  v22 = v2[2];
  v23 = v9;
  v15 = v4;
  v16 = *(a1 + 1);
  VirtualTable.match(_:)(&v15);
  v10 = v17;
  v11 = v18;
  v12 = v19;
  a2[3] = &type metadata for VirtualTable;
  a2[4] = sub_1DB25CB30();
  v13 = swift_allocObject();
  *a2 = v13;

  sub_1DB259694(v10, v11, v12, v13 + 16);
  swift_bridgeObjectRelease_n();
  return swift_bridgeObjectRelease_n();
}

{
  v4 = *a1;
  v5 = v2[9];
  v28 = v2[8];
  v29 = v5;
  v30 = v2[10];
  v31 = *(v2 + 22);
  v6 = v2[5];
  v24 = v2[4];
  v25 = v6;
  v7 = v2[7];
  v26 = v2[6];
  v27 = v7;
  v8 = v2[1];
  v20 = *v2;
  v21 = v8;
  v9 = v2[3];
  v22 = v2[2];
  v23 = v9;
  v15 = v4;
  v16 = *(a1 + 1);
  VirtualTable.match(_:)(&v15);
  v10 = v17;
  v11 = v18;
  v12 = v19;
  a2[3] = &type metadata for VirtualTable;
  a2[4] = sub_1DB25CB30();
  v13 = swift_allocObject();
  *a2 = v13;
  sub_1DB259694(v10, v11, v12, v13 + 16);
}

double sub_1DB259694@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(v4 + 48);
  v38 = *(v4 + 32);
  v39 = v9;
  v10 = *(v4 + 72);
  v40 = *(v4 + 64);
  v11 = *(v4 + 16);
  v36 = *v4;
  v37 = v11;
  v13 = *(v4 + 80);
  v12 = *(v4 + 88);
  v14 = *(v4 + 112);
  v30 = *(v4 + 96);
  v31 = v14;
  v15 = *(v4 + 128);
  v16 = *(v4 + 144);
  v17 = *(v4 + 160);
  v35 = *(v4 + 176);
  v33 = v16;
  v34 = v17;
  v32 = v15;
  if (v13)
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
    v26[0] = v10;
    v26[1] = v13;
    v28 = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0, &protocol conformance descriptor for Expression<A>);
    v26[2] = v12;
    v25[3] = v27;
    v25[4] = v28;
    v25[0] = a1;
    v25[1] = a2;
    v25[2] = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BD5A0;
    sub_1DB164980(v26, inited + 32);
    sub_1DB164980(v25, inited + 72);
    sub_1DB1757F4(v4, v29);
    sub_1DB1757B0(v10, v13, v12);

    sub_1DB2B594C(inited, 1, 4476481, 0xE300000000000000, v29);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    __swift_destroy_boxed_opaque_existential_1(v25);
    __swift_destroy_boxed_opaque_existential_1(v26);
    a1 = v29[0];
    a2 = v29[1];
    a3 = v29[2];
  }

  else
  {
    sub_1DB1757F4(v4, v29);
  }

  sub_1DB1718E4(v10, v13, v12);
  v19 = v39;
  *(a4 + 32) = v38;
  *(a4 + 48) = v19;
  v20 = v40;
  v21 = v37;
  *a4 = v36;
  *(a4 + 16) = v21;
  *(a4 + 64) = v20;
  *(a4 + 72) = a1;
  *(a4 + 80) = a2;
  *(a4 + 88) = a3;
  v22 = v33;
  *(a4 + 128) = v32;
  *(a4 + 144) = v22;
  *(a4 + 160) = v34;
  *(a4 + 176) = v35;
  result = *&v30;
  v24 = v31;
  *(a4 + 96) = v30;
  *(a4 + 112) = v24;
  return result;
}

void sub_1DB2598D0()
{
  qword_1ECC28CA0 = 0x656C706D6973;
  *algn_1ECC28CA8 = 0xE600000000000000;
  qword_1ECC28CB0 = MEMORY[0x1E69E7CC0];
}

uint64_t static Tokenizer.Simple.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ECC26C08 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *algn_1ECC28CA8;
  v2 = qword_1ECC28CB0;
  *a1 = qword_1ECC28CA0;
  a1[1] = v1;
  a1[2] = v2;
}

void sub_1DB259980()
{
  qword_1ECC28CB8 = 0x726574726F70;
  unk_1ECC28CC0 = 0xE600000000000000;
  qword_1ECC28CC8 = MEMORY[0x1E69E7CC0];
}

uint64_t static Tokenizer.Porter.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ECC26C10 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = unk_1ECC28CC0;
  v2 = qword_1ECC28CC8;
  *a1 = qword_1ECC28CB8;
  a1[1] = v1;
  a1[2] = v2;
}

char *static Tokenizer.Unicode61(removeDiacritics:tokenchars:separators:)@<X0>(char *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (result == 2)
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1DB2BB4F4();

    v8 = sub_1DB2BB8F4();
    MEMORY[0x1E1283490](v8);

    v9 = sub_1DB2B995C(34, 0xE100000000000000, 0xD000000000000012, 0x80000001DB2D6970);
    v11 = v10;

    result = sub_1DB1572F0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v7 = result;
    v13 = *(result + 2);
    v12 = *(result + 3);
    if (v13 >= v12 >> 1)
    {
      result = sub_1DB1572F0((v12 > 1), v13 + 1, 1, result);
      v7 = result;
    }

    *(v7 + 2) = v13 + 1;
    v14 = &v7[16 * v13];
    *(v14 + 4) = v9;
    *(v14 + 5) = v11;
  }

  if (!*(a2 + 16))
  {
    if (!*(a3 + 16))
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  sub_1DB258638(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
  sub_1DB1688F0(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60, MEMORY[0x1E69E6310]);
  v15 = sub_1DB2BAD24();
  v17 = v16;

  MEMORY[0x1E1283490](v15, v17);

  v18 = sub_1DB2B995C(34, 0xE100000000000000, 0x6168636E656B6F74, 0xEB000000003D7372);
  v20 = v19;

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DB1572F0(0, *(v7 + 2) + 1, 1, v7);
    v7 = result;
  }

  v22 = *(v7 + 2);
  v21 = *(v7 + 3);
  if (v22 >= v21 >> 1)
  {
    result = sub_1DB1572F0((v21 > 1), v22 + 1, 1, v7);
    v7 = result;
  }

  *(v7 + 2) = v22 + 1;
  v23 = &v7[16 * v22];
  *(v23 + 4) = v18;
  *(v23 + 5) = v20;
  if (*(a3 + 16))
  {
LABEL_14:
    sub_1DB258638(a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
    sub_1DB1688F0(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60, MEMORY[0x1E69E6310]);
    v24 = sub_1DB2BAD24();
    v26 = v25;

    MEMORY[0x1E1283490](v24, v26);

    v27 = sub_1DB2B995C(34, 0xE100000000000000, 0x6F74617261706573, 0xEB000000003D7372);
    v29 = v28;

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1DB1572F0(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v31 = *(v7 + 2);
    v30 = *(v7 + 3);
    if (v31 >= v30 >> 1)
    {
      result = sub_1DB1572F0((v30 > 1), v31 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v31 + 1;
    v32 = &v7[16 * v31];
    *(v32 + 4) = v27;
    *(v32 + 5) = v29;
  }

LABEL_19:
  *a4 = 0x3665646F63696E75;
  a4[1] = 0xE900000000000031;
  a4[2] = v7;
  return result;
}

uint64_t static Tokenizer.Trigram(caseSensitive:)@<X0>(char a1@<W0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D70, "̢");
  result = swift_allocObject();
  *(result + 16) = xmmword_1DB2BD5A0;
  strcpy((result + 32), "case_sensitive");
  *(result + 47) = -18;
  v5 = 48;
  if (a1)
  {
    v5 = 49;
  }

  *(result + 48) = v5;
  *(result + 56) = 0xE100000000000000;
  *a2 = 0x6D617267697274;
  a2[1] = 0xE700000000000000;
  a2[2] = result;
  return result;
}

uint64_t static Tokenizer.Custom(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1DB2B995C(34, 0xE100000000000000, 0x732E6574694C5153, 0xEC00000074666977);
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D70, "̢");
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DB2BCC40;
  result = sub_1DB2B995C(34, 0xE100000000000000, a1, a2);
  *(v9 + 32) = result;
  *(v9 + 40) = v11;
  *a3 = v6;
  a3[1] = v8;
  a3[2] = v9;
  return result;
}

uint64_t Tokenizer.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Tokenizer.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D70, "̢");
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DB2BCC40;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  sub_1DB1413F4(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
  sub_1DB1688F0(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60, MEMORY[0x1E69E6310]);
  v5 = sub_1DB2BAD24();

  return v5;
}

uint64_t FTSConfig.ColumnOption.hashValue.getter()
{
  sub_1DB2BBA04();
  MEMORY[0x1E1283FC0](0);
  return sub_1DB2BBA54();
}

uint64_t sub_1DB25A150(uint64_t a1, uint64_t a2)
{
  sub_1DB164980(a1, v12);
  *(&v13 + 1) = a2;
  swift_beginAccess();
  v4 = *(v2 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1DB157D60(0, v4[2] + 1, 1, v4);
    *(v2 + 16) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1DB157D60((v6 > 1), v7 + 1, 1, v4);
  }

  v4[2] = v7 + 1;
  v8 = &v4[6 * v7];
  v9 = v12[0];
  v10 = v13;
  v8[3] = v12[1];
  v8[4] = v10;
  v8[2] = v9;
  *(v2 + 16) = v4;
  swift_endAccess();
}

uint64_t sub_1DB25A240(uint64_t a1)
{
  sub_1DB25CA00(a1);
}

uint64_t sub_1DB25A268(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v1[3] = *a1;
  v1[4] = v2;
  v1[5] = v4;
  sub_1DB1757B0(v3, v2, v4);
  sub_1DB1718E4(v5, v6, v7);
}

uint64_t sub_1DB25A2D0(uint64_t a1)
{

  sub_1DB141858(v1);
}

uint64_t sub_1DB25A310(uint64_t a1)
{
  sub_1DB164980(a1, v3);
  swift_beginAccess();
  sub_1DB25CB84(v3, v1 + 56);
  swift_endAccess();
}

uint64_t sub_1DB25A374()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v23 = MEMORY[0x1E69E7CC0];

    sub_1DB1384B0(0, v2, 0);
    v3 = v23;
    v4 = v1 + 32;
    do
    {
      sub_1DB1446A4(v4, v19, &qword_1ECC26DD8, &qword_1DB2BCF40);
      sub_1DB1446A4(v19, v17, &qword_1ECC26DD8, &qword_1DB2BCF40);
      v5 = v18;
      sub_1DB1355D0(v17, v15);
      v16 = v5;
      sub_1DB164980(v15, v20);
      sub_1DB1445E0(v15, &qword_1ECC26DD8, &qword_1DB2BCF40);
      sub_1DB1445E0(v19, &qword_1ECC26DD8, &qword_1DB2BCF40);
      v23 = v3;
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1DB1384B0((v6 > 1), v7 + 1, 1);
      }

      v8 = v21;
      v9 = v22;
      v10 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
      MEMORY[0x1EEE9AC00](v10);
      v12 = &v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v13 + 16))(v12);
      sub_1DB16412C(v7, v12, &v23, v8, v9);
      __swift_destroy_boxed_opaque_existential_1(v20);
      v3 = v23;
      v4 += 48;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_1DB25A590()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC0];
  v42 = MEMORY[0x1E69E7CC0];
  v3 = (*(*v0 + 36))();
  sub_1DB1414E8(v3);
  v4 = v0[4];
  if (v4)
  {
    v5 = v0[5];
    v6 = v0[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D70, "̢");
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1DB2BCC40;
    *(v7 + 32) = v6;
    *(v7 + 40) = v4;
    v39[0] = v7;

    sub_1DB1757B0(v6, v4, v5);
    sub_1DB1413F4(v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
    sub_1DB1688F0(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60, MEMORY[0x1E69E6310]);
    v8 = sub_1DB2BAD24();
    v10 = v9;
    sub_1DB1718E4(v6, v4, v5);

    sub_1DB25C1AC(0x657A696E656B6F74, 0xE800000000000000, v8, v10, MEMORY[0x1E69E7CC0], &v42);
  }

  v39[0] = v1[6];
  swift_bridgeObjectRetain_n();
  sub_1DB25B820(v39);

  v11 = v39[0];
  v12 = *(v39[0] + 2);
  if (v12)
  {
    v39[0] = v2;
    sub_1DB138470(0, v12, 0);
    v13 = 32;
    v14 = v39[0];
    do
    {
      *&v36 = *&v11[v13];
      v15 = sub_1DB2BB8F4();
      v39[0] = v14;
      v18 = *(v14 + 2);
      v17 = *(v14 + 3);
      if (v18 >= v17 >> 1)
      {
        v35 = v15;
        v20 = v16;
        sub_1DB138470((v17 > 1), v18 + 1, 1);
        v16 = v20;
        v15 = v35;
        v14 = v39[0];
      }

      *(v14 + 2) = v18 + 1;
      v19 = &v14[16 * v18];
      *(v19 + 4) = v15;
      *(v19 + 5) = v16;
      v13 += 8;
      --v12;
    }

    while (v12);
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  if (*(v14 + 2))
  {
    v39[0] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
    sub_1DB1688F0(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60, MEMORY[0x1E69E6310]);
    v21 = sub_1DB2BAD24();
    v23 = v22;

    v24 = sub_1DB2B995C(34, 0xE100000000000000, v21, v23);
    v26 = v25;

    sub_1DB25C488(0x786966657270, 0xE600000000000000, v24, v26, MEMORY[0x1E69E7CC0], &v42, &qword_1ECC280D8, &unk_1DB2C4B30, qword_1EE1400C0);
  }

  if (*(v1 + 96) == 1)
  {
    v27 = sub_1DB2B995C(34, 0xE100000000000000, 0, 0xE000000000000000);
    sub_1DB25C488(0x746E65746E6F63, 0xE700000000000000, v27, v28, MEMORY[0x1E69E7CC0], &v42, &qword_1ECC280D8, &unk_1DB2C4B30, qword_1EE1400C0);
  }

  else
  {
    swift_beginAccess();
    sub_1DB1446A4((v1 + 7), &v36, &qword_1ECC28CD8, &qword_1DB2CCA00);
    if (v37)
    {
      sub_1DB1355D0(&v36, v39);
      v29 = v40;
      v30 = v41;
      __swift_project_boxed_opaque_existential_1(v39, v40);
      sub_1DB288D3C(0, v29, *(v30 + 8), &v36);
      v31 = v37;
      v32 = v38;
      v33 = __swift_project_boxed_opaque_existential_1(&v36, v37);
      sub_1DB25C754(0x746E65746E6F63, 0xE700000000000000, v33, &v42, v31, v32);

      __swift_destroy_boxed_opaque_existential_1(&v36);
      __swift_destroy_boxed_opaque_existential_1(v39);
    }

    else
    {
      sub_1DB1445E0(&v36, &qword_1ECC28CD8, &qword_1DB2CCA00);
    }
  }

  return v42;
}

uint64_t *FTSConfig.deinit()
{

  sub_1DB1718E4(v0[3], v0[4], v0[5]);

  sub_1DB1445E0((v0 + 7), &qword_1ECC28CD8, &qword_1DB2CCA00);
  return v0;
}

uint64_t FTSConfig.__deallocating_deinit()
{

  sub_1DB1718E4(v0[3], v0[4], v0[5]);

  sub_1DB1445E0((v0 + 7), &qword_1ECC28CD8, &qword_1DB2CCA00);

  return swift_deallocClassInstance();
}

uint64_t FTS4Config.MatchInfo.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1DB2BB6F4();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1DB25ABF4()
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();
  return sub_1DB2BBA54();
}

uint64_t sub_1DB25AC50(uint64_t a1)
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();
  return sub_1DB2BBA54();
}

uint64_t sub_1DB25AC98@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1DB2BB6F4();

  *a2 = v3 != 0;
  return result;
}

OnDeviceStorageCore::FTS4Config::Order_optional __swiftcall FTS4Config.Order.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB2BB6F4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t FTS4Config.Order.rawValue.getter()
{
  if (*v0)
  {
    return 1668506980;
  }

  else
  {
    return 6517601;
  }
}

uint64_t sub_1DB25AD90(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1668506980;
  }

  else
  {
    v3 = 6517601;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1668506980;
  }

  else
  {
    v5 = 6517601;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DB2BB924();
  }

  return v8 & 1;
}

uint64_t sub_1DB25AE28()
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB25AE9C(uint64_t a1)
{
  sub_1DB2BAE84();
}

uint64_t sub_1DB25AEFC(uint64_t a1)
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB25AF6C@<X0>(char *a2@<X8>)
{
  v3 = sub_1DB2BB6F4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1DB25AFCC(uint64_t *a1@<X8>)
{
  v2 = 6517601;
  if (*v1)
  {
    v2 = 1668506980;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

double FTS4Config.init()()
{
  result = 0.0;
  *(v0 + 136) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 152) = 513;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = v2;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 81) = 0u;
  return result;
}

uint64_t sub_1DB25B03C(uint64_t a1, uint64_t a2)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
}

uint64_t sub_1DB25B084(uint64_t a1, uint64_t a2)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
}

uint64_t sub_1DB25B0CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
}

uint64_t sub_1DB25B130()
{
  v48[0] = sub_1DB25A590();
  swift_beginAccess();
  v40 = v0;
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);

  if (v2)
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    v6 = v1 + 32;
    while (v4 < *(v1 + 16))
    {
      sub_1DB1446A4(v6, &v44, &qword_1ECC26DD8, &qword_1DB2BCF40);
      if (*(*(&v46 + 1) + 16))
      {
        i = v44;
        v42 = v45;
        v43 = v46;
        result = swift_isUniquelyReferenced_nonNull_native();
        v47 = v5;
        if ((result & 1) == 0)
        {
          result = sub_1DB138760(0, *(v5 + 16) + 1, 1);
          v5 = v47;
        }

        v8 = *(v5 + 16);
        v7 = *(v5 + 24);
        if (v8 >= v7 >> 1)
        {
          result = sub_1DB138760((v7 > 1), v8 + 1, 1);
          v5 = v47;
        }

        *(v5 + 16) = v8 + 1;
        v9 = (v5 + 48 * v8);
        v10 = i;
        v11 = v43;
        v9[3] = v42;
        v9[4] = v11;
        v9[2] = v10;
      }

      else
      {
        result = sub_1DB1445E0(&v44, &qword_1ECC26DD8, &qword_1DB2BCF40);
      }

      ++v4;
      v6 += 48;
      if (v2 == v4)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_13:

    v12 = 0;
    v13 = *(v5 + 16);
    if (v13)
    {
      goto LABEL_15;
    }

LABEL_14:
    v42 = 0u;
    v43 = 0u;
    v12 = v13;
    for (i = 0u; ; sub_1DB1446A4(v5 + 32 + 48 * v12++, &i, &qword_1ECC26DD8, &qword_1DB2BCF40))
    {
      v44 = i;
      v45 = v42;
      v46 = v43;
      if (!*(&v42 + 1))
      {
        break;
      }

      sub_1DB1355D0(&v44, &i);
      v14 = *(&v42 + 1);
      v15 = v43;
      v16 = __swift_project_boxed_opaque_existential_1(&i, *(&v42 + 1));
      sub_1DB25C754(0x7865646E69746F6ELL, 0xEA00000000006465, v16, v48, v14, v15);

      result = __swift_destroy_boxed_opaque_existential_1(&i);
      if (v12 == v13)
      {
        goto LABEL_14;
      }

LABEL_15:
      if ((v12 & 0x8000000000000000) != 0)
      {
        goto LABEL_39;
      }

      if (v12 >= *(v5 + 16))
      {
        goto LABEL_40;
      }
    }

    v17 = *(v40 + 144);
    if (v17)
    {
      v18 = *(v40 + 136);

      v19 = sub_1DB2B995C(34, 0xE100000000000000, v18, v17);
      v21 = v20;

      sub_1DB25C488(0x65676175676E616CLL, 0xEA00000000006469, v19, v21, MEMORY[0x1E69E7CC0], v48, &qword_1ECC280D8, &unk_1DB2C4B30, qword_1EE1400C0);
    }

    v22 = *(v40 + 112);
    if (v22)
    {
      v23 = *(v40 + 104);

      v24 = sub_1DB2B995C(34, 0xE100000000000000, v23, v22);
      v26 = v25;

      sub_1DB25C488(0x73736572706D6F63, 0xE800000000000000, v24, v26, MEMORY[0x1E69E7CC0], v48, &qword_1ECC280D8, &unk_1DB2C4B30, qword_1EE1400C0);
    }

    v27 = *(v40 + 128);
    if (v27)
    {
      v28 = *(v40 + 120);

      v29 = sub_1DB2B995C(34, 0xE100000000000000, v28, v27);
      v31 = v30;

      sub_1DB25C488(0x6572706D6F636E75, 0xEA00000000007373, v29, v31, MEMORY[0x1E69E7CC0], v48, &qword_1ECC280D8, &unk_1DB2C4B30, qword_1EE1400C0);
    }

    if ((*(v40 + 152) & 1) == 0)
    {
      v32 = sub_1DB2B995C(34, 0xE100000000000000, 863204454, 0xE400000000000000);
      sub_1DB25C488(0x666E69686374616DLL, 0xE90000000000006FLL, v32, v33, MEMORY[0x1E69E7CC0], v48, &qword_1ECC280D8, &unk_1DB2C4B30, qword_1EE1400C0);
    }

    v34 = *(v40 + 153);
    if (v34 != 2)
    {
      if (v34)
      {
        v35 = 1668506980;
      }

      else
      {
        v35 = 6517601;
      }

      if (v34)
      {
        v36 = 0xE400000000000000;
      }

      else
      {
        v36 = 0xE300000000000000;
      }

      v37 = sub_1DB2B995C(34, 0xE100000000000000, v35, v36);
      v39 = v38;

      sub_1DB25C488(0x726564726FLL, 0xE500000000000000, v37, v39, MEMORY[0x1E69E7CC0], v48, &qword_1ECC280D8, &unk_1DB2C4B30, qword_1EE1400C0);
    }

    return v48[0];
  }

  return result;
}

uint64_t sub_1DB25B6C4()
{
}

uint64_t *FTS4Config.deinit()
{

  sub_1DB1718E4(v0[3], v0[4], v0[5]);

  sub_1DB1445E0((v0 + 7), &qword_1ECC28CD8, &qword_1DB2CCA00);

  return v0;
}

uint64_t FTS4Config.__deallocating_deinit()
{

  sub_1DB1718E4(v0[3], v0[4], v0[5]);

  sub_1DB1445E0((v0 + 7), &qword_1ECC28CD8, &qword_1DB2CCA00);

  return swift_deallocClassInstance();
}

uint64_t sub_1DB25B820(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DB25C15C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1DB2BB8E4();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1DB2BB104();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1DB25B954(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1DB25B954(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1DB25C120(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1DB25BEA0((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1DB1571EC(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1DB1571EC((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
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
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_1DB25BEA0((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1DB25BEA0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_1DB25C094(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DB25C120(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_1DB25C1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  v31[3] = v12;
  v13 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  v31[0] = a3;
  v31[1] = a4;
  v31[4] = v13;
  v31[2] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  *(inited + 56) = v12;
  *(inited + 64) = v13;
  *(inited + 32) = a1;
  v15 = MEMORY[0x1E69E7CC0];
  *(inited + 40) = a2;
  *(inited + 48) = v15;
  sub_1DB164980(v31, inited + 72);

  sub_1DB2B9A70(inited, v28);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  v16 = *a6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a6 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1DB1573FC(0, v16[2] + 1, 1, v16);
    *a6 = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1DB1573FC((v18 > 1), v19 + 1, 1, v16);
    *a6 = v16;
  }

  v20 = v29;
  v21 = v30;
  v22 = __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v27[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v25 + 16))(v24);
  sub_1DB200A54(v19, v24, a6, v20, v21);
  __swift_destroy_boxed_opaque_existential_1(v28);
  *a6 = v16;

  __swift_destroy_boxed_opaque_existential_1(v31);
  return v16;
}

void *sub_1DB25C488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, unint64_t *a9)
{
  v34[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v34[0] = a3;
  v34[1] = a4;
  v34[4] = sub_1DB1688F0(a9, a7, a8, &protocol conformance descriptor for Expression<A>);
  v34[2] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  *(inited + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(inited + 64) = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  *(inited + 32) = a1;
  v18 = MEMORY[0x1E69E7CC0];
  *(inited + 40) = a2;
  *(inited + 48) = v18;
  sub_1DB164980(v34, inited + 72);

  sub_1DB2B9A70(inited, v31);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  v19 = *a6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a6 = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_1DB1573FC(0, v19[2] + 1, 1, v19);
    *a6 = v19;
  }

  v22 = v19[2];
  v21 = v19[3];
  if (v22 >= v21 >> 1)
  {
    v19 = sub_1DB1573FC((v21 > 1), v22 + 1, 1, v19);
    *a6 = v19;
  }

  v23 = v32;
  v24 = v33;
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v31 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0) + 104;
  (*(v28 + 16))(v27);
  sub_1DB200A54(v22, v27, a6, v23, v24);
  __swift_destroy_boxed_opaque_existential_1(v31);
  *a6 = v19;

  __swift_destroy_boxed_opaque_existential_1(v34);
  return v19;
}

void *sub_1DB25C754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v29[3] = a5;
  v29[4] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v29);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a3, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  *(inited + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(inited + 64) = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
  *(inited + 32) = a1;
  v13 = MEMORY[0x1E69E7CC0];
  *(inited + 40) = a2;
  *(inited + 48) = v13;
  sub_1DB164980(v29, inited + 72);

  sub_1DB2B9A70(inited, v26);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  v14 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_1DB1573FC(0, v14[2] + 1, 1, v14);
    *a4 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_1DB1573FC((v16 > 1), v17 + 1, 1, v14);
    *a4 = v14;
  }

  v18 = v27;
  v19 = v28;
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v25[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v23 + 16))(v22);
  sub_1DB200A54(v17, v22, a4, v18, v19);
  __swift_destroy_boxed_opaque_existential_1(v26);
  *a4 = v14;

  __swift_destroy_boxed_opaque_existential_1(v29);
  return v14;
}

uint64_t sub_1DB25CA00(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1 + 32;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1DB164980(v3, v15);
      sub_1DB164980(v15, v13);
      *(&v14 + 1) = v4;
      swift_beginAccess();
      v5 = *(v1 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + 16) = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v5 = sub_1DB157D60(0, v5[2] + 1, 1, v5);
        *(v1 + 16) = v5;
      }

      v8 = v5[2];
      v7 = v5[3];
      if (v8 >= v7 >> 1)
      {
        v5 = sub_1DB157D60((v7 > 1), v8 + 1, 1, v5);
      }

      v5[2] = v8 + 1;
      v9 = &v5[6 * v8];
      v10 = v13[0];
      v11 = v14;
      v9[3] = v13[1];
      v9[4] = v11;
      v9[2] = v10;
      *(v1 + 16) = v5;
      swift_endAccess();
      __swift_destroy_boxed_opaque_existential_1(v15);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return v1;
}

unint64_t sub_1DB25CB30()
{
  result = qword_1ECC28CD0;
  if (!qword_1ECC28CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28CD0);
  }

  return result;
}

uint64_t sub_1DB25CB84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28CD8, &qword_1DB2CCA00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DB25CBF8()
{
  result = qword_1ECC28CE0;
  if (!qword_1ECC28CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28CE0);
  }

  return result;
}

unint64_t sub_1DB25CC50()
{
  result = qword_1ECC28CE8;
  if (!qword_1ECC28CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28CE8);
  }

  return result;
}

unint64_t sub_1DB25CCA8()
{
  result = qword_1ECC28CF0;
  if (!qword_1ECC28CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28CF0);
  }

  return result;
}

uint64_t sub_1DB25CF78(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t static Module.FTS5(_:)@<X0>(void *a1@<X8>)
{
  result = sub_1DB25D45C();
  *a1 = 896758886;
  a1[1] = 0xE400000000000000;
  a1[2] = result;
  return result;
}

OnDeviceStorageCore::FTS5Config::Detail_optional __swiftcall FTS5Config.Detail.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB2BB6F4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FTS5Config.Detail.rawValue.getter()
{
  v1 = 0x6E6D756C6F63;
  if (*v0 != 1)
  {
    v1 = 1701736302;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1819047270;
  }
}

uint64_t sub_1DB25D068(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6E6D756C6F63;
  if (v2 != 1)
  {
    v4 = 1701736302;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1819047270;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6E6D756C6F63;
  if (*a2 != 1)
  {
    v8 = 1701736302;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1819047270;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DB2BB924();
  }

  return v11 & 1;
}

uint64_t sub_1DB25D14C()
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB25D1DC(uint64_t a1)
{
  sub_1DB2BAE84();
}

uint64_t sub_1DB25D258(uint64_t a1)
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

void sub_1DB25D2F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6E6D756C6F63;
  if (v2 != 1)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1819047270;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

double FTS5Config.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 97) = 3;
  result = 0.0;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 1;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = v2;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 81) = 0u;
  return result;
}

double FTS5Config.init()()
{
  *(v0 + 97) = 3;
  result = 0.0;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 1;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = v2;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 81) = 0u;
  return result;
}

uint64_t sub_1DB25D3E8(uint64_t a1)
{
  sub_1DB164980(a1, v3);
  swift_beginAccess();
  sub_1DB25D69C(v3, v1 + 104);
  swift_endAccess();
}

uint64_t sub_1DB25D43C(uint64_t a1)
{
  *(v1 + 144) = a1;
  *(v1 + 152) = 0;
}

uint64_t sub_1DB25D45C()
{
  v18 = sub_1DB25A590();
  swift_beginAccess();
  sub_1DB1446A4(v0 + 104, &v13, &qword_1ECC27898, &unk_1DB2CCD00);
  if (v14)
  {
    sub_1DB1355D0(&v13, v15);
    v1 = v16;
    v2 = v17;
    v3 = __swift_project_boxed_opaque_existential_1(v15, v16);
    sub_1DB25C754(0x5F746E65746E6F63, 0xED00006469776F72, v3, &v18, v1, v2);

    __swift_destroy_boxed_opaque_existential_1(v15);
    if (*(v0 + 152))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_1DB1445E0(&v13, &qword_1ECC27898, &unk_1DB2CCD00);
  if ((*(v0 + 152) & 1) == 0)
  {
LABEL_3:
    v4 = *(v0 + 144);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    v5 = swift_allocObject();
    v6 = MEMORY[0x1E69E7360];
    *(v5 + 16) = xmmword_1DB2BCC40;
    *(v5 + 56) = v6;
    *(v5 + 64) = &protocol witness table for Int64;
    *(v5 + 32) = v4;
    sub_1DB25C44C(0x69736E6D756C6F63, 0xEA0000000000657ALL, 63, 0xE100000000000000, v5, &v18);
  }

LABEL_4:
  if (*(v0 + 97) <= 1u)
  {
    if (*(v0 + 97))
    {
      v7 = 0x6E6D756C6F63;
    }

    else
    {
      v7 = 1819047270;
    }

    if (*(v0 + 97))
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    goto LABEL_13;
  }

  if (*(v0 + 97) == 2)
  {
    v8 = 0xE400000000000000;
    v7 = 1701736302;
LABEL_13:
    v9 = sub_1DB2B995C(34, 0xE100000000000000, v7, v8);
    v11 = v10;

    sub_1DB25C170(0x6C6961746564, 0xE600000000000000, v9, v11, MEMORY[0x1E69E7CC0], &v18);
  }

  return v18;
}

uint64_t sub_1DB25D69C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27898, &unk_1DB2CCD00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB25D70C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v23 = MEMORY[0x1E69E7CC0];

    sub_1DB1384B0(0, v2, 0);
    v3 = v23;
    v15[1] = v1;
    v4 = v1 + 32;
    v16 = xmmword_1DB2BD5A0;
    do
    {
      sub_1DB1446A4(v4, v21, &qword_1ECC26DD8, &qword_1DB2BCF40);
      if (*(v22 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
        inited = swift_initStackObject();
        *(inited + 16) = v16;
        sub_1DB1446A4(v21, &v17, &qword_1ECC26DD8, &qword_1DB2BCF40);

        sub_1DB1355D0(&v17, inited + 32);
        *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
        *(inited + 104) = sub_1DB219960();
        *(inited + 72) = 0x455845444E494E55;
        *(inited + 80) = 0xE900000000000044;
        *(inited + 88) = MEMORY[0x1E69E7CC0];
        sub_1DB2B9A70(inited, v20);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
        swift_arrayDestroy();
      }

      else
      {
        sub_1DB1446A4(v21, &v17, &qword_1ECC26DD8, &qword_1DB2BCF40);

        sub_1DB1355D0(&v17, v20);
      }

      sub_1DB1355D0(v20, &v17);
      sub_1DB1445E0(v21, &qword_1ECC26DD8, &qword_1DB2BCF40);
      v23 = v3;
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1DB1384B0((v6 > 1), v7 + 1, 1);
      }

      v8 = v18;
      v9 = v19;
      v10 = __swift_mutable_project_boxed_opaque_existential_1(&v17, v18);
      MEMORY[0x1EEE9AC00](v10);
      v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v13 + 16))(v12);
      sub_1DB16412C(v7, v12, &v23, v8, v9);
      __swift_destroy_boxed_opaque_existential_1(&v17);
      v3 = v23;
      v4 += 48;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t *FTS5Config.deinit()
{

  sub_1DB1718E4(v0[3], v0[4], v0[5]);

  sub_1DB1445E0((v0 + 7), &qword_1ECC28CD8, &qword_1DB2CCA00);
  sub_1DB1445E0((v0 + 13), &qword_1ECC27898, &unk_1DB2CCD00);
  return v0;
}

uint64_t FTS5Config.__deallocating_deinit()
{

  sub_1DB1718E4(v0[3], v0[4], v0[5]);

  sub_1DB1445E0((v0 + 7), &qword_1ECC28CD8, &qword_1DB2CCA00);
  sub_1DB1445E0((v0 + 13), &qword_1ECC27898, &unk_1DB2CCD00);

  return swift_deallocClassInstance();
}

unint64_t sub_1DB25DB24()
{
  result = qword_1ECC28D00;
  if (!qword_1ECC28D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28D00);
  }

  return result;
}

uint64_t static Module.RTree<A, B>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DB2BCC40;
  *(v11 + 56) = type metadata accessor for Expression(0, a3, v12, v13);
  *(v11 + 64) = swift_getWitnessTable();
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  *(v11 + 48) = v10;
  v16 = type metadata accessor for Expression(255, a4, v14, v15);

  v37 = v16;
  swift_getTupleTypeMetadata2();
  result = sub_1DB2BB124();
  if (result)
  {
    v18 = 0;
    v19 = (a2 + 72);
    while (1)
    {
      v20 = sub_1DB2BB114();
      result = sub_1DB2BB0E4();
      if ((v20 & 1) == 0)
      {
        break;
      }

      if (__OFADD__(v18, 1))
      {
        goto LABEL_17;
      }

      v38 = v18;
      v39 = v18 + 1;
      v22 = *(v19 - 1);
      v21 = *v19;
      v23 = *(v19 - 3);
      v40 = *(v19 - 2);
      v41 = v11;
      v25 = *(v19 - 5);
      v24 = *(v19 - 4);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DB2BD5A0;

      *(inited + 56) = v37;

      v27 = v21;

      WitnessTable = swift_getWitnessTable();
      *(inited + 64) = WitnessTable;

      *(inited + 32) = v25;
      v11 = v41;
      *(inited + 40) = v24;
      *(inited + 48) = v23;
      *(inited + 96) = v37;
      *(inited + 104) = WitnessTable;
      *(inited + 72) = v40;
      *(inited + 80) = v22;
      *(inited + 88) = v27;
      v29 = v41[2];
      v30 = v29 + 2;
      if (__OFADD__(v29, 2))
      {
        goto LABEL_18;
      }

      v31 = v41[3] >> 1;
      if (v31 < v30)
      {
        if (v29 <= v30)
        {
          v35 = v29 + 2;
        }

        else
        {
          v35 = v41[2];
        }

        result = sub_1DB1573FC(1, v35, 1, v41);
        v11 = result;
        v29 = *(result + 16);
        v31 = *(result + 24) >> 1;
      }

      if ((v31 - v29) < 2)
      {
        goto LABEL_19;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
      swift_arrayInitWithCopy();

      v32 = *(v11 + 16);
      v33 = __OFADD__(v32, 2);
      v34 = v32 + 2;
      if (v33)
      {
        goto LABEL_20;
      }

      *(v11 + 16) = v34;
      result = sub_1DB2BB124();
      v18 = v38 + 1;
      v19 += 6;
      if (v39 == result)
      {
        goto LABEL_15;
      }
    }

    result = sub_1DB2BB514();
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_15:
    *a5 = 0x6565727472;
    a5[1] = 0xE500000000000000;
    a5[2] = v11;
  }

  return result;
}

uint64_t Connection.schema.getter()
{
  type metadata accessor for SchemaReader();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;

  return v1;
}

void Connection.foreignKeyCheck(table:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = sub_1DB2B995C(34, 0xE100000000000000, a1, a2);
    MEMORY[0x1E1283490](v4);

    MEMORY[0x1E1283490](41, 0xE100000000000000);
    v5 = 40;
    v6 = 0xE100000000000000;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  v64 = 0xD000000000000018;
  v65 = 0x80000001DB2D6AF0;
  MEMORY[0x1E1283490](v5, v6);

  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v7, 0xD000000000000018, 0x80000001DB2D6AF0);
  if (v2)
  {

    return;
  }

  v8 = MEMORY[0x1E69E7CC0];
  sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

  v9 = Statement.run(_:)(v8);

  v10 = *(v9 + 16);
  os_unfair_lock_lock((v10 + 24));
  v54 = (v10 + 16);
  sqlite3_reset(*(v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  sub_1DB143044();
  v56 = *(v9 + 24);
  v57 = v8;
  v55 = v10;
  while (1)
  {
    if (qword_1EE13F098 != -1)
    {
      swift_once();
    }

    sub_1DB2BB294();
    if ((v65 & 1) != 0 || v64 != v56)
    {
      sub_1DB2BB2C4(&v62);
      if ((v62 & 1) == 0)
      {
LABEL_69:

        return;
      }
    }

    else
    {
      os_unfair_lock_lock((v10 + 24));
      sub_1DB14A424(v54, &v64);
      os_unfair_lock_unlock((v10 + 24));
      if (v64 != 1)
      {
        goto LABEL_69;
      }
    }

    Statement.row.getter(&v64);
    v11 = v65;
    v61 = v64;
    swift_retain_n();
    if (v11 >= 1)
    {
      v12 = v8;
      v13 = 0;
      v14 = 0;
      v15 = (v8 + 32);
      v16 = v3;
      while (1)
      {
        os_unfair_lock_lock((v61 + 24));
        if (v13 == 0x80000000)
        {
          __break(1u);
LABEL_68:
          __break(1u);
          os_unfair_lock_unlock(v17);
          sub_1DB15B294(v14);
          MEMORY[0x1E1284A10](v14);
          goto LABEL_69;
        }

        v18 = sqlite3_column_type(*(v61 + 16), v13);
        os_unfair_lock_unlock((v61 + 24));
        if (v18 > 2)
        {
          break;
        }

        if (v18 == 1)
        {
          os_unfair_lock_lock((v61 + 24));
          v24 = COERCE_DOUBLE(sqlite3_column_int64(*(v61 + 16), v13));
          os_unfair_lock_unlock((v61 + 24));
          v27 = MEMORY[0x1E69E7360];
          v28 = &protocol witness table for Int64;
          v29 = v12;
          if (v14)
          {
            goto LABEL_53;
          }
        }

        else
        {
          if (v18 != 2)
          {
            goto LABEL_36;
          }

          os_unfair_lock_lock((v61 + 24));
          v26 = sqlite3_column_double(*(v61 + 16), v13);
          os_unfair_lock_unlock((v61 + 24));
          v24 = v26;
          v27 = MEMORY[0x1E69E63B0];
          v28 = &protocol witness table for Double;
          v29 = v12;
          if (v14)
          {
            goto LABEL_53;
          }
        }

LABEL_43:
        v32 = v29[3];
        if (((v32 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
          goto LABEL_71;
        }

        v60 = v28;
        v58 = v16;
        v33 = v32 & 0xFFFFFFFFFFFFFFFELL;
        if (v33 <= 1)
        {
          v34 = 1;
        }

        else
        {
          v34 = v33;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
        v29 = swift_allocObject();
        v35 = _swift_stdlib_malloc_size(v29) - 32;
        v36 = v12;
        v37 = v35 / 40;
        v29[2] = v34;
        v29[3] = 2 * (v35 / 40);
        v38 = (v29 + 4);
        v39 = *(v12 + 24) >> 1;
        if (*(v12 + 16))
        {
          v40 = (v12 + 32);
          if (v29 != v12 || v38 >= v40 + 40 * v39)
          {
            memmove(v29 + 4, v40, 40 * v39);
            v36 = v12;
          }

          *(v36 + 16) = 0;
        }

        v15 = (v38 + 40 * v39);
        v14 = (v37 & 0x7FFFFFFFFFFFFFFFLL) - v39;

        v16 = v58;
        v28 = v60;
LABEL_53:
        v41 = __OFSUB__(v14--, 1);
        if (v41)
        {
          goto LABEL_68;
        }

        v12 = v29;
        ++v13;
        *v15 = v24;
        *(v15 + 1) = v16;
        v15[2] = 0.0;
        *(v15 + 3) = v27;
        *(v15 + 4) = v28;
        v15 += 5;
        if (v11 == v13)
        {
          goto LABEL_57;
        }
      }

      if (v18 == 3)
      {
        os_unfair_lock_lock((v61 + 24));
        if (!sqlite3_column_text(*(v61 + 16), v13))
        {
          goto LABEL_72;
        }

        v24 = COERCE_DOUBLE(sub_1DB2BAF14());
        v16 = v30;
        os_unfair_lock_unlock((v61 + 24));
        v27 = MEMORY[0x1E69E6158];
        v28 = &protocol witness table for String;
        v29 = v12;
        if (v14)
        {
          goto LABEL_53;
        }

        goto LABEL_43;
      }

      if (v18 != 5)
      {
        if (v18 == 4)
        {
          v59 = sub_1DB138CA8();
          os_unfair_lock_lock((v61 + 24));
          v19 = *(v61 + 16);
          v20 = sqlite3_column_blob(v19, v13);
          if (v20 && (v21 = v20, (v22 = sqlite3_column_bytes(v19, v13)) != 0))
          {
            v23 = v22;
            if (v22 <= 0)
            {
              v24 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CD8, &unk_1DB2BCC50);
              v24 = COERCE_DOUBLE(swift_allocObject());
              v25 = _swift_stdlib_malloc_size(*&v24);
              *(*&v24 + 16) = v23;
              *(*&v24 + 24) = 2 * v25 - 64;
            }

            memcpy((*&v24 + 32), v21, v23);
          }

          else
          {
            v24 = MEMORY[0x1E69E7CC0];
          }

          os_unfair_lock_unlock((v61 + 24));
          v27 = &type metadata for Blob;
          v28 = v59;
          v29 = v12;
          if (v14)
          {
            goto LABEL_53;
          }

          goto LABEL_43;
        }

LABEL_36:
        v62 = 0;
        v63 = 0xE000000000000000;
        sub_1DB2BB4F4();

        v62 = 0xD000000000000019;
        v63 = 0x80000001DB2D1D60;
        v31 = sub_1DB2BB8F4();
        MEMORY[0x1E1283490](v31);

        sub_1DB15B09C(v62, v63);
      }

      v16 = 0;
      v24 = 0.0;
      v27 = 0;
      v28 = 0;
      v29 = v12;
      if (v14)
      {
        goto LABEL_53;
      }

      goto LABEL_43;
    }

    v14 = 0;
    v12 = v8;
    v16 = v3;
LABEL_57:

    v42 = *(v12 + 24);
    if (v42 >= 2)
    {
      break;
    }

LABEL_60:
    v3 = v16;

    v62 = v12;
    sub_1DB25E77C(&v62, &v64);

    v46 = v64;
    v45 = v65;
    v48 = v66;
    v47 = v67;
    v49 = v68;
    if (v65)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v50 = v57;
      }

      else
      {
        v50 = sub_1DB157FAC(0, *(v57 + 16) + 1, 1, v57);
      }

      v52 = *(v50 + 2);
      v51 = *(v50 + 3);
      if (v52 >= v51 >> 1)
      {
        v50 = sub_1DB157FAC((v51 > 1), v52 + 1, 1, v50);
      }

      *(v50 + 2) = v52 + 1;
      v57 = v50;
      v53 = &v50[40 * v52];
      *(v53 + 4) = v46;
      *(v53 + 5) = v45;
      *(v53 + 6) = v48;
      *(v53 + 7) = v47;
      *(v53 + 8) = v49;
    }

    else
    {
      sub_1DB25F298(v64, 0, v66, v67, v68);
    }

    v10 = v55;
    v8 = MEMORY[0x1E69E7CC0];
  }

  v43 = v42 >> 1;
  v41 = __OFSUB__(v43, v14);
  v44 = v43 - v14;
  if (!v41)
  {
    *(v12 + 16) = v44;
    goto LABEL_60;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
}

uint64_t sub_1DB25E77C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (!*(*result + 16))
  {
    __break(1u);
    goto LABEL_17;
  }

  sub_1DB1609EC(v3 + 32, v6);
  if (!v7)
  {
LABEL_12:
    result = sub_1DB145A68(v6);
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F28, &unk_1DB2BD520);
  result = swift_dynamicCast();
  if (result)
  {
    if (*(v3 + 16) >= 2uLL)
    {
      sub_1DB1609EC(v3 + 72, v6);
      if (!v7)
      {
LABEL_11:

        goto LABEL_12;
      }

      result = swift_dynamicCast();
      if ((result & 1) == 0)
      {
LABEL_15:

        goto LABEL_13;
      }

      if (*(v3 + 16) >= 3uLL)
      {
        sub_1DB1609EC(v3 + 112, v6);
        if (v7)
        {
          result = swift_dynamicCast();
          if (result)
          {
            *a2 = v4;
            a2[1] = v5;
            a2[2] = v4;
            a2[3] = v4;
            a2[4] = v5;
            return result;
          }

          goto LABEL_15;
        }

        goto LABEL_11;
      }

LABEL_18:
      __break(1u);
      return result;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  a2[4] = 0;
  *a2 = 0u;
  *(a2 + 1) = 0u;
  return result;
}

void Connection.integrityCheck(table:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v7 = 0;
    v8 = 0xE000000000000000;
    goto LABEL_10;
  }

  Connection.sqliteVersion.getter(&v80);
  v5 = v80 < 3;
  if (v80 != 3 || (v5 = v81 < 33, v81 != 33))
  {
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_8:
    sub_1DB135B68();
    swift_allocError();
    *v9 = 0u;
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0u;
    *(v9 + 48) = 10;
    swift_willThrow();
    return;
  }

  if (v82 < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  v80 = 40;
  v81 = 0xE100000000000000;
  v6 = sub_1DB2B995C(34, 0xE100000000000000, a1, a2);
  MEMORY[0x1E1283490](v6);

  MEMORY[0x1E1283490](41, 0xE100000000000000);
  v7 = v80;
  v8 = v81;
LABEL_10:
  v80 = 0xD000000000000016;
  v81 = 0x80000001DB2D6B10;
  MEMORY[0x1E1283490](v7, v8);

  v10 = v80;
  v11 = v81;
  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v12, v10, v11);
  v13 = v2;
  if (v2)
  {
LABEL_11:

    return;
  }

  v14 = MEMORY[0x1E69E7CC0];
  v15 = sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

  v16 = Statement.run(_:)(v14);

  v17 = *(v16 + 16);
  os_unfair_lock_lock((v17 + 24));
  v71 = (v17 + 16);
  sqlite3_reset(*(v17 + 16));
  os_unfair_lock_unlock((v17 + 24));
  sub_1DB143044();
  v74 = *(v16 + 24);
  v72 = v14;
  v73 = v17;
  while (1)
  {
    if (qword_1EE13F098 != -1)
    {
      swift_once();
    }

    sub_1DB2BB294();
    if ((v81 & 1) == 0 && v80 == v74)
    {
      os_unfair_lock_lock((v17 + 24));
      sub_1DB256240(v71, &v80);
      os_unfair_lock_unlock((v17 + 24));
      if (v80 != 1)
      {
        break;
      }

      goto LABEL_21;
    }

    sub_1DB2BB2C4(&v84);
    if ((v84 & 1) == 0)
    {
      break;
    }

LABEL_21:
    Statement.row.getter(&v80);
    v20 = v80;
    v19 = v81;
    swift_retain_n();
    if (v19 >= 1)
    {
      v21 = 0;
      v22 = 0;
      v23 = (MEMORY[0x1E69E7CC0] + 32);
      v79 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        os_unfair_lock_lock(v20 + 6);
        if (v21 == 0x80000000)
        {
          __break(1u);
LABEL_76:
          __break(1u);
          os_unfair_lock_unlock(v24);
          v55 = v22;
          v13 = 0;
          sub_1DB15B294(v55);
          MEMORY[0x1E1284A10](v55);
          goto LABEL_77;
        }

        v25 = sqlite3_column_type(*(v20 + 2), v21);
        os_unfair_lock_unlock(v20 + 6);
        if (v25 > 2)
        {
          break;
        }

        if (v25 == 1)
        {
          os_unfair_lock_lock(v20 + 6);
          v31 = COERCE_DOUBLE(sqlite3_column_int64(*(v20 + 2), v21));
          os_unfair_lock_unlock(v20 + 6);
          v34 = MEMORY[0x1E69E7360];
          v35 = &protocol witness table for Int64;
          if (v22)
          {
            goto LABEL_58;
          }
        }

        else
        {
          if (v25 != 2)
          {
            goto LABEL_41;
          }

          os_unfair_lock_lock(v20 + 6);
          v33 = sqlite3_column_double(*(v20 + 2), v21);
          os_unfair_lock_unlock(v20 + 6);
          v31 = v33;
          v34 = MEMORY[0x1E69E63B0];
          v35 = &protocol witness table for Double;
          if (v22)
          {
            goto LABEL_58;
          }
        }

LABEL_48:
        v38 = v79[3];
        if (((v38 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
          goto LABEL_95;
        }

        v78 = v35;
        v76 = v15;
        v39 = v38 & 0xFFFFFFFFFFFFFFFELL;
        if (v39 <= 1)
        {
          v40 = 1;
        }

        else
        {
          v40 = v39;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
        v41 = swift_allocObject();
        v42 = (_swift_stdlib_malloc_size(v41) - 32) / 40;
        v41[2] = v40;
        v41[3] = 2 * v42;
        v43 = (v41 + 4);
        v44 = v79[3] >> 1;
        if (v79[2])
        {
          v45 = v79 + 4;
          if (v41 != v79 || v43 >= v45 + 40 * v44)
          {
            memmove(v41 + 4, v45, 40 * v44);
          }

          v79[2] = 0;
        }

        v23 = (v43 + 40 * v44);
        v22 = (v42 & 0x7FFFFFFFFFFFFFFFLL) - v44;

        v79 = v41;
        v15 = v76;
        v35 = v78;
LABEL_58:
        v46 = __OFSUB__(v22--, 1);
        if (v46)
        {
          goto LABEL_76;
        }

        ++v21;
        *v23 = v31;
        *(v23 + 1) = v15;
        v23[2] = 0.0;
        *(v23 + 3) = v34;
        *(v23 + 4) = v35;
        v23 += 5;
        if (v19 == v21)
        {
          goto LABEL_62;
        }
      }

      if (v25 == 3)
      {
        os_unfair_lock_lock(v20 + 6);
        if (!sqlite3_column_text(*(v20 + 2), v21))
        {
          goto LABEL_98;
        }

        v31 = COERCE_DOUBLE(sub_1DB2BAF14());
        v15 = v36;
        os_unfair_lock_unlock(v20 + 6);
        v34 = MEMORY[0x1E69E6158];
        v35 = &protocol witness table for String;
        if (v22)
        {
          goto LABEL_58;
        }

        goto LABEL_48;
      }

      if (v25 != 5)
      {
        if (v25 == 4)
        {
          v77 = sub_1DB138CA8();
          os_unfair_lock_lock(v20 + 6);
          v26 = *(v20 + 2);
          v27 = sqlite3_column_blob(v26, v21);
          if (v27 && (v28 = v27, (v29 = sqlite3_column_bytes(v26, v21)) != 0))
          {
            v30 = v29;
            if (v29 <= 0)
            {
              v31 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CD8, &unk_1DB2BCC50);
              v31 = COERCE_DOUBLE(swift_allocObject());
              v32 = _swift_stdlib_malloc_size(*&v31);
              *(*&v31 + 16) = v30;
              *(*&v31 + 24) = 2 * v32 - 64;
            }

            memcpy((*&v31 + 32), v28, v30);
          }

          else
          {
            v31 = MEMORY[0x1E69E7CC0];
          }

          os_unfair_lock_unlock(v20 + 6);
          v34 = &type metadata for Blob;
          v35 = v77;
          if (v22)
          {
            goto LABEL_58;
          }

          goto LABEL_48;
        }

LABEL_41:
        v84 = 0;
        v85 = 0xE000000000000000;
        sub_1DB2BB4F4();

        v84 = 0xD000000000000019;
        v85 = 0x80000001DB2D1D60;
        v37 = sub_1DB2BB8F4();
        MEMORY[0x1E1283490](v37);

        sub_1DB15B09C(v84, v85);
      }

      v15 = 0;
      v31 = 0.0;
      v34 = 0;
      v35 = 0;
      if (v22)
      {
        goto LABEL_58;
      }

      goto LABEL_48;
    }

    v22 = 0;
    v79 = MEMORY[0x1E69E7CC0];
LABEL_62:

    v47 = v79[3];
    if (v47 >= 2)
    {
      v48 = v47 >> 1;
      v46 = __OFSUB__(v48, v22);
      v49 = v48 - v22;
      if (v46)
      {
        goto LABEL_97;
      }

      v79[2] = v49;
    }

    if (!v79[2])
    {
      goto LABEL_96;
    }

    sub_1DB1609EC((v79 + 4), &v80);
    if (v83)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F28, &unk_1DB2BD520);
      v13 = 0;
      v17 = v73;
      if ((swift_dynamicCast() & 1) == 0)
      {
        v84 = 0;
        v85 = 0;
      }

      v18 = v85;
      if (v85)
      {
LABEL_70:
        v50 = v84;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = sub_1DB1572F0(0, *(v72 + 2) + 1, 1, v72);
        }

        v51 = v72;
        v53 = *(v72 + 2);
        v52 = *(v72 + 3);
        if (v53 >= v52 >> 1)
        {
          v51 = sub_1DB1572F0((v52 > 1), v53 + 1, 1, v72);
        }

        *(v51 + 2) = v53 + 1;
        v72 = v51;
        v54 = &v51[16 * v53];
        *(v54 + 4) = v50;
        *(v54 + 5) = v18;
        v17 = v73;
      }
    }

    else
    {
      sub_1DB145A68(&v80);
      v84 = 0;
      v85 = 0;

      v13 = 0;
      v17 = v73;
      v18 = v85;
      if (v85)
      {
        goto LABEL_70;
      }
    }
  }

LABEL_77:

  v56 = v72;
  v57 = *(v72 + 2);
  if (!v57)
  {
    goto LABEL_11;
  }

  v58 = 0;
  v59 = v72 + 40;
  v60 = MEMORY[0x1E69E7CC0];
LABEL_79:
  v61 = &v59[16 * v58];
  v62 = v58;
  while (v62 < *(v56 + 2))
  {
    v63 = *(v61 - 1);
    v64 = *v61;
    if (v63 != 27503 || v64 != 0xE200000000000000)
    {
      v66 = sub_1DB2BB924();
      v56 = v72;
      if ((v66 & 1) == 0)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v80 = v60;
        v75 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DB138470(0, *(v60 + 2) + 1, 1);
          v60 = v80;
        }

        v69 = *(v60 + 2);
        v68 = *(v60 + 3);
        if (v69 >= v68 >> 1)
        {
          sub_1DB138470((v68 > 1), v69 + 1, 1);
          v60 = v80;
        }

        v58 = v62 + 1;
        *(v60 + 2) = v69 + 1;
        v70 = &v60[16 * v69];
        *(v70 + 4) = v63;
        *(v70 + 5) = v64;
        v59 = v72 + 40;
        v13 = v75;
        v56 = v72;
        if (v57 - 1 != v62)
        {
          goto LABEL_79;
        }

        goto LABEL_11;
      }
    }

    ++v62;
    v61 += 16;
    if (v57 == v62)
    {
      goto LABEL_11;
    }
  }

LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
}

void sub_1DB25F298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

uint64_t sub_1DB25F2DC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1DB25F388(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 48);
    do
    {
      v8 = v6;
      v9 = *(v7 - 1);
      v10 = *v7;
      v13 = *(v7 - 2);
      v14 = v9;
      v15 = v10;
      sub_1DB262884(v13, v9, v10);
      v11 = a1(&v13);
      sub_1DB26289C(v13, v14, v15);
      LOBYTE(v4) = (v3 != 0) | v11;
      if ((v3 != 0) | v11 & 1)
      {
        break;
      }

      v6 = v8 - 1;
      v7 += 24;
    }

    while (v8);
  }

  return v4 & 1;
}

unint64_t SchemaChanger.Error.errorDescription.getter()
{
  v1 = *v0;
  if (*(v0 + 16) == 1)
  {
    sub_1DB2BB4F4();

    v5 = 0xD000000000000014;
    v2 = MEMORY[0x1E1283680](v1, &type metadata for ForeignKeyError);
    MEMORY[0x1E1283490](v2);
  }

  else
  {
    v3 = v0[1];
    sub_1DB2BB4F4();

    v5 = 0xD00000000000001BLL;
    MEMORY[0x1E1283490](v1, v3);
  }

  return v5;
}

uint64_t sub_1DB25F52C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = *a3;
  v6 = a3[1];
  v8 = a3[2];
  v9 = v3[5];
  v33[4] = v3[4];
  v33[5] = v9;
  v10 = v3[7];
  v33[6] = v3[6];
  v33[7] = v10;
  v11 = v3[1];
  v33[0] = *v3;
  v33[1] = v11;
  v12 = v3[3];
  v33[2] = v3[2];
  v33[3] = v12;
  v13 = sub_1DB262758(v33);
  v14 = sub_1DB134EA8(v33);
  if (v13 <= 1)
  {
    if (!v13)
    {
      *&v31[0] = 0;
      *(&v31[0] + 1) = 0xE000000000000000;
      v15 = v14;
      sub_1DB2BB4F4();

      strcpy(v32, "ALTER TABLE ");
      BYTE5(v32[1]) = 0;
      HIWORD(v32[1]) = -5120;
      v16 = sub_1DB2B995C(34, 0xE100000000000000, a1, a2);
      MEMORY[0x1E1283490](v16);

      MEMORY[0x1E1283490](0x4C4F432044444120, 0xEC000000204E4D55);
      v31[4] = *(v15 + 4);
      v31[5] = *(v15 + 5);
      v31[6] = *(v15 + 6);
      v31[7] = *(v15 + 7);
      v31[0] = *v15;
      v31[1] = *(v15 + 1);
      v31[2] = *(v15 + 2);
      v31[3] = *(v15 + 3);
      v17 = sub_1DB262F30();
      MEMORY[0x1E1283490](v17);

      return v32[0];
    }

    v21 = *v14;
    v22 = v14[1];
    v24 = v7 < 3;
    if (v7 == 3)
    {
      v24 = v6 < 35;
      if (v6 == 35)
      {
        if (v8 < 0)
        {
          return 0;
        }

        goto LABEL_18;
      }
    }

    if (!v24)
    {
LABEL_18:
      sub_1DB2BB4F4();

      strcpy(v31, "ALTER TABLE ");
      BYTE13(v31[0]) = 0;
      HIWORD(v31[0]) = -5120;
      v29 = sub_1DB2B995C(34, 0xE100000000000000, a1, a2);
      MEMORY[0x1E1283490](v29);

      v27 = 0x4F4320504F524420;
      v28 = 0xED0000204E4D554CLL;
      goto LABEL_19;
    }

    return 0;
  }

  if (v13 != 2)
  {
    return 0;
  }

  v19 = *v14;
  v20 = v14[1];
  v21 = v14[2];
  v22 = v14[3];
  v23 = v7 < 3;
  if (v7 == 3 && (v23 = v6 < 25, v6 == 25))
  {
    if (v8 < 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  sub_1DB2BB4F4();

  strcpy(v31, "ALTER TABLE ");
  BYTE13(v31[0]) = 0;
  HIWORD(v31[0]) = -5120;
  v25 = sub_1DB2B995C(34, 0xE100000000000000, a1, a2);
  MEMORY[0x1E1283490](v25);

  MEMORY[0x1E1283490](0x20454D414E455220, 0xEF204E4D554C4F43);
  v26 = sub_1DB2B995C(34, 0xE100000000000000, v19, v20);
  MEMORY[0x1E1283490](v26);

  v27 = 542069792;
  v28 = 0xE400000000000000;
LABEL_19:
  MEMORY[0x1E1283490](v27, v28);
  v30 = sub_1DB2B995C(34, 0xE100000000000000, v21, v22);
  MEMORY[0x1E1283490](v30);

  return *&v31[0];
}

uint64_t sub_1DB25F868(__int128 *a1)
{
  v2 = a1[5];
  v30 = a1[4];
  v31 = v2;
  v3 = a1[7];
  v32 = a1[6];
  v33 = v3;
  v4 = a1[1];
  v26 = *a1;
  v27 = v4;
  v5 = a1[3];
  v28 = a1[2];
  v29 = v5;
  swift_beginAccess();
  v6 = *(v1 + 16);
  sub_1DB13AC2C(&v26, &v18);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 16) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1DB1580CC(0, *(v6 + 2) + 1, 1, v6);
    *(v1 + 16) = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_1DB1580CC((v8 > 1), v9 + 1, 1, v6);
  }

  v22 = v30;
  v23 = v31;
  v24 = v32;
  v25 = v33;
  v18 = v26;
  v19 = v27;
  v20 = v28;
  v21 = v29;
  sub_1DB2626D8(&v18);
  *(v6 + 2) = v9 + 1;
  v10 = &v6[128 * v9];
  v11 = v18;
  v12 = v19;
  v13 = v21;
  *(v10 + 4) = v20;
  *(v10 + 5) = v13;
  *(v10 + 2) = v11;
  *(v10 + 3) = v12;
  v14 = v22;
  v15 = v23;
  v16 = v25;
  *(v10 + 8) = v24;
  *(v10 + 9) = v16;
  *(v10 + 6) = v14;
  *(v10 + 7) = v15;
  *(v1 + 16) = v6;
  return swift_endAccess();
}

uint64_t sub_1DB25F998(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1DB1580CC(0, *(v5 + 2) + 1, 1, v5);
    *(v2 + 16) = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1DB1580CC((v7 > 1), v8 + 1, 1, v5);
  }

  *&v17[0] = a1;
  *(&v17[0] + 1) = a2;
  sub_1DB2626E8(v17);
  *(v5 + 2) = v8 + 1;
  v9 = &v5[128 * v8];
  v10 = v17[0];
  v11 = v17[1];
  v12 = v17[3];
  *(v9 + 4) = v17[2];
  *(v9 + 5) = v12;
  *(v9 + 2) = v10;
  *(v9 + 3) = v11;
  v13 = v17[4];
  v14 = v17[5];
  v15 = v17[7];
  *(v9 + 8) = v17[6];
  *(v9 + 9) = v15;
  *(v9 + 6) = v13;
  *(v9 + 7) = v14;
  *(v2 + 16) = v5;
  return swift_endAccess();
}

uint64_t sub_1DB25FAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v9 = *(v4 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 16) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1DB1580CC(0, *(v9 + 2) + 1, 1, v9);
    *(v4 + 16) = v9;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    v9 = sub_1DB1580CC((v11 > 1), v12 + 1, 1, v9);
  }

  *&v21 = a1;
  *(&v21 + 1) = a2;
  *&v22 = a3;
  *(&v22 + 1) = a4;
  sub_1DB2626FC(&v21);
  *(v9 + 2) = v12 + 1;
  v13 = &v9[128 * v12];
  v14 = v21;
  v15 = v22;
  v16 = v24;
  *(v13 + 4) = v23;
  *(v13 + 5) = v16;
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  v17 = v25;
  v18 = v26;
  v19 = v28;
  *(v13 + 8) = v27;
  *(v13 + 9) = v19;
  *(v13 + 6) = v17;
  *(v13 + 7) = v18;
  *(v4 + 16) = v9;
  return swift_endAccess();
}

uint64_t SchemaChanger.AlterTableDefinition.deinit()
{

  return v0;
}

uint64_t SchemaChanger.AlterTableDefinition.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t SchemaChanger.__allocating_init(connection:)(uint64_t a1)
{
  Connection.sqliteVersion.getter(&v7);
  v6 = v7;
  v2 = v8;
  type metadata accessor for SchemaChanger();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  type metadata accessor for SchemaReader();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v3 + 24) = v4;
  *(v3 + 32) = v6;
  *(v3 + 48) = v2;

  return v3;
}

uint64_t sub_1DB25FCCC(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v5 = v4;
  v6 = v3;
  type metadata accessor for SchemaChanger.AlterTableDefinition();
  v10 = swift_allocObject();
  v10[2] = MEMORY[0x1E69E7CC0];
  v10[3] = a1;
  v10[4] = a2;

  v49[1] = v10;
  a3(v10);
  swift_beginAccess();
  v11 = v10[2];
  v12 = *(v11 + 16);

  v55 = v12;
  if (!v12)
  {
LABEL_28:
  }

  v53 = a2;
  v54 = a1;
  v14 = 0;
  v15 = 32;
  v52 = v3;
  v68 = v11;
  while (v14 < *(v11 + 16))
  {
    v17 = *(v11 + v15);
    v18 = *(v11 + v15 + 16);
    v19 = *(v11 + v15 + 48);
    v61 = *(v11 + v15 + 32);
    v62 = v19;
    v59 = v17;
    v60 = v18;
    v20 = *(v11 + v15 + 64);
    v21 = *(v11 + v15 + 80);
    v22 = *(v11 + v15 + 112);
    v65 = *(v11 + v15 + 96);
    v66 = v22;
    v63 = v20;
    v64 = v21;
    memmove(__dst, (v11 + v15), 0x80uLL);
    v23 = sub_1DB262758(__dst);
    if (v23 == 1)
    {
      sub_1DB134EA8(__dst);
LABEL_15:
      sub_1DB262764(&v59, v58);
      goto LABEL_21;
    }

    if (v23)
    {
      goto LABEL_15;
    }

    v24 = sub_1DB134EA8(__dst);
    if (*(v24 + 16) != 2)
    {
      sub_1DB2628B4();
      swift_allocError();
      *v46 = 0xD00000000000001ELL;
      *(v46 + 8) = 0x80000001DB2D6BD0;
      *(v46 + 16) = 0;
      sub_1DB262764(&v59, v58);
      goto LABEL_33;
    }

    v25 = v15;
    v50 = v14;
    v51 = v49;
    v26 = *(v24 + 18);
    v27 = *(v24 + 32);
    v28 = *(v24 + 40);
    *&v56 = *(v24 + 24);
    v6 = v56;
    *(&v56 + 1) = v27;
    LOBYTE(v57) = v28;
    MEMORY[0x1EEE9AC00](v24);
    v49[-2] = &v56;
    sub_1DB262764(&v59, v58);
    v29 = v27;
    sub_1DB262884(v6, v27, v28);
    v30 = sub_1DB25F388(sub_1DB262824, &v49[-4], &unk_1F56DFE70);
    swift_arrayDestroy();
    if (v30)
    {
      sub_1DB26289C(v6, v27, v28);
      sub_1DB2628B4();
      swift_allocError();
      *v47 = 0xD000000000000015;
      *(v47 + 8) = 0x80000001DB2D6BB0;
      *(v47 + 16) = 0;
      goto LABEL_33;
    }

    v15 = v25;
    if ((v26 & 0x100) != 0)
    {
      v34 = v6;
      v35 = v29;
      v36 = v28;
LABEL_20:
      sub_1DB26289C(v34, v35, v36);
      v6 = v52;
      a2 = v53;
      v14 = v50;
      goto LABEL_21;
    }

    if (v28 <= 1)
    {
      v31 = v6;
      v32 = v29;
      v33 = v28 != 0;
LABEL_19:
      sub_1DB26289C(v31, v32, v33);
      v34 = 0;
      v35 = 0;
      v36 = 3;
      goto LABEL_20;
    }

    if (v28 == 2)
    {
      v31 = v6;
      v32 = v29;
      v33 = 2;
      goto LABEL_19;
    }

    v13 = v29;
    v14 = v50;
    if (v6 <= 2 && v6 ^ 1 | v13 && v6 ^ 2 | v13)
    {
      goto LABEL_36;
    }

    sub_1DB26289C(v6, v13, 3u);
    sub_1DB26289C(0, 0, 3u);
    v6 = v52;
    a2 = v53;
LABEL_21:
    v58[4] = v63;
    v58[5] = v64;
    v58[6] = v65;
    v58[7] = v66;
    v58[0] = v59;
    v58[1] = v60;
    v58[2] = v61;
    v58[3] = v62;
    v37 = *(v6 + 48);
    v56 = *(v6 + 32);
    v57 = v37;
    v38 = v54;
    v39 = sub_1DB25F52C(v54, a2, &v56);
    if (v40)
    {
      v41 = v39;
      v42 = v40;
      type metadata accessor for Statement();
      swift_allocObject();

      sub_1DB253534(v43, v41, v42);
      if (v5)
      {

        sub_1DB2627F4(&v59);
      }

      v44 = MEMORY[0x1E69E7CC0];
      sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

      Statement.run(_:)(v44);
      v11 = v68;

      sub_1DB2627F4(&v59);
      v6 = v52;
      a2 = v53;
    }

    else
    {
      v16 = *(v6 + 16);
      LOBYTE(v56) = 0;

      sub_1DB262764(&v59, v58);

      sub_1DB143ED0(&v56, v16, v6, v38, a2, &v59);
      sub_1DB2627F4(&v59);
      if (v5)
      {

        goto LABEL_34;
      }

      sub_1DB2627F4(&v59);
      v11 = v68;
    }

    ++v14;
    v15 += 128;
    if (v55 == v14)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_36:
  sub_1DB26289C(v6, v13, 3u);
  sub_1DB26289C(0, 0, 3u);
  sub_1DB2628B4();
  swift_allocError();
  *v48 = 0xD00000000000003ALL;
  *(v48 + 8) = 0x80000001DB2D6B70;
  *(v48 + 16) = 0;
LABEL_33:
  swift_willThrow();

LABEL_34:

  return sub_1DB2627F4(&v59);
}

uint64_t sub_1DB2602F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DB2BB4F4();

  strcpy(v14, "ALTER TABLE ");
  BYTE5(v14[1]) = 0;
  HIWORD(v14[1]) = -5120;
  v9 = sub_1DB2B995C(34, 0xE100000000000000, a1, a2);
  MEMORY[0x1E1283490](v9);

  MEMORY[0x1E1283490](0x20454D414E455220, 0xEB00000000204F54);
  v10 = sub_1DB2B995C(34, 0xE100000000000000, a3, a4);
  MEMORY[0x1E1283490](v10);

  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v11, v14[0], v14[1]);
  if (v4)
  {
  }

  v13 = MEMORY[0x1E69E7CC0];
  sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

  Statement.run(_:)(v13);
}

uint64_t sub_1DB2604A4(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v10 = sub_1DB146634();
  v8 = sub_1DB146634();
  sub_1DB1467B4(0xD000000000000012, 0x80000001DB2D1770, 1);
  sub_1DB1467B4(0x5F6E676965726F66, 0xEC0000007379656BLL, 0);
  sub_1DB2605C8(a2, a3, a1, a4);
  sub_1DB1467B4(0xD000000000000012, 0x80000001DB2D1770, v8);
  return sub_1DB1467B4(0x5F6E676965726F66, 0xEC0000007379656BLL, v10);
}

void sub_1DB2605C8(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = &v70;
  *&v70 = 1601203572;
  *(&v70 + 1) = 0xE400000000000000;
  MEMORY[0x1E1283490]();
  v9 = v70;
  v10 = a4[5];
  v82 = a4[4];
  v83 = v10;
  v11 = a4[7];
  v84 = a4[6];
  v85 = v11;
  v12 = a4[1];
  v78 = *a4;
  v79 = v12;
  v13 = a4[3];
  v80 = a4[2];
  v81 = v13;
  nullsub_1();
  v74 = v82;
  v75 = v83;
  v76 = v84;
  v77 = v85;
  v70 = v78;
  v71 = v79;
  v72 = v80;
  v73 = v81;
  sub_1DB260E40(a1, a2, v9, *(&v9 + 1), 1, &v70);
  if (v4)
  {
    goto LABEL_3;
  }

  sub_1DB2623E4(a1, a2, 1);
  sub_1DB2602F0(v9, *(&v9 + 1), a1, a2);

  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v14, 0xD000000000000018, 0x80000001DB2D6AF0);
  v15 = MEMORY[0x1E69E7CC0];
  sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

  v16 = Statement.run(_:)(v15);

  v17 = *(v16 + 16);
  os_unfair_lock_lock((v17 + 24));
  v60 = (v17 + 16);
  sqlite3_reset(*(v17 + 16));
  os_unfair_lock_unlock((v17 + 24));
  sub_1DB143044();
  v62 = *(v16 + 24);
  v18 = v15;
  v61 = v17;
  while (1)
  {
    if (qword_1EE13F098 != -1)
    {
      swift_once();
    }

    sub_1DB2BB294();
    if ((BYTE8(v70) & 1) != 0 || v70 != v62)
    {
      sub_1DB2BB2C4(&v68);
      if (v68)
      {
        goto LABEL_12;
      }

LABEL_64:

      if (*(v18 + 16))
      {
        sub_1DB2628B4();
        swift_allocError();
        *v59 = v18;
        *(v59 + 8) = 0;
        *(v59 + 16) = 1;
        swift_willThrow();
        return;
      }

LABEL_3:

      return;
    }

    os_unfair_lock_lock((v17 + 24));
    sub_1DB14A424(v60, &v70);
    os_unfair_lock_unlock((v17 + 24));
    if (v70 != 1)
    {
      goto LABEL_64;
    }

LABEL_12:
    v63 = v18;
    Statement.row.getter(&v70);
    v19 = *(&v70 + 1);
    v18 = v70;
    swift_retain_n();
    if (v19 >= 1)
    {
      v20 = 0;
      v21 = 0;
      v22 = (v15 + 32);
      v67 = v15;
      v23 = v8;
      while (1)
      {
        os_unfair_lock_lock((v18 + 24));
        if (v20 == 0x80000000)
        {
          __break(1u);
LABEL_63:
          __break(1u);
          os_unfair_lock_unlock(v24);
          sub_1DB15B294(0x80000000);
          MEMORY[0x1E1284A10](0x80000000);
          goto LABEL_64;
        }

        v25 = sqlite3_column_type(*(v18 + 16), v20);
        os_unfair_lock_unlock((v18 + 24));
        if (v25 > 2)
        {
          break;
        }

        if (v25 == 1)
        {
          os_unfair_lock_lock((v18 + 24));
          v31 = COERCE_DOUBLE(sqlite3_column_int64(*(v18 + 16), v20));
          os_unfair_lock_unlock((v18 + 24));
          v34 = MEMORY[0x1E69E7360];
          v35 = &protocol witness table for Int64;
          if (v21)
          {
            goto LABEL_49;
          }
        }

        else
        {
          if (v25 != 2)
          {
            goto LABEL_32;
          }

          os_unfair_lock_lock((v18 + 24));
          v33 = sqlite3_column_double(*(v18 + 16), v20);
          os_unfair_lock_unlock((v18 + 24));
          v31 = v33;
          v34 = MEMORY[0x1E69E63B0];
          v35 = &protocol witness table for Double;
          if (v21)
          {
            goto LABEL_49;
          }
        }

LABEL_39:
        v38 = v67[3];
        if (((v38 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
          goto LABEL_68;
        }

        v66 = v35;
        v64 = v23;
        v39 = v38 & 0xFFFFFFFFFFFFFFFELL;
        if (v39 <= 1)
        {
          v40 = 1;
        }

        else
        {
          v40 = v39;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
        v41 = swift_allocObject();
        v42 = (_swift_stdlib_malloc_size(v41) - 32) / 40;
        v41[2] = v40;
        v41[3] = 2 * v42;
        v43 = (v41 + 4);
        v44 = v67[3] >> 1;
        if (v67[2])
        {
          v45 = v67 + 4;
          if (v41 != v67 || v43 >= v45 + 40 * v44)
          {
            memmove(v41 + 4, v45, 40 * v44);
          }

          v67[2] = 0;
        }

        v22 = (v43 + 40 * v44);
        v21 = (v42 & 0x7FFFFFFFFFFFFFFFLL) - v44;

        v67 = v41;
        v23 = v64;
        v35 = v66;
LABEL_49:
        v46 = __OFSUB__(v21--, 1);
        if (v46)
        {
          goto LABEL_63;
        }

        ++v20;
        *v22 = v31;
        *(v22 + 1) = v23;
        v22[2] = 0.0;
        *(v22 + 3) = v34;
        *(v22 + 4) = v35;
        v22 += 5;
        if (v19 == v20)
        {
          goto LABEL_53;
        }
      }

      if (v25 == 3)
      {
        os_unfair_lock_lock((v18 + 24));
        if (!sqlite3_column_text(*(v18 + 16), v20))
        {
          goto LABEL_69;
        }

        v31 = COERCE_DOUBLE(sub_1DB2BAF14());
        v23 = v36;
        os_unfair_lock_unlock((v18 + 24));
        v34 = MEMORY[0x1E69E6158];
        v35 = &protocol witness table for String;
        if (v21)
        {
          goto LABEL_49;
        }

        goto LABEL_39;
      }

      if (v25 != 5)
      {
        if (v25 == 4)
        {
          v65 = sub_1DB138CA8();
          os_unfair_lock_lock((v18 + 24));
          v26 = *(v18 + 16);
          v27 = sqlite3_column_blob(v26, v20);
          if (v27 && (v28 = v27, (v29 = sqlite3_column_bytes(v26, v20)) != 0))
          {
            v30 = v29;
            if (v29 <= 0)
            {
              v31 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CD8, &unk_1DB2BCC50);
              v31 = COERCE_DOUBLE(swift_allocObject());
              v32 = _swift_stdlib_malloc_size(*&v31);
              *(*&v31 + 16) = v30;
              *(*&v31 + 24) = 2 * v32 - 64;
            }

            memcpy((*&v31 + 32), v28, v30);
          }

          else
          {
            v31 = MEMORY[0x1E69E7CC0];
          }

          os_unfair_lock_unlock((v18 + 24));
          v34 = &type metadata for Blob;
          v35 = v65;
          if (v21)
          {
            goto LABEL_49;
          }

          goto LABEL_39;
        }

LABEL_32:
        v68 = 0;
        v69 = 0xE000000000000000;
        sub_1DB2BB4F4();

        v68 = 0xD000000000000019;
        v69 = 0x80000001DB2D1D60;
        v37 = sub_1DB2BB8F4();
        MEMORY[0x1E1283490](v37);

        sub_1DB15B09C(v68, v69);
      }

      v23 = 0;
      v31 = 0.0;
      v34 = 0;
      v35 = 0;
      if (v21)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    }

    v21 = 0;
    v67 = v15;
    v23 = v8;
LABEL_53:

    v47 = v67;
    v48 = v67[3];
    if (v48 >= 2)
    {
      break;
    }

LABEL_56:
    v8 = v23;

    v68 = v47;
    sub_1DB25E77C(&v68, &v70);

    v51 = v70;
    v52 = v71;
    v53 = v72;
    if (*(&v70 + 1))
    {
      v54 = v63;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_1DB157FAC(0, *(v63 + 16) + 1, 1, v63);
      }

      v56 = *(v54 + 2);
      v55 = *(v54 + 3);
      v57 = v54;
      if (v56 >= v55 >> 1)
      {
        v57 = sub_1DB157FAC((v55 > 1), v56 + 1, 1, v54);
      }

      *(v57 + 2) = v56 + 1;
      v18 = v57;
      v58 = &v57[40 * v56];
      *(v58 + 2) = v51;
      *(v58 + 3) = v52;
      *(v58 + 8) = v53;
      v17 = v61;
      v15 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      sub_1DB25F298(v70, 0, v71, *(&v71 + 1), v72);
      v17 = v61;
      v15 = MEMORY[0x1E69E7CC0];
      v18 = v63;
    }
  }

  v49 = v48 >> 1;
  v46 = __OFSUB__(v49, v21);
  v50 = v49 - v21;
  if (!v46)
  {
    v47 = v67;
    v67[2] = v50;
    goto LABEL_56;
  }

LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
}

uint64_t sub_1DB260E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, __int128 *a6)
{
  v14 = a6[5];
  v83 = a6[4];
  v84 = v14;
  v15 = a6[7];
  v85 = a6[6];
  v86 = v15;
  v16 = a6[1];
  v79 = *a6;
  v80 = v16;
  v17 = a6[3];
  v81 = a6[2];
  v82 = v17;
  result = sub_1DB26B520(a1, a2);
  if (!v7)
  {
    v19 = result;
    sub_1DB26C774(a1, a2);
    v87 = 0;
    *&v67 = a1;
    *(&v67 + 1) = a2;
    *&v45 = v19;
    *(&v45 + 1) = v20;
    *&v68 = v19;
    *(&v68 + 1) = v20;
    *&v69[0] = a3;
    *(&v69[0] + 1) = a4;
    sub_1DB262CE4(v69);
    v74 = v69[4];
    v75 = v69[5];
    v76 = v69[6];
    v77 = v69[7];
    v70 = v69[0];
    v71 = v69[1];
    v72 = v69[2];
    v73 = v69[3];
    nullsub_1();
    v63 = v74;
    v64 = v75;
    v65 = v76;
    v66 = v77;
    v59 = v70;
    v60 = v71;
    v61 = v72;
    v62 = v73;

    sub_1DB261510(&v59, &v47);
    v78[4] = v63;
    v78[5] = v64;
    v78[6] = v65;
    v78[7] = v66;
    v78[0] = v59;
    v78[1] = v60;
    v78[2] = v61;
    v78[3] = v62;
    sub_1DB262CF8(v78);
    v67 = v47;
    v68 = v48;
    sub_1DB261510(a6, &v59);

    v21 = *(&v59 + 1);
    v22 = *(v6 + 16);
    v42 = v59;
    v43 = *(&v60 + 1);
    v44 = v60;
    v23 = sub_1DB263264(a5 & 1);
    v25 = v24;
    type metadata accessor for Statement();
    swift_allocObject();

    v27 = v87;
    sub_1DB253534(v26, v23, v25);
    v87 = v27;
    if (v27)
    {

LABEL_6:
    }

    v41 = v21;
    v28 = MEMORY[0x1E69E7CC0];
    sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

    v29 = v87;
    Statement.run(_:)(v28);
    v87 = v29;
    if (v29)
    {

      goto LABEL_6;
    }

    *&v67 = v42;
    *(&v67 + 1) = v41;
    *&v68 = v44;
    *(&v68 + 1) = v43;
    v30 = v87;
    sub_1DB2621CC(&v67);
    if (v30)
    {
    }

    else
    {
      v63 = v83;
      v64 = v84;
      v65 = v85;
      v66 = v86;
      v59 = v79;
      v60 = v80;
      v61 = v81;
      v62 = v82;
      if (sub_1DB262D60(&v59) == 1 || (v51 = v63, v52 = v64, v53 = v65, v54 = v66, v47 = v59, v48 = v60, v49 = v61, v50 = v62, sub_1DB262758(&v47) != 1))
      {
        *&v47 = a1;
        *(&v47 + 1) = a2;
        v48 = v45;
        v55 = v42;
        v56 = v41;
        v57 = v44;
        v58 = v43;
        v35 = sub_1DB263A3C(&v55);
        v36 = v22;
        v38 = v37;
        swift_allocObject();

        sub_1DB253534(v36, v35, v38);
        v39 = MEMORY[0x1E69E7CC0];
        sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

        Statement.run(_:)(v39);
      }

      else
      {
        sub_1DB134EA8(&v47);
        sub_1DB261510(&v79, &v55);

        v46[4] = v55;
        v46[5] = v56;
        v46[6] = v57;
        v46[7] = v58;
        v46[0] = v42;
        v46[1] = v41;
        v46[2] = v44;
        v46[3] = v43;
        v31 = sub_1DB263A3C(v46);
        v32 = v22;
        v34 = v33;
        swift_allocObject();

        sub_1DB253534(v32, v31, v34);
        v40 = MEMORY[0x1E69E7CC0];
        sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

        Statement.run(_:)(v40);
      }
    }
  }

  return result;
}

uint64_t sub_1DB261510@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[5];
  v5 = a1[3];
  v187 = a1[4];
  v188 = v4;
  v6 = a1[7];
  v7 = a1[5];
  v189 = a1[6];
  v190 = v6;
  v8 = a1[1];
  v184[0] = *a1;
  v184[1] = v8;
  v9 = a1[3];
  v185 = a1[2];
  v186 = v9;
  v10 = a1[7];
  v197 = v189;
  v198 = v10;
  v195 = v187;
  v196 = v7;
  v193 = v185;
  v194 = v5;
  v12 = *v2;
  v11 = v2[1];
  v13 = v2[2];
  v14 = v2[3];
  v191 = v184[0];
  v192 = v8;
  if (sub_1DB262D60(&v191) == 1)
  {
    *a2 = v12;
    a2[1] = v11;
    a2[2] = v13;
    a2[3] = v14;

LABEL_3:
  }

  v161 = v13;
  v183[4] = v195;
  v183[5] = v196;
  v183[6] = v197;
  v183[7] = v198;
  v183[0] = v191;
  v183[1] = v192;
  v183[2] = v193;
  v183[3] = v194;
  v16 = sub_1DB262758(v183);
  v17 = sub_1DB134EA8(v183);
  v154 = v14;
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v149 = v12;
      v150 = v11;
      v151 = a2;
      v18 = *v17;
      v155 = v17[1];
      v19 = v17[2];
      v165 = v17[3];
      v166 = v19;
      v20 = *(v161 + 16);
      if (v20)
      {
        v177 = MEMORY[0x1E69E7CC0];

        sub_1DB1387A0(0, v20, 0);
        v21 = v177;
        v22 = (v161 + 32);
        v159 = &v172 + 7;
        do
        {
          v164 = v21;
          v23 = v22[3];
          v25 = *v22;
          v24 = v22[1];
          *v181 = v22[2];
          *&v181[16] = v23;
          v179 = v25;
          v180 = v24;
          v26 = v22[4];
          v27 = v22[5];
          v28 = v22[7];
          *&v181[64] = v22[6];
          *&v181[80] = v28;
          *&v181[32] = v26;
          *&v181[48] = v27;
          if (__PAIR128__(v155, v18) == v179 || (sub_1DB2BB924() & 1) != 0)
          {
            v30 = *(&v180 + 1);
            v29 = *v181;
            v31 = v181[8];
            LODWORD(v161) = BYTE3(v180);
            LODWORD(v162) = BYTE2(v180);
            DWORD2(v160) = v180;
            v32 = *&v181[64];
            v33 = v159;
            *(v159 + 2) = *&v181[48];
            v33[3] = v32;
            v33[4] = *&v181[80];
            v34 = *&v181[32];
            *v33 = *&v181[16];
            v33[1] = v34;
            v35 = v165;

            v163 = v30;
            sub_1DB262884(v30, v29, v31);
            result = sub_1DB1446A4(&v181[16], &v167, &qword_1ECC28D20, &unk_1DB2CD150);
            v36 = v166;
          }

          else
          {
            v35 = *(&v179 + 1);
            v36 = v179;
            DWORD2(v160) = v180;
            LODWORD(v162) = BYTE2(v180);
            LODWORD(v161) = BYTE3(v180);
            LODWORD(v160) = DWORD1(v180);
            v29 = *v181;
            v163 = *(&v180 + 1);
            v31 = v181[8];
            v174 = *&v181[41];
            v175 = *&v181[57];
            v176[0] = *&v181[73];
            *(v176 + 15) = *&v181[88];
            v172 = *&v181[9];
            v173 = *&v181[25];
            result = sub_1DB13AC2C(&v179, &v167);
          }

          v37 = v35;
          *(v171 + 15) = *(v176 + 15);
          v170 = v175;
          v171[0] = v176[0];
          v168 = v173;
          v169 = v174;
          v167 = v172;
          v21 = v164;
          v177 = v164;
          v39 = *(v164 + 16);
          v38 = *(v164 + 24);
          if (v39 >= v38 >> 1)
          {
            v164 = v36;
            v158 = v37;
            result = sub_1DB1387A0((v38 > 1), v39 + 1, 1);
            v37 = v158;
            v21 = v177;
          }

          *(v21 + 16) = v39 + 1;
          v40 = v21 + (v39 << 7);
          *(v40 + 32) = v36;
          *(v40 + 40) = v37;
          *(v40 + 48) = WORD4(v160);
          *(v40 + 50) = v162;
          *(v40 + 51) = v161;
          *(v40 + 52) = v160;
          *(v40 + 56) = v163;
          *(v40 + 64) = v29;
          *(v40 + 72) = v31;
          v41 = v167;
          *(v40 + 89) = v168;
          *(v40 + 73) = v41;
          v42 = v169;
          v43 = v170;
          v44 = v171[0];
          *(v40 + 152) = *(v171 + 15);
          *(v40 + 137) = v44;
          *(v40 + 121) = v43;
          *(v40 + 105) = v42;
          v22 += 8;
          --v20;
        }

        while (v20);
        v14 = v154;
      }

      else
      {

        v21 = MEMORY[0x1E69E7CC0];
      }

      v93 = *(v14 + 16);
      v94 = MEMORY[0x1E69E7CC0];
      if (v93)
      {
        v164 = v21;
        *&v172 = MEMORY[0x1E69E7CC0];
        v152 = v93;
        result = sub_1DB138780(0, v93, 0);
        v95 = v152;
        if (!*(v14 + 16))
        {
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
          return result;
        }

        v96 = 0;
        v97 = v172;
        v153 = v14 + 32;
        v98 = 1;
        while (1)
        {
          v162 = v97;
          v163 = v98;
          v99 = v153 + 72 * v96;
          v100 = *(v99 + 64);
          v101 = *(v99 + 16);
          v102 = *(v99 + 48);
          *v181 = *(v99 + 32);
          *&v181[16] = v102;
          v180 = v101;
          v179 = *v99;
          *&v181[32] = v100;
          v103 = *&v181[8];
          v159 = v101;
          v160 = v102;
          v157 = v179;
          v158 = *(&v101 + 1);
          v104 = *(*&v181[8] + 16);
          v161 = v100;
          v156 = *(&v179 + 1);
          if (v104)
          {

            sub_1DB262BE0(&v179, &v167);
            *&v167 = v94;
            sub_1DB138470(0, v104, 0);
            v105 = v155;
            v106 = v167;
            v107 = (v103 + 40);
            do
            {
              v109 = *(v107 - 1);
              v108 = *v107;
              v110 = v109 == v18 && v108 == v105;
              if (v110 || (sub_1DB2BB924() & 1) != 0)
              {
                v108 = v165;
                v109 = v166;
              }

              *&v167 = v106;
              v112 = *(v106 + 16);
              v111 = *(v106 + 24);
              if (v112 >= v111 >> 1)
              {
                sub_1DB138470((v111 > 1), v112 + 1, 1);
                v105 = v155;
                v106 = v167;
              }

              *(v106 + 16) = v112 + 1;
              v113 = v106 + 16 * v112;
              *(v113 + 32) = v109;
              *(v113 + 40) = v108;
              v107 += 2;
              --v104;
            }

            while (v104);
            result = sub_1DB262C3C(&v179);
            v14 = v154;
            v94 = MEMORY[0x1E69E7CC0];
            v95 = v152;
          }

          else
          {
            v114 = v95;

            v95 = v114;
            v106 = v94;
          }

          v115 = v181[0];
          v97 = v162;
          *&v172 = v162;
          v117 = *(v162 + 16);
          v116 = *(v162 + 24);
          if (v117 >= v116 >> 1)
          {
            result = sub_1DB138780((v116 > 1), v117 + 1, 1);
            v95 = v152;
            v97 = v172;
          }

          *(v97 + 16) = v117 + 1;
          v118 = v97 + 72 * v117;
          v119 = v156;
          *(v118 + 32) = v157;
          *(v118 + 40) = v119;
          v120 = v158;
          *(v118 + 48) = v159;
          *(v118 + 56) = v120;
          *(v118 + 64) = v115;
          LODWORD(v120) = *(&v167 + 3);
          *(v118 + 65) = v167;
          *(v118 + 68) = v120;
          v121 = *(&v160 + 1);
          v122 = v160;
          *(v118 + 72) = v106;
          *(v118 + 80) = __PAIR128__(v121, v122);
          *(v118 + 96) = v161;
          v96 = v163;
          if (v163 == v95)
          {
            break;
          }

          v98 = v163 + 1;
          if (v163 >= *(v14 + 16))
          {
            goto LABEL_88;
          }
        }

        v21 = v164;
      }

      else
      {
        v97 = MEMORY[0x1E69E7CC0];
      }

      v142 = v151;
      *v151 = v149;
      v142[1] = v150;
      v142[2] = v21;
      v142[3] = v97;
      return result;
    }

    v71 = *v17;
    v72 = v17[1];
    v73 = *(v14 + 16);
    if (v73)
    {
      v151 = a2;
      sub_1DB1446A4(v184, &v179, &qword_1ECC28D18, &qword_1DB2CD148);
      v182 = MEMORY[0x1E69E7CC0];

      v162 = v71;
      sub_1DB138780(0, v73, 0);
      v74 = v182;
      v75 = v14 + 32;
      v163 = v72;
      do
      {
        v76 = v74;
        v166 = v73;
        v78 = *(v75 + 32);
        v77 = *(v75 + 48);
        v79 = *(v75 + 64);
        v168 = *(v75 + 16);
        v80 = *v75;
        *&v171[0] = v79;
        v169 = v78;
        v170 = v77;
        v167 = v80;
        v82 = *(&v168 + 1);
        v81 = v168;
        sub_1DB1446A4(v184, &v179, &qword_1ECC28D18, &qword_1DB2CD148);
        sub_1DB262BE0(&v167, &v179);
        if (sub_1DB23D950(1601203572, 0xE400000000000000, v71, v72))
        {
          *&v179 = 1601203572;
          *(&v179 + 1) = 0xE400000000000000;
          MEMORY[0x1E1283490](v81, v82);
          v71 = v162;
          v82 = *(&v179 + 1);
          v165 = v179;
        }

        else if (sub_1DB23D950(1601203572, 0xE400000000000000, v167, *(&v167 + 1)))
        {
          v179 = __PAIR128__(v82, v81);
          *&v172 = 1601203572;
          *(&v172 + 1) = 0xE400000000000000;
          v177 = 0;
          v178 = 0xE000000000000000;
          v147 = sub_1DB143508();
          v148 = v147;
          v146[1] = v147;
          v146[0] = MEMORY[0x1E69E6158];
          v71 = v162;
          v165 = sub_1DB2BB3D4();
          v82 = v83;
        }

        else
        {
          v165 = v81;
        }

        v85 = *(&v170 + 1);
        v84 = *&v171[0];
        v86 = *(&v169 + 1);
        v164 = v170;
        v87 = v169;

        sub_1DB262C3C(&v167);
        v74 = v76;
        v182 = v76;
        v89 = *(v76 + 16);
        v88 = *(v76 + 24);
        if (v89 >= v88 >> 1)
        {
          sub_1DB138780((v88 > 1), v89 + 1, 1);
          v71 = v162;
          v74 = v182;
        }

        *(v74 + 16) = v89 + 1;
        v90 = v74 + 72 * v89;
        v72 = v163;
        *(v90 + 32) = v71;
        *(v90 + 40) = v72;
        *(v90 + 48) = v165;
        *(v90 + 56) = v82;
        *(v90 + 64) = v87;
        v91 = *(&v179 + 3);
        *(v90 + 65) = v179;
        *(v90 + 68) = v91;
        v92 = v164;
        *(v90 + 72) = v86;
        *(v90 + 80) = v92;
        *(v90 + 88) = v85;
        *(v90 + 96) = v84;
        v75 += 72;
        v73 = v166 - 1;
      }

      while (v166 != 1);
      a2 = v151;
      result = v161;
    }

    else
    {
      sub_1DB1446A4(v184, &v179, &qword_1ECC28D18, &qword_1DB2CD148);

      v74 = MEMORY[0x1E69E7CC0];
    }

    *a2 = v71;
    a2[1] = v72;
    a2[2] = result;
    a2[3] = v74;
  }

  else
  {
    if (!v16)
    {
      *&v179 = 0xD000000000000022;
      *(&v179 + 1) = 0x80000001DB2D6CB0;
      v180 = 0u;
      *v181 = 0u;
      v181[16] = 9;
      sub_1DB158B68();
      *a2 = v12;
      a2[1] = v11;
      a2[2] = v161;
      a2[3] = v14;

      goto LABEL_3;
    }

    v151 = a2;
    v45 = v11;
    v46 = *v17;
    v47 = v17[1];
    v48 = v161;
    v49 = *(v161 + 16);
    v149 = v12;
    v150 = v45;

    if (v49)
    {
      v50 = 0;
      v51 = v161 + 32;
      v52 = MEMORY[0x1E69E7CC0];
LABEL_20:
      v53 = (v51 + (v50 << 7));
      v54 = v50;
      while (v54 < *(v48 + 16))
      {
        v55 = v53[3];
        v57 = *v53;
        v56 = v53[1];
        *v181 = v53[2];
        *&v181[16] = v55;
        v179 = v57;
        v180 = v56;
        v58 = v53[4];
        v59 = v53[5];
        v60 = v53[7];
        *&v181[64] = v53[6];
        *&v181[80] = v60;
        *&v181[32] = v58;
        *&v181[48] = v59;
        result = v179;
        if (v179 != __PAIR128__(v47, v46))
        {
          result = sub_1DB2BB924();
          if ((result & 1) == 0)
          {
            sub_1DB13AC2C(&v179, &v167);
            result = swift_isUniquelyReferenced_nonNull_native();
            *&v172 = v52;
            if ((result & 1) == 0)
            {
              result = sub_1DB1387A0(0, *(v52 + 16) + 1, 1);
              v52 = v172;
            }

            v61 = v52;
            v62 = *(v52 + 16);
            v63 = *(v61 + 24);
            if (v62 >= v63 >> 1)
            {
              result = sub_1DB1387A0((v63 > 1), v62 + 1, 1);
              v61 = v172;
            }

            v50 = v54 + 1;
            *(v61 + 16) = v62 + 1;
            v64 = (v61 + (v62 << 7));
            v65 = v179;
            v66 = v180;
            v67 = *&v181[16];
            v64[4] = *v181;
            v64[5] = v67;
            v64[2] = v65;
            v64[3] = v66;
            v68 = *&v181[32];
            v69 = *&v181[48];
            v70 = *&v181[80];
            v64[8] = *&v181[64];
            v64[9] = v70;
            v64[6] = v68;
            v64[7] = v69;
            v110 = v49 - 1 == v54;
            v14 = v154;
            v48 = v161;
            v52 = v61;
            if (v110)
            {
              goto LABEL_69;
            }

            goto LABEL_20;
          }
        }

        ++v54;
        v53 += 8;
        if (v49 == v54)
        {
          v14 = v154;
          goto LABEL_69;
        }
      }

      goto LABEL_89;
    }

    v52 = MEMORY[0x1E69E7CC0];
LABEL_69:
    v164 = v52;
    v123 = *(v14 + 16);
    if (v123)
    {
      v124 = 0;
      v125 = v14 + 32;
      v166 = *(v14 + 16);
      v162 = v123 - 1;
      v165 = MEMORY[0x1E69E7CC0];
      v163 = v14 + 32;
LABEL_71:
      v126 = v125 + 72 * v124;
      v127 = v124;
      while (v127 < *(v154 + 16))
      {
        v128 = *(v126 + 48);
        v129 = *(v126 + 64);
        v130 = *(v126 + 16);
        *v181 = *(v126 + 32);
        v131 = *v126;
        *&v181[32] = v129;
        *&v181[16] = v128;
        v179 = v131;
        v180 = v130;
        v124 = v127 + 1;
        v132 = *&v181[8];
        *&v172 = v46;
        *(&v172 + 1) = v47;
        MEMORY[0x1EEE9AC00](result);
        v147 = &v172;
        sub_1DB262BE0(&v179, &v167);

        v133 = sub_1DB25F2DC(sub_1DB1474D8, v146, v132);

        if ((v133 & 1) == 0)
        {
          v134 = v165;
          result = swift_isUniquelyReferenced_nonNull_native();
          v177 = v134;
          if ((result & 1) == 0)
          {
            result = sub_1DB138780(0, *(v165 + 16) + 1, 1);
            v165 = v177;
          }

          v136 = *(v165 + 16);
          v135 = *(v165 + 24);
          if (v136 >= v135 >> 1)
          {
            result = sub_1DB138780((v135 > 1), v136 + 1, 1);
            v165 = v177;
          }

          v137 = v165;
          *(v165 + 16) = v136 + 1;
          v138 = v137 + 72 * v136;
          *(v138 + 32) = v179;
          v139 = v180;
          v140 = *v181;
          v141 = *&v181[16];
          *(v138 + 96) = *&v181[32];
          *(v138 + 64) = v140;
          *(v138 + 80) = v141;
          *(v138 + 48) = v139;
          v125 = v163;
          if (v162 != v127)
          {
            goto LABEL_71;
          }

          goto LABEL_87;
        }

        result = sub_1DB262C3C(&v179);
        v126 += 72;
        ++v127;
        if (v166 == v124)
        {
          goto LABEL_87;
        }
      }

      goto LABEL_90;
    }

    v165 = MEMORY[0x1E69E7CC0];
LABEL_87:
    v143 = v151;
    v144 = v150;
    *v151 = v149;
    v143[1] = v144;
    v145 = v165;
    v143[2] = v164;
    v143[3] = v145;
  }

  return result;
}

uint64_t sub_1DB2621CC(uint64_t result)
{
  v2 = *(result + 24);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (v2 + 32);
    while (v4 < *(v2 + 16))
    {
      v7 = v5[2];
      v6 = v5[3];
      v8 = *(v5 + 8);
      v19 = v5[1];
      v9 = *v5;
      v22 = v8;
      v20 = v7;
      v21 = v6;
      v18 = v9;
      v10 = v19;
      v11 = v9;
      sub_1DB262BE0(&v18, v16);
      if (sub_1DB2BAE94() >= 65)
      {
        sub_1DB262C90();
        swift_allocError();
        *v15 = v10;
        v15[1] = v11;
        swift_willThrow();

        return sub_1DB262C3C(&v18);
      }

      v16[2] = v20;
      v16[3] = v21;
      v17 = v22;
      v16[0] = v18;
      v16[1] = v19;
      v12 = IndexDefinition.toSQL(ifNotExists:)(0);
      sub_1DB262C3C(&v18);
      type metadata accessor for Statement();
      swift_allocObject();

      sub_1DB253534(v13, v12._countAndFlagsBits, v12._object);
      if (v1)
      {
      }

      v14 = MEMORY[0x1E69E7CC0];
      sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

      Statement.run(_:)(v14);
      ++v4;

      v5 = (v5 + 72);
      if (v3 == v4)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DB2623E4(uint64_t a1, uint64_t a2, char a3)
{
  sub_1DB2BB4F4();

  if (a3)
  {
    v7 = 0x5453495845204649;
  }

  else
  {
    v7 = 0;
  }

  if (a3)
  {
    v8 = 0xE900000000000053;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  MEMORY[0x1E1283490](v7, v8);

  MEMORY[0x1E1283490](32, 0xE100000000000000);
  v9 = sub_1DB2B995C(34, 0xE100000000000000, a1, a2);
  MEMORY[0x1E1283490](v9);

  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v10, 0x42415420504F5244, 0xEB0000000020454CLL);
  if (v3)
  {
  }

  v12 = MEMORY[0x1E69E7CC0];
  sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

  Statement.run(_:)(v12);
}

const char *sub_1DB262590()
{
  sub_1DB2BB4F4();

  v1 = *(*(v0 + 16) + 16);
  os_unfair_lock_lock((v1 + 24));
  result = sqlite3_db_filename(*(v1 + 16), 0);
  if (result)
  {
    v3 = sub_1DB2BAF04();
    v5 = v4;
    os_unfair_lock_unlock((v1 + 24));
    MEMORY[0x1E1283490](v3, v5);

    return 0xD000000000000015;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SchemaChanger.deinit()
{

  return v0;
}

uint64_t SchemaChanger.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DB26279C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DB2BB924() & 1;
  }
}

uint64_t sub_1DB262824(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v4 = *(v2 + 16);
  v8 = *a1;
  v9 = v3;
  v6 = *v2;
  v7 = v4;
  return _s19OnDeviceStorageCore12LiteralValueO2eeoiySbAC_ACtFZ_0(&v8, &v6) & 1;
}

uint64_t sub_1DB262884(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1DB26289C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

unint64_t sub_1DB2628B4()
{
  result = qword_1ECC28D08;
  if (!qword_1ECC28D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28D08);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19OnDeviceStorageCore12LiteralValueO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_19OnDeviceStorageCore16ColumnDefinitionV10ForeignKeyVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1DB262A70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40) >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1DB262AC0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 120) = 0;
    result = 0.0;
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
      *(a1 + 128) = 1;
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
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
      *(a1 + 40) = 4 * -a2;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      return result;
    }

    *(a1 + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DB262C90()
{
  result = qword_1ECC28D10;
  if (!qword_1ECC28D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28D10);
  }

  return result;
}

uint64_t sub_1DB262CF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28D18, &qword_1DB2CD148);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DB262D60(uint64_t a1)
{
  if ((*(a1 + 40) >> 2) > 0x80000000)
  {
    return -(*(a1 + 40) >> 2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB262D78(unint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v3 = a2;
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      v6 = sub_1DB2B995C(39, 0xE100000000000000, a1, a2);
      MEMORY[0x1E1283490](v6);

      v5 = 88;
      v3 = 0xE100000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
      v9 = 1280070990;
      v10 = a1 > 2;
      v11 = a1 ^ 3 | a2;
      v12 = 0xEC000000454D4954;
      v13 = a1 ^ 4 | a2;
      v14 = 0xEC00000045544144;
      v15 = v13 == 0;
      if (v13)
      {
        v16 = 0xD000000000000011;
      }

      else
      {
        v16 = 0x5F544E4552525543;
      }

      if (!v15)
      {
        v14 = 0x80000001DB2D46C0;
      }

      v17 = v11 == 0;
      if (v11)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0x5F544E4552525543;
      }

      if (!v17)
      {
        v12 = v14;
      }

      v19 = a1 ^ 1 | a2;
      v20 = 0xE400000000000000;
      v21 = v19 == 0;
      if (v19)
      {
        v22 = 0x45534C4146;
      }

      else
      {
        v22 = 1163219540;
      }

      if (!v21)
      {
        v20 = 0xE500000000000000;
      }

      if (a1 | a2)
      {
        v9 = v22;
        v8 = v20;
      }

      if (a1 <= 2)
      {
        v5 = v9;
      }

      else
      {
        v5 = v18;
      }

      if (v10)
      {
        v3 = v12;
      }

      else
      {
        v3 = v8;
      }
    }
  }

  else if (a3)
  {
    v5 = sub_1DB2B995C(39, 0xE100000000000000, a1, a2);
    v3 = v7;
  }

  else
  {

    v5 = a1;
  }

  MEMORY[0x1E1283490](v5, v3);
}

uint64_t sub_1DB262F30()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  v5 = *(v0 + 18);
  v6 = *(v1 + 19);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 56);
  v11 = sub_1DB2B995C(34, 0xE100000000000000, v2, v3);
  v12 = *&aInteger_2[8 * v5];
  v35 = v11;
  v36 = v13;
  v14 = qword_1DB2CDB90[v5];
  v37 = v12;
  v38 = v14;
  if (v9 < 3 || v7 | v8)
  {
    sub_1DB262884(v7, v8, v9);
    sub_1DB26289C(v7, v8, v9);
    sub_1DB26289C(0, 0, 3u);
    MEMORY[0x1E1283490](0x20544C5541464544, 0xE800000000000000);
    sub_1DB262D78(v7, v8, v9);
    v15 = 0xE000000000000000;
  }

  else
  {
    sub_1DB26289C(v7, v8, 3u);
    sub_1DB26289C(0, 0, 3u);
    v15 = 0;
  }

  v39 = 0;
  v40 = v15;
  if (v4 == 2)
  {
    v16 = 0;
    v17 = 0;
  }

  else
  {
    sub_1DB26678C();
  }

  v41 = v16;
  v42 = v17;
  v18 = 0x4C4C554E20544F4ELL;
  if (v6)
  {
    v18 = 0;
  }

  v19 = 0xE800000000000000;
  if (v6)
  {
    v19 = 0;
  }

  v43 = v18;
  v44 = v19;
  if (v10)
  {
    result = sub_1DB266A48();
  }

  else
  {
    result = 0;
    v21 = 0;
  }

  v22 = 0;
  v45 = result;
  v46 = v21;
  v23 = MEMORY[0x1E69E7CC0];
LABEL_15:
  if (v22 <= 6)
  {
    v24 = 6;
  }

  else
  {
    v24 = v22;
  }

  v25 = v24 + 1;
  v26 = 16 * v22 + 40;
  while (1)
  {
    if (v22 == 6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28D28, &unk_1DB2CD1F8);
      swift_arrayDestroy();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
      sub_1DB1688F0(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60, MEMORY[0x1E69E6310]);
      v33 = sub_1DB2BAD24();

      return v33;
    }

    if (v25 == ++v22)
    {
      break;
    }

    v27 = v26 + 16;
    v28 = *&v34[v26];
    v26 += 16;
    if (v28)
    {
      v29 = *&v34[v27 - 24];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1DB1572F0(0, *(v23 + 16) + 1, 1, v23);
        v23 = result;
      }

      v31 = *(v23 + 16);
      v30 = *(v23 + 24);
      if (v31 >= v30 >> 1)
      {
        result = sub_1DB1572F0((v30 > 1), v31 + 1, 1, v23);
        v23 = result;
      }

      *(v23 + 16) = v31 + 1;
      v32 = v23 + 16 * v31;
      *(v32 + 32) = v29;
      *(v32 + 40) = v28;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB263264(char a1)
{
  v2 = v1[2];
  v3 = *(v2 + 16);
  if (v3)
  {
    v5 = *v1;
    v4 = v1[1];
    v35 = xmmword_1DB2CD160;
    v6 = 0x5241524F504D4554;
    if ((a1 & 1) == 0)
    {
      v6 = 0;
    }

    v7 = 0xE900000000000059;
    if ((a1 & 1) == 0)
    {
      v7 = 0;
    }

    v36 = v6;
    v37 = v7;
    v38 = xmmword_1DB2CD170;
    v39 = v5;
    v40 = v4;
    v41 = xmmword_1DB2CD180;
    v32 = MEMORY[0x1E69E7CC0];

    sub_1DB138470(0, v3, 0);
    v8 = v32;
    v9 = v2 + 32;
    do
    {
      v10 = sub_1DB262F30();
      v33 = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        v15 = v10;
        v16 = v11;
        sub_1DB138470((v12 > 1), v13 + 1, 1);
        v11 = v16;
        v10 = v15;
        v8 = v33;
      }

      *(v8 + 16) = v13 + 1;
      v14 = v8 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      v9 += 128;
      --v3;
    }

    while (v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
    sub_1DB1688F0(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60, MEMORY[0x1E69E6310]);
    v17 = sub_1DB2BAD24();
    v19 = v18;

    v21 = 0;
    v42 = v17;
    v43 = v19;
    v44 = xmmword_1DB2CD190;
    v22 = MEMORY[0x1E69E7CC0];
LABEL_11:
    if (v21 <= 7)
    {
      v23 = 7;
    }

    else
    {
      v23 = v21;
    }

    v24 = v23 + 1;
    v25 = 16 * v21 + 40;
    while (1)
    {
      if (v21 == 7)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28D28, &unk_1DB2CD1F8);
        swift_arrayDestroy();
        v3 = sub_1DB2BAD24();

        return v3;
      }

      if (v24 == ++v21)
      {
        break;
      }

      v26 = v25 + 16;
      v27 = *&v34[v25];
      v25 += 16;
      if (v27)
      {
        v28 = *&v34[v26 - 24];

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1DB1572F0(0, *(v22 + 16) + 1, 1, v22);
          v22 = result;
        }

        v30 = *(v22 + 16);
        v29 = *(v22 + 24);
        if (v30 >= v29 >> 1)
        {
          result = sub_1DB1572F0((v29 > 1), v30 + 1, 1, v22);
          v22 = result;
        }

        *(v22 + 16) = v30 + 1;
        v31 = v22 + 16 * v30;
        *(v31 + 32) = v28;
        *(v31 + 40) = v27;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    sub_1DB15B09C(0xD000000000000024, 0x80000001DB2D6D10);
    return v3;
  }

  return result;
}

Swift::String __swiftcall IndexDefinition.toSQL(ifNotExists:)(Swift::Bool ifNotExists)
{
  v56 = *(v1 + 8);
  v57 = *v1;
  v54 = *(v1 + 24);
  v55 = *(v1 + 16);
  v52 = *(v1 + 32);
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v58 = *(v1 + 56);
  v4 = *(v2 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v51 = *(v1 + 48);
    v6 = *(v1 + 64);
    v77 = MEMORY[0x1E69E7CC0];
    sub_1DB138470(0, v4, 0);
    v7 = (v2 + 40);
    v5 = v77;
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;

      v10 = sub_1DB2B995C(34, 0xE100000000000000, v8, v9);
      v12 = v11;
      if (v6 && *(v6 + 16) && (v13 = sub_1DB141B30(v8, v9), (v14 & 1) != 0))
      {
        v15 = *(*(v6 + 56) + v13);
        v75 = 32;
        v76 = 0xE100000000000000;
        if (v15)
        {
          v16 = 1129530692;
        }

        else
        {
          v16 = 4412225;
        }

        if (v15)
        {
          v17 = 0xE400000000000000;
        }

        else
        {
          v17 = 0xE300000000000000;
        }

        MEMORY[0x1E1283490](v16, v17);

        v18 = v75;
        v19 = v76;
      }

      else
      {
        v18 = 0;
        v19 = 0xE000000000000000;
      }

      v75 = v10;
      v76 = v12;

      MEMORY[0x1E1283490](v18, v19);

      v20 = v10;
      v77 = v5;
      v22 = *(v5 + 16);
      v21 = *(v5 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1DB138470((v21 > 1), v22 + 1, 1);
        v5 = v77;
      }

      *(v5 + 16) = v22 + 1;
      v23 = v5 + 16 * v22;
      *(v23 + 32) = v20;
      *(v23 + 40) = v12;
      v7 += 2;
      --v4;
    }

    while (v4);
    v3 = v51;
  }

  v75 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
  sub_1DB1688F0(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60, MEMORY[0x1E69E6310]);
  v24 = sub_1DB2BAD24();
  v26 = v25;

  v60 = xmmword_1DB2CD160;
  v27 = 0x455551494E55;
  if (v52)
  {
    v28 = 0xE600000000000000;
  }

  else
  {
    v27 = 0;
    v28 = 0;
  }

  v61 = v27;
  v62 = v28;
  v63 = xmmword_1DB2CD1A0;
  v29 = 0x4520544F4E204649;
  if (!ifNotExists)
  {
    v29 = 0;
  }

  v30 = 0xED00005354534958;
  if (!ifNotExists)
  {
    v30 = 0;
  }

  v64 = v29;
  v65 = v30;
  v66 = sub_1DB2B995C(34, 0xE100000000000000, v55, v54);
  v67 = v31;
  v68 = xmmword_1DB2CD1B0;
  v69 = sub_1DB2B995C(34, 0xE100000000000000, v57, v56);
  v70 = v32;
  v75 = 40;
  v76 = 0xE100000000000000;
  MEMORY[0x1E1283490](v24, v26);

  isUniquelyReferenced_nonNull_native = MEMORY[0x1E1283490](41, 0xE100000000000000);
  v71 = 40;
  v72 = 0xE100000000000000;
  v34 = v58;
  if (v58)
  {
    v75 = 0x204552454857;
    v76 = 0xE600000000000000;
    isUniquelyReferenced_nonNull_native = MEMORY[0x1E1283490](v3);
    v3 = 0x204552454857;
    v35 = 0xE600000000000000;
  }

  else
  {
    v35 = 0;
  }

  v36 = 0;
  v73 = v3;
  v74 = v35;
  v37 = MEMORY[0x1E69E7CC0];
LABEL_29:
  if (v36 <= 9)
  {
    v38 = 9;
  }

  else
  {
    v38 = v36;
  }

  v39 = v38 + 1;
  v40 = 16 * v36 + 40;
  while (1)
  {
    if (v36 == 9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28D28, &unk_1DB2CD1F8);
      swift_arrayDestroy();
      v75 = v37;
      v47 = sub_1DB2BAD24();
      v49 = v48;

      isUniquelyReferenced_nonNull_native = v47;
      v34 = v49;
      goto LABEL_43;
    }

    if (v39 == ++v36)
    {
      break;
    }

    v41 = v40 + 16;
    v42 = *&v59[v40];
    v40 += 16;
    if (v42)
    {
      v43 = *&v59[v41 - 24];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_1DB1572F0(0, *(v37 + 16) + 1, 1, v37);
        v37 = isUniquelyReferenced_nonNull_native;
      }

      v45 = *(v37 + 16);
      v44 = *(v37 + 24);
      if (v45 >= v44 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_1DB1572F0((v44 > 1), v45 + 1, 1, v37);
        v37 = isUniquelyReferenced_nonNull_native;
      }

      *(v37 + 16) = v45 + 1;
      v46 = v37 + 16 * v45;
      *(v46 + 32) = v43;
      *(v46 + 40) = v42;
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_43:
  result._object = v34;
  result._countAndFlagsBits = isUniquelyReferenced_nonNull_native;
  return result;
}

uint64_t sub_1DB263A3C(uint64_t *a1)
{
  v2 = *(v1[2] + 16);
  if (v2 && v2 == *(a1[2] + 16))
  {
    v3 = *a1;
    v4 = a1[1];
    v5 = *v1;
    v6 = v1[1];
    sub_1DB2BB4F4();

    strcpy(v12, "INSERT INTO ");
    BYTE5(v12[1]) = 0;
    HIWORD(v12[1]) = -5120;
    v7 = sub_1DB2B995C(34, 0xE100000000000000, v3, v4);
    MEMORY[0x1E1283490](v7);

    MEMORY[0x1E1283490](10272, 0xE200000000000000);
    v8 = sub_1DB263C3C();
    MEMORY[0x1E1283490](v8);

    MEMORY[0x1E1283490](0x5443454C45532029, 0xE900000000000020);
    v9 = sub_1DB263C3C();
    MEMORY[0x1E1283490](v9);

    MEMORY[0x1E1283490](0x204D4F524620, 0xE600000000000000);
    v10 = sub_1DB2B995C(34, 0xE100000000000000, v5, v6);
    MEMORY[0x1E1283490](v10);

    return v12[0];
  }

  else
  {
    sub_1DB15B09C(0xD000000000000029, 0x80000001DB2D6CE0);
    return 0;
  }
}

void __swiftcall IndexDefinition.init(table:name:unique:columns:where:orders:)(OnDeviceStorageCore::IndexDefinition *__return_ptr retstr, Swift::String table, Swift::String name, Swift::Bool unique, Swift::OpaquePointer columns, Swift::String_optional where, Swift::OpaquePointer_optional orders)
{
  retstr->table = table;
  retstr->name = name;
  retstr->unique = unique;
  retstr->columns = columns;
  retstr->where = where;
  retstr->orders.value._rawValue = orders.value._rawValue;
}

uint64_t TableDefinition.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1DB263C3C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1DB138470(0, v2, 0);
    v3 = v22;
    v4 = (v1 + 32);
    do
    {
      v5 = v4[3];
      v7 = *v4;
      v6 = v4[1];
      v21[2] = v4[2];
      v21[3] = v5;
      v21[0] = v7;
      v21[1] = v6;
      v8 = v4[4];
      v9 = v4[5];
      v10 = v4[7];
      v21[6] = v4[6];
      v21[7] = v10;
      v21[4] = v8;
      v21[5] = v9;
      v11 = v21[0];
      sub_1DB13AC2C(v21, &v20);
      v12 = sub_1DB2B995C(34, 0xE100000000000000, v11, *(&v11 + 1));
      v14 = v13;
      sub_1DB13AC88(v21);
      v22 = v3;
      v16 = *(v3 + 16);
      v15 = *(v3 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1DB138470((v15 > 1), v16 + 1, 1);
        v3 = v22;
      }

      *(v3 + 16) = v16 + 1;
      v17 = v3 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      v4 += 8;
      --v2;
    }

    while (v2);
  }

  *&v21[0] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
  sub_1DB1688F0(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60, MEMORY[0x1E69E6310]);
  v18 = sub_1DB2BAD24();

  return v18;
}

uint64_t static TableDefinition.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1DB2BB924() & 1) == 0 || (sub_1DB137CBC(v2, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_1DB137E28(v3, v4);
}

uint64_t sub_1DB263E68(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1DB2BB924() & 1) == 0 || (sub_1DB137CBC(v2, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_1DB137E28(v3, v4);
}

OnDeviceStorageCore::ObjectDefinition::ObjectType_optional __swiftcall ObjectDefinition.ObjectType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB2BB6F4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ObjectDefinition.ObjectType.rawValue.getter()
{
  v1 = 0x656C626174;
  v2 = 2003134838;
  if (*v0 != 2)
  {
    v2 = 0x72656767697274;
  }

  if (*v0)
  {
    v1 = 0x7865646E69;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DB263FD0()
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB264084(uint64_t a1)
{
  sub_1DB2BAE84();
}

uint64_t sub_1DB264124(uint64_t a1)
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

void sub_1DB2641E0(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x656C626174;
  v4 = 0xE400000000000000;
  v5 = 2003134838;
  if (*v1 != 2)
  {
    v5 = 0x72656767697274;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x7865646E69;
    v2 = 0xE500000000000000;
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

uint64_t ObjectDefinition.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ObjectDefinition.tableName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ObjectDefinition.sql.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ColumnDefinition.Affinity.description.getter()
{
  v1 = *v0;
  v2 = 0x52454745544E49;
  v3 = 1279346002;
  v4 = 1415071060;
  if (v1 != 3)
  {
    v4 = 1112493122;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x434952454D554ELL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DB2643CC@<X0>(char *a3@<X8>)
{
  sub_1DB2BAE14();
  sub_1DB143508();
  if (sub_1DB2BB3F4())
  {

    v5 = 0;
  }

  else
  {

    if (sub_1DB2BB3F4() & 1) != 0 || (, , (sub_1DB2BB3F4()) || (, , (sub_1DB2BB3F4()))
    {
      v5 = 3;
      swift_arrayDestroy();
    }

    else
    {

      swift_arrayDestroy();
      v6 = sub_1DB2BB3F4();

      if (v6)
      {

        v5 = 4;
      }

      else
      {

        if (sub_1DB2BB3F4() & 1) != 0 || (, , (sub_1DB2BB3F4()) || (, , (sub_1DB2BB3F4()))
        {

          swift_arrayDestroy();

          v5 = 2;
        }

        else
        {

          result = swift_arrayDestroy();
          v5 = 1;
        }
      }
    }
  }

  *a3 = v5;
  return result;
}

OnDeviceStorageCore::ColumnDefinition::Affinity_optional __swiftcall ColumnDefinition.Affinity.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB2BB6F4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DB264798()
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB264864(uint64_t a1)
{
  sub_1DB2BAE84();
}

uint64_t sub_1DB26491C(uint64_t a1)
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

void sub_1DB2649F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x52454745544E49;
  v5 = 1279346002;
  v6 = 1415071060;
  if (v2 != 3)
  {
    v6 = 1112493122;
  }

  if (v2 != 2)
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 0x434952454D554ELL;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DB264A78()
{
  v1 = *v0;
  v2 = 0x52454745544E49;
  v3 = 1279346002;
  v4 = 1415071060;
  if (v1 != 3)
  {
    v4 = 1112493122;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x434952454D554ELL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DB264B0C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = 0x4B4341424C4C4F52;
  v6 = byte_1F56DEE50;
  v7 = 0xE800000000000000;
  v8 = 0xE400000000000000;
  v9 = 1279869254;
  v10 = 0xE600000000000000;
  v11 = 0x45524F4E4749;
  if (byte_1F56DEE50 != 3)
  {
    v11 = 0x4543414C504552;
    v10 = 0xE700000000000000;
  }

  if (byte_1F56DEE50 != 2)
  {
    v9 = v11;
    v8 = v10;
  }

  v12 = 0x54524F4241;
  if (byte_1F56DEE50)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v12 = 0x4B4341424C4C4F52;
  }

  if (byte_1F56DEE50 <= 1u)
  {
    v13 = v12;
  }

  else
  {
    v13 = v9;
  }

  if (byte_1F56DEE50 <= 1u)
  {
    v14 = v7;
  }

  else
  {
    v14 = v8;
  }

  if (v13 == a1 && v14 == a2)
  {
    goto LABEL_16;
  }

  v16 = sub_1DB2BB924();

  if (v16)
  {
    goto LABEL_18;
  }

  v6 = byte_1F56DEE51;
  if (byte_1F56DEE51 <= 1u)
  {
    if (byte_1F56DEE51)
    {
      v18 = 0xE500000000000000;
      if (a1 != 0x54524F4241)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v18 = 0xE800000000000000;
      if (a1 != 0x4B4341424C4C4F52)
      {
        goto LABEL_34;
      }
    }
  }

  else if (byte_1F56DEE51 == 2)
  {
    v18 = 0xE400000000000000;
    if (a1 != 1279869254)
    {
      goto LABEL_34;
    }
  }

  else if (byte_1F56DEE51 == 3)
  {
    v18 = 0xE600000000000000;
    if (a1 != 0x45524F4E4749)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v18 = 0xE700000000000000;
    if (a1 != 0x4543414C504552)
    {
      goto LABEL_34;
    }
  }

  if (v18 == a2)
  {
LABEL_16:

    goto LABEL_18;
  }

LABEL_34:
  v19 = sub_1DB2BB924();

  if (v19)
  {
    goto LABEL_18;
  }

  v6 = byte_1F56DEE52;
  if (byte_1F56DEE52 <= 1u)
  {
    if (byte_1F56DEE52)
    {
      v20 = 0xE500000000000000;
      v21 = 0x54524F4241;
    }

    else
    {
      v20 = 0xE800000000000000;
      v21 = 0x4B4341424C4C4F52;
    }
  }

  else if (byte_1F56DEE52 == 2)
  {
    v20 = 0xE400000000000000;
    v21 = 1279869254;
  }

  else if (byte_1F56DEE52 == 3)
  {
    v20 = 0xE600000000000000;
    v21 = 0x45524F4E4749;
  }

  else
  {
    v20 = 0xE700000000000000;
    v21 = 0x4543414C504552;
  }

  if (v21 == a1 && v20 == a2)
  {
    goto LABEL_16;
  }

  v22 = sub_1DB2BB924();

  if (v22)
  {
    goto LABEL_18;
  }

  v6 = byte_1F56DEE53;
  if (byte_1F56DEE53 <= 1u)
  {
    if (byte_1F56DEE53)
    {
      v23 = 0xE500000000000000;
      v24 = 0x54524F4241;
    }

    else
    {
      v23 = 0xE800000000000000;
      v24 = 0x4B4341424C4C4F52;
    }
  }

  else if (byte_1F56DEE53 == 2)
  {
    v23 = 0xE400000000000000;
    v24 = 1279869254;
  }

  else if (byte_1F56DEE53 == 3)
  {
    v23 = 0xE600000000000000;
    v24 = 0x45524F4E4749;
  }

  else
  {
    v23 = 0xE700000000000000;
    v24 = 0x4543414C504552;
  }

  if (v24 == a1 && v23 == a2)
  {
    goto LABEL_16;
  }

  v25 = sub_1DB2BB924();

  if (v25)
  {
    goto LABEL_18;
  }

  v6 = byte_1F56DEE54;
  if (byte_1F56DEE54 <= 1u)
  {
    if (byte_1F56DEE54)
    {
      v26 = 0xE500000000000000;
      v5 = 0x54524F4241;
    }

    else
    {
      v26 = 0xE800000000000000;
    }
  }

  else if (byte_1F56DEE54 == 2)
  {
    v26 = 0xE400000000000000;
    v5 = 1279869254;
  }

  else if (byte_1F56DEE54 == 3)
  {
    v26 = 0xE600000000000000;
    v5 = 0x45524F4E4749;
  }

  else
  {
    v26 = 0xE700000000000000;
    v5 = 0x4543414C504552;
  }

  if (v5 == a1 && v26 == a2)
  {
    goto LABEL_16;
  }

  v27 = sub_1DB2BB924();

  if ((v27 & 1) == 0)
  {

    v6 = 5;
    goto LABEL_19;
  }

LABEL_18:

LABEL_19:
  *a3 = v6;
  return result;
}