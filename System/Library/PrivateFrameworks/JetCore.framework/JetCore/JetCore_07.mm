uint64_t sub_1DB387D84(sqlite3_stmt *a1, sqlite3_stmt *a2)
{
  v21[5] = *MEMORY[0x1E69E9840];
  MEMORY[0x1E1285C10](59);
  MEMORY[0x1E1285C70](0xD00000000000003BLL, 0x80000001DB52BB90);
  v21[3] = MEMORY[0x1E69E6158];
  v21[4] = &off_1F5700098;
  v21[0] = a1;
  v21[1] = a2;
  sub_1DB388374(v21, v19);

  v6 = sub_1DB302D80(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1DB302D80((v7 > 1), v8 + 1, 1, v6);
  }

  v6[2] = v8 + 1;
  v9 = &v6[5 * v8];
  v10 = v19[0];
  v11 = v19[1];
  v9[8] = v20;
  *(v9 + 2) = v10;
  *(v9 + 3) = v11;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB3883E4(v21);
  v21[0] = 0;

  sub_1DB4ABE94(0, 0xE000000000000000, v2, v21, v19);

  if (v3)
  {
    goto LABEL_10;
  }

  v13 = v21[0];
  if (v21[0])
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v13;
    *(inited + 24) = 0;
    sub_1DB4B03C0(v6);

    v15 = *(inited + 16);
    v16 = sqlite3_step(v15);
    if (qword_1EE30C820 != -1)
    {
      swift_once();
    }

    if (sub_1DB331244(v16, qword_1EE312D90))
    {
      swift_setDeallocating();
      sqlite3_finalize(v15);

      return v16 == 100;
    }

    sub_1DB388320();
    swift_allocError();
    *v18 = v16;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    swift_willThrow();
    swift_setDeallocating();
    sqlite3_finalize(v15);
LABEL_10:

    return v17;
  }

  __break(1u);
  return result;
}

void *sub_1DB388044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = *MEMORY[0x1E69E9840];
  sub_1DB50B320();

  v22[0] = 0xD000000000000012;
  v22[1] = 0x80000001DB52BB70;
  MEMORY[0x1E1285C70](a1, a2);
  MEMORY[0x1E1285C70](41, 0xE100000000000000);
  v23[0] = 0;

  result = sub_1DB4ABE94(0xD000000000000012, 0x80000001DB52BB70, v4, v23, v22);
  if (v5)
  {

    return (v6 & 1);
  }

  v12 = v23[0];
  if (v23[0])
  {

    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v12;
    *(inited + 24) = 0;
    while (1)
    {
      do
      {
        v14 = sqlite3_step(v12);
        if (qword_1EE30C820 != -1)
        {
          swift_once();
        }

        v6 = qword_1EE312D90;
        if (!*(qword_1EE312D90 + 16) || (sub_1DB50BCF0(), sub_1DB50BD20(), v15 = sub_1DB50BD30(), v16 = -1 << *(v6 + 32), v17 = v15 & ~v16, ((*(v6 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0))
        {
LABEL_19:
          sub_1DB388320();
          swift_allocError();
          *v21 = v14;
          *(v21 + 8) = 0;
          *(v21 + 16) = 0;
          swift_willThrow();
          swift_setDeallocating();
          sqlite3_finalize(v12);
          return (v6 & 1);
        }

        v18 = ~v16;
        while (*(*(v6 + 48) + 4 * v17) != v14)
        {
          v17 = (v17 + 1) & v18;
          if (((*(v6 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        LOBYTE(v6) = v14 == 100;
        if (v14 != 100)
        {
LABEL_21:

          return (v6 & 1);
        }
      }

      while (!sqlite3_column_text(v12, 1));
      if (sub_1DB50A7A0() == a3 && v19 == a4)
      {
        break;
      }

      v20 = sub_1DB50BA30();

      if (v20)
      {
        goto LABEL_21;
      }
    }

    return (v6 & 1);
  }

  __break(1u);
  return result;
}

unint64_t sub_1DB388320()
{
  result = qword_1ECC441C8;
  if (!qword_1ECC441C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC441C8);
  }

  return result;
}

uint64_t sub_1DB388374(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42798, &qword_1DB50F210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB3883E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42798, &qword_1DB50F210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ClientEntitlementChecker.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_1DB388A48(a1, a2);
  v6 = *(a2 - 8);
  a3[4] = &type metadata for ClientEntitlementReader;
  a3[5] = &off_1F56F5160;
  v7 = *(v6 + 8);

  return v7(a1, a2);
}

Swift::Bool __swiftcall ClientEntitlementChecker.hasEntitlement(_:)(Swift::String a1)
{
  sub_1DB38856C(a1._countAndFlagsBits, a1._object, v1);
  if (v2)
  {
    LODWORD(v2) = swift_dynamicCast();
    if (v2)
    {
      LOBYTE(v2) = v4;
    }
  }

  return v2;
}

void sub_1DB38856C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v6 = *(a3 + 16);
  v7 = a1;
  v8 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC441E0, qword_1DB514650);
  sub_1DB47D0C4(sub_1DB388D40, v5, v4);
}

Swift::Bool __swiftcall ClientEntitlementChecker.hasEntitlements(_:)(Swift::OpaquePointer a1)
{
  if (*(a1._rawValue + 2))
  {
    sub_1DB388754(a1._rawValue, v1);
    v4 = v2;
    if (v2)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_1DB50A4A0();

        return 0;
      }
    }

    return 0;
  }

  return 1;
}

void sub_1DB388754(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v5 = *(a2 + 16);
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC441D0, &qword_1DB514648);
  sub_1DB47D0C4(sub_1DB388C0C, v4, v3);
}

void sub_1DB3887E4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a7@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  *token.val = a1;
  *&token.val[2] = a2;
  *&token.val[4] = a3;
  *&token.val[6] = a4;
  v8 = SecTaskCreateWithAuditToken(0, &token);
  if (v8)
  {
    v9 = v8;
    *token.val = 0;
    v10 = sub_1DB50A620();
    v11 = SecTaskCopyValueForEntitlement(v9, v10, &token);

    v12 = *token.val;
    if (*token.val)
    {
      type metadata accessor for CFError(0);
      sub_1DB388CE8();
      swift_allocError();
      *v13 = v12;
      swift_willThrow();
      swift_unknownObjectRelease();
    }

    else
    {

      *a7 = v11;
    }
  }

  else
  {
    *a7 = 0;
  }
}

void sub_1DB388914(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, CFDictionaryRef *a6@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  *token.val = a1;
  *&token.val[2] = a2;
  *&token.val[4] = a3;
  *&token.val[6] = a4;
  v7 = SecTaskCreateWithAuditToken(0, &token);
  if (v7)
  {
    v8 = v7;
    *token.val = 0;
    v9 = sub_1DB50A980();
    v10 = SecTaskCopyValuesForEntitlements(v8, v9, &token);

    v11 = *token.val;
    if (*token.val)
    {
      type metadata accessor for CFError(0);
      sub_1DB388CE8();
      swift_allocError();
      *v12 = v11;
      swift_willThrow();
    }

    else
    {

      *a6 = v10;
    }
  }

  else
  {
    *a6 = 0;
  }
}

uint64_t sub_1DB388A48(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_1DB50B430();
  return sub_1DB50B420();
}

uint64_t sub_1DB388B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB388B50(uint64_t *a1, int a2)
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

uint64_t sub_1DB388B98(uint64_t result, int a2, int a3)
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

uint64_t sub_1DB388C0C()
{
  v1 = *(v0 + 40);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = v1;
  v2 = *(v7 + 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC441D0, &qword_1DB514648);
  return v2(sub_1DB388CC8, &v5, v3, v6, v7);
}

unint64_t sub_1DB388CE8()
{
  result = qword_1ECC441D8;
  if (!qword_1ECC441D8)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC441D8);
  }

  return result;
}

uint64_t sub_1DB388D40()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = v1;
  v10 = v2;
  v3 = *(v8 + 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC441E0, qword_1DB514650);
  return v3(sub_1DB388DFC, &v6, v4, v7, v8);
}

uint64_t sub_1DB388E2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

uint64_t sub_1DB388F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1DB38AED0(a3, v25 - v10);
  v12 = sub_1DB50ABA0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1DB38AF40(v11);
  }

  else
  {
    sub_1DB50AB90();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1DB50AAD0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1DB50A6F0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1DB38AF40(a3);

      return v23;
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

  sub_1DB38AF40(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1DB3891D4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v4 + 16) = v5;
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  *(v4 + 40) = 0;
  return v4;
}

char *sub_1DB389248()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v48 - v4;
  v6 = sub_1DB50A230();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  v13 = v0[2];
  os_unfair_lock_lock(v13 + 4);
  v14 = v0[3];
  if (v1[5])
  {

    os_unfair_lock_unlock(v13 + 4);
  }

  else
  {
    v49 = v13;
    v52 = v14;
    v53 = v5;
    v15 = qword_1EE30EAE8;
    v51 = v1[4];

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = sub_1DB50A270();
    __swift_project_value_buffer(v16, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v17 = sub_1DB50A250();
    v18 = sub_1DB50B070();
    v19 = sub_1DB50B0E0();
    v50.tv_sec = v2;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v54.tv_sec = v21;
      *v20 = 136315138;
      v22 = sub_1DB50BEE0();
      v24 = sub_1DB3D4EE8(v22, v23, &v54.tv_sec);
      v48 = v7;
      v25 = v6;
      v26 = v18;
      v27 = v24;

      *(v20 + 4) = v27;
      v28 = sub_1DB50A210();
      v29 = v26;
      v6 = v25;
      v7 = v48;
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v17, v29, v28, "MakeDependency", "object=%s,type=async", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x1E1288220](v21, -1, -1);
      MEMORY[0x1E1288220](v20, -1, -1);
    }

    (*(v7 + 16))(v9, v12, v6);
    sub_1DB50A2C0();
    swift_allocObject();
    v30 = sub_1DB50A2B0();
    (*(v7 + 8))(v12, v6);
    static MonotonicTime.now.getter(&v54);
    v31 = v54;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    tv_sec = v54.tv_sec;
    v35 = type metadata accessor for Promise(0, *(v50.tv_sec + 80), v33, v34);
    v14 = Promise.__allocating_init()(v35, v36, v37, v38);
    v39 = v1[3];
    v40 = v1[4];
    v41 = *(v1 + 40);
    v1[3] = v14;
    v1[4] = 0;
    *(v1 + 40) = 1;

    sub_1DB2FEB54(v39, v40, v41);
    os_unfair_lock_unlock(v49 + 4);

    sub_1DB330B68();
    v42 = sub_1DB50ABA0();
    v50 = v54;
    v43 = v53;
    (*(*(v42 - 8) + 56))(v53, 1, 1, v42);
    v44 = swift_allocObject();
    swift_weakInit();
    v45 = swift_allocObject();
    *(v45 + 16) = 0;
    *(v45 + 24) = 0;
    v46 = v51;
    *(v45 + 32) = v52;
    *(v45 + 40) = v46;
    *(v45 + 48) = v50;
    *(v45 + 64) = v31;
    *(v45 + 80) = v30;
    *(v45 + 88) = tv_sec;
    *(v45 + 96) = v14;
    *(v45 + 104) = v44;

    sub_1DB388F14(0, 0, v43, &unk_1DB5147C0, v45);
  }

  return v14;
}

uint64_t sub_1DB389728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = v14;
  *(v8 + 120) = v15;
  *(v8 + 104) = v13;
  *(v8 + 88) = v12;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 48) = a4;
  v9 = *(*v14 + 80);
  *(v8 + 128) = v9;
  *(v8 + 136) = *(v9 - 8);
  *(v8 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB389818, 0, 0);
}

uint64_t sub_1DB389818()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v1 = swift_allocObject();
  *(v0 + 152) = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 128);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v11 = *(v0 + 80);
  *(v0 + 40) = v1;
  v5 = swift_task_alloc();
  *(v0 + 160) = v5;
  v6 = *(v0 + 48);
  v7 = *(v0 + 64);
  *(v5 + 16) = v2;
  *(v5 + 24) = v6;
  *(v5 + 40) = v7;
  *(v5 + 56) = v11;
  *(v5 + 72) = v4;
  *(v5 + 80) = v1;
  *(v5 + 88) = v3;
  v8 = swift_task_alloc();
  *(v0 + 168) = v8;
  *v8 = v0;
  v8[1] = sub_1DB3899C4;
  v9 = *(v0 + 144);

  return MEMORY[0x1EEE6DE98](v9, v0 + 40, &unk_1DB5147F0, v5, 0, 0, 0xD00000000000001FLL, 0x80000001DB52BC50);
}

uint64_t sub_1DB3899C4()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1DB389B8C;
  }

  else
  {
    v2 = sub_1DB389AE8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB389AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[18];
  v6 = v4[16];
  v7 = v4[17];
  Promise.resolve(_:)(v5, a2, a3, a4);

  (*(v7 + 8))(v5, v6);

  v8 = v4[1];

  return v8();
}

uint64_t sub_1DB389B8C()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + 16);
    v7 = swift_task_alloc();
    v8 = *(v0 + 48);
    *(v7 + 16) = v5;
    *(v7 + 24) = v8;
    v9 = swift_task_alloc();
    *(v9 + 16) = sub_1DB38B15C;
    *(v9 + 24) = v7;

    os_unfair_lock_lock(v6 + 4);
    sub_1DB38B1A4();
    os_unfair_lock_unlock(v6 + 4);
  }

  v10 = *(v0 + 176);
  Promise.reject(_:)(v10, v2, v3, v4);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1DB389CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = v8;
  *(v13 + 56) = v20;
  *(v13 + 64) = v21;
  *(v13 + 40) = a7;
  *(v13 + 48) = a8;
  *(v13 + 32) = a6;
  v15 = sub_1DB50A280();
  *(v13 + 72) = v15;
  *(v13 + 80) = *(v15 - 8);
  *(v13 + 88) = swift_task_alloc();
  v16 = sub_1DB50A230();
  *(v13 + 96) = v16;
  *(v13 + 104) = *(v16 - 8);
  *(v13 + 112) = swift_task_alloc();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  v17 = swift_task_alloc();
  *(v13 + 120) = v17;
  *v17 = v13;
  v17[1] = sub_1DB389EA0;

  return sub_1DB330250(a1, a2, a3, (v13 + 16), v22);
}

uint64_t sub_1DB389EA0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1DB38A280;
  }

  else
  {
    v2 = sub_1DB389FB4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB389FB4()
{
  v25 = v0;
  static MonotonicTime.now.getter(&v24);
  tv_sec = v24.tv_sec;
  tv_nsec = v24.tv_nsec;
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  v3 = tv_nsec / *&qword_1EE30ED50 + tv_sec;
  v4 = v0[5] / *&qword_1EE30ED50 + v0[4];
  if (qword_1EE30EAE8 != -1)
  {
    swift_once();
  }

  v5 = v3 - v4;
  v6 = sub_1DB50A270();
  __swift_project_value_buffer(v6, qword_1EE312DE8);

  v7 = sub_1DB50A250();
  sub_1DB50A2A0();
  v8 = sub_1DB50B060();

  if (sub_1DB50B0E0())
  {
    v10 = v0[10];
    v9 = v0[11];
    v11 = v0[9];

    sub_1DB50A2D0();

    if ((*(v10 + 88))(v9, v11) == *MEMORY[0x1E69E93E8])
    {
      v12 = 0;
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[10] + 8))(v0[11], v0[9]);
      v13 = "selfTime=%f";
      v12 = 1;
    }

    v14 = v0[7];
    v15 = swift_slowAlloc();
    *v15 = 0;
    *(v15 + 1) = v12;
    *(v15 + 2) = 2048;
    os_unfair_lock_lock((v14 + 24));
    v16 = *(v14 + 16);
    os_unfair_lock_unlock((v14 + 24));
    *(v15 + 4) = v5 - v16;
    v17 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v7, v8, v17, "MakeDependency", v13, v15, 0xCu);
    MEMORY[0x1E1288220](v15, -1, -1);
  }

  v19 = v0[13];
  v18 = v0[14];
  v20 = v0[12];
  v21 = v0[8];

  (*(v19 + 8))(v18, v20);
  os_unfair_lock_lock((v21 + 24));
  *(v21 + 16) = v5 + *(v21 + 16);
  os_unfair_lock_unlock((v21 + 24));

  v22 = v0[1];

  return v22();
}

uint64_t sub_1DB38A280()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB38A2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_1DB330B68();
  sub_1DB330884(&v11);
  sub_1DB389248();
  Promise.then(perform:orCatchError:on:)(a1, a2, a3, a4, a5);
}

uint64_t sub_1DB38A44C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DB38A46C, 0, 0);
}

uint64_t sub_1DB38A46C()
{
  v5 = v0;

  sub_1DB330B68();
  sub_1DB330884(v4);
  v0[4] = sub_1DB389248();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1DB38A57C;
  v2 = v0[2];

  return Promise.then()(v2);
}

uint64_t sub_1DB38A57C()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB38A6B8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1DB38A6B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB38A71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *(*v4 + 80);
  v7 = type metadata accessor for Result(255, v6, a3, a4);
  v8 = sub_1DB50B120();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  if (os_unfair_lock_trylock((*(v4 + 16) + 16)))
  {
    if (*(v4 + 40) == 1)
    {
      v16 = *(v4 + 24);
      v27 = *(v4 + 32);

      sub_1DB4B3E04(v17, v18, v19, v20);
      v21 = *(v7 - 8);
      if ((*(v21 + 48))(v11, 1, v7) == 1)
      {
        v7 = v8;
      }

      else
      {
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          (*(v12 + 32))(v15, v11, v6);
          v28 = 0;
          v29 = 0xE000000000000000;
          sub_1DB50BA00();
          sub_1DB2FEB54(v16, v27, 1);
          v23 = v28;
          (*(v12 + 8))(v15, v6);
          goto LABEL_10;
        }

        v9 = v21;
      }

      sub_1DB2FEB54(v16, v27, 1);
      (*(v9 + 8))(v11, v7);
    }

    v28 = 60;
    v29 = 0xE100000000000000;
    v24 = sub_1DB50BEE0();
    MEMORY[0x1E1285C70](v24);

    MEMORY[0x1E1285C70](62, 0xE100000000000000);
    v23 = v28;
LABEL_10:
    os_unfair_lock_unlock((*(v5 + 16) + 16));
    return v23;
  }

  v28 = 60;
  v29 = 0xE100000000000000;
  v22 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v22);

  MEMORY[0x1E1285C70](62, 0xE100000000000000);
  return v28;
}

uint64_t sub_1DB38AA30()
{

  sub_1DB2FEB54(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDC0](v0, 41, 7);
}

uint64_t sub_1DB38AA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB38AAF0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DB306AF4;

  return sub_1DB38A44C(a1);
}

uint64_t sub_1DB38ABAC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DB38ACA4;

  return v6(a1);
}

uint64_t sub_1DB38ACA4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DB38ADC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DB306AF4;

  return sub_1DB389728(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DB38AED0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB38AF40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DB38AFA8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DB30C7A0;

  return sub_1DB38ABAC(a1, v4);
}

uint64_t sub_1DB38B060(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = v1[9];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DB306AF4;

  return sub_1DB389CF0(a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DB38B15C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = 0;
  sub_1DB2FEB54(v4, v5, v6);
}

uint64_t BaseVersionFieldProvider.addExpensiveMetricsFields(into:using:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 64) = a1;
  *(v2 + 72) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DB38B29C, 0, 0);
}

uint64_t sub_1DB38B29C()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = (*(v4 + 24))(v3, v4);
  v6 = v5;
  if (!v2)
  {

LABEL_9:
    v11 = v0[8];
    v0[5] = MEMORY[0x1E69E6530];
    v0[2] = 1;
    v13 = v1[3];
    v12 = v1[4];
    __swift_mutable_project_boxed_opaque_existential_1(v11, v13);
    (*(v12 + 16))(v0 + 2, 0x7372655665736162, 0xEB000000006E6F69, v13, v12);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    goto LABEL_10;
  }

  if (!*(v5 + 16) || (v7 = v0[9], v8 = sub_1DB306160(0x707954746E657665, 0xE900000000000065), (v9 & 1) == 0) || (sub_1DB300B14(*(v6 + 56) + 32 * v8, (v0 + 2)), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_10;
  }

  v10 = sub_1DB33114C(v0[6], v0[7], v7);

  if (v10)
  {
    goto LABEL_9;
  }

LABEL_10:
  v14 = v0[1];

  return v14();
}

