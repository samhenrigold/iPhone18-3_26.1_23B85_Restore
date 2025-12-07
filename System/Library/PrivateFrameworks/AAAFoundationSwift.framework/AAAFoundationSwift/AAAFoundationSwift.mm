id ExponentialRetryScheduler.init(maxRetries:power:schedulerDelay:)(uint64_t a1, uint64_t a2, double a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR___AAFExponentialRetryScheduler_currentRetry] = 0;
  *&v3[OBJC_IVAR___AAFExponentialRetryScheduler_maxRetries] = a1;
  *&v3[OBJC_IVAR___AAFExponentialRetryScheduler_power] = a3;
  sub_1B99A183C(a2, &v11, &qword_1EBBDD290, &qword_1B99F8720);
  if (v12)
  {
    sub_1B99A1904(&v11, &v13);
  }

  else
  {
    v14 = &type metadata for DefaultSchedulerDelay;
    v15 = &off_1F37B5660;
  }

  sub_1B99A1904(&v13, &v3[OBJC_IVAR___AAFExponentialRetryScheduler_schedulerDelay]);
  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  sub_1B99A18A4(a2, &qword_1EBBDD290, &qword_1B99F8720);
  return v8;
}

uint64_t sub_1B99A183C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B99A18A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B99A1904(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1B99A1ABC()
{
  _Block_release(*(v0 + 16));
  _Block_release(*(v0 + 24));
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B99A1B14(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B99A3FAC;

  return sub_1B99A1BCC(a1, v4);
}

uint64_t sub_1B99A1BCC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B99A3FB0;

  return v6(a1);
}

uint64_t sub_1B99A1CC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B99A3FAC;

  return sub_1B99A1D90(a1, v4, v5, v6);
}

uint64_t sub_1B99A1D90(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1B99A3EB8;

  return v7();
}

uint64_t sub_1B99A1E78()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B99A3FAC;

  return sub_1B99A1F38(v2, v3, v4);
}

uint64_t sub_1B99A1F38(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1B99A3FAC;

  return v6();
}

uint64_t sub_1B99A2020()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B99A3EB8;

  return sub_1B99A2CD4(v2, v3, v5, v4);
}

os_activity_t sub_1B99A20E0@<X0>(char *description@<X0>, void *dso@<X2>, os_activity_t *a3@<X8>)
{
  if (dso && description)
  {
    if (qword_1ED99E0D0 != -1)
    {
      swift_once();
    }

    result = _os_activity_create(dso, description, qword_1ED99E0E0, OS_ACTIVITY_FLAG_DEFAULT);
    *a3 = result;
  }

  else
  {
    if (qword_1ED99EB40 != -1)
    {
      swift_once();
    }

    v7 = sub_1B99F3974();
    __swift_project_value_buffer(v7, qword_1ED99EC18);
    v8 = sub_1B99F3954();
    v9 = sub_1B99F40C4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1B99BFCEC(3029639152, 0xA400000000000000, &v12);
      _os_log_impl(&dword_1B99A0000, v8, v9, "%s Failed to create OS Activity", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1BFAE1C50](v11, -1, -1);
      MEMORY[0x1BFAE1C50](v10, -1, -1);
    }

    result = sub_1B99F43D4();
    __break(1u);
  }

  return result;
}

void sub_1B99A22B8()
{
  v1 = v0;
  if (v0[5])
  {
    v2 = sub_1B99F40D4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC530, &qword_1B99F5C30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1B99F5C20;
    v5 = v0[2];
    v4 = v0[3];
    *(v3 + 56) = MEMORY[0x1E69E6158];
    *(v3 + 64) = sub_1B99A24C8();
    *(v3 + 32) = v5;
    *(v3 + 40) = v4;
    sub_1B99A2A94();

    v6 = sub_1B99F41A4();
    sub_1B99F3944(v2, &dword_1B99A0000, v6, "Closing transaction - %@", 24, 2, v3);

    v7 = v1[5];
    if (v7)
    {
      swift_beginAccess();

      os_activity_scope_leave((v7 + 24));
      swift_endAccess();
    }

    v1[5] = 0;

    v1[4] = 0;
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = sub_1B99F40C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC530, &qword_1B99F5C30);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1B99F5C20;
    v11 = v0[2];
    v10 = v1[3];
    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 64) = sub_1B99A24C8();
    *(v9 + 32) = v11;
    *(v9 + 40) = v10;
    sub_1B99A2A94();

    v12 = sub_1B99F41A4();
    sub_1B99F3944(v8, &dword_1B99A0000, v12, "Transaction already closed - %@", 31, 2, v9);
  }
}

unint64_t sub_1B99A24C8()
{
  result = qword_1ED99DF48[0];
  if (!qword_1ED99DF48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED99DF48);
  }

  return result;
}

uint64_t OSActivity.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t OSTransaction.__deallocating_deinit()
{
  v1 = v0;
  if (v0[5])
  {
    v2 = sub_1B99F40C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC530, &qword_1B99F5C30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1B99F5C20;
    v5 = v0[2];
    v4 = v0[3];
    *(v3 + 56) = MEMORY[0x1E69E6158];
    *(v3 + 64) = sub_1B99A24C8();
    *(v3 + 32) = v5;
    *(v3 + 40) = v4;
    sub_1B99A2A94();

    v6 = sub_1B99F41A4();
    sub_1B99F3944(v2, &dword_1B99A0000, v6, "Transaction left open - %@. Call complete() on this transaction!", 64, 2, v3);
  }

  sub_1B99A22B8();

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v1, 48, 7);
}

uint64_t static OSTransaction.named(_:block:)(char *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = a3;
  v8 = swift_allocObject();
  OSTransaction.init(name:)(a1, a2, v5);
  a4(v8);
}

void *OSTransaction.init(name:)(char *a1, uint64_t a2, unsigned int a3)
{
  v4 = v3;
  v8 = sub_1B99F38D4();
  v9 = *(v8 - 8);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v33 - v12;
  v4[4] = 0;
  v4[5] = 0;
  v34 = a3;
  v33 = a2;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_12;
  }

  v12 = a1 >> 32;
  if (a1 >> 32)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    v12 = a1 >> 16;
    if (a1 >> 16 <= 0x10)
    {
      if (a1 <= 0x7F)
      {
        v14 = a1 + 1;
LABEL_9:
        v35 = (v14 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v14) >> 3))));
LABEL_10:
        v35 = sub_1B99F3C74();
        v36 = v15;

        MEMORY[0x1BFAE0580](46, 0xE100000000000000);

        v16 = v35;
        v17 = v36;
        sub_1B99F38C4();
        v18 = sub_1B99F38B4();
        v20 = v19;
        (*(v9 + 8))(v13, v8);
        v35 = v16;
        v36 = v17;

        MEMORY[0x1BFAE0580](v18, v20);

        v22 = v35;
        v21 = v36;
        v4[2] = v35;
        v4[3] = v21;

        v23 = sub_1B99F40D4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC530, &qword_1B99F5C30);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_1B99F5C20;
        *(v24 + 56) = MEMORY[0x1E69E6158];
        *(v24 + 64) = sub_1B99A24C8();
        *(v24 + 32) = v22;
        *(v24 + 40) = v21;
        sub_1B99A2A94();

        v25 = sub_1B99F41A4();
        sub_1B99F3944(v23, &dword_1B99A0000, v25, "Opening transaction - %@", 24, 2, v24, v33);

        sub_1B99F3C64();

        v26 = os_transaction_create();

        v4[4] = v26;
        swift_unknownObjectRelease();
        type metadata accessor for OSActivity();
        swift_allocObject();
        v4[5] = sub_1B99A2C24(a1, v34, v27);

        return v4;
      }

LABEL_14:
      v28 = (a1 & 0x3F) << 8;
      v29 = (a1 >> 6) + v28 + 33217;
      v30 = (v28 | (a1 >> 6) & 0x3F) << 8;
      v31 = (a1 >> 18) + ((v30 | (a1 >> 12) & 0x3F) << 8) - 2122219023;
      v32 = (a1 >> 12) + v30 + 8487393;
      if (v12)
      {
        v14 = v31;
      }

      else
      {
        v14 = v32;
      }

      if (a1 < 0x800)
      {
        v14 = v29;
      }

      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B99A2A94()
{
  result = qword_1ED99DF40;
  if (!qword_1ED99DF40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED99DF40);
  }

  return result;
}

char *sub_1B99A2B04@<X0>(void *dso@<X3>, char *result@<X0>, char a3@<W2>, unint64_t a4@<X8>)
{
  if ((a3 & 1) == 0)
  {
    if (result)
    {
      sub_1B99A20E0(result, dso, description);
      return *description;
    }

    __break(1u);
    goto LABEL_12;
  }

  a4 = result >> 32;
  if (result >> 32)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((result & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    return result;
  }

  a4 = result >> 16;
  if (result >> 16 > 0x10)
  {
    goto LABEL_13;
  }

  if (result > 0x7F)
  {
LABEL_14:
    v5 = (result & 0x3F) << 8;
    v6 = (result >> 6) + v5 + 33217;
    v7 = (v5 | (result >> 6) & 0x3F) << 8;
    v8 = (result >> 18) + ((v7 | (result >> 12) & 0x3F) << 8) - 2122219023;
    v9 = (result >> 12) + v7 + 8487393;
    if (a4)
    {
      v4 = v8;
    }

    else
    {
      v4 = v9;
    }

    if (result < 0x800)
    {
      v4 = v6;
    }

    goto LABEL_9;
  }

  v4 = result + 1;
LABEL_9:
  *description = (v4 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v4) >> 3))));
  sub_1B99A20E0(description, dso, &v10);
  return v10;
}

uint64_t sub_1B99A2C24@<X0>(char *a1@<X0>, char a2@<W2>, unint64_t a3@<X8>)
{
  *(v3 + 32) = 0;
  *(v3 + 24) = 0;
  *(v3 + 16) = sub_1B99A2B04(&dword_1B99A0000, a1, a2, a3);
  swift_beginAccess();
  v4 = swift_unknownObjectRetain();
  os_activity_scope_enter(v4, (v3 + 24));
  swift_endAccess();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1B99A2CD4(const void *a1, const void *a2, const void *a3, void *a4)
{
  v4[10] = a4;
  v8 = _Block_copy(a1);
  v9 = _Block_copy(a2);
  v4[11] = _Block_copy(a3);
  v10 = swift_allocObject();
  v4[12] = v10;
  *(v10 + 16) = v8;
  if (v9)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    v12 = sub_1B99A3C4C;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  v4[13] = v12;
  v4[14] = v11;
  v13 = a4;

  return MEMORY[0x1EEE6DFA0](sub_1B99A2E08, 0, 0);
}

uint64_t sub_1B99A2DCC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B99A2E08()
{

  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_1B99A3CCC;
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[12];
  v5 = v0[10];

  return sub_1B99A2EE4((v0 + 2), v2, v3, 0, 0, v5, sub_1B99A3310, v4);
}

uint64_t sub_1B99A2EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[24] = a7;
  v8[25] = a8;
  v8[22] = a5;
  v8[23] = a6;
  v8[20] = a3;
  v8[21] = a4;
  v8[18] = a1;
  v8[19] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1B99A3208, 0, 0);
}

uint64_t sub_1B99A2F60(uint64_t a1, void (*a2)(uint64_t (*)(), uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBBDD2B0, qword_1B99F8858);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  (*(v5 + 16))(&v11 - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  a2(sub_1B99A3428, v9);
}

uint64_t sub_1B99A30B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBBDD2B0, qword_1B99F8858);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B99A314C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[4] = a1;
  v7[5] = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1B99A3368;
  v7[3] = &block_descriptor_3;
  v4 = _Block_copy(v7);
  v5 = *(a3 + 16);

  v5(a3, v4);
  _Block_release(v4);
}

uint64_t sub_1B99A3208()
{
  v1 = swift_task_alloc();
  *(v0 + 208) = v1;
  *(v1 + 16) = *(v0 + 192);
  v2 = swift_task_alloc();
  *(v0 + 216) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  *v2 = v0;
  v2[1] = sub_1B99A3570;
  v4 = *(v0 + 144);

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD00000000000001CLL, 0x80000001B99FABB0, sub_1B99A3144, v1, v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B99A3368(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a2;
    sub_1B99A3418(&v8, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  swift_unknownObjectRetain();
  v6 = a3;
  v5(v10, a3);

  return sub_1B99A18A4(v10, &qword_1EBBDC658, &qword_1B99F5F40);
}

_OWORD *sub_1B99A3418(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1B99A3428(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBBDD2B0, qword_1B99F8858);

  return sub_1B99A34B4(a1, a2);
}

uint64_t sub_1B99A34B4(uint64_t a1, id a2)
{
  if (a2)
  {
    v4[0] = a2;
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBBDD2B0, qword_1B99F8858);
    return sub_1B99F3E54();
  }

  else
  {
    sub_1B99A183C(a1, v4, &qword_1EBBDC658, &qword_1B99F5F40);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBBDD2B0, qword_1B99F8858);
    return sub_1B99F3E64();
  }
}

uint64_t sub_1B99A3570()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_1B99A368C;
  }

  else
  {

    v2 = sub_1B99DAAF8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B99A368C()
{
  v1 = *(v0 + 152);

  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  v2 = *(v0 + 224);
  if (v1)
  {
    v3 = *(v0 + 152);
    v4 = v2;
    if ((v3(v2) & 1) == 0)
    {
      v5 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v6 = v2;
  }

  v7 = *(v0 + 168);
  if (v7)
  {
    v40 = (v7 + *v7);
    v8 = swift_task_alloc();
    *(v0 + 232) = v8;
    *v8 = v0;
    v8[1] = sub_1B99DAB60;
    v9 = *(v0 + 224);

    return v40(v9);
  }

  v5 = 1;
LABEL_10:
  if (qword_1ED99EB40 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 184);
  v12 = sub_1B99F3974();
  *(v0 + 248) = __swift_project_value_buffer(v12, qword_1ED99EC18);
  v13 = v11;
  v14 = sub_1B99F3954();
  v15 = sub_1B99F40D4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 184);
    v17 = swift_slowAlloc();
    *v17 = 67109376;
    *(v17 + 4) = v5;
    *(v17 + 8) = 1024;
    *(v17 + 10) = *&v16[OBJC_IVAR___AAFExponentialRetryScheduler_currentRetry] < *&v16[OBJC_IVAR___AAFExponentialRetryScheduler_maxRetries];

    _os_log_impl(&dword_1B99A0000, v14, v15, "Should retry: %{BOOL}d, can retry: %{BOOL}d", v17, 0xEu);
    MEMORY[0x1BFAE1C50](v17, -1, -1);
  }

  else
  {

    v14 = *(v0 + 184);
  }

  v18 = OBJC_IVAR___AAFExponentialRetryScheduler_maxRetries;
  *(v0 + 256) = OBJC_IVAR___AAFExponentialRetryScheduler_currentRetry;
  *(v0 + 264) = v18;
  sub_1B99A183C(v0 + 16, v0 + 48, &qword_1EBBDD2A8, &qword_1B99F8850);
  v19 = *(v0 + 224);
  if (*(v0 + 72) == 1)
  {
    *(v0 + 272) = v19;
    sub_1B99A18A4(v0 + 48, &qword_1EBBDD2A8, &qword_1B99F8850);
    if (v5)
    {
      v20 = *(v0 + 184);
      v21 = *&v20[*(v0 + 256)];
      v22 = *&v20[*(v0 + 264)];
      *(v0 + 280) = v22;
      if (v21 < v22)
      {
        v23 = v20;
        v24 = sub_1B99F3954();
        v25 = sub_1B99F40D4();
        v26 = os_log_type_enabled(v24, v25);
        v27 = *(v0 + 184);
        if (v26)
        {
          v28 = swift_slowAlloc();
          *v28 = 134218240;
          *(v28 + 4) = v21;
          *(v28 + 12) = 2048;
          *(v28 + 14) = v22;

          _os_log_impl(&dword_1B99A0000, v24, v25, "Scheduling to retry the task. retryIndex: %ld, maxRetry: %ld", v28, 0x16u);
          MEMORY[0x1BFAE1C50](v28, -1, -1);
        }

        else
        {
        }

        v36 = swift_task_alloc();
        *(v0 + 288) = v36;
        *v36 = v0;
        v36[1] = sub_1B99DB564;
        v37 = *(v0 + 192);
        v38 = *(v0 + 200);
        v39 = *(v0 + 184);

        return sub_1B99DE050(v0 + 112, v39, v37, v38);
      }
    }

    v19 = *(v0 + 272);
  }

  else
  {
    sub_1B99A18A4(v0 + 48, &qword_1EBBDD2A8, &qword_1B99F8850);
  }

  sub_1B99A183C(v0 + 16, v0 + 80, &qword_1EBBDD2A8, &qword_1B99F8850);
  if (*(v0 + 104) == 1)
  {
    sub_1B99A18A4(v0 + 80, &qword_1EBBDD2A8, &qword_1B99F8850);
    v29 = sub_1B99F40C4();
    v30 = sub_1B99F3954();
    if (os_log_type_enabled(v30, v29))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1B99A0000, v30, v29, "All retry failed", v31, 2u);
      MEMORY[0x1BFAE1C50](v31, -1, -1);
    }

    v32 = *(v0 + 224);

    swift_willThrow();
    sub_1B99A18A4(v0 + 16, &qword_1EBBDD2A8, &qword_1B99F8850);

    v33 = *(v0 + 8);
  }

  else
  {
    v34 = *(v0 + 224);
    v35 = *(v0 + 144);
    sub_1B99A18A4(v0 + 16, &qword_1EBBDD2A8, &qword_1B99F8850);

    v41 = *(v0 + 96);
    *v35 = *(v0 + 80);
    v35[1] = v41;

    v33 = *(v0 + 8);
  }

  return v33();
}

