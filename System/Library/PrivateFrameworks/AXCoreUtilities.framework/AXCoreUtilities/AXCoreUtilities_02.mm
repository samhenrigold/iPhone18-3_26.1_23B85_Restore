uint64_t sub_1915E3DD8(uint64_t result)
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

  result = sub_1915F47A8(result, v10, 1, v3);
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

void *sub_1915E3ECC(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_1915F48B4(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4D0, &unk_191672480);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1915E3FF8(uint64_t result, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
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

_OWORD *sub_1915E4370(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1915E4390(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v17 = MEMORY[0x1E69E7CC0];
  sub_1915F4E6C(0, v5, 0);
  v6 = v17;
  for (i = (a3 + 40); ; i += 2)
  {
    v10 = *i;
    v15[0] = *(i - 1);
    v15[1] = v10;

    a1(&v16, v15);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v16;
    v17 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1915F4E6C((v12 > 1), v13 + 1, 1);
      v6 = v17;
    }

    *(v6 + 16) = v13 + 1;
    *(v6 + 8 * v13 + 32) = v11;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t axDarwinNotificationStream(_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4E0, &qword_1916724A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  sub_1915E4664(inited, nullsub_1, 0);
  swift_setDeallocating();
  return sub_1915E42C0(inited + 32);
}

uint64_t axDarwinNotificationStream<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4E0, &qword_1916724A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  axDarwinNotificationStream<A>(_:_:)(inited, a3, a4, a5);
  swift_setDeallocating();
  return sub_1915E42C0(inited + 32);
}

uint64_t sub_1915E462C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1915E4664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF508, &qword_1916724F8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v22[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF510, &qword_191672500);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v22[-v15];
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8650], v7);
  sub_19166BB68();
  (*(v8 + 8))(v11, v7);
  v17 = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  v23 = v17;
  v24 = v16;
  v25 = a2;
  v26 = a3;
  v18 = sub_1915E4390(sub_1915E62F4, v22, a1);
  type metadata accessor for AXTaskWrapper();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v17;
  sub_19166BB88();
  return (*(v13 + 8))(v16, v12);
}

uint64_t axDarwinNotificationStream<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v23 = a1;
  v7 = sub_19166BB98();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v22 - v10;
  v12 = sub_19166BBC8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v22 - v15;
  nullsub_1();
  sub_1915D455C(v11);
  sub_19166BB68();
  (*(v8 + 8))(v11, v7);
  v17 = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  v25 = a4;
  v26 = v17;
  v27 = v16;
  v28 = a2;
  v29 = v22;
  v18 = sub_1915E4390(sub_1915E50CC, v24, v23);
  type metadata accessor for AXTaskWrapper();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = v19;
  v20[4] = v17;
  sub_19166BB88();
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_1915E4B1C(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a5;
  v30 = a6;
  v27 = a3;
  v28 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF510, &qword_191672500);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v27 - v16;
  v35 = a1;
  v36 = a2;
  v33 = 46;
  v34 = 0xE100000000000000;
  v31 = 95;
  v32 = 0xE100000000000000;
  sub_1915E5F84();
  sub_19166BF98();
  v18 = sub_19166B718();

  v19 = CFNotificationCenterGetDarwinNotifyCenter();
  v20 = sub_19166B718();
  CFNotificationCenterAddObserver(v19, v27, sub_1915E5118, v20, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v21 = sub_19166BB58();
  (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  (*(v9 + 16))(v13, v28, v8);
  v22 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 4) = v18;
  (*(v9 + 32))(&v23[v22], v13, v8);
  v24 = &v23[(v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8];
  v25 = v30;
  *v24 = v29;
  v24[1] = v25;

  return sub_1915D593C(0, 0, v17, &unk_191672510, v23);
}

uint64_t sub_1915E4DF0@<X0>(uint64_t *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v31 = a6;
  v32 = a4;
  v33 = a5;
  v34 = a7;
  v29 = a2;
  v30 = a3;
  v8 = sub_19166BBC8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v29 - v16;
  v18 = a1[1];
  v39 = *a1;
  v40 = v18;
  v37 = 46;
  v38 = 0xE100000000000000;
  v35 = 95;
  v36 = 0xE100000000000000;
  sub_1915E5F84();
  sub_19166BF98();
  v19 = sub_19166B718();

  v20 = CFNotificationCenterGetDarwinNotifyCenter();
  v21 = sub_19166B718();
  CFNotificationCenterAddObserver(v20, v29, sub_1915E5118, v21, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v22 = sub_19166BB58();
  (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
  (*(v9 + 16))(v13, v30, v8);
  v23 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v24 = (v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  *(v25 + 4) = v31;
  *(v25 + 5) = v19;
  (*(v9 + 32))(&v25[v23], v13, v8);
  v26 = &v25[v24];
  v27 = v33;
  *v26 = v32;
  v26[1] = v27;

  result = sub_1915D593C(0, 0, v17, &unk_1916724E0, v25);
  *v34 = result;
  return result;
}

void sub_1915E5118(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a1;
  v8 = a3;
  v10 = a5;
  sub_1915E61E8(a3, v9);
}

uint64_t sub_1915E5188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF518, &unk_191672518);
  v7[7] = v8;
  v7[8] = *(v8 - 8);
  v7[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF500, &qword_1916724E8);
  v7[10] = swift_task_alloc();
  v9 = sub_19166BE68();
  v7[11] = v9;
  v7[12] = *(v9 - 8);
  v7[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1915E52EC, 0, 0);
}

uint64_t sub_1915E52EC()
{
  v1 = [objc_opt_self() defaultCenter];
  sub_19166BE78();

  sub_19166BE58();
  v2 = sub_1915E6128();
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_1915E53E8;
  v4 = v0[10];
  v5 = v0[11];

  return MEMORY[0x1EEE6D8C8](v4, v5, v2);
}

uint64_t sub_1915E53E8()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1915E56E0;
  }

  else
  {
    v2 = sub_1915E54FC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1915E5518()
{
  v1 = *(v0 + 80);
  v2 = sub_19166AF78();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v6 = *(v0 + 64);
    v5 = *(v0 + 72);
    v7 = *(v0 + 56);
    (*(v0 + 40))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF510, &qword_191672500);
    sub_19166BBA8();
    (*(v6 + 8))(v5, v7);
    sub_1915E6180(v1);
    v8 = sub_1915E6128();
    v9 = swift_task_alloc();
    *(v0 + 112) = v9;
    *v9 = v0;
    v9[1] = sub_1915E53E8;
    v10 = *(v0 + 80);
    v11 = *(v0 + 88);

    return MEMORY[0x1EEE6D8C8](v10, v11, v8);
  }
}

uint64_t sub_1915E56E0()
{
  *(v0 + 16) = *(v0 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3B8, &qword_1916724F0);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t sub_1915E576C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  v8[8] = swift_task_alloc();
  v9 = sub_19166BB78();
  v8[9] = v9;
  v8[10] = *(v9 - 8);
  v8[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF500, &qword_1916724E8);
  v8[12] = swift_task_alloc();
  v10 = sub_19166BE68();
  v8[13] = v10;
  v8[14] = *(v10 - 8);
  v8[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1915E58F8, 0, 0);
}

uint64_t sub_1915E58F8()
{
  v1 = [objc_opt_self() defaultCenter];
  sub_19166BE78();

  sub_19166BE58();
  v2 = sub_1915E6128();
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_1915E59F4;
  v4 = v0[12];
  v5 = v0[13];

  return MEMORY[0x1EEE6D8C8](v4, v5, v2);
}

uint64_t sub_1915E59F4()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1915E5D08;
  }

  else
  {
    v2 = sub_1915E5B08;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1915E5B24()
{
  v1 = *(v0 + 96);
  v2 = sub_19166AF78();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v6 = *(v0 + 80);
    v5 = *(v0 + 88);
    v7 = *(v0 + 72);
    (*(v0 + 40))();
    sub_19166BBC8();
    sub_19166BBA8();
    (*(v6 + 8))(v5, v7);
    sub_1915E6180(v1);
    v8 = sub_1915E6128();
    v9 = swift_task_alloc();
    *(v0 + 128) = v9;
    *v9 = v0;
    v9[1] = sub_1915E59F4;
    v10 = *(v0 + 96);
    v11 = *(v0 + 104);

    return MEMORY[0x1EEE6D8C8](v10, v11, v8);
  }
}

uint64_t sub_1915E5D08()
{
  *(v0 + 16) = *(v0 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3B8, &qword_1916724F0);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

void sub_1915E5D94(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = *(*(a2 + 16) + 16);
  if (v5)
  {

    v6 = 32;
    do
    {

      sub_19166BC28();

      v6 += 8;
      --v5;
    }

    while (v5);
  }

  *(a2 + 16) = MEMORY[0x1E69E7CC0];

  v7 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v7, a3);
}

id sub_1915E5F18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1915E5F84()
{
  result = qword_1ED5A8200;
  if (!qword_1ED5A8200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5A8200);
  }

  return result;
}