uint64_t sub_1DB38B46C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DB306AF4;

  return BaseVersionFieldProvider.addExpensiveMetricsFields(into:using:)(a1);
}

uint64_t JSONDictionary.bridgedPrimitiveValues<A, B>()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *__swift_project_boxed_opaque_existential_1(v3, v3[3]);

  return sub_1DB49FB28(v7, a1, a2, a3);
}

id JSONDictionary.count.getter()
{
  v1 = *__swift_project_boxed_opaque_existential_1(v0, v0[3]);

  return [v1 count];
}

uint64_t JSONDictionary.subscript.getter@<X0>(void *x8_0@<X8>)
{
  v5 = *__swift_project_boxed_opaque_existential_1(v3, v3[3]);

  return sub_1DB49FA44(v5, x8_0);
}

uint64_t static ShelfID.forShelves(in:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = 0;
  *(a2 + 8) = sub_1DB38B8F0;
  *(a2 + 16) = v5;
  *(a2 + 24) = 0;
}

uint64_t sub_1DB38B810@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *a1;

  v9 = sub_1DB50B8F0();
  MEMORY[0x1E1285C70](v9);

  *a4 = a2;
  a4[1] = a3;
  a4[2] = 35;
  a4[3] = 0xE100000000000000;
  v11 = v8 + 1;
  if (v8 == -1)
  {

    sub_1DB3DB408("JetCore/ShelfID.swift", 21, 2, 50, a2, a3);

    v11 = 0;
  }

  *a1 = v11;
  return result;
}

JetCore::ShelfID __swiftcall ShelfID.init(at:in:)(Swift::UInt64 at, JetCore::PageID in)
{
  v3 = v2;
  v4 = *in.value._countAndFlagsBits;
  v5 = *(in.value._countAndFlagsBits + 8);
  v6 = sub_1DB50B8F0();
  MEMORY[0x1E1285C70](v6);

  v3[2] = 35;
  v3[3] = 0xE100000000000000;
  *v3 = v4;
  v3[1] = v5;
  result.value._object = v10;
  result.value._countAndFlagsBits = v9;
  result.parent.value._object = v8;
  result.parent.value._countAndFlagsBits = v7;
  return result;
}

JetCore::ShelfID __swiftcall ShelfID.init(randomIn:)(JetCore::PageID randomIn)
{
  countAndFlagsBits = randomIn.value._countAndFlagsBits;
  v3 = v1;
  v4 = sub_1DB509E00();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *countAndFlagsBits;
  v9 = countAndFlagsBits[1];
  sub_1DB509DF0();
  v10 = sub_1DB509DE0();
  v12 = v11;
  (*(v5 + 8))(v7, v4);
  v20[4] = v10;
  v20[5] = v12;
  v20[2] = 45;
  v20[3] = 0xE100000000000000;
  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_1DB301E30();
  v13 = sub_1DB50B1A0();
  v15 = v14;

  v3[2] = v13;
  v3[3] = v15;
  *v3 = v8;
  v3[1] = v9;
  result.value._object = v19;
  result.value._countAndFlagsBits = v18;
  result.parent.value._object = v17;
  result.parent.value._countAndFlagsBits = v16;
  return result;
}

uint64_t ShelfID.init<A>(id:kind:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, void *a7@<X8>)
{
  v12 = *a4;
  v13 = a4[1];
  sub_1DB50A910();
  MEMORY[0x1E1285C70](a1, a2);

  result = (*(*(a5 - 8) + 8))(a3, a5);
  a7[2] = v15;
  a7[3] = v16;
  *a7 = v12;
  a7[1] = v13;
  return result;
}

uint64_t sub_1DB38BBA0@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1DB50B3D0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DB324840(0x746E65726170, 0xE600000000000000, 1, a2);
  sub_1DB3F0EF4(a1, v11, v28);
  if (v3)
  {
  }

  v14 = *a1;
  v13 = a1[1];
  if (v13 == *(*a1 + 16))
  {
    sub_1DB324840(0x65756C6176, 0xE500000000000000, 1, a2);

    sub_1DB50B3C0();
    v15 = sub_1DB50B3E0();
    swift_allocError();
    v17 = v16;
    (*(v8 + 16))(v16, v10, v7);
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B00], v15);
    swift_willThrow();
    (*(v8 + 8))(v10, v7);
  }

  v29 = v28[1];
  v18 = v28[0];

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v13 < *(v14 + 16))
  {
    v19 = (v14 + 32 * v13);
    v21 = v19[6];
    v20 = v19[7];
    v23 = v19[4];
    v22 = v19[5];
    a1[1] = v13 + 1;

    v24 = MEMORY[0x1E1285BF0](v23, v22, v21, v20);
    v26 = v25;

    v27 = v29;
    *a3 = v18;
    a3[1] = v27;
    a3[2] = v24;
    a3[3] = v26;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t ShelfID.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1DB50B3D0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BDD0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_project_boxed_opaque_existential_1(v32, v32[3]);
  v9 = sub_1DB50BA40();
  v33 = v6;
  v26 = 45;
  v27 = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v9);
  *(&v23 - 2) = &v26;
  v12 = sub_1DB38C5AC(0x7FFFFFFFFFFFFFFFLL, 1, sub_1DB357AF0, (&v23 - 4), v10, v11, &v23);
  v30 = v12;
  v31 = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_1DB50BDB0();
  sub_1DB38BBA0(&v30, v13, &v26);
  v15 = v27;
  v16 = v29;
  v24 = v28;
  v25 = v26;
  v17 = *(v12 + 16);

  if (v31 == v17)
  {
    __swift_destroy_boxed_opaque_existential_0(v32);
    v18 = v24;
    *a2 = v25;
    a2[1] = v15;
    a2[2] = v18;
    a2[3] = v16;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  if (v31 >= v17)
  {
    __break(1u);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DB50BDB0();
    sub_1DB50B3C0();
    v19 = sub_1DB50B3E0();
    swift_allocError();
    v21 = v20;
    v22 = v33;
    (*(v33 + 16))(v20, v8, v5);
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6B00], v19);
    swift_willThrow();
    (*(v22 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0(v32);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return result;
}

uint64_t ShelfID.encode(to:)(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BE20();

  MEMORY[0x1E1285C70](45, 0xE100000000000000);
  MEMORY[0x1E1285C70](v2, v3);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_1DB50BAC0();

  return __swift_destroy_boxed_opaque_existential_0(v5);
}

uint64_t ShelfID.debugDescription.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

Swift::Bool __swiftcall ShelfID.isChild(of:)(JetCore::PageID of)
{
  if (*v1 == *of.value._countAndFlagsBits && v1[1] == *(of.value._countAndFlagsBits + 8))
  {
    return 1;
  }

  else
  {
    return sub_1DB50BA30();
  }
}

Swift::Bool __swiftcall ShelfID.isParent(of:)(JetCore::ComponentID *of)
{
  countAndFlagsBits = of->parent.value._countAndFlagsBits;
  object = of->parent.value._object;
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = of->parent.parent.value._countAndFlagsBits == *v1 && of->parent.parent.value._object == *(v1 + 8);
  if (v6 || (v7 = sub_1DB50BA30(), result = 0, (v7 & 1) != 0))
  {
    if (countAndFlagsBits == v4 && object == v5)
    {
      return 1;
    }

    else
    {

      return sub_1DB50BA30();
    }
  }

  return result;
}

uint64_t ShelfID.hash(into:)(uint64_t a1)
{
  sub_1DB50A740();

  return sub_1DB50A740();
}

uint64_t ShelfID.hashValue.getter()
{
  sub_1DB50BCF0();
  sub_1DB50A740();
  sub_1DB50A740();
  return sub_1DB50BD30();
}

uint64_t sub_1DB38C42C()
{
  sub_1DB50BCF0();
  sub_1DB50A740();
  sub_1DB50A740();
  return sub_1DB50BD30();
}

uint64_t sub_1DB38C494(uint64_t a1)
{
  sub_1DB50A740();

  return sub_1DB50A740();
}

uint64_t sub_1DB38C4E4(uint64_t a1)
{
  sub_1DB50BCF0();
  sub_1DB50A740();
  sub_1DB50A740();
  return sub_1DB50BD30();
}

uint64_t sub_1DB38C578()
{
  v1 = *(v0 + 16);

  return v1;
}

unint64_t sub_1DB38C5AC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1DB50A870();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1DB302534(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1DB302534((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1DB50A850();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1DB50A750();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1DB50A750();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1DB50A870();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1DB302534(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1DB50A870();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1DB302534(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1DB302534((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1DB50A750();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB38C96C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DB50BA30() & 1;
  }
}

uint64_t _s7JetCore7ShelfIDV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1DB50BA30(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1DB50BA30();
    }
  }

  return result;
}

unint64_t sub_1DB38CA6C()
{
  result = qword_1ECC44268;
  if (!qword_1ECC44268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44268);
  }

  return result;
}

unint64_t sub_1DB38CAD0()
{
  result = qword_1ECC44270;
  if (!qword_1ECC44270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44278, &unk_1DB514B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44270);
  }

  return result;
}

uint64_t sub_1DB38CB34()
{
  result = os_variant_has_internal_content();
  if (result)
  {
    v1 = 1;
  }

  else
  {
    v1 = 3;
  }

  byte_1ECC44280 = v1;
  return result;
}

uint64_t ClientBuildTypeFieldProvider.addTimeSensitiveMetricsFields(into:using:)(void *a1)
{
  v3 = *v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 24))(v4, v5);
  v7 = v6;
  if (!v3)
  {

LABEL_9:
    if (qword_1ECC42098 != -1)
    {
      swift_once();
    }

    v12 = 0xE500000000000000;
    v13 = 0x6775626564;
    v14 = 0xE400000000000000;
    v15 = 1684366707;
    if (byte_1ECC44280 != 2)
    {
      v15 = 0x69746375646F7270;
      v14 = 0xEA00000000006E6FLL;
    }

    if (byte_1ECC44280)
    {
      v13 = 0x6C616E7265746E69;
      v12 = 0xE800000000000000;
    }

    if (byte_1ECC44280 <= 1u)
    {
      v16 = v13;
    }

    else
    {
      v16 = v15;
    }

    if (byte_1ECC44280 > 1u)
    {
      v12 = v14;
    }

    v21[3] = MEMORY[0x1E69E6158];
    v21[0] = v16;
    v21[1] = v12;
    v17 = a1[3];
    v18 = a1[4];
    __swift_mutable_project_boxed_opaque_existential_1(a1, v17);
    (*(v18 + 16))(v21, 0x7542746E65696C63, 0xEF65707954646C69, v17, v18);
    return __swift_destroy_boxed_opaque_existential_0(v21);
  }

  if (!*(v6 + 16))
  {
  }

  v8 = sub_1DB306160(0x707954746E657665, 0xE900000000000065);
  if ((v9 & 1) == 0)
  {
  }

  sub_1DB300B14(*(v7 + 56) + 32 * v8, v21);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v10 = sub_1DB33114C(v19, v20, v3);

  if (v10)
  {
    goto LABEL_9;
  }

  return result;
}

double sub_1DB38CDC8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v24 = 0;
  *v8 = 0u;
  v8[1] = 0u;
  (*(v9 + 16))(v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44288, &qword_1DB514C28);
  if (swift_dynamicCast() || (v19 = 0, v17 = 0u, v18 = 0u, sub_1DB38D218(&v17), sub_1DB38D280(v23, &v17), *(&v18 + 1)))
  {
    v10 = &v17;
  }

  else
  {
    sub_1DB38D218(&v17);
    (*(a2 + 40))(&v17, a1, a2);
    v14[1] = swift_getAssociatedTypeWitness();
    swift_getExtendedExistentialTypeMetadata();
    if (!swift_dynamicCast())
    {
      v16 = 0;
      memset(v15, 0, sizeof(v15));
      sub_1DB38D218(v23);
      sub_1DB38D218(v15);
      *(a3 + 32) = 0;
      result = 0.0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    v10 = v15;
  }

  sub_1DB2FEA0C(v10, v20);
  v11 = v21;
  v12 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  (*(v12 + 8))(v11, v12);
  sub_1DB38D218(v23);
  __swift_destroy_boxed_opaque_existential_0(v20);
  return result;
}

void static IntentModel<>.kind.getter()
{
  sub_1DB50B320();
  sub_1DB50BEE0();

  MEMORY[0x1E1285C70](0xD00000000000001CLL, 0x80000001DB52BD00);
  sub_1DB50B580();
  __break(1u);
}

uint64_t sub_1DB38D0BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
  v6 = *(*(a1 - 8) + 16);

  return v6(boxed_opaque_existential_0, v3, a1);
}

BOOL static IntentModel._isContinuous.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (swift_conformsToProtocol2())
  {
    v3 = AssociatedTypeWitness == 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

uint64_t sub_1DB38D218(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC44290, &unk_1DB514C30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DB38D280(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC44290, &unk_1DB514C30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ClosureActionImplementation.scheduler.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_0(v1);

  return sub_1DB2FEA0C(a1, v1);
}

uint64_t ClosureActionImplementation.perform(_:asPartOf:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *a1;
  v9 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43F60, &unk_1DB514C40);
  v10 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E7CC0];
  *(v11 + 16) = 0;
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = 0;
  v13 = v4[3];
  v14 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v13);
  v15 = swift_allocObject();
  *(v15 + 16) = *(a3 + 16);
  *(v15 + 24) = a2;
  *(v15 + 32) = v8;
  *(v15 + 40) = *(a1 + 1);
  *(v15 + 56) = v9;
  *(v15 + 64) = v10;
  v16 = *(v14 + 8);

  v16(sub_1DB38D58C, v15, v13, v14);

  return v10;
}

void sub_1DB38D4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  (*(*a1 + 104))(sub_1DB38D604, v5, MEMORY[0x1E69E7CA8] + 8);
  sub_1DB3F8B6C(0);
}

uint64_t sub_1DB38D5B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double sub_1DB38D620@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, &v11, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v13)
  {
    v6 = __swift_project_boxed_opaque_existential_1(&v11, v13);
    sub_1DB300B14(v6, v10);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(&v11);
      sub_1DB3171C0(a1, v10);
      v15 = a2;

      MetricsData.init(deserializing:using:)(v10, &v15, &v11);
      sub_1DB3151CC(a1);

      v8 = v12;
      v9 = v14;
      *a3 = v11;
      *(a3 + 16) = v8;
      result = *&v13;
      *(a3 + 24) = v13;
      *(a3 + 40) = v9;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(&v11);
  }

  else
  {

    sub_1DB30623C(&v11, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

uint64_t sub_1DB38D8AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_1DB30C4B8(a1, v28, &qword_1ECC42E38, &qword_1DB50FB80);
  if (!v29)
  {
    sub_1DB3151CC(a1);

    v12 = &qword_1ECC42E38;
    v13 = &qword_1DB50FB80;
    v14 = v28;
LABEL_5:
    result = sub_1DB30623C(v14, v12, v13);
    goto LABEL_6;
  }

  v10 = __swift_project_boxed_opaque_existential_1(v28, v29);
  sub_1DB300B14(v10, v24);
  sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v28);
    sub_1DB3171C0(a1, v28);
    v15 = JSONObject.string.getter();
    if (v16)
    {
      v17 = v15;
      v18 = v16;

      sub_1DB3151CC(a1);
      result = sub_1DB3151CC(v28);
      *a5 = v17;
      a5[1] = v18;
      return result;
    }

    sub_1DB315178();
    v19 = swift_allocError();
    v20 = MEMORY[0x1E69E7CC0];
    *v21 = a3;
    v21[1] = v20;
    v21[2] = 0;
    v21[3] = 0;
    swift_willThrow();
    sub_1DB3151CC(v28);
    sub_1DB31556C(0xD000000000000027, 0x80000001DB529830, a2, v28);

    sub_1DB30C4B8(v28, v24, &qword_1ECC42E48, &qword_1DB50FB90);
    v22 = v25;
    if (v25)
    {
      v23 = v26;
      __swift_project_boxed_opaque_existential_1(v24, v25);
      (*(v23 + 8))(a4, v19, v22, v23);

      sub_1DB3151CC(a1);
      sub_1DB30623C(v28, &qword_1ECC42E48, &qword_1DB50FB90);
      result = __swift_destroy_boxed_opaque_existential_0(v24);
      goto LABEL_6;
    }

    sub_1DB3151CC(a1);
    sub_1DB30623C(v28, &qword_1ECC42E48, &qword_1DB50FB90);
    v14 = v24;
    v12 = &qword_1ECC42E48;
    v13 = &qword_1DB50FB90;
    goto LABEL_5;
  }

  __swift_destroy_boxed_opaque_existential_0(v28);
  sub_1DB3151CC(a1);

LABEL_6:
  *a5 = 0;
  a5[1] = 0;
  return result;
}