uint64_t sub_1B99A3C4C()
{
  v1 = *(v0 + 16);
  v2 = sub_1B99F36D4();
  v3 = (*(v1 + 16))(v1, v2);

  return v3;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1B99A3CCC()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1B99A3DE0;
  }

  else
  {
    v2 = sub_1B99DEE44;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B99A3DE0()
{
  v1 = *(v0 + 128);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 88);

  sub_1B99A3EA8(v3, v2);

  v5 = sub_1B99F36D4();

  (v4)[2](v4, 0, v5);
  _Block_release(v4);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1B99A3EA8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B99A3EB8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B99A3FB0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroy_13Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
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

uint64_t Data.hexString.getter(unint64_t a1, unint64_t a2)
{
  sub_1B99A42EC(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCD10, qword_1B99F7400);
  sub_1B99A468C();
  v2 = sub_1B99F3B94();

  return v2;
}

char *sub_1B99A41E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC4F8, &unk_1B99F9B20);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1B99A42EC(unint64_t a1, unint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v46 = MEMORY[0x1E69E7CC0];
    v32 = a2 >> 62;
    sub_1B99A4668(0, v5 & ~(v5 >> 63), 0);
    v9 = v32;
    if (v32)
    {
      if (v32 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v33 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v46;
    v30 = &v34 + v10;
    do
    {
      if (v11 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
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
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v33 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = sub_1B99F3624();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = sub_1B99F3634();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v20 = v30[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = sub_1B99F3624();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = sub_1B99F3634();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v32;
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC530, &qword_1B99F5C30);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1B99F5C20;
      *(v21 + 56) = MEMORY[0x1E69E7508];
      *(v21 + 64) = MEMORY[0x1E69E7558];
      *(v21 + 32) = v20;
      v22 = sub_1B99F3C34();
      v46 = v8;
      v25 = *(v8 + 16);
      v24 = *(v8 + 24);
      if (v25 >= v24 >> 1)
      {
        v29 = v22;
        v27 = v23;
        sub_1B99A4668((v24 > 1), v25 + 1, 1);
        v9 = v32;
        v23 = v27;
        v22 = v29;
        v8 = v46;
      }

      *(v8 + 16) = v25 + 1;
      v26 = v8 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      ++v11;
    }

    while (v12 != v5);
  }

  return v8;
}

char *sub_1B99A4668(char *a1, int64_t a2, char a3)
{
  result = sub_1B99A41E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1B99A468C()
{
  result = qword_1ED99DDA8[0];
  if (!qword_1ED99DDA8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDCD10, qword_1B99F7400);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED99DDA8);
  }

  return result;
}

uint64_t sub_1B99A46F0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B99A4738()
{
  swift_unknownObjectRelease();

  sub_1B99A92F0(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B99A4780()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B99A47B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC500, &unk_1B99F5B50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B99A48CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B99A4904()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B99A4944()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B99A497C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B99A4A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable();

  return sub_1B99F3FC4();
}

uint64_t sub_1B99A4A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B99A4B1C()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v2 = *(sub_1B99F4A34() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    (*(*(v1 - 8) + 8))(v0 + v4, v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B99A4C40()
{
  sub_1B99B2EE8(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1B99A4C8C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B99A4CCC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B99A4D04()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B99A4D3C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B99A4D84()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B99A4DC4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B99A4E80()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B99A4ED8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B99A4F78()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1B99A5024()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B99A506C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B99A50C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B99A50F8(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_1B99A5128()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B99A5168()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B99A51A0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B99A51E0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v1 = sub_1B99F3E74();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1B99A52E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B99A532C()
{
  MEMORY[0x1BFAE1CF0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B99A5368()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B99A53A0()
{
  v1 = *(v0 + 16);
  v2 = *(*(v0 + 24) - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + *(v2 + 64) + v6) & ~v6;
  v8 = v3 | v6;
  v9 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  (*(v5 + 8))(v0 + v7, v1);

  return MEMORY[0x1EEE6BDD0](v0, v9 + 16, v8 | 7);
}

uint64_t sub_1B99A54B0()
{
  v1 = *(v0 + 16);
  v2 = *(*(v0 + 24) - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  v7 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6;
  v8 = *(v5 + 64);
  v9 = v3 | v6;
  (*(v2 + 8))(v0 + v4);

  (*(v5 + 8))(v0 + v7, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + v8, v9 | 7);
}

uint64_t sub_1B99A55C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1B99A5600()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B99A56BC()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B99A573C()
{
  v1 = *(v0 + 48);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

id sub_1B99A5828@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___AAFPhoneNumberFormatter_defaultCountryCode;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1B99A58F4()
{
  v1 = sub_1B99F3A24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B99A59C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B99A5A0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1B99A5A5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  *a2 = v4;
  a2[1] = v5;
  return sub_1B99CA6A4(v4, v5);
}

unint64_t sub_1B99A5AB4@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  *a2 = v4;
  a2[1] = v5;
  return sub_1B99CAA28(v4, v5);
}

uint64_t get_enum_tag_for_layout_string_18AAAFoundationSwift17DictionaryDecoderC20DataDecodingStrategyO_0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1B99A5B1C(void *result, int a2)
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

uint64_t sub_1B99A5B3C()
{

  if (*(v0 + 32))
  {
  }

  sub_1B99CA900(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  if (*(v0 + 72) >= 2uLL)
  {
  }

  if (*(v0 + 112))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 88));
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1B99A5BBC()
{

  if (*(v0 + 32))
  {
  }

  sub_1B99CA900(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  if (*(v0 + 72) >= 2uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1B99A5C50()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B99A5C88()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B99A5CD8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B99A5D74()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 16, v2 | 7);
}

uint64_t sub_1B99A5E0C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 16, v2 | 7);
}

uint64_t sub_1B99A5EA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B99A5EE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1B99A5F30@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  *a2 = v4;
  a2[1] = v5;
  return sub_1B99CA6A4(v4, v5);
}

unint64_t sub_1B99A5F88@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  *a2 = v4;
  a2[1] = v5;
  return sub_1B99CAA28(v4, v5);
}

uint64_t sub_1B99A5FF4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B99A602C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B99A6064()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B99A60AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B99A60FC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  if (*(v0 + 48))
  {
  }

  sub_1B99CA900(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  if (*(v0 + 88) >= 2uLL)
  {
  }

  v5 = (v3 + 152) & ~v3;

  (*(v2 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v4, v3 | 7);
}

uint64_t sub_1B99A6260()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B99A62A0()
{
  v1 = *(v0 + 40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

void *BroadcastMessageSender.__allocating_init<A, B>(encoder:transport:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_allocObject();
  v10 = sub_1B99A6AD0(a1, a2, a3, a4);
  (*(*(a4 - 8) + 8))(a2, a4);
  (*(*(a3 - 8) + 8))(a1, a3);
  return v10;
}

void *BroadcastMessageSender.init<A, B>(encoder:transport:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1B99A6AD0(a1, a2, a3, a4);
  (*(*(a4 - 8) + 8))(a2, a4);
  (*(*(a3 - 8) + 8))(a1, a3);
  return v10;
}

uint64_t sub_1B99A65C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[5];
  v10 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v9);
  return (*(v10 + 8))(a1, a2, a3, a4, v9, v10);
}

uint64_t BroadcastMessageSender.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t *sub_1B99A66D0(uint64_t a1)
{
  v3 = *v1;
  (*(*(*(*v1 + 88) - 8) + 32))(v1 + *(*v1 + 112));
  (*(*(*(v3 + 80) - 8) + 32))(v1 + *(*v1 + 120), a1);
  return v1;
}

uint64_t sub_1B99A67AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *v4;
  v8 = v17[12];
  v9 = v17[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v16 - v11;
  v13 = v18;
  result = (*(v8 + 16))(a1, a2, a4, v9, v8);
  if (!v13)
  {
    v15 = v16;
    (*(v17[13] + 16))(v12, v17[11]);
    return (*(v15 + 8))(v12, AssociatedTypeWitness);
  }

  return result;
}

uint64_t *sub_1B99A698C()
{
  v1 = *v0;
  (*(*(*(*v0 + 88) - 8) + 8))(v0 + *(*v0 + 112));
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 120));
  return v0;
}

uint64_t sub_1B99A6A58()
{
  v0 = sub_1B99A698C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void *sub_1B99A6AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(a4 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[0] = v18;
  v25[1] = v19;
  v25[2] = v20;
  v25[3] = v21;
  v22 = type metadata accessor for InternalBroadcastMessageSender(0, v25);
  (*(v15 + 16))(v17, a1, a3);
  (*(v10 + 16))(v13, a2, a4);
  swift_allocObject();
  v23 = sub_1B99A66D0(v17);
  v5[5] = v22;
  v5[6] = &off_1F37B2E98;
  v5[2] = v23;
  return v5;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1B99A6D50(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
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

uint64_t sub_1B99A6E4C(uint64_t a1, int a2)
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

uint64_t sub_1B99A6E6C(uint64_t result, int a2, int a3)
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

uint64_t sub_1B99A6EC8(uint64_t a1, int a2)
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

uint64_t sub_1B99A6EE8(uint64_t result, int a2, int a3)
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

void sub_1B99A6F24(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_1B99A6F88()
{
  v1 = *v0;
  sub_1B99F4A04();
  MEMORY[0x1BFAE12E0](v1);
  return sub_1B99F4A24();
}

uint64_t sub_1B99A6FFC(uint64_t a1)
{
  v2 = *v1;
  sub_1B99F4A04();
  MEMORY[0x1BFAE12E0](v2);
  return sub_1B99F4A24();
}

void *PushService.__allocating_init(machPortName:connectionQueue:delegates:apsEnvironment:pushTopics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  swift_defaultActor_initialize();
  v14[21] = 0;
  v14[22] = 0;
  v14[14] = a1;
  v14[15] = a2;
  v14[19] = a5;
  v14[20] = a6;
  v14[16] = a3;
  v14[17] = a4;
  v14[18] = a7;
  return v14;
}

void *PushService.init(machPortName:connectionQueue:delegates:apsEnvironment:pushTopics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_defaultActor_initialize();
  v7[21] = 0;
  v7[22] = 0;
  v7[14] = a1;
  v7[15] = a2;
  v7[19] = a5;
  v7[20] = a6;
  v7[16] = a3;
  v7[17] = a4;
  v7[18] = a7;
  return v7;
}

uint64_t PushService.__allocating_init(machPortName:connectionQueue:delegates:apsEnvironment:pushTopics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v7[9] = swift_allocObject();

  return MEMORY[0x1EEE6DFA0](sub_1B99A71B4, 0, 0);
}

uint64_t sub_1B99A71B4()
{
  v1 = v0[9];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  swift_defaultActor_initialize();
  v1[21] = 0;
  v1[22] = 0;
  v1[14] = v5;
  v1[15] = v4;
  v1[16] = v3;
  v6 = v3;
  v9 = (v2 + *v2);
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_1B99A72D4;

  return v9();
}

uint64_t sub_1B99A72D4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1B99A73D4, 0, 0);
}

uint64_t sub_1B99A73D4()
{
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[5];
  v2[19] = v0[11];
  v2[20] = v1;
  v2[17] = v4;
  v2[18] = v3;
  return MEMORY[0x1EEE6DFA0](sub_1B99A7400, v2, 0);
}

uint64_t sub_1B99A7400()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1(v2);
}

uint64_t PushService.init(machPortName:connectionQueue:delegates:apsEnvironment:pushTopics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B99A7490, 0, 0);
}

uint64_t sub_1B99A7490()
{
  v1 = v0[9];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  swift_defaultActor_initialize();
  v1[21] = 0;
  v1[22] = 0;
  v1[14] = v5;
  v1[15] = v4;
  v1[16] = v3;
  v6 = v3;
  v9 = (v2 + *v2);
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_1B99A75B0;

  return v9();
}

uint64_t sub_1B99A75B0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1B99A76B0, 0, 0);
}

uint64_t sub_1B99A76B0()
{
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[5];
  v2[19] = v0[11];
  v2[20] = v1;
  v2[17] = v4;
  v2[18] = v3;
  return MEMORY[0x1EEE6DFA0](sub_1B99A9D50, v2, 0);
}

uint64_t sub_1B99A76FC(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v12 = *(v3 + 152);
  v4 = *(v3 + 112);
  v5 = *(v3 + 120);
  v6 = *(v3 + 128);
  v7 = sub_1B99A9A3C(&qword_1EBBDC470, a2, type metadata accessor for PushService, &protocol conformance descriptor for PushService);
  v8 = swift_task_alloc();
  v2[4] = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v3;
  *(v8 + 32) = v12;
  *(v8 + 48) = v4;
  *(v8 + 56) = v5;
  v9 = swift_task_alloc();
  v2[5] = v9;
  v10 = sub_1B99A7E9C();
  *v9 = v2;
  v9[1] = sub_1B99A785C;

  return MEMORY[0x1EEE6DE38](v2 + 2, v3, v7, 0x6574617669746361, 0xEA00000000002928, sub_1B99A7E8C, v8, v10);
}

uint64_t sub_1B99A785C()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_1B99A79EC;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_1B99A7980;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B99A7980()
{
  v1 = *(v0 + 16);
  sub_1B99A80B8(v1);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1B99A79EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B99A7A74(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a6;
  v36 = a7;
  v32 = a4;
  v33 = a5;
  v34 = a2;
  v39 = sub_1B99F3A44();
  v41 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v37 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1B99F3A84();
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC500, &unk_1B99F5B50);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - v14;
  v16 = swift_allocObject();
  swift_weakInit();
  (*(v12 + 16))(v15, a1, v11);
  v17 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v18 = (v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = v16;
  (*(v12 + 32))(v21 + v17, v15, v11);
  v22 = (v21 + v18);
  v23 = v33;
  *v22 = v32;
  v22[1] = v23;
  v24 = (v21 + v19);
  v25 = v36;
  *v24 = v35;
  v24[1] = v25;
  v26 = v34;
  *(v21 + v20) = v34;
  aBlock[4] = sub_1B99A9980;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B99BDF38;
  aBlock[3] = &block_descriptor;
  v27 = _Block_copy(aBlock);

  v26;
  sub_1B99F3A74();
  v42 = MEMORY[0x1E69E7CC0];
  sub_1B99A9A3C(&qword_1EBBDC508, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC510, &qword_1B99F6FD0);
  sub_1B99A9A84();
  v28 = v37;
  v29 = v39;
  sub_1B99F4224();
  MEMORY[0x1BFAE0A00](0, v10, v28, v27);
  _Block_release(v27);
  (*(v41 + 8))(v28, v29);
  (*(v38 + 8))(v10, v40);
}

unint64_t sub_1B99A7E9C()
{
  result = qword_1EBBDC478;
  if (!qword_1EBBDC478)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBBDC478);
  }

  return result;
}

uint64_t sub_1B99A7EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + 128);
    v8 = objc_allocWithZone(MEMORY[0x1E698CF30]);
    v9 = v7;

    v10 = sub_1B99F3C04();

    v11 = sub_1B99F3C04();

    v12 = [v8 initWithEnvironmentName:v10 namedDelegatePort:v11 queue:v9];

    if (v12)
    {
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC500, &unk_1B99F5B50);
      sub_1B99F3E64();
    }

    else
    {
      sub_1B99A9B30();
      swift_allocError();
      *v16 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC500, &unk_1B99F5B50);
      sub_1B99F3E54();
    }
  }

  else
  {
    sub_1B99A9B30();
    swift_allocError();
    *v14 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC500, &unk_1B99F5B50);
    return sub_1B99F3E54();
  }
}