uint64_t sub_1915E5FD8(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v6 = *(sub_19166BBC8() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[5];
  v11 = (v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1915D4F90;

  return sub_1915E576C(a1, v8, v9, v10, v1 + v7, v12, v13, v5);
}

unint64_t sub_1915E6128()
{
  result = qword_1EADAE658;
  if (!qword_1EADAE658)
  {
    sub_19166BE68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAE658);
  }

  return result;
}

uint64_t sub_1915E6180(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF500, &qword_1916724E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1915E61E8(void *a1, uint64_t a2)
{
  if (a1)
  {
    v9 = sub_19166B748();
    v10 = v3;
    v4 = sub_1915E5F84();
    v5 = a1;
    v8 = MEMORY[0x1E69E6158];
    sub_19166BF98();

    v6 = [objc_opt_self() defaultCenter];
    v7 = sub_19166B718();

    [v6 postNotificationName:v7 object:0];
  }
}

uint64_t sub_1915E62F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1915E4B1C(*a1, a1[1], *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1915E6340(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF510, &qword_191672500) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1915D8338;

  return sub_1915E5188(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t AXLongLivedEventLogger.__allocating_init(directory:logFilePrefix:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  AXLongLivedEventLogger.init(directory:logFilePrefix:)(a1, a2, a3);
  return v6;
}

uint64_t AXLongLivedEventLogger.init(directory:logFilePrefix:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34[1] = *MEMORY[0x1E69E9840];
  v7 = sub_19166BDB8();
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_19166BDA8();
  MEMORY[0x1EEE9AC00](v11, v12);
  v13 = sub_19166B5B8();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  v15 = OBJC_IVAR____TtC15AXCoreUtilities22AXLongLivedEventLogger_directory;
  v16 = sub_19166B088();
  v31 = *(v16 - 8);
  v32 = v16;
  (*(v31 + 16))(v3 + v15, a1);
  v28[2] = sub_1915DAA60(0, &qword_1EADAE7F0, 0x1E69E9610);
  sub_19166B598();
  v34[0] = MEMORY[0x1E69E7CC0];
  sub_1915EACA0(&qword_1EADAE7F8, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3E0, &unk_1916721A0);
  sub_1915E6918();
  v17 = v3;
  sub_19166BFE8();
  (*(v29 + 104))(v10, *MEMORY[0x1E69E8090], v30);
  *(v3 + OBJC_IVAR____TtC15AXCoreUtilities22AXLongLivedEventLogger_queue) = sub_19166BDE8();
  v18 = [objc_opt_self() defaultManager];
  v33 = 0;
  _s15AXCoreUtilities12AXCTLSupportO4PathV4pathSSvg_0();
  v19 = sub_19166B718();

  [v18 fileExistsAtPath:v19 isDirectory:&v33];

  if (v33)
  {
    (*(v31 + 8))(a1, v32);
  }

  else
  {
    v21 = v31;
    v20 = v32;
    v22 = sub_19166B048();
    v34[0] = 0;
    v23 = [v18 createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:0 error:v34];

    if (!v23)
    {
      v26 = v34[0];
      sub_19166AFF8();

      swift_willThrow();

      (*(v21 + 8))(a1, v20);
      return v17;
    }

    v24 = *(v21 + 8);
    v25 = v34[0];
    v24(a1, v20);
  }

  return v17;
}

unint64_t sub_1915E6918()
{
  result = qword_1EADAE808;
  if (!qword_1EADAE808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADAF3E0, &unk_1916721A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAE808);
  }

  return result;
}

uint64_t AXLongLivedEventLogger.deinit()
{

  v1 = OBJC_IVAR____TtC15AXCoreUtilities22AXLongLivedEventLogger_directory;
  v2 = sub_19166B088();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AXLongLivedEventLogger.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC15AXCoreUtilities22AXLongLivedEventLogger_directory;
  v2 = sub_19166B088();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

AXCoreUtilities::AXLongLivedEventLogger::LogLevel_optional __swiftcall AXLongLivedEventLogger.LogLevel.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_19166C278();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AXLongLivedEventLogger.LogLevel.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x475542454420;
  v3 = 0x474F4C2020;
  v4 = 0x4E52415720;
  if (v1 != 3)
  {
    v4 = 0x524F525245;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4F464E492020;
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

uint64_t sub_1915E6B98(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x4F464E492020;
    }

    else
    {
      v3 = 0x475542454420;
    }

    v2 = 0xE600000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
    if (a1 == 2)
    {
      v3 = 0x474F4C2020;
    }

    else if (a1 == 3)
    {
      v3 = 0x4E52415720;
    }

    else
    {
      v3 = 0x524F525245;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0x4F464E492020;
    }

    else
    {
      v7 = 0x475542454420;
    }

    v6 = 0xE600000000000000;
    if (v3 != v7)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v4 = 0x4E52415720;
    if (a2 != 3)
    {
      v4 = 0x524F525245;
    }

    if (a2 == 2)
    {
      v5 = 0x474F4C2020;
    }

    else
    {
      v5 = v4;
    }

    v6 = 0xE500000000000000;
    if (v3 != v5)
    {
      goto LABEL_25;
    }
  }

  if (v2 != v6)
  {
LABEL_25:
    v8 = sub_19166C5E8();
    goto LABEL_26;
  }

  v8 = 1;
LABEL_26:

  return v8 & 1;
}

uint64_t sub_1915E6CF8()
{
  sub_19166C778();
  sub_19166B828();

  return sub_19166C7B8();
}

uint64_t sub_1915E6DC8(uint64_t a1)
{
  sub_19166B828();
}

uint64_t sub_1915E6E84(uint64_t a1)
{
  sub_19166C778();
  sub_19166B828();

  return sub_19166C7B8();
}

void sub_1915E6F5C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x475542454420;
  v5 = 0x474F4C2020;
  v6 = 0x4E52415720;
  if (v2 != 3)
  {
    v6 = 0x524F525245;
  }

  if (v2 != 2)
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 0x4F464E492020;
    v3 = 0xE600000000000000;
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
    v3 = 0xE500000000000000;
  }

  *a1 = v7;
  a1[1] = v3;
}

id sub_1915E6FE8()
{
  v55 = sub_19166B008();
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55, v1);
  v52 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_19166B088();
  v56 = *(v3 - 8);
  v57 = v3;
  v5 = MEMORY[0x1EEE9AC00](v3, v4);
  v48 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v51 = &v48 - v9;
  MEMORY[0x1EEE9AC00](v8, v10);
  v60 = &v48 - v11;
  v12 = sub_19166B3A8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_19166B3C8();
  v58 = *(v17 - 8);
  v59 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v61 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_19166B158();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v62 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_19166B628();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = (&v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = v0;
  v29 = *(v0 + OBJC_IVAR____TtC15AXCoreUtilities22AXLongLivedEventLogger_queue);
  *v28 = v29;
  (*(v25 + 104))(v28, *MEMORY[0x1E69E8020], v24);
  v30 = v29;
  LOBYTE(v29) = sub_19166B638();
  result = (*(v25 + 8))(v28, v24);
  if (v29)
  {
    v49 = v21;
    v50 = v20;
    sub_19166B148();
    sub_19166B398();
    v32 = *(v13 + 104);
    v32(v16, *MEMORY[0x1E6969A48], v12);
    v33 = sub_19166B3B8();
    v34 = *(v13 + 8);
    v34(v16, v12);
    v32(v16, *MEMORY[0x1E6969A78], v12);
    v35 = sub_19166B3B8();
    v34(v16, v12);
    v32(v16, *MEMORY[0x1E6969A68], v12);
    v36 = sub_19166B3B8();
    v34(v16, v12);
    v63 = v36;
    v64 = sub_19166C3C8();
    v65 = v37;
    MEMORY[0x193AFC710](45, 0xE100000000000000);
    v63 = v35;
    v38 = sub_19166C3C8();
    MEMORY[0x193AFC710](v38);

    MEMORY[0x193AFC710](45, 0xE100000000000000);
    v63 = v33;
    v39 = sub_19166C3C8();
    MEMORY[0x193AFC710](v39);

    MEMORY[0x193AFC710](45, 0xE100000000000000);
    MEMORY[0x193AFC710](*(v54 + 16), *(v54 + 24));
    MEMORY[0x193AFC710](1735355438, 0xE400000000000000);
    v41 = v52;
    v40 = v53;
    v42 = v55;
    (*(v53 + 104))(v52, *MEMORY[0x1E6968F70], v55);
    sub_1915E5F84();
    v43 = v60;
    sub_19166B078();
    (*(v40 + 8))(v41, v42);

    sub_1915DAA60(0, &qword_1EADAE4C8, 0x1E696AC00);
    v45 = v56;
    v44 = v57;
    v46 = v51;
    (*(v56 + 16))(v51, v43, v57);
    v47 = sub_1915E7990(v46);
    [v47 seekToEndOfFile];
    (*(v45 + 8))(v43, v44);
    (*(v58 + 8))(v61, v59);
    (*(v49 + 8))(v62, v50);
    return v47;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1915E7990(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = sub_19166B048();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_19166B088();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_19166AFF8();

    swift_willThrow();
    v9 = sub_19166B088();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

uint64_t AXLongLivedEventLogger.write(_:terminator:prependDate:prependLevel:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, char a5, unsigned __int8 *a6)
{
  v46 = a2;
  v48 = a3;
  v49 = a4;
  v47 = a1;
  v8 = sub_19166B798();
  v50 = *(v8 - 8);
  v51 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_19166B118();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_19166B158();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a6;
  v23 = 0xE000000000000000;
  aBlock = 0;
  v57 = 0xE000000000000000;
  if (a5)
  {
    v24 = sub_19166B148();
    MEMORY[0x193AFBCB0](v24);
    sub_1915EACA0(&qword_1EADAE628, MEMORY[0x1E69693A0], MEMORY[0x1E6969390]);
    sub_19166B138();
    (*(v13 + 8))(v16, v12);
    (*(v18 + 8))(v21, v17);
    v54 = v52;
    v55 = v53;
    MEMORY[0x193AFC710](8250, 0xE200000000000000);
    v25 = v54;
    v23 = v55;
  }

  else
  {
    v25 = 0;
  }

  MEMORY[0x193AFC710](v25, v23);

  v26 = 0xE000000000000000;
  if (v22 == 5)
  {
    v27 = 0;
  }

  else
  {
    v28 = 0x475542454420;
    v54 = 0;
    v55 = 0xE000000000000000;
    v29 = 0x474F4C2020;
    v30 = 0x4E52415720;
    if (v22 != 3)
    {
      v30 = 0x524F525245;
    }

    if (v22 != 2)
    {
      v29 = v30;
    }

    if (v22)
    {
      v28 = 0x4F464E492020;
    }

    if (v22 <= 1)
    {
      v31 = v28;
    }

    else
    {
      v31 = v29;
    }

    if (v22 <= 1)
    {
      v32 = 0xE600000000000000;
    }

    else
    {
      v32 = 0xE500000000000000;
    }

    MEMORY[0x193AFC710](v31, v32);

    MEMORY[0x193AFC710](8250, 0xE200000000000000);
    v27 = v54;
    v26 = v55;
  }

  MEMORY[0x193AFC710](v27, v26);

  v34 = v47(v33);
  MEMORY[0x193AFC710](v34);

  MEMORY[0x193AFC710](v48, v49);
  sub_19166B788();
  v35 = sub_19166B758();
  v37 = v36;

  result = (*(v50 + 8))(v11, v51);
  if (v37 >> 60 != 15)
  {
    v39 = v45;
    v40 = *(v45 + OBJC_IVAR____TtC15AXCoreUtilities22AXLongLivedEventLogger_queue);
    v41 = swift_allocObject();
    v41[2] = v39;
    v41[3] = v35;
    v41[4] = v37;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_1915E80F8;
    *(v42 + 24) = v41;
    v60 = sub_1915E4118;
    v61 = v42;
    aBlock = MEMORY[0x1E69E9820];
    v57 = 1107296256;
    v58 = sub_1915E8104;
    v59 = &block_descriptor_0;
    v43 = _Block_copy(&aBlock);

    sub_1915E8144(v35, v37);

    dispatch_sync(v40, v43);
    sub_1915E8158(v35, v37);
    _Block_release(v43);
    LOBYTE(v40) = swift_isEscapingClosureAtFileLocation();

    if (v40)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1915E8004(uint64_t a1, void *a2, void *a3)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v4 = sub_1915E6FE8();
  if (v4)
  {
    v5 = v4;
    v9[1] = a3;
    sub_1915EAD28();
    sub_19166BD58();
    v9[0] = 0;
    if ([v5 closeAndReturnError_])
    {
      v6 = v9[0];
    }

    else
    {
      v7 = v9[0];
      v8 = sub_19166AFF8();

      swift_willThrow();
    }
  }
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1915E8144(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1915DCB54(result, a2);
  }

  return result;
}

uint64_t sub_1915E8158(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1915DCBA8(result, a2);
  }

  return result;
}

uint64_t AXLongLivedEventLogger.discardLogs(olderThan:)(uint64_t a1)
{
  v3 = sub_19166B158();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v7 = *(v1 + OBJC_IVAR____TtC15AXCoreUtilities22AXLongLivedEventLogger_queue);
  (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  (*(v4 + 32))(v9 + v8, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1915EA8DC;
  *(v10 + 24) = v9;
  aBlock[4] = sub_1915EAD94;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1915E8104;
  aBlock[3] = &block_descriptor_13;
  v11 = _Block_copy(aBlock);

  dispatch_sync(v7, v11);
  _Block_release(v11);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

void sub_1915E84F4(uint64_t a1, uint64_t a2)
{
  v60 = a2;
  v71[1] = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF528, &qword_191672640);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v66 = &v56 - v5;
  v6 = sub_19166B158();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v64 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_19166B088();
  v70 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v61 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v56 - v16;
  MEMORY[0x1EEE9AC00](v15, v18);
  v68 = &v56 - v19;
  v20 = [objc_opt_self() defaultManager];
  v67 = a1;
  v21 = sub_19166B048();
  v71[0] = 0;
  v58 = v20;
  v22 = [v20 contentsOfDirectoryAtURL:v21 includingPropertiesForKeys:0 options:0 error:v71];

  v23 = v71[0];
  v69 = v10;
  if (!v22)
  {
    v39 = v71[0];
    v40 = sub_19166AFF8();

    swift_willThrow();
    v29 = MEMORY[0x1E69E7CC0];
    v27 = v10;
    v41 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v41)
    {
      goto LABEL_31;
    }

    goto LABEL_20;
  }

  v56 = v7;
  v24 = sub_19166BA08();
  v25 = v23;

  v65 = *(v24 + 16);
  if (v65)
  {
    v26 = 0;
    v27 = v69;
    v62 = (v70 + 16);
    v57 = (v70 + 8);
    v28 = (v70 + 32);
    v29 = MEMORY[0x1E69E7CC0];
    v59 = v17;
    v63 = v6;
    while (1)
    {
      if (v26 >= *(v24 + 16))
      {
        __break(1u);
      }

      v30 = (*(v70 + 80) + 32) & ~*(v70 + 80);
      v31 = *(v70 + 72);
      (*(v70 + 16))(v68, v24 + v30 + v31 * v26, v27);
      if (sub_19166B018() == 6778732 && v32 == 0xE300000000000000)
      {
        break;
      }

      v33 = sub_19166C5E8();

      if (v33)
      {
        goto LABEL_11;
      }

      v27 = v69;
      (*v57)(v68, v69);
LABEL_5:
      ++v26;
      v6 = v63;
      if (v65 == v26)
      {
        goto LABEL_19;
      }
    }

LABEL_11:
    v34 = *v28;
    v27 = v69;
    (*v28)(v17, v68, v69);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71[0] = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1915F4E8C(0, v29[2] + 1, 1);
      v27 = v69;
      v29 = v71[0];
    }

    v37 = v29[2];
    v36 = v29[3];
    if (v37 >= v36 >> 1)
    {
      sub_1915F4E8C((v36 > 1), v37 + 1, 1);
      v27 = v69;
      v29 = v71[0];
    }

    v29[2] = v37 + 1;
    v38 = v29 + v30 + v37 * v31;
    v17 = v59;
    v34(v38, v59, v27);
    goto LABEL_5;
  }

  v29 = MEMORY[0x1E69E7CC0];
  v27 = v69;
LABEL_19:

  v7 = v56;
  v41 = v29[2];
  if (v41)
  {
LABEL_20:
    v68 = *(v70 + 16);
    v42 = *(v70 + 80);
    v57 = v29;
    v43 = v29 + ((v42 + 32) & ~v42);
    v44 = (v7 + 48);
    v65 = *(v70 + 72);
    v62 = (v7 + 32);
    v59 = (v7 + 8);
    v70 += 16;
    v45 = (v70 - 8);
    v46 = v61;
    (v68)(v61, v43, v27);
    while (1)
    {
      _s15AXCoreUtilities12AXCTLSupportO4PathV4pathSSvg_0();
      v47 = v66;
      sub_1915E8BE4(v66);

      if ((*v44)(v47, 1, v6) == 1)
      {
        (*v45)(v46, v27);
        sub_1915EAC38(v47);
      }

      else
      {
        v48 = v64;
        (*v62)(v64, v47, v6);
        if (sub_19166B128())
        {
          v49 = v61;
          v50 = sub_19166B048();
          v71[0] = 0;
          v51 = [v58 removeItemAtURL:v50 error:v71];

          if (v51)
          {
            v52 = *v59;
            v53 = v71[0];
            v52(v64, v6);
          }

          else
          {
            v54 = v71[0];
            v55 = sub_19166AFF8();

            swift_willThrow();
            (*v59)(v64, v6);
          }

          v27 = v69;
          (*v45)(v49, v69);
          v46 = v49;
        }

        else
        {
          (*v59)(v48, v6);
          v46 = v61;
          v27 = v69;
          (*v45)(v61, v69);
        }
      }

      v43 += v65;
      if (!--v41)
      {
        break;
      }

      (v68)(v46, v43, v27);
    }
  }

LABEL_31:
}

uint64_t sub_1915E8BE4@<X0>(uint64_t a3@<X8>)
{
  v25[4] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF528, &qword_191672640);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v25[-1] - v6;
  v8 = [objc_opt_self() defaultManager];
  v9 = sub_19166B718();
  v25[0] = 0;
  v10 = [v8 attributesOfItemAtPath:v9 error:v25];

  v11 = v25[0];
  if (!v10)
  {
    v21 = v25[0];
    v22 = sub_19166AFF8();

    swift_willThrow();
    goto LABEL_9;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_1915EACA0(&qword_1EADAE4C0, type metadata accessor for FileAttributeKey, &unk_191671E74);
  v12 = sub_19166B678();
  v13 = v11;

  if (!v12)
  {
LABEL_9:

    v17 = sub_19166B158();
    (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
LABEL_10:
    sub_1915EAC38(v7);
    sub_19166B158();
    return (*(*(v17 - 8) + 56))(a3, 1, 1, v17);
  }

  if (!*(v12 + 16) || (v15 = sub_1915DB410(*MEMORY[0x1E696A308], v14), (v16 & 1) == 0))
  {

    goto LABEL_9;
  }

  sub_1915DFD18(*(v12 + 56) + 32 * v15, v25);

  v17 = sub_19166B158();
  v18 = swift_dynamicCast();
  v19 = *(v17 - 8);
  v20 = *(v19 + 56);
  v20(v7, v18 ^ 1u, 1, v17);
  if ((*(v19 + 48))(v7, 1, v17) == 1)
  {
    goto LABEL_10;
  }

  (*(v19 + 32))(a3, v7, v17);
  return (v20)(a3, 0, 1, v17);
}

uint64_t sub_1915E8F50(uint64_t a1, uint64_t a2, char a3, unsigned __int8 *a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v47 = a7;
  v48 = a6;
  v46 = a5;
  v49 = a1;
  v50 = a2;
  v9 = sub_19166B798();
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_19166B118();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_19166B158();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a4;
  v24 = 0xE000000000000000;
  aBlock = 0;
  v58 = 0xE000000000000000;
  if (a3)
  {
    v25 = sub_19166B148();
    MEMORY[0x193AFBCB0](v25);
    sub_1915EACA0(&qword_1EADAE628, MEMORY[0x1E69693A0], MEMORY[0x1E6969390]);
    sub_19166B138();
    (*(v14 + 8))(v17, v13);
    (*(v19 + 8))(v22, v18);
    v55 = v53;
    v56 = v54;
    MEMORY[0x193AFC710](8250, 0xE200000000000000);
    v26 = v55;
    v24 = v56;
  }

  else
  {
    v26 = 0;
  }

  MEMORY[0x193AFC710](v26, v24);

  v27 = 0xE000000000000000;
  if (v23 == 5)
  {
    v28 = 0;
  }

  else
  {
    v29 = 0x475542454420;
    v55 = 0;
    v56 = 0xE000000000000000;
    v30 = 0x474F4C2020;
    v31 = 0x4E52415720;
    if (v23 != 3)
    {
      v31 = 0x524F525245;
    }

    if (v23 != 2)
    {
      v30 = v31;
    }

    if (v23)
    {
      v29 = 0x4F464E492020;
    }

    if (v23 <= 1)
    {
      v32 = v29;
    }

    else
    {
      v32 = v30;
    }

    if (v23 <= 1)
    {
      v33 = 0xE600000000000000;
    }

    else
    {
      v33 = 0xE500000000000000;
    }

    MEMORY[0x193AFC710](v32, v33);

    MEMORY[0x193AFC710](8250, 0xE200000000000000);
    v28 = v55;
    v27 = v56;
  }

  MEMORY[0x193AFC710](v28, v27);

  v35 = v48(v34);
  MEMORY[0x193AFC710](v35);

  MEMORY[0x193AFC710](v49, v50);
  sub_19166B788();
  v36 = sub_19166B758();
  v38 = v37;

  result = (*(v51 + 8))(v12, v52);
  if (v38 >> 60 != 15)
  {
    v40 = v46;
    v41 = *(v46 + OBJC_IVAR____TtC15AXCoreUtilities22AXLongLivedEventLogger_queue);
    v42 = swift_allocObject();
    v42[2] = v40;
    v42[3] = v36;
    v42[4] = v38;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_1915EADB0;
    *(v43 + 24) = v42;
    v61 = sub_1915EAD94;
    v62 = v43;
    aBlock = MEMORY[0x1E69E9820];
    v58 = 1107296256;
    v59 = sub_1915E8104;
    v60 = &block_descriptor_74;
    v44 = _Block_copy(&aBlock);

    sub_1915E8144(v36, v38);

    dispatch_sync(v41, v44);
    sub_1915E8158(v36, v38);
    _Block_release(v44);
    LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

    if (v41)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1915E946C(uint64_t a1, uint64_t a2, char a3, unsigned __int8 *a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v47 = a7;
  v48 = a6;
  v46 = a5;
  v49 = a1;
  v50 = a2;
  v9 = sub_19166B798();
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_19166B118();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_19166B158();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a4;
  v24 = 0xE000000000000000;
  aBlock = 0;
  v58 = 0xE000000000000000;
  if (a3)
  {
    v25 = sub_19166B148();
    MEMORY[0x193AFBCB0](v25);
    sub_1915EACA0(&qword_1EADAE628, MEMORY[0x1E69693A0], MEMORY[0x1E6969390]);
    sub_19166B138();
    (*(v14 + 8))(v17, v13);
    (*(v19 + 8))(v22, v18);
    v55 = v53;
    v56 = v54;
    MEMORY[0x193AFC710](8250, 0xE200000000000000);
    v26 = v55;
    v24 = v56;
  }

  else
  {
    v26 = 0;
  }

  MEMORY[0x193AFC710](v26, v24);

  v27 = 0xE000000000000000;
  if (v23 == 5)
  {
    v28 = 0;
  }

  else
  {
    v29 = 0x475542454420;
    v55 = 0;
    v56 = 0xE000000000000000;
    v30 = 0x474F4C2020;
    v31 = 0x4E52415720;
    if (v23 != 3)
    {
      v31 = 0x524F525245;
    }

    if (v23 != 2)
    {
      v30 = v31;
    }

    if (v23)
    {
      v29 = 0x4F464E492020;
    }

    if (v23 <= 1)
    {
      v32 = v29;
    }

    else
    {
      v32 = v30;
    }

    if (v23 <= 1)
    {
      v33 = 0xE600000000000000;
    }

    else
    {
      v33 = 0xE500000000000000;
    }

    MEMORY[0x193AFC710](v32, v33);

    MEMORY[0x193AFC710](8250, 0xE200000000000000);
    v28 = v55;
    v27 = v56;
  }

  MEMORY[0x193AFC710](v28, v27);

  v35 = v48(v34);
  MEMORY[0x193AFC710](v35);

  MEMORY[0x193AFC710](v49, v50);
  sub_19166B788();
  v36 = sub_19166B758();
  v38 = v37;

  result = (*(v51 + 8))(v12, v52);
  if (v38 >> 60 != 15)
  {
    v40 = v46;
    v41 = *(v46 + OBJC_IVAR____TtC15AXCoreUtilities22AXLongLivedEventLogger_queue);
    v42 = swift_allocObject();
    v42[2] = v40;
    v42[3] = v36;
    v42[4] = v38;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_1915EADB0;
    *(v43 + 24) = v42;
    v61 = sub_1915EAD94;
    v62 = v43;
    aBlock = MEMORY[0x1E69E9820];
    v58 = 1107296256;
    v59 = sub_1915E8104;
    v60 = &block_descriptor_63;
    v44 = _Block_copy(&aBlock);

    sub_1915E8144(v36, v38);

    dispatch_sync(v41, v44);
    sub_1915E8158(v36, v38);
    _Block_release(v44);
    LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

    if (v41)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1915E9988(uint64_t a1, uint64_t a2, char a3, unsigned __int8 *a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v47 = a7;
  v48 = a6;
  v46 = a5;
  v49 = a1;
  v50 = a2;
  v9 = sub_19166B798();
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_19166B118();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_19166B158();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a4;
  v24 = 0xE000000000000000;
  aBlock = 0;
  v58 = 0xE000000000000000;
  if (a3)
  {
    v25 = sub_19166B148();
    MEMORY[0x193AFBCB0](v25);
    sub_1915EACA0(&qword_1EADAE628, MEMORY[0x1E69693A0], MEMORY[0x1E6969390]);
    sub_19166B138();
    (*(v14 + 8))(v17, v13);
    (*(v19 + 8))(v22, v18);
    v55 = v53;
    v56 = v54;
    MEMORY[0x193AFC710](8250, 0xE200000000000000);
    v26 = v55;
    v24 = v56;
  }

  else
  {
    v26 = 0;
  }

  MEMORY[0x193AFC710](v26, v24);

  v27 = 0xE000000000000000;
  if (v23 == 5)
  {
    v28 = 0;
  }

  else
  {
    v29 = 0x475542454420;
    v55 = 0;
    v56 = 0xE000000000000000;
    v30 = 0x474F4C2020;
    v31 = 0x4E52415720;
    if (v23 != 3)
    {
      v31 = 0x524F525245;
    }

    if (v23 != 2)
    {
      v30 = v31;
    }

    if (v23)
    {
      v29 = 0x4F464E492020;
    }

    if (v23 <= 1)
    {
      v32 = v29;
    }

    else
    {
      v32 = v30;
    }

    if (v23 <= 1)
    {
      v33 = 0xE600000000000000;
    }

    else
    {
      v33 = 0xE500000000000000;
    }

    MEMORY[0x193AFC710](v32, v33);

    MEMORY[0x193AFC710](8250, 0xE200000000000000);
    v28 = v55;
    v27 = v56;
  }

  MEMORY[0x193AFC710](v28, v27);

  v35 = v48(v34);
  MEMORY[0x193AFC710](v35);

  MEMORY[0x193AFC710](v49, v50);
  sub_19166B788();
  v36 = sub_19166B758();
  v38 = v37;

  result = (*(v51 + 8))(v12, v52);
  if (v38 >> 60 != 15)
  {
    v40 = v46;
    v41 = *(v46 + OBJC_IVAR____TtC15AXCoreUtilities22AXLongLivedEventLogger_queue);
    v42 = swift_allocObject();
    v42[2] = v40;
    v42[3] = v36;
    v42[4] = v38;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_1915EADB0;
    *(v43 + 24) = v42;
    v61 = sub_1915EAD94;
    v62 = v43;
    aBlock = MEMORY[0x1E69E9820];
    v58 = 1107296256;
    v59 = sub_1915E8104;
    v60 = &block_descriptor_52;
    v44 = _Block_copy(&aBlock);

    sub_1915E8144(v36, v38);

    dispatch_sync(v41, v44);
    sub_1915E8158(v36, v38);
    _Block_release(v44);
    LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

    if (v41)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1915E9EA4(uint64_t a1, uint64_t a2, char a3, unsigned __int8 *a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v47 = a7;
  v48 = a6;
  v46 = a5;
  v49 = a1;
  v50 = a2;
  v9 = sub_19166B798();
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_19166B118();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_19166B158();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a4;
  v24 = 0xE000000000000000;
  aBlock = 0;
  v58 = 0xE000000000000000;
  if (a3)
  {
    v25 = sub_19166B148();
    MEMORY[0x193AFBCB0](v25);
    sub_1915EACA0(&qword_1EADAE628, MEMORY[0x1E69693A0], MEMORY[0x1E6969390]);
    sub_19166B138();
    (*(v14 + 8))(v17, v13);
    (*(v19 + 8))(v22, v18);
    v55 = v53;
    v56 = v54;
    MEMORY[0x193AFC710](8250, 0xE200000000000000);
    v26 = v55;
    v24 = v56;
  }

  else
  {
    v26 = 0;
  }

  MEMORY[0x193AFC710](v26, v24);

  v27 = 0xE000000000000000;
  if (v23 == 5)
  {
    v28 = 0;
  }

  else
  {
    v29 = 0x475542454420;
    v55 = 0;
    v56 = 0xE000000000000000;
    v30 = 0x474F4C2020;
    v31 = 0x4E52415720;
    if (v23 != 3)
    {
      v31 = 0x524F525245;
    }

    if (v23 != 2)
    {
      v30 = v31;
    }

    if (v23)
    {
      v29 = 0x4F464E492020;
    }

    if (v23 <= 1)
    {
      v32 = v29;
    }

    else
    {
      v32 = v30;
    }

    if (v23 <= 1)
    {
      v33 = 0xE600000000000000;
    }

    else
    {
      v33 = 0xE500000000000000;
    }

    MEMORY[0x193AFC710](v32, v33);

    MEMORY[0x193AFC710](8250, 0xE200000000000000);
    v28 = v55;
    v27 = v56;
  }

  MEMORY[0x193AFC710](v28, v27);

  v35 = v48(v34);
  MEMORY[0x193AFC710](v35);

  MEMORY[0x193AFC710](v49, v50);
  sub_19166B788();
  v36 = sub_19166B758();
  v38 = v37;

  result = (*(v51 + 8))(v12, v52);
  if (v38 >> 60 != 15)
  {
    v40 = v46;
    v41 = *(v46 + OBJC_IVAR____TtC15AXCoreUtilities22AXLongLivedEventLogger_queue);
    v42 = swift_allocObject();
    v42[2] = v40;
    v42[3] = v36;
    v42[4] = v38;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_1915EADB0;
    *(v43 + 24) = v42;
    v61 = sub_1915EAD94;
    v62 = v43;
    aBlock = MEMORY[0x1E69E9820];
    v58 = 1107296256;
    v59 = sub_1915E8104;
    v60 = &block_descriptor_41;
    v44 = _Block_copy(&aBlock);

    sub_1915E8144(v36, v38);

    dispatch_sync(v41, v44);
    sub_1915E8158(v36, v38);
    _Block_release(v44);
    LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

    if (v41)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1915EA3C0(uint64_t a1, uint64_t a2, char a3, unsigned __int8 *a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v47 = a7;
  v48 = a6;
  v46 = a5;
  v49 = a1;
  v50 = a2;
  v9 = sub_19166B798();
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_19166B118();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_19166B158();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a4;
  v24 = 0xE000000000000000;
  aBlock = 0;
  v58 = 0xE000000000000000;
  if (a3)
  {
    v25 = sub_19166B148();
    MEMORY[0x193AFBCB0](v25);
    sub_1915EACA0(&qword_1EADAE628, MEMORY[0x1E69693A0], MEMORY[0x1E6969390]);
    sub_19166B138();
    (*(v14 + 8))(v17, v13);
    (*(v19 + 8))(v22, v18);
    v55 = v53;
    v56 = v54;
    MEMORY[0x193AFC710](8250, 0xE200000000000000);
    v26 = v55;
    v24 = v56;
  }

  else
  {
    v26 = 0;
  }

  MEMORY[0x193AFC710](v26, v24);

  v27 = 0xE000000000000000;
  if (v23 == 5)
  {
    v28 = 0;
  }

  else
  {
    v29 = 0x475542454420;
    v55 = 0;
    v56 = 0xE000000000000000;
    v30 = 0x474F4C2020;
    v31 = 0x4E52415720;
    if (v23 != 3)
    {
      v31 = 0x524F525245;
    }

    if (v23 != 2)
    {
      v30 = v31;
    }

    if (v23)
    {
      v29 = 0x4F464E492020;
    }

    if (v23 <= 1)
    {
      v32 = v29;
    }

    else
    {
      v32 = v30;
    }

    if (v23 <= 1)
    {
      v33 = 0xE600000000000000;
    }

    else
    {
      v33 = 0xE500000000000000;
    }

    MEMORY[0x193AFC710](v32, v33);

    MEMORY[0x193AFC710](8250, 0xE200000000000000);
    v28 = v55;
    v27 = v56;
  }

  MEMORY[0x193AFC710](v28, v27);

  v35 = v48(v34);
  MEMORY[0x193AFC710](v35);

  MEMORY[0x193AFC710](v49, v50);
  sub_19166B788();
  v36 = sub_19166B758();
  v38 = v37;

  result = (*(v51 + 8))(v12, v52);
  if (v38 >> 60 != 15)
  {
    v40 = v46;
    v41 = *(v46 + OBJC_IVAR____TtC15AXCoreUtilities22AXLongLivedEventLogger_queue);
    v42 = swift_allocObject();
    v42[2] = v40;
    v42[3] = v36;
    v42[4] = v38;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_1915EADB0;
    *(v43 + 24) = v42;
    v61 = sub_1915EAD94;
    v62 = v43;
    aBlock = MEMORY[0x1E69E9820];
    v58 = 1107296256;
    v59 = sub_1915E8104;
    v60 = &block_descriptor_30;
    v44 = _Block_copy(&aBlock);

    sub_1915E8144(v36, v38);

    dispatch_sync(v41, v44);
    sub_1915E8158(v36, v38);
    _Block_release(v44);
    LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

    if (v41)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1915EA8DC()
{
  v1 = *(sub_19166B158() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1915E84F4(v2, v3);
}

unint64_t sub_1915EA944()
{
  result = qword_1EADAF520;
  if (!qword_1EADAF520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAF520);
  }

  return result;
}

uint64_t type metadata accessor for AXLongLivedEventLogger(uint64_t a1)
{
  result = qword_1EADAE590;
  if (!qword_1EADAE590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1915EA9EC(uint64_t a1)
{
  result = sub_19166B088();
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

uint64_t getEnumTagSinglePayload for AXLongLivedEventLogger.LogLevel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AXLongLivedEventLogger.LogLevel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1915EAC38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF528, &qword_191672640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1915EACA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm()
{

  sub_1915DCBA8(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

unint64_t sub_1915EAD28()
{
  result = qword_1EADAE630;
  if (!qword_1EADAE630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAE630);
  }

  return result;
}

uint64_t sub_1915EADB4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t AXActor.unownedExecutor.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(a1);
  v2 = sub_19166BF08();

  return v2;
}

uint64_t AXExecutor.__allocating_init(queue:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t AXExecutor.__allocating_init(_:qos:attributes:autoreleaseFrequency:targetQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a2;
  v35 = a6;
  v30 = a4;
  v31 = a5;
  v33 = a1;
  v32 = sub_19166BDB8();
  v7 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_19166BEB8();
  v12 = *(v11 - 8);
  v26 = v11;
  v27 = v12;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_19166B5B8();
  v28 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = swift_allocObject();
  sub_1915EB418();
  (*(v17 + 16))(v20, a3, v16);
  v21 = v30;
  (*(v12 + 16))(v15, v30, v11);
  v23 = v31;
  v22 = v32;
  (*(v7 + 16))(v10, v31, v32);
  v24 = sub_19166BEC8();
  (*(v7 + 8))(v23, v22);
  (*(v27 + 8))(v21, v26);
  (*(v17 + 8))(a3, v28);
  result = v29;
  *(v29 + 16) = v24;
  return result;
}

uint64_t AXExecutor.init(_:qos:attributes:autoreleaseFrequency:targetQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a6;
  v31 = a5;
  v33 = a1;
  v34 = a2;
  v32 = sub_19166BDB8();
  v8 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v9);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_19166BEB8();
  v29 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_19166B5B8();
  v30 = v17;
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[1] = sub_1915EB418();
  (*(v18 + 16))(v21, a3, v17);
  (*(v13 + 16))(v16, a4, v12);
  v22 = v8;
  v23 = *(v8 + 16);
  v25 = v31;
  v24 = v32;
  v23(v11, v31, v32);
  v26 = sub_19166BEC8();
  (*(v22 + 8))(v25, v24);
  (*(v13 + 8))(a4, v29);
  (*(v18 + 8))(a3, v30);
  result = v36;
  *(v36 + 16) = v26;
  return result;
}

unint64_t sub_1915EB418()
{
  result = qword_1EADAF530;
  if (!qword_1EADAF530)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADAF530);
  }

  return result;
}

uint64_t AXExecutor.enqueue(_:)(uint64_t a1)
{
  v2 = sub_19166B588();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_19166B5B8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_19166BB08();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v1;
  aBlock[4] = sub_1915EB714;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1915EADB4;
  aBlock[3] = &block_descriptor_1;
  v14 = _Block_copy(aBlock);

  sub_19166B598();
  v16[1] = MEMORY[0x1E69E7CC0];
  sub_1915EB8CC(&qword_1EADAE6B0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D8, &qword_191676060);
  sub_1915EB79C();
  sub_19166BFE8();
  MEMORY[0x193AFCC80](0, v11, v6, v14);
  _Block_release(v14);
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
}

uint64_t sub_1915EB714(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = sub_1915EB8CC(&qword_1EADAF538, a2, type metadata accessor for AXExecutor, &_s15AXCoreUtilities10AXExecutorCSchAAMc);

  return MEMORY[0x1EEE6DF20](v3, v4, v5);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1915EB79C()
{
  result = qword_1EADAE6A0;
  if (!qword_1EADAE6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADAF3D8, &qword_191676060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAE6A0);
  }

  return result;
}

uint64_t AXExecutor.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1915EB8CC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1915EB914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = sub_1915EB8CC(&qword_1EADAF540, a2, type metadata accessor for AXExecutor, &protocol conformance descriptor for AXExecutor);

  return a4(a1, v6, v7);
}

uint64_t get_enum_tag_for_layout_string_15AXCoreUtilities12AXDataHolderO(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1915EBB5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 8))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1915EBBB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1915EBC18(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 3)) | 0xC000000000000000;
  }

  return result;
}

unint64_t sub_1915EBC54(__int128 *a1)
{
  sub_1915EED78(a1, &v47);
  if (*(&v48 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF560, &unk_191672868);
    if (swift_dynamicCast())
    {
      v2 = *(*&v45[0] + 16);
      if (v2)
      {
        v46 = MEMORY[0x1E69E7CC0];
        sub_1915F4E2C(0, v2, 0);
        v3 = v46;
        v4 = *&v45[0] + 32;
        do
        {
          sub_1915E1F90(v4, &v47);
          sub_1915E1F90(&v47, v45);
          v5 = sub_1915EBC54(v45);
          sub_1915E0AF8(&v47);
          v46 = v3;
          v7 = *(v3 + 16);
          v6 = *(v3 + 24);
          if (v7 >= v6 >> 1)
          {
            sub_1915F4E2C((v6 > 1), v7 + 1, 1);
            v3 = v46;
          }

          *(v3 + 16) = v7 + 1;
          *(v3 + 8 * v7 + 32) = v5;
          v4 += 40;
          --v2;
        }

        while (v2);
        sub_1915EEDE8(a1);
      }

      else
      {

        sub_1915EEDE8(a1);
        v3 = MEMORY[0x1E69E7CC0];
      }

      result = swift_allocObject();
      *(result + 16) = v3;
      return result;
    }
  }

  else
  {
    sub_1915EEDE8(&v47);
  }

  sub_1915EED78(a1, &v47);
  if (!*(&v48 + 1))
  {
    sub_1915EEDE8(&v47);
LABEL_33:
    v36 = a1[1];
    v47 = *a1;
    v48 = v36;
    v49 = *(a1 + 4);
    if (*(&v36 + 1))
    {
      v37 = swift_allocObject();
      v38 = a1[1];
      *(v37 + 16) = *a1;
      *(v37 + 32) = v38;
      *(v37 + 48) = *(a1 + 4);
      return v37 | 0x8000000000000000;
    }

    else
    {
      sub_1915EEDE8(&v47);
      return 0xC000000000000000;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF418, &qword_191672240);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_33;
  }

  v41 = a1;
  v8 = sub_1916533B8(MEMORY[0x1E69E7CC0]);
  v9 = 0;
  v42 = *&v45[0];
  v10 = 1 << *(*&v45[0] + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = *&v45[0] + 64;
  v13 = v11 & *(*&v45[0] + 64);
  v14 = (v10 + 63) >> 6;
  if (v13)
  {
    goto LABEL_17;
  }

LABEL_18:
  while (1)
  {
    v16 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v16 >= v14)
    {
      goto LABEL_35;
    }

    v13 = *(v12 + 8 * v16);
    ++v9;
    if (v13)
    {
      while (1)
      {
        v17 = __clz(__rbit64(v13)) | (v16 << 6);
        v18 = (*(v42 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        sub_1915E1F90(*(v42 + 56) + 40 * v17, &v47);
        v43 = v47;
        v44 = v48;
        v21 = v49;

        if (!v19)
        {
          break;
        }

        v47 = v43;
        v48 = v44;
        v49 = v21;
        v22 = sub_1915EBC54(&v47);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v47 = v8;
        v24 = sub_1915DB0E4(v20, v19);
        v26 = v8[2];
        v27 = (v25 & 1) == 0;
        v28 = __OFADD__(v26, v27);
        v29 = v26 + v27;
        if (v28)
        {
          goto LABEL_40;
        }

        v30 = v25;
        if (v8[3] >= v29)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v35 = v24;
            sub_191647F1C();
            v24 = v35;
          }
        }

        else
        {
          sub_191645948(v29, isUniquelyReferenced_nonNull_native);
          v24 = sub_1915DB0E4(v20, v19);
          if ((v30 & 1) != (v31 & 1))
          {
            goto LABEL_42;
          }
        }

        v13 &= v13 - 1;
        if (v30)
        {
          v15 = v24;

          v8 = v47;
          *(*(v47 + 56) + 8 * v15) = v22;

          v9 = v16;
          if (!v13)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v8 = v47;
          *(v47 + 8 * (v24 >> 6) + 64) |= 1 << v24;
          v32 = (v8[6] + 16 * v24);
          *v32 = v20;
          v32[1] = v19;
          *(v8[7] + 8 * v24) = v22;
          v33 = v8[2];
          v28 = __OFADD__(v33, 1);
          v34 = v33 + 1;
          if (v28)
          {
            goto LABEL_41;
          }

          v8[2] = v34;
          v9 = v16;
          if (!v13)
          {
            goto LABEL_18;
          }
        }

LABEL_17:
        v16 = v9;
      }

LABEL_35:
      sub_1915EEDE8(v41);

      v40 = swift_allocObject();
      *(v40 + 16) = v8;
      return v40 | 0x4000000000000000;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = sub_19166C6F8();
  __break(1u);
  return result;
}

unint64_t sub_1915EC0B8@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result >> 62;
  if ((result >> 62) > 1)
  {
    if (v2 == 2)
    {
      v13 = (result & 0x3FFFFFFFFFFFFFFFLL) + 16;

      return sub_1915E1F90(v13, a2);
    }

    else
    {
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }
  }

  else if (v2)
  {
    v14 = *((result & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

    v15 = sub_191652FC8(MEMORY[0x1E69E7CC0]);
    v16 = 0;
    v17 = v14 + 64;
    v45 = v14 + 64;
    v46 = v14;
    v18 = 1 << *(v14 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v14 + 64);
    v21 = (v18 + 63) >> 6;
    while (v20)
    {
      v23 = v16;
LABEL_23:
      v24 = __clz(__rbit64(v20)) | (v23 << 6);
      v25 = (*(v46 + 48) + 16 * v24);
      v27 = *v25;
      v26 = v25[1];
      v28 = *(*(v46 + 56) + 8 * v24);

      sub_1915EC0B8(v28, &v47);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4A8, &qword_191672420);
      sub_1915EEC14(&qword_1EADAE638, &qword_1EADAF4A8, &qword_191672420, MEMORY[0x1E69E7C78]);
      sub_19166C058();
      v47 = v50;
      v48 = v51;
      v49 = v52;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = sub_1915DB0E4(v27, v26);
      v32 = v15[2];
      v33 = (v31 & 1) == 0;
      v34 = __OFADD__(v32, v33);
      v35 = v32 + v33;
      if (v34)
      {
        goto LABEL_37;
      }

      v36 = v31;
      if (v15[3] >= v35)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v44 = v30;
          sub_191647D40();
          v30 = v44;
        }
      }

      else
      {
        sub_191645650(v35, isUniquelyReferenced_nonNull_native);
        v30 = sub_1915DB0E4(v27, v26);
        if ((v36 & 1) != (v37 & 1))
        {
          goto LABEL_39;
        }
      }

      v20 &= v20 - 1;
      if (v36)
      {
        v22 = v30;

        sub_1915E4314(&v47, v15[7] + 40 * v22);
      }

      else
      {
        v15[(v30 >> 6) + 8] |= 1 << v30;
        v38 = (v15[6] + 16 * v30);
        *v38 = v27;
        v38[1] = v26;
        v39 = v15[7] + 40 * v30;
        v40 = v49;
        v41 = v48;
        *v39 = v47;
        *(v39 + 16) = v41;
        *(v39 + 32) = v40;

        v42 = v15[2];
        v34 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v34)
        {
          goto LABEL_38;
        }

        v15[2] = v43;
      }

      v16 = v23;
      v17 = v45;
    }

    while (1)
    {
      v23 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v23 >= v21)
      {

        *&v50 = v15;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF418, &qword_191672240);
        sub_1915EEC14(&qword_1EADAE850, &qword_1EADAF418, &qword_191672240, MEMORY[0x1E69E5E40]);
        return sub_19166C058();
      }

      v20 = *(v17 + 8 * v23);
      ++v16;
      if (v20)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    result = sub_19166C6F8();
    __break(1u);
  }

  else
  {
    v3 = *(result + 16);
    v4 = *(v3 + 16);
    v5 = MEMORY[0x1E69E7CC0];
    if (v4)
    {
      *&v47 = MEMORY[0x1E69E7CC0];

      sub_1915F4E4C(0, v4, 0);
      v6 = 32;
      v5 = v47;
      do
      {
        v7 = *(v3 + v6);

        sub_1915EC0B8(v7, &v50);

        *&v47 = v5;
        v9 = *(v5 + 16);
        v8 = *(v5 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_1915F4E4C((v8 > 1), v9 + 1, 1);
          v5 = v47;
        }

        *(v5 + 16) = v9 + 1;
        v10 = v5 + 40 * v9;
        v11 = v50;
        v12 = v51;
        *(v10 + 64) = v52;
        *(v10 + 32) = v11;
        *(v10 + 48) = v12;
        v6 += 8;
        --v4;
      }

      while (v4);
    }

    *&v50 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF550, &qword_191672860);
    sub_1915EEC74();
    return sub_19166C058();
  }

  return result;
}

uint64_t sub_1915EC548(void *a1, unint64_t a2)
{
  if (!a1[2])
  {

    return a2;
  }

  v3 = a1;
  result = sub_1915DB15C((a1 + 4), v18);
  v5 = v3[2];
  if (!v5)
  {
    __break(1u);
    goto LABEL_25;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v3;
  if (!isUniquelyReferenced_nonNull_native || (v5 - 1) > v3[3] >> 1)
  {
    v3 = sub_1915F442C(isUniquelyReferenced_nonNull_native, v5, 1, v3);
    v20 = v3;
  }

  sub_1915EEB28(0, 1, 0);
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_14;
    }

    goto LABEL_19;
  }

  if (v7)
  {
    v11 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    __swift_project_boxed_opaque_existential_1(v18, v19);

    v12 = sub_19166C828();
    if (*(v11 + 16))
    {
      v14 = sub_1915DB0E4(v12, v13);
      v16 = v15;

      if (v16)
      {
        v17 = *(*(v11 + 56) + 8 * v14);

        a2 = sub_1915EC548(v3, v17);

        goto LABEL_22;
      }
    }

    else
    {
    }

    a2 = 0xC000000000000000;
    goto LABEL_22;
  }

  v8 = *(a2 + 16);
  __swift_project_boxed_opaque_existential_1(v18, v19);

  result = sub_19166C848();
  if ((v9 & 1) != 0 || result >= *(v8 + 16))
  {

LABEL_19:

    __swift_destroy_boxed_opaque_existential_1(v18);
    return 0xC000000000000000;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v10 = *(v8 + 8 * result + 32);

    a2 = sub_1915EC548(v3, v10);

LABEL_14:

LABEL_22:
    __swift_destroy_boxed_opaque_existential_1(v18);
    return a2;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1915EC78C(unint64_t a1, void *a2)
{
  if (a2[2])
  {
    v5 = a2;

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v6 = v5[2];
      if (v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = sub_1915EEA04(v5);
      v6 = v5[2];
      if (v6)
      {
LABEL_4:
        v5[2] = v6 - 1;
        sub_1915A04D0(&v5[5 * v6 - 1], v25);
        v7 = sub_1915EC548(v5, *v2);
        __swift_project_boxed_opaque_existential_1(v25, v26);
        v8 = sub_19166C848();
        if (v9)
        {
LABEL_5:
          if (v7 >> 62 == 1)
          {
            v10 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

LABEL_16:
            __swift_project_boxed_opaque_existential_1(v25, v26);
            v16 = sub_19166C828();
            v18 = v17;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            sub_1915E23FC(a1, v16, v18, isUniquelyReferenced_nonNull_native);

            v20 = swift_allocObject();
            *(v20 + 16) = v10;
            sub_1915EC78C(v20 | 0x4000000000000000, v5);

LABEL_33:

            return __swift_destroy_boxed_opaque_existential_1(v25);
          }

          if (v7 >> 62 == 3 && v7 == 0xC000000000000000)
          {
            v10 = sub_1916533B8(MEMORY[0x1E69E7CC0]);
            goto LABEL_16;
          }

          goto LABEL_40;
        }

        v3 = v8;
        __swift_project_boxed_opaque_existential_1(v25, v26);
        v12 = sub_19166C828();
        v14 = v13;
        if (v12 == sub_19166C3C8() && v14 == v15)
        {
        }

        else
        {
          v21 = sub_19166C5E8();

          if ((v21 & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        if (v7 >> 62)
        {
          if (v7 >> 62 != 3 || v7 != 0xC000000000000000)
          {
            result = sub_19166C218("Fatal error", 11, 2, 0xD000000000000019, 0x800000019167C820, "AXCoreUtilities/AXDataHolder.swift", 34, 2, 87, 0);
            goto LABEL_42;
          }

          v2 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v2 = *(v7 + 16);
        }

        if (v3 == v2[2])
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_25:
            v23 = v2[2];
            v22 = v2[3];
            if (v23 >= v22 >> 1)
            {
              v2 = sub_1915F4598((v22 > 1), v23 + 1, 1, v2);
            }

            v2[2] = v23 + 1;
            v2[v23 + 4] = a1;

            goto LABEL_32;
          }

LABEL_36:
          v2 = sub_1915F4598(0, v3 + 1, 1, v2);
          goto LABEL_25;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if ((v3 & 0x8000000000000000) == 0)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v2 = sub_1915EE9F0(v2);
          if ((v3 & 0x8000000000000000) == 0)
          {
LABEL_30:
            if (v3 < v2[2])
            {
              v2[v3 + 4] = a1;

LABEL_32:
              v24 = swift_allocObject();
              *(v24 + 16) = v2;
              sub_1915EC78C(v24, v5);

              goto LABEL_33;
            }

LABEL_39:
            __break(1u);
LABEL_40:
            result = sub_19166C218("Fatal error", 11, 2, 0x206E61206465654ELL, 0xEE007463656A626FLL, "AXCoreUtilities/AXDataHolder.swift", 34, 2, 105, 0);
LABEL_42:
            __break(1u);
            return result;
          }
        }

        __break(1u);
        goto LABEL_39;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

  *v2 = a1;
}

uint64_t sub_1915ECC04(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v9 = aVersion_0[0];
  v8 = aVersion_0[1];
  *(inited + 56) = &type metadata for AXCodingKey;
  v10 = sub_1915EED24();
  *(inited + 64) = v10;
  v11 = swift_allocObject();
  *(inited + 32) = v11;
  *(v11 + 16) = 0;
  *(v11 + 24) = 1;
  *(v11 + 32) = v9;
  *(v11 + 40) = v8;

  sub_1915E3DB0(inited);
  v12 = swift_allocObject();
  sub_191649C6C(a3, a4);
  sub_19166C058();
  sub_1915EC78C(v12 | 0x8000000000000000, a2);

  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_191672210;
  v15 = *aType_3;
  v14 = unk_1EADB0330;
  *(v13 + 56) = &type metadata for AXCodingKey;
  *(v13 + 64) = v10;
  v16 = swift_allocObject();
  *(v13 + 32) = v16;
  *(v16 + 16) = 0;
  *(v16 + 24) = 1;
  *(v16 + 32) = v15;
  *(v16 + 40) = v14;

  sub_1915E3DB0(v13);
  v17 = swift_allocObject();
  (*(a4 + 24))(a3, a4);
  sub_19166C058();
  sub_1915EC78C(v17 | 0x8000000000000000, a2);
}

uint64_t sub_1915ECE5C(uint64_t a1, void *a2)
{
  result = swift_conformsToProtocol2();
  if (result && a1)
  {

    return sub_1915ECC04(a1, a2, a1, result);
  }

  return result;
}

uint64_t sub_1915ECED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = a2;
  if (*(a2 + 16) && (v9 = aVersion_0[0], v10 = aVersion_0[1], , v11 = sub_1915DB0E4(v9, v10), v13 = v12, , (v13 & 1) != 0) && (sub_1915E1F90(*(v8 + 56) + 40 * v11, v23), swift_dynamicCast()))
  {
    v14 = v24;
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_191649CB0(a3, a4);
  v16 = *(v15 + 2);
  if (v16)
  {

    v18 = 0;
    v19 = v15 + 48;
    while (v18 < *(v15 + 2))
    {
      if (v14 < *(v19 - 2))
      {
        v20 = *(v19 - 1);
        swift_retain_n();
        v21 = v20(v8);
        if (v5)
        {

          return v8;
        }

        v22 = v21;

        v8 = v22;
      }

      ++v18;
      v19 += 24;
      if (v16 == v18)
      {

        return v8;
      }
    }

    __break(1u);
  }

  else
  {

    return v8;
  }

  return result;
}

uint64_t sub_1915ED098(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1915EC548(a1, *v4);
  sub_1915EC0B8(v9, &v14);

  if (!v15)
  {
    return sub_1915EEDE8(&v14);
  }

  result = swift_dynamicCast();
  if (result)
  {
    (*(a4 + 8))(&v14, v12, v13, a3, a4);
    if (!v5)
    {
      v11 = sub_1915EBC54(&v14);
      sub_1915EC78C(v11, a1);
    }

    return sub_1915DCBA8(v12, v13);
  }

  return result;
}

uint64_t sub_1915ED1B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1915EC548(a1, *v4);
  sub_1915EC0B8(v9, &v13);

  if (!v14)
  {
    return sub_1915EEDE8(&v13);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF418, &qword_191672240);
  result = swift_dynamicCast();
  if (result)
  {
    sub_1915ECED8(a3, v12, a3, a4);

    if (!v5)
    {
      sub_1915EEC14(&qword_1EADAE850, &qword_1EADAF418, &qword_191672240, MEMORY[0x1E69E5E40]);
      sub_19166C058();
      v11 = sub_1915EBC54(&v13);
      sub_1915EC78C(v11, a1);
    }
  }

  return result;
}

uint64_t sub_1915ED2F8(uint64_t a1, void *a2)
{
  v5 = swift_conformsToProtocol2();
  if (!v5 || !a1 || (result = sub_1915ED098(a2, a1, a1, v5), !v2))
  {
    result = swift_conformsToProtocol2();
    if (result)
    {
      if (a1)
      {
        return sub_1915ED1B4(a2, a1, a1, result);
      }
    }
  }

  return result;
}

uint64_t sub_1915ED3A4(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 == 2)
    {
      sub_1915E1F90((a2 & 0x3FFFFFFFFFFFFFFFLL) + 16, v7);
      MEMORY[0x193AFD630](2);
      sub_19166C048();
      return sub_1915E0AF8(v7);
    }

    else
    {
      return MEMORY[0x193AFD630](3);
    }
  }

  else
  {
    if (v3)
    {
      v6 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x193AFD630](1);

      sub_191603D70(a1, v6);
    }

    else
    {
      v4 = *(a2 + 16);
      MEMORY[0x193AFD630](0);

      sub_191604140(a1, v4);
    }
  }
}

uint64_t sub_1915ED4A4()
{
  v1 = *v0;
  sub_19166C778();
  sub_1915ED3A4(v3, v1);
  return sub_19166C7B8();
}

uint64_t sub_1915ED4F4(uint64_t a1)
{
  v2 = *v1;
  sub_19166C778();
  sub_1915ED3A4(v4, v2);
  return sub_19166C7B8();
}

unint64_t sub_1915ED548()
{
  result = qword_1EADAF548;
  if (!qword_1EADAF548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAF548);
  }

  return result;
}

uint64_t sub_1915ED59C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 4 * v12);

    v17 = sub_1915DB0E4(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 4 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1915ED6D8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 4 * v12);

    v17 = sub_1915DB0E4(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 4 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1915ED80C(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (v8)
        {
          v10 = __clz(__rbit64(v8));
          v105 = (v8 - 1) & v8;
          goto LABEL_13;
        }

        v11 = v4;
        do
        {
          v4 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
LABEL_132:

            goto LABEL_120;
          }

          if (v4 >= v9)
          {
            return 1;
          }

          v12 = *(v5 + 8 * v4);
          ++v11;
        }

        while (!v12);
        v10 = __clz(__rbit64(v12));
        v105 = (v12 - 1) & v12;
LABEL_13:
        v13 = v10 | (v4 << 6);
        v14 = (*(v3 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        v17 = *(*(v3 + 56) + 8 * v13);

        v18 = sub_1915DB0E4(v15, v16);
        v20 = v19;

        if ((v20 & 1) == 0)
        {
          goto LABEL_139;
        }

        v21 = *(*(v2 + 56) + 8 * v18);
        v22 = v21 >> 62;
        if ((v21 >> 62) <= 1)
        {
          break;
        }

        v8 = v105;
        if (v22 == 2)
        {
          if (v17 >> 62 != 2)
          {
            goto LABEL_139;
          }

          sub_1915E1F90((v21 & 0x3FFFFFFFFFFFFFFFLL) + 16, v107);
          sub_1915E1F90((v17 & 0x3FFFFFFFFFFFFFFFLL) + 16, v106);

          v30 = MEMORY[0x193AFCED0](v107, v106);
          sub_1915E0AF8(v106);
          sub_1915E0AF8(v107);

          v8 = v105;
          result = 0;
          if ((v30 & 1) == 0)
          {
            return result;
          }
        }

        else if (v17 != 0xC000000000000000)
        {
          goto LABEL_139;
        }
      }

      if (!v22)
      {
        break;
      }

      if (v17 >> 62 != 1)
      {
        goto LABEL_139;
      }

      v31 = *((v21 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v32 = *((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

      LOBYTE(v31) = sub_1915ED80C(v31, v32);

      result = 0;
      v8 = v105;
      if ((v31 & 1) == 0)
      {
        return result;
      }
    }

    if (v17 >> 62)
    {
      goto LABEL_139;
    }

    v100 = v2;
    v23 = *(v21 + 16);
    v24 = *(v17 + 16);
    v25 = *(v23 + 16);
    if (v25 != *(v24 + 16))
    {
      goto LABEL_139;
    }

    if (!v25 || v23 == v24)
    {

      goto LABEL_31;
    }

    v104 = v23 + 32;
    v103 = v24 + 32;
    v101 = *(v23 + 16);
    v102 = *(v21 + 16);

    v28 = v101;
    v27 = v102;
    v29 = 0;
    v97 = v24;
LABEL_35:
    if (v29 >= *(v27 + 16))
    {
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
      return result;
    }

    if (v29 >= *(v24 + 16))
    {
      goto LABEL_142;
    }

    v33 = *(v104 + 8 * v29);
    v34 = *(v103 + 8 * v29);
    v35 = v33 >> 62;
    if ((v33 >> 62) > 1)
    {
      if (v35 == 2)
      {
        if (v34 >> 62 != 2)
        {
          goto LABEL_119;
        }

        sub_1915E1F90((v33 & 0x3FFFFFFFFFFFFFFFLL) + 16, v107);
        sub_1915E1F90((v34 & 0x3FFFFFFFFFFFFFFFLL) + 16, v106);

        v43 = MEMORY[0x193AFCED0](v107, v106);
        sub_1915E0AF8(v106);
        sub_1915E0AF8(v107);
        if ((v43 & 1) == 0)
        {
          goto LABEL_127;
        }

LABEL_49:

        goto LABEL_33;
      }

      if (v34 == 0xC000000000000000)
      {
        goto LABEL_34;
      }

LABEL_119:

LABEL_120:

      goto LABEL_139;
    }

    if (v35)
    {
      if (v34 >> 62 != 1)
      {
        goto LABEL_119;
      }

      v44 = *((v33 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v45 = *((v34 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

      LOBYTE(v44) = sub_1915ED80C(v44, v45);

      if ((v44 & 1) == 0)
      {
LABEL_127:

        goto LABEL_129;
      }

      goto LABEL_49;
    }

    if (v34 >> 62)
    {
      goto LABEL_119;
    }

    v36 = *(v33 + 16);
    v37 = *(v34 + 16);
    v38 = *(v36 + 16);
    if (v38 != *(v37 + 16))
    {

LABEL_129:

LABEL_130:

      return 0;
    }

    if (v38 && v36 != v37)
    {
      break;
    }

LABEL_34:
    if (++v29 != v28)
    {
      goto LABEL_35;
    }

LABEL_31:
    v2 = v100;
    v8 = v105;
  }

  v98 = v37 + 32;
  v99 = v36 + 32;
  v95 = *(v36 + 16);
  v96 = *(v33 + 16);

  v41 = v95;
  v40 = v96;
  v42 = 0;
  v90 = v37;
  while (1)
  {
    if (v42 >= *(v40 + 16))
    {
      goto LABEL_143;
    }

    if (v42 >= *(v37 + 16))
    {
      goto LABEL_144;
    }

    v46 = *(v99 + 8 * v42);
    v47 = *(v98 + 8 * v42);
    v48 = v46 >> 62;
    if ((v46 >> 62) <= 1)
    {
      break;
    }

    if (v48 != 2)
    {
      if (v47 != 0xC000000000000000)
      {
        goto LABEL_122;
      }

      goto LABEL_56;
    }

    if (v47 >> 62 != 2)
    {
      goto LABEL_122;
    }

    v56 = v47 & 0x3FFFFFFFFFFFFFFFLL;
    sub_1915E1F90((v46 & 0x3FFFFFFFFFFFFFFFLL) + 16, v107);
    sub_1915E1F90(v56 + 16, v106);

    v57 = MEMORY[0x193AFCED0](v107, v106);
    sub_1915E0AF8(v106);
    sub_1915E0AF8(v107);
    if ((v57 & 1) == 0)
    {
      goto LABEL_132;
    }

LABEL_74:

    v24 = v97;
LABEL_75:
    v37 = v90;
    v41 = v95;
    v40 = v96;
LABEL_56:
    if (++v42 == v41)
    {

LABEL_33:
      v28 = v101;
      v27 = v102;
      goto LABEL_34;
    }
  }

  if (v48)
  {
    if (v47 >> 62 != 1)
    {
LABEL_122:

      goto LABEL_130;
    }

    v58 = *((v46 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v59 = *((v47 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

    LOBYTE(v58) = sub_1915ED80C(v58, v59);

    if ((v58 & 1) == 0)
    {

      goto LABEL_130;
    }

    goto LABEL_74;
  }

  if (v47 >> 62)
  {
    goto LABEL_122;
  }

  v49 = *(v46 + 16);
  v50 = *(v47 + 16);
  v51 = *(v49 + 16);
  if (v51 != *(v50 + 16))
  {

    goto LABEL_138;
  }

  if (v51)
  {
    v52 = v49 == v50;
  }

  else
  {
    v52 = 1;
  }

  if (v52)
  {
    goto LABEL_56;
  }

  v91 = v50 + 32;
  v92 = v49 + 32;
  v85 = *(v49 + 16);
  v86 = *(v46 + 16);

  v54 = v85;
  v53 = v86;
  v55 = 0;
  v84 = v50;
  while (1)
  {
    if (v55 >= *(v53 + 16))
    {
      goto LABEL_147;
    }

    if (v55 >= *(v50 + 16))
    {
      goto LABEL_148;
    }

    v60 = *(v92 + 8 * v55);
    v61 = *(v91 + 8 * v55);
    v62 = v60 >> 62;
    if ((v60 >> 62) <= 1)
    {
      break;
    }

    if (v62 != 2)
    {
      if (v61 != 0xC000000000000000)
      {
        goto LABEL_126;
      }

      goto LABEL_77;
    }

    if (v61 >> 62 != 2)
    {
      goto LABEL_126;
    }

    v71 = v61 & 0x3FFFFFFFFFFFFFFFLL;
    sub_1915E1F90((v60 & 0x3FFFFFFFFFFFFFFFLL) + 16, v107);
    sub_1915E1F90(v71 + 16, v106);

    v72 = MEMORY[0x193AFCED0](v107, v106);
    sub_1915E0AF8(v106);
    sub_1915E0AF8(v107);
    if ((v72 & 1) == 0)
    {

      goto LABEL_138;
    }

LABEL_113:

LABEL_114:
    v24 = v97;
    v50 = v84;
    v54 = v85;
    v53 = v86;
LABEL_77:
    if (++v55 == v54)
    {

      goto LABEL_75;
    }
  }

  if (v62)
  {
    if (v61 >> 62 != 1)
    {
LABEL_126:

      goto LABEL_138;
    }

    v94 = *((v60 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v79 = *((v61 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

    LOBYTE(v94) = sub_1915ED80C(v94, v79);

    if ((v94 & 1) == 0)
    {

      goto LABEL_138;
    }

    goto LABEL_113;
  }

  if (v61 >> 62)
  {
    goto LABEL_126;
  }

  v63 = *(v60 + 16);
  v64 = *(v61 + 16);
  v65 = *(v63 + 16);
  if (v65 == *(v64 + 16))
  {
    if (v65)
    {
      v66 = v63 == v64;
    }

    else
    {
      v66 = 1;
    }

    if (!v66)
    {
      v93 = v63 + 32;
      v88 = *(v60 + 16);
      v89 = *(v61 + 16);
      v87 = *(v63 + 16);

      v68 = v87;
      v67 = v88;
      v69 = v89;
      v70 = 0;
      v80 = v3;
      while (1)
      {
        if (v70 >= *(v67 + 16))
        {
          goto LABEL_145;
        }

        if (v70 >= *(v69 + 16))
        {
          goto LABEL_146;
        }

        v73 = *(v93 + 8 * v70);
        v74 = *(v69 + 8 * v70 + 32);
        v75 = v73 >> 62;
        if ((v73 >> 62) > 1)
        {
          if (v75 == 2)
          {
            if (v74 >> 62 != 2)
            {
              goto LABEL_123;
            }

            sub_1915E1F90((v73 & 0x3FFFFFFFFFFFFFFFLL) + 16, v107);
            sub_1915E1F90((v74 & 0x3FFFFFFFFFFFFFFFLL) + 16, v106);

            v83 = MEMORY[0x193AFCED0](v107, v106);
            sub_1915E0AF8(v106);
            sub_1915E0AF8(v107);
            if ((v83 & 1) == 0)
            {

              goto LABEL_125;
            }

LABEL_93:

            v67 = v88;
            v69 = v89;
            v68 = v87;
            goto LABEL_94;
          }

          if (v74 != 0xC000000000000000)
          {
            goto LABEL_123;
          }
        }

        else
        {
          if (v75)
          {
            if (v74 >> 62 != 1)
            {
              goto LABEL_123;
            }

            v77 = *((v74 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            v81 = *((v73 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

            v78 = sub_1915ED80C(v81, v77);

            if ((v78 & 1) == 0)
            {

              goto LABEL_124;
            }

            goto LABEL_93;
          }

          if (v74 >> 62 || (v82 = *(v73 + 16), v76 = *(v74 + 16), , , , LOBYTE(v82) = sub_1915EE814(v82, v76), , , v3 = v80, result = , v68 = v87, v67 = v88, v69 = v89, (v82 & 1) == 0))
          {
LABEL_123:

LABEL_124:

            goto LABEL_125;
          }
        }

LABEL_94:
        if (v68 == ++v70)
        {

          goto LABEL_114;
        }
      }
    }

    goto LABEL_77;
  }

LABEL_125:

LABEL_138:

LABEL_139:

  return 0;
}

uint64_t sub_1915EE618(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioEffectConfiguration(0);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (!v13 || a1 == a2)
    {
      v24 = 1;
    }

    else
    {
      v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v15 = a1 + v14;
      v16 = a2 + v14;
      v17 = *(v10 + 72);
      while (1)
      {
        sub_1915EEE50(v15, v12);
        sub_1915EEE50(v16, v8);
        if ((sub_19166B198() & 1) == 0)
        {
          break;
        }

        v18 = v4[5];
        v19 = *&v12[v18];
        v20 = *&v12[v18 + 8];
        v21 = &v8[v18];
        v22 = v19 == *v21 && v20 == *(v21 + 1);
        if (!v22 && (sub_19166C5E8() & 1) == 0 || (sub_1915ED59C(*&v12[v4[6]], *&v8[v4[6]]) & 1) == 0 || (sub_1915ED6D8(*&v12[v4[7]], *&v8[v4[7]]) & 1) == 0)
        {
          break;
        }

        v23 = v12[v4[8]] ^ v8[v4[8]];
        sub_1915EEEB4(v8);
        sub_1915EEEB4(v12);
        if ((v23 & 1) == 0)
        {
          v16 += v17;
          v15 += v17;
          if (--v13)
          {
            continue;
          }
        }

        v24 = v23 ^ 1;
        return v24 & 1;
      }

      sub_1915EEEB4(v8);
      sub_1915EEEB4(v12);
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t sub_1915EE814(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4;
      v8 = v6 >> 62;
      if ((v6 >> 62) > 1)
      {
        if (v8 == 2)
        {
          if (v7 >> 62 != 2)
          {
            return 0;
          }

          sub_1915E1F90((v5 & 0x3FFFFFFFFFFFFFFFLL) + 16, v16);
          sub_1915E1F90((v7 & 0x3FFFFFFFFFFFFFFFLL) + 16, v15);

          v11 = MEMORY[0x193AFCED0](v16, v15);
          sub_1915E0AF8(v15);
          sub_1915E0AF8(v16);

          if ((v11 & 1) == 0)
          {
            return 0;
          }
        }

        else if (v7 != 0xC000000000000000)
        {
          return 0;
        }
      }

      else if (v8)
      {
        if (v7 >> 62 != 1)
        {
          return 0;
        }

        v12 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v13 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

        LOBYTE(v12) = sub_1915ED80C(v12, v13);

        if ((v12 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v7 >> 62)
        {
          return 0;
        }

        v9 = *(v5 + 16);
        v10 = *(v7 + 16);

        LOBYTE(v9) = sub_1915EE814(v9, v10);

        if ((v9 & 1) == 0)
        {
          return 0;
        }
      }

      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1915EEA18(unint64_t a1, unint64_t a2)
{
  v2 = a1 >> 62;
  if ((a1 >> 62) <= 1)
  {
    if (v2)
    {
      if (a2 >> 62 == 1)
      {
        v8 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v9 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

        v5 = sub_1915ED80C(v8, v9);
        goto LABEL_10;
      }
    }

    else if (!(a2 >> 62))
    {
      v3 = *(a1 + 16);
      v4 = *(a2 + 16);

      v5 = sub_1915EE814(v3, v4);
LABEL_10:
      v7 = v5;

      return v7 & 1;
    }

LABEL_13:
    v7 = 0;
    return v7 & 1;
  }

  if (v2 != 2)
  {
    if (a2 == 0xC000000000000000)
    {
      v7 = 1;
      return v7 & 1;
    }

    goto LABEL_13;
  }

  if (a2 >> 62 != 2)
  {
    goto LABEL_13;
  }

  v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
  sub_1915E1F90((a1 & 0x3FFFFFFFFFFFFFFFLL) + 16, v12);
  sub_1915E1F90(v6 + 16, v11);
  v7 = MEMORY[0x193AFCED0](v12, v11);
  sub_1915E0AF8(v11);
  sub_1915E0AF8(v12);
  return v7 & 1;
}

unint64_t sub_1915EEB28(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4C0, &qword_191672A80);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_1915EEC14(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_1915EEC74()
{
  result = qword_1EADAE688;
  if (!qword_1EADAE688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADAF550, &qword_191672860);
    sub_1915EEC14(&qword_1EADAE638, &qword_1EADAF4A8, &qword_191672420, MEMORY[0x1E69E7C78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAE688);
  }

  return result;
}

unint64_t sub_1915EED24()
{
  result = qword_1EADAE908;
  if (!qword_1EADAE908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAE908);
  }

  return result;
}

uint64_t sub_1915EED78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4A8, &qword_191672420);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1915EEDE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4A8, &qword_191672420);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1915EEE50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioEffectConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1915EEEB4(uint64_t a1)
{
  v2 = type metadata accessor for AudioEffectConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AXSerialQueue.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v35 = &v30 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF568, &qword_191672878);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF570, &qword_191672880);
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v30 - v11;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF578, &qword_191672888);
  v13 = *(v34 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x1EEE9AC00](v34, v15);
  v17 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v30 - v19;
  v31 = v0;
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF580, &qword_191672890);
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8650], v4);
  v30 = v12;
  sub_19166BB68();
  (*(v5 + 8))(v8, v4);
  v21 = v32;
  v22 = v33;
  (*(v32 + 16))(v0 + OBJC_IVAR____TtC15AXCoreUtilities13AXSerialQueue_continuation, v12, v33);
  v23 = sub_19166BB58();
  v24 = v35;
  (*(*(v23 - 8) + 56))(v35, 1, 1, v23);
  v25 = v34;
  (*(v13 + 16))(v17, v20, v34);
  v26 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  (*(v13 + 32))(v27 + v26, v17, v25);
  v28 = sub_1915D593C(0, 0, v24, &unk_1916728A0, v27);
  (*(v21 + 8))(v30, v22);
  (*(v13 + 8))(v20, v25);
  result = v31;
  *(v31 + OBJC_IVAR____TtC15AXCoreUtilities13AXSerialQueue_parentTask) = v28;
  return result;
}

uint64_t sub_1915EF324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5C0, &unk_1916729C0);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1915EF3F0, 0, 0);
}

uint64_t sub_1915EF3F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF578, &qword_191672888);
  sub_19166BBD8();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1915EF4BC;
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6D9C8](v0 + 16, 0, 0, v2);
}

uint64_t sub_1915EF4BC()
{

  return MEMORY[0x1EEE6DFA0](sub_1915EF5B8, 0, 0);
}

uint64_t sub_1915EF5B8(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v1[9] = v2;
  v1[10] = v3;
  if (!v2)
  {
    (*(v1[6] + 8))(v1[7], v1[5]);
    goto LABEL_5;
  }

  if (sub_19166BC48())
  {
    (*(v1[6] + 8))(v1[7], v1[5]);
    sub_19159F5CC(v2, v3);
LABEL_5:

    v4 = v1[1];

    return v4();
  }

  v7 = (v2 + *v2);
  v6 = swift_task_alloc();
  v1[11] = v6;
  *v6 = v1;
  v6[1] = sub_1915EF734;

  return v7();
}

uint64_t sub_1915EF734()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *v0;

  sub_19159F5CC(v3, v2);
  v5 = swift_task_alloc();
  *(v1 + 64) = v5;
  *v5 = v4;
  v5[1] = sub_1915EF4BC;
  v6 = *(v1 + 40);

  return MEMORY[0x1EEE6D9C8](v1 + 16, 0, 0, v6);
}

uint64_t sub_1915EF8D8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF578, &qword_191672888) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1915D4F90;

  return sub_1915EF324(a1, v6, v7, v1 + v5);
}

uint64_t sub_1915EFA1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF588, &qword_1916728A8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v11 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v11[0] = &unk_1916728B8;
  v11[1] = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF570, &qword_191672880);
  sub_19166BBA8();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1915EFB5C(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1915D4F90;

  return v5();
}

uint64_t sub_1915EFC44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1915D8338;

  return sub_1915EFB5C(a1, v4);
}

uint64_t sub_1915EFD4C(void (*a1)(void))
{
  v2 = swift_allocObject();
  a1();
  return v2;
}

uint64_t AXMainActorSerialQueue.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v35 = &v30 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF590, &qword_1916728C0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF598, &qword_1916728C8);
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v30 - v11;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5A0, &qword_1916728D0);
  v13 = *(v34 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x1EEE9AC00](v34, v15);
  v17 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v30 - v19;
  v31 = v0;
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5A8, &qword_1916728D8);
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8650], v4);
  v30 = v12;
  sub_19166BB68();
  (*(v5 + 8))(v8, v4);
  v21 = v32;
  v22 = v33;
  (*(v32 + 16))(v0 + OBJC_IVAR____TtC15AXCoreUtilities22AXMainActorSerialQueue_continuation, v12, v33);
  v23 = sub_19166BB58();
  v24 = v35;
  (*(*(v23 - 8) + 56))(v35, 1, 1, v23);
  v25 = v34;
  (*(v13 + 16))(v17, v20, v34);
  v26 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  (*(v13 + 32))(v27 + v26, v17, v25);
  v28 = sub_1915D593C(0, 0, v24, &unk_1916728E8, v27);
  (*(v21 + 8))(v30, v22);
  (*(v13 + 8))(v20, v25);
  result = v31;
  *(v31 + OBJC_IVAR____TtC15AXCoreUtilities22AXMainActorSerialQueue_parentTask) = v28;
  return result;
}

uint64_t sub_1915F0188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5B8, &qword_1916729B8);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1915F0254, 0, 0);
}

uint64_t sub_1915F0254()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5A0, &qword_1916728D0);
  sub_19166BBD8();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1915F0320;
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6D9C8](v0 + 16, 0, 0, v2);
}