double sub_1DB38DB3C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, &v10, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v12)
  {
    v6 = __swift_project_boxed_opaque_existential_1(&v10, v12);
    sub_1DB300B14(v6, v9);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(&v10);
      sub_1DB3171C0(a1, v9);
      v14 = a2;

      PageMetrics.Instruction.init(deserializing:using:)(v9, &v14, &v10);
      sub_1DB3151CC(a1);

      v8 = v11;
      *a3 = v10;
      *(a3 + 16) = v8;
      *(a3 + 24) = v12;
      result = *&v13;
      *(a3 + 40) = v13;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(&v10);
  }

  else
  {

    sub_1DB30623C(&v10, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  *(a3 + 48) = 0;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

double sub_1DB38DDAC@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, v14, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v15)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v14, v15);
    sub_1DB300B14(v6, &v10);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v14);
      sub_1DB3171C0(a1, v14);

      sub_1DB392C8C(v14, a2, &v10);
      sub_1DB3151CC(a1);

      result = *&v10;
      v8 = v11;
      v9 = v12;
      *a3 = v10;
      *(a3 + 16) = v8;
      *(a3 + 24) = v9;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {

    sub_1DB30623C(v14, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_1DB38E000@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  sub_1DB30C4B8(a1, v10, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v11)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v10, v11);
    sub_1DB300B14(v6, v9);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v10);
      sub_1DB3171C0(a1, v10);

      sub_1DB392F64(v10, a2, v9);
      sub_1DB3151CC(a1);

      v8 = v9[1];
      *a3 = v9[0];
      a3[1] = v8;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {

    sub_1DB30623C(v10, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  result = sub_1DB3151CC(a1);
  *a3 = 0;
  a3[1] = 0;
  return result;
}

double sub_1DB38E248@<D0>(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1DB30C4B8(a1, &v13, &qword_1ECC42E38, &qword_1DB50FB80);
  if (*(&v14 + 1))
  {
    v6 = __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
    sub_1DB300B14(v6, v12);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(&v13);
      sub_1DB3171C0(a1, v12);
      v21 = a2;

      Models.Menu.init(deserializing:using:)(v12, &v21, &v13);
      sub_1DB3151CC(a1);

      v8 = v18;
      a3[4] = v17;
      a3[5] = v8;
      v9 = v20;
      a3[6] = v19;
      a3[7] = v9;
      v10 = v14;
      *a3 = v13;
      a3[1] = v10;
      result = *&v15;
      v11 = v16;
      a3[2] = v15;
      a3[3] = v11;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(&v13);
  }

  else
  {

    sub_1DB30623C(&v13, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  result = 0.0;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

__n128 sub_1DB38E4D4@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, &v13, &qword_1ECC42E38, &qword_1DB50FB80);
  if (*(&v14 + 1))
  {
    v6 = __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
    sub_1DB300B14(v6, &v12);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(&v13);
      sub_1DB3171C0(a1, &v12);
      v24 = a2;

      Models.Menu.Child.init(deserializing:using:)(&v12, &v24, &v13);
      sub_1DB3151CC(a1);

      v8 = v22;
      *(a3 + 128) = v21;
      *(a3 + 144) = v8;
      *(a3 + 160) = v23;
      v9 = v18;
      *(a3 + 64) = v17;
      *(a3 + 80) = v9;
      v10 = v20;
      *(a3 + 96) = v19;
      *(a3 + 112) = v10;
      v11 = v14;
      *a3 = v13;
      *(a3 + 16) = v11;
      result = v16;
      *(a3 + 32) = v15;
      *(a3 + 48) = result;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(&v13);
  }

  else
  {

    sub_1DB30623C(&v13, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  result.n128_u64[0] = 0;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 160) = -256;
  return result;
}

__n128 sub_1DB38E76C@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, &v13, &qword_1ECC42E38, &qword_1DB50FB80);
  if (*(&v14 + 1))
  {
    v6 = __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
    sub_1DB300B14(v6, v12);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(&v13);
      sub_1DB3171C0(a1, v12);
      v24 = a2;

      Models.Menu.Item.init(deserializing:using:)(v12, &v24, &v13);
      sub_1DB3151CC(a1);

      v8 = v22;
      *(a3 + 128) = v21;
      *(a3 + 144) = v8;
      *(a3 + 160) = v23;
      v9 = v18;
      *(a3 + 64) = v17;
      *(a3 + 80) = v9;
      v10 = v20;
      *(a3 + 96) = v19;
      *(a3 + 112) = v10;
      v11 = v14;
      *a3 = v13;
      *(a3 + 16) = v11;
      result = v16;
      *(a3 + 32) = v15;
      *(a3 + 48) = result;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(&v13);
  }

  else
  {

    sub_1DB30623C(&v13, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  *(a3 + 160) = 0;
  result.n128_u64[0] = 0;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

double sub_1DB38EA40@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1DB30C4B8(a1, v13, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v13, v14);
    sub_1DB300B14(v6, v9);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v13);
      sub_1DB3171C0(a1, v13);
      v9[0] = a2;

      Models.HTTPTemplateAction.Parameter.init(deserializing:using:)(v13, v10);
      sub_1DB3151CC(a1);

      v8 = v10[1];
      *a3 = v10[0];
      a3[1] = v8;
      a3[2] = v11[0];
      result = *(v11 + 9);
      *(a3 + 41) = *(v11 + 9);
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {

    sub_1DB30623C(v13, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  result = 0.0;
  *(a3 + 41) = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  return result;
}

uint64_t sub_1DB38ECE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(void *, void *)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = a3(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v18 - v13;
  sub_1DB30C4B8(a1, v19, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v20)
  {
    v15 = __swift_project_boxed_opaque_existential_1(v19, v20);
    sub_1DB300B14(v15, v18);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v19);
      sub_1DB3171C0(a1, v19);
      v18[0] = a2;

      a4(v19, v18);
      sub_1DB3151CC(a1);

      sub_1DB398BF8(v14, a6, a5);
      v16 = 0;
      return (*(v12 + 56))(a6, v16, 1, v11);
    }

    __swift_destroy_boxed_opaque_existential_0(v19);
  }

  else
  {

    sub_1DB30623C(v19, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  v16 = 1;
  return (*(v12 + 56))(a6, v16, 1, v11);
}

__n128 sub_1DB38EFF4@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, &v12, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v13.n128_u64[1])
  {
    v6 = __swift_project_boxed_opaque_existential_1(&v12, v13.n128_i64[1]);
    sub_1DB300B14(v6, v11);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(&v12);
      sub_1DB3171C0(a1, v11);
      v21 = a2;

      Models.ToastAction.init(deserializing:using:)(v11, &v21, &v12);
      sub_1DB3151CC(a1);

      v8 = v19;
      *(a3 + 96) = v18;
      *(a3 + 112) = v8;
      *(a3 + 128) = v20;
      v9 = v15;
      *(a3 + 32) = v14;
      *(a3 + 48) = v9;
      v10 = v17;
      *(a3 + 64) = v16;
      *(a3 + 80) = v10;
      result = v13;
      *a3 = v12;
      *(a3 + 16) = result;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(&v12);
  }

  else
  {

    sub_1DB30623C(&v12, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  result.n128_u64[0] = 0;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

double sub_1DB38F28C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, &v13, &qword_1ECC42E38, &qword_1DB50FB80);
  if (*(&v14 + 1))
  {
    v6 = __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
    sub_1DB300B14(v6, v12);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(&v13);
      sub_1DB3171C0(a1, v12);
      v23 = a2;

      Models.AlertAction.init(deserializing:using:)(v12, &v23, &v13);
      sub_1DB3151CC(a1);

      v8 = v20;
      *(a3 + 96) = v19;
      *(a3 + 112) = v8;
      *(a3 + 128) = v21;
      *(a3 + 144) = v22;
      v9 = v16;
      *(a3 + 32) = v15;
      *(a3 + 48) = v9;
      v10 = v18;
      *(a3 + 64) = v17;
      *(a3 + 80) = v10;
      result = *&v13;
      v11 = v14;
      *a3 = v13;
      *(a3 + 16) = v11;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(&v13);
  }

  else
  {

    sub_1DB30623C(&v13, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  *(a3 + 144) = 0;
  result = 0.0;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

__n128 sub_1DB38F520@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, &v10, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v11.n128_u64[1])
  {
    v6 = __swift_project_boxed_opaque_existential_1(&v10, v11.n128_i64[1]);
    sub_1DB300B14(v6, v9);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(&v10);
      sub_1DB3171C0(a1, v9);
      v15 = a2;

      Models.AlertAction.Button.init(deserializing:using:)(v9, &v15, &v10);
      sub_1DB3151CC(a1);

      v8 = v13;
      *(a3 + 32) = v12;
      *(a3 + 48) = v8;
      *(a3 + 64) = v14;
      result = v11;
      *a3 = v10;
      *(a3 + 16) = result;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(&v10);
  }

  else
  {

    sub_1DB30623C(&v10, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  *(a3 + 64) = 0;
  result.n128_u64[0] = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

double sub_1DB38F7C8@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, v12, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v13)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v12, v13);
    sub_1DB300B14(v6, v9);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v12);
      sub_1DB3171C0(a1, v12);
      v11 = a2;

      sub_1DB48CD98(v12, v9);
      sub_1DB3151CC(a1);

      v8 = v9[1];
      *a3 = v9[0];
      *(a3 + 8) = v8;
      result = *&v10;
      *(a3 + 16) = v10;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {

    sub_1DB30623C(v12, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_1DB38FA20@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, v13, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v13, v14);
    sub_1DB300B14(v6, v10);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v13);
      sub_1DB3171C0(a1, v13);
      v12 = a2;

      sub_1DB368E88(v13, v10);
      sub_1DB3151CC(a1);

      v8 = v10[1];
      v9 = v11;
      *a3 = v10[0];
      *(a3 + 8) = v8;
      *(a3 + 16) = v9;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {

    sub_1DB30623C(v13, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  result = sub_1DB3151CC(a1);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_1DB38FCA8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void (*a3)(void *__return_ptr, void *, id *)@<X2>, void *a4@<X8>)
{
  sub_1DB30C4B8(a1, v13, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v14)
  {
    v8 = __swift_project_boxed_opaque_existential_1(v13, v14);
    sub_1DB300B14(v8, v11);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v13);
      sub_1DB3171C0(a1, v13);
      v12 = a2;

      a3(v11, v13, &v12);
      sub_1DB3151CC(a1);

      v10 = v11[1];
      *a4 = v11[0];
      a4[1] = v10;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {

    sub_1DB30623C(v13, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  result = sub_1DB3151CC(a1);
  *a4 = 0;
  a4[1] = 0;
  return result;
}

void sub_1DB38FEFC(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  sub_1DB30C4B8(a1, __src, &qword_1ECC42E38, &qword_1DB50FB80);
  if (!__src[3])
  {

    sub_1DB30623C(__src, &qword_1ECC42E38, &qword_1DB50FB80);
    goto LABEL_5;
  }

  v6 = __swift_project_boxed_opaque_existential_1(__src, __src[3]);
  sub_1DB300B14(v6, v7);
  sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
  if (swift_dynamicCast())
  {

    __swift_destroy_boxed_opaque_existential_0(__src);

LABEL_5:
    sub_1DB3151CC(a1);
    sub_1DB398C60(__src);
    memcpy(a3, __src, 0x158uLL);
    return;
  }

  __swift_destroy_boxed_opaque_existential_0(__src);
  sub_1DB3171C0(a1, v7);
  v8 = a2;
  JSNetworkPerformanceMetrics.init(deserializing:using:)(v7, __src);
  sub_1DB3151CC(a1);
  memcpy(a3, __src, 0x158uLL);
  nullsub_8();
}

double sub_1DB390048@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, v10, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v11)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v10, v11);
    sub_1DB300B14(v6, v8);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v10);
      sub_1DB3171C0(a1, v10);
      v9 = a2;

      LintedMetricsEvent.init(deserializing:using:)(v10, &v9, v8);
      sub_1DB3151CC(a1);

      result = v8[0];
      *a3 = *v8;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {

    sub_1DB30623C(v10, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  *a3 = 0;
  *(a3 + 8) = 0;
  return result;
}

uint64_t sub_1DB390294@<X0>(uint64_t a1@<X0>, char *a3@<X8>)
{
  sub_1DB30C4B8(a1, v10, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v11)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v10, v11);
    sub_1DB300B14(v5, v9);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v10);
      sub_1DB3151CC(a1);

      v7 = 0;
      goto LABEL_7;
    }

    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {

    sub_1DB30623C(v10, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  result = sub_1DB3151CC(a1);
  v7 = 1;
LABEL_7:
  *a3 = v7;
  return result;
}

__n128 sub_1DB3903A4@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, v12, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v13)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v12, v13);
    sub_1DB300B14(v6, v9);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v12);
      sub_1DB3171C0(a1, v12);
      v9[0] = a2;

      ImpressionMetrics.init(deserializing:using:)(v12, v9, v10);
      sub_1DB3151CC(a1);

      v8 = v10[3];
      *(a3 + 32) = v10[2];
      *(a3 + 48) = v8;
      *(a3 + 64) = v10[4];
      result = v10[1];
      *a3 = v10[0];
      *(a3 + 16) = result;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {

    sub_1DB30623C(v12, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  result.n128_u64[0] = 0;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

double sub_1DB39060C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, &v12, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_1(&v12, v14);
    sub_1DB300B14(v6, v11);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(&v12);
      sub_1DB3171C0(a1, v11);
      v17 = a2;

      ImpressionMetrics.ID.init(deserializing:using:)(v11, &v12);
      sub_1DB3151CC(a1);

      v8 = v13;
      v9 = v14;
      v10 = v16;
      *a3 = v12;
      *(a3 + 16) = v8;
      *(a3 + 24) = v9;
      result = *&v15;
      *(a3 + 32) = v15;
      *(a3 + 48) = v10;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(&v12);
  }

  else
  {

    sub_1DB30623C(&v12, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  *(a3 + 48) = 0;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

double sub_1DB39087C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, v12, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v13)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v12, v13);
    sub_1DB300B14(v6, &v9);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v12);
      sub_1DB3171C0(a1, v12);
      v11 = a2;

      CompoundAction.init(deserializing:using:)(v12, &v11, &v9);
      sub_1DB3151CC(a1);

      v8 = v10;
      result = *&v9;
      *a3 = v9;
      *(a3 + 16) = v8;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {

    sub_1DB30623C(v12, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_1DB390AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1DB30C4B8(a1, v13, &qword_1ECC42E38, &qword_1DB50FB80);
  if (!v14)
  {
    sub_1DB3151CC(a1);

    result = sub_1DB30623C(v13, &qword_1ECC42E38, &qword_1DB50FB80);
    goto LABEL_5;
  }

  v6 = __swift_project_boxed_opaque_existential_1(v13, v14);
  sub_1DB300B14(v6, v11);
  sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
  if (swift_dynamicCast())
  {

    __swift_destroy_boxed_opaque_existential_0(v13);
    sub_1DB3151CC(a1);

LABEL_5:
    *a3 = 0;
    a3[1] = 0;
    return result;
  }

  __swift_destroy_boxed_opaque_existential_0(v13);
  sub_1DB3171C0(a1, v13);
  JSONObject.subscript.getter(1635017060, 0xE400000000000000, v11);

  v8 = sub_1DB320870(v11, a2);
  JSONObject.subscript.getter(0x6D6F74737563, 0xE600000000000000, v11);
  v10 = a2;
  ScalarDictionary.init(tryDeserializing:using:)(v11, &v10, &v12);
  sub_1DB3151CC(a1);
  result = sub_1DB3151CC(v13);
  v9 = v12;
  *a3 = v8;
  a3[1] = v9;
  return result;
}

double sub_1DB390C60@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, &v11, &qword_1ECC42E38, &qword_1DB50FB80);
  if (*(&v12 + 1))
  {
    v6 = __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
    sub_1DB300B14(v6, v10);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(&v11);
      sub_1DB3171C0(a1, v10);
      v17 = a2;

      MediaArtwork.init(deserializing:using:)(v10, &v17, &v11);
      sub_1DB3151CC(a1);

      v8 = v14;
      *(a3 + 32) = v13;
      *(a3 + 48) = v8;
      *(a3 + 64) = v15;
      *(a3 + 80) = v16;
      result = *&v11;
      v9 = v12;
      *a3 = v11;
      *(a3 + 16) = v9;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(&v11);
  }

  else
  {

    sub_1DB30623C(&v11, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  *(a3 + 80) = 0;
  result = 0.0;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

double sub_1DB390ED4@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, v12, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v13)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v12, v13);
    sub_1DB300B14(v6, v9);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v12);
      sub_1DB3171C0(a1, v12);
      v11 = a2;

      PageMetrics.init(deserializing:using:)(v12, &v11, v9);
      sub_1DB3151CC(a1);

      v8 = v9[1];
      *a3 = v9[0];
      *(a3 + 8) = v8;
      result = *&v10;
      *(a3 + 16) = v10;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {

    sub_1DB30623C(v12, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

double sub_1DB39112C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, &v10, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v12)
  {
    v6 = __swift_project_boxed_opaque_existential_1(&v10, v12);
    sub_1DB300B14(v6, v9);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(&v10);
      sub_1DB3171C0(a1, v9);
      v14 = a2;

      PageMetrics.Instruction.init(deserializing:using:)(v9, &v14, &v10);
      sub_1DB3151CC(a1);

      v8 = v11;
      *a3 = v10;
      *(a3 + 16) = v8;
      *(a3 + 24) = v12;
      result = *&v13;
      *(a3 + 40) = v13;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(&v10);
  }

  else
  {

    sub_1DB30623C(&v10, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  *(a3 + 48) = 0;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

double sub_1DB39139C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, &v11, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v13)
  {
    v6 = __swift_project_boxed_opaque_existential_1(&v11, v13);
    sub_1DB300B14(v6, v10);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(&v11);
      sub_1DB3171C0(a1, v10);
      v15 = a2;

      MetricsData.init(deserializing:using:)(v10, &v15, &v11);
      sub_1DB3151CC(a1);

      v8 = v12;
      v9 = v14;
      *a3 = v11;
      *(a3 + 16) = v8;
      result = *&v13;
      *(a3 + 24) = v13;
      *(a3 + 40) = v9;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(&v11);
  }

  else
  {

    sub_1DB30623C(&v11, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

uint64_t sub_1DB391608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1DB30C4B8(a1, v14, &qword_1ECC42E38, &qword_1DB50FB80);
  if (!v15)
  {

    sub_1DB30623C(v14, &qword_1ECC42E38, &qword_1DB50FB80);
    goto LABEL_5;
  }

  v6 = __swift_project_boxed_opaque_existential_1(v14, v15);
  sub_1DB300B14(v6, v13);
  sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
  if (swift_dynamicCast())
  {

    __swift_destroy_boxed_opaque_existential_0(v14);

LABEL_5:
    result = sub_1DB3151CC(a1);
    *a3 = 0;
    a3[1] = 0;
    return result;
  }

  __swift_destroy_boxed_opaque_existential_0(v14);
  sub_1DB3171C0(a1, v14);

  JSONObject.subscript.getter(0x654D6E6F69746361, 0xED00007363697274, v13);
  JSONObject.subscript.getter(1635017060, 0xE400000000000000, v12);

  v8 = sub_1DB320870(v12, a2);
  JSONObject.subscript.getter(0x6D6F74737563, 0xE600000000000000, v12);
  v10 = a2;
  ScalarDictionary.init(tryDeserializing:using:)(v12, &v10, &v11);
  sub_1DB3151CC(v14);
  sub_1DB3151CC(v13);
  v9 = v11;
  sub_1DB3151CC(a1);

  *a3 = v8;
  a3[1] = v9;
  return result;
}

double sub_1DB3917D0@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, &v12, &qword_1ECC42E38, &qword_1DB50FB80);
  if (*(&v13 + 1))
  {
    v6 = __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
    sub_1DB300B14(v6, v11);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(&v12);
      sub_1DB3171C0(a1, v11);

      sub_1DB393234(v11, a2, &v12);
      sub_1DB3151CC(a1);

      result = *&v12;
      v8 = v13;
      v9 = v14;
      v10 = v15;
      *a3 = v12;
      *(a3 + 16) = v8;
      *(a3 + 32) = v9;
      *(a3 + 40) = v10;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(&v12);
  }

  else
  {

    sub_1DB30623C(&v12, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

double sub_1DB391A2C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, &v12, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_1(&v12, v14);
    sub_1DB300B14(v6, v11);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(&v12);
      sub_1DB3171C0(a1, v11);
      v17 = a2;

      ImpressionMetrics.ID.init(deserializing:using:)(v11, &v12);
      sub_1DB3151CC(a1);

      v8 = v13;
      v9 = v14;
      v10 = v16;
      *a3 = v12;
      *(a3 + 16) = v8;
      *(a3 + 24) = v9;
      result = *&v15;
      *(a3 + 32) = v15;
      *(a3 + 48) = v10;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(&v12);
  }

  else
  {

    sub_1DB30623C(&v12, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  *(a3 + 48) = 0;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

uint64_t sub_1DB391C9C(uint64_t a1, uint64_t a2)
{
  sub_1DB30C4B8(a1, v23, &qword_1ECC42E38, &qword_1DB50FB80);
  if (!v24)
  {

    sub_1DB30623C(v23, &qword_1ECC42E38, &qword_1DB50FB80);
    goto LABEL_5;
  }

  v4 = __swift_project_boxed_opaque_existential_1(v23, v24);
  sub_1DB300B14(v4, v19);
  sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
  if (swift_dynamicCast())
  {

    __swift_destroy_boxed_opaque_existential_0(v23);

LABEL_5:
    sub_1DB3151CC(a1);
    return 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v23);
  sub_1DB3171C0(a1, v23);
  v6 = JSONObject.string.getter();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v10 = sub_1DB3EF7E4(v6, v7);
    if ((v11 & 1) == 0)
    {
      v18 = v10;
      sub_1DB3151CC(v23);

      sub_1DB3151CC(a1);

      return v18;
    }

    type metadata accessor for CachePolicy(0);
    v12 = 0;
    v14 = v13 | 0x8000000000000000;
  }

  else
  {
    v8 = 0;
    v14 = 0x40000001F56F25D8uLL;
    v12 = MEMORY[0x1E69E7CC0];
    v9 = 0xE000000000000000;
  }

  sub_1DB315178();
  v15 = swift_allocError();
  *v16 = v8;
  v16[1] = v9;
  v16[2] = v14;
  v16[3] = v12;
  swift_willThrow();
  sub_1DB3151CC(v23);
  sub_1DB31556C(0xD000000000000027, 0x80000001DB529830, a2, v23);

  sub_1DB30C4B8(v23, v19, &qword_1ECC42E48, &qword_1DB50FB90);
  if (v20)
  {
    v17 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    type metadata accessor for CachePolicy(0);
    (*(v17 + 8))();

    sub_1DB3151CC(a1);
    sub_1DB30623C(v23, &qword_1ECC42E48, &qword_1DB50FB90);
    __swift_destroy_boxed_opaque_existential_0(v19);
  }

  else
  {

    sub_1DB3151CC(a1);
    sub_1DB30623C(v23, &qword_1ECC42E48, &qword_1DB50FB90);
    sub_1DB30623C(v19, &qword_1ECC42E48, &qword_1DB50FB90);
  }

  return 0;
}

uint64_t sub_1DB391F64@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, v13, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v13, v14);
    sub_1DB300B14(v6, v10);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v13);
      sub_1DB3171C0(a1, v13);
      v12 = a2;

      sub_1DB368E88(v13, v10);
      sub_1DB3151CC(a1);

      v8 = v10[1];
      v9 = v11;
      *a3 = v10[0];
      *(a3 + 8) = v8;
      *(a3 + 16) = v9;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {

    sub_1DB30623C(v13, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  result = sub_1DB3151CC(a1);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_1DB3921BC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for NetRequest(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB30C4B8(a1, v14, &qword_1ECC42E38, &qword_1DB50FB80);
  if (!v15)
  {
    sub_1DB3151CC(a1);

    sub_1DB30623C(v14, &qword_1ECC42E38, &qword_1DB50FB80);
    goto LABEL_6;
  }

  v10 = __swift_project_boxed_opaque_existential_1(v14, v15);
  sub_1DB300B14(v10, v13);
  sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
  if (swift_dynamicCast())
  {

    __swift_destroy_boxed_opaque_existential_0(v14);
    sub_1DB3151CC(a1);

LABEL_6:
    v12 = 1;
    return (*(v7 + 56))(a3, v12, 1, v6);
  }

  __swift_destroy_boxed_opaque_existential_0(v14);
  sub_1DB3171C0(a1, v14);
  v13[0] = a2;

  NetRequest.init(deserializing:using:)(v14, v13, v9);
  sub_1DB3151CC(a1);

  sub_1DB398BF8(v9, a3, type metadata accessor for NetRequest);
  v12 = 0;
  return (*(v7 + 56))(a3, v12, 1, v6);
}

uint64_t sub_1DB3924C8(uint64_t a1, uint64_t a2)
{
  sub_1DB30C4B8(a1, v24, &qword_1ECC42E38, &qword_1DB50FB80);
  if (!v25)
  {

    sub_1DB30623C(v24, &qword_1ECC42E38, &qword_1DB50FB80);
    goto LABEL_5;
  }

  v5 = __swift_project_boxed_opaque_existential_1(v24, v25);
  sub_1DB300B14(v5, v20);
  sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
  if (swift_dynamicCast())
  {

    __swift_destroy_boxed_opaque_existential_0(v24);

LABEL_5:
    sub_1DB3151CC(a1);
    return 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v24);
  sub_1DB3171C0(a1, v24);
  v7 = JSONObject.string.getter();
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    v11 = sub_1DB3EF7E4(v7, v8);
    if ((v12 & 1) == 0)
    {
      v19 = v11;
      sub_1DB3151CC(v24);

      sub_1DB3151CC(a1);

      return v19;
    }

    v13 = 0;
    v14 = v2 | 0x8000000000000000;
  }

  else
  {
    v9 = 0;
    v14 = 0x40000001F56F25D8uLL;
    v13 = MEMORY[0x1E69E7CC0];
    v10 = 0xE000000000000000;
  }

  sub_1DB315178();
  v15 = swift_allocError();
  *v16 = v9;
  v16[1] = v10;
  v16[2] = v14;
  v16[3] = v13;
  swift_willThrow();
  sub_1DB3151CC(v24);
  sub_1DB31556C(0xD000000000000027, 0x80000001DB529830, a2, v24);

  sub_1DB30C4B8(v24, v20, &qword_1ECC42E48, &qword_1DB50FB90);
  v17 = v21;
  if (v21)
  {
    v18 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (*(v18 + 8))(v2, v15, v17, v18);

    sub_1DB3151CC(a1);
    sub_1DB30623C(v24, &qword_1ECC42E48, &qword_1DB50FB90);
    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  else
  {

    sub_1DB3151CC(a1);
    sub_1DB30623C(v24, &qword_1ECC42E48, &qword_1DB50FB90);
    sub_1DB30623C(v20, &qword_1ECC42E48, &qword_1DB50FB90);
  }

  return 0;
}

unint64_t sub_1DB392794(uint64_t a1, void *a2)
{
  sub_1DB30C4B8(a1, v8, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v9)
  {
    v4 = __swift_project_boxed_opaque_existential_1(v8, v9);
    sub_1DB300B14(v4, v7);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v8);
      sub_1DB3171C0(a1, v8);
      v7[0] = a2;

      v6 = sub_1DB39350C(v8, v7);
      sub_1DB3151CC(a1);

      return v6;
    }

    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {

    sub_1DB30623C(v8, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  return 0;
}

__n128 sub_1DB3929E4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, &v13, &qword_1ECC42E38, &qword_1DB50FB80);
  if (*(&v14 + 1))
  {
    v6 = __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
    sub_1DB300B14(v6, v12);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(&v13);
      sub_1DB3171C0(a1, v12);

      JSONObject.subscript.getter(0x6575676573, 0xE500000000000000, v10);
      v9 = a2;
      static AnyActionTypes.makeInstance(byDeserializing:using:)(v10, &v9, v11);
      sub_1DB3151CC(v12);
      sub_1DB3151CC(v10);

      sub_1DB30C7A8(v11, &v13);
      sub_1DB3151CC(a1);

      result = v13;
      v8 = v14;
      *a3 = v13;
      *(a3 + 16) = v8;
      *(a3 + 32) = v15;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(&v13);
  }

  else
  {

    sub_1DB30623C(&v13, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  *(a3 + 32) = 0;
  result.n128_u64[0] = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

void sub_1DB392C8C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1DB50B3E0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v22 - v12;
  v23[0] = a2;
  v14 = _sSD7JetCores17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(v23);
  sub_1DB3171C0(a1, v23);
  v23[5] = v14;
  v23[6] = MEMORY[0x1E69E7CC0];
  v22[3] = &type metadata for _JSONObjectDecoder;
  v22[4] = sub_1DB34A154();
  v22[0] = swift_allocObject();
  sub_1DB34A1A8(v23, v22[0] + 16);
  ShelfID.init(from:)(v22, &v24);
  if (v3)
  {
    sub_1DB34A204(v23);
    v23[0] = v3;
    v15 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    if (swift_dynamicCast())
    {

      (*(v8 + 32))(v10, v13, v7);
      sub_1DB315178();
      swift_allocError();
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC470F0, &unk_1DB50F4B0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1DB50EE90;
      *(v18 + 32) = swift_allocError();
      (*(v8 + 16))(v19, v10, v7);
      *v17 = &type metadata for ShelfID;
      v17[1] = v18;
      v17[2] &= 0xFFFFFFFFFFFFFF8uLL;
      swift_willThrow();
      sub_1DB3151CC(a1);
      (*(v8 + 8))(v10, v7);
    }

    else
    {
      sub_1DB3151CC(a1);
    }
  }

  else
  {
    sub_1DB3151CC(a1);
    sub_1DB34A204(v23);
    v20 = v25;
    v21 = v26;
    *a3 = v24;
    *(a3 + 16) = v20;
    *(a3 + 24) = v21;
  }
}

void sub_1DB392F64(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1DB50B3E0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v21 - v12;
  v22[0] = a2;
  v14 = _sSD7JetCores17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(v22);
  sub_1DB3171C0(a1, v22);
  v22[5] = v14;
  v22[6] = MEMORY[0x1E69E7CC0];
  v21[3] = &type metadata for _JSONObjectDecoder;
  v21[4] = sub_1DB34A154();
  v21[0] = swift_allocObject();
  sub_1DB34A1A8(v22, v21[0] + 16);
  PageID.init(from:)(v21, v23);
  if (v3)
  {
    sub_1DB34A204(v22);
    v22[0] = v3;
    v15 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    if (swift_dynamicCast())
    {

      (*(v8 + 32))(v10, v13, v7);
      sub_1DB315178();
      swift_allocError();
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC470F0, &unk_1DB50F4B0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1DB50EE90;
      *(v18 + 32) = swift_allocError();
      (*(v8 + 16))(v19, v10, v7);
      *v17 = &type metadata for PageID;
      v17[1] = v18;
      v17[2] &= 0xFFFFFFFFFFFFFF8uLL;
      swift_willThrow();
      sub_1DB3151CC(a1);
      (*(v8 + 8))(v10, v7);
    }

    else
    {
      sub_1DB3151CC(a1);
    }
  }

  else
  {
    sub_1DB3151CC(a1);
    sub_1DB34A204(v22);
    v20 = v23[1];
    *a3 = v23[0];
    a3[1] = v20;
  }
}

void sub_1DB393234(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1DB50B3E0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - v12;
  v24[0] = a2;
  v14 = _sSD7JetCores17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(v24);
  sub_1DB3171C0(a1, v24);
  v24[5] = v14;
  v24[6] = MEMORY[0x1E69E7CC0];
  v23[3] = &type metadata for _JSONObjectDecoder;
  v23[4] = sub_1DB34A154();
  v23[0] = swift_allocObject();
  sub_1DB34A1A8(v24, v23[0] + 16);
  ComponentID.init(from:)(v23, v25);
  if (v3)
  {
    sub_1DB34A204(v24);
    v24[0] = v3;
    v15 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    if (swift_dynamicCast())
    {

      (*(v8 + 32))(v10, v13, v7);
      sub_1DB315178();
      swift_allocError();
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC470F0, &unk_1DB50F4B0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1DB50EE90;
      *(v18 + 32) = swift_allocError();
      (*(v8 + 16))(v19, v10, v7);
      *v17 = &type metadata for ComponentID;
      v17[1] = v18;
      v17[2] &= 0xFFFFFFFFFFFFFF8uLL;
      swift_willThrow();
      sub_1DB3151CC(a1);
      (*(v8 + 8))(v10, v7);
    }

    else
    {
      sub_1DB3151CC(a1);
    }
  }

  else
  {
    sub_1DB3151CC(a1);
    sub_1DB34A204(v24);
    v20 = v25[1];
    v21 = v26;
    v22 = v27;
    *a3 = v25[0];
    *(a3 + 16) = v20;
    *(a3 + 32) = v21;
    *(a3 + 40) = v22;
  }
}

unint64_t sub_1DB39350C(uint64_t a1, id *a2)
{
  v5 = sub_1DB50B3E0();
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v24[0] = *a2;

  v11 = _sSD7JetCores17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(v24);
  sub_1DB3171C0(a1, v24);
  v24[5] = v11;
  v24[6] = MEMORY[0x1E69E7CC0];
  v23[3] = &type metadata for _JSONObjectDecoder;
  v23[4] = sub_1DB34A154();
  v23[0] = swift_allocObject();
  sub_1DB34A1A8(v24, v23[0] + 16);

  v12 = sub_1DB413864(v23);
  v24[8] = v13;
  if (v2)
  {
    sub_1DB34A204(v24);

    v24[0] = v2;
    v14 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    if (swift_dynamicCast())
    {

      v15 = v22;
      (*(v22 + 32))(v7, v10, v5);
      sub_1DB315178();
      swift_allocError();
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC470F0, &unk_1DB50F4B0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1DB50EE90;
      *(v18 + 32) = swift_allocError();
      (*(v15 + 16))(v19, v7, v5);
      *v17 = &type metadata for Models.AdamID;
      v17[1] = v18;
      v17[2] &= 0xFFFFFFFFFFFFFF8uLL;
      swift_willThrow();

      sub_1DB3151CC(a1);
      (*(v15 + 8))(v7, v5);
    }

    else
    {

      sub_1DB3151CC(a1);
    }
  }

  else
  {
    sub_1DB34A204(v24);

    sub_1DB3151CC(a1);
  }

  return v12;
}

uint64_t sub_1DB393828@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1DB50B120();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19[-v11 - 8];
  sub_1DB349C18();
  if (*(a1 + 16) && (v13 = sub_1DB30EDA8(v19), (v14 & 1) != 0))
  {
    sub_1DB300B14(*(a1 + 56) + 32 * v13, v20);
    sub_1DB314BE8(v19);
    sub_1DB300B14(v20, v19);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v20);
      v15 = *(AssociatedTypeWitness - 8);
      (*(v15 + 56))(v12, 0, 1, AssociatedTypeWitness);
      return (*(v15 + 32))(a4, v12, AssociatedTypeWitness);
    }

    else
    {
      (*(*(AssociatedTypeWitness - 8) + 56))(v12, 1, 1, AssociatedTypeWitness);
      result = (*(v10 + 8))(v12, v9);
      __break(1u);
    }
  }

  else
  {
    v17 = sub_1DB314BE8(v19);
    MEMORY[0x1EEE9AC00](v17);
    *(&v18 - 2) = a2;
    *(&v18 - 1) = a3;
    if (qword_1ECC420A0 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    if (v19[0] == 1)
    {
      sub_1DB3D66F0("JetCore/NetRequest.swift", 24, 2, 160, sub_1DB398CA0);
    }

    return (*(a3 + 16))(a2, a3);
  }

  return result;
}

uint64_t NetRequest.ScopeContainer.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DB397E58(a1, a2, a3, a4, a5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 8);

  return v7(a1, AssociatedTypeWitness);
}

void (*NetRequest.ScopeContainer.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
{
  v11 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x48uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[3] = a5;
  v12[4] = v5;
  v12[1] = a3;
  v12[2] = a4;
  *v12 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13[5] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v13[6] = v15;
  v16 = *(v15 + 64);
  if (v11)
  {
    v13[7] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v13[7] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v13[8] = v17;
  sub_1DB393828(*v5, a4, a5, v17);
  return sub_1DB393D1C;
}

void sub_1DB393D1C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[7];
  v4 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v7 = (*a1)[3];
  v9 = (*a1)[1];
  v8 = (*a1)[2];
  v10 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[7], v4, v5);
    sub_1DB397E58(v3, v10, v9, v8, v7);
    v11 = *(v6 + 8);
    v11(v3, v5);
    v11(v4, v5);
  }

  else
  {
    sub_1DB397E58((*a1)[8], v10, v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t NetRequest.ScopeContainer.subscript.setter(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1DB397F20(a1, a3, *(*a2 + *MEMORY[0x1E69E77B0] + 8), a4);

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 8);

  return v6(a1, AssociatedTypeWitness);
}

void (*NetRequest.ScopeContainer.subscript.modify(void *a1, void *a2, uint64_t a3, uint64_t a4))(void **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x48uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  v12 = MEMORY[0x1E69E77B0];
  v13 = *MEMORY[0x1E69E77B0];
  v10[4] = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[5] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v11[6] = v15;
  v16 = *(v15 + 64);
  if (v9)
  {
    v11[7] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
    v13 = *v12;
  }

  else
  {
    v11[7] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v11[8] = v17;
  sub_1DB393828(*v4, *(*a2 + v13 + 8), a4, v17);
  return sub_1DB394150;
}

void sub_1DB394150(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 7);
  v4 = *(*a1 + 8);
  v5 = *(*a1 + 5);
  v6 = *(*a1 + 6);
  v7 = *(*a1 + 4);
  v9 = *(*a1 + 1);
  v8 = *(*a1 + 2);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 7), v4, v5);
    sub_1DB397E58(v3, v7, v9, v7, v8);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {

    sub_1DB397E58(v4, v7, v9, v7, v8);

    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t NetRequest.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NetRequest(0);
  v5 = (a2 + v4[5]);
  *v5 = 5522759;
  v5[1] = 0xE300000000000000;
  *(a2 + v4[6]) = 0;
  v6 = v4[7];
  v7 = MEMORY[0x1E69E7CC0];
  *(a2 + v6) = sub_1DB3136F0(MEMORY[0x1E69E7CC0]);
  *(a2 + v4[8]) = 0x403E000000000000;
  v8 = a2 + v4[9];
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  v9 = (a2 + v4[10]);
  *v9 = 0;
  v9[1] = 0;
  v10 = v4[11];
  *(a2 + v10) = sub_1DB313804(v7);
  v11 = sub_1DB509CA0();
  v12 = *(*(v11 - 8) + 32);

  return v12(a2, a1, v11);
}

uint64_t NetRequest.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, void **a2@<X1>, char *a3@<X8>)
{
  v100 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v87 - v6;
  v8 = sub_1DB509CA0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = *a2;
  v12 = type metadata accessor for NetRequest(0);
  v13 = &a3[*(v12 + 20)];
  *v13 = 5522759;
  *(v13 + 1) = 0xE300000000000000;
  v94 = *(v12 + 24);
  *&a3[v94] = 0;
  v14 = *(v12 + 28);
  v15 = MEMORY[0x1E69E7CC0];
  v96 = sub_1DB3136F0(MEMORY[0x1E69E7CC0]);
  v92 = v14;
  *&a3[v14] = v96;
  v93 = *(v12 + 32);
  *&a3[v93] = 0x403E000000000000;
  v16 = &a3[*(v12 + 36)];
  *v16 = 0;
  *(v16 + 1) = 0;
  v97 = v16;
  v16[16] = 0;
  v17 = &a3[*(v12 + 40)];
  *v17 = 0;
  *(v17 + 1) = 0;
  v95 = v17;
  v18 = *(v12 + 44);
  v19 = sub_1DB313804(v15);
  *&v101 = v18;
  *&a3[v18] = v19;
  JSONObject.subscript.getter(7107189, 0xE300000000000000, &v109);
  JSONObject.url.getter(v7);
  sub_1DB3151CC(&v109);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    sub_1DB30623C(v7, &unk_1ECC42B20, &unk_1DB50F6A0);
    sub_1DB315178();
    swift_allocError();
    *v20 = xmmword_1DB511610;
    *(v20 + 16) = v12 | 0x4000000000000000;
    *(v20 + 24) = MEMORY[0x1E69E7CC0];
    swift_willThrow();
    sub_1DB3151CC(v100);
LABEL_3:
  }

  (*(v9 + 32))(v11, v7, v8);
  v90 = v9;
  v22 = *(v9 + 16);
  v89 = v11;
  v22(a3, v11, v8);
  JSONObject.subscript.getter(0x646F6874656DLL, 0xE600000000000000, &v109);
  v23 = JSONObject.string.getter();
  v25 = v24;
  sub_1DB3151CC(&v109);
  if (v25)
  {
    *v13 = v23;
    *(v13 + 1) = v25;
    v88 = v25;
  }

  else
  {
    v88 = 0xE300000000000000;
  }

  v26 = v99;
  v27 = v98;
  JSONObject.subscript.getter(0x6568636163, 0xE500000000000000, &v109);

  v28 = sub_1DB391C9C(&v109, v27);
  if ((v29 & 1) == 0)
  {
    *&a3[v94] = v28;
  }

  JSONObject.subscript.getter(0x73726564616568, 0xE700000000000000, v106);
  sub_1DB30C4B8(v106, &v104, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v105)
  {
    __swift_project_boxed_opaque_existential_1(&v104, v105);
    sub_1DB408B14(&v109);
    sub_1DB3151CC(v106);
    __swift_destroy_boxed_opaque_existential_0(&v104);
    if (*(&v110 + 1))
    {
      __swift_project_boxed_opaque_existential_1(&v109, *(&v110 + 1));
      *&v104 = 0;
      sub_1DB50A4A0();
      v30 = v104;
      sub_1DB317740(&v109);
      if (v30)
      {

        *&a3[v92] = v30;
        v96 = v30;
      }

      goto LABEL_15;
    }
  }

  else
  {
    sub_1DB3151CC(v106);
    sub_1DB30623C(&v104, &qword_1ECC42E38, &qword_1DB50FB80);
    v109 = 0u;
    v110 = 0u;
    v111 = 0;
  }

  sub_1DB30623C(&v109, &qword_1ECC42EA0, &qword_1DB50FB88);
LABEL_15:
  JSONObject.subscript.getter(0x74756F656D6974, 0xE700000000000000, &v109);
  sub_1DB30C4B8(&v109, v106, &qword_1ECC42E38, &qword_1DB50FB80);
  v91 = v8;
  if (v108)
  {
    v31 = __swift_project_boxed_opaque_existential_1(v106, v108);
    sub_1DB300B14(v31, &v104);
    sub_1DB336FD4(0, &qword_1ECC433A0, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v32 = *&v103[0];
      [*&v103[0] doubleValue];
      v34 = v33;

      sub_1DB3151CC(&v109);
      __swift_destroy_boxed_opaque_existential_0(v106);
      *&a3[v93] = v34;
    }

    else
    {
      sub_1DB3151CC(&v109);
      __swift_destroy_boxed_opaque_existential_0(v106);
    }
  }

  else
  {
    sub_1DB3151CC(&v109);
    sub_1DB30623C(v106, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  v35 = 0xD00000000000001ALL;
  JSONObject.subscript.getter(0xD00000000000001ALL, 0x80000001DB52BD20, &v109);

  sub_1DB391F64(&v109, v27, v106);
  v36 = v106[0];
  v37 = v106[1];
  v38 = v107;
  v39 = v97;

  *v39 = v36;
  *(v39 + 1) = v37;
  v39[16] = v38;
  JSONObject.subscript.getter(2036625250, 0xE400000000000000, &v109);
  v40 = JSONObject.string.getter();
  v42 = v41;
  sub_1DB3151CC(&v109);
  if (v42)
  {
    v43 = v95;
    *v95 = v40;
    v43[1] = v42;
  }

  v44 = v98;
  v45 = sub_1DB315A38(0xD00000000000001FLL, 0x80000001DB52A450, v98);
  if (!v45)
  {

    if (qword_1ECC42218 != -1)
    {
      goto LABEL_52;
    }

    goto LABEL_41;
  }

  v46 = v45;
  v99 = *(v45 + 16);
  if (!v99)
  {
LABEL_39:
    v99 = v26;

    goto LABEL_48;
  }

  v95 = v42;
  v35 = 0;
  v47 = (v45 + 40);
  while (v35 < *(v46 + 16))
  {
    v49 = *(v47 - 1);
    v50 = *v47;
    *&v109 = v44;
    sub_1DB349864(v100, &v109, v49, v50, v106);
    if (v26)
    {

      sub_1DB3151CC(v100);
      v83 = *(v90 + 8);
      v84 = v91;
      v83(v89, v91);

      v83(a3, v84);

      goto LABEL_3;
    }

    sub_1DB349C18();
    v51 = v108;
    v52 = __swift_project_boxed_opaque_existential_1(v106, v108);
    v105 = v51;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v104);
    (*(*(v51 - 8) + 16))(boxed_opaque_existential_0, v52, v51);
    sub_1DB30C200(&v104, v103);
    v54 = v101;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = *&a3[v54];
    v102 = v56;
    v57 = sub_1DB30EDA8(&v109);
    v59 = v56[2];
    v60 = (v58 & 1) == 0;
    v61 = __OFADD__(v59, v60);
    v62 = v59 + v60;
    if (v61)
    {
      goto LABEL_50;
    }

    v63 = v58;
    if (v56[3] < v62)
    {
      sub_1DB31A3F4(v62, isUniquelyReferenced_nonNull_native);
      v57 = sub_1DB30EDA8(&v109);
      if ((v63 & 1) != (v64 & 1))
      {
        result = sub_1DB50BC20();
        __break(1u);
        return result;
      }

LABEL_34:
      v65 = v102;
      if (v63)
      {
        goto LABEL_25;
      }

      goto LABEL_35;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_34;
    }

    v69 = v57;
    sub_1DB311B6C();
    v57 = v69;
    v65 = v102;
    if (v63)
    {
LABEL_25:
      v48 = (v65[7] + 32 * v57);
      __swift_destroy_boxed_opaque_existential_0(v48);
      sub_1DB30C200(v103, v48);
      sub_1DB314BE8(&v109);
      goto LABEL_26;
    }

LABEL_35:
    v65[(v57 >> 6) + 8] |= 1 << v57;
    v66 = v57;
    sub_1DB314C3C(&v109, v65[6] + 40 * v57);
    sub_1DB30C200(v103, (v65[7] + 32 * v66));
    sub_1DB314BE8(&v109);
    v67 = v65[2];
    v61 = __OFADD__(v67, 1);
    v68 = v67 + 1;
    if (v61)
    {
      goto LABEL_51;
    }

    v65[2] = v68;
LABEL_26:
    ++v35;
    *&a3[v101] = v65;
    __swift_destroy_boxed_opaque_existential_0(v106);
    v47 += 2;
    if (v99 == v35)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  swift_once();
LABEL_41:
  v70 = qword_1ECC466E8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_1DB50F8D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v72 = swift_allocObject();
  v101 = xmmword_1DB50EE90;
  *(v72 + 16) = xmmword_1DB50EE90;
  v73 = MEMORY[0x1E69E6158];
  *(&v110 + 1) = MEMORY[0x1E69E6158];
  *&v109 = v35 + 24;
  *(&v109 + 1) = 0x80000001DB52BD40;
  *(v72 + 48) = 0u;
  *(v72 + 32) = 0u;
  sub_1DB301D4C(&v109, v72 + 32);
  *(v72 + 64) = 0;
  *(v71 + 32) = v72;
  v74 = swift_allocObject();
  *(v74 + 16) = v101;
  *(&v110 + 1) = v73;
  *&v109 = v35 + 20;
  *(&v109 + 1) = 0x80000001DB52BD80;
  *(v74 + 48) = 0u;
  *(v74 + 32) = 0u;
  sub_1DB301D4C(&v109, v74 + 32);
  *(v74 + 64) = 0;
  *(v71 + 40) = v74;
  v75 = sub_1DB50AF40();
  if (os_log_type_enabled(v70, v75))
  {
    if (qword_1EE30EDD8 != -1)
    {
      swift_once();
    }

    v76 = off_1EE30EDE0;
    os_unfair_lock_lock(off_1EE30EDE0 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v76[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v76 + 5);
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    v78 = swift_allocObject();
    *(v78 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
    *&v109 = v71;
    *(&v109 + 1) = sub_1DB31485C;
    *&v110 = v78;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
    sub_1DB314864();
    v79 = sub_1DB50A5E0();
    v81 = v80;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
    v82 = swift_allocObject();
    *(v82 + 16) = v101;
    *(v82 + 56) = v73;
    *(v82 + 64) = sub_1DB31494C();
    *(v82 + 32) = v79;
    *(v82 + 40) = v81;
    sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v70, v75, v82);
  }

LABEL_48:

  v85 = v90;
  v86 = v89;
  sub_1DB3151CC(v100);
  return (*(v85 + 8))(v86, v91);
}

uint64_t NetRequest.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DB509CA0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t NetRequest.url.setter(uint64_t a1)
{
  v3 = sub_1DB509CA0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t NetRequest.method.getter()
{
  v1 = *(v0 + *(type metadata accessor for NetRequest(0) + 20));

  return v1;
}

uint64_t NetRequest.method.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NetRequest(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t NetRequest.cache.setter(uint64_t a1)
{
  result = type metadata accessor for NetRequest(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t NetRequest.headers.getter()
{
  type metadata accessor for NetRequest(0);
}

uint64_t NetRequest.headers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NetRequest(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t NetRequest.timeout.setter(double a1)
{
  result = type metadata accessor for NetRequest(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t NetRequest.body.getter()
{
  v1 = *(v0 + *(type metadata accessor for NetRequest(0) + 40));

  return v1;
}

uint64_t NetRequest.body.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NetRequest(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1DB3954C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44488, qword_1DB514F28);
  swift_allocObject();
  result = sub_1DB50BEA0();
  qword_1ECC44318 = result;
  return result;
}

uint64_t sub_1DB39551C(uint64_t a1)
{
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
  v1 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v1);

  MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

  MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

  return 0;
}

uint64_t NetRequest.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = *(v3 + *(type metadata accessor for NetRequest(0) + 44));

  return sub_1DB393828(v7, a1, a2, a3);
}

uint64_t NetRequest.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DB397F80(a1, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 8);

  return v6(a1, AssociatedTypeWitness);
}

void (*NetRequest.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v16 = v15;
  v11[7] = v15;
  v17 = type metadata accessor for NetRequest(0);
  sub_1DB393828(*(v4 + *(v17 + 44)), a3, a4, v16);
  return sub_1DB395854;
}

void sub_1DB395854(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[6], v4, v5);
    sub_1DB397F80(v3, v9, v8, v7);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    sub_1DB397F80((*a1)[7], v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t NetRequest.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*a1 + *MEMORY[0x1E69E77B0] + 8);
  v7 = *(v3 + *(type metadata accessor for NetRequest(0) + 44));

  return sub_1DB393828(v7, v6, a2, a3);
}

uint64_t NetRequest.subscript.setter(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1DB398054(a1, *(*a2 + *MEMORY[0x1E69E77B0] + 8), a3);

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 8);

  return v5(a1, AssociatedTypeWitness);
}

void (*NetRequest.subscript.modify(void *a1, void *a2, uint64_t a3))(void **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v8[3] = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[4] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v9[5] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[6] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[6] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v9[7] = v13;
  NetRequest.subscript.getter(a2, a3, v13);
  return sub_1DB395C40;
}

void sub_1DB395C40(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 6);
  v4 = *(*a1 + 7);
  v5 = *(*a1 + 4);
  v6 = *(*a1 + 5);
  v7 = *(*a1 + 3);
  v8 = *(*a1 + 1);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 6), v4, v5);
    sub_1DB397F80(v3, v7, v7, v8);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {

    sub_1DB397F80(v4, v7, v7, v8);

    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t NetRequest.subscript.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for NetRequest(0) + 44));
}

