uint64_t sub_1B7CA6CD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7C107FC(&qword_1EBA53418, &unk_1B7D11640);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B7CA6DF0(uint64_t a1)
{
  sub_1B7CA6E64();
  if (v1 <= 0x3F)
  {
    sub_1B7CA6EAC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1B7CA6E64()
{
  if (!qword_1EBA50FB0)
  {
    v0 = sub_1B7CFDFF0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA50FB0);
    }
  }
}

void sub_1B7CA6EAC(uint64_t a1)
{
  if (!qword_1EBA50E70)
  {
    sub_1B7C1091C(&qword_1EBA53420, &qword_1B7D115F8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBA50E70);
    }
  }
}

void sub_1B7CA6F4C(uint64_t a1)
{
  sub_1B7CA6FE8();
  if (v1 <= 0x3F)
  {
    sub_1B7CA7038(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B7CA6FE8()
{
  if (!qword_1EBA50E48)
  {
    v0 = sub_1B7CFEFF0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA50E48);
    }
  }
}

void sub_1B7CA7038(uint64_t a1)
{
  if (!qword_1EBA50E98)
  {
    sub_1B7CFE420();
    v1 = sub_1B7CFEFF0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBA50E98);
    }
  }
}

unint64_t sub_1B7CA70A4()
{
  result = qword_1EBA53428;
  if (!qword_1EBA53428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53428);
  }

  return result;
}

uint64_t sub_1B7CA70F8(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1B7CFEE40();
  if (!v19)
  {
    return sub_1B7CFED10();
  }

  v41 = v19;
  v45 = sub_1B7CFF300();
  v32 = sub_1B7CFF310();
  sub_1B7CFF2B0();
  result = sub_1B7CFEE30();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1B7CFEE70();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1B7CFF2F0();
      result = sub_1B7CFEE50();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7CA7518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a2;
  sub_1B7CFDD30();
  v4 = sub_1B7CFED70();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1B7CA70F8(sub_1B7CA7634, v10, v4, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v6);

  v11 = v7;
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v8 = sub_1B7CFEA10();

  return v8;
}

uint64_t sub_1B7CA7634@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = sub_1B7CFDD30();
  result = sub_1B7CA7698(v3, v4);
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t sub_1B7CA7698(uint64_t a1, uint64_t a2)
{
  if (!sub_1B7CFDD20())
  {
    goto LABEL_12;
  }

  v3 = sub_1B7C4BE8C();
  v5 = v4;

  v6 = *(a1 + 48);
  if (!*(v6 + 16) || (v7 = sub_1B7AE11D0(v3, v5), (v8 & 1) == 0))
  {
    sub_1B7CFF210();

    MEMORY[0x1B8CADCA0](v3, v5);
LABEL_12:
    result = sub_1B7CFF340();
    __break(1u);
    return result;
  }

  v9 = v7;

  v10 = *(*(v6 + 56) + 16 * v9);

  sub_1B7CFDD10();
  v11 = sub_1B7CFE1C0();
  MEMORY[0x1B8CADCA0](32, 0xE100000000000000);
  if (v11)
  {
    v12 = 4412225;
  }

  else
  {
    v12 = 1129530692;
  }

  if (v11)
  {
    v13 = 0xE300000000000000;
  }

  else
  {
    v13 = 0xE400000000000000;
  }

  MEMORY[0x1B8CADCA0](v12, v13);

  return v10;
}

void sub_1B7CA78C8(uint64_t a1)
{
  v3 = sub_1B7CFDFF0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7C219E4(0xD000000000000021, 0x80000001B7D58160);
  v7 = *(a1 + 24);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(a1 + 24) = v9;
  sub_1B7C6A6CC(a1);
  sub_1B7C219E4(0xD000000000000021, 0x80000001B7D54790);
  v10 = *(a1 + 24);
  v8 = __OFADD__(v10, 1);
  v11 = v10 + 1;
  if (v8)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(a1 + 24) = v11;
  swift_beginAccess();
  v12 = *(v1 + 344);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = v4 + 16;
    v36 = *(v4 + 16);
    v37 = v4 + 16;
    v15 = v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v16 = *(v14 + 56);
    v33[1] = v12;
    v34 = v16;
    v17 = (v14 - 8);

    v35 = v3;
    while (1)
    {
      v36(v6, v15, v3);
      v18 = sub_1B7CFDFC0();
      if (*(a1 + 24) + 0x4000000000000000 < 0)
      {
        break;
      }

      v20 = v18;
      v21 = v19;
      v38 = sub_1B7CFEC10();
      v39 = v22;
      MEMORY[0x1B8CADCA0](v20, v21);

      v23 = v38;
      v24 = v39;
      swift_beginAccess();
      v25 = *(a1 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a1 + 16) = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_1B7AF182C(0, *(v25 + 2) + 1, 1, v25);
        *(a1 + 16) = v25;
      }

      v28 = *(v25 + 2);
      v27 = *(v25 + 3);
      if (v28 >= v27 >> 1)
      {
        v25 = sub_1B7AF182C((v27 > 1), v28 + 1, 1, v25);
      }

      *(v25 + 2) = v28 + 1;
      v29 = &v25[16 * v28];
      *(v29 + 4) = v23;
      *(v29 + 5) = v24;
      *(a1 + 16) = v25;
      swift_endAccess();
      v3 = v35;
      (*v17)(v6, v35);
      v15 += v34;
      if (!--v13)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_12:
  v30 = *(a1 + 24);
  v8 = __OFSUB__(v30, 1);
  v31 = v30 - 1;
  if (v8)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = __OFSUB__(v31, 1);
  v32 = v31 - 1;
  if (!v8)
  {
    *(a1 + 24) = v32;
    return;
  }

LABEL_19:
  __break(1u);
}

uint64_t AttachmentStorageInspectorReport.__allocating_init(from:)(void *a1)
{
  *(swift_allocObject() + 344) = MEMORY[0x1E69E7CC0];
  sub_1B7AE90A8(a1, v4);
  v2 = StorageInspectionCountReport.init(from:)(v4);
  sub_1B7AE9168(a1);
  return v2;
}

uint64_t AttachmentStorageInspectorReport.init(from:)(void *a1)
{
  *(v1 + 344) = MEMORY[0x1E69E7CC0];
  sub_1B7AE90A8(a1, v5);
  v3 = StorageInspectionCountReport.init(from:)(v5);
  sub_1B7AE9168(a1);
  return v3;
}

uint64_t AttachmentStorageInspectorReport.deinit()
{

  return v0;
}