uint64_t sub_1915F0320()
{

  return MEMORY[0x1EEE6DFA0](sub_1915F041C, 0, 0);
}

uint64_t sub_1915F041C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v1[9] = v2;
  v1[10] = v3;
  if (!v2)
  {
    (*(v1[6] + 8))(v1[7], v1[5]);
    goto LABEL_5;
  }

  if (sub_19166BC48())
  {
    (*(v1[6] + 8))(v1[7], v1[5]);
    sub_19159F5CC(v2, v3);
LABEL_5:

    v4 = v1[1];

    return v4();
  }

  v7 = (v2 + *v2);
  v6 = swift_task_alloc();
  v1[11] = v6;
  *v6 = v1;
  v6[1] = sub_1915F0598;

  return v7();
}

uint64_t sub_1915F0598()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *v0;

  sub_19159F5CC(v3, v2);
  v5 = swift_task_alloc();
  *(v1 + 64) = v5;
  *v5 = v4;
  v5[1] = sub_1915F0320;
  v6 = *(v1 + 40);

  return MEMORY[0x1EEE6D9C8](v1 + 16, 0, 0, v6);
}

uint64_t objectdestroyTm_0(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_1915F07FC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5A0, &qword_1916728D0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1915D8338;

  return sub_1915F0188(a1, v6, v7, v1 + v5);
}