{
  *a1 = *(v1 + *(type metadata accessor for NetRequest(0) + 44));
}

uint64_t NetRequest.subscript.setter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *a1;
  v7 = (*(a4 + 8))(a3, a4);
  v8 = v7;
  v9 = *(v7 + 16);
  if (!v9)
  {
LABEL_25:
  }

  v10 = 0;
  v11 = v7 + 40;
  v12 = &qword_1ECC426B0;
  v41 = v7;
  while (v10 < *(v8 + 16))
  {
    sub_1DB349C18();
    sub_1DB314C3C(v47, v46);
    v44[0] = v47[0];
    v44[1] = v47[1];
    v45 = v48;
    if (!*(v6 + 16))
    {
      goto LABEL_14;
    }

    v13 = sub_1DB30EDA8(v44);
    if ((v14 & 1) == 0)
    {

LABEL_14:
      sub_1DB314BE8(v44);
      v28 = *(type metadata accessor for NetRequest(0) + 44);
      v29 = sub_1DB30EDA8(v46);
      if (v30)
      {
        v31 = v29;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = *(v5 + v28);
        *&v42[0] = v33;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1DB311B6C();
          v33 = *&v42[0];
        }

        sub_1DB314BE8(*(v33 + 48) + 40 * v31);
        sub_1DB30C200((*(v33 + 56) + 32 * v31), v43);
        sub_1DB310394(v31, v33);
        sub_1DB314BE8(v46);
        *(v5 + v28) = v33;
      }

      else
      {
        sub_1DB314BE8(v46);
        memset(v43, 0, sizeof(v43));
      }

      sub_1DB30623C(v43, v12, &qword_1DB50EEB0);
      goto LABEL_5;
    }

    v15 = v9;
    v16 = v12;
    sub_1DB300B14(*(v6 + 56) + 32 * v13, v43);
    sub_1DB314BE8(v44);

    v17 = *(type metadata accessor for NetRequest(0) + 44);
    sub_1DB30C200(v43, v42);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v5 + v17);
    v20 = sub_1DB30EDA8(v46);
    v22 = v19[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_27;
    }

    v26 = v21;
    if (v19[3] < v25)
    {
      sub_1DB31A3F4(v25, v18);
      v20 = sub_1DB30EDA8(v46);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_29;
      }