uint64_t AttachmentStorageInspectorReport.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void SqlOperation.execute(_:_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v6 = v5;
  v14[4] = *MEMORY[0x1E69E9840];
  v9 = objc_autoreleasePoolPush();
  v10 = sub_1B7CFEA30();
  swift_beginAccess();
  IMDSqlOperationStartQuery((v4 + 16), v10);
  swift_endAccess();

  swift_beginAccess();
  v14[0] = 0;
  IMDSqlOperationGetError(v4 + 16, v14);
  v11 = v14[0];
  swift_endAccess();
  if (v11)
  {
    swift_willThrow();
    v11;
    goto LABEL_11;
  }

  if (!a3)
  {
    goto LABEL_7;
  }

  sub_1B7AD8F38(a3, a4);
  a3(v4);
  if (!v5)
  {
    sub_1B7AE15D4(a3, a4);
LABEL_7:
    swift_beginAccess();
    IMDSqlOperationFinishQuery(v4 + 16);
    v14[0] = 0;
    IMDSqlOperationGetError(v4 + 16, v14);
    v12 = v14[0];
    swift_endAccess();
    if (!v12)
    {
      goto LABEL_11;
    }

    swift_willThrow();
    v6 = v12;
    goto LABEL_9;
  }

  sub_1B7AE15D4(a3, a4);
LABEL_9:
  swift_beginAccess();
  IMDSqlOperationFinishQuery(v4 + 16);
  v14[0] = 0;
  IMDSqlOperationGetError(v4 + 16, v14);
  v13 = v14[0];
  swift_endAccess();
  swift_willThrow();
  if (v13)
  {
    v13;
  }

LABEL_11:
  objc_autoreleasePoolPop(v9);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SqlOperation.bind(_:)(Swift::UInt64_optional a1)
{
  v4[4] = *MEMORY[0x1E69E9840];
  if (a1.is_nil)
  {
    swift_beginAccess();
    IMDSqlStatementBindNull((v1 + 48));
  }

  else
  {
    value = a1.value;
    if ((a1.value & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    swift_beginAccess();
    IMDSqlStatementBindInt64((v1 + 48), value);
  }

  v4[0] = 0;
  IMDSqlOperationGetError(v1 + 16, v4);
  v3 = v4[0];
  swift_endAccess();
  if (v3)
  {
    v3;
    swift_willThrow();
  }
}

void SqlOperation.select<A>(_:_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = v6;
  (*(*(a5 - 8) + 56))(a6, 1, 1, a5);
  v15 = objc_autoreleasePoolPush();
  sub_1B7CA8F5C(v8, a1, a2, a3, a4, a6, a5, &v17);
  objc_autoreleasePoolPop(v15);
  if (v7)
  {
    v16 = sub_1B7CFEFF0();
    (*(*(v16 - 8) + 8))(a6, v16);
  }
}

uint64_t static SqlOperation.placeholders(forColumnCount:)(uint64_t a1)
{
  sub_1B7AF7F10(0x3F, 0xE100000000000000, a1);
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v1 = sub_1B7CFEA10();

  return v1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SqlOperation.bind(_:)(Swift::OpaquePointer a1)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v3 = *(a1._rawValue + 2);
  swift_beginAccess();
  if (v3)
  {
    v4 = (a1._rawValue + 32);
    while (1)
    {
      v6 = *v4++;
      v5 = v6;
      if (v6 < 0)
      {
        __break(1u);
      }

      IMDSqlStatementBindInt64((v1 + 48), v5);
      v9[0] = 0;
      IMDSqlOperationGetError(v1 + 16, v9);
      v7 = v9[0];
      if (v9[0])
      {
        break;
      }

      if (!--v3)
      {
        goto LABEL_6;
      }
    }

    swift_endAccess();
    swift_willThrow();
    v8 = v7;
  }

  else
  {
LABEL_6:
    swift_endAccess();
  }
}

{
  v6[4] = *MEMORY[0x1E69E9840];
  v2 = *(a1._rawValue + 2);
  if (v2)
  {
    for (i = a1._rawValue + 40; ; i += 16)
    {

      v4 = sub_1B7CFEA30();
      swift_beginAccess();
      IMDSqlStatementBindTextFromCFString(v1 + 48, v4);
      swift_endAccess();

      swift_beginAccess();
      v6[0] = 0;
      IMDSqlOperationGetError(v1 + 16, v6);
      v5 = v6[0];
      swift_endAccess();
      if (v5)
      {
        break;
      }

      if (!--v2)
      {
        return;
      }
    }

    swift_willThrow();
    v5;
  }
}

{
  v9[4] = *MEMORY[0x1E69E9840];
  v3 = *(a1._rawValue + 2);
  swift_beginAccess();
  if (v3)
  {
    v4 = (a1._rawValue + 32);
    while (1)
    {
      v6 = *v4++;
      v5 = v6;
      if (v6 < 0xFFFFFFFF80000000)
      {
        __break(1u);
LABEL_10:
        __break(1u);
      }

      if (v5 > 0x7FFFFFFF)
      {
        goto LABEL_10;
      }

      IMDSqlStatementBindInt((v1 + 48), v5);
      v9[0] = 0;
      IMDSqlOperationGetError(v1 + 16, v9);
      v7 = v9[0];
      if (v9[0])
      {
        break;
      }

      if (!--v3)
      {
        goto LABEL_7;
      }
    }

    swift_endAccess();
    swift_willThrow();
    v8 = v7;
  }

  else
  {
LABEL_7:
    swift_endAccess();
  }
}

{
  v8[4] = *MEMORY[0x1E69E9840];
  v3 = *(a1._rawValue + 2);
  swift_beginAccess();
  if (v3)
  {
    v4 = (a1._rawValue + 32);
    while (1)
    {
      v5 = *v4++;
      IMDSqlStatementBindInt((v1 + 48), v5);
      v8[0] = 0;
      IMDSqlOperationGetError(v1 + 16, v8);
      v6 = v8[0];
      if (v8[0])
      {
        break;
      }

      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    swift_endAccess();
    swift_willThrow();
    v7 = v6;
  }

  else
  {
LABEL_5:
    swift_endAccess();
  }
}

{
  v9[4] = *MEMORY[0x1E69E9840];
  v3 = *(a1._rawValue + 2);
  swift_beginAccess();
  if (v3)
  {
    v4 = (a1._rawValue + 32);
    while (1)
    {
      v6 = *v4++;
      v5 = v6;
      if (v6 < 0)
      {
        __break(1u);
      }

      IMDSqlStatementBindInt((v1 + 48), v5);
      v9[0] = 0;
      IMDSqlOperationGetError(v1 + 16, v9);
      v7 = v9[0];
      if (v9[0])
      {
        break;
      }

      if (!--v3)
      {
        goto LABEL_6;
      }
    }

    swift_endAccess();
    swift_willThrow();
    v8 = v7;
  }

  else
  {
LABEL_6:
    swift_endAccess();
  }
}

{
  v8[4] = *MEMORY[0x1E69E9840];
  v3 = *(a1._rawValue + 2);
  swift_beginAccess();
  if (v3)
  {
    v4 = (a1._rawValue + 32);
    while (1)
    {
      v5 = *v4++;
      IMDSqlStatementBindInt64((v1 + 48), v5);
      v8[0] = 0;
      IMDSqlOperationGetError(v1 + 16, v8);
      v6 = v8[0];
      if (v8[0])
      {
        break;
      }

      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    swift_endAccess();
    swift_willThrow();
    v7 = v6;
  }

  else
  {
LABEL_5:
    swift_endAccess();
  }
}

{
  v7[4] = *MEMORY[0x1E69E9840];
  v3 = *(a1._rawValue + 2);
  swift_beginAccess();
  if (v3)
  {
    v4 = (a1._rawValue + 32);
    while (1)
    {
      IMDSqlStatementBindDouble((v1 + 48), *v4);
      v7[0] = 0;
      IMDSqlOperationGetError(v1 + 16, v7);
      v5 = v7[0];
      if (v7[0])
      {
        break;
      }

      ++v4;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    swift_endAccess();
    swift_willThrow();
    v6 = v5;
  }

  else
  {
LABEL_5:
    swift_endAccess();
  }
}

{
  v8[4] = *MEMORY[0x1E69E9840];
  v2 = *(a1._rawValue + 2);
  if (v2)
  {
    for (i = (a1._rawValue + 40); ; i += 2)
    {
      v4 = *(i - 1);
      v5 = *i;
      sub_1B7C1A208(v4, *i);
      sub_1B7C1A208(v4, v5);
      v6 = sub_1B7CFE010();
      swift_beginAccess();
      IMDSqlStatementBindBlob(v1 + 48, v6);
      swift_endAccess();

      sub_1B7C204B0(v4, v5);
      swift_beginAccess();
      v8[0] = 0;
      IMDSqlOperationGetError(v1 + 16, v8);
      v7 = v8[0];
      swift_endAccess();
      if (v7)
      {
        break;
      }

      sub_1B7C204B0(v4, v5);
      if (!--v2)
      {
        return;
      }
    }

    swift_willThrow();
    v7;
    sub_1B7C204B0(v4, v5);
  }
}

double SqlOperation.makeIterator()@<D0>(void *a1@<X8>)
{
  *a1 = v1;

  return result;
}

uint64_t SqlOperation.RowIterator.next()()
{
  v1 = *v0;
  swift_beginAccess();
  HasRows = IMDSqlOperationHasRows(v1 + 16);
  swift_endAccess();
  result = 0;
  if (HasRows)
  {
    type metadata accessor for SqlOperation.Row();
    v4 = swift_allocObject();
    v5 = sub_1B7C23650(MEMORY[0x1E69E7CC0]);
    *(v4 + 16) = v1;
    *(v4 + 24) = v5;

    return v4;
  }

  return result;
}

Swift::UInt64_optional __swiftcall SqlOperation.firstUInt64(forColumnIndex:)(Swift::Int forColumnIndex)
{

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v1 + 16);
  swift_endAccess();
  if (HasRows)
  {
    type metadata accessor for SqlOperation.Row();
    v4 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      inited = swift_initStackObject();
      *(inited + 16) = v1;
      *(inited + 24) = v4;
      if ((forColumnIndex & 0x8000000000000000) == 0)
      {
        swift_beginAccess();
        v7 = IMDSqlStatementColumnCount((v1 + 48));
        v8 = swift_endAccess();
        if (v7 > forColumnIndex)
        {
          if (forColumnIndex >> 31)
          {
            __break(1u);
            goto LABEL_12;
          }

          swift_beginAccess();
          IMDSqlStatementColumnByIndex((v1 + 48), forColumnIndex, &v17);
          v10 = v17;
          v11 = v18;
          v12 = v19;
          swift_endAccess();
          v20 = v10;
          v21 = v11;
          v22 = v12;
          if (IMDSqlColumnGetType(&v20) == 1)
          {
            break;
          }
        }
      }

      swift_beginAccess();

      v5 = IMDSqlOperationHasRows(v1 + 16);
      swift_endAccess();
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    swift_beginAccess();
    IMDSqlStatementColumnByIndex((v1 + 48), forColumnIndex, &v17);
    v13 = v17;
    v14 = v18;
    v15 = v19;
    swift_endAccess();
    v20 = v13;
    v21 = v14;
    v22 = v15;
    v16 = IMDInt64FromSqlColumn(&v20);

    if ((v16 & 0x8000000000000000) == 0)
    {
      v8 = v16;
      v9 = 0;
      goto LABEL_13;
    }

LABEL_12:
    __break(1u);
  }

  else
  {
LABEL_10:

    v8 = 0;
    v9 = 1;
  }

LABEL_13:
  result.value = v8;
  result.is_nil = v9;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SqlOperation.bind(_:)(Swift::String_optional a1)
{
  v4[4] = *MEMORY[0x1E69E9840];
  if (a1.value._object)
  {
    v2 = sub_1B7CFEA30();
    swift_beginAccess();
    IMDSqlStatementBindTextFromCFString(v1 + 48, v2);
    swift_endAccess();
  }

  else
  {
    swift_beginAccess();
    IMDSqlStatementBindNull((v1 + 48));
    v4[0] = 0;
    IMDSqlOperationGetError(v1 + 16, v4);
    v3 = v4[0];
    swift_endAccess();
    if (v3)
    {
      goto LABEL_6;
    }
  }

  swift_beginAccess();
  v4[0] = 0;
  IMDSqlOperationGetError(v1 + 16, v4);
  v3 = v4[0];
  swift_endAccess();
  if (v3)
  {
LABEL_6:
    v3;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SqlOperation.bind(_:)(Swift::Int_optional a1)
{
  v4[4] = *MEMORY[0x1E69E9840];
  if (!a1.is_nil)
  {
    value = a1.value;
    if (a1.value < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a1.value <= 0x7FFFFFFF)
    {
      swift_beginAccess();
      IMDSqlStatementBindInt((v1 + 48), value);
      swift_endAccess();
      goto LABEL_7;
    }

    __break(1u);
  }

  swift_beginAccess();
  IMDSqlStatementBindNull((v1 + 48));
  v4[0] = 0;
  IMDSqlOperationGetError(v1 + 16, v4);
  v2 = v4[0];
  swift_endAccess();
  if (!v2)
  {
LABEL_7:
    swift_beginAccess();
    v4[0] = 0;
    IMDSqlOperationGetError(v1 + 16, v4);
    v2 = v4[0];
    swift_endAccess();
    if (!v2)
    {
      return;
    }
  }

  v2;
  swift_willThrow();
}

void SqlOperation.transact(_:)(uint64_t (*a1)(uint64_t))
{
  v3 = v1;
  v10[4] = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  swift_beginAccess();
  IMDSqlOperationBeginTransaction((v1 + 16));
  v10[0] = 0;
  IMDSqlOperationGetError(v1 + 16, v10);
  v6 = v10[0];
  swift_endAccess();
  if (!v6)
  {
    a1(v1);
    v7 = v2;
    if (v2)
    {
      if (!*(v3 + 32))
      {
        goto LABEL_10;
      }
    }

    else
    {
      swift_beginAccess();
      IMDSqlOperationCommitTransaction((v3 + 16));
      v10[0] = 0;
      IMDSqlOperationGetError(v3 + 16, v10);
      v8 = v10[0];
      swift_endAccess();
      if (!v8)
      {
        goto LABEL_11;
      }

      swift_willThrow();
      v7 = v8;
      if (!*(v3 + 32))
      {
LABEL_10:
        swift_willThrow();
        goto LABEL_11;
      }
    }

    swift_beginAccess();
    IMDSqlOperationRevertTransaction((v3 + 16));
    v10[0] = 0;
    IMDSqlOperationGetError(v3 + 16, v10);
    v9 = v10[0];
    swift_endAccess();
    if (v9)
    {
      swift_willThrow();
      v9;

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  swift_willThrow();
  v6;
LABEL_11:
  objc_autoreleasePoolPop(v5);
}

Swift::UInt64_optional __swiftcall SqlOperation.firstUInt64(forColumnName:)(Swift::String forColumnName)
{
  v1 = sub_1B7CAB338(forColumnName._countAndFlagsBits, forColumnName._object, SqlOperation.Row.uint64(forColumnIndex:));
  result.value = v1;
  result.is_nil = v2;
  return result;
}

_OWORD *SqlOperation.__allocating_init()()
{
  v0 = swift_allocObject();
  IMDSqlOperationInitWithSharedCSDBDatabase(v7);
  v1 = v7[9];
  v0[9] = v7[8];
  v0[10] = v1;
  v0[11] = v7[10];
  v2 = v7[5];
  v0[5] = v7[4];
  v0[6] = v2;
  v3 = v7[7];
  v0[7] = v7[6];
  v0[8] = v3;
  v4 = v7[1];
  v0[1] = v7[0];
  v0[2] = v4;
  v5 = v7[3];
  v0[3] = v7[2];
  v0[4] = v5;
  return v0;
}

void *SqlOperation.error.getter()
{
  v4[4] = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v4[0] = 0;
  IMDSqlOperationGetError(v0 + 16, v4);
  v1 = v4[0];
  swift_endAccess();
  v2 = v1;
  return v1;
}

_OWORD *SqlOperation.init()()
{
  IMDSqlOperationInitWithSharedCSDBDatabase(v7);
  v1 = v7[9];
  v0[9] = v7[8];
  v0[10] = v1;
  v0[11] = v7[10];
  v2 = v7[5];
  v0[5] = v7[4];
  v0[6] = v2;
  v3 = v7[7];
  v0[7] = v7[6];
  v0[8] = v3;
  v4 = v7[1];
  v0[1] = v7[0];
  v0[2] = v4;
  v5 = v7[3];
  v0[3] = v7[2];
  v0[4] = v5;
  return v0;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SqlOperation.throwIfError()()
{
  v3[4] = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v3[0] = 0;
  IMDSqlOperationGetError(v0 + 16, v3);
  v1 = v3[0];
  swift_endAccess();
  if (v1)
  {
    swift_willThrow();
    v2 = v1;
  }
}

uint64_t SqlOperation.deinit()
{
  v2[4] = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v2[0] = 0;
  IMDSqlOperationRelease(v0 + 16, v2);
  swift_endAccess();
  return v0;
}

uint64_t SqlOperation.__deallocating_deinit()
{
  v2[4] = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v2[0] = 0;
  IMDSqlOperationRelease(v0 + 16, v2);
  swift_endAccess();
  return swift_deallocClassInstance();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SqlOperation.beginQuery(_:)(Swift::String a1)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v2 = sub_1B7CFEA30();
  swift_beginAccess();
  IMDSqlOperationStartQuery((v1 + 16), v2);
  swift_endAccess();

  swift_beginAccess();
  v5[0] = 0;
  IMDSqlOperationGetError(v1 + 16, v5);
  v3 = v5[0];
  swift_endAccess();
  if (v3)
  {
    swift_willThrow();
    v4 = v3;
  }
}

void sub_1B7CA8F5C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v10 = v8;
  v27 = a5;
  v28 = a6;
  v29[4] = *MEMORY[0x1E69E9840];
  v13 = sub_1B7CFEFF0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  v17 = sub_1B7CFEA30();
  swift_beginAccess();
  IMDSqlOperationStartQuery((a1 + 16), v17);
  swift_endAccess();

  swift_beginAccess();
  v29[0] = 0;
  IMDSqlOperationGetError(a1 + 16, v29);
  v18 = v29[0];
  swift_endAccess();
  if (v18)
  {
    swift_willThrow();
    *a8 = v18;
    v19 = v18;
    return;
  }

  v20 = v14;
  v22 = v27;
  v21 = v28;
  if (a4)
  {
    sub_1B7AD8F38(a4, v27);
    a4(a1);
    if (v8)
    {
      sub_1B7AE15D4(a4, v22);
      goto LABEL_9;
    }

    sub_1B7AE15D4(a4, v22);
    (*(v20 + 40))(v21, v16, v13);
  }

  swift_beginAccess();
  IMDSqlOperationFinishQuery(a1 + 16);
  v29[0] = 0;
  IMDSqlOperationGetError(a1 + 16, v29);
  v23 = v29[0];
  swift_endAccess();
  if (!v23)
  {
    return;
  }

  swift_willThrow();
  v10 = v23;
LABEL_9:
  swift_beginAccess();
  IMDSqlOperationFinishQuery(a1 + 16);
  v29[0] = 0;
  IMDSqlOperationGetError(a1 + 16, v29);
  v24 = v29[0];
  swift_endAccess();
  swift_willThrow();
  if (v24)
  {
    v25 = v24;

    *a8 = v25;
  }

  else
  {
    *a8 = v10;
  }
}

BOOL SqlOperation.hasRows.getter()
{
  swift_beginAccess();
  HasRows = IMDSqlOperationHasRows(v0 + 16);
  swift_endAccess();
  return HasRows;
}

id sub_1B7CA9350(void (*a1)(uint64_t))
{
  v5[4] = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  a1(v1 + 16);
  v5[0] = 0;
  IMDSqlOperationGetError(v1 + 16, v5);
  v3 = v5[0];
  result = swift_endAccess();
  if (v3)
  {
    swift_willThrow();
    return v3;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SqlOperation.revertTransaction()()
{
  v3[7] = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  if (*(v0 + 32))
  {
    swift_beginAccess();
    IMDSqlOperationRevertTransaction((v0 + 16));
    v3[0] = 0;
    IMDSqlOperationGetError(v0 + 16, v3);
    v1 = v3[0];
    swift_endAccess();
    if (v1)
    {
      swift_willThrow();
      v2 = v1;
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SqlOperation.commitOrRevertTransaction()()
{
  v6[7] = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  if (*(v0 + 32))
  {
    swift_beginAccess();
    v6[0] = 0;
    IMDSqlOperationGetError(v0 + 16, v6);
    v1 = v6[0];
    swift_endAccess();
    if (v1)
    {
      if (*(v0 + 32))
      {
        swift_beginAccess();
        v2 = v1;
        IMDSqlOperationRevertTransaction((v0 + 16));
        v6[0] = 0;
        IMDSqlOperationGetError(v0 + 16, v6);
        v3 = v6[0];
        swift_endAccess();
        if (v3)
        {
          swift_willThrow();
          v3;

          return;
        }
      }

      else
      {
        v5 = v1;
      }

      swift_willThrow();
    }

    else
    {
      swift_beginAccess();
      IMDSqlOperationCommitTransaction((v0 + 16));
      v6[0] = 0;
      IMDSqlOperationGetError(v0 + 16, v6);
      v4 = v6[0];
      swift_endAccess();
      if (v4)
      {
        swift_willThrow();
        v4;
      }
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SqlOperation.bindNull()()
{
  v3[4] = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  IMDSqlStatementBindNull((v0 + 48));
  v3[0] = 0;
  IMDSqlOperationGetError(v0 + 16, v3);
  v1 = v3[0];
  swift_endAccess();
  if (v1)
  {
    swift_willThrow();
    v2 = v1;
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SqlOperation.bind(_:)(Swift::Int32_optional a1)
{
  v4[4] = *MEMORY[0x1E69E9840];
  if ((*&a1.value & 0x100000000) == 0)
  {
    value = a1.value;
    swift_beginAccess();
    IMDSqlStatementBindInt((v1 + 48), value);
    swift_endAccess();
    goto LABEL_4;
  }

  swift_beginAccess();
  IMDSqlStatementBindNull((v1 + 48));
  v4[0] = 0;
  IMDSqlOperationGetError(v1 + 16, v4);
  v3 = v4[0];
  swift_endAccess();
  if (!v3)
  {
LABEL_4:
    swift_beginAccess();
    v4[0] = 0;
    IMDSqlOperationGetError(v1 + 16, v4);
    v3 = v4[0];
    swift_endAccess();
    if (!v3)
    {
      return;
    }
  }

  v3;
  swift_willThrow();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SqlOperation.bind(_:)(Swift::UInt32_optional a1)
{
  v4[4] = *MEMORY[0x1E69E9840];
  if ((*&a1.value & 0x100000000) == 0)
  {
    value = a1.value;
    if ((a1.value & 0x80000000) != 0)
    {
      __break(1u);
    }

    swift_beginAccess();
    IMDSqlStatementBindInt((v1 + 48), value);
    swift_endAccess();
LABEL_5:
    swift_beginAccess();
    v4[0] = 0;
    IMDSqlOperationGetError(v1 + 16, v4);
    v3 = v4[0];
    swift_endAccess();
    if (!v3)
    {
      return;
    }

    goto LABEL_6;
  }

  swift_beginAccess();
  IMDSqlStatementBindNull((v1 + 48));
  v4[0] = 0;
  IMDSqlOperationGetError(v1 + 16, v4);
  v3 = v4[0];
  swift_endAccess();
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_6:
  v3;
  swift_willThrow();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SqlOperation.bind(_:)(Swift::Int64_optional a1)
{
  v4[4] = *MEMORY[0x1E69E9840];
  if (!a1.is_nil)
  {
    value = a1.value;
    swift_beginAccess();
    IMDSqlStatementBindInt64((v1 + 48), value);
    swift_endAccess();
    goto LABEL_5;
  }

  swift_beginAccess();
  IMDSqlStatementBindNull((v1 + 48));
  v4[0] = 0;
  IMDSqlOperationGetError(v1 + 16, v4);
  v2 = v4[0];
  swift_endAccess();
  if (!v2)
  {
LABEL_5:
    swift_beginAccess();
    v4[0] = 0;
    IMDSqlOperationGetError(v1 + 16, v4);
    v2 = v4[0];
    swift_endAccess();
    if (!v2)
    {
      return;
    }
  }

  v2;
  swift_willThrow();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SqlOperation.bind(_:)(Swift::Double_optional a1)
{
  v5[4] = *MEMORY[0x1E69E9840];
  if ((v1 & 1) == 0)
  {
    v4 = *&a1.is_nil;
    swift_beginAccess();
    IMDSqlStatementBindDouble((v2 + 48), v4);
    swift_endAccess();
    goto LABEL_5;
  }

  swift_beginAccess();
  IMDSqlStatementBindNull((v2 + 48));
  v5[0] = 0;
  IMDSqlOperationGetError(v2 + 16, v5);
  v3 = v5[0];
  swift_endAccess();
  if (!v3)
  {
LABEL_5:
    swift_beginAccess();
    v5[0] = 0;
    IMDSqlOperationGetError(v2 + 16, v5);
    v3 = v5[0];
    swift_endAccess();
    if (!v3)
    {
      return;
    }
  }

  v3;
  swift_willThrow();
}

uint64_t SqlOperation.bind(_:)(uint64_t a1, unint64_t a2)
{
  v8[4] = *MEMORY[0x1E69E9840];
  if (a2 >> 60 != 15)
  {
    sub_1B7C1A208(a1, a2);
    v6 = sub_1B7CFE010();
    swift_beginAccess();
    IMDSqlStatementBindBlob(v2 + 48, v6);
    swift_endAccess();

    sub_1B7C2049C(a1, a2);
    goto LABEL_5;
  }

  swift_beginAccess();
  IMDSqlStatementBindNull((v2 + 48));
  v8[0] = 0;
  IMDSqlOperationGetError(v2 + 16, v8);
  v3 = v8[0];
  swift_endAccess();
  if (!v3)
  {
LABEL_5:
    swift_beginAccess();
    v8[0] = 0;
    IMDSqlOperationGetError(v2 + 16, v8);
    v3 = v8[0];
    result = swift_endAccess();
    if (!v3)
    {
      return result;
    }
  }

  v3;
  return swift_willThrow();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SqlOperation.bindNulls(count:)(Swift::Int count)
{
  v5[4] = *MEMORY[0x1E69E9840];
  if (count < 0)
  {
    __break(1u);
  }

  v2 = count;
  swift_beginAccess();
  if (v2)
  {
    while (1)
    {
      IMDSqlStatementBindNull((v1 + 48));
      v5[0] = 0;
      IMDSqlOperationGetError(v1 + 16, v5);
      v3 = v5[0];
      if (v5[0])
      {
        break;
      }

      if (!--v2)
      {
        goto LABEL_5;
      }
    }

    swift_endAccess();
    swift_willThrow();
    v4 = v3;
  }

  else
  {
LABEL_5:
    swift_endAccess();
  }
}

void sub_1B7CAA3B0(uint64_t *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  HasRows = IMDSqlOperationHasRows(v3 + 16);
  swift_endAccess();
  v5 = 0;
  if (HasRows)
  {
    type metadata accessor for SqlOperation.Row();
    v5 = swift_allocObject();
    v6 = sub_1B7C23650(MEMORY[0x1E69E7CC0]);
    *(v5 + 16) = v3;
    *(v5 + 24) = v6;
  }

  *a1 = v5;
}

uint64_t sub_1B7CAA448()
{
  sub_1B7CEA39C(*v0);
  v2 = v1;

  return v2;
}

uint64_t SqlOperation.description.getter()
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_1B7CFF210();
  v1 = sub_1B7CFF8D0();
  v3 = v2;

  v12 = v1;
  v13 = v3;
  MEMORY[0x1B8CADCA0](0xD000000000000012, 0x80000001B7D581D0);
  swift_beginAccess();
  v4 = *(v0 + 32);
  if (v4)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v4)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1B8CADCA0](v5, v6);

  MEMORY[0x1B8CADCA0](0x726520736168202CLL, 0xED0000203A726F72);
  swift_beginAccess();
  v11 = 0;
  IMDSqlOperationGetError(v0 + 16, &v11);
  v7 = v11;
  swift_endAccess();
  if (v7)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v7)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x1B8CADCA0](v8, v9);

  return v12;
}

uint64_t SqlOperation.SqlOperationError.hashValue.getter()
{
  sub_1B7CFF7C0();
  MEMORY[0x1B8CAE910](0);
  return sub_1B7CFF800();
}

Swift::Int64_optional __swiftcall SqlOperation.firstInt64(forColumnIndex:)(Swift::Int forColumnIndex)
{

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v1 + 16);
  swift_endAccess();
  if (HasRows)
  {
    type metadata accessor for SqlOperation.Row();
    v4 = MEMORY[0x1E69E7CC8];
    do
    {
      inited = swift_initStackObject();
      *(inited + 16) = v1;
      *(inited + 24) = v4;
      if ((forColumnIndex & 0x8000000000000000) == 0)
      {
        swift_beginAccess();
        v7 = IMDSqlStatementColumnCount((v1 + 48));
        v8 = swift_endAccess();
        if (v7 > forColumnIndex)
        {
          if (forColumnIndex >> 31)
          {
            __break(1u);
            goto LABEL_11;
          }

          swift_beginAccess();
          IMDSqlStatementColumnByIndex((v1 + 48), forColumnIndex, &v17);
          v10 = v17;
          v11 = v18;
          v12 = v19;
          swift_endAccess();
          v20 = v10;
          v21 = v11;
          v22 = v12;
          if (IMDSqlColumnGetType(&v20) == 1)
          {
            swift_beginAccess();
            IMDSqlStatementColumnByIndex((v1 + 48), forColumnIndex, &v17);
            v13 = v17;
            v14 = v18;
            v15 = v19;
            swift_endAccess();
            v20 = v13;
            v21 = v14;
            v22 = v15;
            v16 = IMDInt64FromSqlColumn(&v20);

            v8 = v16;
            v9 = 0;
            goto LABEL_11;
          }
        }
      }

      swift_beginAccess();

      v5 = IMDSqlOperationHasRows(v1 + 16);
      swift_endAccess();
    }

    while (v5);
  }

  v8 = 0;
  v9 = 1;
LABEL_11:
  result.value = v8;
  result.is_nil = v9;
  return result;
}

Swift::Int_optional __swiftcall SqlOperation.firstInt(forColumnIndex:)(Swift::Int forColumnIndex)
{

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v1 + 16);
  swift_endAccess();
  if (HasRows)
  {
    type metadata accessor for SqlOperation.Row();
    v4 = MEMORY[0x1E69E7CC8];
    do
    {
      inited = swift_initStackObject();
      *(inited + 16) = v1;
      *(inited + 24) = v4;
      if ((forColumnIndex & 0x8000000000000000) == 0)
      {
        swift_beginAccess();
        v7 = IMDSqlStatementColumnCount((v1 + 48));
        v8 = swift_endAccess();
        if (v7 > forColumnIndex)
        {
          if (forColumnIndex >> 31)
          {
            __break(1u);
            goto LABEL_11;
          }

          swift_beginAccess();
          IMDSqlStatementColumnByIndex((v1 + 48), forColumnIndex, &v16);
          v10 = v16;
          v11 = v17;
          v12 = v18;
          swift_endAccess();
          v19 = v10;
          v20 = v11;
          v21 = v12;
          if (IMDSqlColumnGetType(&v19) == 1)
          {
            swift_beginAccess();
            IMDSqlStatementColumnByIndex((v1 + 48), forColumnIndex, &v16);
            v13 = v16;
            v14 = v17;
            v15 = v18;
            swift_endAccess();
            v19 = v13;
            v20 = v14;
            v21 = v15;
            LODWORD(v13) = IMDIntFromSqlColumn(&v19);

            v9 = 0;
            v8 = v13;
            goto LABEL_11;
          }
        }
      }

      swift_beginAccess();

      v5 = IMDSqlOperationHasRows(v1 + 16);
      swift_endAccess();
    }

    while (v5);
  }

  v8 = 0;
  v9 = 1;
LABEL_11:
  result.value = v8;
  result.is_nil = v9;
  return result;
}

Swift::String_optional __swiftcall SqlOperation.firstString(forColumnIndex:)(Swift::Int forColumnIndex)
{

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v1 + 16);
  swift_endAccess();
  if (HasRows)
  {
    type metadata accessor for SqlOperation.Row();
    v4 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      inited = swift_initStackObject();
      *(inited + 16) = v1;
      *(inited + 24) = v4;
      if ((forColumnIndex & 0x8000000000000000) == 0)
      {
        swift_beginAccess();
        v7 = IMDSqlStatementColumnCount((v1 + 48));
        v8 = swift_endAccess();
        if (v7 > forColumnIndex)
        {
          if (forColumnIndex >> 31)
          {
            __break(1u);
            goto LABEL_13;
          }

          swift_beginAccess();
          IMDSqlStatementColumnByIndex((v1 + 48), forColumnIndex, &v21);
          v10 = v21;
          v11 = v22;
          v12 = v23;
          swift_endAccess();
          v24 = v10;
          v25 = v11;
          v26 = v12;
          if (IMDSqlColumnGetType(&v24) == 3)
          {
            break;
          }
        }
      }

      swift_beginAccess();

      v5 = IMDSqlOperationHasRows(v1 + 16);
      swift_endAccess();
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    swift_beginAccess();
    IMDSqlStatementColumnByIndex((v1 + 48), forColumnIndex, &v21);
    v13 = v21;
    v14 = v22;
    v15 = v23;
    swift_endAccess();
    v24 = v13;
    v25 = v14;
    v26 = v15;
    v8 = IMDStringFromSqlColumn(&v24);
    if (v8)
    {
      v16 = v8;
      v17 = sub_1B7CFEA60();
      v19 = v18;

      goto LABEL_11;
    }

LABEL_13:
    __break(1u);
  }

  else
  {
LABEL_10:

    v17 = 0;
    v19 = 0;
LABEL_11:

    v8 = v17;
    v9 = v19;
  }

  result.value._object = v9;
  result.value._countAndFlagsBits = v8;
  return result;
}

Swift::Double_optional __swiftcall SqlOperation.firstDouble(forColumnIndex:)(Swift::Int forColumnIndex)
{

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v1 + 16);
  swift_endAccess();
  if (HasRows)
  {
    type metadata accessor for SqlOperation.Row();
    v4 = MEMORY[0x1E69E7CC8];
    do
    {
      inited = swift_initStackObject();
      *(inited + 16) = v1;
      *(inited + 24) = v4;
      if ((forColumnIndex & 0x8000000000000000) == 0)
      {
        swift_beginAccess();
        v7 = IMDSqlStatementColumnCount((v1 + 48));
        v8 = swift_endAccess();
        if (v7 > forColumnIndex)
        {
          if (forColumnIndex >> 31)
          {
            __break(1u);
            goto LABEL_11;
          }

          swift_beginAccess();
          IMDSqlStatementColumnByIndex((v1 + 48), forColumnIndex, &v16);
          v10 = v16;
          v11 = v17;
          v12 = v18;
          swift_endAccess();
          v19 = v10;
          v20 = v11;
          v21 = v12;
          if (IMDSqlColumnGetType(&v19) == 2)
          {
            swift_beginAccess();
            IMDSqlStatementColumnByIndex((v1 + 48), forColumnIndex, &v16);
            v13 = v16;
            v14 = v17;
            v15 = v18;
            swift_endAccess();
            v19 = v13;
            v20 = v14;
            v21 = v15;
            LOBYTE(v15) = COERCE_UNSIGNED_INT64(IMDDoubleFromSqlColumn(&v19));

            v8 = v15;
            goto LABEL_11;
          }
        }
      }

      swift_beginAccess();

      v5 = IMDSqlOperationHasRows(v1 + 16);
      swift_endAccess();
    }

    while (v5);
  }

  v8 = 0;
LABEL_11:
  result.value = v9;
  result.is_nil = v8;
  return result;
}

CFDataRef SqlOperation.firstBlob(forColumnIndex:)(unint64_t a1)
{

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v1 + 16);
  swift_endAccess();
  if (HasRows)
  {
    type metadata accessor for SqlOperation.Row();
    v4 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      inited = swift_initStackObject();
      *(inited + 16) = v1;
      *(inited + 24) = v4;
      if ((a1 & 0x8000000000000000) == 0)
      {
        swift_beginAccess();
        v7 = IMDSqlStatementColumnCount((v1 + 48));
        result = swift_endAccess();
        if (v7 > a1)
        {
          if (a1 >> 31)
          {
            __break(1u);
            goto LABEL_12;
          }

          swift_beginAccess();
          IMDSqlStatementColumnByIndex((v1 + 48), a1, &v17);
          v9 = v17;
          v10 = v18;
          v11 = v19;
          swift_endAccess();
          v20 = v9;
          v21 = v10;
          v22 = v11;
          if (IMDSqlColumnGetType(&v20) == 4)
          {
            break;
          }
        }
      }

      swift_beginAccess();

      v5 = IMDSqlOperationHasRows(v1 + 16);
      swift_endAccess();
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    swift_beginAccess();
    IMDSqlStatementColumnByIndex((v1 + 48), a1, &v17);
    v12 = v17;
    v13 = v18;
    v14 = v19;
    swift_endAccess();
    v20 = v12;
    v21 = v13;
    v22 = v14;
    result = IMDBlobFromSqlColumn(&v20);
    if (result)
    {
      v15 = result;
      v16 = sub_1B7CFE020();

      return v16;
    }

LABEL_12:
    __break(1u);
  }

  else
  {
LABEL_10:

    return 0;
  }

  return result;
}

_OWORD *SqlOperation.firstObject(forColumnIndex:)@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = 0u;
  a2[1] = 0u;

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v2 + 16);
  swift_endAccess();
  if (!HasRows)
  {
  }

  type metadata accessor for SqlOperation.Row();
  v5 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = v2;
    *(inited + 24) = v5;
    if ((a1 & 0x8000000000000000) != 0 || (swift_beginAccess(), v7 = IMDSqlStatementColumnCount((v2 + 48)), result = swift_endAccess(), v7 <= a1))
    {
      v17 = 0u;
      v18 = 0u;
      goto LABEL_11;
    }

    if (a1 >> 31)
    {
      break;
    }

    swift_beginAccess();
    IMDSqlStatementColumnByIndex((v2 + 48), a1, v16);
    v10 = v16[0];
    v9 = v16[1];
    v11 = v16[2];
    swift_endAccess();
    *&v14 = v10;
    *(&v14 + 1) = v9;
    *&v15 = v11;
    if (IMDSqlColumnGetObject(&v14))
    {
      sub_1B7CFF0A0();
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v17 = v14;
    v18 = v15;
LABEL_11:

    if (*(&v18 + 1))
    {
      sub_1B7AEE190(a2, &qword_1EBA51FA8, qword_1B7D0B230);

      return sub_1B7C255E0(&v17, a2);
    }

    sub_1B7AEE190(&v17, &qword_1EBA51FA8, qword_1B7D0B230);
    swift_beginAccess();

    v12 = IMDSqlOperationHasRows(v2 + 16);
    swift_endAccess();
    if (!v12)
    {
    }
  }

  __break(1u);
  return result;
}

Swift::Int64_optional __swiftcall SqlOperation.firstInt64(forColumnName:)(Swift::String forColumnName)
{
  v1 = sub_1B7CAB338(forColumnName._countAndFlagsBits, forColumnName._object, SqlOperation.Row.int64(forColumnIndex:));
  result.value = v1;
  result.is_nil = v2;
  return result;
}

uint64_t sub_1B7CAB338(unint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = v3;

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v3 + 16);
  swift_endAccess();
  if (!HasRows)
  {
LABEL_8:

    return 0;
  }

  type metadata accessor for SqlOperation.Row();
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    inited = swift_initStackObject();
    v12 = sub_1B7C23650(v9);
    *(inited + 16) = v5;
    *(inited + 24) = v12;
    SqlOperation.Row.column(forColumnName:)(a1, a2, &v18);
    if (*(&v18 + 1))
    {
      break;
    }

    swift_setDeallocating();

    sub_1B7AEE190(&v18, &qword_1EBA52298, &unk_1B7D10570);
LABEL_4:
    swift_beginAccess();

    v10 = IMDSqlOperationHasRows(v5 + 16);
    swift_endAccess();
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  v22[0] = v18;
  v22[1] = v19;
  v22[2] = v20;
  v22[3] = v21;
  v13 = v19;
  sub_1B7C26C78(v22);
  v14 = a3(v13);
  v16 = v15;
  swift_setDeallocating();

  if (v16)
  {
    goto LABEL_4;
  }

  return v14;
}

Swift::Int_optional __swiftcall SqlOperation.firstInt(forColumnName:)(Swift::String forColumnName)
{
  v1 = sub_1B7CAB338(forColumnName._countAndFlagsBits, forColumnName._object, SqlOperation.Row.int(forColumnIndex:));
  result.value = v1;
  result.is_nil = v2;
  return result;
}

Swift::String_optional __swiftcall SqlOperation.firstString(forColumnName:)(Swift::String forColumnName)
{
  v2 = v1;
  object = forColumnName._object;
  countAndFlagsBits = forColumnName._countAndFlagsBits;

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v1 + 16);
  swift_endAccess();
  if (!HasRows)
  {
LABEL_8:

    v12 = 0;
    v13 = 0;
    goto LABEL_9;
  }

  type metadata accessor for SqlOperation.Row();
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    inited = swift_initStackObject();
    v9 = sub_1B7C23650(v6);
    *(inited + 16) = v2;
    *(inited + 24) = v9;
    SqlOperation.Row.column(forColumnName:)(countAndFlagsBits, object, &v17);
    if (*(&v17 + 1))
    {
      break;
    }

    swift_setDeallocating();

    sub_1B7AEE190(&v17, &qword_1EBA52298, &unk_1B7D10570);
LABEL_4:
    swift_beginAccess();

    v7 = IMDSqlOperationHasRows(v2 + 16);
    swift_endAccess();
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  v21[0] = v17;
  v21[1] = v18;
  v21[2] = v19;
  v21[3] = v20;
  v10 = v18;
  sub_1B7C26C78(v21);
  v11 = SqlOperation.Row.string(forColumnIndex:)(v10);
  v12 = v11.value._countAndFlagsBits;
  v13 = v11.value._object;
  swift_setDeallocating();

  if (!v11.value._object)
  {
    goto LABEL_4;
  }

LABEL_9:
  v14 = v12;
  v15 = v13;
  result.value._object = v15;
  result.value._countAndFlagsBits = v14;
  return result;
}

Swift::Double_optional __swiftcall SqlOperation.firstDouble(forColumnName:)(Swift::String forColumnName)
{
  v1 = sub_1B7CAB338(forColumnName._countAndFlagsBits, forColumnName._object, SqlOperation.Row.double(forColumnIndex:));
  result.value = v2;
  result.is_nil = v1;
  return result;
}

CFDataRef SqlOperation.firstBlob(forColumnName:)(unint64_t a1, unint64_t a2)
{
  v3 = v2;

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v2 + 16);
  swift_endAccess();
  if (!HasRows)
  {
LABEL_8:

    return 0;
  }

  type metadata accessor for SqlOperation.Row();
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    inited = swift_initStackObject();
    v10 = sub_1B7C23650(v7);
    *(inited + 16) = v3;
    *(inited + 24) = v10;
    SqlOperation.Row.column(forColumnName:)(a1, a2, &v16);
    if (*(&v16 + 1))
    {
      break;
    }

    swift_setDeallocating();

    sub_1B7AEE190(&v16, &qword_1EBA52298, &unk_1B7D10570);
LABEL_4:
    swift_beginAccess();

    v8 = IMDSqlOperationHasRows(v3 + 16);
    swift_endAccess();
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  v20[0] = v16;
  v20[1] = v17;
  v20[2] = v18;
  v20[3] = v19;
  v11 = v17;
  sub_1B7C26C78(v20);
  v12 = SqlOperation.Row.blob(forColumnIndex:)(v11);
  v14 = v13;
  swift_setDeallocating();

  if (v14 >> 60 == 15)
  {
    goto LABEL_4;
  }

  return v12;
}

_OWORD *SqlOperation.firstObject(forColumnName:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  *a3 = 0u;
  a3[1] = 0u;

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v3 + 16);
  swift_endAccess();
  if (HasRows)
  {
    type metadata accessor for SqlOperation.Row();
    v9 = MEMORY[0x1E69E7CC0];
    do
    {
      inited = swift_initStackObject();
      v12 = sub_1B7C23650(v9);
      *(inited + 16) = v4;
      *(inited + 24) = v12;
      SqlOperation.Row.column(forColumnName:)(a1, a2, &v15);
      if (*(&v15 + 1))
      {
        v19[0] = v15;
        v19[1] = v16;
        v19[2] = v17;
        v19[3] = v18;
        v13 = v16;
        sub_1B7C26C78(v19);
        SqlOperation.Row.object(forColumnIndex:)(v13, &v20);

        if (*(&v21 + 1))
        {

          sub_1B7AEE190(a3, &qword_1EBA51FA8, qword_1B7D0B230);
          return sub_1B7C255E0(&v20, a3);
        }
      }

      else
      {

        sub_1B7AEE190(&v15, &qword_1EBA52298, &unk_1B7D10570);
        v20 = 0u;
        v21 = 0u;
      }

      sub_1B7AEE190(&v20, &qword_1EBA51FA8, qword_1B7D0B230);
      swift_beginAccess();

      v10 = IMDSqlOperationHasRows(v4 + 16);
      swift_endAccess();
    }

    while (v10);
  }
}

char *SqlOperation.int64s(forColumnIndex:)()
{

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v0 + 16);
  swift_endAccess();
  if (HasRows)
  {
    type metadata accessor for SqlOperation.Row();
    v2 = MEMORY[0x1E69E7CC0];
    v3 = MEMORY[0x1E69E7CC8];
    do
    {
      inited = swift_initStackObject();
      *(inited + 16) = v0;
      *(inited + 24) = v3;
      swift_beginAccess();
      v5 = IMDSqlStatementColumnCount((v0 + 48));
      swift_endAccess();
      if (v5 && (swift_beginAccess(), IMDSqlStatementColumnByIndex((v0 + 48), 0, &v17), v6 = v17, v7 = v18, v8 = v19, swift_endAccess(), v20 = v6, v21 = v7, v22 = v8, IMDSqlColumnGetType(&v20) == 1))
      {
        swift_beginAccess();
        IMDSqlStatementColumnByIndex((v0 + 48), 0, &v17);
        v10 = v17;
        v11 = v18;
        v12 = v19;
        swift_endAccess();
        v20 = v10;
        v21 = v11;
        v22 = v12;
        v13 = IMDInt64FromSqlColumn(&v20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1B7CA1DB4(0, *(v2 + 2) + 1, 1, v2);
        }

        v15 = *(v2 + 2);
        v14 = *(v2 + 3);
        if (v15 >= v14 >> 1)
        {
          v2 = sub_1B7CA1DB4((v14 > 1), v15 + 1, 1, v2);
        }

        *(v2 + 2) = v15 + 1;
        *&v2[8 * v15 + 32] = v13;
      }

      else
      {
      }

      swift_beginAccess();

      v9 = IMDSqlOperationHasRows(v0 + 16);
      swift_endAccess();
    }

    while (v9);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  return v2;
}

char *SqlOperation.ints(forColumnIndex:)()
{

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v0 + 16);
  swift_endAccess();
  if (HasRows)
  {
    type metadata accessor for SqlOperation.Row();
    v2 = MEMORY[0x1E69E7CC0];
    v3 = MEMORY[0x1E69E7CC8];
    do
    {
      inited = swift_initStackObject();
      *(inited + 16) = v0;
      *(inited + 24) = v3;
      swift_beginAccess();
      v5 = IMDSqlStatementColumnCount((v0 + 48));
      swift_endAccess();
      if (v5 && (swift_beginAccess(), IMDSqlStatementColumnByIndex((v0 + 48), 0, &v17), v6 = v17, v7 = v18, v8 = v19, swift_endAccess(), v20 = v6, v21 = v7, v22 = v8, IMDSqlColumnGetType(&v20) == 1))
      {
        swift_beginAccess();
        IMDSqlStatementColumnByIndex((v0 + 48), 0, &v17);
        v10 = v17;
        v11 = v18;
        v12 = v19;
        swift_endAccess();
        v20 = v10;
        v21 = v11;
        v22 = v12;
        v13 = IMDIntFromSqlColumn(&v20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1B7AF2DCC(0, *(v2 + 2) + 1, 1, v2);
        }

        v15 = *(v2 + 2);
        v14 = *(v2 + 3);
        if (v15 >= v14 >> 1)
        {
          v2 = sub_1B7AF2DCC((v14 > 1), v15 + 1, 1, v2);
        }

        *(v2 + 2) = v15 + 1;
        *&v2[8 * v15 + 32] = v13;
      }

      else
      {
      }

      swift_beginAccess();

      v9 = IMDSqlOperationHasRows(v0 + 16);
      swift_endAccess();
    }

    while (v9);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  return v2;
}

char *SqlOperation.doubles(forColumnIndex:)()
{

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v0 + 16);
  swift_endAccess();
  if (HasRows)
  {
    type metadata accessor for SqlOperation.Row();
    v2 = MEMORY[0x1E69E7CC0];
    v3 = MEMORY[0x1E69E7CC8];
    do
    {
      inited = swift_initStackObject();
      *(inited + 16) = v0;
      *(inited + 24) = v3;
      swift_beginAccess();
      v5 = IMDSqlStatementColumnCount((v0 + 48));
      swift_endAccess();
      if (v5 && (swift_beginAccess(), IMDSqlStatementColumnByIndex((v0 + 48), 0, &v17), v6 = v17, v7 = v18, v8 = v19, swift_endAccess(), v20 = v6, v21 = v7, v22 = v8, IMDSqlColumnGetType(&v20) == 2))
      {
        swift_beginAccess();
        IMDSqlStatementColumnByIndex((v0 + 48), 0, &v17);
        v10 = v17;
        v11 = v18;
        v12 = v19;
        swift_endAccess();
        v20 = v10;
        v21 = v11;
        v22 = v12;
        v13 = IMDDoubleFromSqlColumn(&v20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1B7CA30C4(0, *(v2 + 2) + 1, 1, v2);
        }

        v15 = *(v2 + 2);
        v14 = *(v2 + 3);
        if (v15 >= v14 >> 1)
        {
          v2 = sub_1B7CA30C4((v14 > 1), v15 + 1, 1, v2);
        }

        *(v2 + 2) = v15 + 1;
        *&v2[8 * v15 + 32] = v13;
      }

      else
      {
      }

      swift_beginAccess();

      v9 = IMDSqlOperationHasRows(v0 + 16);
      swift_endAccess();
    }

    while (v9);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  return v2;
}

unsigned __int8 *SqlOperation.strings(forColumnIndex:)()
{

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v0 + 16);
  swift_endAccess();
  if (HasRows)
  {
    type metadata accessor for SqlOperation.Row();
    v2 = MEMORY[0x1E69E7CC0];
    v3 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      inited = swift_initStackObject();
      *(inited + 16) = v0;
      *(inited + 24) = v3;
      swift_beginAccess();
      v5 = IMDSqlStatementColumnCount((v0 + 48));
      swift_endAccess();
      if (v5 && (swift_beginAccess(), IMDSqlStatementColumnByIndex((v0 + 48), 0, &v21), v6 = v21, v7 = v22, v8 = v23, swift_endAccess(), v24 = v6, v25 = v7, v26 = v8, IMDSqlColumnGetType(&v24) == 3))
      {
        swift_beginAccess();
        IMDSqlStatementColumnByIndex((v0 + 48), 0, &v21);
        v10 = v21;
        v11 = v22;
        v12 = v23;
        swift_endAccess();
        v24 = v10;
        v25 = v11;
        v26 = v12;
        result = IMDStringFromSqlColumn(&v24);
        if (!result)
        {
          __break(1u);
          return result;
        }

        v14 = result;
        v15 = sub_1B7CFEA60();
        v17 = v16;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1B7AF182C(0, *(v2 + 2) + 1, 1, v2);
        }

        v19 = *(v2 + 2);
        v18 = *(v2 + 3);
        if (v19 >= v18 >> 1)
        {
          v2 = sub_1B7AF182C((v18 > 1), v19 + 1, 1, v2);
        }

        *(v2 + 2) = v19 + 1;
        v20 = &v2[16 * v19];
        *(v20 + 4) = v15;
        *(v20 + 5) = v17;
      }

      else
      {
      }

      swift_beginAccess();

      v9 = IMDSqlOperationHasRows(v0 + 16);
      swift_endAccess();
      if (!v9)
      {
        goto LABEL_15;
      }
    }
  }

  v2 = MEMORY[0x1E69E7CC0];
LABEL_15:

  return v2;
}

CFDataRef SqlOperation.blobs(forColumnIndex:)()
{

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v0 + 16);
  swift_endAccess();
  if (HasRows)
  {
    type metadata accessor for SqlOperation.Row();
    v2 = MEMORY[0x1E69E7CC0];
    v3 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      inited = swift_initStackObject();
      *(inited + 16) = v0;
      *(inited + 24) = v3;
      swift_beginAccess();
      v5 = IMDSqlStatementColumnCount((v0 + 48));
      swift_endAccess();
      if (v5 && (swift_beginAccess(), IMDSqlStatementColumnByIndex((v0 + 48), 0, &v21), v6 = v21, v7 = v22, v8 = v23, swift_endAccess(), v24 = v6, v25 = v7, v26 = v8, IMDSqlColumnGetType(&v24) == 4))
      {
        swift_beginAccess();
        IMDSqlStatementColumnByIndex((v0 + 48), 0, &v21);
        v10 = v21;
        v11 = v22;
        v12 = v23;
        swift_endAccess();
        v24 = v10;
        v25 = v11;
        v26 = v12;
        result = IMDBlobFromSqlColumn(&v24);
        if (!result)
        {
          __break(1u);
          return result;
        }

        v14 = result;
        v15 = sub_1B7CFE020();
        v17 = v16;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1B7CA28E4(0, *(v2 + 2) + 1, 1, v2);
        }

        v19 = *(v2 + 2);
        v18 = *(v2 + 3);
        if (v19 >= v18 >> 1)
        {
          v2 = sub_1B7CA28E4((v18 > 1), v19 + 1, 1, v2);
        }

        *(v2 + 2) = v19 + 1;
        v20 = &v2[16 * v19];
        *(v20 + 4) = v15;
        *(v20 + 5) = v17;
      }

      else
      {
      }

      swift_beginAccess();

      v9 = IMDSqlOperationHasRows(v0 + 16);
      swift_endAccess();
      if (!v9)
      {
        goto LABEL_15;
      }
    }
  }

  v2 = MEMORY[0x1E69E7CC0];
LABEL_15:

  return v2;
}

char *SqlOperation.objects(forColumnIndex:)()
{

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v0 + 16);
  swift_endAccess();
  if (HasRows)
  {
    type metadata accessor for SqlOperation.Row();
    v2 = MEMORY[0x1E69E7CC0];
    v3 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      inited = swift_initStackObject();
      *(inited + 16) = v0;
      *(inited + 24) = v3;
      swift_beginAccess();
      v5 = IMDSqlStatementColumnCount((v0 + 48));
      swift_endAccess();
      if (v5)
      {
        swift_beginAccess();
        IMDSqlStatementColumnByIndex((v0 + 48), 0, v15);
        v6 = v15[0];
        v7 = v15[1];
        v8 = v15[2];
        swift_endAccess();
        *&v13 = v6;
        *(&v13 + 1) = v7;
        *&v14 = v8;
        if (IMDSqlColumnGetObject(&v13))
        {
          sub_1B7CFF0A0();
          swift_unknownObjectRelease();
        }

        else
        {
          v13 = 0u;
          v14 = 0u;
        }

        v16 = v13;
        v17 = v14;
        if (*(&v14 + 1))
        {
          sub_1B7C255E0(&v16, v18);
          sub_1B7AED284(v18, &v16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_1B7CA31C8(0, *(v2 + 2) + 1, 1, v2);
          }

          v11 = *(v2 + 2);
          v10 = *(v2 + 3);
          if (v11 >= v10 >> 1)
          {
            v2 = sub_1B7CA31C8((v10 > 1), v11 + 1, 1, v2);
          }

          sub_1B7AE9168(v18);
          *(v2 + 2) = v11 + 1;
          sub_1B7C255E0(&v16, &v2[32 * v11 + 32]);
          goto LABEL_10;
        }
      }

      else
      {
        v16 = 0u;
        v17 = 0u;
      }

      sub_1B7AEE190(&v16, &qword_1EBA51FA8, qword_1B7D0B230);
LABEL_10:
      swift_beginAccess();

      v9 = IMDSqlOperationHasRows(v0 + 16);
      swift_endAccess();
      if (!v9)
      {
        goto LABEL_18;
      }
    }
  }

  v2 = MEMORY[0x1E69E7CC0];
LABEL_18:

  return v2;
}