uint64_t sub_1915F091C(uint64_t *a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v6 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v15 - v10;
  v12 = *a3;
  (*(v8 + 16))(&v15 - v10, v6 + v12, v7);
  sub_19166BBB8();
  v13 = *(v8 + 8);
  v13(v11, v7);
  v13((v6 + v12), v7);

  swift_defaultActor_destroy();
  return v6;
}

uint64_t sub_1915F0A64(uint64_t *a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v6 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v15 - v10;
  v12 = *a3;
  (*(v8 + 16))(&v15 - v10, v6 + v12, v7);
  sub_19166BBB8();
  v13 = *(v8 + 8);
  v13(v11, v7);
  v13((v6 + v12), v7);

  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

uint64_t sub_1915F0B8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5B0, &qword_1916728F0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v11 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v11[0] = &unk_1916728F8;
  v11[1] = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF598, &qword_1916728C8);
  sub_19166BBA8();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1915F0DD8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1915F0E2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  sub_1915F0F54(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1915F0F54(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_19166BBC8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1915F0FB0(uint64_t a1, uint64_t a2)
{
  v2 = sub_19166B718();
  v3 = [objc_opt_self() bundleWithIdentifier_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_19166B718();
  v5 = sub_19166B718();
  v6 = sub_19166B718();
  v7 = [v3 localizedStringForKey:v4 value:v5 table:v6];

  v8 = sub_19166B748();
  v10 = v9;

  v11 = v8 == 0x4E554F465F544F4ELL && v10 == 0xE900000000000044;
  if (!v11 && (sub_19166C5E8() & 1) == 0)
  {
    return v8;
  }

  return 0;
}

uint64_t sub_1915F113C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  sub_19166B228();
  sub_19166B7D8();

  uldn_open();

  v5 = swift_slowAlloc();
  sub_19166B7D8();
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      v6 = uldn_regionDisplayName();
    }

    else
    {
      v6 = uldn_variantDisplayName();
    }
  }

  else if (a4)
  {
    v6 = uldn_languageDisplayName();
  }

  else
  {
    v6 = uldn_localeDisplayName();
  }

  v7 = v6;

  v8 = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithCharacters:v5 length:v7];
  v9 = sub_19166B748();

  MEMORY[0x193AFEC10](v5, -1, -1);
  uldn_close();
  return v9;
}