void sub_1B99A80B8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PushService.PushConnectionDelegateWrapper();
  v5 = objc_allocWithZone(v4);
  swift_weakInit();
  swift_weakAssign();
  v24.receiver = v5;
  v24.super_class = v4;
  v6 = objc_msgSendSuper2(&v24, sel_init);
  v7 = v2[21];
  v2[21] = v6;
  v8 = v6;

  [a1 setDelegate_];
  v9 = v2[18];
  v10 = *(v9 + 16);
  if (v10)
  {
    v22 = a1;
    v11 = sub_1B99A9460(v10, 0);
    v12 = sub_1B99A94E4(&v23, v11 + 4, v10, v9);
    v13 = v23;

    sub_1B99A9978(v13);
    if (v12 != v10)
    {
      __break(1u);
      return;
    }

    a1 = v22;
  }

  v14 = sub_1B99F3D94();

  [a1 _setEnabledTopics_];

  if (qword_1ED99EB40 != -1)
  {
    swift_once();
  }

  v15 = sub_1B99F3974();
  __swift_project_value_buffer(v15, qword_1ED99EC18);

  v16 = sub_1B99F3954();
  v17 = sub_1B99F40D4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v23 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1B99BFCEC(v2[19], v2[20], &v23);
    _os_log_impl(&dword_1B99A0000, v16, v17, "Push service started with environment: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1BFAE1C50](v19, -1, -1);
    MEMORY[0x1BFAE1C50](v18, -1, -1);
  }

  v20 = v2[22];
  v2[22] = a1;
  v21 = a1;
}

uint64_t sub_1B99A8340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1B99F4A04();
  sub_1B99F3B84();
  v6 = sub_1B99F4A24();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1B99F4704() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void sub_1B99A8438(void *a1)
{
  v2 = v1;
  if (qword_1ED99EB40 != -1)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v4 = sub_1B99F3974();
    __swift_project_value_buffer(v4, qword_1ED99EC18);
    v5 = sub_1B99F3954();
    v6 = sub_1B99F40B4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1B99A0000, v5, v6, "Informing delegates of incoming message", v7, 2u);
      MEMORY[0x1BFAE1C50](v7, -1, -1);
    }

    v8 = *(v2 + 136);
    v9 = *(v8 + 16);
    if (!v9)
    {
      break;
    }

    v10 = 0;
    v11 = (v8 + 40);
    while (v10 < *(v8 + 16))
    {
      ++v10;
      v2 = *(v11 - 1);
      v12 = *v11;
      ObjectType = swift_getObjectType();
      v14 = swift_unknownObjectRetain();
      sub_1B99A963C(v14, a1, ObjectType, v12);
      swift_unknownObjectRelease();
      v11 += 2;
      if (v9 == v10)
      {
        return;
      }
    }

    __break(1u);
LABEL_10:
    swift_once();
  }
}

void sub_1B99A858C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1ED99EB40 != -1)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v5 = sub_1B99F3974();
    __swift_project_value_buffer(v5, qword_1ED99EC18);
    v6 = sub_1B99F3954();
    v7 = sub_1B99F40B4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1B99A0000, v6, v7, "Informing delegates of incoming message", v8, 2u);
      MEMORY[0x1BFAE1C50](v8, -1, -1);
    }

    v9 = *(v3 + 136);
    v10 = *(v9 + 16);
    if (!v10)
    {
      break;
    }

    v11 = 0;
    v12 = (v9 + 40);
    while (v11 < *(v9 + 16))
    {
      ++v11;
      v3 = *v12;
      ObjectType = swift_getObjectType();
      v14 = *(v3 + 40);
      swift_unknownObjectRetain();
      v14(a1, a2, ObjectType, v3);
      swift_unknownObjectRelease();
      v12 += 2;
      if (v10 == v11)
      {
        return;
      }
    }

    __break(1u);
LABEL_10:
    swift_once();
  }
}

id *PushService.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PushService.__deallocating_deinit()
{
  PushService.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t dispatch thunk of PushService.__allocating_init(machPortName:connectionQueue:delegates:apsEnvironment:pushTopics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = (*(v7 + 200) + **(v7 + 200));
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_1B99A8928;

  return v18(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1B99A8928(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of PushService.activate()()
{
  v4 = (*(*v0 + 208) + **(*v0 + 208));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1B99A8B34;

  return v4();
}

uint64_t sub_1B99A8B34(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1B99A8C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B99A8C54, a4, 0);
}

uint64_t sub_1B99A8C54()
{
  sub_1B99A858C(v0[3], v0[4]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1B99A8ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B99A8EF4, a4, 0);
}

id sub_1B99A8EF4()
{
  v1 = *(*(v0 + 16) + 144);
  result = [*(v0 + 24) topic];
  if (result)
  {
    v3 = result;
    v4 = sub_1B99F3C24();
    v6 = v5;

    v7 = sub_1B99A8340(v4, v6, v1);

    if (v7)
    {
      sub_1B99A8438(*(v0 + 24));
    }

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B99A916C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PushService.PushConnectionDelegateWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
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

uint64_t sub_1B99A921C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B99A3EB8;

  return sub_1B99A8ED4(a1, v4, v5, v7, v6);
}

uint64_t sub_1B99A92DC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B99A92F0(result, a2);
  }

  return result;
}

uint64_t sub_1B99A92F0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1B99A9344(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B99A3FAC;

  return sub_1B99A8C30(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1B99A940C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void *sub_1B99A9460(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC4F8, &unk_1B99F9B20);
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

void *sub_1B99A94E4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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

uint64_t sub_1B99A963C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v27 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = a3;
  v29 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedTypeWitness();
  v25 = *(v9 - 8);
  v26 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v24 = &v24 - v10;
  v11 = sub_1B99F41C4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v24 - v17;
  (*(AssociatedConformanceWitness + 24))(a2, AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((*(v16 + 48))(v15, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v12 + 8))(v15, v11);
  }

  (*(v16 + 32))(v18, v15, AssociatedTypeWitness);
  v20 = v24;
  (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v22 = v28;
  v21 = v29;
  v23 = (*(v29 + 32))(v20, v28, v29);
  (*(v25 + 8))(v20, v26);
  if (v23)
  {
    (*(v21 + 24))(v18, v22, v21);
  }

  return (*(v16 + 8))(v18, AssociatedTypeWitness);
}

uint64_t sub_1B99A9980()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC500, &unk_1B99F5B50) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = (v0 + v3);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v4);
  v10 = *(v0 + v4 + 8);

  return sub_1B99A7EE8(v5, v0 + v2, v7, v8, v9, v10);
}

uint64_t sub_1B99A9A3C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B99A9A84()
{
  result = qword_1EBBDC518;
  if (!qword_1EBBDC518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC510, &qword_1B99F6FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDC518);
  }

  return result;
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

unint64_t sub_1B99A9B30()
{
  result = qword_1EBBDC520;
  if (!qword_1EBBDC520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDC520);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PushService.PushServiceError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PushService.PushServiceError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B99A9CFC()
{
  result = qword_1EBBDC528;
  if (!qword_1EBBDC528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDC528);
  }

  return result;
}

uint64_t OSTransaction.__allocating_init(name:)(char *a1, uint64_t a2, unsigned int a3)
{
  v6 = swift_allocObject();
  OSTransaction.init(name:)(a1, a2, a3);
  return v6;
}

void *OSTransaction.deinit(uint64_t a1)
{
  v2 = v1;
  if (v1[5])
  {
    v3 = sub_1B99F40C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC530, &qword_1B99F5C30);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1B99F5C20;
    v6 = v1[2];
    v5 = v1[3];
    *(v4 + 56) = MEMORY[0x1E69E6158];
    *(v4 + 64) = sub_1B99A24C8();
    *(v4 + 32) = v6;
    *(v4 + 40) = v5;
    sub_1B99A2A94();

    v7 = sub_1B99F41A4();
    sub_1B99F3944(v3, &dword_1B99A0000, v7, "Transaction left open - %@. Call complete() on this transaction!", 64, 2, v4);
  }

  sub_1B99A22B8();

  swift_unknownObjectRelease();

  return v2;
}

uint64_t static OSTransaction.named(_:block:)(char *a1, uint64_t a2, unsigned int a3, void (*a4)(uint64_t))
{
  swift_initStackObject();
  v8 = OSTransaction.init(name:)(a1, a2, a3);
  a4(v8);
  sub_1B99A22B8();
}

uint64_t static OSTransaction.named(_:block:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 88) = a5;
  *(v6 + 96) = v5;
  *(v6 + 72) = a2;
  *(v6 + 80) = a4;
  *(v6 + 128) = a3;
  *(v6 + 64) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B99A9F6C, 0, 0);
}

{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 80) = a3;
  *(v6 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B99AA2AC, 0, 0);
}

uint64_t sub_1B99A9F6C()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 128);
  *(v0 + 104) = swift_initStackObject();
  OSTransaction.init(name:)(v3, v2, v4);
  v7 = (v1 + *v1);
  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  *v5 = v0;
  v5[1] = sub_1B99AA094;

  return v7();
}

uint64_t sub_1B99AA094()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1B99AA214;
  }

  else
  {
    v2 = sub_1B99AA1A8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B99AA1A8()
{
  sub_1B99A22B8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B99AA214()
{
  sub_1B99A22B8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B99AA2AC()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = *(v0 + 80);
  v5 = swift_allocObject();
  *(v0 + 56) = v5;
  OSTransaction.init(name:)(v3, v2, v4);
  v8 = (v1 + *v1);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_1B99AA3E0;

  return v8(v5);
}

uint64_t sub_1B99AA3E0()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1B99AA558;
  }

  else
  {
    v2 = sub_1B99AA4F4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B99AA4F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B99AA558()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t OSTransaction.description.getter()
{
  sub_1B99F4264();

  MEMORY[0x1BFAE0580](*(v0 + 16), *(v0 + 24));
  return 0x61736E617254534FLL;
}

uint64_t sub_1B99AA634()
{
  v1 = *v0;
  sub_1B99F4264();

  MEMORY[0x1BFAE0580](*(v1 + 16), *(v1 + 24));
  return 0x61736E617254534FLL;
}

uint64_t sub_1B99AA6E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  a4[3] = type metadata accessor for TypedCodingEnvelope(0, a2, v10, v11);
  v14[1] = a3;
  a4[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  return TypedCodingEnvelope.init(value:)(v8, a2, boxed_opaque_existential_1);
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

unint64_t sub_1B99AA89C()
{
  result = qword_1EBBDC538;
  if (!qword_1EBBDC538)
  {
    sub_1B99F39E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDC538);
  }

  return result;
}

uint64_t sub_1B99AA9D4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 112);
  v5 = *(v3 + 120);
  v6 = *(v3 + 128);
  *(v3 + 112) = a1;
  *(v3 + 120) = a2;
  *(v3 + 128) = a3 & 1;
  return sub_1B99AB63C(v4, v5, v6);
}

uint64_t sub_1B99AA9F8@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EBBDC540;
  swift_beginAccess();
  return sub_1B99AB800(v1 + v3, a1);
}

uint64_t sub_1B99AAA50(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC4F0, &qword_1B99F5B20);
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B99AAB14, v1, 0);
}

uint64_t sub_1B99AAB14()
{
  v1 = v0[6];
  v2 = *(v1 + 112);
  v0[9] = v2;
  v3 = *(v1 + 120);
  v0[10] = v3;
  if (*(v1 + 128))
  {
    v4 = v0[7];
    sub_1B99ABF84(v2, v3, 1);
    v5 = swift_task_alloc();
    v0[14] = v5;
    v6 = *(v4 + 80);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC650, &qword_1B99F6A20);
    *v5 = v0;
    v5[1] = sub_1B99AAEA0;
    v8 = v0[5];
    v9 = MEMORY[0x1E69E7288];
    v10 = v2;
    v11 = v6;
  }

  else
  {
    v13 = v0[7];
    v12 = v0[8];
    v14 = qword_1EBBDC540;
    swift_beginAccess();
    sub_1B99AB800(v1 + v14, v12);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v16 = v13[10];
    v15[4] = v16;
    v15[5] = v13[11];
    v15[6] = v13[12];
    v15[7] = v2;
    v15[8] = v3;
    sub_1B99ABF84(v2, v3, 0);

    v17 = sub_1B99AB2A4(0, 0, v12, &unk_1B99F5F38, v15, v16);
    v0[11] = v17;
    v18 = *(v1 + 112);
    v19 = *(v1 + 120);
    LOBYTE(v15) = *(v1 + 128);
    *(v1 + 112) = v17;
    *(v1 + 120) = 0;
    *(v1 + 128) = 1;

    sub_1B99AB63C(v18, v19, v15);
    v20 = swift_task_alloc();
    v0[12] = v20;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC650, &qword_1B99F6A20);
    *v20 = v0;
    v20[1] = sub_1B99AAD74;
    v8 = v0[5];
    v9 = MEMORY[0x1E69E7288];
    v10 = v17;
    v11 = v16;
  }

  return MEMORY[0x1EEE6DA10](v8, v10, v11, v7, v9);
}