uint64_t sub_1B7CAC880(unint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  v7 = v4;

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v4 + 16);
  swift_endAccess();
  if (HasRows)
  {
    v24 = a4;
    type metadata accessor for SqlOperation.Row();
    v11 = MEMORY[0x1E69E7CC0];
    v12 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      while (1)
      {
        inited = swift_initStackObject();
        v15 = sub_1B7C23650(v11);
        *(inited + 16) = v7;
        *(inited + 24) = v15;
        SqlOperation.Row.column(forColumnName:)(a1, a2, &v25);
        if (*(&v25 + 1))
        {
          break;
        }

        swift_setDeallocating();

        sub_1B7AEE190(&v25, &qword_1EBA52298, &unk_1B7D10570);
LABEL_4:
        swift_beginAccess();

        v13 = IMDSqlOperationHasRows(v7 + 16);
        swift_endAccess();
        if (!v13)
        {
          goto LABEL_15;
        }
      }

      v29[0] = v25;
      v29[1] = v26;
      v29[2] = v27;
      v29[3] = v28;
      v16 = v26;
      sub_1B7C26C78(v29);
      v17 = a3(v16);
      if (v18)
      {
        swift_setDeallocating();

        goto LABEL_4;
      }

      v19 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = (v24)(0, *(v12 + 16) + 1, 1, v12);
      }

      v21 = *(v12 + 16);
      v20 = *(v12 + 24);
      if (v21 >= v20 >> 1)
      {
        v12 = v24(v20 > 1);
      }

      *(v12 + 16) = v21 + 1;
      *(v12 + 8 * v21 + 32) = v19;
      swift_beginAccess();

      v22 = IMDSqlOperationHasRows(v7 + 16);
      swift_endAccess();
      if (!v22)
      {
        goto LABEL_15;
      }
    }
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_15:

  return v12;
}

char *SqlOperation.doubles(forColumnName:)(unint64_t a1, unint64_t a2)
{
  v3 = v2;

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v2 + 16);
  swift_endAccess();
  if (HasRows)
  {
    type metadata accessor for SqlOperation.Row();
    v7 = MEMORY[0x1E69E7CC0];
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      inited = swift_initStackObject();
      v11 = sub_1B7C23650(v7);
      *(inited + 16) = v3;
      *(inited + 24) = v11;
      SqlOperation.Row.column(forColumnName:)(a1, a2, &v18);
      if (*(&v18 + 1))
      {
        v22[0] = v18;
        v22[1] = v19;
        v22[2] = v20;
        v22[3] = v21;
        v12 = v19;
        sub_1B7C26C78(v22);
        v23 = SqlOperation.Row.double(forColumnIndex:)(v12);
        if (v13)
        {
          swift_setDeallocating();
        }

        else
        {
          v17 = *&v23.is_nil;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1B7CA30C4(0, *(v8 + 2) + 1, 1, v8);
          }

          v15 = *(v8 + 2);
          v14 = *(v8 + 3);
          if (v15 >= v14 >> 1)
          {
            v8 = sub_1B7CA30C4((v14 > 1), v15 + 1, 1, v8);
          }

          *(v8 + 2) = v15 + 1;
          *&v8[8 * v15 + 32] = v17;
        }
      }

      else
      {
        swift_setDeallocating();

        sub_1B7AEE190(&v18, &qword_1EBA52298, &unk_1B7D10570);
      }

      swift_beginAccess();

      v9 = IMDSqlOperationHasRows(v3 + 16);
      swift_endAccess();
    }

    while (v9);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  return v8;
}

char *SqlOperation.strings(forColumnName:)(unint64_t a1, unint64_t a2)
{
  v3 = v2;

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v2 + 16);
  swift_endAccess();
  if (HasRows)
  {
    type metadata accessor for SqlOperation.Row();
    v7 = MEMORY[0x1E69E7CC0];
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      inited = swift_initStackObject();
      v11 = sub_1B7C23650(v7);
      *(inited + 16) = v3;
      *(inited + 24) = v11;
      SqlOperation.Row.column(forColumnName:)(a1, a2, &v17);
      if (*(&v17 + 1))
      {
        v21[0] = v17;
        v21[1] = v18;
        v21[2] = v19;
        v21[3] = v20;
        v12 = v18;
        sub_1B7C26C78(v21);
        v13 = SqlOperation.Row.string(forColumnIndex:)(v12);
        if (v13.value._object)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1B7AF182C(0, *(v8 + 2) + 1, 1, v8);
          }

          v15 = *(v8 + 2);
          v14 = *(v8 + 3);
          if (v15 >= v14 >> 1)
          {
            v8 = sub_1B7AF182C((v14 > 1), v15 + 1, 1, v8);
          }

          *(v8 + 2) = v15 + 1;
          *&v8[16 * v15 + 32] = v13;
        }

        else
        {
          swift_setDeallocating();
        }
      }

      else
      {
        swift_setDeallocating();

        sub_1B7AEE190(&v17, &qword_1EBA52298, &unk_1B7D10570);
      }

      swift_beginAccess();

      v9 = IMDSqlOperationHasRows(v3 + 16);
      swift_endAccess();
    }

    while (v9);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  return v8;
}

char *SqlOperation.blobs(forColumnName:)(unint64_t a1, unint64_t a2)
{
  v3 = v2;

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v2 + 16);
  swift_endAccess();
  if (HasRows)
  {
    type metadata accessor for SqlOperation.Row();
    v7 = MEMORY[0x1E69E7CC0];
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      inited = swift_initStackObject();
      v11 = sub_1B7C23650(v7);
      *(inited + 16) = v3;
      *(inited + 24) = v11;
      SqlOperation.Row.column(forColumnName:)(a1, a2, &v21);
      if (*(&v21 + 1))
      {
        v25[0] = v21;
        v25[1] = v22;
        v25[2] = v23;
        v25[3] = v24;
        v12 = v22;
        sub_1B7C26C78(v25);
        v13 = SqlOperation.Row.blob(forColumnIndex:)(v12);
        if (v14 >> 60 == 15)
        {
          swift_setDeallocating();
        }

        else
        {
          v19 = v13;
          v20 = v14;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1B7CA28E4(0, *(v8 + 2) + 1, 1, v8);
          }

          v16 = *(v8 + 2);
          v15 = *(v8 + 3);
          if (v16 >= v15 >> 1)
          {
            v8 = sub_1B7CA28E4((v15 > 1), v16 + 1, 1, v8);
          }

          *(v8 + 2) = v16 + 1;
          v17 = &v8[16 * v16];
          *(v17 + 4) = v19;
          *(v17 + 5) = v20;
        }
      }

      else
      {
        swift_setDeallocating();

        sub_1B7AEE190(&v21, &qword_1EBA52298, &unk_1B7D10570);
      }

      swift_beginAccess();

      v9 = IMDSqlOperationHasRows(v3 + 16);
      swift_endAccess();
    }

    while (v9);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  return v8;
}

char *SqlOperation.objects(forColumnName:)(unint64_t a1, unint64_t a2)
{
  v3 = v2;

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v2 + 16);
  swift_endAccess();
  if (HasRows)
  {
    type metadata accessor for SqlOperation.Row();
    v7 = MEMORY[0x1E69E7CC0];
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      inited = swift_initStackObject();
      v10 = sub_1B7C23650(v7);
      *(inited + 16) = v3;
      *(inited + 24) = v10;
      SqlOperation.Row.column(forColumnName:)(a1, a2, &v16);
      if (*(&v16 + 1))
      {
        v20[0] = v16;
        v20[1] = v17;
        v20[2] = v18;
        v20[3] = v19;
        v11 = v17;
        sub_1B7C26C78(v20);
        SqlOperation.Row.object(forColumnIndex:)(v11, &v21);
        if (*(&v22 + 1))
        {
          sub_1B7C255E0(&v21, v23);
          sub_1B7AED284(v23, v20);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1B7CA31C8(0, *(v8 + 2) + 1, 1, v8);
          }

          v14 = *(v8 + 2);
          v13 = *(v8 + 3);
          if (v14 >= v13 >> 1)
          {
            v8 = sub_1B7CA31C8((v13 > 1), v14 + 1, 1, v8);
          }

          sub_1B7AE9168(v23);
          *(v8 + 2) = v14 + 1;
          sub_1B7C255E0(v20, &v8[32 * v14 + 32]);
          goto LABEL_8;
        }
      }

      else
      {

        sub_1B7AEE190(&v16, &qword_1EBA52298, &unk_1B7D10570);
        v21 = 0u;
        v22 = 0u;
      }

      sub_1B7AEE190(&v21, &qword_1EBA51FA8, qword_1B7D0B230);