uint64_t sub_1915F1370(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), unsigned __int8 a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5C8, &qword_1916729E0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v29 - v10;
  v12 = sub_19166B388();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_19166B298();
  v29 = a1;
  v30 = a2;
  a3(v17);
  v18 = sub_19166B7C8();
  v20 = v19;

  MEMORY[0x193AFC710](v18, v20);

  v21 = sub_1915F0FB0(v29, v30);
  v23 = v22;

  if (v23)
  {
    (*(v13 + 8))(v16, v12);
  }

  else
  {
    v25 = a3(v24);
    v21 = sub_1915F113C(v16, v25, v26, a4);
    v23 = v27;

    (*(v13 + 8))(v16, v12);
    if (!v23)
    {
      return v21;
    }
  }

  v29 = v21;
  v30 = v23;
  sub_19166B298();
  (*(v13 + 56))(v11, 0, 1, v12);
  sub_1915E5F84();
  v21 = sub_19166BF88();
  sub_19159E780(v11, &qword_1EADAF5C8, &qword_1916729E0);

  return v21;
}

uint64_t Locale.Subdivision.icuDisplayName.getter()
{
  v0 = sub_19166B388();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19166B298();
  v14 = 0x5349564944425553;
  v15 = 0xEB000000005F4E4FLL;
  sub_19166B238();
  v5 = sub_19166B7C8();
  v7 = v6;

  MEMORY[0x193AFC710](v5, v7);

  v8 = sub_1915F0FB0(v14, v15);
  v10 = v9;

  if (!v10)
  {
    v11 = sub_19166B238();
    v8 = sub_1915F113C(v4, v11, v12, 3u);
  }

  (*(v1 + 8))(v4, v0);
  return v8;
}