uint64_t sub_1B99AAD74()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_1B99AB0BC;
  }

  else
  {
    v4 = sub_1B99AAFCC;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B99AAEA0()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_1B99AB13C;
  }

  else
  {
    v4 = sub_1B99AB04C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B99AAFCC()
{
  v1 = v0[10];
  v2 = v0[9];

  sub_1B99AB63C(v2, v1, 0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B99AB04C()
{
  sub_1B99AB63C(v0[9], v0[10], 1);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B99AB0BC()
{
  v1 = v0[10];
  v2 = v0[9];

  sub_1B99AB63C(v2, v1, 0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B99AB13C()
{
  sub_1B99AB63C(v0[9], v0[10], 1);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B99AB1AC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1B99A3FAC;

  return v8(a1);
}

uint64_t sub_1B99AB2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC4F0, &qword_1B99F5B20);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24[-1] - v11;
  v24[5] = a4;
  v24[6] = a5;
  sub_1B99AB800(a3, &v24[-1] - v11);
  v13 = sub_1B99F3EC4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1B99AB648(v12);
  }

  else
  {
    sub_1B99F3EB4();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1B99F3E44();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1B99F3C64();
      sub_1B99ABEC8(v20 + 32, v24);

      v21 = v24[0];
      sub_1B99AB648(a3);

      return v21;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B99AB648(a3);
  if (v19 | v17)
  {
    v24[1] = 0;
    v24[2] = 0;
    v24[3] = v17;
    v24[4] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1B99AB53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_defaultActor_initialize();
  v7 = qword_1EBBDC540;
  v8 = sub_1B99F3EC4();
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  swift_beginAccess();
  sub_1B99AC080(a1, v3 + v7);
  swift_endAccess();
  *(v3 + 112) = a2;
  *(v3 + 120) = a3;
  *(v3 + 128) = 0;
  return v3;
}

uint64_t LazyTask.deinit()
{
  sub_1B99AB63C(*(v0 + 112), *(v0 + 120), *(v0 + 128));
  sub_1B99AB648(v0 + qword_1EBBDC540);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1B99AB648(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC4F0, &qword_1B99F5B20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LazyTask.__deallocating_deinit()
{
  LazyTask.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t LazyTask<>.init(priority:operation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC4F0, &qword_1B99F5B20);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - v8;
  sub_1B99AB800(a1, &v13 - v8);
  v10 = swift_allocObject();
  v10[2] = *(v3 + 80);
  v10[3] = a2;
  v10[4] = a3;
  swift_allocObject();
  v11 = sub_1B99AB53C(v9, &unk_1B99F5DE0, v10);
  sub_1B99AB648(a1);
  return v11;
}

{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC4F0, &qword_1B99F5B20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  sub_1B99AB800(a1, &v11 - v7);
  swift_allocObject();
  v9 = sub_1B99AB53C(v8, a2, a3);
  sub_1B99AB648(a1);
  return v9;
}

uint64_t sub_1B99AB800(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC4F0, &qword_1B99F5B20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B99AB870(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B99A3EB8;

  return sub_1B99A1BCC(a1, v4);
}

uint64_t LazyTask<>.value.getter(uint64_t a1)
{
  *(v2 + 16) = v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1B99AB9D4;

  return sub_1B99AAA50(a1);
}

{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B99A3EB8;

  return sub_1B99AAA50(a1);
}

uint64_t sub_1B99AB9D4()
{
  v2 = *v1;
  v2[4] = v0;

  if (v0)
  {
    v3 = v2[2];

    return MEMORY[0x1EEE6DFA0](sub_1B99ABB08, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

void sub_1B99ABC84(uint64_t a1)
{
  sub_1B99ABD58(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_1B99ABD58(uint64_t a1)
{
  if (!qword_1EBBDC5C8[0])
  {
    sub_1B99F3EC4();
    v1 = sub_1B99F41C4();
    if (!v2)
    {
      atomic_store(v1, qword_1EBBDC5C8);
    }
  }
}

uint64_t sub_1B99ABDB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B99ABE18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B99ABE60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1B99ABEC8@<X0>(uint64_t result@<X0>, uint64_t *a7@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B99ABF90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[7];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B99A3FAC;

  return sub_1B99AB1AC(a1, v4, v5, v6);
}

uint64_t sub_1B99AC080(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC4F0, &qword_1B99F5B20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static Promise.race(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 80);
  type metadata accessor for Promise(0, v6, a3, a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a1;

  return Promise.__allocating_init(startBlock:)(sub_1B99AC23C, v7);
}

uint64_t sub_1B99AC1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Promise(255, a4, a3, a4);
  sub_1B99F3E24();
  swift_getWitnessTable();
  return sub_1B99F3D54();
}

uint64_t WeakWrapper.deinit()
{
  sub_1B99AC2A0(v0 + 16);
  sub_1B99AC2C8(v0 + 24);
  return v0;
}

uint64_t sub_1B99AC2C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WeakWrapper.__deallocating_deinit()
{
  sub_1B99AC2A0(v0 + 16);
  sub_1B99AC2C8(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t RandomAccessCollection<>.randomAccessEnumerated()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  return (*(v4 + 32))(a2, v6, a1);
}

uint64_t RandomAccessEnumeratedCollection.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a2;
  v5 = sub_1B99F4094();
  v7 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a1, v7, AssociatedTypeWitness);
  v5(v10, 0);
  return a2;
}

unint64_t sub_1B99AC65C()
{
  result = qword_1EBBDC670;
  if (!qword_1EBBDC670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDC670);
  }

  return result;
}

uint64_t sub_1B99AC7E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69828](a1, a2, WitnessTable, v5);
}

uint64_t sub_1B99AC8C8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC668, &qword_1B99F5F90);
    sub_1B99AC65C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B99AC95C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = RandomAccessEnumeratedCollection.startIndex.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B99AC984@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = RandomAccessEnumeratedCollection.endIndex.getter(a1);
  *a2 = result;
  return result;
}

void (*sub_1B99AC9AC(uint64_t *a1, uint64_t *a2, uint64_t a3))(uint64_t *a1, uint64_t a2)
{
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8[4] = TupleTypeMetadata2;
  v11 = *(TupleTypeMetadata2 - 8);
  v8[5] = v11;
  if (v6)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  v13 = v12;
  v8[6] = v12;
  v8[7] = sub_1B99ACBAC(v8, *a2, a3);
  *v13 = v14;
  (*(*(AssociatedTypeWitness - 8) + 16))(&v13[*(TupleTypeMetadata2 + 48)], v15, AssociatedTypeWitness);
  return sub_1B99ACB34;
}

void sub_1B99ACB34(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

uint64_t (*sub_1B99ACBAC(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v7 = *(TupleTypeMetadata2 - 8);
  a1[1] = v7;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v9 = v8;
  a1[2] = v8;
  RandomAccessEnumeratedCollection.subscript.getter(v8 + *(TupleTypeMetadata2 + 48), a2, a3);
  *v9 = a2;
  return sub_1B99ACCD4;
}

void sub_1B99ACCD4(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_1B99ACD24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69838](a1, WitnessTable, v3);
}

uint64_t sub_1B99ACE1C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69820](a1, a2, WitnessTable, v5);
}

uint64_t sub_1B99ACEA4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x1E69E6570]);
}

uint64_t sub_1B99ACF38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  (*(v5 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v6 = *(sub_1B99F43B4() + 36);
  v7 = RandomAccessEnumeratedCollection.startIndex.getter(a1);
  result = (*(v5 + 8))(v2, a1);
  *(a2 + v6) = v7;
  return result;
}

uint64_t sub_1B99AD024(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1B99AD080(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_1B99AD6BC(v1, a1, WitnessTable);
  (*(*(a1 - 8) + 8))(v1, a1);
  return v4;
}

uint64_t sub_1B99AD13C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B99AD1AC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
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
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
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

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1B99AD2EC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_1B99AD50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1B99F3BB4();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_1B99F40A4();
  result = sub_1B99F3BB4();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B99AD5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_1B99F3BB4();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t Promise.__allocating_init(startBlock:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Promise.init(startBlock:)(a1, a2);
  return v4;
}

id sub_1B99AD720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x58);
  v11 = v10;
  v12(v9);
  if (!v4)
  {
    type metadata accessor for Promise.Box(0, a3, v13, v14);
    v11 = sub_1B99B2E04(v8, v15, v16, v17);
    (*(v6 + 8))(v8, a3);
  }

  return v11;
}

id sub_1B99AD86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Promise.Box(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t *Promise.__allocating_init<A>(with:)(void *a1)
{
  v3 = [a1 then];
  v4 = swift_allocObject();
  *(v4 + 16) = *(v1 + 80);
  v9[4] = sub_1B99AE3C8;
  v9[5] = v4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1B99B3B54;
  v9[3] = &block_descriptor_0;
  v5 = _Block_copy(v9);
  v6 = v3[2](v3, v5);
  _Block_release(v3);
  _Block_release(v5);

  swift_allocObject();
  v7 = sub_1B99ADCB0(v6);

  return v7;
}

uint64_t sub_1B99ADA5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  if (a1)
  {
    v7 = type metadata accessor for Promise.Box(0, a2, a4, a5);
    v12 = a1;
    result = sub_1B99B2E04(&v12, v8, v9, v10);
    *a3 = result;
  }

  else
  {
    result = type metadata accessor for Promise.UnderlyingValueMissing(0, a2, a4, a5);
    v7 = result;
  }

  a3[3] = v7;
  return result;
}

uint64_t sub_1B99ADAFC(void *a1)
{
  v3 = [a1 then];
  v14 = sub_1B99AE05C;
  v15 = 0;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_1B99B3B54;
  v13 = &block_descriptor_158;
  v4 = _Block_copy(&v10);
  v5 = v3[2](v3, v4);
  _Block_release(v3);
  _Block_release(v4);

  v6 = [v5 catch];

  v14 = sub_1B99AE1D0;
  v15 = 0;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_1B99AE1C8;
  v13 = &block_descriptor_161;
  v7 = _Block_copy(&v10);
  v8 = v6[2](v6, v7);

  _Block_release(v6);
  _Block_release(v7);

  *(v1 + 16) = v8;
  return v1;
}

uint64_t *sub_1B99ADCB0(void *a1)
{
  v3 = *v1;
  v4 = [a1 then];
  v5 = swift_allocObject();
  v6 = *(v3 + 80);
  *(v5 + 16) = v6;
  v20 = sub_1B99B3AA8;
  v21 = v5;
  v16 = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_1B99B3B54;
  v19 = &block_descriptor_194;
  v7 = _Block_copy(&v16);
  v8 = v4[2];

  v9 = v8(v4, v7);
  _Block_release(v4);

  _Block_release(v7);

  v10 = [v9 catch];

  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  v20 = sub_1B99B3AB0;
  v21 = v11;
  v16 = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_1B99AE1C8;
  v19 = &block_descriptor_200;
  v12 = _Block_copy(&v16);
  v13 = v10[2];

  v14 = v13(v10, v12);

  _Block_release(v10);

  _Block_release(v12);

  objc_opt_self();
  v1[2] = swift_dynamicCastObjCClassUnconditional();
  return v1;
}

id sub_1B99ADF00(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v11, v3);

  swift_unknownObjectRelease();
  v4 = v12;
  if (v12)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v11, v12);
    v6 = *(v4 - 8);
    MEMORY[0x1EEE9AC00](v5);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = sub_1B99F46F4();
    (*(v6 + 8))(v8, v4);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_1B99AE05C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    swift_unknownObjectRetain();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC8A8, &qword_1B99F6450);
    result = swift_dynamicCastClass();
    if (result)
    {
      a2[3] = v3;
      *a2 = result;
      return result;
    }

    swift_unknownObjectRelease();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC8A8, &qword_1B99F6450);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC8B0, &qword_1B99F6458);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC8B8, &qword_1B99F6460);
  a2[3] = result;
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_1B99AE118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  if (a1)
  {
    v7 = type metadata accessor for Promise.Box(0, a2, a4, a5);
    swift_unknownObjectRetain();
    result = swift_dynamicCastClass();
    if (result)
    {
      a3[3] = v7;
      *a3 = result;
      return result;
    }

    swift_unknownObjectRelease();
  }

  v9 = type metadata accessor for Promise.Box(0, a2, a4, a5);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC8B0, &qword_1B99F6458);
  result = type metadata accessor for Promise.UnexpectedType(0, a2, v11, v12);
  a3[3] = result;
  *a3 = v9;
  a3[1] = v10;
  return result;
}

uint64_t sub_1B99AE1C0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1B99AE1D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    swift_getErrorValue();
    a2[3] = v5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    return (*(*(v5 - 8) + 16))(boxed_opaque_existential_1);
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC8A0, &qword_1B99F6448);
    a2[3] = result;
  }

  return result;
}

uint64_t sub_1B99AE26C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  if (a1)
  {
    swift_getErrorValue();
    a2[3] = v8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    return (*(*(v8 - 8) + 16))(boxed_opaque_existential_1);
  }

  else
  {
    result = type metadata accessor for Promise.UnderlyingErrorMissing(0, a3, a4, a5);
    a2[3] = result;
  }

  return result;
}

uint64_t *Promise.init(startBlock:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC708, &unk_1B99F6210);
  v7 = swift_allocObject();
  v8 = *(v6 + 80);
  v7[2] = v8;
  v7[3] = a1;
  v7[4] = a2;
  type metadata accessor for Promise.Box(0, v8, v9, v10);
  v11 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3[2] = sub_1B99B28C0(sub_1B99AE500, v7);
  return v3;
}

uint64_t sub_1B99AE3D0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t (*)(), uint64_t))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  a3(sub_1B99B39A8, v6);
}

uint64_t sub_1B99AE464(uint64_t a1, uint64_t a2, void (*a3)(uint64_t (*)(), void *), uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  v9[2] = a5;
  v9[3] = a1;
  v9[4] = a2;

  a3(sub_1B99B3A9C, v9);
}

void sub_1B99AE50C(uint64_t a1, void (*a2)(void *, id), uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v10 = sub_1B99F4A34();
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v22 - v11);
  (*(v13 + 16))(&v22 - v11, a1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v12;
    v15 = *v12;
    a2(0, v14);
  }

  else
  {
    (*(v7 + 32))(v9, v12, a4);
    type metadata accessor for Promise.Box(0, a4, v16, v17);
    v21 = sub_1B99B2E04(v9, v18, v19, v20);
    a2(v21, 0);

    (*(v7 + 8))(v9, a4);
  }
}

uint64_t Promise.__allocating_init(with:)(uint64_t a1)
{
  v3 = *(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v4 = sub_1B99F4A34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  (*(v5 + 16))(&v12 - v6, a1, v4);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  (*(v5 + 32))(v9 + v8, v7, v4);
  v10 = swift_allocObject();
  Promise.init(startBlock:)(sub_1B99AE8CC, v9);
  (*(v5 + 8))(a1, v4);
  return v10;
}

uint64_t sub_1B99AE8CC(uint64_t (*a1)(unint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v3 = *(sub_1B99F4A34() - 8);
  return a1(v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80)));
}

void sub_1B99AE968(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  if (a1)
  {
    v10 = a1;
    v11 = sub_1B99AD720(a2, a3, a5);
    a6[3] = type metadata accessor for Promise.Box(0, a5, v12, v13);

    *a6 = v11;
  }

  else
  {
    a6[3] = type metadata accessor for Promise.UnderlyingValueMissing(0, a4, a3, a4);
  }
}

void sub_1B99AEA5C(void *a1@<X0>, uint64_t (*a2)(char *)@<X1>, uint64_t a3@<X3>, void *a4@<X8>, uint64_t a5@<X2>)
{
  if (a1)
  {
    v7 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
    v9 = a1;
    v10 = *(a2(a1 + v7) + 16);

    a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC708, &unk_1B99F6210);

    *a4 = v10;
  }

  else
  {
    a4[3] = type metadata accessor for Promise.UnderlyingValueMissing(0, a3, a5, a3);
  }
}