LABEL_8:
      swift_beginAccess();

      v12 = IMDSqlOperationHasRows(v3 + 16);
      swift_endAccess();
      if (!v12)
      {
        goto LABEL_16;
      }
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_16:

  return v8;
}

sqlite3_int64 _s14IMDPersistence12SqlOperationC7uint64s14forColumnIndexSays6UInt64VGSi_tF_0()
{

  swift_beginAccess();

  HasRows = IMDSqlOperationHasRows(v0 + 16);
  swift_endAccess();
  if (HasRows)
  {
    type metadata accessor for SqlOperation.Row();
    v2 = MEMORY[0x1E69E7CC0];
    v3 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      inited = swift_initStackObject();
      *(inited + 16) = v0;
      *(inited + 24) = v3;
      swift_beginAccess();
      v5 = IMDSqlStatementColumnCount((v0 + 48));
      swift_endAccess();
      if (v5 && (swift_beginAccess(), IMDSqlStatementColumnByIndex((v0 + 48), 0, &v17), v6 = v17, v7 = v18, v8 = v19, swift_endAccess(), v20 = v6, v21 = v7, v22 = v8, IMDSqlColumnGetType(&v20) == 1))
      {
        swift_beginAccess();
        IMDSqlStatementColumnByIndex((v0 + 48), 0, &v17);
        v10 = v17;
        v11 = v18;
        v12 = v19;
        swift_endAccess();
        v20 = v10;
        v21 = v11;
        v22 = v12;
        result = IMDInt64FromSqlColumn(&v20);
        if (result < 0)
        {
          __break(1u);
          return result;
        }

        v14 = result;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1B7CA21C0(0, *(v2 + 2) + 1, 1, v2);
        }

        v16 = *(v2 + 2);
        v15 = *(v2 + 3);
        if (v16 >= v15 >> 1)
        {
          v2 = sub_1B7CA21C0((v15 > 1), v16 + 1, 1, v2);
        }

        *(v2 + 2) = v16 + 1;
        *&v2[8 * v16 + 32] = v14;
      }

      else
      {
      }

      swift_beginAccess();

      v9 = IMDSqlOperationHasRows(v0 + 16);
      swift_endAccess();
      if (!v9)
      {
        goto LABEL_15;
      }
    }
  }

  v2 = MEMORY[0x1E69E7CC0];
LABEL_15:

  return v2;
}

unint64_t sub_1B7CAD628()
{
  result = qword_1EBA53430;
  if (!qword_1EBA53430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53430);
  }

  return result;
}

unint64_t sub_1B7CAD680()
{
  result = qword_1EBA53438;
  if (!qword_1EBA53438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53438);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for SqlOperation.RowIterator(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *assignWithCopy for SqlOperation.RowIterator(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *assignWithTake for SqlOperation.RowIterator(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_1B7CAD7EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B7CAD834(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1B7CAD88C(uint64_t a1)
{
  sub_1B7CFEB10();
  if (v1[3])
  {
    sub_1B7CFF7E0();
    sub_1B7CFE960();
    sub_1B7CADCA8(&qword_1EBA53458, MEMORY[0x1E697BD38], MEMORY[0x1E697BD40]);
    sub_1B7CFE9C0();
  }

  else
  {
    sub_1B7CFF7E0();
  }

  MEMORY[0x1B8CAE910](*(v1[4] + 16));
  return MEMORY[0x1B8CAE910](v1[2]);
}

uint64_t sub_1B7CAD964(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_1B7CAD9C8()
{
  sub_1B7CFF7C0();
  sub_1B7CAD88C(v1);
  return sub_1B7CFF800();
}

uint64_t sub_1B7CADA0C(uint64_t a1)
{
  sub_1B7CFF7C0();
  sub_1B7CAD88C(v2);
  return sub_1B7CFF800();
}

BOOL sub_1B7CADA48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1B7CADB8C(v5, v7);
}

unint64_t sub_1B7CADA98()
{
  result = qword_1EBA53440;
  if (!qword_1EBA53440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53440);
  }

  return result;
}

unint64_t sub_1B7CADAF0()
{
  result = qword_1EBA53448;
  if (!qword_1EBA53448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53448);
  }

  return result;
}

BOOL sub_1B7CADB8C(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B7CFF590() & 1) == 0)
  {
    return 0;
  }

  v5 = a2[3];
  if (a1[3])
  {
    if (!v5)
    {
      return 0;
    }

    sub_1B7CFE960();
    sub_1B7CADCA8(qword_1EBA53460, MEMORY[0x1E697BD38], MEMORY[0x1E697BD48]);

    v6 = sub_1B7CFEA20();

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (a1[4] == a2[4])
  {
    return a1[2] == a2[2];
  }

  return 0;
}

uint64_t sub_1B7CADCA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B7CADCF0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1B7CADD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for SQLEntitySnapshotEncoder.KeyedRecordEncoder(0, a6, a7, a4);

  swift_getWitnessTable();
  return sub_1B7CFF530();
}

uint64_t sub_1B7CADEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a4 + 48);
  if (*(v5 + 16) && (v8 = sub_1B7AE11D0(a2, a3), (v9 & 1) != 0))
  {
    v19 = *(*(v5 + 56) + 16 * v8);
    sub_1B7AE90A8(a1, v20);
    swift_beginAccess();
    v10 = *(a5 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a5 + 16) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_1B7CA32D8(0, v10[2] + 1, 1, v10);
      *(a5 + 16) = v10;
    }

    v13 = v10[2];
    v12 = v10[3];
    if (v13 >= v12 >> 1)
    {
      v10 = sub_1B7CA32D8((v12 > 1), v13 + 1, 1, v10);
    }

    v10[2] = v13 + 1;
    v14 = &v10[7 * v13];
    v15 = v20[0];
    v16 = v20[1];
    v14[10] = v21;
    *(v14 + 3) = v15;
    *(v14 + 4) = v16;
    *(v14 + 2) = v19;
    *(a5 + 16) = v10;
    return swift_endAccess();
  }

  else
  {
    sub_1B7CAEED8();
    swift_allocError();
    *v18 = xmmword_1B7D09AC0;
    *(v18 + 16) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_1B7CAE028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[4] = a5;
  v8 = *v5;
  v9 = v5[1];
  v14[3] = a4;
  v10 = sub_1B7C1A14C(v14);
  (*(*(a4 - 8) + 16))(v10, a1, a4);
  v11 = sub_1B7CFF890();
  sub_1B7CADEB4(v14, v11, v12, v8, v9);

  return sub_1B7AE9168(v14);
}

void sub_1B7CAE120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v30 = *(a4 - 8);
  v31 = a1;
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B7CFE5C0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a3 + 24);
  v33 = a2;
  v12 = sub_1B7CFF890();
  v14 = v13;
  (*(v9 + 104))(v11, *MEMORY[0x1E697BB70], v8);
  v15 = sub_1B7CFE5B0();
  v17 = v16;
  (*(v9 + 8))(v11, v8);
  if (v12 == v15 && v14 == v17)
  {
  }

  else
  {
    v19 = sub_1B7CFF590();

    if ((v19 & 1) == 0)
    {
      v20 = v34;
      (*(v30 + 16))(v7, v31, v34);
      sub_1B7C107FC(&qword_1EBA52460, &qword_1B7D113A0);
      if (swift_dynamicCast())
      {
        sub_1B7AE910C(v35, v37);
        v21 = *v29;
        v22 = v29[1];
        v23 = sub_1B7CFF890();
        sub_1B7CADEB4(v37, v23, v24, v21, v22);
        sub_1B7AE9168(v37);
      }

      else
      {
        v36 = 0;
        memset(v35, 0, sizeof(v35));
        sub_1B7C1A0C8(v35);
        v25 = sub_1B7CFF890();
        v27 = v26;
        sub_1B7CAEED8();
        swift_allocError();
        *v28 = v25;
        v28[1] = v27;
        v28[2] = v20;
        swift_willThrow();
      }
    }
  }
}

uint64_t sub_1B7CAE438(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v4 = sub_1B7C107FC(&qword_1EBA51FB0, &unk_1B7D0FA00);
  v5 = sub_1B7AF6C94(&qword_1EBA50E68, &off_1F2FA8B58, &unk_1B7D13BD0);
  sub_1B7AF6C94(&qword_1EBA523D8, MEMORY[0x1E69E6160], MEMORY[0x1E69E7C70]);
  return sub_1B7CAE028(&v7, a1, a2, v4, v5);
}

uint64_t sub_1B7CAE6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = a1;
  v5[1] = a2;
  return sub_1B7CAE028(v5, a3, a4, MEMORY[0x1E69E6158], &off_1F2FA8B58);
}

uint64_t sub_1B7CAEDE4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1B7CAEE2C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1B7CAEE94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1B7CAEED8()
{
  result = qword_1EBA534E8;
  if (!qword_1EBA534E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA534E8);
  }

  return result;
}

uint64_t sub_1B7CAEF2C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B7CAEF44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 24))
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

uint64_t sub_1B7CAEF98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1B7CAEFF8(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void sub_1B7CAF02C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a1;
  v9 = sub_1B7CFE710();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v43 - v10;

  v12 = sub_1B7CFE8A0();

  if (!v12)
  {
    goto LABEL_9;
  }

  v54 = v4;
  v13 = *(*(v4 + 56) + 32);

  v14 = sub_1B7CFE880();
  if (!*(v13 + 16))
  {

    goto LABEL_8;
  }

  v52 = v11;
  v53 = a4;
  v16 = sub_1B7AE11D0(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_8:

LABEL_9:
    sub_1B7CB25E0();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v19 = *(*(v13 + 56) + 8 * v16);

  v20 = *(v54 + 72);

  v21 = sub_1B7CB2974(v55, v19, 1, a2, a3);
  if (v5)
  {

LABEL_6:

    return;
  }

  v46 = v21;
  v47 = v22;
  v48 = v23;
  v49 = 0;
  v50 = v19;
  v51 = v20;
  v43[0] = a2;
  v24 = v19[4];
  v25 = *(v24 + 16);
  v26 = MEMORY[0x1E69E7CC0];
  if (v25)
  {
    v43[2] = a3;
    v44 = v12;
    v73 = MEMORY[0x1E69E7CC0];

    v45 = v25;
    sub_1B7C31430(0, v25, 0);
    v27 = v45;
    v28 = 0;
    v26 = v73;
    v29 = v24 + 32;
    v43[1] = v24;
    v56 = *(v24 + 16);
    while (v56 != v28)
    {
      sub_1B7AEBEFC(v29, v71);
      v60 = v28;
      v66 = v71[5];
      v67 = v71[6];
      v68 = v71[7];
      v69 = v72;
      v62 = v71[1];
      v63 = v71[2];
      v64 = v71[3];
      v65 = v71[4];
      v61 = v71[0];
      sub_1B7C2569C(&v60, &v58, &qword_1EBA53540, &qword_1B7D11EE8);
      v30 = v59[1];
      v57 = v59[0];

      sub_1B7AEBF70(v59);
      sub_1B7AEE190(&v60, &qword_1EBA53540, &qword_1B7D11EE8);
      v73 = v26;
      v32 = *(v26 + 16);
      v31 = *(v26 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1B7C31430((v31 > 1), v32 + 1, 1);
        v27 = v45;
        v26 = v73;
      }

      ++v28;
      *(v26 + 16) = v32 + 1;
      v33 = (v26 + 24 * v32);
      v33[4] = v57;
      v33[5] = v30;
      v33[6] = v28;
      v29 += 136;
      if (v27 == v28)
      {

        v12 = v44;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    v70 = &unk_1F2FA23A8;
    sub_1B7C50F30(v26);
    if (v70[2])
    {
      sub_1B7C107FC(&qword_1EBA52180, &qword_1B7D0B300);
      v34 = sub_1B7CFF380();
    }

    else
    {
      v34 = MEMORY[0x1E69E7CC8];
    }

    v70 = v34;

    v36 = v49;
    sub_1B7CB2264(v35, 1, &v70);
    if (!v36)
    {

      v37 = v70;
      v70 = MEMORY[0x1E69E7CC0];
      v38 = sub_1B7AE3B2C(v46, v47, 0);

      v39 = v50;

      v40 = v54;

      sub_1B7C9523C(v48, v38, v39, v12, v37, v40, &v70);

      v41 = v43[0];
      sub_1B7CFE580();
      sub_1B7CFE570();
      v42 = sub_1B7CFE6C0();
      sub_1B7CB3434(&qword_1EBA53500, MEMORY[0x1E697BC08], MEMORY[0x1E697BC00]);

      sub_1B7CAF634(v41, v42);
      sub_1B7CFE560();

      goto LABEL_6;
    }
  }

  swift_unexpectedError();
  __break(1u);
}

unint64_t sub_1B7CAF634(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B7CFE7C0();
  swift_getTupleTypeMetadata2();
  v4 = sub_1B7CFED10();
  v5 = sub_1B7CB3434(&qword_1EBA52048, MEMORY[0x1E697BC90], MEMORY[0x1E697BCA0]);
  v6 = sub_1B7CB2688(v4, v3, a2, v5);

  return v6;
}

uint64_t sub_1B7CAF6E8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v8 = sub_1B7CFE8A0();

  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = *(*(v3 + 56) + 32);

  v10 = sub_1B7CFE880();
  if (!*(v9 + 16))
  {

    goto LABEL_7;
  }

  v12 = sub_1B7AE11D0(v10, v11);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
LABEL_7:

LABEL_8:
    sub_1B7CB25E0();
    swift_allocError();
    swift_willThrow();
    return a3;
  }

  v15 = *(*(v9 + 56) + 8 * v12);

  v16 = sub_1B7CB2974(a1, v15, 0, a2, a3);
  if (v4)
  {
  }

  else
  {
    v20 = v18;
    v21 = sub_1B7AE3B2C(v16, v17, 0);

    v22 = MEMORY[0x1E69E7CC0];

    sub_1B7AF2C24(v20, v21, &v22, v21);

    if (*(v22 + 16))
    {
      a3 = *(v22 + 32);
    }

    else
    {
      a3 = 0;
    }
  }

  return a3;
}

void sub_1B7CAF964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;

  v9 = sub_1B7CFE8A0();

  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = *(v3[7] + 32);

  v11 = sub_1B7CFE880();
  if (!*(v10 + 16))
  {

    goto LABEL_7;
  }

  v13 = sub_1B7AE11D0(v11, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_7:

LABEL_8:
    sub_1B7CB25E0();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v16 = *(*(v10 + 56) + 8 * v13);

  v17 = sub_1B7CB2974(a1, v16, 2, a2, a3);
  if (v4)
  {
  }

  else
  {
    v20 = v19;
    v22 = MEMORY[0x1E69E7CC0];
    v21 = sub_1B7AE3B2C(v17, v18, 0);

    sub_1B7C958A4(v20, v21, v5, v9, &v22);
  }
}

void sub_1B7CAFBE0(uint64_t *a1, void *a2, void *a3, uint64_t *a4)
{
  v10 = sub_1B7CFE7C0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - v14;
  if (!a1[2])
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = a1[5];
  if (v16 < 0xFFFFFFFF80000000)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v16 > 0x7FFFFFFF)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    a3 = sub_1B7CA3450(0, a3[2] + 1, 1, a3);
    *a1 = a3;
    goto LABEL_7;
  }

  v24 = v13;
  v25 = a4;
  v17 = sqlite3_column_int64(a1[4], v16);

  sub_1B7CFE880();
  v26 = v17;
  sub_1B7CFE7B0();
  if (v4)
  {

    return;
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = a2[10];
  a2[10] = 0x8000000000000000;
  sub_1B7CA61B0(v17, v15, isUniquelyReferenced_nonNull_native);
  a2[10] = v27;
  swift_endAccess();
  v5 = v24;
  (*(v11 + 16))(v24, v15, v10);
  a1 = v25;
  a3 = *v25;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  *a1 = a3;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v21 = a3[2];
  v20 = a3[3];
  if (v21 >= v20 >> 1)
  {
    *a1 = sub_1B7CA3450((v20 > 1), v21 + 1, 1, a3);
  }

  (*(v11 + 8))(v15, v10);
  v22 = *a1;
  *(v22 + 16) = v21 + 1;
  (*(v11 + 32))(v22 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v21, v5, v10);
}

void sub_1B7CAFEE8(uint64_t a1)
{
  if (*(*(v1 + 72) + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration) == 1)
  {
    v4 = MEMORY[0x1E69E7CC8];
    sub_1B7CB0004(a1, v1, &v4);
    if (!v2)
    {

      sub_1B7C24BE0(MEMORY[0x1E69E7CC0]);
      sub_1B7C107FC(&qword_1EBA53510, &unk_1B7D134C0);
      swift_allocObject();
      sub_1B7CFE5A0();
    }
  }

  else
  {
    sub_1B7CB202C();
    swift_allocError();
    *v3 = 0;
    swift_willThrow();
  }
}

void sub_1B7CB0004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v50 = a3;
  v55 = a2;
  v6 = sub_1B7C107FC(&qword_1EBA53518, &qword_1B7D11ED8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v49 = v40 - v7;
  v47 = sub_1B7CFE7C0();
  v8 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v48 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v40 - v11;
  v13 = sub_1B7CFE6C0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40[0] = sub_1B7C107FC(&qword_1EBA53520, &qword_1B7D11EE0);
  v40[1] = a1;
  v17 = sub_1B7CFE5F0();
  v46 = *(v17 + 16);
  if (v46)
  {
    v18 = 0;
    v43 = (v8 + 16);
    v44 = v14 + 16;
    v41 = (v8 + 8);
    v42 = (v8 + 56);
    v45 = (v14 + 8);
    while (1)
    {
      if (v18 >= *(v17 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v19 = *(v14 + 16);
      v19(v16, v17 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v18, v13);
      v53 = v13;
      v54 = sub_1B7CB3434(&qword_1EBA53500, MEMORY[0x1E697BC08], MEMORY[0x1E697BC00]);
      v20 = sub_1B7C1A14C(v52);
      v19(v20, v16, v13);
      sub_1B7CB0598(v52, v12);
      if (v4)
      {
        break;
      }

      ++v18;
      sub_1B7AE9168(v52);
      v51 = 0;
      v21 = v14;
      v22 = v13;
      v23 = v17;
      v24 = v48;
      sub_1B7CFE6B0();
      v25 = v49;
      v26 = v16;
      v27 = v47;
      (*v43)(v49, v12, v47);
      (*v42)(v25, 0, 1, v27);
      v28 = v24;
      v17 = v23;
      v13 = v22;
      v14 = v21;
      v4 = v51;
      sub_1B7CE0D14(v25, v28);
      v29 = v27;
      v16 = v26;
      (*v41)(v12, v29);
      (*v45)(v26, v13);
      if (v46 == v18)
      {
        goto LABEL_6;
      }
    }

    (*v45)(v16, v13);
LABEL_19:

    sub_1B7AE9168(v52);
  }

  else
  {
LABEL_6:

    v30 = sub_1B7CFE5E0();
    v31 = *(v30 + 16);
    if (v31)
    {
      v32 = 0;
      while (v32 < *(v30 + 16))
      {
        v33 = v30 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v32;
        v53 = v13;
        v54 = sub_1B7CB3434(&qword_1EBA53500, MEMORY[0x1E697BC08], MEMORY[0x1E697BC00]);
        v34 = sub_1B7C1A14C(v52);
        (*(v14 + 16))(v34, v33, v13);
        sub_1B7CB0FB8(v52);
        if (v4)
        {
          goto LABEL_19;
        }

        ++v32;
        sub_1B7AE9168(v52);
        if (v31 == v32)
        {
          goto LABEL_11;
        }
      }

LABEL_21:
      __break(1u);
    }

    else
    {
LABEL_11:

      v35 = sub_1B7CFE5D0();
      v36 = *(v35 + 16);
      if (!v36)
      {
LABEL_16:

        return;
      }

      v37 = 0;
      while (v37 < *(v35 + 16))
      {
        v38 = v35 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v37;
        v53 = v13;
        v54 = sub_1B7CB3434(&qword_1EBA53500, MEMORY[0x1E697BC08], MEMORY[0x1E697BC00]);
        v39 = sub_1B7C1A14C(v52);
        (*(v14 + 16))(v39, v38, v13);
        sub_1B7CB16D0(v52);
        if (v4)
        {
          goto LABEL_19;
        }

        ++v37;
        sub_1B7AE9168(v52);
        if (v36 == v37)
        {
          goto LABEL_16;
        }
      }
    }

    __break(1u);
  }
}

uint64_t sub_1B7CB0598@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v71 = a2;
  v6 = sub_1B7CFE7C0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v2;

  v10 = sub_1B7CFE820();

  sub_1B7AE9124(a1, a1[3]);
  sub_1B7CFE550();
  v11 = sub_1B7CFE7A0();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  if (!*(v10 + 16))
  {

    goto LABEL_8;
  }

  v14 = sub_1B7AE11D0(v11, v13);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
LABEL_8:

LABEL_11:
    sub_1B7CB25E0();
    swift_allocError();
    return swift_willThrow();
  }

  v17 = *(*(v10 + 56) + 8 * v14);

  v18 = v72;
  v19 = *(*(v72 + 56) + 32);

  v20 = sub_1B7CFE880();
  if (!*(v19 + 16))
  {

    goto LABEL_10;
  }

  v22 = sub_1B7AE11D0(v20, v21);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  v70 = v17;
  v25 = *(*(v19 + 56) + 8 * v22);

  v26 = *(v18 + 72);
  type metadata accessor for SQLEntitySnapshotEncoder.SQLStatementBuilder();
  v27 = swift_allocObject();
  v28 = MEMORY[0x1E69E7CC0];
  *(v27 + 16) = MEMORY[0x1E69E7CC0];
  v69 = v26;

  v29 = sub_1B7C249D0(v28);
  sub_1B7AE9124(a1, a1[3]);
  v85 = &type metadata for SQLEntitySnapshotEncoder.UpdateStatementEncoder;
  v86 = sub_1B7CB2634();
  v30 = swift_allocObject();
  v82 = v30;
  v30[2] = v25;
  v30[3] = v27;
  v30[4] = MEMORY[0x1E69E7CC0];
  v30[5] = v29;

  sub_1B7CFE9A0();
  v31 = v4;
  if (v4)
  {

    return sub_1B7AE9168(&v82);
  }

  else
  {

    sub_1B7AE9168(&v82);
    swift_beginAccess();
    v33 = *(v27 + 16);

    v35 = *(v25 + 16);
    v34 = *(v25 + 24);
    v36 = *(v33 + 16);
    v68 = v25;
    if (v36)
    {
      v65 = v35;
      v67 = 0;
      v73[0] = MEMORY[0x1E69E7CC0];
      v66 = v34;

      sub_1B7AE70B4(0, v36, 0);
      v64[1] = v33;
      v37 = v33 + 32;
      v38 = v73[0];
      v39 = v33 + 32;
      v40 = v36;
      do
      {
        sub_1B7C2569C(v39, &v82, &qword_1EBA53408, &unk_1B7D114E0);
        sub_1B7C2569C(&v82, &v79, &qword_1EBA53408, &unk_1B7D114E0);
        v41 = v79;
        v42 = v80;
        v76 = v79;
        v77 = v80;
        sub_1B7AE910C(v81, v78);

        sub_1B7AEE190(&v76, &qword_1EBA53408, &unk_1B7D114E0);
        sub_1B7AEE190(&v82, &qword_1EBA53408, &unk_1B7D114E0);
        v73[0] = v38;
        v44 = *(v38 + 16);
        v43 = *(v38 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_1B7AE70B4((v43 > 1), v44 + 1, 1);
          v38 = v73[0];
        }

        *(v38 + 16) = v44 + 1;
        v45 = v38 + 16 * v44;
        *(v45 + 32) = v41;
        *(v45 + 40) = v42;
        v39 += 56;
        --v40;
      }

      while (v40);
      v64[0] = v38;
      v87 = MEMORY[0x1E69E7CC0];
      sub_1B7AF5760(0, v36, 0);
      v46 = v87;
      do
      {
        sub_1B7C2569C(v37, &v82, &qword_1EBA53408, &unk_1B7D114E0);
        sub_1B7C2569C(&v82, &v79, &qword_1EBA53408, &unk_1B7D114E0);
        v76 = v79;
        v77 = v80;
        sub_1B7AE910C(v81, v78);
        sub_1B7AE90A8(v78, v73);
        sub_1B7AEE190(&v76, &qword_1EBA53408, &unk_1B7D114E0);
        sub_1B7AEE190(&v82, &qword_1EBA53408, &unk_1B7D114E0);
        v87 = v46;
        v48 = *(v46 + 16);
        v47 = *(v46 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_1B7AF5760((v47 > 1), v48 + 1, 1);
        }

        v49 = v74;
        v50 = v75;
        v51 = sub_1B7C1542C(v73, v74);
        v52 = MEMORY[0x1EEE9AC00](v51);
        v54 = v64 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v55 + 16))(v54, v52);
        sub_1B7CB5BB0(v48, v54, &v87, v49, v50);
        sub_1B7AE9168(v73);
        v46 = v87;
        v37 += 56;
        --v36;
      }

      while (v36);

      v31 = v67;
      v56 = MEMORY[0x1E69E7CC0];
      v34 = v66;
      v35 = v65;
      v57 = v64[0];
    }

    else
    {

      v46 = MEMORY[0x1E69E7CC0];
      v57 = MEMORY[0x1E69E7CC0];
      v56 = MEMORY[0x1E69E7CC0];
    }

    v82 = 0;
    v83 = 0xE000000000000000;
    v84 = v56;
    MEMORY[0x1B8CADCA0](0x4920545245534E49, 0xEC000000204F544ELL);
    MEMORY[0x1B8CADCA0](v35, v34);

    MEMORY[0x1B8CADCA0](10272, 0xE200000000000000);
    sub_1B7CB5600(v57);

    MEMORY[0x1B8CADCA0](0x5345554C41562029, 0xE900000000000020);
    sub_1B7AF57A0(v46);

    v58 = v84;
    v59 = v69;
    sub_1B7AE3B2C(v82, v83, 0);
    v60 = v72;
    v61 = v71;
    if (v31)
    {
    }

    else
    {
      sub_1B7AF3FE4(v58);

      insert_rowid = sqlite3_last_insert_rowid(*(v59 + 16));

      sub_1B7CFE880();
      v82 = insert_rowid;
      sub_1B7CFE7B0();

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v79 = *(v60 + 80);
      *(v60 + 80) = 0x8000000000000000;
      sub_1B7CA61B0(insert_rowid, v61, isUniquelyReferenced_nonNull_native);
      *(v60 + 80) = v79;
      swift_endAccess();
    }
  }
}