uint64_t sub_1915F17D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), unsigned __int8 a5)
{
  (a4)();
  v8 = sub_19166B7C8();
  v10 = v9;

  MEMORY[0x193AFC710](v8, v10);

  v11 = sub_1915F0FB0(a2, a3);
  v13 = v12;

  if (!v13)
  {
    v15 = a4(v14);
    v11 = sub_1915F113C(a1, v15, v16, a5);
  }

  return v11;
}

uint64_t Locale.icuDisplayName.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5C8, &qword_1916729E0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = v13 - v2;
  v4 = sub_19166B388();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19166B298();
  v9 = Locale.icuDisplayName(with:)(v8);
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  if (v11)
  {
    v13[0] = v9;
    v13[1] = v11;
    sub_19166B298();
    (*(v5 + 56))(v3, 0, 1, v4);
    sub_1915E5F84();
    v9 = sub_19166BF88();
    sub_19159E780(v3, &qword_1EADAF5C8, &qword_1916729E0);
  }

  return v9;
}

uint64_t Locale.icuDisplayName(with:)(uint64_t a1)
{
  v74 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5D0, &qword_1916729E8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v71 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5D8, &qword_1916729F0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v75 = &v71 - v8;
  v9 = sub_19166B368();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v71 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E0, &unk_191672A20);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v71 - v20;
  v76 = v1;
  sub_19166B378();
  sub_19166B338();
  v22 = *(v10 + 8);
  v22(v17, v9);
  v23 = sub_19166B278();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v21, 1, v23) == 1)
  {
    v25 = &qword_1EADAF5E0;
    v26 = &unk_191672A20;
LABEL_8:
    sub_19159E780(v21, v25, v26);
    return 0;
  }

  v73 = v5;
  v77 = 0x45474155474E414CLL;
  v78 = 0xE90000000000005FLL;
  sub_19166B238();
  v27 = sub_19166B7C8();
  v29 = v28;

  MEMORY[0x193AFC710](v27, v29);

  v30 = sub_1915F0FB0(v77, v78);
  v32 = v31;

  if (v32)
  {
    (*(v24 + 8))(v21, v23);
    goto LABEL_6;
  }

  v33 = sub_19166B238();
  v30 = sub_1915F113C(v74, v33, v34, 1u);
  v32 = v35;

  (*(v24 + 8))(v21, v23);
  if (v32)
  {
LABEL_6:
    sub_19166B378();
    v21 = v75;
    sub_19166B348();
    v22(v14, v9);
    v36 = sub_19166B2B8();
    v37 = *(v36 - 8);
    if ((*(v37 + 48))(v21, 1, v36) == 1)
    {

      v25 = &qword_1EADAF5D8;
      v26 = &qword_1916729F0;
      goto LABEL_8;
    }

    v72 = v30;
    v77 = 0x5F4E4F49474552;
    v78 = 0xE700000000000000;
    sub_19166B238();
    v39 = sub_19166B7C8();
    v41 = v40;

    MEMORY[0x193AFC710](v39, v41);

    v42 = sub_1915F0FB0(v77, v78);
    v44 = v43;

    if (v44)
    {
      (*(v37 + 8))(v21, v36);
      v45 = v73;
    }

    else
    {
      v46 = sub_19166B238();
      v42 = sub_1915F113C(v74, v46, v47, 2u);
      v44 = v48;

      (*(v37 + 8))(v21, v36);
      v45 = v73;
      if (!v44)
      {

        return 0;
      }
    }

    sub_19166B258();
    v49 = sub_19166B248();
    v50 = *(v49 - 8);
    if ((*(v50 + 48))(v45, 1, v49) == 1)
    {
      sub_19159E780(v45, &qword_1EADAF5D0, &qword_1916729E8);
LABEL_16:
      v51 = sub_19166B718();
      v52 = AXCLocString(v51);

      sub_19166B748();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_191672220;
      v54 = MEMORY[0x1E69E6158];
      *(v53 + 56) = MEMORY[0x1E69E6158];
      v55 = sub_1915F225C();
      *(v53 + 32) = v72;
      *(v53 + 40) = v32;
      *(v53 + 96) = v54;
      *(v53 + 104) = v55;
      *(v53 + 64) = v55;
      *(v53 + 72) = v42;
      *(v53 + 80) = v44;
      v56 = sub_19166B778();
LABEL_21:

      return v56;
    }

    v77 = 0x5349564944425553;
    v78 = 0xEB000000005F4E4FLL;
    sub_19166B238();
    v57 = sub_19166B7C8();
    v59 = v58;

    MEMORY[0x193AFC710](v57, v59);

    v60 = sub_1915F0FB0(v77, v78);
    v62 = v61;

    if (v62)
    {
      (*(v50 + 8))(v45, v49);
    }

    else
    {
      v63 = sub_19166B238();
      v60 = sub_1915F113C(v74, v63, v64, 3u);
      v62 = v65;

      (*(v50 + 8))(v45, v49);
      if (!v62)
      {
        goto LABEL_16;
      }
    }

    v66 = sub_19166B718();
    v67 = AXCLocString(v66);

    sub_19166B748();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1916729D0;
    v69 = MEMORY[0x1E69E6158];
    *(v68 + 56) = MEMORY[0x1E69E6158];
    v70 = sub_1915F225C();
    *(v68 + 32) = v72;
    *(v68 + 40) = v32;
    *(v68 + 96) = v69;
    *(v68 + 104) = v70;
    *(v68 + 64) = v70;
    *(v68 + 72) = v60;
    *(v68 + 80) = v62;
    *(v68 + 136) = v69;
    *(v68 + 144) = v70;
    *(v68 + 112) = v42;
    *(v68 + 120) = v44;
    v56 = sub_19166B778();
    goto LABEL_21;
  }

  return 0;
}

unint64_t sub_1915F225C()
{
  result = qword_1EADAF5F0;
  if (!qword_1EADAF5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAF5F0);
  }

  return result;
}