LABEL_19:
      v34 = v19;
      if ((v26 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    if (v18)
    {
      goto LABEL_19;
    }

    v36 = v20;
    sub_1DB311B6C();
    v20 = v36;
    v34 = v19;
    if ((v26 & 1) == 0)
    {
LABEL_22:
      v34[(v20 >> 6) + 8] |= 1 << v20;
      v37 = v20;
      sub_1DB314C3C(v46, v34[6] + 40 * v20);
      sub_1DB30C200(v42, (v34[7] + 32 * v37));
      sub_1DB314BE8(v46);
      v38 = v34[2];
      v24 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v24)
      {
        goto LABEL_28;
      }

      v34[2] = v39;
      goto LABEL_24;
    }

LABEL_20:
    v35 = (v34[7] + 32 * v20);
    __swift_destroy_boxed_opaque_existential_0(v35);
    sub_1DB30C200(v42, v35);
    sub_1DB314BE8(v46);
LABEL_24:
    *(v5 + v17) = v34;
    v12 = v16;
    v9 = v15;
    v8 = v41;
LABEL_5:
    ++v10;
    v11 += 16;
    if (v9 == v10)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_1DB50BC20();
  __break(1u);
  return result;
}

{
  sub_1DB398060(a1, a3, a4);
}

void (*NetRequest.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x28uLL);
  }

  *a1 = v9;
  v9[3] = a4;
  v9[4] = v4;
  v9[1] = a2;
  v9[2] = a3;
  *v9 = *(v4 + *(type metadata accessor for NetRequest(0) + 44));

  return sub_1DB396188;
}

void sub_1DB396188(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[2];
  v6 = **a1;
  if (a2)
  {

    NetRequest.subscript.setter(&v6, v5, v4, v3);
  }

  else
  {
    NetRequest.subscript.setter(&v6, a2, v4, v3);
  }

  free(v2);
}

uint64_t (*NetRequest.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, uint64_t a2)
{
  a1[2] = a4;
  a1[3] = v4;
  a1[1] = a3;
  *a1 = *(v4 + *(type metadata accessor for NetRequest(0) + 44));

  return sub_1DB3962F8;
}

uint64_t sub_1DB3962F8(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *a1;
  v4 = a1[1];
  if (a2)
  {

    v7 = v3;
    NetRequest.subscript.setter(&v7, v5, v4, v2);
  }

  else
  {
    v7 = *a1;
    return NetRequest.subscript.setter(&v7, a2, v4, v2);
  }
}

uint64_t sub_1DB3963A0()
{
  v1 = *v0;
  v2 = 7107189;
  v3 = 0x74756F656D6974;
  v4 = 0x6568636163;
  if (v1 != 4)
  {
    v4 = 0x73726564616568;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 2036625250;
  if (v1 != 1)
  {
    v5 = 0x646F6874656DLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DB396444@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB398A04(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB396478(uint64_t a1)
{
  v2 = sub_1DB398094();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB3964B4(uint64_t a1)
{
  v2 = sub_1DB398094();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NetRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a1;
  v94 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v99 = &v86 - v3;
  v101 = sub_1DB509CA0();
  v98 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v97 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44320, &qword_1DB514CF0);
  v100 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v6 = &v86 - v5;
  v7 = type metadata accessor for NetRequest(0);
  v8 = (v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v10[v8[7]];
  *v11 = 5522759;
  *(v11 + 1) = 0xE300000000000000;
  v96 = v8[8];
  *&v10[v96] = 0;
  v12 = v8[9];
  v13 = MEMORY[0x1E69E7CC0];
  *&v106 = sub_1DB3136F0(MEMORY[0x1E69E7CC0]);
  v95 = v12;
  *&v10[v12] = v106;
  v14 = v8[10];
  *&v10[v14] = 0x403E000000000000;
  v15 = &v10[v8[11]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v103 = v15;
  v15[16] = 0;
  v16 = &v10[v8[12]];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = v8[13];
  v105 = sub_1DB313804(v13);
  *&v10[v17] = v105;
  __swift_project_boxed_opaque_existential_1(v107, v107[3]);
  sub_1DB398094();
  v18 = v104;
  sub_1DB50BDF0();
  if (v18)
  {
    v19 = v107;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_0(v19);
  }

  v92 = v11;
  v20 = v99;
  v104 = v10;
  v93 = v14;
  v90 = v16;
  v91 = v17;
  LOBYTE(v114) = 0;
  sub_1DB50B740();
  v21 = v20;
  sub_1DB509C60();

  v22 = v98;
  v23 = v101;
  if ((*(v98 + 48))(v21, 1, v101) == 1)
  {
    sub_1DB30623C(v21, &unk_1ECC42B20, &unk_1DB50F6A0);
    v24 = sub_1DB50B3E0();
    swift_allocError();
    v26 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0);
    *v26 = v23;
    v27 = v107;
    __swift_project_boxed_opaque_existential_1(v107, v107[3]);
    sub_1DB50BDB0();
    sub_1DB50B3C0();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
    swift_willThrow();
    (*(v100 + 8))(v6, v102);
    v19 = v27;
    goto LABEL_5;
  }

  v29 = v97;
  (*(v22 + 32))(v97, v21, v23);
  (*(v22 + 16))(v104, v29, v23);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44330, &unk_1DB516CE0);
  LOBYTE(v113) = 2;
  v31 = sub_1DB3980E8();
  sub_1DB50B780();
  v88 = v31;
  v32 = v115;
  v89 = v30;
  if (v115)
  {
    v33 = v92;
    *v92 = v114;
    *(v33 + 1) = v32;
    v99 = v32;
  }

  else
  {
    v99 = 0xE300000000000000;
  }

  v34 = v93;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44348, &qword_1DB514CF8);
  LOBYTE(v113) = 4;
  sub_1DB398244(&qword_1ECC44350, &qword_1ECC44348, &qword_1DB514CF8, sub_1DB398190);
  sub_1DB50B780();
  v35 = v104;
  if (v115 != 1)
  {
    *&v104[v96] = v114;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44370, &qword_1DB514D08);
  LOBYTE(v113) = 5;
  sub_1DB398244(&qword_1ECC44378, &qword_1ECC44370, &qword_1DB514D08, sub_1DB3982C0);
  sub_1DB50B710();
  v36 = v107;
  v37 = v114;
  if (v114)
  {

    *(v35 + v95) = v37;
    *&v106 = v37;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44390, &unk_1DB51EB60);
  LOBYTE(v113) = 3;
  sub_1DB398244(&qword_1ECC44398, &qword_1ECC44390, &unk_1DB51EB60, sub_1DB39833C);
  sub_1DB50B780();
  if ((v115 & 1) == 0)
  {
    *(v34 + v35) = v114;
  }

  LOBYTE(v113) = 1;
  sub_1DB50B710();
  v38 = v115;
  if (v115 >= 2)
  {
    v39 = v90;
    *v90 = v114;
    *(v39 + 1) = v38;
  }

  __swift_project_boxed_opaque_existential_1(v36, v36[3]);
  v40 = sub_1DB50BDE0();
  JSONContext.init(userInfo:)(v40);
  v95 = v114;
  v96 = sub_1DB315A38(0xD00000000000001FLL, 0x80000001DB52A450, v114);
  v87 = v6;
  if (!v96)
  {

    if (qword_1ECC42218 != -1)
    {
LABEL_48:
      swift_once();
    }

    v41 = qword_1ECC466E8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1DB50F8D0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v43 = swift_allocObject();
    v106 = xmmword_1DB50EE90;
    *(v43 + 16) = xmmword_1DB50EE90;
    v44 = MEMORY[0x1E69E6158];
    v117 = MEMORY[0x1E69E6158];
    v114 = 0xD000000000000032;
    v115 = 0x80000001DB52BD40;
    *(v43 + 48) = 0u;
    *(v43 + 32) = 0u;
    sub_1DB301D4C(&v114, v43 + 32);
    *(v43 + 64) = 0;
    *(v42 + 32) = v43;
    v45 = swift_allocObject();
    *(v45 + 16) = v106;
    v117 = v44;
    v114 = 0xD00000000000002ELL;
    v115 = 0x80000001DB52BD80;
    *(v45 + 48) = 0u;
    *(v45 + 32) = 0u;
    sub_1DB301D4C(&v114, v45 + 32);
    *(v45 + 64) = 0;
    *(v42 + 40) = v45;
    v46 = sub_1DB50AF40();
    if (os_log_type_enabled(v41, v46))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v47 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v47[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v47 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v49 = swift_allocObject();
      *(v49 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      v114 = v42;
      v115 = sub_1DB314CB0;
      v116 = v49;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v50 = sub_1DB50A5E0();
      v52 = v51;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v53 = swift_allocObject();
      *(v53 + 16) = v106;
      *(v53 + 56) = v44;
      *(v53 + 64) = sub_1DB31494C();
      *(v53 + 32) = v50;
      *(v53 + 40) = v52;
      sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v41, v46, v53);

      v36 = v107;
    }

    else
    {
    }

    v85 = v100;
    (*(v98 + 8))(v97, v101);
    (*(v85 + 8))(v87, v102);
    v35 = v104;
    goto LABEL_44;
  }

  sub_1DB30BE90(v36, &v113);
  JSONObject.init(from:)(&v113, &v114);
  v54 = *(v96 + 16);
  if (!v54)
  {
LABEL_43:

    sub_1DB3151CC(&v114);
    (*(v98 + 8))(v97, v101);
    (*(v100 + 8))(v87, v102);
    v36 = v107;
LABEL_44:
    sub_1DB3983B8(v35, v94);
    __swift_destroy_boxed_opaque_existential_0(v36);
    return sub_1DB39841C(v35);
  }

  v36 = 0;
  v55 = (v96 + 40);
  v56 = v105;
  v93 = *(v96 + 16);
  while (1)
  {
    v105 = v56;
    if (v36 >= *(v96 + 16))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v61 = *(v55 - 1);
    v60 = *v55;
    v113 = v95;
    sub_1DB349864(&v114, &v113, v61, v60, v111);
    sub_1DB349C18();
    v62 = v112;
    v63 = __swift_project_boxed_opaque_existential_1(v111, v112);
    v110 = v62;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v109);
    (*(*(v62 - 8) + 16))(boxed_opaque_existential_0, v63, v62);
    sub_1DB30C200(&v109, v108);
    v65 = v91;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = v35;
    v68 = isUniquelyReferenced_nonNull_native;
    v69 = v67;
    v70 = *(v67 + v65);
    v118 = v70;
    v72 = sub_1DB30EDA8(&v113);
    v73 = v70[2];
    v74 = (v71 & 1) == 0;
    v75 = v73 + v74;
    if (__OFADD__(v73, v74))
    {
      goto LABEL_46;
    }

    if (v70[3] < v75)
    {
      break;
    }

    if ((v68 & 1) == 0)
    {
      v83 = v72;
      v84 = v71;
      sub_1DB311B6C();
      v71 = v84;
      v54 = v93;
      v72 = v83;
    }

    v35 = v69;
LABEL_38:
    v56 = v118;
    if (v71)
    {
      v57 = v118;
      v58 = (v118[7] + 32 * v72);
      __swift_destroy_boxed_opaque_existential_0(v58);
      v59 = v58;
      v56 = v57;
      sub_1DB30C200(v108, v59);
      sub_1DB314BE8(&v113);
    }

    else
    {
      v79 = v72;
      v118[(v72 >> 6) + 8] |= 1 << v72;
      sub_1DB314C3C(&v113, v56[6] + 40 * v72);
      sub_1DB30C200(v108, (v56[7] + 32 * v79));
      sub_1DB314BE8(&v113);
      v80 = v56[2];
      v81 = __OFADD__(v80, 1);
      v82 = v80 + 1;
      if (v81)
      {
        goto LABEL_47;
      }

      v56[2] = v82;
    }

    v36 = (v36 + 1);
    *(v35 + v91) = v56;
    __swift_destroy_boxed_opaque_existential_0(v111);
    v55 += 2;
    if (v54 == v36)
    {
      goto LABEL_43;
    }
  }

  v76 = v71;
  sub_1DB31A3F4(v75, v68);
  v77 = sub_1DB30EDA8(&v113);
  if ((v76 & 1) == (v78 & 1))
  {
    v72 = v77;
    v71 = v76;
    v35 = v69;
    v54 = v93;
    goto LABEL_38;
  }

  result = sub_1DB50BC20();
  __break(1u);
  return result;
}

uint64_t NetRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC443B0, &qword_1DB514D18);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB398094();
  sub_1DB50BE40();
  LOBYTE(v33) = 0;
  sub_1DB509CA0();
  sub_1DB398478(&qword_1ECC440B0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  sub_1DB50B8A0();
  if (!v2)
  {
    v9 = type metadata accessor for NetRequest(0);
    LOBYTE(v33) = 2;
    sub_1DB50B860();
    *&v33 = *(v1 + v9[6]);
    LOBYTE(v36[0]) = 4;
    type metadata accessor for CachePolicy(0);
    sub_1DB398478(&qword_1ECC443B8, type metadata accessor for CachePolicy, &protocol conformance descriptor for NSURLRequestCachePolicy);
    sub_1DB50B8A0();
    *&v33 = *(v1 + v9[7]);
    LOBYTE(v36[0]) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44388, &unk_1DB51BD70);
    sub_1DB3984C0();
    sub_1DB50B8A0();
    LOBYTE(v33) = 3;
    sub_1DB50B880();
    v33 = *(v1 + v9[10]);
    LOBYTE(v36[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46C00, &qword_1DB516350);
    sub_1DB32500C(&qword_1ECC42FF0, MEMORY[0x1E69E6160], MEMORY[0x1E69E7C70]);
    sub_1DB50B8A0();
    v10 = a1[3];
    *&v31 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v10);
    v11 = sub_1DB50BE30();
    JSONContext.init(userInfo:)(v11);
    v12 = sub_1DB315A38(0xD00000000000001FLL, 0x80000001DB52A450, v33);

    if (v12)
    {
      v30 = *(v12 + 16);
      if (!v30)
      {
LABEL_19:

        return (*(v6 + 8))(v8, v5);
      }

      v13 = 0;
      *&v31 = *(v3 + v9[11]);
      v14 = (v12 + 40);
      v29 = v12;
      while (v13 < *(v12 + 16))
      {
        v9 = *(v14 - 1);
        v37 = *v14;
        sub_1DB349C18();
        if (*(v31 + 16) && (v15 = sub_1DB30EDA8(&v33), (v16 & 1) != 0))
        {
          sub_1DB300B14(*(v31 + 56) + 32 * v15, v32);
          sub_1DB314BE8(&v33);
          sub_1DB30C200(v32, v36);
          sub_1DB34991C(v36, a1, v9, v37);
          __swift_destroy_boxed_opaque_existential_0(v36);
        }

        else
        {
          sub_1DB314BE8(&v33);
        }

        v12 = v29;
        ++v13;
        v14 += 2;
        if (v30 == v13)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
    }

    else
    {
      v9 = 0xD00000000000001FLL;
      if (qword_1ECC42218 == -1)
      {
        goto LABEL_13;
      }
    }

    swift_once();
LABEL_13:
    v17 = qword_1ECC466E8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v18 = swift_allocObject();
    v31 = xmmword_1DB50EE90;
    *(v18 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v19 = swift_allocObject();
    *(v19 + 16) = v31;
    v35 = MEMORY[0x1E69E6158];
    *&v33 = v9 + 57;
    *(&v33 + 1) = 0x80000001DB52BDB0;
    *(v19 + 48) = 0u;
    *(v19 + 32) = 0u;
    sub_1DB301D4C(&v33, v19 + 32);
    *(v19 + 64) = 0;
    *(v18 + 32) = v19;
    v20 = sub_1DB50AF40();
    if (os_log_type_enabled(v17, v20))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v21 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v21[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v21 + 5);
      v37 = v17;
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v23 = swift_allocObject();
      *(v23 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v33 = v18;
      *(&v33 + 1) = sub_1DB314CB0;
      v34 = v23;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v24 = sub_1DB50A5E0();
      v26 = v25;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v27 = swift_allocObject();
      *(v27 + 16) = v31;
      *(v27 + 56) = MEMORY[0x1E69E6158];
      *(v27 + 64) = sub_1DB31494C();
      *(v27 + 32) = v24;
      *(v27 + 40) = v26;
      sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v37, v20, v27);
    }

    goto LABEL_19;
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DB397E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DB349C18();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[3] = AssociatedTypeWitness;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v9);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_0, a1, AssociatedTypeWitness);
  return sub_1DB30D524(v9, v10);
}