double sub_1B7CB0FB8(void *a1)
{
  v3 = sub_1B7CFE7C0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v53 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v48 - v7;
  v61 = v1;

  v9 = sub_1B7CFE820();

  v10 = a1[4];
  sub_1B7AE9124(a1, a1[3]);
  v52 = v10;
  sub_1B7CFE550();
  v11 = sub_1B7CFE7A0();
  v13 = v12;
  v14 = *(v4 + 8);
  v54 = v3;
  v15 = v3;
  v16 = v14;
  v14(v8, v15);
  if (!*(v9 + 16))
  {

    goto LABEL_10;
  }

  v17 = sub_1B7AE11D0(v11, v13);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_10:

LABEL_14:
    sub_1B7CB25E0();
    swift_allocError();
    swift_willThrow();
    return result;
  }

  v20 = *(*(v9 + 56) + 8 * v17);

  v21 = *(*(v61 + 56) + 32);

  v22 = sub_1B7CFE880();
  if (!*(v21 + 16))
  {

LABEL_13:

    goto LABEL_14;
  }

  v50 = v20;
  v24 = sub_1B7AE11D0(v22, v23);
  v26 = v25;

  if ((v26 & 1) == 0)
  {

    goto LABEL_13;
  }

  v49 = *(*(v21 + 56) + 8 * v24);

  v27 = v61;
  v28 = *(v61 + 72);

  v29 = v53;
  sub_1B7CFE550();
  swift_beginAccess();
  v30 = *(v27 + 80);
  if (*(v30 + 16) && (v31 = sub_1B7C40430(v29), (v32 & 1) != 0))
  {
    v61 = v28;
    v52 = *(*(v30 + 56) + 8 * v31);
    swift_endAccess();
    v16(v29, v54);
    type metadata accessor for SQLEntitySnapshotEncoder.SQLStatementBuilder();
    v33 = swift_allocObject();
    v34 = MEMORY[0x1E69E7CC0];
    *(v33 + 16) = MEMORY[0x1E69E7CC0];

    v35 = sub_1B7C249D0(v34);
    v36 = v49;
    sub_1B7AE9124(a1, a1[3]);
    v59 = &type metadata for SQLEntitySnapshotEncoder.UpdateStatementEncoder;
    v60 = sub_1B7CB2634();
    v37 = swift_allocObject();
    *&v58 = v37;
    v37[2] = v36;
    v37[3] = v33;
    v37[4] = v34;
    v37[5] = v35;

    v38 = v51;
    sub_1B7CFE9A0();
    if (v38)
    {

      sub_1B7AE9168(&v58);
    }

    else
    {
      v41 = v52;

      sub_1B7AE9168(&v58);
      swift_beginAccess();
      v42 = *(v33 + 16);

      v43 = *(v36 + 16);
      v44 = *(v36 + 24);
      v55 = 0;
      v56 = 0xE000000000000000;
      v57 = v34;

      MEMORY[0x1B8CADCA0](0x20455441445055, 0xE700000000000000);
      MEMORY[0x1B8CADCA0](v43, v44);

      MEMORY[0x1B8CADCA0](0x2054455320, 0xE500000000000000);
      sub_1B7CB573C(v42);

      MEMORY[0x1B8CADCA0](0x5220455245485720, 0xEF203D204449574FLL);
      v45 = v57;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_1B7AE3A9C(0, v45[2] + 1, 1, v45);
      }

      v47 = v45[2];
      v46 = v45[3];
      if (v47 >= v46 >> 1)
      {
        v45 = sub_1B7AE3A9C((v46 > 1), v47 + 1, 1, v45);
      }

      v59 = MEMORY[0x1E69E7360];
      v60 = &off_1F2FA8A78;
      *&v58 = v41;
      v45[2] = v47 + 1;
      sub_1B7AE910C(&v58, &v45[5 * v47 + 4]);
      v57 = v45;
      MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
      sub_1B7AE3B2C(v55, v56, 0);
      sub_1B7AF3FE4(v45);
    }
  }

  else
  {
    swift_endAccess();
    v16(v29, v54);
    sub_1B7CB202C();
    swift_allocError();
    *v40 = 1;
    swift_willThrow();
  }

  return result;
}

double sub_1B7CB16D0(void *a1)
{
  v3 = sub_1B7CFE7C0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v41 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v39 - v7;
  v46 = v1;

  v9 = sub_1B7CFE820();

  sub_1B7AE9124(a1, a1[3]);
  sub_1B7CFE550();
  v10 = sub_1B7CFE7A0();
  v12 = v11;
  v40 = *(v4 + 8);
  v40(v8, v3);
  if (!*(v9 + 16))
  {

    goto LABEL_12;
  }

  v13 = sub_1B7AE11D0(v10, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_12:

LABEL_16:
    sub_1B7CB25E0();
    swift_allocError();
    swift_willThrow();
    return result;
  }

  v16 = *(*(v9 + 56) + 8 * v13);

  v17 = *(*(v46 + 56) + 32);

  v18 = sub_1B7CFE880();
  if (!*(v17 + 16))
  {

LABEL_15:

    goto LABEL_16;
  }

  v39[1] = v16;
  v20 = sub_1B7AE11D0(v18, v19);
  v22 = v21;

  if ((v22 & 1) == 0)
  {

    goto LABEL_15;
  }

  v23 = *(*(v17 + 56) + 8 * v20);

  v24 = v46;
  v39[0] = *(v46 + 72);

  v25 = v41;
  sub_1B7CFE550();
  swift_beginAccess();
  v26 = *(v24 + 80);
  if (!*(v26 + 16) || (v27 = sub_1B7C40430(v25), (v28 & 1) == 0))
  {
    swift_endAccess();
    v40(v25, v3);
    sub_1B7CB202C();
    swift_allocError();
    *v38 = 1;
    swift_willThrow();

    goto LABEL_18;
  }

  v29 = v25;
  v30 = *(*(v26 + 56) + 8 * v27);
  swift_endAccess();
  v40(v29, v3);
  v32 = *(v23 + 16);
  v31 = *(v23 + 24);
  strcpy(v45, "DELETE FROM ");
  BYTE5(v45[1]) = 0;
  HIWORD(v45[1]) = -5120;

  MEMORY[0x1B8CADCA0](v32, v31);

  MEMORY[0x1B8CADCA0](0x5220455245485720, 0xEF203D204449574FLL);
  v33 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v35 = v33[2];
  v34 = v33[3];
  if (v35 >= v34 >> 1)
  {
    v33 = sub_1B7AE3A9C((v34 > 1), v35 + 1, 1, v33);
  }

  v43 = MEMORY[0x1E69E7360];
  v44 = &off_1F2FA8A78;
  *&v42 = v30;
  v33[2] = v35 + 1;
  sub_1B7AE910C(&v42, &v33[5 * v35 + 4]);
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  v36 = v39[2];
  sub_1B7AE3B2C(v45[0], v45[1], 0);
  if (v36)
  {

LABEL_18:

    return result;
  }

  sub_1B7AF3FE4(v33);

  return result;
}

uint64_t sub_1B7CB1C78()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1B7CB1D1C()
{
  result = qword_1EBA534F8;
  if (!qword_1EBA534F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA534F8);
  }

  return result;
}

uint64_t sub_1B7CB1DB8()
{
  v1 = *(v0 + 16);

  return v1;
}

double sub_1B7CB1DF0@<D0>(void *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v5 = v1[7];
  v4 = v1[8];
  v6 = v1[9];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v4;
  a1[4] = v6;

  return result;
}

unint64_t sub_1B7CB1E54(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[3];
  v4 = a1[4];
  v5 = swift_allocObject();
  result = sub_1B7C24BBC(MEMORY[0x1E69E7CC0]);
  *(v5 + 72) = v4;
  *(v5 + 80) = result;
  *(v5 + 40) = v2;
  v7 = *(a1 + 1);
  *(v5 + 48) = v7;
  *(v5 + 64) = v3;
  if (v3)
  {
    *(v5 + 32) = v3;
    *(v5 + 16) = v2;
    *(v5 + 24) = v7;

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B7CB202C()
{
  result = qword_1EBA53508;
  if (!qword_1EBA53508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53508);
  }

  return result;
}

unint64_t sub_1B7CB2080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B7CFE9B0();

  return sub_1B7CB20DC(a1, v6, a2, a3);
}

unint64_t sub_1B7CB20DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_1B7CFEA20();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

void sub_1B7CB2264(void *a1, char a2, void *a3)
{
  v37 = a1[2];
  if (!v37)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_1B7AE11D0(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1B7AEE574(v15, v5 & 1);
    v10 = sub_1B7AE11D0(v7, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_1B7CFF740();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_1B7CE8360();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    sub_1B7C107FC(&qword_1EBA51FC0, &qword_1B7D0A700);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v7;
  v22[1] = v6;
  *(v21[7] + 8 * v10) = v8;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1B7CFF210();
    MEMORY[0x1B8CADCA0](0xD00000000000001BLL, 0x80000001B7D57FF0);
    sub_1B7CFF320();
    MEMORY[0x1B8CADCA0](39, 0xE100000000000000);
    sub_1B7CFF340();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v37 != 1)
  {
    v5 = a1 + 9;
    v8 = 1;
    while (v8 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v25 = *v5;
      v26 = *a3;

      v27 = sub_1B7AE11D0(v7, v6);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_1B7AEE574(v31, 1);
        v27 = sub_1B7AE11D0(v7, v6);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v7;
      v34[1] = v6;
      *(v33[7] + 8 * v27) = v25;
      v35 = v33[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v8;
      v33[2] = v36;
      v5 += 3;
      if (v37 == v8)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

unint64_t sub_1B7CB25E0()
{
  result = qword_1EBA53528;
  if (!qword_1EBA53528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53528);
  }

  return result;
}

unint64_t sub_1B7CB2634()
{
  result = qword_1EBA53530;
  if (!qword_1EBA53530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53530);
  }

  return result;
}

unint64_t sub_1B7CB2688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1B7CFED50())
  {
    sub_1B7CFF390();
    v13 = sub_1B7CFF380();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1B7CFED50();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1B7CFED30())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1B7CFF230();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1B7CB2080(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_1B7CB2974(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v88 = a3;
  v104 = a4;
  v9 = sub_1B7CFE1B0();
  v83 = sub_1B7CFEFF0();
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v90 = &v78 - v10;
  v95 = a4;
  v94 = a5;
  v11 = sub_1B7CFE710();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v80 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v86 = &v78 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v85 = &v78 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v78 - v19;
  v92 = v9;
  v91 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v81 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v84 = &v78 - v24;
  v25 = a2[3];
  v93 = a2[2];
  v89 = v25;
  v87 = a2;
  v26 = a2[4];
  v27 = *(v26 + 16);
  v28 = MEMORY[0x1E69E7CC0];
  v96 = a1;
  if (v27)
  {
    v97 = v12;
    v79 = v11;
    *&v99 = MEMORY[0x1E69E7CC0];
    sub_1B7AECEEC(0, v27, 0);
    v29 = v99;
    v30 = v26 + 32;
    do
    {
      sub_1B7AEBEFC(v30, &v100);
      v31 = v101;
      v32 = v102;

      sub_1B7AEBF70(&v100);
      *&v99 = v29;
      v34 = *(v29 + 16);
      v33 = *(v29 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1B7AECEEC((v33 > 1), v34 + 1, 1);
        v29 = v99;
      }

      *(v29 + 16) = v34 + 1;
      v35 = v29 + 16 * v34;
      *(v35 + 32) = v31;
      *(v35 + 40) = v32;
      v30 += 136;
      --v27;
    }

    while (v27);
    v11 = v79;
    v12 = v97;
    v28 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC0];
  }

  if (v88)
  {
    if (v88 == 1)
    {
      *&v100 = v29;
      sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
      sub_1B7AF7FAC();
      v36 = sub_1B7CFEA10();
      v37 = v12;
      v39 = v38;

      *&v100 = 0x202C4449574F52;
      *(&v100 + 1) = 0xE700000000000000;
      MEMORY[0x1B8CADCA0](v36, v39);
      v12 = v37;

      v40 = *(&v100 + 1);
      v41 = v100;
    }

    else
    {

      v40 = 0xE500000000000000;
      v41 = 0x4449574F52;
    }
  }

  else
  {

    v40 = 0xE800000000000000;
    v41 = 0x292A28544E554F43;
  }

  *&v100 = 0;
  *(&v100 + 1) = 0xE000000000000000;
  sub_1B7CFF210();

  *&v100 = 0x205443454C4553;
  *(&v100 + 1) = 0xE700000000000000;
  MEMORY[0x1B8CADCA0](v41, v40);

  MEMORY[0x1B8CADCA0](0x204D4F524620, 0xE600000000000000);
  MEMORY[0x1B8CADCA0](v93, v89);
  v99 = v100;
  v98 = v28;
  v42 = v95;
  v89 = sub_1B7CFE580();
  sub_1B7CFE570();
  v43 = v90;
  sub_1B7CFE700();
  v45 = *(v12 + 8);
  v44 = v12 + 8;
  v93 = v45;
  v45(v20, v11);
  v46 = v91;
  v47 = v92;
  if ((*(v91 + 48))(v43, 1, v92) == 1)
  {
    (*(v82 + 8))(v43, v83);
    v97 = v44;
  }

  else
  {
    v48 = v43;
    v49 = v84;
    (*(v46 + 32))(v84, v48, v47);
    v50 = v81;
    (*(v46 + 16))(v81, v49, v47);
    v51 = v87;

    v52 = sub_1B7C1A3BC(v50, v51, v42);
    if (!v53)
    {

      sub_1B7CB33E0();
      swift_allocError();
      swift_willThrow();
      return (*(v46 + 8))(v49, v47);
    }

    *&v100 = 0x20455245485720;
    *(&v100 + 1) = 0xE700000000000000;
    MEMORY[0x1B8CADCA0](v52);
    v97 = v44;
    MEMORY[0x1B8CADCA0](v100, *(&v100 + 1));

    sub_1B7AF3098(v54);

    (*(v46 + 8))(v49, v47);
  }

  v55 = v85;
  sub_1B7CFE570();
  v56 = sub_1B7CFE6F0();
  v57 = v93;
  v93(v55, v11);
  *&v100 = v56;
  v58 = v95;
  sub_1B7CFDD30();
  sub_1B7CFED70();
  swift_getWitnessTable();
  v59 = sub_1B7CFEE60();

  if ((v59 & 1) == 0)
  {
    sub_1B7CFE570();
    v60 = sub_1B7CFE6F0();
    v57(v55, v11);
    v61 = v87;

    v62 = sub_1B7CA7518(v60, v61, v58, v94);
    *&v100 = 0x4220524544524F20;
    *(&v100 + 1) = 0xEA00000000002059;
    MEMORY[0x1B8CADCA0](v62);

    MEMORY[0x1B8CADCA0](v100, *(&v100 + 1));
  }

  v63 = v86;
  sub_1B7CFE570();
  v64 = sub_1B7CFE6D0();
  v66 = v65;
  v57(v63, v11);
  if ((v66 & 1) == 0)
  {
    MEMORY[0x1B8CADCA0](0x3F2054494D494C20, 0xE800000000000000);
    v67 = v98;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v67 = sub_1B7AE3A9C(0, v67[2] + 1, 1, v67);
    }

    v69 = v67[2];
    v68 = v67[3];
    if (v69 >= v68 >> 1)
    {
      v67 = sub_1B7AE3A9C((v68 > 1), v69 + 1, 1, v67);
    }

    v70 = MEMORY[0x1E69E6530];
    v102 = MEMORY[0x1E69E6530];
    v103 = &off_1F2FA89F8;
    *&v100 = v64;
    v67[2] = v69 + 1;
    sub_1B7AE910C(&v100, &v67[5 * v69 + 4]);
    v98 = v67;
    v71 = v80;
    sub_1B7CFE570();
    v72 = sub_1B7CFE6E0();
    v74 = v73;
    v93(v71, v11);
    if ((v74 & 1) == 0 && v72 >= 1)
    {
      MEMORY[0x1B8CADCA0](0x2054455346464F20, 0xE90000000000003FLL);
      v76 = v67[2];
      v75 = v67[3];
      if (v76 >= v75 >> 1)
      {
        v67 = sub_1B7AE3A9C((v75 > 1), v76 + 1, 1, v67);
      }

      v102 = v70;
      v103 = &off_1F2FA89F8;
      *&v100 = v72;
      v67[2] = v76 + 1;
      sub_1B7AE910C(&v100, &v67[5 * v76 + 4]);
      v98 = v67;
    }
  }

  return v99;
}

unint64_t sub_1B7CB33E0()
{
  result = qword_1EBA53538;
  if (!qword_1EBA53538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53538);
  }

  return result;
}

uint64_t sub_1B7CB3434(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B7CB34B0()
{
  result = qword_1EBA53548;
  if (!qword_1EBA53548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53548);
  }

  return result;
}

unint64_t sub_1B7CB3508()
{
  result = qword_1EBA53550;
  if (!qword_1EBA53550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53550);
  }

  return result;
}

unint64_t sub_1B7CB3560()
{
  result = qword_1EBA53558;
  if (!qword_1EBA53558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53558);
  }

  return result;
}

id IMDPersistenceHelloWorldClass.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IMDPersistenceHelloWorldClass.init()()
{
  v1 = OBJC_IVAR___IMDPersistenceHelloWorldClass_Impl_inner;
  *&v0[v1] = [objc_allocWithZone(sub_1B7CFE250()) init];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for IMDPersistenceHelloWorldClass();
  return objc_msgSendSuper2(&v3, sel_init);
}

id IMDPersistenceHelloWorldClass.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMDPersistenceHelloWorldClass();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for IMDPersistenceHelloWorld(uint64_t a1)
{
  result = qword_1EBA53568;
  if (!qword_1EBA53568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7CB3884(uint64_t a1)
{
  result = sub_1B7CFE230();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B7CB38F0()
{
  v0 = sub_1B7CFE420();
  sub_1B7AED154(v0, qword_1EDBE79D0);
  sub_1B7AD9040(v0, qword_1EDBE79D0);
  sub_1B7CFE3F0();
  return sub_1B7CFE410();
}

uint64_t sub_1B7CB3978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 16);
  *v19 = *v3;
  v7 = *(v3 + 32);
  *&v19[16] = v6;
  *&v19[32] = v7;
  v8 = *(v3 + 48);
  v9 = *(v3 + 56);
  v20 = v8;
  v13 = *v19;
  v14 = *&v19[8];
  v15 = *&v19[24];
  v16 = *(&v7 + 1);
  v17 = v8;
  v18 = v9;
  sub_1B7CB51C0(v19, v12);
  type metadata accessor for SQLEntityResultDecoder.KeyedRecordDecoder(0, a2, a3, v10);

  swift_getWitnessTable();
  return sub_1B7CFF480();
}

unint64_t sub_1B7CB3B60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(v2 + 32);
  if (*(v4 + 16) && (v5 = *(v3 + 16), result = sub_1B7AE11D0(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(*(v4 + 56) + 8 * result);
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v8 < *(v5 + 16))
    {
      return *(v5 + 16 * v8 + 32);
    }

    __break(1u);
  }

  else
  {
    sub_1B7CB5388();
    swift_allocError();
    v9[1] = 0;
    v9[2] = 0;
    *v9 = 0;
    return swift_willThrow();
  }

  return result;
}

void sub_1B7CB3C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1B7CFF890();
  v9 = sub_1B7CB3B60(v7, v8);
  if (v4)
  {
  }

  else
  {
    v11 = v9;
    v12 = v10;

    sub_1B7C8CBF8(v11, v12, a3, a4);
  }
}

unint64_t sub_1B7CB3CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1B7CB3B60(a1, a2);
  if (!v5)
  {
    return sub_1B7C8CBF8(result, v9, a4, a5);
  }

  return result;
}

uint64_t sub_1B7CB3D00(uint64_t a1)
{
  v4 = *(v1 + 32);

  sub_1B7C107FC(&qword_1EBA53600, &qword_1B7D12468);
  sub_1B7CB5440();
  v2 = sub_1B7CFEC50();
  sub_1B7CB54A4(&v4);
  return v2;
}

uint64_t sub_1B7CB3DA8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = sub_1B7CFF890();
  if (*(v3 + 16))
  {
    sub_1B7AE11D0(v4, v5);
    v7 = v6;
  }

  else
  {

    v7 = 0;
  }

  return v7 & 1;
}