uint64_t sub_1915F22B0@<X0>(uint64_t a2@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = sub_19166AF68();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  sub_19166B228();
  sub_19166B7D8();

  v8 = ulocdata_open();

  if (v23 > 0)
  {
    return (*(v4 + 56))(a2, 1, 1, v3);
  }

  ExemplarSet = ulocdata_getExemplarSet();
  if (v23 > 0)
  {
    (*(v4 + 56))(a2, 1, 1, v3);
    return ulocdata_close();
  }

  if (v23 == -127)
  {
    MEMORY[0x193AFEE40](ExemplarSet);
  }

  sub_19166AF58();
  v11 = swift_slowAlloc();
  ItemCount = uset_getItemCount();
  if (ItemCount < 0)
  {
LABEL_38:
    __break(1u);
  }

  v13 = ItemCount;
  if (!ItemCount)
  {
    goto LABEL_27;
  }

  v18[1] = v8;
  v19 = a2;
  v14 = 0;
  do
  {
    v22 = 0;
    Item = uset_getItem();
    v17 = v23;
    if (v23 != 15)
    {
      goto LABEL_15;
    }

    MEMORY[0x193AFEC10](v11, -1, -1);
    if (__OFADD__(Item, 1))
    {
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
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v11 = swift_slowAlloc();
    v23 = 0;
    uset_getItem();
    v17 = v23;
LABEL_15:
    if (v17 > 0)
    {
      (*(v4 + 56))(v19, 1, 1, v3);
      MEMORY[0x193AFEC10](v11, -1, -1);
      (*(v4 + 8))(v7, v3);
      uset_close();
      return ulocdata_close();
    }

    if (Item > 0)
    {
      v20 = sub_19166B708();
      v21 = v15;
      sub_19166B948();
      sub_19166AF28();
    }

    else
    {
      if (v22 < 0)
      {
        goto LABEL_31;
      }

      if ((HIDWORD(v22) & 0x7FFFF800) == 0xD800)
      {
        goto LABEL_36;
      }

      if (HIDWORD(v22) > 0x10FFFF)
      {
        goto LABEL_32;
      }

      if ((v22 & 0x80000000) != 0)
      {
        goto LABEL_33;
      }

      if ((v22 & 0x7FFFF800) == 0xD800)
      {
        goto LABEL_37;
      }

      if (v22 > 0x10FFFF)
      {
        goto LABEL_34;
      }

      if (v22 < HIDWORD(v22))
      {
        goto LABEL_35;
      }

      sub_19166AF18();
    }

    ++v14;
  }

  while (v13 != v14);
  a2 = v19;
LABEL_27:
  (*(v4 + 16))(a2, v7, v3);
  (*(v4 + 56))(a2, 0, 1, v3);
  MEMORY[0x193AFEC10](v11, -1, -1);
  (*(v4 + 8))(v7, v3);
  uset_close();
  return ulocdata_close();
}

uint64_t Locale.axExemplarCharacterSet.getter@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = sub_19166AF68();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v43 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5F8, &qword_191672A00);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v50 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v40 - v16;
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v40 - v20;
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v40 - v23;
  v25 = *(v3 + 56);
  v3 += 56;
  v47 = v25;
  v25(&v40 - v23, 1, 1, v2);
  v26 = 0;
  v27 = (v3 - 8);
  v28 = (v3 - 24);
  v44 = (v3 - 48);
  v45 = (v3 - 24);
  v51 = v3;
  v42 = (v3 - 40);
  v48 = v21;
  v49 = v1;
  v46 = v17;
  do
  {
    sub_1915F22B0(v21);
    v29 = *v27;
    if ((*v27)(v21, 1, v2) == 1)
    {
      sub_19159E780(v21, &qword_1EADAF5F8, &qword_191672A00);
    }

    else
    {
      v30 = v21;
      v31 = *v28;
      (*v28)(v9, v30, v2);
      v32 = v50;
      sub_1915F2B0C(v24, v50);
      v33 = v29(v32, 1, v2);
      sub_19159E780(v32, &qword_1EADAF5F8, &qword_191672A00);
      if (v33 == 1)
      {
        v34 = v46;
        v31(v46, v9, v2);
        v35 = 0;
        v21 = v48;
      }

      else
      {
        v36 = v29(v24, 1, v2);
        v34 = v46;
        if (v36)
        {
          (*v44)(v9, v2);
          v35 = 1;
        }

        else
        {
          v37 = v43;
          (*v42)(v43, v24, v2);
          sub_19166AF08();
          v38 = *v44;
          (*v44)(v37, v2);
          v38(v9, v2);
          v35 = 0;
        }

        v21 = v48;
        v28 = v45;
      }

      v47(v34, v35, 1, v2);
      sub_1915F2B7C(v34, v24);
    }

    v26 += 4;
  }

  while (v26 != 16);
  return sub_1915F2A9C(v24, v41);
}

uint64_t sub_1915F2A9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5F8, &qword_191672A00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1915F2B0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5F8, &qword_191672A00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1915F2B7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5F8, &qword_191672A00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1915F2BEC(uint64_t a1)
{
  v2 = sub_19166B2D8();
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v4, v7);
  v11 = &v15 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = (v9 + 8);
    v14 = a1 + 40;
    do
    {
      swift_bridgeObjectRetain_n();
      sub_19166B2E8();
      sub_1915F5BF4(v11, v6);
      (*v13)(v11, v2);

      v14 += 16;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t Unicode.Scalar.axScripts.getter(uint64_t a1)
{
  v1 = a1;
  v42 = *MEMORY[0x1E69E9840];
  v39 = sub_19166B2D8();
  v2 = *(v39 - 8);
  v4 = MEMORY[0x1EEE9AC00](v39, v3);
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v6);
  v37 = &v34 - v7;
  v8 = swift_slowAlloc();
  if (v1 < 0)
  {
    goto LABEL_34;
  }

  v9 = v8;
  v41 = 0;
  ScriptExtensions = uscript_getScriptExtensions();
  if (v41)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF600, &qword_191672A10);
    v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_191672210;
    sub_19166B2E8();
    v13 = sub_1915F7D24(v12);
    swift_setDeallocating();
    (*(v2 + 8))(v12 + v11, v39);
    swift_deallocClassInstance();
    return v13;
  }

  v14 = ScriptExtensions;
  if (ScriptExtensions)
  {
    v15 = sub_1915F4DA8(ScriptExtensions, 0);
    memcpy(v15 + 4, v9, 4 * v14);
    v16 = v15[2];
    if (v16)
    {
LABEL_6:
      v17 = 0;
      v18 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v17 >= v15[2])
        {
          __break(1u);
          goto LABEL_33;
        }

        if (!uscript_getShortName())
        {
          goto LABEL_11;
        }

        v19 = sub_19166B878();
        v21 = v20;
        if (sub_19166B838() <= 0)
        {
          break;
        }

LABEL_12:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1915F47A8(0, *(v18 + 2) + 1, 1, v18);
        }

        v23 = *(v18 + 2);
        v22 = *(v18 + 3);
        if (v23 >= v22 >> 1)
        {
          v18 = sub_1915F47A8((v22 > 1), v23 + 1, 1, v18);
        }

        ++v17;
        *(v18 + 2) = v23 + 1;
        v24 = &v18[16 * v23];
        *(v24 + 4) = v19;
        *(v24 + 5) = v21;
        if (v16 == v17)
        {
          goto LABEL_20;
        }
      }

LABEL_11:
      v21 = 0xE400000000000000;
      v19 = 2038004058;
      goto LABEL_12;
    }
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
    v16 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v16)
    {
      goto LABEL_6;
    }
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_20:

  v36 = *(v18 + 2);
  if (v36)
  {
    v25 = 0;
    v35 = (v2 + 8);
    v26 = (v18 + 40);
    v13 = MEMORY[0x1E69E7CD0];
    v27 = v38;
    while (v25 < *(v18 + 2))
    {
      v29 = *(v26 - 1);
      v28 = *v26;
      v40 = v13;
      swift_bridgeObjectRetain_n();

      sub_19166B2E8();
      v30 = v37;
      sub_1915F5BF4(v37, v27);
      (*v35)(v30, v39);
      if (qword_1EADAEFE0 != -1)
      {
        swift_once();
      }

      if (*(qword_1EADB6DE8 + 16))
      {
        sub_1915DB0E4(v29, v28);
        if (v31)
        {

          sub_1915F2BEC(v32);
        }
      }

      ++v25;

      v13 = v40;
      v26 += 2;
      if (v36 == v25)
      {
        goto LABEL_30;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  v13 = MEMORY[0x1E69E7CD0];
LABEL_30:

  return v13;
}

uint64_t Locale.Language.axScripts.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF608, &qword_191672A18);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v61 - v2;
  v4 = sub_19166B2D8();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v61 - v12;
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v66 = &v61 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v65 = &v61 - v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v64 = &v61 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E0, &unk_191672A20);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v61 - v24;
  v26 = sub_19166B278();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x1E69E7CD0];
  sub_19166B338();
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_19159E780(v25, &qword_1EADAF5E0, &unk_191672A20);
    return MEMORY[0x1E69E7CD0];
  }

  else
  {
    v62 = v27;
    v63 = v26;
    (*(v27 + 32))(v30, v25, v26);
    sub_19166B358();
    v32 = v30;
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_19159E780(v3, &qword_1EADAF608, &qword_191672A18);
    }

    else
    {
      v33 = v64;
      (*(v5 + 32))(v64, v3, v4);
      v34 = v66;
      (*(v5 + 16))(v66, v33, v4);
      v35 = v65;
      sub_1915F5BF4(v65, v34);
      v36 = v9;
      v37 = *(v5 + 8);
      v37(v35, v4);
      v37(v33, v4);
      v9 = v36;
    }

    if (qword_1EADAEFE8 != -1)
    {
      swift_once();
    }

    v38 = qword_1EADB6DF0;
    v39 = sub_19166B238();
    if (*(v38 + 16))
    {
      v41 = sub_1915DB0E4(v39, v40);
      v43 = v42;

      if (v43)
      {
        v66 = v32;
        v44 = *(*(v38 + 56) + 8 * v41);
        v45 = *(v44 + 16);
        v46 = MEMORY[0x1E69E7CC0];
        if (v45)
        {
          v64 = v38;
          v65 = v9;
          v67 = MEMORY[0x1E69E7CC0];

          sub_1915F4ED0(0, v45, 0);
          v46 = v67;
          v61 = v44;
          v47 = v44 + 40;
          do
          {

            sub_19166B2E8();
            v67 = v46;
            v49 = *(v46 + 16);
            v48 = *(v46 + 24);
            if (v49 >= v48 >> 1)
            {
              sub_1915F4ED0((v48 > 1), v49 + 1, 1);
              v46 = v67;
            }

            *(v46 + 16) = v49 + 1;
            (*(v5 + 32))(v46 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v49, v13, v4);
            v47 += 16;
            --v45;
          }

          while (v45);

          v38 = v64;
          v9 = v65;
        }

        sub_1915F7EAC(v46);

        v32 = v66;
      }
    }

    else
    {
    }

    v51 = v62;
    v50 = v63;
    if (*(v38 + 16))
    {
      v52 = sub_1915DB0E4(42, 0xE100000000000000);
      if (v53)
      {
        v54 = *(*(v38 + 56) + 8 * v52);
        v55 = *(v54 + 16);
        v56 = MEMORY[0x1E69E7CC0];
        if (v55)
        {
          v66 = v32;
          v67 = MEMORY[0x1E69E7CC0];

          sub_1915F4ED0(0, v55, 0);
          v56 = v67;
          v65 = v54;
          v57 = v54 + 40;
          do
          {

            sub_19166B2E8();
            v67 = v56;
            v58 = v9;
            v60 = *(v56 + 16);
            v59 = *(v56 + 24);
            if (v60 >= v59 >> 1)
            {
              sub_1915F4ED0((v59 > 1), v60 + 1, 1);
              v56 = v67;
            }

            *(v56 + 16) = v60 + 1;
            (*(v5 + 32))(v56 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v60, v58, v4);
            v57 += 16;
            --v55;
            v9 = v58;
          }

          while (v55);

          v51 = v62;
          v50 = v63;
          v32 = v66;
        }

        sub_1915F7EAC(v56);
      }
    }

    (*(v51 + 8))(v32, v50);
    return v68;
  }
}

BOOL Locale.Language.supportsCharacter(_:)(uint64_t a1)
{
  v1 = Unicode.Scalar.axScripts.getter(a1);
  v2 = Locale.Language.axScripts.getter();
  v3 = sub_1915F7124(v2, v1);

  v4 = *(v3 + 16);

  return v4 != 0;
}

uint64_t AXCachedLocaleCharacterSupportMatrix.__allocating_init(locale:)(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_19166AF58();
  sub_19166AF58();
  v3 = OBJC_IVAR____TtC15AXCoreUtilities36AXCachedLocaleCharacterSupportMatrix_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4F8, &qword_191675FE0);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v2 + v3) = v4;
  v5 = OBJC_IVAR____TtC15AXCoreUtilities36AXCachedLocaleCharacterSupportMatrix_locale;
  v6 = sub_19166B388();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  return v2;
}

uint64_t AXCachedLocaleCharacterSupportMatrix.init(locale:)(uint64_t a1)
{
  sub_19166AF58();
  sub_19166AF58();
  v3 = OBJC_IVAR____TtC15AXCoreUtilities36AXCachedLocaleCharacterSupportMatrix_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4F8, &qword_191675FE0);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v1 + v3) = v4;
  v5 = OBJC_IVAR____TtC15AXCoreUtilities36AXCachedLocaleCharacterSupportMatrix_locale;
  v6 = sub_19166B388();
  (*(*(v6 - 8) + 32))(v1 + v5, a1, v6);
  return v1;
}

uint64_t sub_1915F39F4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_19166B368();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v1 + OBJC_IVAR____TtC15AXCoreUtilities36AXCachedLocaleCharacterSupportMatrix_lock);
  v22 = v1;
  v23 = a1;
  os_unfair_lock_lock(v9 + 4);
  sub_1915F7FF4(v24);
  os_unfair_lock_unlock(v9 + 4);
  v10 = v24[0];
  if (v24[0] == 2)
  {
    sub_19166B378();
    v11 = Unicode.Scalar.axScripts.getter(a1);
    v12 = Locale.Language.axScripts.getter();
    v13 = sub_1915F7124(v12, v11);

    (*(v5 + 8))(v8, v4);
    v14 = *(v13 + 16);

    v10 = v14 != 0;
    v17 = MEMORY[0x1EEE9AC00](v15, v16);
    v21[-32] = v14 != 0;
    *&v21[-24] = v2;
    *&v21[-16] = a1;
    MEMORY[0x1EEE9AC00](v17, v18);
    *&v21[-16] = sub_1915F8014;
    *&v21[-8] = v19;
    os_unfair_lock_lock(v9 + 4);
    sub_1915F8038(v24);
    os_unfair_lock_unlock(v9 + 4);
  }

  return v10 & 1;
}

uint64_t sub_1915F3BE8@<X0>(uint64_t a1@<X1>, char *a3@<X8>)
{
  v18 = a3;
  v4 = sub_19166AF68();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC15AXCoreUtilities36AXCachedLocaleCharacterSupportMatrix_supportedCharacters;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v10(v8, a1 + v9, v4);
  v11 = sub_19166AF48();
  v12 = *(v5 + 8);
  result = v12(v8, v4);
  if (v11)
  {
    v14 = 1;
  }

  else
  {
    v15 = OBJC_IVAR____TtC15AXCoreUtilities36AXCachedLocaleCharacterSupportMatrix_unsupportedCharacters;
    swift_beginAccess();
    v10(v8, a1 + v15, v4);
    v16 = sub_19166AF48();
    result = v12(v8, v4);
    if (v16)
    {
      v14 = 0;
    }

    else
    {
      v14 = 2;
    }
  }

  *v18 = v14;
  return result;
}

uint64_t sub_1915F3D8C@<X0>(uint64_t a4@<X8>)
{
  swift_beginAccess();
  v5 = sub_19166AF38();
  result = swift_endAccess();
  *a4 = v5 & 1;
  *(a4 + 4) = HIDWORD(v5);
  return result;
}