void sub_1B99AEB8C(void *a1@<X0>, void (*a2)(void *)@<X1>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v8 = *(a3 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v9)
  {
    v14 = a1;
    a2(a1);
    v17 = type metadata accessor for Promise.Box(0, a3, v15, v16);
    v21 = sub_1B99B2E04(v13, v18, v19, v20);
    (*(v8 + 8))(v13, a3);
    a4[3] = v17;

    *a4 = v21;
  }

  else
  {
    a4[3] = type metadata accessor for Promise.UnderlyingErrorMissing(0, v11, v10, v11);
  }
}

void sub_1B99AED24(void *a1@<X0>, uint64_t (*a2)(void *)@<X1>, uint64_t a3@<X3>, void *a4@<X8>, uint64_t a5@<X2>)
{
  if (a1)
  {
    v8 = a1;
    v9 = *(a2(a1) + 16);

    a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC708, &unk_1B99F6210);

    *a4 = v9;
  }

  else
  {
    a4[3] = type metadata accessor for Promise.UnderlyingErrorMissing(0, a3, a5, a3);
  }
}

uint64_t sub_1B99AEE34(char *a1, void *a2, void (*a3)(void *), uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v9 = sub_1B99F4A34();
  v10 = *(v9 - 8);
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v16 - v12);
  if (a2)
  {
    *v13 = a2;
    swift_storeEnumTagMultiPayload();
    v14 = a2;
    a3(v13);
  }

  else
  {
    if (!a1)
    {
      return result;
    }

    (*(*(a5 - 8) + 16))(v13, &a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x58)], a5);
    swift_storeEnumTagMultiPayload();
    v15 = a1;
    a3(v13);
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t *sub_1B99AEFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  type metadata accessor for Promise(0, a3, a3, a4);
  v9 = [v4[2] then];
  v10 = *(v8 + 80);
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a3;
  v11[4] = a1;
  v11[5] = a2;
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = a3;
  v12[4] = sub_1B99B3A90;
  v12[5] = v11;

  v16[4] = sub_1B99B2E70;
  v16[5] = v12;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1B99B3B58;
  v16[3] = &block_descriptor_12;
  v13 = _Block_copy(v16);
  v14 = v9[2](v9, v13);
  _Block_release(v9);
  _Block_release(v13);

  swift_allocObject();
  return sub_1B99ADCB0(v14);
}

uint64_t *sub_1B99AF198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  type metadata accessor for Promise(0, a4, a3, a4);
  v10 = v4[2];
  v11 = *(v9 + 80);
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a4;
  v12[4] = a2;
  v12[5] = a3;
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = a4;
  v13[4] = sub_1B99B3A90;
  v13[5] = v12;

  v17[4] = sub_1B99B3B00;
  v17[5] = v13;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1B99B3B58;
  v17[3] = &block_descriptor_19;
  v14 = _Block_copy(v17);

  v15 = [v10 then:v14 onQueue:a1];
  _Block_release(v14);
  swift_allocObject();
  return sub_1B99ADCB0(v15);
}

uint64_t *sub_1B99AF31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  type metadata accessor for Promise(0, a3, a3, a4);
  v9 = [v4[2] then];
  v10 = *(v8 + 80);
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a3;
  v11[4] = a1;
  v11[5] = a2;
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = a3;
  v12[4] = sub_1B99B3A84;
  v12[5] = v11;

  v16[4] = sub_1B99B3B00;
  v16[5] = v12;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1B99B3B58;
  v16[3] = &block_descriptor_26;
  v13 = _Block_copy(v16);
  v14 = v9[2](v9, v13);
  _Block_release(v9);
  _Block_release(v13);

  swift_allocObject();
  return sub_1B99ADCB0(v14);
}

uint64_t *sub_1B99AF4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  type metadata accessor for Promise(0, a4, a3, a4);
  v10 = v4[2];
  v11 = *(v9 + 80);
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a4;
  v12[4] = a2;
  v12[5] = a3;
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = a4;
  v13[4] = sub_1B99B3A84;
  v13[5] = v12;

  v17[4] = sub_1B99B3B00;
  v17[5] = v13;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1B99B3B58;
  v17[3] = &block_descriptor_33;
  v14 = _Block_copy(v17);

  v15 = [v10 then:v14 onQueue:a1];
  _Block_release(v14);
  swift_allocObject();
  return sub_1B99ADCB0(v15);
}

uint64_t *sub_1B99AF63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  type metadata accessor for Promise(0, a3, a3, a4);
  v9 = [v4[2] catch];
  v10 = *(v8 + 80);
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a3;
  v11[4] = a1;
  v11[5] = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1B99B3A78;
  *(v12 + 24) = v11;

  v17[4] = sub_1B99B2E98;
  v17[5] = v12;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1B99AE1C8;
  v17[3] = &block_descriptor_39;
  v13 = _Block_copy(v17);
  v14 = v9[2];

  v15 = v14(v9, v13);
  _Block_release(v9);

  _Block_release(v13);

  swift_allocObject();
  return sub_1B99ADCB0(v15);
}

uint64_t *sub_1B99AF7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  type metadata accessor for Promise(0, a4, a3, a4);
  v10 = v4[2];
  v11 = *(v9 + 80);
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a4;
  v12[4] = a2;
  v12[5] = a3;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1B99B3A78;
  *(v13 + 24) = v12;

  v17[4] = sub_1B99B3B04;
  v17[5] = v13;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1B99AE1C8;
  v17[3] = &block_descriptor_46;
  v14 = _Block_copy(v17);

  v15 = [v10 catch:v14 onQueue:a1];
  _Block_release(v14);
  swift_allocObject();
  return sub_1B99ADCB0(v15);
}

uint64_t *sub_1B99AF964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  type metadata accessor for Promise(0, a3, a3, a4);
  v9 = [v4[2] catch];
  v10 = *(v8 + 80);
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a3;
  v11[4] = a1;
  v11[5] = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1B99B3A6C;
  *(v12 + 24) = v11;

  v17[4] = sub_1B99B3B04;
  v17[5] = v12;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1B99AE1C8;
  v17[3] = &block_descriptor_53;
  v13 = _Block_copy(v17);
  v14 = v9[2];

  v15 = v14(v9, v13);
  _Block_release(v9);

  _Block_release(v13);

  swift_allocObject();
  return sub_1B99ADCB0(v15);
}

uint64_t *sub_1B99AFB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  type metadata accessor for Promise(0, a4, a3, a4);
  v10 = v4[2];
  v11 = *(v9 + 80);
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a4;
  v12[4] = a2;
  v12[5] = a3;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1B99B3A6C;
  *(v13 + 24) = v12;

  v17[4] = sub_1B99B3B04;
  v17[5] = v13;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1B99AE1C8;
  v17[3] = &block_descriptor_60;
  v14 = _Block_copy(v17);

  v15 = [v10 catch:v14 onQueue:a1];
  _Block_release(v14);
  swift_allocObject();
  return sub_1B99ADCB0(v15);
}

uint64_t sub_1B99AFC8C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1B99F43E4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    goto LABEL_11;
  }

  v16[0] = MEMORY[0x1E69E7CC0];
  result = sub_1B99F4314();
  if ((v2 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = 0;
      do
      {
        v5 = v4 + 1;
        v6 = *(MEMORY[0x1BFAE0B50](v4) + 16);
        swift_unknownObjectRelease();
        sub_1B99F42E4();
        sub_1B99F4324();
        sub_1B99F4334();
        sub_1B99F42F4();
        v4 = v5;
      }

      while (v2 != v5);
    }

    else
    {
      v7 = (a1 + 32);
      do
      {
        v8 = *v7++;
        v9 = *(v8 + 16);
        sub_1B99F42E4();
        sub_1B99F4324();
        sub_1B99F4334();
        sub_1B99F42F4();
        --v2;
      }

      while (v2);
    }

LABEL_11:
    v10 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC708, &unk_1B99F6210);
    v11 = sub_1B99F3D94();

    v12 = [v10 all_];

    v13 = [v12 then];
    v16[4] = sub_1B99B0738;
    v16[5] = 0;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = sub_1B99B3B58;
    v16[3] = &block_descriptor_155;
    v14 = _Block_copy(v16);
    v15 = v13[2](v13, v14);
    _Block_release(v13);
    _Block_release(v14);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC898, &qword_1B99F6440);
    swift_allocObject();
    return sub_1B99ADAFC(v15);
  }

  __break(1u);
  return result;
}

uint64_t *static Promise.all(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 80);
  v22[2] = v5;
  aBlock[0] = a1;
  type metadata accessor for Promise(255, v5, a3, a4);
  v6 = sub_1B99F3E24();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC708, &unk_1B99F6210);
  WitnessTable = swift_getWitnessTable();
  sub_1B99B01B8(sub_1B99B2EC0, v22, v6, v7, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v9);
  v10 = objc_opt_self();
  v11 = sub_1B99F3D94();

  v12 = [v10 all_];

  v13 = [v12 then];
  v14 = swift_allocObject();
  *(v14 + 16) = v5;
  aBlock[4] = sub_1B99B2EE0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B99B3B58;
  aBlock[3] = &block_descriptor_66;
  v15 = _Block_copy(aBlock);
  v16 = v13[2];

  v17 = v16(v13, v15);
  _Block_release(v13);

  _Block_release(v15);

  v18 = sub_1B99F3E24();
  type metadata accessor for Promise(0, v18, v19, v20);
  swift_allocObject();
  return sub_1B99ADCB0(v17);
}

id sub_1B99B0154@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 16);
  objc_opt_self();
  *a2 = swift_dynamicCastObjCClassUnconditional();
  return v3;
}

uint64_t sub_1B99B01B8(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1B99F4034();
  if (!v19)
  {
    return sub_1B99F3DE4();
  }

  v41 = v19;
  v45 = sub_1B99F4354();
  v32 = sub_1B99F4364();
  sub_1B99F4304();
  result = sub_1B99F4024();
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
      v22 = sub_1B99F4094();
      v23 = v14;
      v24 = v14;
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
      sub_1B99F4344();
      result = sub_1B99F4044();
      ++v21;
      v14 = v24;
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

id sub_1B99B05D8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(v12, a2);

  v5 = v13;
  if (v13)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v12, v13);
    v7 = *(v5 - 8);
    MEMORY[0x1EEE9AC00](v6);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = sub_1B99F46F4();
    (*(v7 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id sub_1B99B0738@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1B99F3724();
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E7D40];
  if (a1)
  {
    v17 = v5;
    v18 = a2;
    sub_1B99F4164();
    sub_1B99B3A24(&qword_1EBBDC2A8, MEMORY[0x1E6968EB0], MEMORY[0x1E6968EB8]);
    sub_1B99F41D4();
    if (v23)
    {
      v9 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1B99A3418(&v22, v21);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC8C0, &qword_1B99F6468);
        if (swift_dynamicCast())
        {
          v10 = v19;
          sub_1B99B3944(v19 + *((*v8 & *v19) + 0x58), v20);

          sub_1B99A3418(v20, v21);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1B99B2A68(0, *(v9 + 2) + 1, 1, v9);
          }

          v12 = *(v9 + 2);
          v11 = *(v9 + 3);
          if (v12 >= v11 >> 1)
          {
            v9 = sub_1B99B2A68((v11 > 1), v12 + 1, 1, v9);
          }

          *(v9 + 2) = v12 + 1;
          sub_1B99A3418(v21, &v9[32 * v12 + 32]);
        }

        sub_1B99F41D4();
      }

      while (v23);
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

    (*(v17 + 8))(v7, v4);
    a2 = v18;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC8A8, &qword_1B99F6450);
  v14 = objc_allocWithZone(v13);
  *&v14[*((*v8 & *v14) + 0x58)] = v9;
  v24.receiver = v14;
  v24.super_class = v13;
  result = objc_msgSendSuper2(&v24, sel_init);
  a2[3] = v13;
  *a2 = result;
  return result;
}

uint64_t sub_1B99B0A14@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  if (a1)
  {
    v16 = a1;
    v4 = MEMORY[0x1EEE9AC00](a1);
    sub_1B99B39D8();
    sub_1B99B3A24(&qword_1EBBDC8D8, sub_1B99B39D8, MEMORY[0x1E6969F50]);
    v5 = v4;
    v6 = sub_1B99F3D14();
  }

  else
  {
    v6 = sub_1B99F3DE4();
  }

  v7 = sub_1B99F3E24();
  v10 = type metadata accessor for Promise.Box(0, v7, v8, v9);
  v16 = v6;
  v14 = sub_1B99B2E04(&v16, v11, v12, v13);

  a3[3] = v10;
  *a3 = v14;
  return result;
}

uint64_t sub_1B99B0B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B99B3944(a1, &v10);
  type metadata accessor for Promise.Box(0, a2, v5, v6);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  }

  v7 = v11;
  v8 = *(a2 - 8);
  (*(v8 + 16))(a3, v11 + *((*MEMORY[0x1E69E7D40] & *v11) + 0x58), a2);

  return (*(v8 + 56))(a3, 0, 1, a2);
}

void sub_1B99B0CC4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_1B99F36D4();
  [v2 abortWithError_];
}

void sub_1B99B0D1C(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = *(*v2 + 80);
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = a2;

  v9[4] = sub_1B99B39B0;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1B99B3B5C;
  v9[3] = &block_descriptor_69;
  v8 = _Block_copy(v9);

  [v5 onComplete_];
  _Block_release(v8);
}

void sub_1B99B0E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[2];
  v8 = *(*v3 + 80);
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a2;
  v9[4] = a3;

  v11[4] = sub_1B99B39B0;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1B99B3B5C;
  v11[3] = &block_descriptor_72;
  v10 = _Block_copy(v11);

  [v7 onComplete:v10 onQueue:a1];
  _Block_release(v10);
}

void sub_1B99B0F2C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t *static Promise.join<A, B>(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = *a1;
  v7 = *a2;
  v25 = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBBDC710, &qword_1B99F6220);
  inited = swift_initStackObject();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1B99B2EF4;
  *(v10 + 24) = v8;
  v11 = objc_allocWithZone(MEMORY[0x1E6985DF8]);
  v24[4] = sub_1B99B2F3C;
  v24[5] = v10;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 1107296256;
  v24[2] = sub_1B99B2964;
  v24[3] = &block_descriptor_81;
  v12 = _Block_copy(v24);
  v13 = [v11 initWithBlock_];
  _Block_release(v12);

  *(inited + 16) = v13;
  v14 = *(v6 + 80);
  v15 = *(v7 + 80);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  type metadata accessor for Promise(0, TupleTypeMetadata3, v17, v18);
  static Promise.join<A, B, C>(_:_:_:)(a1, a2, inited);
  v19 = swift_allocObject();
  *(v19 + 16) = v14;
  *(v19 + 24) = v15;
  v20 = swift_allocObject();
  v20[2] = v14;
  v20[3] = v15;
  v20[4] = sub_1B99B2F44;
  v20[5] = v19;
  v22 = sub_1B99AEFE4(sub_1B99B2FE4, v20, *(v3 + 80), v21);

  swift_setDeallocating();

  return v22;
}