void sub_1B7CB3E3C(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v57 = a1;
  v55 = a4;
  v6 = sub_1B7CFEFF0();
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v49 - v7;
  v56 = a3;
  v52 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1B7CFE7C0();
  MEMORY[0x1EEE9AC00](v54);
  v60 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B7CFE5C0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 16);
  v58 = *(a2 + 24);
  v59 = v15;
  v16 = sub_1B7CFF890();
  v18 = v17;
  (*(v12 + 104))(v14, *MEMORY[0x1E697BB70], v11);
  v19 = sub_1B7CFE5B0();
  v21 = v20;
  (*(v12 + 8))(v14, v11);
  if (v16 == v19 && v18 == v21)
  {
  }

  else
  {
    v23 = sub_1B7CFF590();

    if ((v23 & 1) == 0)
    {
      v24 = v57;
      v25 = swift_conformsToProtocol2();
      v26 = sub_1B7CFF890();
      v28 = v27;
      if (v25 && v24)
      {
        v29 = v61;
        v30 = sub_1B7CB3B60(v26, v27);
        if (v29)
        {
        }

        else
        {
          v35 = v30;
          v36 = v31;

          MEMORY[0x1EEE9AC00](v37);
          sub_1B7C8CC4C(v24, v35, v36, v24, v25);
          v38 = v53;
          v39 = v56;
          v40 = swift_dynamicCast();
          v41 = v52;
          v42 = *(v52 + 56);
          if (v40)
          {
            v42(v38, 0, 1, v39);
            v43 = *(v41 + 32);
            v44 = v49;
            v43(v49, v38, v39);
            v43(v55, v44, v39);
          }

          else
          {
            v42(v38, 1, 1, v39);
            (*(v50 + 8))(v38, v51);
            v45 = sub_1B7CFF890();
            v47 = v46;
            sub_1B7CB5388();
            swift_allocError();
            *v48 = v45;
            v48[1] = v47;
            v48[2] = v39;
            swift_willThrow();
          }
        }
      }

      else
      {
        v33 = v26;
        sub_1B7CB5388();
        swift_allocError();
        *v34 = v33;
        v34[1] = v28;
        v34[2] = v56;
        swift_willThrow();
      }

      return;
    }
  }

  v32 = v61;
  sub_1B7CB3CB8(0x4449574F52, 0xE500000000000000, a2, MEMORY[0x1E69E7360], &off_1F2FA8A78);
  if (!v32)
  {
    sub_1B7CFE7B0();
    swift_dynamicCast();
  }
}

void sub_1B7CB43EC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B7CFF890();
  v5 = sub_1B7CB3B60(v3, v4);
  if (v2)
  {

    return;
  }

  v7 = v6;
  v8 = v5;

  if (v7 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v7 <= 0x7FFFFFFF)
  {
    v9 = sqlite3_column_type(v8, v7);
    sub_1B7CD6250(v9);
    return;
  }

  __break(1u);
}

uint64_t sub_1B7CB46D8(uint64_t a1, uint64_t a2)
{
  sub_1B7CB3E14(MEMORY[0x1E69E6370], a1, a2, MEMORY[0x1E69E6370], &off_1F2FA89D8);
  if (!v2)
  {
    v3 = v5;
  }

  return v3 & 1;
}

double sub_1B7CB47BC(uint64_t a1, uint64_t a2)
{
  sub_1B7CB3E14(MEMORY[0x1E69E63B0], a1, a2, MEMORY[0x1E69E63B0], &off_1F2FA8B38);
  if (!v2)
  {
    return v4;
  }

  return result;
}

float sub_1B7CB482C(uint64_t a1, uint64_t a2)
{
  sub_1B7CB3E3C(MEMORY[0x1E69E6448], a2, MEMORY[0x1E69E6448], &v4);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1B7CB4C80()
{
  result = sub_1B7CFF5C0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B7CB4CD0()
{
  result = sub_1B7CFF5D0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B7CB4D78()
{
  result = sub_1B7CFF600();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B7CB4DC8()
{
  result = sub_1B7CFF5E0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B7CB4F08()
{
  result = sub_1B7CFF610();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B7CB4F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(a1, a2, a3);
  if (v4)
  {
    return v6;
  }

  return result;
}

__n128 sub_1B7CB50F4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B7CB5118(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B7CB5160(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B7CB5210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B7CB524C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B7CB5294(uint64_t result, int a2, int a3)
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

uint64_t sub_1B7CB52E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B7CB532C(uint64_t result, int a2, int a3)
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

unint64_t sub_1B7CB5388()
{
  result = qword_1EBA535F8;
  if (!qword_1EBA535F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA535F8);
  }

  return result;
}

unint64_t sub_1B7CB5440()
{
  result = qword_1EBA53608;
  if (!qword_1EBA53608)
  {
    sub_1B7C1091C(&qword_1EBA53600, &qword_1B7D12468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53608);
  }

  return result;
}

uint64_t sub_1B7CB54A4(uint64_t a1)
{
  v2 = sub_1B7C107FC(&qword_1EBA53610, qword_1B7D12470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7CB550C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1B7CB555C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1B7CB55B4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_1B7CB5600(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1B7AECEEC(0, v1, 0);
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v7 = *(v13 + 16);
      v6 = *(v13 + 24);

      if (v7 >= v6 >> 1)
      {
        sub_1B7AECEEC((v6 > 1), v7 + 1, 1);
      }

      *(v13 + 16) = v7 + 1;
      v8 = v13 + 16 * v7;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v9 = sub_1B7CFEA10();
  v11 = v10;

  MEMORY[0x1B8CADCA0](v9, v11);

  return result;
}

uint64_t sub_1B7CB573C(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v27[1] = v1;
    v31[0] = MEMORY[0x1E69E7CC0];
    sub_1B7AECEEC(0, v3, 0);
    v4 = v31[0];
    v27[0] = v2;
    v5 = v2 + 32;
    v6 = v3;
    do
    {
      sub_1B7CB5AD8(v5, v38);
      sub_1B7CB5AD8(v38, &v35);
      v28 = v35;
      v29 = v36;

      MEMORY[0x1B8CADCA0](0x203F203D20, 0xE500000000000000);

      v7 = v28;
      v8 = v29;
      sub_1B7CB5B48(v38);
      sub_1B7AE9168(v37);
      v31[0] = v4;
      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1B7AECEEC((v9 > 1), v10 + 1, 1);
        v4 = v31[0];
      }

      *(v4 + 16) = v10 + 1;
      v11 = v4 + 16 * v10;
      *(v11 + 32) = v7;
      *(v11 + 40) = v8;
      v5 += 56;
      --v6;
    }

    while (v6);
    v2 = v27[0];
  }

  v38[0] = v4;
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v12 = sub_1B7CFEA10();
  v14 = v13;

  MEMORY[0x1B8CADCA0](v12, v14);

  v15 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v34 = MEMORY[0x1E69E7CC0];
    sub_1B7AF5760(0, v3, 0);
    v15 = v34;
    v16 = v2 + 32;
    do
    {
      sub_1B7CB5AD8(v16, v38);
      sub_1B7CB5AD8(v38, &v35);
      v28 = v35;
      v29 = v36;
      sub_1B7AE910C(v37, v30);
      sub_1B7AE90A8(v30, v31);
      sub_1B7CB5B48(&v28);
      sub_1B7CB5B48(v38);
      v34 = v15;
      v18 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1B7AF5760((v17 > 1), v18 + 1, 1);
      }

      v19 = v32;
      v20 = v33;
      v21 = sub_1B7C1542C(v31, v32);
      v22 = MEMORY[0x1EEE9AC00](v21);
      v24 = v27 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v25 + 16))(v24, v22);
      sub_1B7CB5BB0(v18, v24, &v34, v19, v20);
      sub_1B7AE9168(v31);
      v15 = v34;
      v16 += 56;
      --v3;
    }

    while (v3);
  }

  return sub_1B7AF3098(v15);
}

void sub_1B7CB5AA0(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x1E69E7CC0];
}

__n128 sub_1B7CB5AC4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1B7CB5AD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7C107FC(&qword_1EBA53408, &unk_1B7D114E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7CB5B48(uint64_t a1)
{
  v2 = sub_1B7C107FC(&qword_1EBA53408, &unk_1B7D114E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7CB5BB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_1B7C1A14C(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1B7AE910C(&v12, v10 + 40 * a1 + 32);
}

void sub_1B7CB5C48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return;
  }

  v3 = a1 + 48;
  v4 = *(a1 + 16);
  do
  {
    v5 = *(v3 - 8);
    v6 = *(v3 - 16);

    MEMORY[0x1B8CADCA0](v6, v5);

    v3 += 24;
    --v4;
  }

  while (v4);
  v7 = (a1 + 48);
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = *v7;
    v10 = *(*v7 + 16);
    v11 = v8[2];
    v12 = v11 + v10;
    if (__OFADD__(v11, v10))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && (v14 = v8[3] >> 1, v14 >= v12))
    {
      if (*(v9 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v11 <= v12)
      {
        v15 = v11 + v10;
      }

      else
      {
        v15 = v11;
      }

      v8 = sub_1B7AE3A9C(isUniquelyReferenced_nonNull_native, v15, 1, v8);
      v14 = v8[3] >> 1;
      if (*(v9 + 16))
      {
LABEL_16:
        if (v14 - v8[2] < v10)
        {
          goto LABEL_24;
        }

        sub_1B7C107FC(&qword_1EBA52460, &qword_1B7D113A0);
        swift_arrayInitWithCopy();

        if (v10)
        {
          v16 = v8[2];
          v17 = __OFADD__(v16, v10);
          v18 = v16 + v10;
          if (v17)
          {
            goto LABEL_25;
          }

          v8[2] = v18;
        }

        goto LABEL_6;
      }
    }

    if (v10)
    {
      goto LABEL_23;
    }

LABEL_6:

    v7 += 3;
    if (!--v1)
    {
      return;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

unint64_t sub_1B7CB5E44()
{
  result = qword_1EBA53618;
  if (!qword_1EBA53618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53618);
  }

  return result;
}

unint64_t sub_1B7CB5E9C()
{
  result = qword_1EBA53620;
  if (!qword_1EBA53620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53620);
  }

  return result;
}

unint64_t sub_1B7CB5EF4()
{
  result = qword_1EBA53628;
  if (!qword_1EBA53628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53628);
  }

  return result;
}

unint64_t sub_1B7CB5F4C()
{
  result = qword_1EBA53630;
  if (!qword_1EBA53630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53630);
  }

  return result;
}

uint64_t sub_1B7CB5FA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B7CB5FE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B7CB6044(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_1B7CFE420();
  v8 = *(v7 - 8);
  v74 = v7;
  v75 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v66 = v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v65 = v61 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v61 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v61 - v16;
  v18 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  *(v2 + 24) = v18;
  v19 = *(a1 + 24);
  v20 = *(a2 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_inspectionReport);

  sub_1B7C9E06C(v19, v20);

  v21 = *(a1 + 16);
  if (!v21)
  {

    goto LABEL_6;
  }

  v23 = sub_1B7CDEC04(v22);
  if (v3)
  {

LABEL_6:

    return v4;
  }

  v73 = v23;
  v63 = v21;
  v24 = sub_1B7CDEC04(v21);
  v61[1] = a1;
  v61[2] = a2;
  v61[3] = 0;
  v62 = v2;
  v26 = v24;

  v27 = v74;
  v28 = v73[2];
  v72 = v26;
  if (v28)
  {
    v70 = "rageInspectorCrossCheckReport";
    v71 = "directoryBatchSize";
    sub_1B7CFE410();
    v29 = sub_1B7CFE400();
    v30 = sub_1B7CFEED0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1B7AD5000, v29, v30, "Missing paths in record counter table:", v31, 2u);
      MEMORY[0x1B8CB0E70](v31, -1, -1);
    }

    v68 = *(v75 + 8);
    v69 = (v75 + 8);
    result = v68(v17, v27);
    v33 = v73;
    *&v67 = v73[2];
    if (v67)
    {
      v34 = 0;
      v35 = v73 + 5;
      *&v32 = 136315138;
      v64 = v32;
      while (v34 < v33[2])
      {
        v37 = *(v35 - 1);
        v36 = *v35;
        sub_1B7CFE410();

        v38 = sub_1B7CFE400();
        v39 = sub_1B7CFEED0();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v76 = v41;
          *v40 = v64;
          *(v40 + 4) = sub_1B7AED1B8(v37, v36, &v76);
          _os_log_impl(&dword_1B7AD5000, v38, v39, "%s", v40, 0xCu);
          sub_1B7AE9168(v41);
          v42 = v41;
          v27 = v74;
          MEMORY[0x1B8CB0E70](v42, -1, -1);
          v43 = v40;
          v26 = v72;
          MEMORY[0x1B8CB0E70](v43, -1, -1);
        }

        result = v68(v14, v27);
        ++v34;
        v35 += 2;
        v33 = v73;
        if (v67 == v34)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_30;
    }
  }

LABEL_17:
  if (!v26[2])
  {

    goto LABEL_28;
  }

  v69 = "rageInspectorCrossCheckReport";
  v70 = "directoryBatchSize";
  v44 = v65;
  sub_1B7CFE410();
  v45 = sub_1B7CFE400();
  v46 = sub_1B7CFEED0();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_1B7AD5000, v45, v46, "Missing paths in attachmentStorageInspector attachmentPaths table:", v47, 2u);
    MEMORY[0x1B8CB0E70](v47, -1, -1);
  }

  v48 = *(v75 + 8);
  v75 += 8;
  v71 = v48;
  result = (v48)(v44, v27);
  v50 = v66;
  v68 = v26[2];
  if (!v68)
  {
LABEL_26:

LABEL_28:

    return v62;
  }

  v51 = 0;
  v52 = v26 + 5;
  *&v49 = 136315138;
  v67 = v49;
  while (v51 < v26[2])
  {
    v54 = *(v52 - 1);
    v53 = *v52;
    sub_1B7CFE410();

    v55 = sub_1B7CFE400();
    v56 = sub_1B7CFEED0();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v76 = v58;
      *v57 = v67;
      *(v57 + 4) = sub_1B7AED1B8(v54, v53, &v76);
      _os_log_impl(&dword_1B7AD5000, v55, v56, "%s", v57, 0xCu);
      sub_1B7AE9168(v58);
      v59 = v58;
      v26 = v72;
      MEMORY[0x1B8CB0E70](v59, -1, -1);
      v60 = v57;
      v27 = v74;
      MEMORY[0x1B8CB0E70](v60, -1, -1);
    }

    result = (v71)(v50, v27);
    v51 = (v51 + 1);
    v52 += 2;
    if (v68 == v51)
    {
      goto LABEL_26;
    }
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t RecordCounterAttachmentStorageInspectorCrossCheckReport.deinit()
{

  return v0;
}

uint64_t RecordCounterAttachmentStorageInspectorCrossCheckReport.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1B7CB6804(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, IMDPredicateToSQLConverter *a5)
{
  v9 = sub_1B7C107FC(&unk_1EBA51980, &unk_1B7D0A1B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  sub_1B7C108AC(a4, &v18 - v10);
  v12 = sub_1B7CFE120();
  v13 = *(v12 - 8);
  v15 = 0;
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    v15 = sub_1B7CFE0A0();
    (*(v13 + 8))(v11, v12);
  }

  v16 = sub_1B7B2710C(a3, v15, a5, v14);

  if (v16)
  {
    sub_1B7AEE088(0, &qword_1EDBE5920, off_1E7CB4FD8);
    v17 = sub_1B7CFECE0();

    a1(v17);
  }

  else
  {
    __break(1u);
  }
}

void sub_1B7CB6C38(uint64_t a1, uint64_t a2)
{
  sub_1B7AEE088(0, &qword_1EDBE5920, off_1E7CB4FD8);
  v3 = sub_1B7CFECC0();
  (*(a2 + 16))(a2, v3);
}

uint64_t sub_1B7CB6CB4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, void, void, void), uint64_t a6)
{
  v60 = a6;
  v61 = a5;
  v82 = a4;
  v75 = a3;
  v69 = a2;
  v68 = type metadata accessor for SQLConnectionConfiguration(0);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1B7CFE4A0();
  MEMORY[0x1EEE9AC00](v74);
  v73 = (&v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = a1 + 64;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 64);
  v14 = (v11 + 63) >> 6;
  v72 = *MEMORY[0x1E69E8020];
  v70 = (v8 + 8);
  v71 = (v8 + 104);
  v66 = 0x80000001B7D59010;
  v64 = 0x80000001B7D57610;

  v15 = 0;
  v16 = 0x1EBA50000;
  v62 = a1;
  v59 = a1 + 64;
  v58 = v14;
  if (v13)
  {
LABEL_8:
    while (1)
    {
      v18 = __clz(__rbit64(v13)) | (v15 << 6);
      v19 = *(a1 + 56);
      v20 = (*(a1 + 48) + 16 * v18);
      v21 = v20[1];
      v76 = *v20;
      v22 = *(v19 + 8 * v18);
      v23 = *(v22 + 16);
      v83 = v21;

      v63 = v23;
      if (v23)
      {
        break;
      }

LABEL_30:
      v13 &= v13 - 1;

      a1 = v62;
      v10 = v59;
      v14 = v58;
      if (!v13)
      {
        goto LABEL_4;
      }
    }

    v24 = 0;
    v25 = (v22 + 40);
    v65 = v22;
    while (v24 < *(v22 + 16))
    {
      v26 = v16;
      v27 = *v25;
      v79 = *(v25 - 1);
      v80 = v24;
      v77 = v25;
      v78 = v24 == 0;
      swift_bridgeObjectRetain_n();
      IMDEnsureSharedRecordStoreInitialized();
      IMDSharedSqliteDatabase();
      _IMDPersistenceGetThreadedStoreQueue();
      v29 = v28;
      if (!v29)
      {
        goto LABEL_36;
      }

      v31 = v73;
      v30 = v74;
      *v73 = v29;
      (*v71)(v31, v72, v30);
      v32 = sub_1B7CFE4C0();
      (*v70)(v31, v30);
      if ((v32 & 1) == 0)
      {
        goto LABEL_35;
      }

      v33 = CSDBSqliteDatabaseConnectionForWriting();
      if (!v33)
      {
        goto LABEL_37;
      }

      v34 = *(v33 + 8);
      if (!v34)
      {
        goto LABEL_37;
      }

      v35 = *(v68 + 28);
      if (qword_1EBA50ED0 != -1)
      {
        swift_once();
      }

      v36 = sub_1B7CFE420();
      v37 = sub_1B7AD9040(v36, qword_1EBA5DA50);
      v38 = *(v36 - 8);
      v39 = v67;
      (*(v38 + 16))(&v67[v35], v37, v36);
      (*(v38 + 56))(v39 + v35, 0, 1, v36);
      *v39 = 1;
      *(v39 + 8) = 0x4082C00000000000;
      *(v39 + 16) = 256;
      type metadata accessor for SQLConnection(0);
      v40 = swift_allocObject();
      v41 = (v40 + *(v26 + 3984));
      v42 = MEMORY[0x1E69E7CC8];
      *v41 = MEMORY[0x1E69E7CC8];
      v41[1] = v42;
      v41[2] = 32;
      *(v40 + 16) = v34;
      *(v40 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_owned) = 0;
      sub_1B7AE3EA4(v39, v40 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration);
      sqlite3_busy_timeout(v34, 600000);
      sub_1B7AE3F08(v39);
      v43 = MEMORY[0x1E69E7CC0];
      v87 = MEMORY[0x1E69E7CC0];
      *&v84 = 0x204E49474542;
      *(&v84 + 1) = 0xE600000000000000;

      v81 = v27;

      v44 = v69;

      MEMORY[0x1B8CADCA0](0x4445525245464544, 0xE800000000000000);
      sub_1B7AF3098(v43);
      MEMORY[0x1B8CADCA0](0x4341534E41525420, 0xEC0000004E4F4954);
      v45 = v87;
      sub_1B7AE3B2C(v84, *(&v84 + 1), 0);
      sub_1B7AF3FE4(v45);

      v46 = v81;
      if (!v80)
      {
        sub_1B7CBC774(v75, v82, v76, v83, v40, v79, v81);
      }

      v47 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v49 = v47[2];
      v48 = v47[3];
      v50 = v49 + 1;
      if (v49 >= v48 >> 1)
      {
        v47 = sub_1B7AE3A9C((v48 > 1), v49 + 1, 1, v47);
      }

      v85 = MEMORY[0x1E69E6158];
      v86 = &off_1F2FA8B58;
      *&v84 = v79;
      *(&v84 + 1) = v46;
      v47[2] = v50;
      sub_1B7AE910C(&v84, &v47[5 * v49 + 4]);
      v51 = v47[3];
      v52 = v49 + 2;

      if ((v49 + 2) > (v51 >> 1))
      {
        v47 = sub_1B7AE3A9C((v51 > 1), v49 + 2, 1, v47);
      }

      v85 = MEMORY[0x1E69E6158];
      v86 = &off_1F2FA8B58;
      *&v84 = v76;
      *(&v84 + 1) = v83;
      v47[2] = v52;
      sub_1B7AE910C(&v84, &v47[5 * v50 + 4]);
      v53 = v47[3];
      v54 = v49 + 3;
      if ((v49 + 3) > (v53 >> 1))
      {
        v47 = sub_1B7AE3A9C((v53 > 1), v49 + 3, 1, v47);
      }

      v86 = &off_1F2FA89F8;
      v85 = MEMORY[0x1E69E6530];
      *&v84 = v78;
      v47[2] = v54;
      sub_1B7AE910C(&v84, &v47[5 * v52 + 4]);
      v55 = v47[3];
      v56 = v49 + 4;

      if ((v49 + 4) > (v55 >> 1))
      {
        v47 = sub_1B7AE3A9C((v55 > 1), v49 + 4, 1, v47);
      }

      v16 = 0x1EBA50000uLL;
      v85 = MEMORY[0x1E69E6158];
      v86 = &off_1F2FA8B58;
      *&v84 = v75;
      *(&v84 + 1) = v82;
      v47[2] = v56;
      sub_1B7AE910C(&v84, &v47[5 * v54 + 4]);
      sub_1B7AE3B2C(0xD000000000000105, v66, 0);
      sub_1B7AF3FE4(v47);

      sub_1B7AE3B2C(0xD000000000000012, v64, 0);
      sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);
      swift_bridgeObjectRelease_n();

      swift_setDeallocating();
      if (*(v40 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_owned))
      {
        sqlite3_close_v2(*(v40 + 16));
      }

      v24 = v80 + 1;
      sub_1B7AE3F08(v40 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration);

      swift_deallocClassInstance();
      v25 = v77 + 2;
      v22 = v65;
      if (v63 == v24)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= v14)
      {

        return v61(0, 0, 0, 0, 0);
      }

      v13 = *(v10 + 8 * v17);
      ++v15;
      if (v13)
      {
        v15 = v17;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_1B7CFF340();
  __break(1u);
  return result;
}

void sub_1B7CB7C14(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  if (a2)
  {
    v9 = sub_1B7CFEA30();
    if (!v8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = 0;
  if (a4)
  {
LABEL_3:
    v8 = sub_1B7CFEA30();
  }

LABEL_4:
  if (a5)
  {
    v10 = sub_1B7CFDEB0();
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  (*(a6 + 16))(a6, v9, v8);
}

uint64_t sub_1B7CB7CD4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void))
{
  v15 = sub_1B7AE3F68();
  v16 = MEMORY[0x1E69E7CC0];
  v40 = MEMORY[0x1E69E7CC0];
  *&v37 = 0x204E49474542;
  *(&v37 + 1) = 0xE600000000000000;
  v17 = a1;

  v36 = a7;

  MEMORY[0x1B8CADCA0](0x4445525245464544, 0xE800000000000000);
  sub_1B7AF3098(v16);
  MEMORY[0x1B8CADCA0](0x4341534E41525420, 0xEC0000004E4F4954);
  sub_1B7AE3B2C(0x204E49474542, 0xE600000000000000, 0);
  v33 = a5;
  sub_1B7AF3FE4(v40);

  if (a8 == 1)
  {
    v18 = a2;
    sub_1B7CBC774(a4, v33, a6, a7, v15, a2, a3);
    v19 = a3;
  }

  else
  {
    v19 = a3;
    v18 = a2;
  }

  v20 = v19;

  v21 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v23 = v21[2];
  v22 = v21[3];
  v24 = v23 + 1;
  if (v23 >= v22 >> 1)
  {
    v21 = sub_1B7AE3A9C((v22 > 1), v23 + 1, 1, v21);
  }

  v25 = MEMORY[0x1E69E6158];
  v38 = MEMORY[0x1E69E6158];
  v39 = &off_1F2FA8B58;
  *&v37 = v18;
  *(&v37 + 1) = v20;
  v21[2] = v24;
  sub_1B7AE910C(&v37, &v21[5 * v23 + 4]);
  v26 = v21[3];
  v27 = v23 + 2;

  if ((v23 + 2) > (v26 >> 1))
  {
    v21 = sub_1B7AE3A9C((v26 > 1), v23 + 2, 1, v21);
  }

  v38 = v25;
  v39 = &off_1F2FA8B58;
  *&v37 = a6;
  *(&v37 + 1) = v36;
  v21[2] = v27;
  sub_1B7AE910C(&v37, &v21[5 * v24 + 4]);
  v28 = v21[3];
  v29 = v23 + 3;
  if ((v23 + 3) > (v28 >> 1))
  {
    v21 = sub_1B7AE3A9C((v28 > 1), v23 + 3, 1, v21);
  }

  v38 = MEMORY[0x1E69E6530];
  v39 = &off_1F2FA89F8;
  *&v37 = a8;
  v21[2] = v29;
  sub_1B7AE910C(&v37, &v21[5 * v27 + 4]);
  v30 = v21[3];
  v31 = v23 + 4;

  if (v31 > (v30 >> 1))
  {
    v21 = sub_1B7AE3A9C((v30 > 1), v31, 1, v21);
  }

  v38 = v25;
  v39 = &off_1F2FA8B58;
  *&v37 = a4;
  *(&v37 + 1) = v33;
  v21[2] = v31;
  sub_1B7AE910C(&v37, &v21[5 * v29 + 4]);
  sub_1B7AE3B2C(0xD000000000000105, 0x80000001B7D59010, 0);
  sub_1B7AF3FE4(v21);

  sub_1B7AE3B2C(0xD000000000000012, 0x80000001B7D57610, 0);
  sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);

  return a9(0);
}

uint64_t sub_1B7CB856C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void, __n128))
{
  sub_1B7AE3F68();

  v12 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v14 = v12[2];
  v13 = v12[3];
  v15 = v14 + 1;
  if (v14 >= v13 >> 1)
  {
    v12 = sub_1B7AE3A9C((v13 > 1), v14 + 1, 1, v12);
  }

  v16 = MEMORY[0x1E69E6158];
  v24 = MEMORY[0x1E69E6158];
  v25 = &off_1F2FA8B58;
  *&v23 = a1;
  *(&v23 + 1) = a2;
  v12[2] = v15;
  sub_1B7AE910C(&v23, &v12[5 * v14 + 4]);
  v17 = v12[3];
  v18 = v14 + 2;

  if ((v14 + 2) > (v17 >> 1))
  {
    v12 = sub_1B7AE3A9C((v17 > 1), v14 + 2, 1, v12);
  }

  v24 = v16;
  v25 = &off_1F2FA8B58;
  *&v23 = a3;
  *(&v23 + 1) = a4;
  v12[2] = v18;
  sub_1B7AE910C(&v23, &v12[5 * v15 + 4]);
  v19 = v12[3];

  if ((v14 + 3) > (v19 >> 1))
  {
    v12 = sub_1B7AE3A9C((v19 > 1), v14 + 3, 1, v12);
  }

  v24 = v16;
  v25 = &off_1F2FA8B58;
  *&v23 = a5;
  *(&v23 + 1) = a6;
  v12[2] = v14 + 3;
  sub_1B7AE910C(&v23, &v12[5 * v18 + 4]);
  sub_1B7AE3B2C(0xD00000000000009BLL, 0x80000001B7D58F70, 0);
  sub_1B7AF3FE4(v12);

  (a7)(0);
}