uint64_t sub_1915F3E28(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v41 = sub_19166B368();
  MEMORY[0x1EEE9AC00](v41, v6);
  v40 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    return 1;
  }

  v10 = OBJC_IVAR____TtC15AXCoreUtilities36AXCachedLocaleCharacterSupportMatrix_lock;
  v33 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v34 = a2 & 0xFFFFFFFFFFFFFFLL;
  v37 = (v7 + 8);
  v38 = OBJC_IVAR____TtC15AXCoreUtilities36AXCachedLocaleCharacterSupportMatrix_locale;

  v13 = 0;
  v39 = a2;
  v35 = v9;
  v36 = v10;
  do
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      v11 = sub_19166C0B8();
      v15 = v11;
      v43 = v12;
      goto LABEL_18;
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v44[0] = v42;
      v44[1] = v34;
      v14 = v44 + v13;
    }

    else
    {
      v11 = v33;
      if ((v42 & 0x1000000000000000) == 0)
      {
        v11 = sub_19166C108();
      }

      v14 = (v11 + v13);
    }

    v15 = *v14;
    if ((*v14 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    v30 = (__clz(v15 ^ 0xFF) - 24);
    if (v30 > 2)
    {
      if (v30 == 3)
      {
        v15 = ((v15 & 0xF) << 12) | ((v14[1] & 0x3F) << 6) | v14[2] & 0x3F;
        v16 = 3;
      }

      else
      {
        v15 = ((v15 & 0xF) << 18) | ((v14[1] & 0x3F) << 12) | ((v14[2] & 0x3F) << 6) | v14[3] & 0x3F;
        v16 = 4;
      }

      goto LABEL_17;
    }

    if (v30 == 1)
    {
LABEL_16:
      v16 = 1;
    }

    else
    {
      v15 = v14[1] & 0x3F | ((v15 & 0x1F) << 6);
      v16 = 2;
    }

LABEL_17:
    v43 = v16;
LABEL_18:
    v17 = *(v3 + v10);
    MEMORY[0x1EEE9AC00](v11, v12);
    *(&v33 - 2) = v3;
    *(&v33 - 2) = v15;
    os_unfair_lock_lock(v17 + 4);
    sub_1915F82B8(v44);
    os_unfair_lock_unlock(v17 + 4);
    if (LOBYTE(v44[0]) == 2)
    {
      v18 = v3;
      v19 = v40;
      sub_19166B378();
      v20 = Unicode.Scalar.axScripts.getter(v15);
      v21 = Locale.Language.axScripts.getter();
      v22 = sub_1915F7124(v21, v20);

      (*v37)(v19, v41);
      v23 = *(v22 + 16);

      v26 = MEMORY[0x1EEE9AC00](v24, v25);
      *(&v33 - 32) = v27;
      v3 = v18;
      *(&v33 - 3) = v18;
      *(&v33 - 4) = v15;
      MEMORY[0x1EEE9AC00](v26, v28);
      *(&v33 - 2) = sub_1915F82A0;
      *(&v33 - 1) = v29;
      os_unfair_lock_lock(v17 + 4);
      sub_1915F8288(v44);
      os_unfair_lock_unlock(v17 + 4);
      if (!v23)
      {
        v31 = 0;
        goto LABEL_29;
      }

      a2 = v39;
      v9 = v35;
      v10 = v36;
    }

    else if ((v44[0] & 1) == 0)
    {
      v31 = 0;
      goto LABEL_29;
    }

    v13 += v43;
  }

  while (v13 < v9);
  v31 = 1;
LABEL_29:

  return v31;
}

uint64_t AXCachedLocaleCharacterSupportMatrix.deinit()
{
  v1 = OBJC_IVAR____TtC15AXCoreUtilities36AXCachedLocaleCharacterSupportMatrix_locale;
  v2 = sub_19166B388();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15AXCoreUtilities36AXCachedLocaleCharacterSupportMatrix_supportedCharacters;
  v4 = sub_19166AF68();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC15AXCoreUtilities36AXCachedLocaleCharacterSupportMatrix_unsupportedCharacters, v4);

  return v0;
}

uint64_t AXCachedLocaleCharacterSupportMatrix.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15AXCoreUtilities36AXCachedLocaleCharacterSupportMatrix_locale;
  v2 = sub_19166B388();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15AXCoreUtilities36AXCachedLocaleCharacterSupportMatrix_supportedCharacters;
  v4 = sub_19166AF68();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC15AXCoreUtilities36AXCachedLocaleCharacterSupportMatrix_unsupportedCharacters, v4);

  return swift_deallocClassInstance();
}

void *sub_1915F4450(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v16 = MEMORY[0x1E69E7CC0];
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

char *sub_1915F4598(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF620, &qword_191672A88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1915F46A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF650, &qword_191672AC0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1915F47A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4E0, &qword_1916724A0);
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

void *sub_1915F48B4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF668, &unk_191672AE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4D0, &unk_191672480);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1915F49E8(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF640, &qword_191672AA8);
  v10 = *(sub_19166B1C8() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_19166B1C8() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1915F4BE4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
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

void *sub_1915F4D18(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF660, &unk_191672AD0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_1915F4DA8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF690, &qword_191672B08);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

char *sub_1915F4E2C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1915F4F94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1915F4E4C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1915F50A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1915F4E6C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1915F5308(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1915F4E8C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1915F543C(a1, a2, a3, *v3, &qword_1EADAF698, &qword_191672B10, MEMORY[0x1E6968FB0]);
  *v3 = result;
  return result;
}

void *sub_1915F4ED0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1915F543C(a1, a2, a3, *v3, &qword_1EADAF600, &qword_191672A10, MEMORY[0x1E69696A0]);
  *v3 = result;
  return result;
}

char *sub_1915F4F14(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1915F5618(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1915F4F34(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1915F5724(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1915F4F54(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1915F5858(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1915F4F74(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1915F595C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1915F4F94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF620, &qword_191672A88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1915F50A0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF648, &unk_191672AB0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4A8, &qword_191672420);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1915F51E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF658, &qword_191672AC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1915F5308(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF6A0, &qword_191672B18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF6A8, &qword_191672B20);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1915F543C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1915F5618(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4E0, &qword_1916724A0);
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

void *sub_1915F5724(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF668, &unk_191672AE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4D0, &unk_191672480);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1915F5858(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF670, &unk_191672AF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1915F595C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF660, &unk_191672AD0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3E8, &qword_1916721B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1915F5AA4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_19166C778();
  sub_19166B828();
  v8 = sub_19166C7B8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_19166C5E8() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1915F6454(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1915F5BF4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_19166B2D8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_1915F8244(&qword_1EADAF678, MEMORY[0x1E69696A8]);
  v34 = a2;
  v12 = sub_19166B6B8();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_1915F8244(&qword_1EADAF680, MEMORY[0x1E69696B0]);
      v22 = sub_19166B6E8();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1915F65D4(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1915F5EAC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF628, &qword_191672A90);
  result = sub_19166C078();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_19166C778();
      sub_19166B828();
      result = sub_19166C7B8();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1915F610C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_19166B2D8();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF688, &qword_191672B00);
  result = sub_19166C078();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v35 = v3 + 32;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v21;
      v21(v36, v20, v37);
      sub_1915F8244(&qword_1EADAF678, MEMORY[0x1E69696A8]);
      result = sub_19166B6B8();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v34(*(v8 + 48) + v16 * v33, v36, v37);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_1915F6454(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1915F5EAC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1915F6850();
      goto LABEL_16;
    }

    sub_1915F6BE4(v8 + 1);
  }

  v10 = *v4;
  sub_19166C778();
  sub_19166B828();
  result = sub_19166C7B8();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_19166C5E8();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_19166C6E8();
  __break(1u);
  return result;
}

uint64_t sub_1915F65D4(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_19166B2D8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1915F610C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1915F69AC();
      goto LABEL_12;
    }

    sub_1915F6E1C(v11 + 1);
  }

  v13 = *v3;
  sub_1915F8244(&qword_1EADAF678, MEMORY[0x1E69696A8]);
  v14 = sub_19166B6B8();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_1915F8244(&qword_1EADAF680, MEMORY[0x1E69696B0]);
      v22 = sub_19166B6E8();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_19166C6E8();
  __break(1u);
  return result;
}

void *sub_1915F6850()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF628, &qword_191672A90);
  v2 = *v0;
  v3 = sub_19166C068();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1915F69AC()
{
  v1 = v0;
  v2 = sub_19166B2D8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF688, &qword_191672B00);
  v7 = *v0;
  v8 = sub_19166C068();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_1915F6BE4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF628, &qword_191672A90);
  result = sub_19166C078();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_19166C778();

      sub_19166B828();
      result = sub_19166C7B8();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1915F6E1C(uint64_t a1)
{
  v2 = v1;
  v34 = sub_19166B2D8();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF688, &qword_191672B00);
  v8 = sub_19166C078();
  result = v7;
  if (*(v7 + 16))
  {
    v29 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v16 = v8 + 56;
    v30 = (v3 + 32);
    v31 = result;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v33 + 72);
      (*(v33 + 16))(v6, *(result + 48) + v21 * (v18 | (v10 << 6)), v34);
      sub_1915F8244(&qword_1EADAF678, MEMORY[0x1E69696A8]);
      result = sub_19166B6B8();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v30)(*(v8 + 48) + v17 * v21, v6, v34);
      ++*(v8 + 16);
      result = v31;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1915F7124(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe, v9);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v10 = sub_1915F7378((v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v10 = sub_1915F72E8(v12, v6, a2, a1);

    MEMORY[0x193AFEC10](v12, -1, -1);
  }

  return v10;
}

void *sub_1915F72E8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_1915F7378(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1915F7378(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v66 = a2;
  v70 = a1;
  v6 = sub_19166B2D8();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v79 = (v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = v65 - v13;
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v80 = (v65 - v17);
  result = MEMORY[0x1EEE9AC00](v16, v18);
  v69 = v65 - v20;
  v21 = *(a3 + 16);
  v22 = *(a4 + 16);
  v81 = v7 + 16;
  v77 = a4;
  v78 = a3;
  v73 = v7;
  if (v22 >= v21)
  {
    v46 = 0;
    v47 = *(a3 + 56);
    v68 = a3 + 56;
    v48 = 1 << *(a3 + 32);
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    else
    {
      v49 = -1;
    }

    v50 = v49 & v47;
    v51 = (v48 + 63) >> 6;
    v76 = a4 + 56;
    v80 = (v7 + 8);
    j = v51;
    v72 = 0;
    if (v50)
    {
      goto LABEL_30;
    }

LABEL_31:
    v53 = v46;
    while (1)
    {
      v46 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        break;
      }

      if (v46 >= v51)
      {
LABEL_44:

        return sub_1915F7A10(v70, v66, v72, a3);
      }

      v54 = *(v68 + 8 * v46);
      ++v53;
      if (v54)
      {
        v52 = __clz(__rbit64(v54));
        for (i = ((v54 - 1) & v54); ; i = ((v50 - 1) & v50))
        {
          v55 = v52 | (v46 << 6);
          v56 = *(a3 + 48);
          v57 = *(v7 + 72);
          v74 = v55;
          v58 = *(v7 + 16);
          v58(v79, v56 + v57 * v55, v6);
          sub_1915F8244(&qword_1EADAF678, MEMORY[0x1E69696A8]);
          v59 = sub_19166B6B8();
          v60 = -1 << *(a4 + 32);
          v61 = v59 & ~v60;
          if ((*(v76 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61))
          {
            v69 = (v80 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v62 = ~v60;
            while (1)
            {
              v58(v14, *(v77 + 48) + v61 * v57, v6);
              sub_1915F8244(&qword_1EADAF680, MEMORY[0x1E69696B0]);
              v63 = sub_19166B6E8();
              v64 = *v80;
              (*v80)(v14, v6);
              if (v63)
              {
                break;
              }

              v61 = (v61 + 1) & v62;
              if (((*(v76 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) == 0)
              {
                a4 = v77;
                goto LABEL_42;
              }
            }

            result = (v64)(v79, v6);
            v7 = v73;
            *(v70 + ((v74 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v74;
            v51 = j;
            v31 = __OFADD__(v72++, 1);
            a4 = v77;
            a3 = v78;
            v50 = i;
            if (v31)
            {
              goto LABEL_47;
            }

            if (!i)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v64 = *v80;
LABEL_42:
            result = (v64)(v79, v6);
            a3 = v78;
            v7 = v73;
            v51 = j;
            v50 = i;
            if (!i)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v52 = __clz(__rbit64(v50));
        }
      }
    }

    __break(1u);
  }

  else
  {
    v72 = 0;
    v23 = a4;
    v24 = 0;
    v26 = v23 + 56;
    v25 = *(v23 + 56);
    v65[0] = v26;
    v27 = 1 << *(v26 - 24);
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v29 = v28 & v25;
    v30 = (v27 + 63) >> 6;
    v67 = v7 + 32;
    v68 = v30;
    v74 = a3 + 56;
    v79 = (v7 + 8);
    if (v29)
    {
      goto LABEL_9;
    }

LABEL_10:
    v33 = v24;
    while (1)
    {
      v24 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v24 >= v30)
      {
        goto LABEL_44;
      }

      v34 = *(v65[0] + 8 * v24);
      ++v33;
      if (v34)
      {
        v32 = __clz(__rbit64(v34));
        for (j = (v34 - 1) & v34; ; j = (v29 - 1) & v29)
        {
          v35 = *(v7 + 72);
          v36 = *(v77 + 48) + v35 * (v32 | (v24 << 6));
          v37 = v69;
          i = *(v7 + 16);
          v76 = v35;
          i(v69, v36, v6);
          (*(v7 + 32))(v80, v37, v6);
          sub_1915F8244(&qword_1EADAF678, MEMORY[0x1E69696A8]);
          v38 = sub_19166B6B8();
          v39 = -1 << *(a3 + 32);
          v40 = v38 & ~v39;
          v41 = v40 >> 6;
          v42 = 1 << v40;
          if (((1 << v40) & *(v74 + 8 * (v40 >> 6))) != 0)
          {
            v65[1] = v79 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v43 = ~v39;
            while (1)
            {
              i(v14, *(v78 + 48) + v40 * v76, v6);
              sub_1915F8244(&qword_1EADAF680, MEMORY[0x1E69696B0]);
              v44 = sub_19166B6E8();
              v45 = *v79;
              (*v79)(v14, v6);
              if (v44)
              {
                break;
              }

              v40 = (v40 + 1) & v43;
              v41 = v40 >> 6;
              v42 = 1 << v40;
              if (((1 << v40) & *(v74 + 8 * (v40 >> 6))) == 0)
              {
                a3 = v78;
                goto LABEL_21;
              }
            }

            result = (v45)(v80, v6);
            v29 = j;
            v70[v41] |= v42;
            v7 = v73;
            v31 = __OFADD__(v72++, 1);
            a3 = v78;
            v30 = v68;
            if (v31)
            {
              goto LABEL_48;
            }

            if (!v29)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v45 = *v79;
LABEL_21:
            result = (v45)(v80, v6);
            v7 = v73;
            v30 = v68;
            v29 = j;
            if (!j)
            {
              goto LABEL_10;
            }
          }

LABEL_9:
          v32 = __clz(__rbit64(v29));
        }
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_1915F7A10(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = sub_19166B2D8();
  v8 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v9);
  v35 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF688, &qword_191672B00);
  result = sub_19166C088();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = (v8 + 32);
  v32 = v8 + 16;
  v30 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v33 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v34 = *(v8 + 72);
    (*(v8 + 16))(v35, v19 + v34 * (v16 | (v14 << 6)), v36);
    sub_1915F8244(&qword_1EADAF678, MEMORY[0x1E69696A8]);
    result = sub_19166B6B8();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = (*v31)(*(v11 + 48) + v23 * v34, v35, v36);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v30;
    v13 = v33;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v33 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1915F7D24(uint64_t a1)
{
  v2 = sub_19166B2D8();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v12 = sub_1915F8244(&qword_1EADAF678, MEMORY[0x1E69696A8]);
  result = MEMORY[0x193AFCB90](v11, v2, v12);
  v20 = result;
  if (v11)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);
    do
    {
      v15(v7, v17, v2);
      sub_1915F5BF4(v10, v7);
      (*(v14 - 8))(v10, v2);
      v17 += v18;
      --v11;
    }

    while (v11);
    return v20;
  }

  return result;
}

uint64_t sub_1915F7EAC(uint64_t a1)
{
  v2 = sub_19166B2D8();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = &v18 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_1915F5BF4(v11, v7);
      result = (*(v13 - 8))(v11, v2);
      v16 += v17;
      --v12;
    }

    while (v12);
  }

  return result;
}

void *sub_1915F8050@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 16))(&v6);
  if (!v2)
  {
    v5 = HIDWORD(v6);
    *a1 = v6;
    *(a1 + 4) = v5;
  }

  return result;
}

uint64_t type metadata accessor for AXCachedLocaleCharacterSupportMatrix(uint64_t a1)
{
  result = qword_1EADAF610;
  if (!qword_1EADAF610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1915F80F0(uint64_t a1)
{
  result = sub_19166B388();
  if (v2 <= 0x3F)
  {
    result = sub_19166AF68();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1915F8244(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_19166B2D8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AXAsyncTimer.__allocating_init(_:repeats:_:)(char a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v16 - v10;
  v12 = swift_allocObject();
  v13 = sub_19166BB58();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = a4;
  *(v14 + 40) = a2;
  *(v14 + 48) = a3;
  *(v14 + 56) = a1;
  *(v12 + 16) = sub_1915D42EC(0, 0, v11, &unk_191672B30, v14);
  return v12;
}