uint64_t *static Promise.join<A, B, C>(_:_:_:)(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBDD180, &qword_1B99F6228);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B99F6200;
  v7 = swift_allocObject();
  v8 = *(v3 + 80);
  v7[2] = v8;
  v9 = *(v4 + 80);
  v7[3] = v9;
  v10 = *(v5 + 80);
  v7[4] = v10;
  v12 = sub_1B99AEFE4(sub_1B99B3004, v7, MEMORY[0x1E69E7CA0] + 8, v11);

  *(inited + 32) = v12;
  v13 = swift_allocObject();
  v13[2] = v8;
  v13[3] = v9;
  v13[4] = v10;
  v14 = MEMORY[0x1E69E7CA0];
  v16 = sub_1B99AEFE4(sub_1B99B3074, v13, MEMORY[0x1E69E7CA0] + 8, v15);

  *(inited + 40) = v16;
  v17 = swift_allocObject();
  v17[2] = v8;
  v17[3] = v9;
  v17[4] = v10;
  v19 = sub_1B99AEFE4(sub_1B99B30E4, v17, v14 + 8, v18);

  *(inited + 48) = v19;
  sub_1B99AFC8C(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v20 = swift_allocObject();
  v20[2] = v8;
  v20[3] = v9;
  v20[4] = v10;
  v22 = sub_1B99AEFE4(sub_1B99B3154, v20, *(v24 + 80), v21);

  return v22;
}

uint64_t sub_1B99B1484@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a5@<X8>)
{
  v8 = *(swift_getTupleTypeMetadata3() + 48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a5, a5 + *(TupleTypeMetadata2 + 48), a1, a1 + v8);
}

uint64_t sub_1B99B1538(uint64_t *a1)
{
  v5 = *a1;
  result = swift_getTupleTypeMetadata3();
  v7 = *(v5 + 16);
  if (!v7)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1B99B3944(v5 + 32, v10);
  result = swift_dynamicCast();
  if (v7 == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1B99B3944(v5 + 64, v9);
  result = swift_dynamicCast();
  if (v7 >= 3)
  {
    sub_1B99B3944(v5 + 96, &v8);
    return swift_dynamicCast();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t static Promise.pending()()
{
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  v2 = *(v0 + 80);
  type metadata accessor for Promise(0, v2, v3, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v6 = swift_allocObject();

  Promise.init(startBlock:)(sub_1B99B3174, v5);
  swift_beginAccess();
  if (*(v1 + 16))
  {

    return v6;
  }

  else
  {
    result = sub_1B99F43D4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B99B1794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  sub_1B99A3EA8(v6, v7);
}

uint64_t Promise.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t Promise.get()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B99B18A4, 0, 0);
}

uint64_t sub_1B99B18A4()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1B99B1970;
  v2 = v0[2];
  v3 = v0[3];

  return sub_1B99B1B48(v2, 0, 0, sub_1B99B317C, v3);
}

uint64_t sub_1B99B1970()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B99B1AA4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1B99B1ABC(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  sub_1B99B0D1C(sub_1B99B38DC, v4);
}

uint64_t sub_1B99B1B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1B99F3E44();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1B99B1BDC, v6, v8);
}

uint64_t sub_1B99B1BDC()
{
  v1 = v0[11];
  v2 = v0[10];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1B99B1C84;
  v3 = swift_continuation_init();
  v1(v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B99B1C84()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
  }

  v2 = *(v1 + 8);

  return v2();
}

uint64_t Promise.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = *(v2 + 80);
  v5[3] = a1;
  v5[4] = a2;
  v6 = swift_allocObject();
  Promise.init(startBlock:)(sub_1B99B3184, v5);
  return v6;
}

uint64_t sub_1B99B1E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC4F0, &qword_1B99F5B20);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v16 - v11;
  v13 = sub_1B99F3EC4();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a5;
  v14[5] = a1;
  v14[6] = a2;
  v14[7] = a3;
  v14[8] = a4;

  sub_1B99C973C(0, 0, v12, &unk_1B99F6438, v14);
}

uint64_t sub_1B99B1F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a4;
  v8[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v10 = sub_1B99F4A34();
  v8[4] = v10;
  v8[5] = *(v10 - 8);
  v8[6] = swift_task_alloc();
  v11 = swift_task_alloc();
  v8[7] = v11;
  v14 = (a6 + *a6);
  v12 = swift_task_alloc();
  v8[8] = v12;
  *v12 = v8;
  v12[1] = sub_1B99B20E0;

  return v14(v11);
}

uint64_t sub_1B99B20E0()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1B99B22AC;
  }

  else
  {
    v2 = sub_1B99B21F4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B99B21F4()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  swift_storeEnumTagMultiPayload();
  v4(v1);
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B99B22AC()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v5 = v0[2];
  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  v6 = v1;
  v5(v2);

  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B99B23B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a2;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  type metadata accessor for Promise(0, v13, v11, v12);
  (*(v9 + 16))(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a4);
  v14 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a4;
  *(v15 + 3) = a5;
  *(v15 + 4) = v18;
  *(v15 + 5) = a3;
  (*(v9 + 32))(&v15[v14], &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a4);

  return Promise.__allocating_init(_:)(&unk_1B99F6420, v15);
}

uint64_t sub_1B99B2520(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1B99A3EB8;

  return v9(a1, a4);
}

uint64_t sub_1B99B265C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, void *, uint64_t))
{
  v12 = *v6;
  v13 = swift_allocObject();
  v13[2] = *(v12 + 80);
  v13[3] = a3;
  v13[4] = a1;
  v13[5] = a2;

  v14 = a6(a5, v13, a3);

  return v14;
}

uint64_t sub_1B99B2704(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for Promise(0, a5, a3, a4);
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a1;

  v11 = a1;
  return Promise.__allocating_init(_:)(&unk_1B99F6410, v10);
}

uint64_t sub_1B99B27B8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1B99A3FAC;

  return v9(a1, a4);
}

id sub_1B99B28C0(uint64_t a1, uint64_t a2)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1B99B2964;
  v6[3] = &block_descriptor_185;
  v3 = _Block_copy(v6);
  v4 = [v2 initWithBlock_];
  _Block_release(v3);

  return v4;
}

uint64_t sub_1B99B2964(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_1B99B39A0, v4);
}

void sub_1B99B29F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1B99F36D4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

char *sub_1B99B2A68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC8C8, &qword_1B99F6470);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1B99B2B78(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC8E0, &qword_1B99F6480);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBBDC8E8, &qword_1B99F6488);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1B99B2CC0(uint64_t a1, void (*a2)(id, void))
{
  if (*(a1 + 8))
  {
    a2(0, *a1);
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC8D0, &qword_1B99F6478);
    v5.receiver = objc_allocWithZone(v3);
    v5.super_class = v3;
    v4 = objc_msgSendSuper2(&v5, sel_init);
    a2(v4, 0);
  }
}

id sub_1B99B2D54(uint64_t a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  (*(*(v2 - 8) + 16))(&v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x58)], a1, v2);
  v6.receiver = v1;
  v6.super_class = type metadata accessor for Promise.Box(0, v2, v3, v4);
  return objc_msgSendSuper2(&v6, sel_init);
}

void sub_1B99B2EE8(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_1B99B2EF4(uint64_t (*a1)(uint64_t *))
{
  v2 = *(v1 + 24);
  v4 = *(v1 + 16);
  v5 = v2;
  return a1(&v4);
}

uint64_t sub_1B99B2F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  (*(*(v8 - 8) + 16))(a1, a3);
  v10 = *(*(v9 - 8) + 16);

  return v10(a2, a4, v9);
}

uint64_t sub_1B99B3004@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  a2[3] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, a1, v4);
}

uint64_t sub_1B99B3074@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 24);
  a2[3] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, a1, v4);
}

uint64_t sub_1B99B30E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 32);
  a2[3] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, a1, v4);
}

uint64_t dispatch thunk of Promise.then<A>(_:)()
{
  return (*(*v0 + 152))();
}

{
  return (*(*v0 + 168))();
}

uint64_t dispatch thunk of Promise.then<A>(on:transform:)()
{
  return (*(*v0 + 160))();
}

{
  return (*(*v0 + 176))();
}

uint64_t dispatch thunk of Promise.catch<A>(_:)()
{
  return (*(*v0 + 184))();
}

{
  return (*(*v0 + 200))();
}

uint64_t dispatch thunk of Promise.catch<A>(on:transform:)()
{
  return (*(*v0 + 192))();
}

{
  return (*(*v0 + 208))();
}

uint64_t sub_1B99B33D0(uint64_t a1)
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

uint64_t sub_1B99B3464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B99B34A0(uint64_t *a1, int a2)
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

uint64_t sub_1B99B34E8(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for TimeoutError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TimeoutError(_WORD *result, int a2, int a3)
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

uint64_t sub_1B99B363C(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B99A3FAC;

  return sub_1B99B27B8(a1, v4, v5, v6);
}

uint64_t sub_1B99B3704(uint64_t a1)
{
  v4 = (*(*(v1[2] - 8) + 80) + 48) & ~*(*(v1[2] - 8) + 80);
  v5 = v1[4];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B99A3EB8;

  return sub_1B99B2520(a1, v5, v6, v1 + v4);
}

uint64_t sub_1B99B3800(uint64_t a1)
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
  v11[1] = sub_1B99A3EB8;

  return sub_1B99B1F4C(a1, v4, v5, v7, v8, v9, v10, v6);
}

uint64_t sub_1B99B38DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v6 = MEMORY[0x1E69E7288];

  return sub_1B99D913C(a1, v3, v4, v5, v6);
}

uint64_t sub_1B99B3944(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1B99B39D8()
{
  result = qword_1EBBDD130;
  if (!qword_1EBBDD130)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBBDD130);
  }

  return result;
}

uint64_t sub_1B99B3A24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ThrowingOrderedTaskGroup.addTask(priority:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = *v5;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v12 = a4[3];
  v11[4] = a4[2];
  v11[5] = v12;
  v11[6] = a4[4];
  v11[7] = v10;
  v11[8] = a2;
  v11[9] = a3;

  swift_getTupleTypeMetadata2();
  v13 = sub_1B99F3F34();
  result = sub_1B99B3FB0(a1, &unk_1B99F6498, v11, v13);
  if (__OFADD__(*v5, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v5;
  }

  return result;
}

uint64_t sub_1B99B3C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B99B3CA4, 0, 0);
}

uint64_t sub_1B99B3CA4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = *(swift_getTupleTypeMetadata2() + 48);
  *v3 = v1;
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1B99B3DD0;

  return v7(&v3[v4]);
}

uint64_t sub_1B99B3DD0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B99B3EC4(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[7];
  v9 = v1[8];
  v8 = v1[9];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B99A3EB8;

  return sub_1B99B3C78(a1, v5, v6, v7, v9, v8, v4);
}

uint64_t sub_1B99B3FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC4F0, &qword_1B99F5B20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v19 - v9;
  sub_1B99AB800(a1, v19 - v9);
  v11 = sub_1B99F3EC4();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1B99AB648(v10);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_1B99F3E44();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B99F3EB4();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v5;
  v17 = (v15 | v13);
  if (v15 | v13)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v13;
    v20[3] = v15;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v16;
  swift_task_create();
}

uint64_t ThrowingOrderedTaskGroup.results.getter(uint64_t a1)
{
  v3 = *(v1 + 8);
  *(v2 + 56) = a1;
  *(v2 + 64) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1B99B41A8, 0, 0);
}

uint64_t sub_1B99B41A8()
{
  v1 = v0[7];
  v0[3] = v0[8];
  v2 = v1[2];
  v0[9] = v2;
  swift_getTupleTypeMetadata2();
  v0[4] = sub_1B99F3AF4();
  v3 = swift_task_alloc();
  v0[10] = v3;
  v3[2] = v2;
  v4 = v1[3];
  v0[11] = v4;
  v3[3] = v4;
  v5 = v1[4];
  v0[12] = v5;
  v3[4] = v5;
  v6 = swift_task_alloc();
  v0[13] = v6;
  v7 = sub_1B99F3F34();
  v8 = sub_1B99F3E24();
  v0[14] = v8;
  WitnessTable = swift_getWitnessTable();
  *v6 = v0;
  v6[1] = sub_1B99B4338;

  return MEMORY[0x1EEE6DB28](v0 + 2, v0 + 4, &unk_1B99F64B0, v3, v7, v8, WitnessTable);
}

uint64_t sub_1B99B4338()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1B99B4610;
  }

  else
  {

    v2 = sub_1B99B4454;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B99B4454()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v0[5] = v0[2];
  v5 = swift_task_alloc();
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v2;
  swift_getWitnessTable();
  v6 = sub_1B99F3D44();

  v0[6] = v6;
  v7 = swift_task_alloc();
  *v7 = v4;
  v7[1] = v3;
  v7[2] = v2;
  KeyPath = swift_getKeyPath();

  v9 = swift_task_alloc();
  v9[2] = v3;
  v9[3] = v2;
  v9[4] = KeyPath;
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1B99B01B8(sub_1B99B4ACC, v9, v1, v4, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v11);

  v13 = v0[1];

  return v13(v12);
}

uint64_t sub_1B99B4610()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B99B4674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v3[5] = TupleTypeMetadata2;
  v3[6] = *(TupleTypeMetadata2 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B99B4758, 0, 0);
}

uint64_t sub_1B99B4758()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[4];
  (*(v0[6] + 16))(v1, v0[3], v3);
  v5 = *(v3 + 48);
  *v2 = *v1;
  (*(*(v4 - 8) + 32))(&v2[v5], &v1[v5], v4);
  sub_1B99F3E24();
  sub_1B99F3E04();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1B99B4854(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B99A3FAC;

  return sub_1B99B4674(a1, a2, v6);
}

uint64_t sub_1B99B4928(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = MEMORY[0x1E69E77B0];
  v4 = *(*a2 + *MEMORY[0x1E69E77B0]);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  (*(v5 + 16))(v13 - v9);
  v11 = *(v4 + 48);
  *v8 = *v10;
  (*(*(*(v2 + *v3 + 8) - 8) + 32))(&v8[v11], &v10[v11]);
  swift_getAtKeyPath();
  return (*(v5 + 8))(v8, v4);
}

uint64_t withThrowingOrderedTaskGroup<A, B>(of:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B99B4B18, 0, 0);
}

uint64_t sub_1B99B4B18()
{
  v7 = *(v0 + 40);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v7;
  *(v2 + 32) = v3;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_1B99B4C34;
  v5 = *(v0 + 16);

  return MEMORY[0x1EEE6DD58](v5, TupleTypeMetadata2);
}

uint64_t sub_1B99B4C34()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B99B4D70, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1B99B4D70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B99B4DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B99B4DF8, 0, 0);
}

uint64_t sub_1B99B4DF8()
{
  v1 = *(v0 + 48);
  v2 = **(v0 + 40);
  *(v0 + 16) = 0;
  *(v0 + 24) = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1B99B4F04;
  v4 = *(v0 + 32);

  return v6(v4, v0 + 16);
}

uint64_t sub_1B99B4F04()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1B99B5030;
  }

  else
  {
    v2 = sub_1B99B5018;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B99B5048(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 32);
  v6 = *(v2 + 40);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1B99A3FAC;

  return sub_1B99B4DD4(a1, a2, v7, v6);
}

uint64_t sub_1B99B5118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B99B5154(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 8))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_1B99B5198(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
    }
  }

  return result;
}

uint64_t sub_1B99B5248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Reference(0, *(a3 + a4 - 8), a3, a4);

  sub_1B99B63EC();
}

uint64_t Reference.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_1B99B63EC();
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*Reference.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x38uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = *(a2 + 16);
  *v6 = v8;
  v9 = *(v8 - 8);
  v6[1] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[3] = v11;
  v12 = *v2;
  *(v7 + 2) = *(v2 + 8);
  v7[6] = *(v2 + 24);
  v12();
  return sub_1B99B547C;
}