void sub_1B7CB898C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void))
{
  sub_1B7AE3F68();

  v9 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v11 = v9[2];
  v10 = v9[3];
  v12 = v11 + 1;
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1B7AE3A9C((v10 > 1), v11 + 1, 1, v9);
  }

  v13 = MEMORY[0x1E69E6158];
  v18 = MEMORY[0x1E69E6158];
  v19 = &off_1F2FA8B58;
  *&v17 = a1;
  *(&v17 + 1) = a2;
  v9[2] = v12;
  sub_1B7AE910C(&v17, &v9[5 * v11 + 4]);
  v14 = v9[3];

  if ((v11 + 2) > (v14 >> 1))
  {
    v9 = sub_1B7AE3A9C((v14 > 1), v11 + 2, 1, v9);
  }

  v18 = v13;
  v19 = &off_1F2FA8B58;
  *&v17 = a3;
  *(&v17 + 1) = a4;
  v9[2] = v11 + 2;
  sub_1B7AE910C(&v17, &v9[5 * v12 + 4]);
  v15 = sub_1B7AE3B2C(0xD0000000000000B4, 0x80000001B7D58EB0, 0);
  *&v17 = MEMORY[0x1E69E7CC0];

  sub_1B7AF1A7C(v9, v15, &v17, v15);

  a5(v17, 0);
}

void sub_1B7CB8D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(id, void, __n128))
{
  sub_1B7AE3F68();

  v9 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v11 = v9[2];
  v10 = v9[3];
  v12 = v11 + 1;
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1B7AE3A9C((v10 > 1), v11 + 1, 1, v9);
  }

  v13 = MEMORY[0x1E69E6158];
  v22 = MEMORY[0x1E69E6158];
  v23 = &off_1F2FA8B58;
  *&v21 = a1;
  *(&v21 + 1) = a2;
  v9[2] = v12;
  sub_1B7AE910C(&v21, &v9[5 * v11 + 4]);
  v14 = v9[3];

  if ((v11 + 2) > (v14 >> 1))
  {
    v9 = sub_1B7AE3A9C((v14 > 1), v11 + 2, 1, v9);
  }

  v22 = v13;
  v23 = &off_1F2FA8B58;
  *&v21 = a3;
  *(&v21 + 1) = a4;
  v9[2] = v11 + 2;
  sub_1B7AE910C(&v21, &v9[5 * v12 + 4]);
  v15 = sub_1B7AE3B2C(0xD00000000000009CLL, 0x80000001B7D58E10, 0);
  *&v21 = MEMORY[0x1E69E7CC0];

  sub_1B7C9513C(v9, v15, &v21, v15);

  if (*(v21 + 16))
  {
    v16 = *(v21 + 56);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v17 = sub_1B7CFEA30();
    if (v16)
    {
      v18 = sub_1B7CFEA30();
    }

    else
    {
      v18 = 0;
    }

    v19 = [objc_allocWithZone(IMDSyncChatSliceRecord) initWithServiceName:v17 ckRecordID:v18];
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  else
  {

    v19 = 0;
  }

  (a5)(v19, 0);
}

void sub_1B7CB91E0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void, __n128))
{
  sub_1B7AE3F68();

  v5 = MEMORY[0x1E69E7CC0];
  v6 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1B7AE3A9C((v7 > 1), v8 + 1, 1, v6);
  }

  v19 = MEMORY[0x1E69E6158];
  v20 = &off_1F2FA8B58;
  *&v18 = a1;
  *(&v18 + 1) = a2;
  v6[2] = v8 + 1;
  sub_1B7AE910C(&v18, &v6[5 * v8 + 4]);
  v9 = sub_1B7AE3B2C(0xD000000000000081, 0x80000001B7D58D80, 0);
  *&v18 = v5;

  sub_1B7C9513C(v6, v9, &v18, v9);

  v10 = v18;
  v11 = *(v18 + 16);
  if (v11)
  {
    *&v18 = v5;
    sub_1B7CFF2C0();
    v12 = (v10 + 56);
    do
    {
      v14 = *v12;
      swift_bridgeObjectRetain_n();

      v15 = sub_1B7CFEA30();
      if (v14)
      {
        v13 = sub_1B7CFEA30();
      }

      else
      {
        v13 = 0;
      }

      v12 += 4;
      [objc_allocWithZone(IMDSyncChatSliceRecord) initWithServiceName:v15 ckRecordID:v13];

      sub_1B7CFF290();
      sub_1B7CFF2D0();
      sub_1B7CFF2E0();
      sub_1B7CFF2A0();
      --v11;
    }

    while (v11);

    v16 = v18;
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
  }

  (a3)(v16, 0);
}

void sub_1B7CB963C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for IMDSyncChatSliceRecord(0);
  v5 = sub_1B7CFECC0();
  if (a2)
  {
    v6 = sub_1B7CFDEB0();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_1B7CB96D4(unint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t))
{
  sub_1B7AE3F68();
  v6 = a1;
  v30 = a4;
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v6 = v28)
  {
    v8 = 0;
    v34 = v6 & 0xC000000000000001;
    v33 = v6;
    v31 = v6 & 0xFFFFFFFFFFFFFF8;
    v32 = i;
    while (1)
    {
      if (v34)
      {
        v9 = MEMORY[0x1B8CAE380](v8);
      }

      else
      {
        if (v8 >= *(v31 + 16))
        {
          goto LABEL_21;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v40 = 0xD000000000000046;
      v41 = 0x80000001B7D58BF0;
      v12 = [v9 serviceName];
      v13 = sub_1B7CFEA60();
      v15 = v14;

      v16 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v18 = v16[2];
      v17 = v16[3];
      if (v18 >= v17 >> 1)
      {
        v16 = sub_1B7AE3A9C((v17 > 1), v18 + 1, 1, v16);
      }

      v38 = MEMORY[0x1E69E6158];
      v39 = &off_1F2FA8B58;
      *&v37 = v13;
      *(&v37 + 1) = v15;
      v16[2] = v18 + 1;
      sub_1B7AE910C(&v37, &v16[5 * v18 + 4]);

      v40 = 0xD00000000000004BLL;
      v41 = 0x80000001B7D58D30;
      v19 = [v10 ckRecordID];
      if (v19)
      {
        v20 = v19;
        v21 = sub_1B7CFEA60();
        v23 = v22;
      }

      else
      {
        v21 = 0;
        v23 = 0;
      }

      v25 = v16[2];
      v24 = v16[3];

      if (v25 >= v24 >> 1)
      {
        v16 = sub_1B7AE3A9C((v24 > 1), v25 + 1, 1, v16);
      }

      v38 = sub_1B7C107FC(&qword_1EBA51FB0, &unk_1B7D0FA00);
      v39 = sub_1B7C1547C();
      *&v37 = v21;
      *(&v37 + 1) = v23;
      v16[2] = v25 + 1;
      sub_1B7AE910C(&v37, &v16[5 * v25 + 4]);

      MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
      swift_bridgeObjectRelease_n();
      MEMORY[0x1B8CADCA0](0xD000000000000029, 0x80000001B7D58C40);
      v26 = v16[2];
      v27 = v16[3];

      if (v26 >= v27 >> 1)
      {
        v16 = sub_1B7AE3A9C((v27 > 1), v26 + 1, 1, v16);
      }

      v38 = MEMORY[0x1E69E6158];
      v39 = &off_1F2FA8B58;
      *&v37 = a2;
      *(&v37 + 1) = a3;
      v16[2] = v26 + 1;
      sub_1B7AE910C(&v37, &v16[5 * v26 + 4]);

      MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);

      MEMORY[0x1B8CADCA0](0xD0000000000000B9, 0x80000001B7D58C70);
      sub_1B7AE3B2C(v40, v41, 0);
      sub_1B7AF3FE4(v16);

      ++v8;
      v6 = v33;
      if (v11 == v32)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v28 = v6;
    i = sub_1B7CFF120();
  }

LABEL_23:
  v30(0, v6);
}

void sub_1B7CB9CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *))
{
  sub_1B7AE3F68();
  v36 = *(a1 + 16);
  if (v36)
  {
    v6 = 0;
    v37 = a1 + 32;
    v7 = MEMORY[0x1E69E6158];
    while (1)
    {
      v8 = (v37 + 16 * v6);
      v9 = *v8;
      v10 = v8[1];
      swift_bridgeObjectRetain_n();
      v11 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v13 = v11[2];
      v12 = v11[3];
      v14 = v13 + 1;
      if (v13 >= v12 >> 1)
      {
        v11 = sub_1B7AE3A9C((v12 > 1), v13 + 1, 1, v11);
      }

      v41 = v7;
      v42 = &off_1F2FA8B58;
      *&v40 = v9;
      *(&v40 + 1) = v10;
      v11[2] = v14;
      sub_1B7AE910C(&v40, &v11[5 * v13 + 4]);
      v15 = v11[3];
      v16 = v13 + 2;

      if ((v13 + 2) > (v15 >> 1))
      {
        v11 = sub_1B7AE3A9C((v15 > 1), v16, 1, v11);
      }

      v41 = v7;
      v42 = &off_1F2FA8B58;
      *&v40 = a3;
      *(&v40 + 1) = a4;
      v11[2] = v16;
      sub_1B7AE910C(&v40, &v11[5 * v14 + 4]);
      v17 = *(sub_1B7AE3B2C(0xD00000000000007DLL, 0x80000001B7D58B70, 0) + 2);
      v18 = sqlite3_db_handle(v17);
      if (!v18)
      {
        sub_1B7C95194();
        v21 = swift_allocError();
        *v22 = 0u;
        *(v22 + 16) = 0u;
        *(v22 + 32) = 0u;
        *(v22 + 48) = 0;
        *(v22 + 56) = 4;
LABEL_16:
        swift_willThrow();
        v31 = v21;

        type metadata accessor for SQLConnectionError(0);
        sub_1B7C14C5C();
        v32 = swift_allocError();
        *v33 = 0xD00000000000007DLL;
        v33[1] = 0x80000001B7D58B70;
        v33[2] = v31;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        v34 = v32;
        a5(v32);

        return;
      }

      v19 = v18;
      sub_1B7AEA57C(v11);
      do
      {
        v20 = sqlite3_step(v17);
      }

      while (v20 == 100);
      if (v20 != 101)
      {
        break;
      }

      ++v6;
      sqlite3_reset(v17);

      if (v6 == v36)
      {
        goto LABEL_12;
      }
    }

    sub_1B7C95194();
    v21 = swift_allocError();
    v24 = v23;
    if (sqlite3_errmsg(v19))
    {
      v25 = sub_1B7CFEB70();
      v27 = v26;
      v28 = sqlite3_extended_errcode(v19);
      sub_1B7C951E8();
      v29 = swift_allocError();
      *v30 = v28;
      v30[1] = v25;
      v30[2] = v27;
      *v24 = v29;
      *(v24 + 56) = 3;
      goto LABEL_16;
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    a5(0);
  }
}

uint64_t sub_1B7CBA210(unint64_t a1, void (*a2)(void))
{
  sub_1B7AE3F68();
  v28 = a2;
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7CFF120())
  {
    v5 = 0;
    v32 = a1 & 0xC000000000000001;
    v31 = a1;
    v29 = a1 & 0xFFFFFFFFFFFFFF8;
    v30 = i;
    while (1)
    {
      if (v32)
      {
        v6 = MEMORY[0x1B8CAE380](v5, a1);
      }

      else
      {
        if (v5 >= *(v29 + 16))
        {
          goto LABEL_21;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v36 = 0xD000000000000043;
      v37 = 0x80000001B7D58A60;
      v9 = [v6 guid];
      v10 = sub_1B7CFEA60();
      v12 = v11;

      v13 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v15 = v13[2];
      v14 = v13[3];
      if (v15 >= v14 >> 1)
      {
        v13 = sub_1B7AE3A9C((v14 > 1), v15 + 1, 1, v13);
      }

      v34 = MEMORY[0x1E69E6158];
      v35 = &off_1F2FA8B58;
      *&v33 = v10;
      *(&v33 + 1) = v12;
      v13[2] = v15 + 1;
      sub_1B7AE910C(&v33, &v13[5 * v15 + 4]);

      v36 = 0xD000000000000048;
      v37 = 0x80000001B7D58AB0;
      v16 = [v7 ckRecordID];
      if (v16)
      {
        v17 = v16;
        v18 = sub_1B7CFEA60();
        v20 = v19;
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      v21 = v13[2];
      v22 = v13[3];

      if (v21 >= v22 >> 1)
      {
        v13 = sub_1B7AE3A9C((v22 > 1), v21 + 1, 1, v13);
      }

      v34 = sub_1B7C107FC(&qword_1EBA51FB0, &unk_1B7D0FA00);
      v35 = sub_1B7C1547C();
      *&v33 = v18;
      *(&v33 + 1) = v20;
      v13[2] = v21 + 1;
      sub_1B7AE910C(&v33, &v13[5 * v21 + 4]);

      MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
      swift_bridgeObjectRelease_n();
      MEMORY[0x1B8CADCA0](8236, 0xE200000000000000);
      v23 = [v7 rawDate];
      v25 = v13[2];
      v24 = v13[3];
      if (v25 >= v24 >> 1)
      {
        v26 = v23;
        v13 = sub_1B7AE3A9C((v24 > 1), v25 + 1, 1, v13);
        v23 = v26;
      }

      v35 = &off_1F2FA8A78;
      v34 = MEMORY[0x1E69E7360];
      *&v33 = v23;
      v13[2] = v25 + 1;
      sub_1B7AE910C(&v33, &v13[5 * v25 + 4]);
      MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
      MEMORY[0x1B8CADCA0](15145, 0xE200000000000000);
      sub_1B7AE3B2C(v36, v37, 0);
      sub_1B7AF3FE4(v13);

      ++v5;
      a1 = v31;
      if (v8 == v30)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_23:
  v28(0);
}

uint64_t sub_1B7CBA7D0(uint64_t a1, void (*a2)(char *, char *, __n128))
{
  sub_1B7AE3F68();
  v4 = MEMORY[0x1E69E7CC0];
  v23[1] = 0xE000000000000000;
  v24 = MEMORY[0x1E69E7CC0];
  MEMORY[0x1B8CADCA0](0xD00000000000002DLL, 0x80000001B7D589D0);
  v5 = sub_1B7AF5664(a1);
  sub_1B7AF57A0(v5);

  MEMORY[0x1B8CADCA0](0xD000000000000035, 0x80000001B7D58A00);
  v6 = sub_1B7AF5664(a1);
  sub_1B7AF57A0(v6);

  MEMORY[0x1B8CADCA0](0xD000000000000017, 0x80000001B7D58A40);
  v7 = sub_1B7AF5664(a1);
  sub_1B7AF57A0(v7);

  v8 = sub_1B7AE3B2C(0, 0xE000000000000000, 0);
  v23[0] = v4;

  sub_1B7C95168(v24, v8, v23, v8);
  v22 = a2;

  swift_bridgeObjectRelease_n();
  v9 = *(v23[0] + 16);
  if (v9)
  {
    v10 = (v23[0] + 56);
    v11 = MEMORY[0x1E69E7CC0];
    v12 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v16 = *(v10 - 2);
      if (v16)
      {
        v17 = *(v10 - 3);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1B7AF182C(0, *(v11 + 2) + 1, 1, v11);
        }

        v19 = *(v11 + 2);
        v18 = *(v11 + 3);
        v20 = v19 + 1;
        if (v19 >= v18 >> 1)
        {
          v14 = sub_1B7AF182C((v18 > 1), v19 + 1, 1, v11);
          v11 = v14;
        }

        else
        {
          v14 = v11;
        }
      }

      else
      {
        v16 = *v10;
        if (!*v10)
        {
          goto LABEL_9;
        }

        v17 = *(v10 - 1);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1B7AF182C(0, *(v12 + 2) + 1, 1, v12);
        }

        v19 = *(v12 + 2);
        v21 = *(v12 + 3);
        v20 = v19 + 1;
        if (v19 >= v21 >> 1)
        {
          v14 = sub_1B7AF182C((v21 > 1), v19 + 1, 1, v12);
          v12 = v14;
        }

        else
        {
          v14 = v12;
        }
      }

      *(v14 + 2) = v20;
      v15 = &v14[16 * v19];
      *(v15 + 4) = v17;
      *(v15 + 5) = v16;
LABEL_9:
      v10 += 4;
      if (!--v9)
      {
        goto LABEL_4;
      }
    }
  }

  v11 = MEMORY[0x1E69E7CC0];
  v12 = MEMORY[0x1E69E7CC0];
LABEL_4:

  (v22)(v11, v12);
}

void sub_1B7CBACE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B7CFECC0();
  v5 = sub_1B7CFECC0();
  (*(a3 + 16))(a3, v4, v5);
}

uint64_t sub_1B7CBAD6C(uint64_t a1, void *a2, void (*a3)(uint64_t, void, __n128))
{
  sub_1B7AE3F68();
  v6 = a2;
  sub_1B7CBC43C(a1);
  v8 = v7;

  v9 = sub_1B7CBC00C(v8);

  v10 = sub_1B7CBBEE8(v9);

  (a3)(v10, 0);
}

void sub_1B7CBAFC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7AEE088(0, &qword_1EDBE5920, off_1E7CB4FD8);
  v5 = sub_1B7CFECC0();
  if (a2)
  {
    v6 = sub_1B7CFDEB0();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_1B7CBB070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void, __n128))
{
  sub_1B7AE3F68();
  v10 = sub_1B7CBB39C(a1, a2, a3, a4);
  v12 = v11;
  v14 = v13;

  v15 = sub_1B7AE3B2C(v10, v12, 0);
  v16 = MEMORY[0x1E69E7CC0];
  v27 = MEMORY[0x1E69E7CC0];

  sub_1B7AF1A7C(v14, v15, &v27, v15);

  swift_bridgeObjectRelease_n();
  v17 = v27;
  v27 = v16;
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = 0;
    v20 = v17 + 40;
    v26 = a5;
    do
    {
      v21 = v20 + 16 * v19;
      v22 = v19;
      while (1)
      {
        if (v22 >= *(v17 + 16))
        {
          __break(1u);
          return;
        }

        v23 = sub_1B7CFEA30();
        v24 = IMDChatRecordCopyChatForGUID(v23);

        if (v24)
        {
          break;
        }

LABEL_5:
        ++v22;
        v21 += 16;
        if (v18 == v22)
        {
          a5 = v26;
          goto LABEL_14;
        }
      }

      v25 = [objc_allocWithZone(IMDChatRecord) initWithRecordRef_];

      if (!v25)
      {
        goto LABEL_5;
      }

      MEMORY[0x1B8CADDF0]();
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B7CFED00();
      }

      v19 = v22 + 1;
      sub_1B7CFED40();
      a5 = v26;
      v16 = v27;
      v20 = v17 + 40;
    }

    while (v18 - 1 != v22);
  }

LABEL_14:

  (a5)(v16, 0);
}