uint64_t type metadata accessor for NetRequest(uint64_t a1)
{
  result = qword_1ECC443C8;
  if (!qword_1ECC443C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DB397F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DB349C18();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[3] = AssociatedTypeWitness;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v8);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_0, a1, AssociatedTypeWitness);
  type metadata accessor for NetRequest(0);
  return sub_1DB30D524(v8, v9);
}

unint64_t sub_1DB398094()
{
  result = qword_1ECC44328;
  if (!qword_1ECC44328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44328);
  }

  return result;
}

unint64_t sub_1DB3980E8()
{
  result = qword_1ECC44338;
  if (!qword_1ECC44338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44330, &unk_1DB516CE0);
    sub_1DB32500C(&qword_1ECC44340, MEMORY[0x1E69E6190], &protocol conformance descriptor for <A> A?);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44338);
  }

  return result;
}

unint64_t sub_1DB398190()
{
  result = qword_1ECC44358;
  if (!qword_1ECC44358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44360, &qword_1DB514D00);
    sub_1DB398478(&qword_1ECC44368, type metadata accessor for CachePolicy, &protocol conformance descriptor for NSURLRequestCachePolicy);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44358);
  }

  return result;
}

uint64_t sub_1DB398244(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DB3982C0()
{
  result = qword_1ECC44380;
  if (!qword_1ECC44380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44388, &unk_1DB51BD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44380);
  }

  return result;
}

unint64_t sub_1DB39833C()
{
  result = qword_1ECC443A0;
  if (!qword_1ECC443A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC443A8, &qword_1DB514D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC443A0);
  }

  return result;
}

uint64_t sub_1DB3983B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB39841C(uint64_t a1)
{
  v2 = type metadata accessor for NetRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DB398478(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DB3984C0()
{
  result = qword_1ECC443C0;
  if (!qword_1ECC443C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44388, &unk_1DB51BD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC443C0);
  }

  return result;
}

void sub_1DB398564(uint64_t a1)
{
  sub_1DB509CA0();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CachePolicy(319);
    if (v2 <= 0x3F)
    {
      sub_1DB398704(319, &qword_1ECC443D8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
      if (v3 <= 0x3F)
      {
        sub_1DB3986B8(319, &qword_1ECC443E0);
        if (v4 <= 0x3F)
        {
          sub_1DB3986B8(319, &qword_1EE30C860);
          if (v5 <= 0x3F)
          {
            sub_1DB398704(319, qword_1ECC443E8, MEMORY[0x1E69E69B8], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E69C0]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1DB3986B8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1DB50B120();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1DB398704(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    v6 = sub_1DB50A540();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1DB398758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for NetRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DB398900()
{
  result = qword_1ECC44470;
  if (!qword_1ECC44470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44470);
  }

  return result;
}

unint64_t sub_1DB398958()
{
  result = qword_1ECC44478;
  if (!qword_1ECC44478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44478);
  }

  return result;
}

unint64_t sub_1DB3989B0()
{
  result = qword_1ECC44480;
  if (!qword_1ECC44480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44480);
  }

  return result;
}

uint64_t sub_1DB398A04(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_1DB50BA30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646F6874656DLL && a2 == 0xE600000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74756F656D6974 && a2 == 0xE700000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6568636163 && a2 == 0xE500000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73726564616568 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1DB50BA30();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1DB398BF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_1DB398C60(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_1DB514CE0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0;
  return result;
}

uint64_t sub_1DB398D08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44490, &qword_1DB514F80);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44498, &qword_1DB514F88);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CD0];
  *(v0 + 16) = result;
  qword_1EE312DD8 = v0;
  return result;
}

uint64_t ActionMetrics.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  JSONObject.subscript.getter(1635017060, 0xE400000000000000, v9);

  *a3 = sub_1DB320870(v9, v5);
  JSONObject.subscript.getter(0x6D6F74737563, 0xE600000000000000, v9);
  v7 = v5;
  ScalarDictionary.init(tryDeserializing:using:)(v9, &v7, &v8);
  result = sub_1DB3151CC(a1);
  a3[1] = v8;
  return result;
}

void static ActionMetrics.notInstrumented.getter(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC8];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
}

JetCore::ActionMetrics __swiftcall ActionMetrics.init(data:custom:)(Swift::OpaquePointer data, JetCore::ScalarDictionary custom)
{
  v3 = *custom.values._rawValue;
  v2->_rawValue = data._rawValue;
  v2[1]._rawValue = v3;
  result.custom = custom;
  result.data = data;
  return result;
}

uint64_t ActionMetrics.data.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ActionMetrics.custom.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 8) = v2;
  return result;
}

JetCore::ActionMetrics __swiftcall ActionMetrics.mergingWith(_:)(JetCore::ActionMetrics a1)
{
  v3 = v1;
  v4 = *a1.data._rawValue;
  v5 = *(a1.data._rawValue + 1);
  v6 = *(v2 + 8);
  v15 = MEMORY[0x1E69E7CC0];

  sub_1DB3990F8(v7);
  sub_1DB3990F8(v4);
  v8 = v15;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v6;
  sub_1DB399DEC(v5, sub_1DB34208C, 0, isUniquelyReferenced_nonNull_native, &v14);

  v10 = v14;

  *v3 = v8;
  v3[1] = v10;
  result.custom.values._rawValue = v12;
  result.data._rawValue = v11;
  return result;
}

char *sub_1DB39900C(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1DB302640(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[16 * v7 + 32], v6 + 32, 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1DB3990F8(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_1DB303390(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
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

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1DB3991F0(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_1DB3034B0(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
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

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1DB3992E4(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_1DB302404(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
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

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1DB3993D8(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_1DB3041D0(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
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

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1DB399510(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6D6F74737563;
  }

  else
  {
    v3 = 1635017060;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6D6F74737563;
  }

  else
  {
    v5 = 1635017060;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DB50BA30();
  }

  return v8 & 1;
}

uint64_t sub_1DB3995AC()
{
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB399624(uint64_t a1)
{
  sub_1DB50A740();
}

uint64_t sub_1DB399688(uint64_t a1)
{
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB3996FC@<X0>(char *a2@<X8>)
{
  v3 = sub_1DB50B680();

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

void sub_1DB39975C(uint64_t *a1@<X8>)
{
  v2 = 1635017060;
  if (*v1)
  {
    v2 = 0x6D6F74737563;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DB399790()
{
  if (*v0)
  {
    return 0x6D6F74737563;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_1DB3997C0@<X0>(char *a3@<X8>)
{
  v4 = sub_1DB50B680();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1DB399824(uint64_t a1)
{
  v2 = sub_1DB39A0D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB399860(uint64_t a1)
{
  v2 = sub_1DB39A0D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActionMetrics.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC444A0, &qword_1DB514F90);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB39A0D4();
  sub_1DB50BDF0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v14) = 0;
  if (sub_1DB50B7B0())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC444C0, &qword_1DB514FA0);
    v13 = 0;
    sub_1DB39A1B0(&qword_1ECC444C8, sub_1DB39A128, &protocol conformance descriptor for <A> DiscardOnError<A>);
    sub_1DB50B780();
    v10 = v14;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  LOBYTE(v14) = 1;
  if (sub_1DB50B7B0())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC444B0, &qword_1DB514F98);
    v13 = 1;
    sub_1DB39A328(&qword_1ECC444B8, &protocol witness table for ScalarDictionary, &protocol conformance descriptor for <A> DiscardOnError<A>);
    sub_1DB50B780();
    (*(v6 + 8))(v8, v5);
    v11 = v14;
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    v11 = MEMORY[0x1E69E7CC8];
  }

  *a2 = v10;
  a2[1] = v11;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t ActionMetrics.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC444E0, &qword_1DB514FA8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB39A0D4();

  sub_1DB50BE40();
  v12 = v8;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC444C0, &qword_1DB514FA0);
  sub_1DB39A1B0(&qword_1ECC444E8, sub_1DB39A228, &protocol conformance descriptor for <A> DiscardOnError<A>);
  sub_1DB50B8A0();

  if (!v2)
  {
    v12 = v10;
    v11 = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC444B0, &qword_1DB514F98);
    sub_1DB39A328(&qword_1ECC44500, &protocol witness table for ScalarDictionary, &protocol conformance descriptor for <A> DiscardOnError<A>);
    sub_1DB50B8A0();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1DB399DEC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, void *a5)
{
  v64 = a5;
  v5 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = (63 - v6) >> 6;

  v10 = 0;
  v49 = v9;
  v50 = v5;
  while (1)
  {
    v15 = v8;
    v16 = v10;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v18 = __clz(__rbit64(v15)) | (v16 << 6);
    v19 = (*(a1 + 48) + 16 * v18);
    v20 = v19[1];
    v21 = *(a1 + 56) + 24 * v18;
    v23 = *v21;
    v22 = *(v21 + 8);
    v24 = *(v21 + 16);
    v55[0] = *v19;
    v55[1] = v20;
    v56 = v23;
    v57 = v22;
    v58 = v24;

    sub_1DB314BBC(v23, v22, v24);
    a2(&v59, v55);
    v25 = v56;
    v26 = v57;
    v27 = v58;

    sub_1DB31EB94(v25, v26, v27);
    v28 = v60;
    if (!v60)
    {
LABEL_22:
      sub_1DB2FEA60(a1);
    }

    v29 = v59;
    v30 = v61;
    v31 = v62;
    v53 = v63;
    v32 = *v64;
    v34 = sub_1DB306160(v59, v60);
    v35 = v32[2];
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      goto LABEL_24;
    }

    v38 = v33;
    if (v32[3] >= v37)
    {
      if ((a4 & 1) == 0)
      {
        sub_1DB3119D4();
      }
    }

    else
    {
      sub_1DB31A114(v37, a4 & 1);
      v39 = sub_1DB306160(v29, v28);
      if ((v38 & 1) != (v40 & 1))
      {
        goto LABEL_26;
      }

      v34 = v39;
    }

    v41 = (v15 - 1) & v15;
    v42 = *v64;
    if (v38)
    {

      v11 = v42[7] + 24 * v34;
      v12 = *v11;
      v13 = *(v11 + 8);
      *v11 = v30;
      *(v11 + 8) = v31;
      v14 = *(v11 + 16);
      *(v11 + 16) = v53;
      sub_1DB31EB94(v12, v13, v14);
    }

    else
    {
      v42[(v34 >> 6) + 8] |= 1 << v34;
      v43 = (v42[6] + 16 * v34);
      *v43 = v29;
      v43[1] = v28;
      v44 = v42[7] + 24 * v34;
      *v44 = v30;
      *(v44 + 8) = v31;
      *(v44 + 16) = v53;
      v45 = v42[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_25;
      }

      v42[2] = v47;
    }

    a4 = 1;
    v10 = v16;
    v9 = v49;
    v5 = v50;
    v8 = v41;
  }

  v17 = v10;
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v9)
    {
      goto LABEL_22;
    }

    v15 = *(v5 + 8 * v16);
    ++v17;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1DB50BC20();
  __break(1u);
  return result;
}

unint64_t sub_1DB39A0D4()
{
  result = qword_1ECC444A8;
  if (!qword_1ECC444A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC444A8);
  }

  return result;
}

unint64_t sub_1DB39A15C()
{
  result = qword_1ECC444D8;
  if (!qword_1ECC444D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC444D8);
  }

  return result;
}

uint64_t sub_1DB39A1B0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC444C0, &qword_1DB514FA0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DB39A25C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC43090, &qword_1DB510230);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DB39A2D4()
{
  result = qword_1ECC444F8;
  if (!qword_1ECC444F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC444F8);
  }

  return result;
}

uint64_t sub_1DB39A328(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC444B0, &qword_1DB514F98);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DB39A3B8()
{
  result = qword_1ECC44508;
  if (!qword_1ECC44508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44508);
  }

  return result;
}

unint64_t sub_1DB39A410()
{
  result = qword_1ECC44510;
  if (!qword_1ECC44510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44510);
  }

  return result;
}

unint64_t sub_1DB39A468()
{
  result = qword_1ECC44518;
  if (!qword_1ECC44518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44518);
  }

  return result;
}

void *sub_1DB39A4BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1DB3171C0(a1, v6);
  v7 = a2;

  return Models.AlertAction.Button.init(deserializing:using:)(v6, &v7, a3);
}

uint64_t sub_1DB39A51C()
{
  sub_1DB30C4B8(v0, v5, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v6)
  {
    v1 = __swift_project_boxed_opaque_existential_1(v5, v6);
    sub_1DB300B14(v1, v4);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v5);
      return v3;
    }

    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {
    sub_1DB30623C(v5, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  return 0;
}

void *sub_1DB39A64C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_1DB39A658@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1DB39A664()
{
  sub_1DB50BCF0();
  sub_1DB50A740();
  return sub_1DB50BD30();
}

uint64_t sub_1DB39A6B8(uint64_t a1)
{
  sub_1DB50BCF0();
  sub_1DB50A740();
  return sub_1DB50BD30();
}

uint64_t _s7JetCore6ModelsO18HTTPTemplateActionV8FormBodyV2eeoiySbAG_AGtFZ_0(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DB50BA30();
  }
}

__n128 Models.AlertAction.Button.init(title:role:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  result = *a5;
  v7 = *(a5 + 16);
  *(a6 + 32) = *a5;
  *(a6 + 48) = v7;
  *(a6 + 64) = *(a5 + 32);
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  return result;
}

__n128 Models.AlertAction.Button.init(title:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  result = *a3;
  v5 = *(a3 + 16);
  *(a4 + 32) = *a3;
  *(a4 + 48) = v5;
  *(a4 + 64) = *(a3 + 32);
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  return result;
}

uint64_t Models.AlertAction.Button.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  JSONObject.subscript.getter(0x656C746974, 0xE500000000000000, v15);
  v6 = JSONObject.string.getter();
  v8 = v7;
  sub_1DB3151CC(v15);
  if (v8)
  {
    *a3 = v6;
    a3[1] = v8;
    JSONObject.subscript.getter(0x6E6F69746361, 0xE600000000000000, v15);
    v14 = v5;
    static AnyActionTypes.tryToMakeInstance(byDeserializing:using:)(v15, &v14, (a3 + 4));
    sub_1DB3151CC(v15);

    JSONObject.subscript.getter(1701605234, 0xE400000000000000, v15);
    v9 = sub_1DB39A51C();
    v11 = v10;
    sub_1DB3151CC(a1);
    result = sub_1DB3151CC(v15);
    a3[2] = v9;
    a3[3] = v11;
  }

  else
  {

    sub_1DB315178();
    swift_allocError();
    *v13 = xmmword_1DB5151C0;
    *(v13 + 16) = 0x20000001F56F5DA8uLL;
    *(v13 + 24) = 0;
    swift_willThrow();
    return sub_1DB3151CC(a1);
  }

  return result;
}

uint64_t Models.AlertAction.Button.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Models.AlertAction.Button.role.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Models.AlertAction.Severity.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1DB50B680();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t Models.AlertAction.Severity.rawValue.getter()
{
  if (*v0)
  {
    return 0x6C61636974697263;
  }

  else
  {
    return 0x74616D726F666E69;
  }
}

uint64_t sub_1DB39AA10(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C61636974697263;
  }

  else
  {
    v3 = 0x74616D726F666E69;
  }

  if (v2)
  {
    v4 = 0xED00006C616E6F69;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C61636974697263;
  }

  else
  {
    v5 = 0x74616D726F666E69;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xED00006C616E6F69;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DB50BA30();
  }

  return v8 & 1;
}