void sub_1B99B547C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[3];
  v6 = (*a1)[1];
  v5 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[2], v4, v7);

    v3(v5);
    v8 = *(v6 + 8);
    v8(v5, v7);

    v8(v4, v7);
  }

  else
  {

    v3(v4);
    (*(v6 + 8))(v4, v7);
  }

  free(v4);
  free(v5);

  free(v2);
}

uint64_t Reference.init(getValue:setValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t Reference.projectedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v2;
}

uint64_t ReferenceBox.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t ReferenceBox.wrappedValue.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t ReferenceBox.__allocating_init(wrappedValue:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 88), a1);
  return v2;
}

uint64_t ReferenceBox.projectedValue.getter@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  *a1 = sub_1B99B6414;
  a1[1] = v1;
  a1[2] = sub_1B99B641C;
  a1[3] = v1;
  return swift_retain_n();
}

uint64_t sub_1B99B5910@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(*a1 + 88);
  swift_beginAccess();
  return (*(*(*(v4 + 80) - 8) + 16))(a2, &a1[v5]);
}

uint64_t sub_1B99B59B4(uint64_t a1, char *a2)
{
  v4 = *a2;
  v5 = *(*a2 + 88);
  swift_beginAccess();
  (*(*(*(v4 + 80) - 8) + 24))(&a2[v5], a1);
  return swift_endAccess();
}

uint64_t ReferenceBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t ReferenceBox<A>.encode(to:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - v5;
  v8 = *(v7 + 88);
  swift_beginAccess();
  (*(v4 + 16))(v6, v2 + v8, v3);
  sub_1B99F3B54();
  return (*(v4 + 8))(v6, v3);
}

uint64_t ReferenceBox<A>.init(from:)(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1B99B6424(v4, v9);
  sub_1B99F3FA4();
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  if (!v2)
  {
    return ReferenceBox.__allocating_init(wrappedValue:)(v6);
  }

  return result;
}

uint64_t sub_1B99B5DE0@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = ReferenceBox<A>.init(from:)(a1, *(a2 - 8));
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t ReferenceBox<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - v5;
  v8 = *(v7 + 88);
  swift_beginAccess();
  (*(v4 + 16))(v6, v2 + v8, v3);
  sub_1B99F3B74();
  return (*(v4 + 8))(v6, v3);
}

uint64_t ReferenceBox<A>.hashValue.getter(uint64_t a1)
{
  sub_1B99F4A04();
  ReferenceBox<A>.hash(into:)(v3, a1);
  return sub_1B99F4A24();
}

uint64_t sub_1B99B5FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  sub_1B99F4A04();
  ReferenceBox<A>.hash(into:)(v5, v3);
  return sub_1B99F4A24();
}

uint64_t sub_1B99B6040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *, uint64_t, uint64_t))
{
  v22 = a4;
  v8 = *(v4 + 80);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v21 - v14;
  v16 = *(*v13 + 88);
  swift_beginAccess();
  v17 = *(v9 + 16);
  v17(v15, a1 + v16, v8);
  v18 = *(*a2 + 88);
  swift_beginAccess();
  v17(v12, a2 + v18, v8);
  LOBYTE(v17) = v22(v15, v12, v8, a3);
  v19 = *(v9 + 8);
  v19(v12, v8);
  v19(v15, v8);
  return v17 & 1;
}

uint64_t sub_1B99B627C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - v7;
  v10 = *(v9 + 88);
  swift_beginAccess();
  (*(v6 + 16))(v8, v2 + v10, v5);
  v11 = a2(v5, a1);
  (*(v6 + 8))(v8, v5);
  return v11;
}

uint64_t sub_1B99B6424(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1B99B6488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B99B64D0(uint64_t *a1, int a2)
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

uint64_t sub_1B99B6518(uint64_t result, int a2, int a3)
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

void *Result<>.ContainBothSuccessAndFailure.failure.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));
  v3 = v2;
  return v2;
}

uint64_t sub_1B99B661C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for Result<>.ContainBothSuccessAndFailure(0, a3, v7, v8);
  *(a4 + *(result + 28)) = a2;
  return result;
}

uint64_t sub_1B99B6760@<X0>(void (*a1)(_BYTE *)@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1B99F4A34();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11[-v8];
  a1(v5);
  swift_storeEnumTagMultiPayload();
  return (*(v7 + 32))(a2, v9, v6);
}

uint64_t sub_1B99B6914@<X0>(void (*a1)(char *)@<X0>, void *a2@<X2>, uint64_t a4@<X8>)
{
  v7 = a2[2];
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a2[3] - 8) + 32))(a4, v13, a2[3]);
    sub_1B99F4A34();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v8 + 32))(v11, v13, v7);
    a1(v11);
    return (*(v8 + 8))(v11, v7);
  }
}

id static Result<>.foundation_from(_:_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B99F41C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBBDC9F0, "Zp");
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v14 = &v25 - v13;
  (*(*(v11 - 8) + 16))(&v25 - v13, a1, v11);
  if ((*(v8 + 48))(v14, 1, a3) == 1)
  {
    if (a2)
    {
      *a4 = a2;
    }

    else
    {
      type metadata accessor for Result<>.ShouldHaveEitherSuccessOrFailure(0, a3, v15, v16);
      swift_getWitnessTable();
      *a4 = swift_allocError();
    }
  }

  else
  {
    if (!a2)
    {
      (*(v8 + 32))(a4, v14, a3);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
      sub_1B99F4A34();
      goto LABEL_8;
    }

    v17 = *(v8 + 32);
    v17(v10, v14, a3);
    v20 = type metadata accessor for Result<>.ContainBothSuccessAndFailure(0, a3, v18, v19);
    swift_getWitnessTable();
    v21 = swift_allocError();
    v23 = v22;
    v17(v22, v10, a3);
    *&v23[*(v20 + 28)] = a2;
    *a4 = v21;
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  sub_1B99F4A34();
LABEL_8:
  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_1B99B6E60(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1B99B71D8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B99B6EE8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1B99B7024(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

unint64_t sub_1B99B71D8()
{
  result = qword_1EBBDCA78;
  if (!qword_1EBBDCA78)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBBDCA78);
  }

  return result;
}

uint64_t sub_1B99B723C(void *a1)
{
  result = (*(v1 + 32))(*(v1 + 48));
  if (v2)
  {
    *a1 = v2;
  }

  return result;
}

uint64_t static Promise<A>.delay(interval:queue:)(uint64_t a1, void *a2)
{
  v4 = sub_1B99F3A34();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  (*(v5 + 32))(v9 + v8, v7, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBBDC710, &qword_1B99F6220);
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1B99B780C;
  *(v11 + 24) = v9;
  v12 = objc_allocWithZone(MEMORY[0x1E6985DF8]);
  aBlock[4] = sub_1B99B2F3C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B99B2964;
  aBlock[3] = &block_descriptor_1;
  v13 = _Block_copy(aBlock);
  v14 = a2;
  v15 = [v12 initWithBlock_];
  _Block_release(v13);

  *(v10 + 16) = v15;
  return v10;
}

uint64_t sub_1B99B748C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v28 = a3;
  v6 = sub_1B99F3A44();
  v27 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B99F3A84();
  v25 = *(v9 - 8);
  v26 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B99F3AB4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;

  sub_1B99F3AA4();
  MEMORY[0x1BFAE03A0](v16, v24);
  v20 = *(v13 + 8);
  v20(v16, v12);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1B99B8360;
  *(v21 + 24) = v19;
  aBlock[4] = sub_1B99B83A0;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B99BDF38;
  aBlock[3] = &block_descriptor_53_0;
  v22 = _Block_copy(aBlock);
  sub_1B99F3A74();
  v29 = MEMORY[0x1E69E7CC0];
  sub_1B99B83D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC510, &qword_1B99F6FD0);
  sub_1B99A9A84();
  sub_1B99F4224();
  MEMORY[0x1BFAE09E0](v18, v11, v8, v22);
  _Block_release(v22);
  (*(v27 + 8))(v8, v6);
  (*(v25 + 8))(v11, v26);
  v20(v18, v12);
}

uint64_t static Promise<A>.delay(interval:)(uint64_t a1)
{
  v2 = sub_1B99F3A34();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = sub_1B99F3A54();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B99B8134();
  (*(v6 + 104))(v8, *MEMORY[0x1E69E7F98], v5);
  v9 = sub_1B99F4154();
  (*(v6 + 8))(v8, v5);
  (*(v3 + 16))(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v10 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  (*(v3 + 32))(v11 + v10, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBBDC710, &qword_1B99F6220);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1B99B8444;
  *(v13 + 24) = v11;
  v14 = objc_allocWithZone(MEMORY[0x1E6985DF8]);
  aBlock[4] = sub_1B99B8434;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B99B2964;
  aBlock[3] = &block_descriptor_14;
  v15 = _Block_copy(aBlock);
  v16 = v9;
  v17 = [v14 initWithBlock_];
  _Block_release(v15);

  *(v12 + 16) = v17;
  return v12;
}

uint64_t *Promise.timeout(after:queue:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1B99F3A34();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a1, v7);
  v11 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  (*(v8 + 32))(v12 + v11, v10, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBBDC710, &qword_1B99F6220);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1B99B8444;
  *(v14 + 24) = v12;
  v15 = objc_allocWithZone(MEMORY[0x1E6985DF8]);
  aBlock[4] = sub_1B99B8434;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B99B2964;
  aBlock[3] = &block_descriptor_25;
  v16 = _Block_copy(aBlock);
  v17 = a2;
  v18 = [v15 initWithBlock_];
  _Block_release(v16);

  *(v13 + 16) = v18;
  v19 = *(v6 + 80);
  type metadata accessor for Promise(0, v19, v20, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBDD180, &qword_1B99F6228);
  swift_allocObject();
  v22 = sub_1B99F3DC4();
  v24 = v23;
  *v23 = v3;
  v25 = swift_allocObject();
  *(v25 + 16) = v19;
  v26 = swift_allocObject();
  v26[2] = v19;
  v26[3] = sub_1B99B82C8;
  v26[4] = v25;

  v28 = sub_1B99AF31C(sub_1B99B82E4, v26, v19, v27);

  v24[1] = v28;
  sub_1B99F3E24();
  static Promise.race(_:)(v22, v29, v30, v31);

  v33 = sub_1B99AF964(sub_1B99B830C, v3, v19, v32);

  v34 = swift_allocObject();
  *(v34 + 16) = v19;
  *(v34 + 24) = v13;

  sub_1B99B0D1C(sub_1B99B8328, v34);

  return v33;
}

uint64_t sub_1B99B7EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Promise.TimedOut(0, a1, a3, a4);
  swift_getWitnessTable();
  swift_allocError();
  return swift_willThrow();
}

id sub_1B99B7F28(void *a1)
{
  sub_1B99B0CC4(a1);
  swift_willThrow();
  return a1;
}

void sub_1B99B7F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Promise.Aborted(0, a3, a3, a4);
  swift_getWitnessTable();
  v5 = swift_allocError();
  v6 = *(a2 + 16);
  v7 = sub_1B99F36D4();
  [v6 abortWithError_];
}

uint64_t *Promise.timeout(after:)(uint64_t a1)
{
  v2 = sub_1B99F3A54();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B99B8134();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E7F98], v2);
  v6 = sub_1B99F4154();
  (*(v3 + 8))(v5, v2);
  v7 = Promise.timeout(after:queue:)(a1, v6);

  return v7;
}

unint64_t sub_1B99B8134()
{
  result = qword_1ED99DBB0;
  if (!qword_1ED99DBB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED99DBB0);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = sub_1B99F3A34();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B99B8244(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1B99F3A34() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_1B99B748C(a1, a2, v6, v7);
}

uint64_t sub_1B99B8360(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

unint64_t sub_1B99B83D0()
{
  result = qword_1EBBDC508;
  if (!qword_1EBBDC508)
  {
    sub_1B99F3A44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDC508);
  }

  return result;
}

void *MessageSender.__allocating_init(xpcSession:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCC00, &qword_1B99F6A00);
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  type metadata accessor for MessageSender();
  v3 = swift_allocObject();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBBDCC08, &qword_1B99F6A08);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  v3[5] = v4;
  v3[6] = &off_1F37B2FC8;
  v3[2] = v5;
  return v3;
}

void *MessageSender.__allocating_init(machService:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B99F39A4();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1B99F39D4();
  sub_1B99F3994();
  result = sub_1B99F3984();
  if (!v2)
  {
    v5 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCC00, &qword_1B99F6A00);
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    type metadata accessor for MessageSender();
    v7 = swift_allocObject();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBBDCC08, &qword_1B99F6A08);
    v9 = swift_allocObject();
    result = v7;
    *(v9 + 16) = v6;
    v7[5] = v8;
    v7[6] = &off_1F37B2FC8;
    v7[2] = v9;
  }

  return result;
}

uint64_t OrderedTaskGroup.addTask(priority:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v9 = *(a4 + 16);
  v8[2] = v9;
  v8[3] = a2;
  v8[4] = a3;

  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v11 = type metadata accessor for ThrowingOrderedTaskGroup(0, v9, v10, MEMORY[0x1E69E7288]);
  ThrowingOrderedTaskGroup.addTask(priority:operation:)(a1, &unk_1B99F6A18, v8, v11);
}

uint64_t sub_1B99B8760(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B99A3FAC;

  return sub_1B99A1BCC(a1, v4);
}

uint64_t OrderedTaskGroup.results.getter(uint64_t a1)
{
  v4 = v1[1];
  v2[2] = *v1;
  v2[3] = v4;
  v5 = swift_task_alloc();
  v2[4] = v5;
  v6 = *(a1 + 16);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v8 = type metadata accessor for ThrowingOrderedTaskGroup(0, v6, v7, MEMORY[0x1E69E7288]);
  *v5 = v2;
  v5[1] = sub_1B99B8908;

  return ThrowingOrderedTaskGroup.results.getter(v8);
}

uint64_t sub_1B99B8908(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_1B99B8A48;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_1B99B8A30;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t withOrderedTaskGroup<A, B>(of:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B99B8A8C, 0, 0);
}

uint64_t sub_1B99B8A8C()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  v2 = *(v0 + 32);
  *(v1 + 16) = *(v0 + 48);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_1B99B8B58;
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  return withThrowingOrderedTaskGroup<A, B>(of:body:)(v6, v7, &unk_1B99F6A40, v1, v4, v5);
}

void sub_1B99B8B58()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v3 = *(v2 + 8);

    v3();
  }
}

uint64_t sub_1B99B8C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B99B8CB0, 0, 0);
}

uint64_t sub_1B99B8CB0()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = *v2;
  v3 = v2[1];
  v0[2] = v4;
  v0[3] = v3;
  v8 = (v1 + *v1);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1B99B8DBC;
  v6 = v0[4];

  return (v8)(v6, v0 + 2);
}

uint64_t sub_1B99B8DBC()
{

  return MEMORY[0x1EEE6DFA0](sub_1B99B5018, 0, 0);
}

uint64_t sub_1B99B8EB8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 32);
  v6 = *(v2 + 40);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1B99A3EB8;

  return sub_1B99B8C8C(a1, a2, v7, v6);
}

uint64_t sub_1B99B8F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B99B8FD4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B99F4424();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B99B9028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B99B909C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1B99B9108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B99B9178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B99B91E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B99B8FD4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1B99B9224@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B99A50F8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B99B9270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B99B8FD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B99B92B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B99AD078();
  *a1 = result;
  return result;
}