uint64_t sub_1B7CBB39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B7CBB700(a1);
  v34 = v9;
  v35 = v8;
  v36 = v10;
  if (a3)
  {

    v11 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v13 = v11[2];
    v12 = v11[3];
    if (v13 >= v12 >> 1)
    {
      v11 = sub_1B7AE3A9C((v12 > 1), v13 + 1, 1, v11);
    }

    v38 = MEMORY[0x1E69E6158];
    v39 = &off_1F2FA8B58;
    *&v37 = a2;
    *(&v37 + 1) = a3;
    v11[2] = v13 + 1;
    sub_1B7AE910C(&v37, &v11[5 * v13 + 4]);
    sub_1B7C107FC(&unk_1EBA525B0, &qword_1B7D113F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B7D0A7B0;
    *(inited + 32) = 0xD00000000000001ALL;
    v15 = inited + 32;
    *(inited + 40) = 0x80000001B7D58790;
    *(inited + 48) = v11;
    sub_1B7CB5C48(inited);
    v33 = v16;
    v18 = v17;
    v20 = v19;
    swift_setDeallocating();
    sub_1B7C3D308(v15);
  }

  else
  {
    v33 = 0;
    v20 = MEMORY[0x1E69E7CC0];
    v18 = 0xE000000000000000;
  }

  v21 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v23 = v21[2];
  v22 = v21[3];
  if (v23 >= v22 >> 1)
  {
    v21 = sub_1B7AE3A9C((v22 > 1), v23 + 1, 1, v21);
  }

  v38 = MEMORY[0x1E69E7360];
  v39 = &off_1F2FA8A78;
  *&v37 = a4;
  v21[2] = v23 + 1;
  sub_1B7AE910C(&v37, &v21[5 * v23 + 4]);
  v24 = *(a1 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  v26 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v28 = v26[2];
  v27 = v26[3];
  if (v28 >= v27 >> 1)
  {
    v26 = sub_1B7AE3A9C((v27 > 1), v28 + 1, 1, v26);
  }

  v38 = MEMORY[0x1E69E6530];
  v39 = &off_1F2FA89F8;
  *&v37 = v24;
  v26[2] = v28 + 1;
  sub_1B7AE910C(&v37, &v26[5 * v28 + 4]);
  sub_1B7C107FC(&unk_1EBA525B0, &qword_1B7D113F0);
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_1B7D126F0;
  *(v29 + 32) = 0xD00000000000002ELL;
  *(v29 + 40) = 0x80000001B7D586E0;
  *(v29 + 48) = v25;
  *(v29 + 56) = v35;
  *(v29 + 64) = v34;
  *(v29 + 72) = v36;
  *(v29 + 80) = 10528;
  *(v29 + 88) = 0xE200000000000000;
  *(v29 + 96) = v25;
  *(v29 + 104) = v33;
  *(v29 + 112) = v18;
  *(v29 + 120) = v20;
  *(v29 + 128) = 0xD000000000000012;
  *(v29 + 136) = 0x80000001B7D58710;
  *(v29 + 144) = v21;
  *(v29 + 152) = 0xD00000000000005BLL;
  *(v29 + 160) = 0x80000001B7D58730;
  *(v29 + 168) = v26;
  *(v29 + 176) = 2107680;
  *(v29 + 184) = 0xE300000000000000;
  *(v29 + 192) = v25;
  sub_1B7CB5C48(v29);
  v31 = v30;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v31;
}

uint64_t sub_1B7CBB700(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC0];
  v39 = *(a1 + 16);
  if (v39)
  {
    v2 = 0;
    v38 = a1 + 32;
    v3 = MEMORY[0x1E69E7CC0];
    do
    {
      v40 = v3;
      v41 = v2;
      v4 = *(v38 + 8 * v2);
      v47 = 0;
      v48 = 0xE000000000000000;
      v46 = v1;

      MEMORY[0x1B8CADCA0](0xD000000000000067, 0x80000001B7D587B0);
      v5 = *(v4 + 16);
      if (v5)
      {
        v45 = v1;
        sub_1B7AF5760(0, v5, 0);
        v6 = v45;
        v7 = (v4 + 40);
        do
        {
          v9 = *(v7 - 1);
          v8 = *v7;
          v45 = v6;
          v11 = v6[2];
          v10 = v6[3];

          if (v11 >= v10 >> 1)
          {
            sub_1B7AF5760((v10 > 1), v11 + 1, 1);
            v6 = v45;
          }

          v43 = MEMORY[0x1E69E6158];
          v44 = &off_1F2FA8B58;
          *&v42 = v9;
          *(&v42 + 1) = v8;
          v6[2] = v11 + 1;
          sub_1B7AE910C(&v42, &v6[5 * v11 + 4]);
          v7 += 2;
          --v5;
        }

        while (v5);

        v1 = MEMORY[0x1E69E7CC0];
      }

      else
      {

        v6 = v1;
      }

      sub_1B7AF3098(v12);
      *&v42 = 2107424;
      *(&v42 + 1) = 0xE300000000000000;
      v45 = sub_1B7AF7F10(0x3F, 0xE100000000000000, v6[2]);
      sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
      sub_1B7C81070(&qword_1EDBE3020, &unk_1EBA525A0, "D\r\b", MEMORY[0x1E69E6310]);
      v13 = sub_1B7CFEA10();
      v15 = v14;

      MEMORY[0x1B8CADCA0](v13, v15);

      MEMORY[0x1B8CADCA0](2107680, 0xE300000000000000);
      MEMORY[0x1B8CADCA0](v42, *(&v42 + 1));

      MEMORY[0x1B8CADCA0](10506, 0xE200000000000000);
      v16 = v47;
      v17 = v48;
      v18 = v46;
      sub_1B7C107FC(&unk_1EBA525B0, &qword_1B7D113F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B7D0A7B0;
      *(inited + 32) = v16;
      v20 = inited + 32;
      *(inited + 40) = v17;
      *(inited + 48) = v18;
      v21 = sub_1B7C81328(inited);
      v23 = v22;
      v25 = v24;
      swift_setDeallocating();
      sub_1B7C3D308(v20);
      v3 = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1B7CA23F8(0, *(v40 + 2) + 1, 1, v40);
      }

      v27 = *(v3 + 2);
      v26 = *(v3 + 3);
      if (v27 >= v26 >> 1)
      {
        v3 = sub_1B7CA23F8((v26 > 1), v27 + 1, 1, v3);
      }

      v2 = v41 + 1;
      *(v3 + 2) = v27 + 1;
      v28 = &v3[24 * v27];
      *(v28 + 4) = v21;
      *(v28 + 5) = v23;
      *(v28 + 6) = v25;
    }

    while (v41 + 1 != v39);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v29 = sub_1B7C81328(v3);
  v31 = v30;
  v33 = v32;

  sub_1B7C107FC(&unk_1EBA525B0, &qword_1B7D113F0);
  v34 = swift_initStackObject();
  *(v34 + 16) = xmmword_1B7D0A7B0;
  *(v34 + 32) = v29;
  v35 = v34 + 32;
  *(v34 + 40) = v31;
  *(v34 + 48) = v33;
  v36 = sub_1B7C81328(v34);
  swift_setDeallocating();
  sub_1B7C3D308(v35);
  return v36;
}

id sub_1B7CBBC58(id *a1)
{
  v1 = [*a1 canonicalizedURIString];
  if (!v1)
  {
    sub_1B7CFEA60();
    v1 = sub_1B7CFEA30();
  }

  v2 = sub_1B7CFECC0();
  v3 = _IMDCoreSpotlightCNContactForAddressWithAdditionalPropertyKeys(v1, v2);

  v4 = [objc_opt_self() isCNContactAKnownContact_];
  return v4;
}

void sub_1B7CBBE10(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1B7C107FC(&qword_1EBA525D0, qword_1B7D0A720);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1B7CBBEE8(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_1B7CFF120();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1B7AEC374(v2, 0);

    v1 = sub_1B7CD9D84(&v5, (v3 + 32), v2, v1);
    sub_1B7AEC4CC(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

uint64_t sub_1B7CBBF98(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1B8CADF40](v2, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1B7C5E7E4(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1B7CBC00C(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B7CFF120())
  {
    v4 = sub_1B7AEE088(0, &qword_1EDBE5920, off_1E7CB4FD8);
    v5 = sub_1B7CBC9EC();
    result = MEMORY[0x1B8CADF40](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1B8CAE380](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1B7C5EA6C(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1B7CFF120();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

__CFString *sub_1B7CBC14C(unint64_t a1, uint64_t a2)
{
  v3 = v2;

  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v9 = v7[2];
  v8 = v7[3];
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
LABEL_18:
    v7 = sub_1B7AE3A9C((v8 > 1), v10, 1, v7);
  }

  v16 = MEMORY[0x1E69E6158];
  v17 = &off_1F2FA8B58;
  *&v15 = a1;
  *(&v15 + 1) = a2;
  v7[2] = v10;
  sub_1B7AE910C(&v15, &v7[5 * v9 + 4]);
  v11 = sub_1B7AE3B2C(0xD0000000000000F3, 0x80000001B7D58820, 0);
  if (!v3)
  {
    v12 = v11;
    *&v15 = v6;

    sub_1B7AF1A7C(v7, v12, &v15, v12);
    v18 = 0;

    v7 = v15;
    *&v15 = v6;
    v10 = v7[2];
    if (!v10)
    {
      goto LABEL_15;
    }

    a2 = 0;
    v13 = v7 + 5;
    while (1)
    {
      v9 = &v13[2 * a2];
      a1 = a2;
      while (1)
      {
        v8 = v7[2];
        if (a1 >= v8)
        {
          __break(1u);
          goto LABEL_18;
        }

        v3 = sub_1B7CFEA30();
        a2 = IMDChatRecordCopyChatForGUID(v3);

        if (a2)
        {
          break;
        }

LABEL_8:
        ++a1;
        v9 += 16;
        if (v10 == a1)
        {
          goto LABEL_15;
        }
      }

      v3 = [objc_allocWithZone(IMDChatRecord) initWithRecordRef_];

      if (!v3)
      {
        goto LABEL_8;
      }

      MEMORY[0x1B8CADDF0]();
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B7CFED00();
      }

      a2 = a1 + 1;
      sub_1B7CFED40();
      v13 = v7 + 5;
      v6 = v15;
      if (v10 - 1 == a1)
      {
LABEL_15:

        return v6;
      }
    }
  }

  v6 = v3;

  return v6;
}

void sub_1B7CBC43C(uint64_t a1)
{
  v2 = v1;
  v35 = *(a1 + 16);
  if (!v35)
  {
    return;
  }

  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  v34 = a1 + 32;
  while (1)
  {
    v5 = (v34 + 16 * v3);
    v7 = *v5;
    v6 = v5[1];

    v8 = v7;
    v9 = v2;
    v10 = sub_1B7CBC14C(v8, v6);
    if (v2)
    {

      return;
    }

    v11 = v10;

    v12 = v11 >> 62;
    if (v11 >> 62)
    {
      v13 = sub_1B7CFF120();
    }

    else
    {
      v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v4 >> 62;
    if (v4 >> 62)
    {
      v32 = sub_1B7CFF120();
      v16 = v32 + v13;
      if (__OFADD__(v32, v13))
      {
LABEL_34:
        __break(1u);
        return;
      }
    }

    else
    {
      v15 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v16 = v15 + v13;
      if (__OFADD__(v15, v13))
      {
        goto LABEL_34;
      }
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v14)
      {
        goto LABEL_17;
      }

LABEL_16:
      sub_1B7CFF120();
      goto LABEL_17;
    }

    if (v14)
    {
      goto LABEL_16;
    }

    v17 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v16 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v18 = v13;
      goto LABEL_18;
    }

LABEL_17:
    v18 = v13;
    v4 = sub_1B7CFF250();
    v17 = v4 & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v19 = *(v17 + 16);
    v20 = *(v17 + 24);
    if (v12)
    {
      break;
    }

    v21 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v20 >> 1) - v19) < v18)
    {
      goto LABEL_39;
    }

    v38 = v18;
    v36 = v4;
    v24 = v17 + 8 * v19 + 32;
    v33 = v17;
    if (v12)
    {
      if (v21 < 1)
      {
        goto LABEL_41;
      }

      sub_1B7C81070(&qword_1EBA53650, &qword_1EBA53648, &unk_1B7D12700, MEMORY[0x1E69E6340]);
      for (i = 0; i != v21; ++i)
      {
        sub_1B7C107FC(&qword_1EBA53648, &unk_1B7D12700);
        v26 = sub_1B7CCCC60(v37, i, v11);
        v28 = *v27;
        (v26)(v37, 0);
        *(v24 + 8 * i) = v28;
      }
    }

    else
    {
      sub_1B7AEE088(0, &qword_1EDBE5920, off_1E7CB4FD8);
      swift_arrayInitWithCopy();
    }

    v4 = v36;
    v2 = v9;
    if (v38 >= 1)
    {
      v29 = *(v33 + 16);
      v30 = __OFADD__(v29, v38);
      v31 = v29 + v38;
      if (v30)
      {
        goto LABEL_40;
      }

      *(v33 + 16) = v31;
    }

LABEL_4:
    if (++v3 == v35)
    {
      return;
    }
  }

  v22 = v17;
  v23 = sub_1B7CFF120();
  v17 = v22;
  v21 = v23;
  if (v23)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v18 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

double sub_1B7CBC774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  v11 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v13 = v11[2];
  v12 = v11[3];
  v14 = v13 + 1;
  if (v13 >= v12 >> 1)
  {
    v11 = sub_1B7AE3A9C((v12 > 1), v13 + 1, 1, v11);
  }

  v15 = MEMORY[0x1E69E6158];
  v24 = MEMORY[0x1E69E6158];
  v25 = &off_1F2FA8B58;
  *&v23 = a1;
  *(&v23 + 1) = a2;
  v11[2] = v14;
  sub_1B7AE910C(&v23, &v11[5 * v13 + 4]);
  v16 = v11[3];
  v17 = v13 + 2;

  if ((v13 + 2) > (v16 >> 1))
  {
    v11 = sub_1B7AE3A9C((v16 > 1), v13 + 2, 1, v11);
  }

  v24 = v15;
  v25 = &off_1F2FA8B58;
  *&v23 = a3;
  *(&v23 + 1) = a4;
  v11[2] = v17;
  sub_1B7AE910C(&v23, &v11[5 * v14 + 4]);
  v18 = v11[3];

  if ((v13 + 3) > (v18 >> 1))
  {
    v11 = sub_1B7AE3A9C((v18 > 1), v13 + 3, 1, v11);
  }

  v24 = v15;
  v25 = &off_1F2FA8B58;
  *&v23 = a6;
  *(&v23 + 1) = a7;
  v11[2] = v13 + 3;
  sub_1B7AE910C(&v23, &v11[5 * v17 + 4]);
  v19 = v26;
  sub_1B7AE3B2C(0xD0000000000000A3, 0x80000001B7D59120, 0);
  if (!v19)
  {
    sub_1B7AF3FE4(v11);
  }

  return result;
}

unint64_t sub_1B7CBC9EC()
{
  result = qword_1EBA53640;
  if (!qword_1EBA53640)
  {
    sub_1B7AEE088(255, &qword_1EDBE5920, off_1E7CB4FD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53640);
  }

  return result;
}

uint64_t sub_1B7CBCAC8()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B7CBCB28()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B7CBCBBC()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B7CBCC44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7C107FC(&unk_1EBA51980, &unk_1B7D0A1B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B7CBCCB4()
{
  v1 = *(sub_1B7C107FC(&unk_1EBA51980, &unk_1B7D0A1B0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = v0[4];

  sub_1B7CB6804(v3, v4, v6, v0 + v2, v5);
}

uint64_t static IMDChatQueriesGroupNameAndPhotoHelper.shouldDisplayGroupNameAndPhoto(with:handles:)(uint64_t a1, uint64_t a2)
{
  sub_1B7CFE300();
  sub_1B7CBCE40();
  return sub_1B7CFE2F0() & 1;
}

unint64_t sub_1B7CBCE40()
{
  result = qword_1EBA53638;
  if (!qword_1EBA53638)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA53638);
  }

  return result;
}

id IMDChatQueriesGroupNameAndPhotoHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IMDChatQueriesGroupNameAndPhotoHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMDChatQueriesGroupNameAndPhotoHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id IMDChatQueriesGroupNameAndPhotoHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMDChatQueriesGroupNameAndPhotoHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B7CBD01C()
{
  if ((*(v0 + 8) & 1) != 0 || (v3 = [objc_opt_self() sharedFeatureFlags], v4 = objc_msgSend(v3, sel_isMissingMessagesEnabled), v3, v4))
  {
    if (qword_1EDBE3F50 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for ChatLookupRecord(0);
    sub_1B7CBD928(&qword_1EDBE3F90, type metadata accessor for ChatLookupRecord, &unk_1B7D12950);
    sub_1B7CC1208(v5);
    if (v6)
    {
      sub_1B7C2EBBC(v6, 0x797469726F697270, 0xE800000000000000);
      if (v1)
      {
LABEL_7:

        return;
      }

      v2 = 0xD0000000000000E8;

      sub_1B7AE3B2C(0xD00000000000037CLL, 0x80000001B7D592E0, 0);
      sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);

      sub_1B7AE3B2C(0xD000000000000348, 0x80000001B7D59660, 0);
      sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);

      sub_1B7AE3B2C(0xD00000000000033ELL, 0x80000001B7D599B0, 0);
      sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);

      sub_1B7AE3B2C(0xD000000000000372, 0x80000001B7D59CF0, 0);
      sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);

      sub_1B7AE3B2C(0xD000000000000345, 0x80000001B7D5A070, 0);
      sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);

      sub_1B7AE3B2C(0xD000000000000357, 0x80000001B7D5A3C0, 0);
      sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);

      sub_1B7AE3B2C(0xD0000000000000E8, 0x80000001B7D5A720, 0);
      sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      __break(1u);
    }

    sub_1B7CD2F6C(1, v2 - 215, 0x80000001B7D53FD0);
    goto LABEL_7;
  }
}

BOOL sub_1B7CBD6D0()
{
  v1 = type metadata accessor for SQLConnectionError(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &v14;

  v4 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v6 = v4[2];
  v5 = v4[3];
  if (v6 >= v5 >> 1)
  {
    v4 = sub_1B7AE3A9C((v5 > 1), v6 + 1, 1, v4);
  }

  v11 = MEMORY[0x1E69E6158];
  v12 = &off_1F2FA8B58;
  *&v10 = 0xD000000000000011;
  *(&v10 + 1) = 0x80000001B7D53FD0;
  v4[2] = v6 + 1;
  sub_1B7AE910C(&v10, &v4[5 * v6 + 4]);
  sub_1B7AF45D8(0xD000000000000029, 0x80000001B7D51060, v4, 0, &v13);
  if (!v0)
  {

    return v14 < 1;
  }

  *&v10 = v0;
  v7 = v0;
  sub_1B7C107FC(&qword_1EBA51FC0, &qword_1B7D0A700);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:

    return v8;
  }

  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_1B7C19DBC(v3);
    goto LABEL_9;
  }

  return 1;
}

uint64_t sub_1B7CBD928(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t initializeBufferWithCopyOfBuffer for MergedChatMigrator.MigrationError(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1B7CBD984(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_1B7CBD9CC(uint64_t result, int a2, int a3)
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

uint64_t sub_1B7CBDA28@<X0>(uint64_t *a1@<X0>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1B7CBF28C(&qword_1EDBE3FB8, type metadata accessor for ChatLookupRecord, &unk_1B7D12824);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7CBF28C(&qword_1EDBE3FB0, type metadata accessor for ChatLookupRecord, &unk_1B7D128E0);
  sub_1B7CFE770();

  *a3 = v5;
  a3[1] = v6;
  return result;
}

uint64_t sub_1B7CBDB30(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_1B7CBF28C(&qword_1EDBE3FB8, type metadata accessor for ChatLookupRecord, &unk_1B7D12824);
  sub_1B7CFE1D0();
}

uint64_t sub_1B7CBDC04(uint64_t a1)
{
  swift_getKeyPath();
  sub_1B7CBF28C(&qword_1EDBE3FB8, type metadata accessor for ChatLookupRecord, &unk_1B7D12824);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7CBF28C(&qword_1EDBE3FB0, type metadata accessor for ChatLookupRecord, &unk_1B7D128E0);
  sub_1B7CFE770();

  return v1;
}

uint64_t sub_1B7CBDD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_1B7CBF28C(&qword_1EDBE3FB0, type metadata accessor for ChatLookupRecord, &unk_1B7D128E0);
  sub_1B7CFE790();
}

uint64_t sub_1B7CBDDB0@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_1B7CBF28C(&qword_1EDBE3FB8, type metadata accessor for ChatLookupRecord, &unk_1B7D12824);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7CBF28C(&qword_1EDBE3FB0, type metadata accessor for ChatLookupRecord, &unk_1B7D128E0);
  sub_1B7CBF28C(&qword_1EDBE5728, type metadata accessor for ChatRecord, &unk_1B7D0F500);
  v3 = sub_1B7CFE760();

  *a2 = v3;
  return result;
}

uint64_t sub_1B7CBDEEC()
{
  swift_getKeyPath();
  sub_1B7CBF28C(&qword_1EDBE3FB8, type metadata accessor for ChatLookupRecord, &unk_1B7D12824);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7CBF28C(&qword_1EDBE3FB0, type metadata accessor for ChatLookupRecord, &unk_1B7D128E0);
  sub_1B7CBF28C(&qword_1EDBE5728, type metadata accessor for ChatRecord, &unk_1B7D0F500);
  v0 = sub_1B7CFE760();

  return v0;
}

uint64_t sub_1B7CBE024(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1B7CBF28C(&qword_1EDBE3FB0, type metadata accessor for ChatLookupRecord, &unk_1B7D128E0);
  sub_1B7CBF28C(&qword_1EDBE5728, type metadata accessor for ChatRecord, &unk_1B7D0F500);
  sub_1B7CFE780();
}

uint64_t sub_1B7CBE0FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1B7CBF28C(&qword_1EDBE3FB8, type metadata accessor for ChatLookupRecord, &unk_1B7D12824);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7CBF28C(&qword_1EDBE3FB0, type metadata accessor for ChatLookupRecord, &unk_1B7D128E0);
  sub_1B7CFE770();

  *a2 = v4;
  return result;
}

uint64_t sub_1B7CBE208(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_1B7CBF28C(&qword_1EDBE3FB8, type metadata accessor for ChatLookupRecord, &unk_1B7D12824);
  sub_1B7CFE1D0();
}

uint64_t sub_1B7CBE2CC()
{
  swift_getKeyPath();
  sub_1B7CBF28C(&qword_1EDBE3FB8, type metadata accessor for ChatLookupRecord, &unk_1B7D12824);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7CBF28C(&qword_1EDBE3FB0, type metadata accessor for ChatLookupRecord, &unk_1B7D128E0);
  sub_1B7CFE770();

  return v0;
}

uint64_t sub_1B7CBE3D0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1B7CBF28C(&qword_1EDBE3FB0, type metadata accessor for ChatLookupRecord, &unk_1B7D128E0);
  sub_1B7CFE790();
}

uint64_t *sub_1B7CBE478(__int128 *a1)
{
  type metadata accessor for ChatLookupRecord(0);
  v1[5] = sub_1B7C107FC(qword_1EBA53678, &unk_1B7D12A60);
  sub_1B7CBF28C(&qword_1EDBE3FB0, type metadata accessor for ChatLookupRecord, &unk_1B7D128E0);
  v1[6] = swift_getOpaqueTypeConformance2();
  sub_1B7C1A14C(v1 + 2);
  sub_1B7CFE720();
  sub_1B7AE9124(v1 + 2, v1[5]);
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7CFE1F0();
  swift_beginAccess();
  sub_1B7AE9168(v1 + 2);
  sub_1B7AE910C(a1, (v1 + 2));
  swift_endAccess();
  return v1;
}

uint64_t sub_1B7CBE5F0()
{
  sub_1B7AE9168((v0 + 16));
  v1 = OBJC_IVAR____TtC14IMDPersistence16ChatLookupRecord___observationRegistrar;
  v2 = sub_1B7CFE200();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ChatLookupRecord(uint64_t a1)
{
  result = qword_1EDBE3F80;
  if (!qword_1EDBE3F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7CBE6E8(uint64_t a1)
{
  result = sub_1B7CFE200();
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

uint64_t sub_1B7CBE7A8()
{
  v0 = aChatLookup_0[0];

  return v0;
}

uint64_t sub_1B7CBE7E0(__int128 *a1)
{
  type metadata accessor for ChatLookupRecord(0);
  v2 = swift_allocObject();
  sub_1B7CBE478(a1);
  return v2;
}

void (*sub_1B7CBE824(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1B7AE90A8(v1 + 16, v4);
  return sub_1B7C1E23C;
}

uint64_t sub_1B7CBE8B8()
{
  sub_1B7CFF7C0();
  type metadata accessor for ChatLookupRecord(0);
  sub_1B7CBF28C(&qword_1EDBE3FB0, type metadata accessor for ChatLookupRecord, &unk_1B7D128E0);
  sub_1B7CFE750();
  return sub_1B7CFF800();
}

uint64_t sub_1B7CBE99C(uint64_t a1, uint64_t a2)
{
  sub_1B7CFF7C0();
  swift_getWitnessTable();
  sub_1B7CFE750();
  return sub_1B7CFF800();
}

uint64_t sub_1B7CBEA04()
{
  type metadata accessor for ChatLookupRecord(0);
  sub_1B7CBF28C(&qword_1EDBE3FB0, type metadata accessor for ChatLookupRecord, &unk_1B7D128E0);
  return sub_1B7CFE740();
}