uint64_t sub_1DB39AAC4()
{
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB39AB54(uint64_t a1)
{
  sub_1DB50A740();
}

uint64_t sub_1DB39ABD0(uint64_t a1)
{
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB39AC5C@<X0>(char *a2@<X8>)
{
  v3 = sub_1DB50B680();

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

void sub_1DB39ACBC(uint64_t *a1@<X8>)
{
  v2 = 0x74616D726F666E69;
  if (*v1)
  {
    v2 = 0x6C61636974697263;
  }

  v3 = 0xED00006C616E6F69;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

__n128 Models.AlertAction.init(actionMetrics:severity:icon:title:message:buttons:)@<Q0>(_OWORD *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = *a1;
  v9 = *(a3 + 48);
  *(a9 + 56) = *(a3 + 32);
  *(a9 + 72) = v9;
  *(a9 + 88) = *(a3 + 64);
  result = *a3;
  v11 = *(a3 + 16);
  *(a9 + 24) = *a3;
  *(a9 + 16) = *a2;
  v12 = *(a3 + 80);
  *(a9 + 40) = v11;
  *(a9 + 104) = v12;
  *(a9 + 112) = a4;
  *(a9 + 120) = a5;
  *(a9 + 128) = a6;
  *(a9 + 136) = a7;
  *(a9 + 144) = a8;
  return result;
}

uint64_t Models.AlertAction.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  JSONObject.subscript.getter(0x736E6F74747562, 0xE700000000000000, v38);
  JSONObject.array.getter(&v40);
  sub_1DB3151CC(v38);
  if (!*(&v41 + 1))
  {

    sub_1DB30623C(&v40, &qword_1ECC42E28, &qword_1DB50FB20);
    sub_1DB315178();
    swift_allocError();
    *v13 = xmmword_1DB5151D0;
    *(v13 + 16) = 0x20000001F56F5C98uLL;
    *(v13 + 24) = 0;
    swift_willThrow();
    return sub_1DB3151CC(a1);
  }

  v43[0] = v40;
  v43[1] = v41;
  v44 = v42;
  JSONObject.subscript.getter(0x654D6E6F69746361, 0xED00007363697274, v38);

  JSONObject.subscript.getter(1635017060, 0xE400000000000000, &v40);

  v7 = sub_1DB320870(&v40, v6);
  JSONObject.subscript.getter(0x6D6F74737563, 0xE600000000000000, &v40);
  v34 = v6;
  ScalarDictionary.init(tryDeserializing:using:)(&v40, &v34, v37);
  sub_1DB3151CC(v38);
  v8 = v37[0];
  JSONObject.subscript.getter(0x7974697265766573, 0xE800000000000000, v38);
  sub_1DB30C4B8(v38, &v40, &qword_1ECC42E38, &qword_1DB50FB80);
  if (*(&v41 + 1))
  {
    v9 = __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
    sub_1DB300B14(v9, v37);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(&v40);
      v10 = sub_1DB50B680();

      sub_1DB3151CC(v38);
      if (v10 == 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10)
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_14;
    }

    sub_1DB3151CC(v38);
    __swift_destroy_boxed_opaque_existential_0(&v40);
  }

  else
  {
    sub_1DB3151CC(v38);
    sub_1DB30623C(&v40, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  v12 = 2;
LABEL_14:
  JSONObject.subscript.getter(1852793705, 0xE400000000000000, &v40);
  v37[0] = v6;

  MediaArtwork.init(deserializing:using:)(&v40, v37, v38);
  if (v3)
  {

    sub_1DB3151CC(a1);
    return sub_1DB314F08(v43);
  }

  else
  {
    v30 = v12;
    v33 = v8;
    v45 = v7;
    JSONObject.subscript.getter(0x656C746974, 0xE500000000000000, &v40);
    v29 = JSONObject.string.getter();
    v32 = v15;
    sub_1DB3151CC(&v40);
    JSONObject.subscript.getter(0x6567617373656DLL, 0xE700000000000000, v37);
    v28 = JSONObject.string.getter();
    v31 = v16;
    sub_1DB3151CC(v37);
    v17 = sub_1DB315220(v43, &v34);
    MEMORY[0x1EEE9AC00](v17);
    v27[2] = v6;
    v19 = v35;
    v18 = v36;
    __swift_project_boxed_opaque_existential_1(&v34, v35);
    v20 = (*(v18 + 48))(sub_1DB39B2FC, v27, &type metadata for Models.AlertAction.Button, v19, v18);

    sub_1DB3151CC(a1);
    sub_1DB314F08(v43);
    result = sub_1DB314F08(&v34);
    v21 = v38[3];
    *(a3 + 56) = v38[2];
    *(a3 + 72) = v21;
    *(a3 + 88) = v38[4];
    v22 = v38[1];
    *(a3 + 24) = v38[0];
    v23 = v33;
    *a3 = v45;
    *(a3 + 8) = v23;
    *(a3 + 16) = v30;
    v24 = v39;
    *(a3 + 40) = v22;
    v25 = v29;
    *(a3 + 104) = v24;
    *(a3 + 112) = v25;
    v26 = v28;
    *(a3 + 120) = v32;
    *(a3 + 128) = v26;
    *(a3 + 136) = v31;
    *(a3 + 144) = v20;
  }

  return result;
}

uint64_t Models.AlertAction.actionMetrics.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

double Models.AlertAction.icon.getter@<D0>(uint64_t a1@<X8>)
{
  sub_1DB30C4B8(v1 + 24, v6, &qword_1ECC44520, &qword_1DB5151E0);
  v3 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v3;
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v7;
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  return result;
}

uint64_t Models.AlertAction.title.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t Models.AlertAction.message.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t sub_1DB39B488()
{
  v1 = *v0;
  v2 = 0x654D6E6F69746361;
  v3 = 0x656C746974;
  v4 = 0x6567617373656DLL;
  if (v1 != 4)
  {
    v4 = 0x736E6F74747562;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7974697265766573;
  if (v1 != 1)
  {
    v5 = 1852793705;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DB39B544@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB39D4E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB39B56C(uint64_t a1)
{
  v2 = sub_1DB39C380();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB39B5A8(uint64_t a1)
{
  v2 = sub_1DB39C380();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB39B6AC()
{
  v1 = 0x6E6F69746361;
  if (*v0 != 1)
  {
    v1 = 1701605234;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_1DB39B6F8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB39D6E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB39B720(uint64_t a1)
{
  v2 = sub_1DB39BAAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB39B75C(uint64_t a1)
{
  v2 = sub_1DB39BAAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Models.AlertAction.Button.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44528, &qword_1DB5151E8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_1DB39BAAC();
  sub_1DB50BDF0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19[2] = v8;
  LOBYTE(v21[0]) = 0;
  v23[0] = sub_1DB50B740();
  v23[1] = v10;
  v19[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44538, &qword_1DB5151F0);
  v27 = 2;
  sub_1DB39BB00();
  sub_1DB50B710();
  v11 = *(&v21[0] + 1);
  v12 = *&v21[0];
  if (*(&v21[0] + 1) == 1)
  {
    v12 = 0;
    v11 = 0;
  }

  v23[2] = v12;
  v23[3] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_1DB50BDE0();
  v14 = sub_1DB31F3BC(0xD000000000000023, 0x80000001DB5298A0, v13);
  v16 = v15;

  if (v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = &type metadata for EmptyActionKindTable;
  }

  if (v14)
  {
    v18 = v16;
  }

  else
  {
    v18 = &off_1F56F1850;
  }

  v27 = 1;
  decodeActionModel<A, B>(using:container:forKey:)(v17, v18, v21);
  (*(v5 + 8))(v7, v4);
  v24 = v21[0];
  v25 = v21[1];
  v26 = v22;
  sub_1DB39BC5C(v23, v20);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1DB39BC94(v23);
}

unint64_t sub_1DB39BAAC()
{
  result = qword_1ECC44530;
  if (!qword_1ECC44530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44530);
  }

  return result;
}

unint64_t sub_1DB39BB00()
{
  result = qword_1ECC44540;
  if (!qword_1ECC44540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44538, &qword_1DB5151F0);
    sub_1DB39BB84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44540);
  }

  return result;
}

unint64_t sub_1DB39BB84()
{
  result = qword_1ECC44548;
  if (!qword_1ECC44548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44550, &qword_1DB5151F8);
    sub_1DB39BC08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44548);
  }

  return result;
}

unint64_t sub_1DB39BC08()
{
  result = qword_1ECC44558;
  if (!qword_1ECC44558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44558);
  }

  return result;
}

uint64_t Models.AlertAction.Button.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44560, &qword_1DB515200);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = sub_1DB39BAAC();
  sub_1DB50BE40();
  LOBYTE(v18) = 0;
  v8 = v17;
  sub_1DB50B860();
  if (v8)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v16 = v7;
  v17 = v4;
  v18 = *(v1 + 16);
  v19 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44550, &qword_1DB5151F8);
  sub_1DB39BF44();
  sub_1DB50B8A0();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_1DB50BE30();
  v11 = sub_1DB31F3BC(0xD000000000000023, 0x80000001DB5298A0, v10);
  v13 = v12;

  if (v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = &type metadata for EmptyActionKindTable;
  }

  if (v11)
  {
    v15 = v13;
  }

  else
  {
    v15 = &off_1F56F1850;
  }

  LOBYTE(v18) = 1;
  encodeActionModel<A, B>(_:using:container:forKey:)(v1 + 32, v14, v6, &v18, v14, &_s11AlertActionV6ButtonV10CodingKeysON, v15, v16);
  return (*(v17 + 8))(v6, v3);
}

unint64_t sub_1DB39BF44()
{
  result = qword_1ECC44568;
  if (!qword_1ECC44568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44550, &qword_1DB5151F8);
    sub_1DB39BFC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44568);
  }

  return result;
}

unint64_t sub_1DB39BFC8()
{
  result = qword_1ECC44570;
  if (!qword_1ECC44570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44570);
  }

  return result;
}

uint64_t Models.AlertAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44578, &qword_1DB515208);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB39C380();
  sub_1DB50BE40();
  v9 = *(v3 + 8);
  *&v13 = *v3;
  *(&v13 + 1) = v9;
  v12 = 0;
  sub_1DB37BCC8();

  sub_1DB50B8A0();
  if (v2)
  {
  }

  else
  {

    LOBYTE(v13) = *(v3 + 16);
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44588, &qword_1DB515210);
    sub_1DB39C3D4();
    sub_1DB50B8A0();
    LOBYTE(v13) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44520, &qword_1DB5151E0);
    sub_1DB39CD20(&qword_1ECC445B0, &protocol witness table for MediaArtwork, &protocol conformance descriptor for <A> DiscardOnError<A>);
    sub_1DB50B8A0();
    v13 = *(v3 + 112);
    v12 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44330, &unk_1DB516CE0);
    sub_1DB39C530();
    sub_1DB50B8A0();
    v13 = *(v3 + 128);
    v12 = 4;
    sub_1DB50B8A0();
    *&v13 = *(v3 + 144);
    v12 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC445C8, &qword_1DB515220);
    sub_1DB39C5D8();
    sub_1DB50B8A0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1DB39C380()
{
  result = qword_1ECC44580;
  if (!qword_1ECC44580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44580);
  }

  return result;
}

unint64_t sub_1DB39C3D4()
{
  result = qword_1ECC44590;
  if (!qword_1ECC44590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44588, &qword_1DB515210);
    sub_1DB39C458();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44590);
  }

  return result;
}

unint64_t sub_1DB39C458()
{
  result = qword_1ECC44598;
  if (!qword_1ECC44598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC445A0, &qword_1DB515218);
    sub_1DB39C4DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44598);
  }

  return result;
}

unint64_t sub_1DB39C4DC()
{
  result = qword_1ECC445A8;
  if (!qword_1ECC445A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC445A8);
  }

  return result;
}

unint64_t sub_1DB39C530()
{
  result = qword_1ECC445B8;
  if (!qword_1ECC445B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44330, &unk_1DB516CE0);
    sub_1DB32500C(&qword_1ECC445C0, MEMORY[0x1E69E6160], &protocol conformance descriptor for <A> A?);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC445B8);
  }

  return result;
}

unint64_t sub_1DB39C5D8()
{
  result = qword_1ECC445D0;
  if (!qword_1ECC445D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC445C8, &qword_1DB515220);
    sub_1DB39C65C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC445D0);
  }

  return result;
}

unint64_t sub_1DB39C65C()
{
  result = qword_1ECC445D8;
  if (!qword_1ECC445D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC445E0, &qword_1DB515228);
    sub_1DB39C6E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC445D8);
  }

  return result;
}

unint64_t sub_1DB39C6E0()
{
  result = qword_1ECC445E8;
  if (!qword_1ECC445E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC445E8);
  }

  return result;
}

uint64_t Models.AlertAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC445F0, &qword_1DB515230);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  v17 = 2;
  v9 = a1[3];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1DB39C380();
  sub_1DB50BDF0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v27);
  }

  v12 = a2;
  v15 = 0;
  sub_1DB37C0CC();
  sub_1DB50B780();
  v16 = v13[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44588, &qword_1DB515210);
  v15 = 1;
  sub_1DB39CBC4();
  sub_1DB50B780();
  v17 = v13[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44520, &qword_1DB5151E0);
  v15 = 2;
  sub_1DB39CD20(&qword_1ECC44610, &protocol witness table for MediaArtwork, &protocol conformance descriptor for <A> DiscardOnError<A>);
  sub_1DB50B780();
  v20 = v13[2];
  v21 = v13[3];
  v22 = v13[4];
  v23 = v14;
  v18 = v13[0];
  v19 = v13[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44330, &unk_1DB516CE0);
  v15 = 3;
  sub_1DB3980E8();
  sub_1DB50B780();
  v24 = v13[0];
  v15 = 4;
  sub_1DB50B780();
  v25 = v13[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC445C8, &qword_1DB515220);
  v15 = 5;
  sub_1DB39CD8C();
  sub_1DB50B780();
  (*(v6 + 8))(v8, v5);
  v26 = *&v13[0];
  sub_1DB39CEE8(&v16, v12);
  __swift_destroy_boxed_opaque_existential_0(v27);
  return sub_1DB39CF20(&v16);
}

unint64_t sub_1DB39CBC4()
{
  result = qword_1ECC445F8;
  if (!qword_1ECC445F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44588, &qword_1DB515210);
    sub_1DB39CC48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC445F8);
  }

  return result;
}

unint64_t sub_1DB39CC48()
{
  result = qword_1ECC44600;
  if (!qword_1ECC44600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC445A0, &qword_1DB515218);
    sub_1DB39CCCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44600);
  }

  return result;
}

unint64_t sub_1DB39CCCC()
{
  result = qword_1ECC44608;
  if (!qword_1ECC44608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44608);
  }

  return result;
}

uint64_t sub_1DB39CD20(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44520, &qword_1DB5151E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DB39CD8C()
{
  result = qword_1ECC44618;
  if (!qword_1ECC44618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC445C8, &qword_1DB515220);
    sub_1DB39CE10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44618);
  }

  return result;
}

unint64_t sub_1DB39CE10()
{
  result = qword_1ECC44620;
  if (!qword_1ECC44620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC445E0, &qword_1DB515228);
    sub_1DB39CE94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44620);
  }

  return result;
}

unint64_t sub_1DB39CE94()
{
  result = qword_1ECC44628;
  if (!qword_1ECC44628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44628);
  }

  return result;
}

__n128 Models.AlertAction.init(actionMetrics:title:message:buttons:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, __n128 *a7@<X8>)
{
  v16 = &_s12_EmptySourceVN;
  v17 = &off_1EECE8048;
  MediaArtwork.init(_:)(v15, &a7[1].n128_i64[1]);
  result = *a1;
  *a7 = *a1;
  a7[1].n128_u8[0] = 2;
  a7[7].n128_u64[0] = a2;
  a7[7].n128_u64[1] = a3;
  a7[8].n128_u64[0] = a4;
  a7[8].n128_u64[1] = a5;
  a7[9].n128_u64[0] = a6;
  return result;
}

unint64_t sub_1DB39D018()
{
  result = qword_1ECC44630;
  if (!qword_1ECC44630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44630);
  }

  return result;
}

unint64_t sub_1DB39D070()
{
  result = qword_1ECC44638;
  if (!qword_1ECC44638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44638);
  }

  return result;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1DB39D0F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_1DB39D140(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7JetCore11ActionModel_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1DB39D200(uint64_t a1, int a2)
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

uint64_t sub_1DB39D248(uint64_t result, int a2, int a3)
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

unint64_t sub_1DB39D2DC()
{
  result = qword_1ECC44640;
  if (!qword_1ECC44640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44640);
  }

  return result;
}

unint64_t sub_1DB39D334()
{
  result = qword_1ECC44648;
  if (!qword_1ECC44648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44648);
  }

  return result;
}

unint64_t sub_1DB39D38C()
{
  result = qword_1ECC44650;
  if (!qword_1ECC44650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44650);
  }

  return result;
}

unint64_t sub_1DB39D3E4()
{
  result = qword_1ECC44658;
  if (!qword_1ECC44658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44658);
  }

  return result;
}

unint64_t sub_1DB39D43C()
{
  result = qword_1ECC44660;
  if (!qword_1ECC44660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44660);
  }

  return result;
}

unint64_t sub_1DB39D494()
{
  result = qword_1ECC44668;
  if (!qword_1ECC44668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44668);
  }

  return result;
}

uint64_t sub_1DB39D4E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274;
  if (v4 || (sub_1DB50BA30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7974697265766573 && a2 == 0xE800000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736E6F74747562 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1DB50BA30();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1DB39D6E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DB50BA30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DB50BA30();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_1DB39D854()
{
  result = qword_1ECC44670;
  if (!qword_1ECC44670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44670);
  }

  return result;
}

unint64_t sub_1DB39D8A8()
{
  result = qword_1ECC44678;
  if (!qword_1ECC44678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44678);
  }

  return result;
}