uint64_t sub_1B99B92E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B99B9338(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t CodableResult.result.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_1B99F4A34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t CodableResult.init(result:)@<X0>(uint64_t a1@<X0>, uint64_t a5@<X8>)
{
  v7 = sub_1B99F4A34();
  v8 = *(*(v7 - 8) + 32);

  return v8(a5, a1, v7);
}

uint64_t CodableResult<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = *(a2 + 24);
  v35 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v32 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 16);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 32);
  v13 = sub_1B99F4A34();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - v15;
  v31 = v9;
  v36 = v5;
  type metadata accessor for CodableResult.CodingKeys(255, v9, v5, v12);
  swift_getWitnessTable();
  v17 = sub_1B99F44C4();
  v38 = *(v17 - 8);
  v39 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v29 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B99F4AA4();
  (*(v14 + 16))(v16, v37, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = v35;
    v20 = v36;
    v22 = v32;
    (*(v35 + 32))(v32, v16, v36);
    v41 = 1;
    v23 = v39;
    sub_1B99F44B4();
    (*(v21 + 8))(v22, v20);
    return (*(v38 + 8))(v19, v23);
  }

  else
  {
    v26 = v29;
    v25 = v30;
    v27 = v31;
    (*(v30 + 32))(v29, v16, v31);
    v40 = 0;
    v28 = v39;
    sub_1B99F44B4();
    (*(v25 + 8))(v26, v27);
    return (*(v38 + 8))(v19, v28);
  }
}

uint64_t CodableResult<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v38 = a5;
  v48 = a4;
  v40 = a7;
  v35 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v45 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1B99F41C4();
  v44 = *(v37 - 8);
  v12 = MEMORY[0x1EEE9AC00](v37);
  v49 = &v33 - v13;
  v43 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CodableResult.CodingKeys(255, a2, a3, a6);
  swift_getWitnessTable();
  v42 = sub_1B99F4484();
  v47 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v16 = &v33 - v15;
  v46 = a3;
  v41 = a6;
  v17 = type metadata accessor for CodableResult(0, a2, a3, a6);
  v39 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = v50;
  sub_1B99F4A74();
  if (v20)
  {
    v26 = a1;
  }

  else
  {
    v21 = v43;
    v22 = v44;
    v33 = v19;
    v34 = v17;
    v50 = a1;
    v24 = v45;
    v23 = v46;
    v52 = 0;
    v25 = v42;
    sub_1B99F4454();
    v28 = (*(v21 + 48))(v49, 1, a2);
    if (v28 == 1)
    {
      (*(v22 + 8))(v49, v37);
      v51 = 1;
      sub_1B99F4474();
      v29 = v40;
      (*(v47 + 8))(v16, v25);
      v30 = v33;
      (*(v35 + 32))(v33, v24, v23);
    }

    else
    {
      (*(v47 + 8))(v16, v25);
      v31 = *(v21 + 32);
      v32 = v36;
      v31(v36, v49, a2);
      v30 = v33;
      v31(v33, v32, a2);
      v29 = v40;
    }

    sub_1B99F4A34();
    swift_storeEnumTagMultiPayload();
    (*(v39 + 32))(v29, v30, v34);
    v26 = v50;
  }

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t CodableResult<>.hash(into:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1B99F4A34();

  return sub_1B99F4A44();
}

uint64_t CodableResult<>.hashValue.getter(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1B99F4A04();
  sub_1B99F4A34();
  sub_1B99F4A44();
  return sub_1B99F4A24();
}

uint64_t sub_1B99B9EE8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a3 - 16);
  v4 = *(a3 - 8);
  sub_1B99F4A04();
  CodableResult<>.hash(into:)(v7, a2, v4, v5);
  return sub_1B99F4A24();
}

uint64_t sub_1B99B9F94(void *a1)
{
  result = sub_1B99F4A34();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B99BA008(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_1B99BA130(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t withTimeout<A>(after:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B99BA3A0, 0, 0);
}

uint64_t sub_1B99BA3A0()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = *(v0 + 40);
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;
  *(v4 + 40) = v5;
  sub_1B99B5110(v1, v1);
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_1B99BA4AC;
  v7 = *(v0 + 56);
  v8 = *(v0 + 16);

  return MEMORY[0x1EEE6DD58](v8, v7);
}

uint64_t sub_1B99BA4AC()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B99BA5E8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1B99BA5E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B99BA64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  sub_1B99F41C4();
  v7[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC4F0, &qword_1B99F5B20);
  v7[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B99BA724, 0, 0);
}

uint64_t sub_1B99BA724()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[5];
  v13 = v0[6];
  v14 = v0[7];
  v4 = v0[4];
  v5 = sub_1B99F3EC4();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;
  v7[5] = v4;
  v7[6] = v3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v8 = sub_1B99F3F34();
  sub_1B99B3FB0(v1, &unk_1B99F6F80, v7, v8);
  sub_1B99A18A4(v1, &qword_1EBBDC4F0, &qword_1B99F5B20);
  v6(v1, 1, 1, v5);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = v13;
  v9[6] = v14;

  sub_1B99B3FB0(v1, &unk_1B99F6F90, v9, v8);
  sub_1B99A18A4(v1, &qword_1EBBDC4F0, &qword_1B99F5B20);
  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_1B99BA95C;
  v11 = v0[9];

  return MEMORY[0x1EEE6DAC8](v11, 0, 0, v8);
}

uint64_t sub_1B99BA95C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1B99BABAC;
  }

  else
  {
    v2 = sub_1B99BAA70;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B99BAA70()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = *(v1 - 8);
  result = (*(v3 + 48))(v2, 1, v1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 32))(v0[2], v2, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC650, &qword_1B99F6A20);
    sub_1B99F3F24();

    v5 = v0[1];

    return v5();
  }

  return result;
}

uint64_t sub_1B99BABAC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC650, &qword_1B99F6A20);
  sub_1B99F3F24();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B99BAC5C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1B99A3EB8;

  return sub_1B99BA64C(a1, a2, v7, v8, v9, v10, v6);
}

uint64_t sub_1B99BAD44(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  sub_1B99F3E74();
  result = sub_1B99F41C4();
  if (v2 <= 0x3F)
  {
    sub_1B99F4A34();
    result = sub_1B99F41C4();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1B99BAE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1B99F4384();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B99BAF3C, 0, 0);
}

uint64_t sub_1B99BAF3C()
{
  sub_1B99F49A4();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1B99BAFFC;
  v3 = v0[2];
  v2 = v0[3];

  return sub_1B99BD4A4(v3, v2, 0, 0, 1);
}

uint64_t sub_1B99BAFFC()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 64) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1B99BB1FC;
  }

  else
  {
    v5 = sub_1B99BB16C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B99BB16C()
{
  sub_1B99BDE84();
  swift_allocError();
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B99BB1FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B99BB260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B99BB284, 0, 0);
}

uint64_t sub_1B99BB284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SafeContinuation(0, *(v4 + 40), a3, a4);
  swift_allocObject();
  v11 = *(v4 + 24);
  v5 = sub_1B99BD2BC();
  *(v4 + 48) = v5;
  v6 = swift_task_alloc();
  *(v4 + 56) = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v11;
  v7 = swift_task_alloc();
  *(v4 + 64) = v7;
  *v7 = v4;
  v7[1] = sub_1B99BB3AC;
  v8 = *(v4 + 40);
  v9 = *(v4 + 16);

  return MEMORY[0x1EEE6DE18](v9, &unk_1B99F6FA0, v6, sub_1B99BDCF4, v5, 0, 0, v8);
}

uint64_t sub_1B99BB3AC()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1B99BB52C;
  }

  else
  {

    v2 = sub_1B99BB4C8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B99BB4C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B99BB52C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B99BB5CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1B99BB618, 0, 0);
}

uint64_t sub_1B99BB618()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v2;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = *(v1 + 80);
  *v4 = v0;
  v4[1] = sub_1B99B4C34;
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000015, 0x80000001B99FA4F0, sub_1B99BDCF8, v3, v5);
}

uint64_t sub_1B99BB714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*a2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v9 = sub_1B99F3E74();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18[-v12];
  (*(v10 + 16))(&v18[-v12], a1, v9);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  *(v15 + 24) = a2;
  (*(v10 + 32))(v15 + v14, v13, v9);
  v16 = (v15 + ((v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = a3;
  v16[1] = a4;
  v19 = &unk_1B99F6FB0;
  v20 = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCD18, &qword_1B99F6F50);
  sub_1B99F4444();
}

uint64_t sub_1B99BB900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v7 = sub_1B99F4A34();
  v5[6] = v7;
  v5[7] = *(v7 - 8);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B99BBA0C, a2, 0);
}

uint64_t sub_1B99BBA0C()
{
  v1 = v0[4];
  sub_1B99BC1D8(v0[3]);
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_1B99BBB0C;
  v3 = v0[9];

  return v5(v3);
}

uint64_t sub_1B99BBB0C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1B99BBD34;
  }

  else
  {
    v2 = sub_1B99BBC20;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B99BBC20()
{
  v1 = *(v0 + 16);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B99BBC94, v1, 0);
}

uint64_t sub_1B99BBC94()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  sub_1B99BC564(v1);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B99BBD34()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 16);
  **(v0 + 64) = v1;
  swift_storeEnumTagMultiPayload();
  v3 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1B99BBDB8, v2, 0);
}

uint64_t sub_1B99BBDB8()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_1B99BC564(v1);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1B99BBE4C, 0, 0);
}

uint64_t sub_1B99BBE4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B99BBEC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCD20, &unk_1B99F6F58);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC4F0, &qword_1B99F5B20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v18 - v10;
  sub_1B99BD974(a1, v8);
  v12 = sub_1B99F3F64();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B99A18A4(v8, &qword_1EBBDCD20, &unk_1B99F6F58);
    v14 = 1;
  }

  else
  {
    sub_1B99F3F54();
    (*(v13 + 8))(v8, v12);
    v14 = 0;
  }

  v15 = sub_1B99F3EC4();
  (*(*(v15 - 8) + 56))(v11, v14, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a2;
  v16[5] = a3;

  return sub_1B99F0F9C(0, 0, v11, &unk_1B99F6F70, v16);
}

uint64_t sub_1B99BC0E0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1B99A3EB8;

  return v8(a1);
}

uint64_t sub_1B99BC1D8(uint64_t a1)
{
  v23 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v2 = sub_1B99F4A34();
  v24 = sub_1B99F41C4();
  v22 = *(v24 - 8);
  v3 = MEMORY[0x1EEE9AC00](v24);
  v5 = &v22 - v4;
  v6 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v22 - v7;
  v9 = sub_1B99F3E74();
  v10 = sub_1B99F41C4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v12;
  v14 = *(v9 - 8);
  (*(v14 + 16))(&v22 - v12, v23, v9);
  (*(v14 + 56))(v13, 0, 1, v9);
  v15 = *(*v1 + 96);
  swift_beginAccess();
  v16 = v10;
  v17 = v22;
  (*(v11 + 40))(v1 + v15, v13, v16);
  swift_endAccess();
  v18 = *(*v1 + 104);
  swift_beginAccess();
  v19 = v1 + v18;
  v20 = v24;
  (*(v17 + 16))(v5, v19, v24);
  if ((*(v6 + 48))(v5, 1, v2) == 1)
  {
    return (*(v17 + 8))(v5, v20);
  }

  (*(v6 + 32))(v8, v5, v2);
  sub_1B99BC564(v8);
  return (*(v6 + 8))(v8, v2);
}

uint64_t sub_1B99BC564(uint64_t a1)
{
  v22 = *v1;
  v2 = v22;
  v23 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v3 = sub_1B99F4A34();
  v4 = sub_1B99F41C4();
  v20 = *(v4 - 8);
  v21 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - v5;
  v7 = sub_1B99F3E74();
  v8 = sub_1B99F41C4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - v11;
  v13 = *(v7 - 8);
  result = MEMORY[0x1EEE9AC00](v10);
  v16 = &v20 - v15;
  if ((*(v1 + *(v2 + 112)) & 1) == 0)
  {
    v17 = *(v22 + 96);
    swift_beginAccess();
    (*(v9 + 16))(v12, v1 + v17, v8);
    if ((*(v13 + 48))(v12, 1, v7) == 1)
    {
      (*(v9 + 8))(v12, v8);
      v18 = *(v3 - 8);
      (*(v18 + 16))(v6, v23, v3);
      (*(v18 + 56))(v6, 0, 1, v3);
      v19 = *(*v1 + 104);
      swift_beginAccess();
      (*(v20 + 40))(v1 + v19, v6, v21);
      return swift_endAccess();
    }

    else
    {
      (*(v13 + 32))(v16, v12, v7);
      sub_1B99BCC0C(v23, v7);
      sub_1B99BC948(v1);
      return (*(v13 + 8))(v16, v7);
    }
  }

  return result;
}

uint64_t sub_1B99BC948(uint64_t *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v3 = sub_1B99F4A34();
  v4 = sub_1B99F41C4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - v6;
  v8 = sub_1B99F3E74();
  v9 = sub_1B99F41C4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  *(a1 + *(v2 + 112)) = 1;
  (*(*(v8 - 8) + 56))(&v16 - v11, 1, 1, v8);
  v13 = *(*a1 + 96);
  swift_beginAccess();
  (*(v10 + 40))(a1 + v13, v12, v9);
  swift_endAccess();
  (*(*(v3 - 8) + 56))(v7, 1, 1, v3);
  v14 = *(*a1 + 104);
  swift_beginAccess();
  (*(v5 + 40))(a1 + v14, v7, v4);
  return swift_endAccess();
}

uint64_t sub_1B99BCC0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B99F4A34();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18 - v14;
  (*(v16 + 16))(&v18 - v14, a1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v15, v9);
    return sub_1B99F3E54();
  }

  else
  {
    (*(v4 + 32))(v7, v15, v3);
    return sub_1B99F3E64();
  }
}

uint64_t sub_1B99BCE48()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCD18, &qword_1B99F6F50);
  sub_1B99F4444();
}

uint64_t sub_1B99BCED4(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v3 = sub_1B99F4A34();
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B99BCFCC, 0, 0);
}

uint64_t sub_1B99BCFCC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  sub_1B99F3E84();
  sub_1B99BDED8(&qword_1ED99DC80, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
  v3 = swift_allocError();
  sub_1B99F3B04();
  *v1 = v3;
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B99BD0B0, v2, 0);
}

uint64_t sub_1B99BD0B0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_1B99BC564(v1);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B99BD144()
{
  v1 = *(*v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  sub_1B99F3E74();
  v2 = sub_1B99F41C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 104);
  sub_1B99F4A34();
  v4 = sub_1B99F41C4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1B99BD27C()
{
  v0 = sub_1B99BD144();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t *sub_1B99BD2BC()
{
  swift_defaultActor_initialize();
  v1 = *(*v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDC650, &qword_1B99F6A20);
  v2 = sub_1B99F3E74();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = *(*v0 + 104);
  v4 = sub_1B99F4A34();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  *(v0 + *(*v0 + 112)) = 0;
  return v0;
}

uint64_t sub_1B99BD408(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B99A3FAC;

  return sub_1B99BCED4(a1, v1);
}

uint64_t sub_1B99BD4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1B99F4374();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1B99BD5A4, 0, 0);
}

uint64_t sub_1B99BD5A4()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1B99F4384();
  v5 = sub_1B99BDED8(&qword_1ED99DF30, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1B99F4984();
  sub_1B99BDED8(&qword_1ED99DF38, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1B99F4394();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1B99BD734;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}