uint64_t Models.HTTPAction.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for NetRequest(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  JSONObject.subscript.getter(0x654D6E6F69746361, 0xED00007363697274, &v23);

  JSONObject.subscript.getter(1635017060, 0xE400000000000000, v22);

  v11 = sub_1DB320870(v22, v10);
  JSONObject.subscript.getter(0x6D6F74737563, 0xE600000000000000, v22);
  v21 = v10;
  ScalarDictionary.init(tryDeserializing:using:)(v22, &v21, &v25);
  sub_1DB3151CC(&v23);
  v12 = v25;
  v13 = _s7JetCore26AppleServicesPropertyScopeV13allPropertiesSayAA010NetRequestE0_pXpGvgZ_0();
  v25 = v13;
  v14 = sub_1DB315A38(0xD00000000000001FLL, 0x80000001DB52A450, v10);
  if (v14)
  {
    sub_1DB39900C(v14);
    v13 = v25;
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E68, &qword_1DB516CD0);
  *&v23 = v13;
  sub_1DB30C200(&v23, v22);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v10;
  sub_1DB31D16C(v22, 0xD00000000000001FLL, 0x80000001DB52A450, isUniquelyReferenced_nonNull_native);

  JSONObject.subscript.getter(0x74736575716572, 0xE700000000000000, &v23);
  NetRequest.init(deserializing:using:)(&v23, &v20, v9);
  if (v3)
  {
    sub_1DB3151CC(a1);
  }

  else
  {
    v19 = v11;
    JSONObject.subscript.getter(0x4173736563637573, 0xED00006E6F697463, &v23);
    *&v22[0] = v10;
    v17 = type metadata accessor for Models.HTTPAction(0);
    static AnyActionTypes.tryToMakeInstance(byDeserializing:using:)(&v23, v22, a3 + v17[6]);
    sub_1DB3151CC(&v23);
    JSONObject.subscript.getter(0x416572756C696166, 0xED00006E6F697463, &v23);
    *&v22[0] = v10;
    static AnyActionTypes.tryToMakeInstance(byDeserializing:using:)(&v23, v22, a3 + v17[7]);
    sub_1DB3151CC(a1);
    sub_1DB3151CC(&v23);

    result = sub_1DB39E98C(v9, a3 + v17[5]);
    *a3 = v19;
    a3[1] = v12;
  }

  return result;
}

uint64_t Models.HTTPAction.actionMetrics.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Models.HTTPAction.request.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Models.HTTPAction(0) + 20);

  return sub_1DB3983B8(v3, a1);
}

uint64_t Models.HTTPAction.successAction.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Models.HTTPAction(0) + 24);

  return sub_1DB39E9F0(v3, a1);
}

uint64_t Models.HTTPAction.failureAction.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Models.HTTPAction(0) + 28);

  return sub_1DB39E9F0(v3, a1);
}

uint64_t sub_1DB39DD2C()
{
  v1 = 0x654D6E6F69746361;
  v2 = 0x4173736563637573;
  if (*v0 != 2)
  {
    v2 = 0x416572756C696166;
  }

  if (*v0)
  {
    v1 = 0x74736575716572;
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

uint64_t sub_1DB39DDCC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB39EE94(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB39DE00(uint64_t a1)
{
  v2 = sub_1DB39EA60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB39DE3C(uint64_t a1)
{
  v2 = sub_1DB39EA60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Models.HTTPAction.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v51 = a2;
  v4 = type metadata accessor for NetRequest(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44680, &qword_1DB515820);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v44 - v9;
  v11 = a1[3];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1DB39EA60();
  sub_1DB50BDF0();
  if (!v2)
  {
    v49 = v6;
    v50 = v8;
    LOBYTE(v61[0]) = 0;
    sub_1DB37C0CC();
    sub_1DB50B710();
    v48 = v7;
    if (*&v63[0])
    {
      v12 = *&v63[0];
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
    }

    if (*&v63[0])
    {
      v13 = *(&v63[0] + 1);
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC8];
    }

    __swift_project_boxed_opaque_existential_1(v65, v65[3]);
    v14 = sub_1DB50BDE0();
    v15 = sub_1DB31F3BC(0xD000000000000023, 0x80000001DB5298A0, v14);
    v17 = v16;

    if (v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = &type metadata for EmptyActionKindTable;
    }

    if (v15)
    {
      v19 = v17;
    }

    else
    {
      v19 = &off_1F56F1850;
    }

    LOBYTE(v61[0]) = 2;
    decodeActionModel<A, B>(using:container:forKey:)(v18, v19, v63);
    v46 = v13;
    v47 = v12;
    __swift_project_boxed_opaque_existential_1(v65, v65[3]);
    v21 = sub_1DB50BDE0();
    v22 = sub_1DB31F3BC(0xD000000000000023, 0x80000001DB5298A0, v21);
    v24 = v23;

    if (v22)
    {
      v25 = v22;
    }

    else
    {
      v25 = &type metadata for EmptyActionKindTable;
    }

    if (v22)
    {
      v26 = v24;
    }

    else
    {
      v26 = &off_1F56F1850;
    }

    LOBYTE(v60[0]) = 3;
    decodeActionModel<A, B>(using:container:forKey:)(v25, v26, v61);
    v27 = v48;
    LOBYTE(v54) = 1;
    sub_1DB50B6C0();
    v28 = v50;
    v29 = v58;
    v45 = v59;
    v44[1] = __swift_project_boxed_opaque_existential_1(v57, v58);
    __swift_project_boxed_opaque_existential_1(v65, v65[3]);
    v30 = sub_1DB50BDE0();
    JSONContext.init(userInfo:)(v30);
    v31 = v54;
    v32 = _s7JetCore26AppleServicesPropertyScopeV13allPropertiesSayAA010NetRequestE0_pXpGvgZ_0();
    v56 = v32;
    v33 = sub_1DB315A38(0xD00000000000001FLL, 0x80000001DB52A450, v31);
    if (v33)
    {
      sub_1DB39900C(v33);
      v32 = v56;
    }

    v34 = v51;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E68, &qword_1DB516CD0);
    *&v54 = v32;
    sub_1DB30C200(&v54, v53);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v31;
    sub_1DB31D16C(v53, 0xD00000000000001FLL, 0x80000001DB52A450, isUniquelyReferenced_nonNull_native);

    v36 = _sSD7JetCores17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(&v52);
    Decoder.withUserInfo(_:)(v36, v29, v45, v60);

    __swift_destroy_boxed_opaque_existential_0(v57);
    sub_1DB30BE90(v60, v57);
    v37 = v49;
    NetRequest.init(from:)(v57, v49);
    __swift_destroy_boxed_opaque_existential_0(v60);
    (*(v28 + 8))(v10, v27);
    v38 = type metadata accessor for Models.HTTPAction(0);
    sub_1DB39E98C(v37, v34 + v38[5]);
    v39 = v34 + v38[6];
    v40 = v63[1];
    *v39 = v63[0];
    *(v39 + 1) = v40;
    *(v39 + 4) = v64;
    v41 = v34 + v38[7];
    v42 = v61[1];
    *v41 = v61[0];
    *(v41 + 1) = v42;
    *(v41 + 4) = v62;
    v43 = v46;
    *v34 = v47;
    v34[1] = v43;
  }

  return __swift_destroy_boxed_opaque_existential_0(v65);
}

uint64_t Models.HTTPAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44690, &qword_1DB515828);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v37 = sub_1DB39EA60();
  sub_1DB50BE40();
  v9 = v1[1];
  *&v43 = *v1;
  *(&v43 + 1) = v9;
  LOBYTE(v40[0]) = 0;
  sub_1DB37BCC8();

  sub_1DB50B8A0();

  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v35 = v6;
  v36 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1DB50BE30();
  v12 = sub_1DB31F3BC(0xD000000000000023, 0x80000001DB5298A0, v11);
  v14 = v13;

  if (v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = &type metadata for EmptyActionKindTable;
  }

  if (!v12)
  {
    v14 = &off_1F56F1850;
  }

  v16 = type metadata accessor for Models.HTTPAction(0);
  v17 = *(v16 + 24);
  LOBYTE(v43) = 2;
  encodeActionModel<A, B>(_:using:container:forKey:)(v3 + v17, v15, v8, &v43, v15, &_s10HTTPActionV10CodingKeysON, v14, v37);
  v34 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = sub_1DB50BE30();
  v19 = sub_1DB31F3BC(0xD000000000000023, 0x80000001DB5298A0, v18);
  v21 = v20;

  if (v19)
  {
    v22 = v19;
  }

  else
  {
    v22 = &type metadata for EmptyActionKindTable;
  }

  if (v19)
  {
    v23 = v21;
  }

  else
  {
    v23 = &off_1F56F1850;
  }

  v24 = *(v16 + 28);
  LOBYTE(v43) = 3;
  encodeActionModel<A, B>(_:using:container:forKey:)(v34 + v24, v22, v8, &v43, v22, &_s10HTTPActionV10CodingKeysON, v23, v37);
  v37 = v16;
  LOBYTE(v43) = 1;
  sub_1DB50B7F0();
  v25 = v41;
  v33 = v42;
  v32 = __swift_project_boxed_opaque_existential_1(v40, v41);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v26 = sub_1DB50BE30();
  JSONContext.init(userInfo:)(v26);
  v27 = v43;
  v28 = _s7JetCore26AppleServicesPropertyScopeV13allPropertiesSayAA010NetRequestE0_pXpGvgZ_0();
  v45 = v28;
  v29 = sub_1DB315A38(0xD00000000000001FLL, 0x80000001DB52A450, v27);
  if (v29)
  {
    sub_1DB39900C(v29);
    v28 = v45;
  }

  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E68, &qword_1DB516CD0);
  *&v43 = v28;
  sub_1DB30C200(&v43, v39);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = v27;
  sub_1DB31D16C(v39, 0xD00000000000001FLL, 0x80000001DB52A450, isUniquelyReferenced_nonNull_native);

  v31 = _sSD7JetCores17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(&v38);
  Encoder.withUserInfo(_:)(v31, v25, v33, &v43);

  __swift_destroy_boxed_opaque_existential_0(v40);
  NetRequest.encode(to:)(&v43);
  __swift_destroy_boxed_opaque_existential_0(&v43);
  return (*(v35 + 8))(v8, v36);
}

uint64_t type metadata accessor for Models.HTTPAction(uint64_t a1)
{
  result = qword_1ECC44698;
  if (!qword_1ECC44698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DB39E98C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB39E9F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F50, &unk_1DB513AE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DB39EA60()
{
  result = qword_1ECC44688;
  if (!qword_1ECC44688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44688);
  }

  return result;
}

uint64_t sub_1DB39EAB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F50, &unk_1DB513AE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DB39EB44(uint64_t a1)
{
  type metadata accessor for NetRequest(319);
  if (v1 <= 0x3F)
  {
    sub_1DB39EBD8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DB39EBD8(uint64_t a1)
{
  if (!qword_1ECC446A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC441A8, &qword_1DB514350);
    v1 = sub_1DB50B120();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECC446A8);
    }
  }
}

uint64_t _s10HTTPActionV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10HTTPActionV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DB39ED90()
{
  result = qword_1ECC446B0;
  if (!qword_1ECC446B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC446B0);
  }

  return result;
}

unint64_t sub_1DB39EDE8()
{
  result = qword_1ECC446B8;
  if (!qword_1ECC446B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC446B8);
  }

  return result;
}

unint64_t sub_1DB39EE40()
{
  result = qword_1ECC446C0;
  if (!qword_1ECC446C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC446C0);
  }

  return result;
}

uint64_t sub_1DB39EE94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274;
  if (v4 || (sub_1DB50BA30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74736575716572 && a2 == 0xE700000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4173736563637573 && a2 == 0xED00006E6F697463 || (sub_1DB50BA30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x416572756C696166 && a2 == 0xED00006E6F697463)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DB50BA30();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t AnyIntentModel.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, uint64_t a5@<X1>)
{
  v9 = type metadata accessor for SidepackedIntent(0, a5, a2, a3);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v13 = *(a2 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  (*(v13 + 16))(&v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v15);
  if (swift_dynamicCast())
  {
    (*(v10 + 8))(v12, v9);
    v21 = a2;
    v22 = a3;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v20);
    (*(v13 + 32))(boxed_opaque_existential_0, a1, a2);
  }

  else
  {
    (*(a3 + 40))(&v20, a2, a3);
    (*(v13 + 8))(a1, a2);
  }

  return sub_1DB2FEA0C(&v20, a4);
}

uint64_t AnyIntentModel.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>)
{
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, v6);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v9);
  AnyIntentModel.init<A>(_:)(v11, v6, v7, a2, a3);
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t AnyIntentModel.kind.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t AnyIntentModel._canonicalized.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v6 = *(a1 + 16);
  v7 = type metadata accessor for SidepackedIntent(0, v6, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15[-v9 - 8];
  sub_1DB30BE90(v4, v15);
  v14 = v6;
  swift_getExtendedExistentialTypeMetadata();
  if (!swift_dynamicCast())
  {
    return sub_1DB30BE90(v4, a2);
  }

  (*(v8 + 8))(v10, v7);
  v11 = v4[3];
  v12 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v11);
  return (*(v12 + 40))(v11, v12);
}

uint64_t AnyIntentModel._canonicalIntentModel.getter@<X0>(uint64_t a1@<X8>)
{
  v7 = *(v1 + 24);
  v3 = __swift_project_boxed_opaque_existential_1(v1, v7);
  *(a1 + 24) = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
  v5 = *(*(v7 - 8) + 16);

  return v5(boxed_opaque_existential_0, v3, v7);
}

uint64_t AnyIntentModel.debugDescription.getter()
{
  v8 = 0;
  v9 = 0xE000000000000000;
  v5 = *(v0 + 3);
  v1 = v0[3];
  v2 = __swift_project_boxed_opaque_existential_1(v0, v1);
  v7 = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v6);
  (*(*(v1 - 8) + 16))(boxed_opaque_existential_0, v2, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC446C8, &qword_1DB5159E0);
  sub_1DB50B530();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v8;
}

void AnyIntentModel.init(deserializing:using:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v70 = a4;
  v7 = sub_1DB50B3E0();
  v69 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v68 - v11;
  v13 = *a2;
  v72 = a1;
  JSONObject.subscript.getter(0x646E696B24, 0xE500000000000000, &v77);
  v14 = JSONObject.string.getter();
  v16 = v15;
  sub_1DB3151CC(&v77);
  if (!v16)
  {
    v14 = static StaticIntent.kind.getter();
    v16 = v17;
  }

  if (v14 == static StaticIntent.kind.getter() && v16 == v18)
  {

LABEL_7:

    v20 = sub_1DB3A0030(a3, type metadata accessor for StaticIntent);
    v22 = v72;
    if (v20)
    {
      goto LABEL_8;
    }

    v28 = type metadata accessor for StaticIntent(0, a3, v26, v27);
    goto LABEL_11;
  }

  v19 = sub_1DB50BA30();

  if (v19)
  {
    goto LABEL_7;
  }

  if (v14 == static SidepackedIntent.kind.getter() && v16 == v32)
  {

LABEL_19:

    v20 = sub_1DB3A0030(a3, type metadata accessor for SidepackedIntent);
    v22 = v72;
    if (v20)
    {
LABEL_8:
      v23 = v20;
      v24 = v21;
      MEMORY[0x1EEE9AC00](v20);
      sub_1DB3171C0(v22, v76);
      *&v73 = v13;
      v25 = v71;
      (*(v24 + 8))(v76, &v73, v23, v24);
      if (v25)
      {
LABEL_9:
        sub_1DB3151CC(v22);
        return;
      }

      *&v73 = a3;
      ExtendedExistentialTypeMetadata = swift_getExtendedExistentialTypeMetadata();
      if (swift_dynamicCast())
      {
        goto LABEL_16;
      }

LABEL_21:
      sub_1DB315178();
      swift_allocError();
      v31 = MEMORY[0x1E69E7CC0];
      *v30 = ExtendedExistentialTypeMetadata;
      goto LABEL_22;
    }

    v28 = type metadata accessor for SidepackedIntent(0, a3, v36, v37);
LABEL_11:
    v29 = v28;
    sub_1DB315178();
    swift_allocError();
    v31 = MEMORY[0x1E69E7CC0];
    *v30 = v29;
LABEL_22:
    v30[1] = v31;
    v30[2] = 0;
    v30[3] = 0;
    swift_willThrow();
    v38 = v22;
LABEL_23:
    sub_1DB3151CC(v38);
    return;
  }

  v35 = sub_1DB50BA30();

  if (v35)
  {
    goto LABEL_19;
  }

  sub_1DB316804(0xD00000000000001FLL, 0x80000001DB52BEC0, v13, &v77);
  if (!v78)
  {

    v46 = 0x20000001F56FF8D0uLL;
    sub_1DB315178();
    swift_allocError();
    *v47 = 0xD00000000000001FLL;
    v47[1] = 0x80000001DB52BEC0;
LABEL_31:
    v47[2] = v46;
    v47[3] = 0;
    swift_willThrow();
    v38 = v72;
    goto LABEL_23;
  }

  v39 = sub_1DB48AAB0(v14, v16, a3, a3);
  v41 = v40;
  v42 = v39;

  if (!v42)
  {

    v46 = type metadata accessor for AnyIntentModel(0, a3, v48, v49) | 0x6000000000000000;
    sub_1DB315178();
    swift_allocError();
    *v47 = v14;
    v47[1] = v16;
    goto LABEL_31;
  }

  v81 = v42;
  v82 = v41;
  *&v77 = a3;
  swift_getExtendedExistentialTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC446D0, &qword_1DB515A20);
  v43 = swift_dynamicCast();
  if (v43)
  {
    v44 = v73;
    MEMORY[0x1EEE9AC00](v43);
    v22 = v72;
    sub_1DB3171C0(v72, v76);
    v84[0] = v13;
    v45 = v71;
    (*(*(&v44 + 1) + 8))(v76, v84, v44, *(&v44 + 1));
    if (v45)
    {
      goto LABEL_9;
    }

    v84[0] = a3;
    ExtendedExistentialTypeMetadata = swift_getExtendedExistentialTypeMetadata();
    if (swift_dynamicCast())
    {
LABEL_16:
      sub_1DB3151CC(v22);
      sub_1DB2FEA0C(v76, &v77);
      v34 = &v77;
LABEL_17:
      sub_1DB2FEA0C(v34, v70);
      return;
    }

    goto LABEL_21;
  }

  v50 = v42;
  v84[0] = v42;
  v84[1] = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC446D8, &qword_1DB515A28);
  v51 = swift_dynamicCast();
  v52 = v72;
  if (!v51)
  {

    sub_1DB315178();
    swift_allocError();
    v58 = MEMORY[0x1E69E7CC0];
    *v59 = v50;
    v59[1] = v58;
    v59[2] = 0;
    v59[3] = 0;
    swift_willThrow();
    v38 = v52;
    goto LABEL_23;
  }

  v53 = v81;
  v68[1] = v83;
  sub_1DB3171C0(v72, &v77);
  *&v76[0] = v13;
  v54 = _sSD7JetCores17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(v76);
  v55 = MEMORY[0x1E69E7CC0];
  v79 = v54;
  v80 = MEMORY[0x1E69E7CC0];
  MEMORY[0x1EEE9AC00](v54);
  v74 = &type metadata for _JSONObjectDecoder;
  v75 = sub_1DB34A154();
  *&v73 = swift_allocObject();
  sub_1DB34A1A8(&v77, v73 + 16);
  v56 = v71;
  sub_1DB50ADB0();
  v57 = v56;
  if (v56)
  {
    sub_1DB34A204(&v77);
  }

  else
  {
    v84[4] = a3;
    v60 = swift_getExtendedExistentialTypeMetadata();
    if (swift_dynamicCast())
    {
      sub_1DB3151CC(v72);
      sub_1DB34A204(&v77);
      sub_1DB2FEA0C(&v73, v76);
      v34 = v76;
      goto LABEL_17;
    }

    sub_1DB315178();
    v57 = swift_allocError();
    *v61 = v60;
    v61[1] = v55;
    v61[2] = 0;
    v61[3] = 0;
    swift_willThrow();
    sub_1DB34A204(&v77);
  }

  v62 = v72;
  *&v77 = v57;
  v63 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
  if (swift_dynamicCast())
  {

    v64 = v69;
    (*(v69 + 32))(v9, v12, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC470F0, &unk_1DB50F4B0);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_1DB50EE90;
    *(v65 + 32) = swift_allocError();
    (*(v64 + 16))(v66, v9, v7);
    sub_1DB315178();
    swift_allocError();
    *v67 = v53;
    v67[1] = v65;
    v67[2] = 0;
    v67[3] = 0;
    swift_willThrow();
    sub_1DB3151CC(v62);
    (*(v64 + 8))(v9, v7);
  }

  else
  {
    sub_1DB3151CC(v62);
  }
}