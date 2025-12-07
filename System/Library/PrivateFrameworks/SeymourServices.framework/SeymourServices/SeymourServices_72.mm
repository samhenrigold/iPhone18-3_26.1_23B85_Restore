uint64_t sub_227620454(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = sub_227663FA0();

  return MEMORY[0x2822009F8](sub_227620520, 0, 0);
}

uint64_t sub_227620520()
{
  v31 = v0;
  v1 = static Configuration.representativeSamples()();
  v0[9] = v1;
  sub_22766A770();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v29 = v0[7];
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 134218242;
    *(v7 + 4) = v1[2];

    *(v7 + 12) = 2080;
    v0[2] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF958, &qword_22768E0B0);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v30);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v2, v3, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v29, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = v1[2];
  v0[10] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v0[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {

    v26 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v0[9];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = v20 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v22 = (2 * v16) | 1;
  v23 = swift_allocObject();
  v0[13] = v23;
  v23[2] = v20;
  v23[3] = v21;
  v23[4] = 0;
  v23[5] = v22;
  v24 = *(v18 + v19);
  v0[14] = v24;
  swift_bridgeObjectRetain_n();
  if (v24)
  {

    v25 = swift_task_alloc();
    v0[15] = v25;
    *v25 = v0;
    v25[1] = sub_227620968;

    return sub_22708E1D4(sub_22708E1D4, sub_227646340, v23);
  }

  v27 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51008], v27);
  swift_willThrow();

  v26 = v0[1];
LABEL_16:

  return v26();
}

uint64_t sub_227620968()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_227646EF8;
  }

  else
  {
    v2 = sub_227620A84;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_227620A84()
{
  v1 = v0[12];
  v2 = v0[10];

  if (v1 >= v2)
  {

    v18 = v0[1];
    goto LABEL_19;
  }

  v3 = v0[12];
  v4 = v0[3];
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  v7 = (v6 >> 63) ^ 0x8000000000000000;
  if (!v5)
  {
    v7 = v6;
  }

  v0[12] = v7;
  if (v5)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v0[10])
  {
    v6 = v0[10];
  }

  if (v6 < v3)
  {
    goto LABEL_23;
  }

  if (v3 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = v0[9];
  v9 = *(v8 + 16);
  if (v9 < v3 || v9 < v6)
  {
    goto LABEL_25;
  }

  v11 = v0[11];
  v12 = v0[4];
  v13 = v8 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v14 = (2 * v6) | 1;
  v15 = swift_allocObject();
  v0[13] = v15;
  v15[2] = v8;
  v15[3] = v13;
  v15[4] = v3;
  v15[5] = v14;
  v16 = *(v12 + v11);
  v0[14] = v16;
  swift_bridgeObjectRetain_n();
  if (v16)
  {

    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_227620968;

    sub_22708E1D4(sub_22708E1D4, sub_227646340, v15);
    return;
  }

  v19 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51008], v19);
  swift_willThrow();

  v18 = v0[1];
LABEL_19:

  v18();
}

uint64_t sub_227620D8C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = sub_227663610();

  return MEMORY[0x2822009F8](sub_227620E58, 0, 0);
}

uint64_t sub_227620E58()
{
  v31 = v0;
  v1 = static Contributor.representativeSamples()();
  v0[9] = v1;
  sub_22766A770();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v29 = v0[7];
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 134218242;
    *(v7 + 4) = v1[2];

    *(v7 + 12) = 2080;
    v0[2] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF960, &qword_22768E0B8);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v30);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v2, v3, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v29, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = v1[2];
  v0[10] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v0[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {

    v26 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v0[9];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = v20 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v22 = (2 * v16) | 1;
  v23 = swift_allocObject();
  v0[13] = v23;
  v23[2] = v20;
  v23[3] = v21;
  v23[4] = 0;
  v23[5] = v22;
  v24 = *(v18 + v19);
  v0[14] = v24;
  swift_bridgeObjectRetain_n();
  if (v24)
  {

    v25 = swift_task_alloc();
    v0[15] = v25;
    *v25 = v0;
    v25[1] = sub_2276212A0;

    return sub_22708E1D4(sub_22708E1D4, sub_22764636C, v23);
  }

  v27 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51008], v27);
  swift_willThrow();

  v26 = v0[1];
LABEL_16:

  return v26();
}

uint64_t sub_2276212A0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_227646EF8;
  }

  else
  {
    v2 = sub_2276213BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_2276213BC()
{
  v1 = v0[12];
  v2 = v0[10];

  if (v1 >= v2)
  {

    v18 = v0[1];
    goto LABEL_19;
  }

  v3 = v0[12];
  v4 = v0[3];
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  v7 = (v6 >> 63) ^ 0x8000000000000000;
  if (!v5)
  {
    v7 = v6;
  }

  v0[12] = v7;
  if (v5)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v0[10])
  {
    v6 = v0[10];
  }

  if (v6 < v3)
  {
    goto LABEL_23;
  }

  if (v3 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = v0[9];
  v9 = *(v8 + 16);
  if (v9 < v3 || v9 < v6)
  {
    goto LABEL_25;
  }

  v11 = v0[11];
  v12 = v0[4];
  v13 = v8 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v14 = (2 * v6) | 1;
  v15 = swift_allocObject();
  v0[13] = v15;
  v15[2] = v8;
  v15[3] = v13;
  v15[4] = v3;
  v15[5] = v14;
  v16 = *(v12 + v11);
  v0[14] = v16;
  swift_bridgeObjectRetain_n();
  if (v16)
  {

    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_2276212A0;

    sub_22708E1D4(sub_22708E1D4, sub_22764636C, v15);
    return;
  }

  v19 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51008], v19);
  swift_willThrow();

  v18 = v0[1];
LABEL_19:

  v18();
}

uint64_t sub_2276216C4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227621784, 0, 0);
}

uint64_t sub_227621784(uint64_t a1)
{
  v30 = v1;
  v2 = sub_22706F134(a1);
  v1[8] = v2;
  sub_22766A770();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v1[6];
    v28 = v1[7];
    v6 = v1[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v7 = 134218242;
    *(v7 + 4) = *(v2 + 16);

    *(v7 + 12) = 2080;
    v1[2] = &type metadata for ContributorIdentifier;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF968, &qword_22768E0C0);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v29);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v3, v4, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v28, v6);
  }

  else
  {
    v14 = v1[6];
    v13 = v1[7];
    v15 = v1[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v1[3];
  v17 = *(v2 + 16);
  v1[9] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v1[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v1[10] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {

    v25 = v1[1];
    goto LABEL_16;
  }

  v1[11] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v1[8];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = (2 * v16) | 1;
  v22 = swift_allocObject();
  v1[12] = v22;
  v22[2] = v20;
  v22[3] = v20 + 32;
  v22[4] = 0;
  v22[5] = v21;
  v23 = *(v18 + v19);
  v1[13] = v23;
  swift_bridgeObjectRetain_n();
  if (v23)
  {

    v24 = swift_task_alloc();
    v1[14] = v24;
    *v24 = v1;
    v24[1] = sub_227621BA0;

    return sub_22708E1D4(sub_22708E1D4, sub_227646398, v22);
  }

  v26 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277D51008], v26);
  swift_willThrow();

  v25 = v1[1];
LABEL_16:

  return v25();
}

uint64_t sub_227621BA0()
{
  *(*v1 + 120) = v0;

  if (v0)
  {

    v2 = sub_227646EFC;
  }

  else
  {
    v2 = sub_227621CBC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_227621CBC()
{
  v1 = v0[11];
  v2 = v0[9];

  if (v1 >= v2)
  {

    v17 = v0[1];
    goto LABEL_19;
  }

  v3 = v0[11];
  v4 = v0[3];
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  v7 = (v6 >> 63) ^ 0x8000000000000000;
  if (!v5)
  {
    v7 = v6;
  }

  v0[11] = v7;
  if (v5)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v0[9])
  {
    v6 = v0[9];
  }

  if (v6 < v3)
  {
    goto LABEL_23;
  }

  if (v3 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = v0[8];
  v9 = *(v8 + 16);
  if (v9 < v3 || v9 < v6)
  {
    goto LABEL_25;
  }

  v11 = v0[10];
  v12 = v0[4];
  v13 = (2 * v6) | 1;
  v14 = swift_allocObject();
  v0[12] = v14;
  v14[2] = v8;
  v14[3] = v8 + 32;
  v14[4] = v3;
  v14[5] = v13;
  v15 = *(v12 + v11);
  v0[13] = v15;
  swift_bridgeObjectRetain_n();
  if (v15)
  {

    v16 = swift_task_alloc();
    v0[14] = v16;
    *v16 = v0;
    v16[1] = sub_227621BA0;

    sub_22708E1D4(sub_22708E1D4, sub_227646398, v14);
    return;
  }

  v18 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51008], v18);
  swift_willThrow();

  v17 = v0[1];
LABEL_19:

  v17();
}

uint64_t sub_227621F8C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for DirtySyncZone(0);

  return MEMORY[0x2822009F8](sub_227622058, 0, 0);
}

uint64_t sub_227622058()
{
  v31 = v0;
  v1 = sub_227399BC0();
  v0[9] = v1;
  sub_22766A770();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v29 = v0[7];
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 134218242;
    *(v7 + 4) = *(v1 + 16);

    *(v7 + 12) = 2080;
    v0[2] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF970, &qword_22768E0C8);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v30);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v2, v3, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v29, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = *(v1 + 16);
  v0[10] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v0[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {

    v26 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v0[9];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = v20 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v22 = (2 * v16) | 1;
  v23 = swift_allocObject();
  v0[13] = v23;
  v23[2] = v20;
  v23[3] = v21;
  v23[4] = 0;
  v23[5] = v22;
  v24 = *(v18 + v19);
  v0[14] = v24;
  swift_bridgeObjectRetain_n();
  if (v24)
  {

    v25 = swift_task_alloc();
    v0[15] = v25;
    *v25 = v0;
    v25[1] = sub_2276224A0;

    return sub_22708E1D4(sub_22708E1D4, sub_2276463C4, v23);
  }

  v27 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51008], v27);
  swift_willThrow();

  v26 = v0[1];
LABEL_16:

  return v26();
}

uint64_t sub_2276224A0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_227646EF8;
  }

  else
  {
    v2 = sub_2276225BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_2276225BC()
{
  v1 = v0[12];
  v2 = v0[10];

  if (v1 >= v2)
  {

    v18 = v0[1];
    goto LABEL_19;
  }

  v3 = v0[12];
  v4 = v0[3];
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  v7 = (v6 >> 63) ^ 0x8000000000000000;
  if (!v5)
  {
    v7 = v6;
  }

  v0[12] = v7;
  if (v5)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v0[10])
  {
    v6 = v0[10];
  }

  if (v6 < v3)
  {
    goto LABEL_23;
  }

  if (v3 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = v0[9];
  v9 = *(v8 + 16);
  if (v9 < v3 || v9 < v6)
  {
    goto LABEL_25;
  }

  v11 = v0[11];
  v12 = v0[4];
  v13 = v8 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v14 = (2 * v6) | 1;
  v15 = swift_allocObject();
  v0[13] = v15;
  v15[2] = v8;
  v15[3] = v13;
  v15[4] = v3;
  v15[5] = v14;
  v16 = *(v12 + v11);
  v0[14] = v16;
  swift_bridgeObjectRetain_n();
  if (v16)
  {

    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_2276224A0;

    sub_22708E1D4(sub_22708E1D4, sub_2276463C4, v15);
    return;
  }

  v19 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51008], v19);
  swift_willThrow();

  v18 = v0[1];
LABEL_19:

  v18();
}

uint64_t sub_2276228C4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = sub_2276646D0();

  return MEMORY[0x2822009F8](sub_227622990, 0, 0);
}

uint64_t sub_227622990()
{
  v31 = v0;
  v1 = static EngagementBadge.representativeSamples()();
  v0[9] = v1;
  sub_22766A770();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v29 = v0[7];
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 134218242;
    *(v7 + 4) = *(v1 + 16);

    *(v7 + 12) = 2080;
    v0[2] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF978, &qword_22768E0D0);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v30);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v2, v3, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v29, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = *(v1 + 16);
  v0[10] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v0[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {

    v26 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v0[9];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = v20 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v22 = (2 * v16) | 1;
  v23 = swift_allocObject();
  v0[13] = v23;
  v23[2] = v20;
  v23[3] = v21;
  v23[4] = 0;
  v23[5] = v22;
  v24 = *(v18 + v19);
  v0[14] = v24;
  swift_bridgeObjectRetain_n();
  if (v24)
  {

    v25 = swift_task_alloc();
    v0[15] = v25;
    *v25 = v0;
    v25[1] = sub_227622DD8;

    return sub_22708E1D4(sub_22708E1D4, sub_2276463F0, v23);
  }

  v27 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51008], v27);
  swift_willThrow();

  v26 = v0[1];
LABEL_16:

  return v26();
}

uint64_t sub_227622DD8()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_227646EF8;
  }

  else
  {
    v2 = sub_227622EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_227622EF4()
{
  v1 = v0[12];
  v2 = v0[10];

  if (v1 >= v2)
  {

    v18 = v0[1];
    goto LABEL_19;
  }

  v3 = v0[12];
  v4 = v0[3];
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  v7 = (v6 >> 63) ^ 0x8000000000000000;
  if (!v5)
  {
    v7 = v6;
  }

  v0[12] = v7;
  if (v5)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v0[10])
  {
    v6 = v0[10];
  }

  if (v6 < v3)
  {
    goto LABEL_23;
  }

  if (v3 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = v0[9];
  v9 = *(v8 + 16);
  if (v9 < v3 || v9 < v6)
  {
    goto LABEL_25;
  }

  v11 = v0[11];
  v12 = v0[4];
  v13 = v8 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v14 = (2 * v6) | 1;
  v15 = swift_allocObject();
  v0[13] = v15;
  v15[2] = v8;
  v15[3] = v13;
  v15[4] = v3;
  v15[5] = v14;
  v16 = *(v12 + v11);
  v0[14] = v16;
  swift_bridgeObjectRetain_n();
  if (v16)
  {

    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_227622DD8;

    sub_22708E1D4(sub_22708E1D4, sub_2276463F0, v15);
    return;
  }

  v19 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51008], v19);
  swift_willThrow();

  v18 = v0[1];
LABEL_19:

  v18();
}

uint64_t sub_2276231FC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = sub_227669580();

  return MEMORY[0x2822009F8](sub_2276232C8, 0, 0);
}

uint64_t sub_2276232C8()
{
  v31 = v0;
  v1 = static Equipment.representativeSamples()();
  v0[9] = v1;
  sub_22766A770();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v29 = v0[7];
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 134218242;
    *(v7 + 4) = v1[2];

    *(v7 + 12) = 2080;
    v0[2] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF980, &qword_22768E0D8);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v30);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v2, v3, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v29, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = v1[2];
  v0[10] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v0[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {

    v26 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v0[9];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = v20 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v22 = (2 * v16) | 1;
  v23 = swift_allocObject();
  v0[13] = v23;
  v23[2] = v20;
  v23[3] = v21;
  v23[4] = 0;
  v23[5] = v22;
  v24 = *(v18 + v19);
  v0[14] = v24;
  swift_bridgeObjectRetain_n();
  if (v24)
  {

    v25 = swift_task_alloc();
    v0[15] = v25;
    *v25 = v0;
    v25[1] = sub_227623710;

    return sub_22708E1D4(sub_22708E1D4, sub_22764641C, v23);
  }

  v27 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51008], v27);
  swift_willThrow();

  v26 = v0[1];
LABEL_16:

  return v26();
}

uint64_t sub_227623710()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_227646EF8;
  }

  else
  {
    v2 = sub_22762382C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_22762382C()
{
  v1 = v0[12];
  v2 = v0[10];

  if (v1 >= v2)
  {

    v18 = v0[1];
    goto LABEL_19;
  }

  v3 = v0[12];
  v4 = v0[3];
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  v7 = (v6 >> 63) ^ 0x8000000000000000;
  if (!v5)
  {
    v7 = v6;
  }

  v0[12] = v7;
  if (v5)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v0[10])
  {
    v6 = v0[10];
  }

  if (v6 < v3)
  {
    goto LABEL_23;
  }

  if (v3 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = v0[9];
  v9 = *(v8 + 16);
  if (v9 < v3 || v9 < v6)
  {
    goto LABEL_25;
  }

  v11 = v0[11];
  v12 = v0[4];
  v13 = v8 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v14 = (2 * v6) | 1;
  v15 = swift_allocObject();
  v0[13] = v15;
  v15[2] = v8;
  v15[3] = v13;
  v15[4] = v3;
  v15[5] = v14;
  v16 = *(v12 + v11);
  v0[14] = v16;
  swift_bridgeObjectRetain_n();
  if (v16)
  {

    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_227623710;

    sub_22708E1D4(sub_22708E1D4, sub_22764641C, v15);
    return;
  }

  v19 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51008], v19);
  swift_willThrow();

  v18 = v0[1];
LABEL_19:

  v18();
}

uint64_t sub_227623B34(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227623BF4, 0, 0);
}

uint64_t sub_227623BF4(uint64_t a1)
{
  v30 = v1;
  v2 = sub_2272BA1AC(a1);
  v1[8] = v2;
  sub_22766A770();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v1[6];
    v28 = v1[7];
    v6 = v1[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v7 = 134218242;
    *(v7 + 4) = *(v2 + 16);

    *(v7 + 12) = 2080;
    v1[2] = &type metadata for EquipmentIdentifier;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF988, &qword_22768E0E0);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v29);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v3, v4, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v28, v6);
  }

  else
  {
    v14 = v1[6];
    v13 = v1[7];
    v15 = v1[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v1[3];
  v17 = *(v2 + 16);
  v1[9] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v1[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v1[10] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {

    v25 = v1[1];
    goto LABEL_16;
  }

  v1[11] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v1[8];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = (2 * v16) | 1;
  v22 = swift_allocObject();
  v1[12] = v22;
  v22[2] = v20;
  v22[3] = v20 + 32;
  v22[4] = 0;
  v22[5] = v21;
  v23 = *(v18 + v19);
  v1[13] = v23;
  swift_bridgeObjectRetain_n();
  if (v23)
  {

    v24 = swift_task_alloc();
    v1[14] = v24;
    *v24 = v1;
    v24[1] = sub_227624010;

    return sub_22708E1D4(sub_22708E1D4, sub_227646448, v22);
  }

  v26 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277D51008], v26);
  swift_willThrow();

  v25 = v1[1];
LABEL_16:

  return v25();
}

uint64_t sub_227624010()
{
  *(*v1 + 120) = v0;

  if (v0)
  {

    v2 = sub_227646EFC;
  }

  else
  {
    v2 = sub_22762412C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_22762412C()
{
  v1 = v0[11];
  v2 = v0[9];

  if (v1 >= v2)
  {

    v17 = v0[1];
    goto LABEL_19;
  }

  v3 = v0[11];
  v4 = v0[3];
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  v7 = (v6 >> 63) ^ 0x8000000000000000;
  if (!v5)
  {
    v7 = v6;
  }

  v0[11] = v7;
  if (v5)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v0[9])
  {
    v6 = v0[9];
  }

  if (v6 < v3)
  {
    goto LABEL_23;
  }

  if (v3 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = v0[8];
  v9 = *(v8 + 16);
  if (v9 < v3 || v9 < v6)
  {
    goto LABEL_25;
  }

  v11 = v0[10];
  v12 = v0[4];
  v13 = (2 * v6) | 1;
  v14 = swift_allocObject();
  v0[12] = v14;
  v14[2] = v8;
  v14[3] = v8 + 32;
  v14[4] = v3;
  v14[5] = v13;
  v15 = *(v12 + v11);
  v0[13] = v15;
  swift_bridgeObjectRetain_n();
  if (v15)
  {

    v16 = swift_task_alloc();
    v0[14] = v16;
    *v16 = v0;
    v16[1] = sub_227624010;

    sub_22708E1D4(sub_22708E1D4, sub_227646448, v14);
    return;
  }

  v18 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51008], v18);
  swift_willThrow();

  v17 = v0[1];
LABEL_19:

  v17();
}

uint64_t sub_2276243FC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = sub_227665100();

  return MEMORY[0x2822009F8](sub_2276244C8, 0, 0);
}

uint64_t sub_2276244C8()
{
  v31 = v0;
  v1 = static EstimatedCalories.representativeSamples()();
  v0[9] = v1;
  sub_22766A770();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v29 = v0[7];
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 134218242;
    *(v7 + 4) = v1[2];

    *(v7 + 12) = 2080;
    v0[2] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF990, &qword_22768E0E8);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v30);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v2, v3, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v29, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = v1[2];
  v0[10] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v0[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {

    v26 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v0[9];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = v20 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v22 = (2 * v16) | 1;
  v23 = swift_allocObject();
  v0[13] = v23;
  v23[2] = v20;
  v23[3] = v21;
  v23[4] = 0;
  v23[5] = v22;
  v24 = *(v18 + v19);
  v0[14] = v24;
  swift_bridgeObjectRetain_n();
  if (v24)
  {

    v25 = swift_task_alloc();
    v0[15] = v25;
    *v25 = v0;
    v25[1] = sub_227624910;

    return sub_22708E1D4(sub_22708E1D4, sub_227646474, v23);
  }

  v27 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51008], v27);
  swift_willThrow();

  v26 = v0[1];
LABEL_16:

  return v26();
}

uint64_t sub_227624910()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_227646EF8;
  }

  else
  {
    v2 = sub_227624A2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_227624A2C()
{
  v1 = v0[12];
  v2 = v0[10];

  if (v1 >= v2)
  {

    v18 = v0[1];
    goto LABEL_19;
  }

  v3 = v0[12];
  v4 = v0[3];
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  v7 = (v6 >> 63) ^ 0x8000000000000000;
  if (!v5)
  {
    v7 = v6;
  }

  v0[12] = v7;
  if (v5)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v0[10])
  {
    v6 = v0[10];
  }

  if (v6 < v3)
  {
    goto LABEL_23;
  }

  if (v3 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = v0[9];
  v9 = *(v8 + 16);
  if (v9 < v3 || v9 < v6)
  {
    goto LABEL_25;
  }

  v11 = v0[11];
  v12 = v0[4];
  v13 = v8 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v14 = (2 * v6) | 1;
  v15 = swift_allocObject();
  v0[13] = v15;
  v15[2] = v8;
  v15[3] = v13;
  v15[4] = v3;
  v15[5] = v14;
  v16 = *(v12 + v11);
  v0[14] = v16;
  swift_bridgeObjectRetain_n();
  if (v16)
  {

    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_227624910;

    sub_22708E1D4(sub_22708E1D4, sub_227646474, v15);
    return;
  }

  v19 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51008], v19);
  swift_willThrow();

  v18 = v0[1];
LABEL_19:

  v18();
}

uint64_t sub_227624D34(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227624DF4, 0, 0);
}

uint64_t sub_227624DF4()
{
  v29 = v0;
  v1 = sub_226FC4E64();
  v0[8] = v1;
  sub_22766A770();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[6];
    v27 = v0[7];
    v5 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v28 = v7;
    *v6 = 134218242;
    *(v6 + 4) = *(v1 + 16);

    *(v6 + 12) = 2080;
    v0[2] = &type metadata for HealthKitActivityType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF998, &qword_22768E0F0);
    v8 = sub_22766C060();
    v10 = sub_226E97AE8(v8, v9, &v28);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_226E8E000, v2, v3, "Inserting %ld samples for type %s", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);

    result = (*(v4 + 8))(v27, v5);
  }

  else
  {
    v13 = v0[6];
    v12 = v0[7];
    v14 = v0[5];

    result = (*(v13 + 8))(v12, v14);
  }

  v15 = v0[3];
  v16 = *(v1 + 16);
  v0[9] = v16;
  if (!v15)
  {
    __break(1u);
    goto LABEL_20;
  }

  v17 = v0[4];
  v18 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[10] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v15 < 1 || !v16)
  {

    v24 = v0[1];
    goto LABEL_16;
  }

  v0[11] = v15;
  if (v15 >= v16)
  {
    v15 = v16;
  }

  v19 = v0[8];
  if (*(v19 + 16) < v15)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v20 = (2 * v15) | 1;
  v21 = swift_allocObject();
  v0[12] = v21;
  v21[2] = v19;
  v21[3] = v19 + 32;
  v21[4] = 0;
  v21[5] = v20;
  v22 = *(v17 + v18);
  v0[13] = v22;
  swift_bridgeObjectRetain_n();
  if (v22)
  {

    v23 = swift_task_alloc();
    v0[14] = v23;
    *v23 = v0;
    v23[1] = sub_227625210;

    return sub_22708E1D4(sub_22708E1D4, sub_2276464A0, v21);
  }

  v25 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D51008], v25);
  swift_willThrow();

  v24 = v0[1];
LABEL_16:

  return v24();
}

uint64_t sub_227625210()
{
  *(*v1 + 120) = v0;

  if (v0)
  {

    v2 = sub_227646EFC;
  }

  else
  {
    v2 = sub_22762532C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_22762532C()
{
  v1 = v0[11];
  v2 = v0[9];

  if (v1 >= v2)
  {

    v17 = v0[1];
    goto LABEL_19;
  }

  v3 = v0[11];
  v4 = v0[3];
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  v7 = (v6 >> 63) ^ 0x8000000000000000;
  if (!v5)
  {
    v7 = v6;
  }

  v0[11] = v7;
  if (v5)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v0[9])
  {
    v6 = v0[9];
  }

  if (v6 < v3)
  {
    goto LABEL_23;
  }

  if (v3 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = v0[8];
  v9 = *(v8 + 16);
  if (v9 < v3 || v9 < v6)
  {
    goto LABEL_25;
  }

  v11 = v0[10];
  v12 = v0[4];
  v13 = (2 * v6) | 1;
  v14 = swift_allocObject();
  v0[12] = v14;
  v14[2] = v8;
  v14[3] = v8 + 32;
  v14[4] = v3;
  v14[5] = v13;
  v15 = *(v12 + v11);
  v0[13] = v15;
  swift_bridgeObjectRetain_n();
  if (v15)
  {

    v16 = swift_task_alloc();
    v0[14] = v16;
    *v16 = v0;
    v16[1] = sub_227625210;

    sub_22708E1D4(sub_22708E1D4, sub_2276464A0, v14);
    return;
  }

  v18 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51008], v18);
  swift_willThrow();

  v17 = v0[1];
LABEL_19:

  v17();
}

uint64_t sub_2276255FC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = sub_227666BF0();

  return MEMORY[0x2822009F8](sub_2276256C8, 0, 0);
}

uint64_t sub_2276256C8()
{
  v31 = v0;
  v1 = static HealthKitMindfulSession.representativeSamples()();
  v0[9] = v1;
  sub_22766A770();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v29 = v0[7];
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 134218242;
    *(v7 + 4) = v1[2];

    *(v7 + 12) = 2080;
    v0[2] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF9A0, &qword_22768E0F8);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v30);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v2, v3, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v29, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = v1[2];
  v0[10] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v0[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {

    v26 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v0[9];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = v20 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v22 = (2 * v16) | 1;
  v23 = swift_allocObject();
  v0[13] = v23;
  v23[2] = v20;
  v23[3] = v21;
  v23[4] = 0;
  v23[5] = v22;
  v24 = *(v18 + v19);
  v0[14] = v24;
  swift_bridgeObjectRetain_n();
  if (v24)
  {

    v25 = swift_task_alloc();
    v0[15] = v25;
    *v25 = v0;
    v25[1] = sub_227625B10;

    return sub_22708E1D4(sub_22708E1D4, sub_2276464CC, v23);
  }

  v27 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51008], v27);
  swift_willThrow();

  v26 = v0[1];
LABEL_16:

  return v26();
}

uint64_t sub_227625B10()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_227646EF8;
  }

  else
  {
    v2 = sub_227625C2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_227625C2C()
{
  v1 = v0[12];
  v2 = v0[10];

  if (v1 >= v2)
  {

    v18 = v0[1];
    goto LABEL_19;
  }

  v3 = v0[12];
  v4 = v0[3];
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  v7 = (v6 >> 63) ^ 0x8000000000000000;
  if (!v5)
  {
    v7 = v6;
  }

  v0[12] = v7;
  if (v5)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v0[10])
  {
    v6 = v0[10];
  }

  if (v6 < v3)
  {
    goto LABEL_23;
  }

  if (v3 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = v0[9];
  v9 = *(v8 + 16);
  if (v9 < v3 || v9 < v6)
  {
    goto LABEL_25;
  }

  v11 = v0[11];
  v12 = v0[4];
  v13 = v8 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v14 = (2 * v6) | 1;
  v15 = swift_allocObject();
  v0[13] = v15;
  v15[2] = v8;
  v15[3] = v13;
  v15[4] = v3;
  v15[5] = v14;
  v16 = *(v12 + v11);
  v0[14] = v16;
  swift_bridgeObjectRetain_n();
  if (v16)
  {

    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_227625B10;

    sub_22708E1D4(sub_22708E1D4, sub_2276464CC, v15);
    return;
  }

  v19 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51008], v19);
  swift_willThrow();

  v18 = v0[1];
LABEL_19:

  v18();
}

uint64_t sub_227625F34(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = sub_227668E30();

  return MEMORY[0x2822009F8](sub_227626000, 0, 0);
}

uint64_t sub_227626000()
{
  v31 = v0;
  v1 = static HealthKitStandaloneMindfulSessionJob.representativeSamples()();
  v0[9] = v1;
  sub_22766A770();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v29 = v0[7];
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 134218242;
    *(v7 + 4) = *(v1 + 16);

    *(v7 + 12) = 2080;
    v0[2] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF9A8, &qword_22768E100);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v30);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v2, v3, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v29, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = *(v1 + 16);
  v0[10] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v0[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {

    v26 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v0[9];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = v20 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v22 = (2 * v16) | 1;
  v23 = swift_allocObject();
  v0[13] = v23;
  v23[2] = v20;
  v23[3] = v21;
  v23[4] = 0;
  v23[5] = v22;
  v24 = *(v18 + v19);
  v0[14] = v24;
  swift_bridgeObjectRetain_n();
  if (v24)
  {

    v25 = swift_task_alloc();
    v0[15] = v25;
    *v25 = v0;
    v25[1] = sub_227626448;

    return sub_22708E1D4(sub_22708E1D4, sub_2276464F8, v23);
  }

  v27 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51008], v27);
  swift_willThrow();

  v26 = v0[1];
LABEL_16:

  return v26();
}

uint64_t sub_227626448()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_227646EF8;
  }

  else
  {
    v2 = sub_227626564;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_227626564()
{
  v1 = v0[12];
  v2 = v0[10];

  if (v1 >= v2)
  {

    v18 = v0[1];
    goto LABEL_19;
  }

  v3 = v0[12];
  v4 = v0[3];
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  v7 = (v6 >> 63) ^ 0x8000000000000000;
  if (!v5)
  {
    v7 = v6;
  }

  v0[12] = v7;
  if (v5)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v0[10])
  {
    v6 = v0[10];
  }

  if (v6 < v3)
  {
    goto LABEL_23;
  }

  if (v3 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = v0[9];
  v9 = *(v8 + 16);
  if (v9 < v3 || v9 < v6)
  {
    goto LABEL_25;
  }

  v11 = v0[11];
  v12 = v0[4];
  v13 = v8 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v14 = (2 * v6) | 1;
  v15 = swift_allocObject();
  v0[13] = v15;
  v15[2] = v8;
  v15[3] = v13;
  v15[4] = v3;
  v15[5] = v14;
  v16 = *(v12 + v11);
  v0[14] = v16;
  swift_bridgeObjectRetain_n();
  if (v16)
  {

    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_227626448;

    sub_22708E1D4(sub_22708E1D4, sub_2276464F8, v15);
    return;
  }

  v19 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51008], v19);
  swift_willThrow();

  v18 = v0[1];
LABEL_19:

  v18();
}

uint64_t sub_22762686C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = sub_2276674C0();

  return MEMORY[0x2822009F8](sub_227626938, 0, 0);
}

uint64_t sub_227626938()
{
  v31 = v0;
  v1 = static HealthKitSessionReference.representativeSamples()();
  v0[9] = v1;
  sub_22766A770();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v29 = v0[7];
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 134218242;
    *(v7 + 4) = v1[2];

    *(v7 + 12) = 2080;
    v0[2] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF9B0, &qword_22768E108);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v30);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v2, v3, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v29, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = v1[2];
  v0[10] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v0[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {

    v26 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v0[9];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = v20 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v22 = (2 * v16) | 1;
  v23 = swift_allocObject();
  v0[13] = v23;
  v23[2] = v20;
  v23[3] = v21;
  v23[4] = 0;
  v23[5] = v22;
  v24 = *(v18 + v19);
  v0[14] = v24;
  swift_bridgeObjectRetain_n();
  if (v24)
  {

    v25 = swift_task_alloc();
    v0[15] = v25;
    *v25 = v0;
    v25[1] = sub_227626D80;

    return sub_22708E1D4(sub_22708E1D4, sub_227646524, v23);
  }

  v27 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51008], v27);
  swift_willThrow();

  v26 = v0[1];
LABEL_16:

  return v26();
}

uint64_t sub_227626D80()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_227646EF8;
  }

  else
  {
    v2 = sub_227626E9C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_227626E9C()
{
  v1 = v0[12];
  v2 = v0[10];

  if (v1 >= v2)
  {

    v18 = v0[1];
    goto LABEL_19;
  }

  v3 = v0[12];
  v4 = v0[3];
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  v7 = (v6 >> 63) ^ 0x8000000000000000;
  if (!v5)
  {
    v7 = v6;
  }

  v0[12] = v7;
  if (v5)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v0[10])
  {
    v6 = v0[10];
  }

  if (v6 < v3)
  {
    goto LABEL_23;
  }

  if (v3 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = v0[9];
  v9 = *(v8 + 16);
  if (v9 < v3 || v9 < v6)
  {
    goto LABEL_25;
  }

  v11 = v0[11];
  v12 = v0[4];
  v13 = v8 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v14 = (2 * v6) | 1;
  v15 = swift_allocObject();
  v0[13] = v15;
  v15[2] = v8;
  v15[3] = v13;
  v15[4] = v3;
  v15[5] = v14;
  v16 = *(v12 + v11);
  v0[14] = v16;
  swift_bridgeObjectRetain_n();
  if (v16)
  {

    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_227626D80;

    sub_22708E1D4(sub_22708E1D4, sub_227646524, v15);
    return;
  }

  v19 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51008], v19);
  swift_willThrow();

  v18 = v0[1];
LABEL_19:

  v18();
}

uint64_t sub_2276271A4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = sub_227668390();

  return MEMORY[0x2822009F8](sub_227627270, 0, 0);
}

uint64_t sub_227627270()
{
  v31 = v0;
  v1 = static HealthKitStandaloneWorkoutJob.representativeSamples()();
  v0[9] = v1;
  sub_22766A770();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v29 = v0[7];
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 134218242;
    *(v7 + 4) = v1[2];

    *(v7 + 12) = 2080;
    v0[2] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF9B8, &qword_22768E110);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v30);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v2, v3, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v29, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = v1[2];
  v0[10] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v0[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {

    v26 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v0[9];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = v20 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v22 = (2 * v16) | 1;
  v23 = swift_allocObject();
  v0[13] = v23;
  v23[2] = v20;
  v23[3] = v21;
  v23[4] = 0;
  v23[5] = v22;
  v24 = *(v18 + v19);
  v0[14] = v24;
  swift_bridgeObjectRetain_n();
  if (v24)
  {

    v25 = swift_task_alloc();
    v0[15] = v25;
    *v25 = v0;
    v25[1] = sub_2276276B8;

    return sub_22708E1D4(sub_22708E1D4, sub_227646550, v23);
  }

  v27 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51008], v27);
  swift_willThrow();

  v26 = v0[1];
LABEL_16:

  return v26();
}

uint64_t sub_2276276B8()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_227646EF8;
  }

  else
  {
    v2 = sub_2276277D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_2276277D4()
{
  v1 = v0[12];
  v2 = v0[10];

  if (v1 >= v2)
  {

    v18 = v0[1];
    goto LABEL_19;
  }

  v3 = v0[12];
  v4 = v0[3];
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  v7 = (v6 >> 63) ^ 0x8000000000000000;
  if (!v5)
  {
    v7 = v6;
  }

  v0[12] = v7;
  if (v5)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v0[10])
  {
    v6 = v0[10];
  }

  if (v6 < v3)
  {
    goto LABEL_23;
  }

  if (v3 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = v0[9];
  v9 = *(v8 + 16);
  if (v9 < v3 || v9 < v6)
  {
    goto LABEL_25;
  }

  v11 = v0[11];
  v12 = v0[4];
  v13 = v8 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v14 = (2 * v6) | 1;
  v15 = swift_allocObject();
  v0[13] = v15;
  v15[2] = v8;
  v15[3] = v13;
  v15[4] = v3;
  v15[5] = v14;
  v16 = *(v12 + v11);
  v0[14] = v16;
  swift_bridgeObjectRetain_n();
  if (v16)
  {

    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_2276276B8;

    sub_22708E1D4(sub_22708E1D4, sub_227646550, v15);
    return;
  }

  v19 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51008], v19);
  swift_willThrow();

  v18 = v0[1];
LABEL_19:

  v18();
}

uint64_t sub_227627ADC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = sub_227664CA0();

  return MEMORY[0x2822009F8](sub_227627BA8, 0, 0);
}

uint64_t sub_227627BA8()
{
  v31 = v0;
  v1 = static HealthKitWorkout.representativeSamples()();
  v0[9] = v1;
  sub_22766A770();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v29 = v0[7];
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 134218242;
    *(v7 + 4) = v1[2];

    *(v7 + 12) = 2080;
    v0[2] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF9C0, &qword_22768E118);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v30);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v2, v3, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v29, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = v1[2];
  v0[10] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v0[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {

    v26 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v0[9];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = v20 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v22 = (2 * v16) | 1;
  v23 = swift_allocObject();
  v0[13] = v23;
  v23[2] = v20;
  v23[3] = v21;
  v23[4] = 0;
  v23[5] = v22;
  v24 = *(v18 + v19);
  v0[14] = v24;
  swift_bridgeObjectRetain_n();
  if (v24)
  {

    v25 = swift_task_alloc();
    v0[15] = v25;
    *v25 = v0;
    v25[1] = sub_227627FF0;

    return sub_22708E1D4(sub_22708E1D4, sub_22764657C, v23);
  }

  v27 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51008], v27);
  swift_willThrow();

  v26 = v0[1];
LABEL_16:

  return v26();
}

uint64_t sub_227627FF0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_227646EF8;
  }

  else
  {
    v2 = sub_22762810C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_22762810C()
{
  v1 = v0[12];
  v2 = v0[10];

  if (v1 >= v2)
  {

    v18 = v0[1];
    goto LABEL_19;
  }

  v3 = v0[12];
  v4 = v0[3];
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  v7 = (v6 >> 63) ^ 0x8000000000000000;
  if (!v5)
  {
    v7 = v6;
  }

  v0[12] = v7;
  if (v5)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v0[10])
  {
    v6 = v0[10];
  }

  if (v6 < v3)
  {
    goto LABEL_23;
  }

  if (v3 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = v0[9];
  v9 = *(v8 + 16);
  if (v9 < v3 || v9 < v6)
  {
    goto LABEL_25;
  }

  v11 = v0[11];
  v12 = v0[4];
  v13 = v8 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v14 = (2 * v6) | 1;
  v15 = swift_allocObject();
  v0[13] = v15;
  v15[2] = v8;
  v15[3] = v13;
  v15[4] = v3;
  v15[5] = v14;
  v16 = *(v12 + v11);
  v0[14] = v16;
  swift_bridgeObjectRetain_n();
  if (v16)
  {

    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_227627FF0;

    sub_22708E1D4(sub_22708E1D4, sub_22764657C, v15);
    return;
  }

  v19 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51008], v19);
  swift_willThrow();

  v18 = v0[1];
LABEL_19:

  v18();
}

uint64_t sub_227628414(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for KeyCertificate(0);

  return MEMORY[0x2822009F8](sub_2276284E0, 0, 0);
}

uint64_t sub_2276284E0()
{
  v31 = v0;
  v1 = _s15SeymourServices14KeyCertificateV21representativeSamplesSayACGyFZ_0();
  v0[9] = v1;
  sub_22766A770();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v29 = v0[7];
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 134218242;
    *(v7 + 4) = *(v1 + 16);

    *(v7 + 12) = 2080;
    v0[2] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF9C8, &qword_22768E120);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v30);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v2, v3, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v29, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = *(v1 + 16);
  v0[10] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v0[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {

    v26 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v0[9];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = v20 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v22 = (2 * v16) | 1;
  v23 = swift_allocObject();
  v0[13] = v23;
  v23[2] = v20;
  v23[3] = v21;
  v23[4] = 0;
  v23[5] = v22;
  v24 = *(v18 + v19);
  v0[14] = v24;
  swift_bridgeObjectRetain_n();
  if (v24)
  {

    v25 = swift_task_alloc();
    v0[15] = v25;
    *v25 = v0;
    v25[1] = sub_227628928;

    return sub_22708E1D4(sub_22708E1D4, sub_2276465A8, v23);
  }

  v27 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51008], v27);
  swift_willThrow();

  v26 = v0[1];
LABEL_16:

  return v26();
}

uint64_t sub_227628928()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_227646EF8;
  }

  else
  {
    v2 = sub_227628A44;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_227628A44()
{
  v1 = v0[12];
  v2 = v0[10];

  if (v1 >= v2)
  {

    v18 = v0[1];
    goto LABEL_19;
  }

  v3 = v0[12];
  v4 = v0[3];
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  v7 = (v6 >> 63) ^ 0x8000000000000000;
  if (!v5)
  {
    v7 = v6;
  }

  v0[12] = v7;
  if (v5)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v0[10])
  {
    v6 = v0[10];
  }

  if (v6 < v3)
  {
    goto LABEL_23;
  }

  if (v3 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = v0[9];
  v9 = *(v8 + 16);
  if (v9 < v3 || v9 < v6)
  {
    goto LABEL_25;
  }

  v11 = v0[11];
  v12 = v0[4];
  v13 = v8 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v14 = (2 * v6) | 1;
  v15 = swift_allocObject();
  v0[13] = v15;
  v15[2] = v8;
  v15[3] = v13;
  v15[4] = v3;
  v15[5] = v14;
  v16 = *(v12 + v11);
  v0[14] = v16;
  swift_bridgeObjectRetain_n();
  if (v16)
  {

    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_227628928;

    sub_22708E1D4(sub_22708E1D4, sub_2276465A8, v15);
    return;
  }

  v19 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51008], v19);
  swift_willThrow();

  v18 = v0[1];
LABEL_19:

  v18();
}

uint64_t sub_227628D4C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = sub_2276655A0();

  return MEMORY[0x2822009F8](sub_227628E18, 0, 0);
}

uint64_t sub_227628E18()
{
  v31 = v0;
  v1 = static LanguageDisclaimer.representativeSamples()();
  v0[9] = v1;
  sub_22766A770();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v29 = v0[7];
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 134218242;
    *(v7 + 4) = v1[2];

    *(v7 + 12) = 2080;
    v0[2] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF9D0, &qword_22768E128);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v30);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v2, v3, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v29, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = v1[2];
  v0[10] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v0[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {

    v26 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v0[9];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = v20 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v22 = (2 * v16) | 1;
  v23 = swift_allocObject();
  v0[13] = v23;
  v23[2] = v20;
  v23[3] = v21;
  v23[4] = 0;
  v23[5] = v22;
  v24 = *(v18 + v19);
  v0[14] = v24;
  swift_bridgeObjectRetain_n();
  if (v24)
  {

    v25 = swift_task_alloc();
    v0[15] = v25;
    *v25 = v0;
    v25[1] = sub_227629260;

    return sub_22708E1D4(sub_22708E1D4, sub_2276465D4, v23);
  }

  v27 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51008], v27);
  swift_willThrow();

  v26 = v0[1];
LABEL_16:

  return v26();
}

uint64_t sub_227629260()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_227646EF8;
  }

  else
  {
    v2 = sub_22762937C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_22762937C()
{
  v1 = v0[12];
  v2 = v0[10];

  if (v1 >= v2)
  {

    v18 = v0[1];
    goto LABEL_19;
  }

  v3 = v0[12];
  v4 = v0[3];
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  v7 = (v6 >> 63) ^ 0x8000000000000000;
  if (!v5)
  {
    v7 = v6;
  }

  v0[12] = v7;
  if (v5)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v0[10])
  {
    v6 = v0[10];
  }

  if (v6 < v3)
  {
    goto LABEL_23;
  }

  if (v3 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = v0[9];
  v9 = *(v8 + 16);
  if (v9 < v3 || v9 < v6)
  {
    goto LABEL_25;
  }

  v11 = v0[11];
  v12 = v0[4];
  v13 = v8 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v14 = (2 * v6) | 1;
  v15 = swift_allocObject();
  v0[13] = v15;
  v15[2] = v8;
  v15[3] = v13;
  v15[4] = v3;
  v15[5] = v14;
  v16 = *(v12 + v11);
  v0[14] = v16;
  swift_bridgeObjectRetain_n();
  if (v16)
  {

    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_227629260;

    sub_22708E1D4(sub_22708E1D4, sub_2276465D4, v15);
    return;
  }

  v19 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51008], v19);
  swift_willThrow();

  v18 = v0[1];
LABEL_19:

  v18();
}

uint64_t sub_227629684(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = sub_227663680();

  return MEMORY[0x2822009F8](sub_227629750, 0, 0);
}

uint64_t sub_227629750()
{
  v31 = v0;
  v1 = static MediaMoment.representativeSamples()();
  v0[9] = v1;
  sub_22766A770();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v29 = v0[7];
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 134218242;
    *(v7 + 4) = v1[2];

    *(v7 + 12) = 2080;
    v0[2] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF9D8, &unk_22768E130);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v30);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v2, v3, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v29, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = v1[2];
  v0[10] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v0[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {

    v26 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v0[9];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = v20 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v22 = (2 * v16) | 1;
  v23 = swift_allocObject();
  v0[13] = v23;
  v23[2] = v20;
  v23[3] = v21;
  v23[4] = 0;
  v23[5] = v22;
  v24 = *(v18 + v19);
  v0[14] = v24;
  swift_bridgeObjectRetain_n();
  if (v24)
  {

    v25 = swift_task_alloc();
    v0[15] = v25;
    *v25 = v0;
    v25[1] = sub_227629B98;

    return sub_22708E1D4(sub_22708E1D4, sub_227646600, v23);
  }

  v27 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51008], v27);
  swift_willThrow();

  v26 = v0[1];
LABEL_16:

  return v26();
}

uint64_t sub_227629B98()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_227646EF8;
  }

  else
  {
    v2 = sub_227629CB4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_227629CB4()
{
  v1 = v0[12];
  v2 = v0[10];

  if (v1 >= v2)
  {

    v18 = v0[1];
    goto LABEL_19;
  }

  v3 = v0[12];
  v4 = v0[3];
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  v7 = (v6 >> 63) ^ 0x8000000000000000;
  if (!v5)
  {
    v7 = v6;
  }

  v0[12] = v7;
  if (v5)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v0[10])
  {
    v6 = v0[10];
  }

  if (v6 < v3)
  {
    goto LABEL_23;
  }

  if (v3 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = v0[9];
  v9 = *(v8 + 16);
  if (v9 < v3 || v9 < v6)
  {
    goto LABEL_25;
  }

  v11 = v0[11];
  v12 = v0[4];
  v13 = v8 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v14 = (2 * v6) | 1;
  v15 = swift_allocObject();
  v0[13] = v15;
  v15[2] = v8;
  v15[3] = v13;
  v15[4] = v3;
  v15[5] = v14;
  v16 = *(v12 + v11);
  v0[14] = v16;
  swift_bridgeObjectRetain_n();
  if (v16)
  {

    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_227629B98;

    sub_22708E1D4(sub_22708E1D4, sub_227646600, v15);
    return;
  }

  v19 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51008], v19);
  swift_willThrow();

  v18 = v0[1];
LABEL_19:

  v18();
}

uint64_t sub_227629FBC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = sub_227667170();

  return MEMORY[0x2822009F8](sub_22762A088, 0, 0);
}

uint64_t sub_22762A088()
{
  v31 = v0;
  v1 = static MetricsDisplayPreference.representativeSamples()();
  v0[9] = v1;
  sub_22766A770();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v29 = v0[7];
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 134218242;
    *(v7 + 4) = v1[2];

    *(v7 + 12) = 2080;
    v0[2] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF9E8, &qword_22768E148);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v30);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v2, v3, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v29, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = v1[2];
  v0[10] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v0[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {

    v26 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v0[9];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = v20 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v22 = (2 * v16) | 1;
  v23 = swift_allocObject();
  v0[13] = v23;
  v23[2] = v20;
  v23[3] = v21;
  v23[4] = 0;
  v23[5] = v22;
  v24 = *(v18 + v19);
  v0[14] = v24;
  swift_bridgeObjectRetain_n();
  if (v24)
  {

    v25 = swift_task_alloc();
    v0[15] = v25;
    *v25 = v0;
    v25[1] = sub_22762A4D0;

    return sub_22708E1D4(sub_22708E1D4, sub_2276466A0, v23);
  }

  v27 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51008], v27);
  swift_willThrow();

  v26 = v0[1];
LABEL_16:

  return v26();
}

uint64_t sub_22762A4D0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_227646EF8;
  }

  else
  {
    v2 = sub_22762A5EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_22762A5EC()
{
  v1 = v0[12];
  v2 = v0[10];

  if (v1 >= v2)
  {

    v18 = v0[1];
    goto LABEL_19;
  }

  v3 = v0[12];
  v4 = v0[3];
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  v7 = (v6 >> 63) ^ 0x8000000000000000;
  if (!v5)
  {
    v7 = v6;
  }

  v0[12] = v7;
  if (v5)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v0[10])
  {
    v6 = v0[10];
  }

  if (v6 < v3)
  {
    goto LABEL_23;
  }

  if (v3 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = v0[9];
  v9 = *(v8 + 16);
  if (v9 < v3 || v9 < v6)
  {
    goto LABEL_25;
  }

  v11 = v0[11];
  v12 = v0[4];
  v13 = v8 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v14 = (2 * v6) | 1;
  v15 = swift_allocObject();
  v0[13] = v15;
  v15[2] = v8;
  v15[3] = v13;
  v15[4] = v3;
  v15[5] = v14;
  v16 = *(v12 + v11);
  v0[14] = v16;
  swift_bridgeObjectRetain_n();
  if (v16)
  {

    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_22762A4D0;

    sub_22708E1D4(sub_22708E1D4, sub_2276466A0, v15);
    return;
  }

  v19 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51008], v19);
  swift_willThrow();

  v18 = v0[1];
LABEL_19:

  v18();
}

uint64_t sub_22762A8F4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22762A9B4, 0, 0);
}

uint64_t sub_22762A9B4(uint64_t a1)
{
  v30 = v1;
  v2 = sub_227065A04(a1);
  v1[8] = v2;
  sub_22766A770();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v1[6];
    v28 = v1[7];
    v6 = v1[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v7 = 134218242;
    *(v7 + 4) = *(v2 + 16);

    *(v7 + 12) = 2080;
    v1[2] = &type metadata for ModalityIdentifier;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF9F0, &qword_22768E150);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v29);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v3, v4, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v28, v6);
  }

  else
  {
    v14 = v1[6];
    v13 = v1[7];
    v15 = v1[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v1[3];
  v17 = *(v2 + 16);
  v1[9] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v1[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v1[10] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {

    v25 = v1[1];
    goto LABEL_16;
  }

  v1[11] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v1[8];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = (2 * v16) | 1;
  v22 = swift_allocObject();
  v1[12] = v22;
  v22[2] = v20;
  v22[3] = v20 + 32;
  v22[4] = 0;
  v22[5] = v21;
  v23 = *(v18 + v19);
  v1[13] = v23;
  swift_bridgeObjectRetain_n();
  if (v23)
  {

    v24 = swift_task_alloc();
    v1[14] = v24;
    *v24 = v1;
    v24[1] = sub_22762ADD0;

    return sub_22708E1D4(sub_22708E1D4, sub_2276466CC, v22);
  }

  v26 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277D51008], v26);
  swift_willThrow();

  v25 = v1[1];
LABEL_16:

  return v25();
}

uint64_t sub_22762ADD0()
{
  *(*v1 + 120) = v0;

  if (v0)
  {

    v2 = sub_227646EFC;
  }

  else
  {
    v2 = sub_22762AEEC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_22762AEEC()
{
  v1 = v0[11];
  v2 = v0[9];

  if (v1 >= v2)
  {

    v17 = v0[1];
    goto LABEL_19;
  }

  v3 = v0[11];
  v4 = v0[3];
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  v7 = (v6 >> 63) ^ 0x8000000000000000;
  if (!v5)
  {
    v7 = v6;
  }

  v0[11] = v7;
  if (v5)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v0[9])
  {
    v6 = v0[9];
  }

  if (v6 < v3)
  {
    goto LABEL_23;
  }

  if (v3 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = v0[8];
  v9 = *(v8 + 16);
  if (v9 < v3 || v9 < v6)
  {
    goto LABEL_25;
  }

  v11 = v0[10];
  v12 = v0[4];
  v13 = (2 * v6) | 1;
  v14 = swift_allocObject();
  v0[12] = v14;
  v14[2] = v8;
  v14[3] = v8 + 32;
  v14[4] = v3;
  v14[5] = v13;
  v15 = *(v12 + v11);
  v0[13] = v15;
  swift_bridgeObjectRetain_n();
  if (v15)
  {

    v16 = swift_task_alloc();
    v0[14] = v16;
    *v16 = v0;
    v16[1] = sub_22762ADD0;

    sub_22708E1D4(sub_22708E1D4, sub_2276466CC, v14);
    return;
  }

  v18 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51008], v18);
  swift_willThrow();

  v17 = v0[1];
LABEL_19:

  v17();
}

uint64_t sub_22762B1BC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = sub_2276632A0();

  return MEMORY[0x2822009F8](sub_22762B288, 0, 0);
}

uint64_t sub_22762B288()
{
  v31 = v0;
  v1 = static MusicGenre.representativeSamples()();
  v0[9] = v1;
  sub_22766A770();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v29 = v0[7];
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 134218242;
    *(v7 + 4) = v1[2];

    *(v7 + 12) = 2080;
    v0[2] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF9F8, &qword_22768E158);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v30);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v2, v3, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v29, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = v1[2];
  v0[10] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v0[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {

    v26 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v0[9];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = v20 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v22 = (2 * v16) | 1;
  v23 = swift_allocObject();
  v0[13] = v23;
  v23[2] = v20;
  v23[3] = v21;
  v23[4] = 0;
  v23[5] = v22;
  v24 = *(v18 + v19);
  v0[14] = v24;
  swift_bridgeObjectRetain_n();
  if (v24)
  {

    v25 = swift_task_alloc();
    v0[15] = v25;
    *v25 = v0;
    v25[1] = sub_22762B6D0;

    return sub_22708E1D4(sub_22708E1D4, sub_2276466F8, v23);
  }

  v27 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51008], v27);
  swift_willThrow();

  v26 = v0[1];
LABEL_16:

  return v26();
}

uint64_t sub_22762B6D0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_227646EF8;
  }

  else
  {
    v2 = sub_22762B7EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_22762B7EC()
{
  v1 = v0[12];
  v2 = v0[10];

  if (v1 >= v2)
  {

    v18 = v0[1];
    goto LABEL_19;
  }

  v3 = v0[12];
  v4 = v0[3];
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  v7 = (v6 >> 63) ^ 0x8000000000000000;
  if (!v5)
  {
    v7 = v6;
  }

  v0[12] = v7;
  if (v5)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v0[10])
  {
    v6 = v0[10];
  }

  if (v6 < v3)
  {
    goto LABEL_23;
  }

  if (v3 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = v0[9];
  v9 = *(v8 + 16);
  if (v9 < v3 || v9 < v6)
  {
    goto LABEL_25;
  }

  v11 = v0[11];
  v12 = v0[4];
  v13 = v8 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v14 = (2 * v6) | 1;
  v15 = swift_allocObject();
  v0[13] = v15;
  v15[2] = v8;
  v15[3] = v13;
  v15[4] = v3;
  v15[5] = v14;
  v16 = *(v12 + v11);
  v0[14] = v16;
  swift_bridgeObjectRetain_n();
  if (v16)
  {

    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_22762B6D0;

    sub_22708E1D4(sub_22708E1D4, sub_2276466F8, v15);
    return;
  }

  v19 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51008], v19);
  swift_willThrow();

  v18 = v0[1];
LABEL_19:

  v18();
}

uint64_t sub_22762BAF4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22762BBB4, 0, 0);
}

uint64_t sub_22762BBB4(uint64_t a1)
{
  v30 = v1;
  v2 = sub_2274F46C8(a1);
  v1[8] = v2;
  sub_22766A770();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v1[6];
    v28 = v1[7];
    v6 = v1[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v7 = 134218242;
    *(v7 + 4) = *(v2 + 16);

    *(v7 + 12) = 2080;
    v1[2] = &type metadata for MusicGenreIdentifier;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFA00, &qword_22768E160);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v29);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v3, v4, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v28, v6);
  }

  else
  {
    v14 = v1[6];
    v13 = v1[7];
    v15 = v1[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v1[3];
  v17 = *(v2 + 16);
  v1[9] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v1[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v1[10] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {

    v25 = v1[1];
    goto LABEL_16;
  }

  v1[11] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v1[8];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = (2 * v16) | 1;
  v22 = swift_allocObject();
  v1[12] = v22;
  v22[2] = v20;
  v22[3] = v20 + 32;
  v22[4] = 0;
  v22[5] = v21;
  v23 = *(v18 + v19);
  v1[13] = v23;
  swift_bridgeObjectRetain_n();
  if (v23)
  {

    v24 = swift_task_alloc();
    v1[14] = v24;
    *v24 = v1;
    v24[1] = sub_22762BFD0;

    return sub_22708E1D4(sub_22708E1D4, sub_227646724, v22);
  }

  v26 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277D51008], v26);
  swift_willThrow();

  v25 = v1[1];
LABEL_16:

  return v25();
}

uint64_t sub_22762BFD0()
{
  *(*v1 + 120) = v0;

  if (v0)
  {

    v2 = sub_227646EFC;
  }

  else
  {
    v2 = sub_22762C0EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_22762C0EC()
{
  v1 = v0[11];
  v2 = v0[9];

  if (v1 >= v2)
  {

    v17 = v0[1];
    goto LABEL_19;
  }

  v3 = v0[11];
  v4 = v0[3];
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  v7 = (v6 >> 63) ^ 0x8000000000000000;
  if (!v5)
  {
    v7 = v6;
  }

  v0[11] = v7;
  if (v5)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v0[9])
  {
    v6 = v0[9];
  }

  if (v6 < v3)
  {
    goto LABEL_23;
  }

  if (v3 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = v0[8];
  v9 = *(v8 + 16);
  if (v9 < v3 || v9 < v6)
  {
    goto LABEL_25;
  }

  v11 = v0[10];
  v12 = v0[4];
  v13 = (2 * v6) | 1;
  v14 = swift_allocObject();
  v0[12] = v14;
  v14[2] = v8;
  v14[3] = v8 + 32;
  v14[4] = v3;
  v14[5] = v13;
  v15 = *(v12 + v11);
  v0[13] = v15;
  swift_bridgeObjectRetain_n();
  if (v15)
  {

    v16 = swift_task_alloc();
    v0[14] = v16;
    *v16 = v0;
    v16[1] = sub_22762BFD0;

    sub_22708E1D4(sub_22708E1D4, sub_227646724, v14);
    return;
  }

  v18 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51008], v18);
  swift_willThrow();

  v17 = v0[1];
LABEL_19:

  v17();
}

uint64_t sub_22762C3BC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = sub_227663350();

  return MEMORY[0x2822009F8](sub_22762C488, 0, 0);
}

uint64_t sub_22762C488()
{
  v31 = v0;
  v1 = static MusicTrack.representativeSamples()();
  v0[9] = v1;
  sub_22766A770();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v29 = v0[7];
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 134218242;
    *(v7 + 4) = v1[2];

    *(v7 + 12) = 2080;
    v0[2] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFA08, &qword_22768E168);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v30);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v2, v3, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v29, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = v1[2];
  v0[10] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v0[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {

    v26 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v0[9];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = v20 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v22 = (2 * v16) | 1;
  v23 = swift_allocObject();
  v0[13] = v23;
  v23[2] = v20;
  v23[3] = v21;
  v23[4] = 0;
  v23[5] = v22;
  v24 = *(v18 + v19);
  v0[14] = v24;
  swift_bridgeObjectRetain_n();
  if (v24)
  {

    v25 = swift_task_alloc();
    v0[15] = v25;
    *v25 = v0;
    v25[1] = sub_22762C8D0;

    return sub_22708E1D4(sub_22708E1D4, sub_227646750, v23);
  }

  v27 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51008], v27);
  swift_willThrow();

  v26 = v0[1];
LABEL_16:

  return v26();
}

uint64_t sub_22762C8D0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_227646EF8;
  }

  else
  {
    v2 = sub_22762C9EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_22762C9EC()
{
  v1 = v0[12];
  v2 = v0[10];

  if (v1 >= v2)
  {

    v18 = v0[1];
    goto LABEL_19;
  }

  v3 = v0[12];
  v4 = v0[3];
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  v7 = (v6 >> 63) ^ 0x8000000000000000;
  if (!v5)
  {
    v7 = v6;
  }

  v0[12] = v7;
  if (v5)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v0[10])
  {
    v6 = v0[10];
  }

  if (v6 < v3)
  {
    goto LABEL_23;
  }

  if (v3 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = v0[9];
  v9 = *(v8 + 16);
  if (v9 < v3 || v9 < v6)
  {
    goto LABEL_25;
  }

  v11 = v0[11];
  v12 = v0[4];
  v13 = v8 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v14 = (2 * v6) | 1;
  v15 = swift_allocObject();
  v0[13] = v15;
  v15[2] = v8;
  v15[3] = v13;
  v15[4] = v3;
  v15[5] = v14;
  v16 = *(v12 + v11);
  v0[14] = v16;
  swift_bridgeObjectRetain_n();
  if (v16)
  {

    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_22762C8D0;

    sub_22708E1D4(sub_22708E1D4, sub_227646750, v15);
    return;
  }

  v19 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51008], v19);
  swift_willThrow();

  v18 = v0[1];
LABEL_19:

  v18();
}

uint64_t sub_22762CCF4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22762CDB4, 0, 0);
}

uint64_t sub_22762CDB4(uint64_t a1)
{
  v30 = v1;
  v2 = sub_2272B8B78(a1);
  v1[8] = v2;
  sub_22766A770();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v1[6];
    v28 = v1[7];
    v6 = v1[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v7 = 134218242;
    *(v7 + 4) = *(v2 + 16);

    *(v7 + 12) = 2080;
    v1[2] = &type metadata for OnboardingModalityIdentifier;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFA10, &qword_22768E170);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v29);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v3, v4, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v28, v6);
  }

  else
  {
    v14 = v1[6];
    v13 = v1[7];
    v15 = v1[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v1[3];
  v17 = *(v2 + 16);
  v1[9] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v1[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v1[10] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {

    v25 = v1[1];
    goto LABEL_16;
  }

  v1[11] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v1[8];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = (2 * v16) | 1;
  v22 = swift_allocObject();
  v1[12] = v22;
  v22[2] = v20;
  v22[3] = v20 + 32;
  v22[4] = 0;
  v22[5] = v21;
  v23 = *(v18 + v19);
  v1[13] = v23;
  swift_bridgeObjectRetain_n();
  if (v23)
  {

    v24 = swift_task_alloc();
    v1[14] = v24;
    *v24 = v1;
    v24[1] = sub_22762D1D0;

    return sub_22708E1D4(sub_22708E1D4, sub_22764677C, v22);
  }

  v26 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277D51008], v26);
  swift_willThrow();

  v25 = v1[1];
LABEL_16:

  return v25();
}

uint64_t sub_22762D1D0()
{
  *(*v1 + 120) = v0;

  if (v0)
  {

    v2 = sub_227646EFC;
  }

  else
  {
    v2 = sub_22762D2EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_22762D2EC()
{
  v1 = v0[11];
  v2 = v0[9];

  if (v1 >= v2)
  {

    v17 = v0[1];
    goto LABEL_19;
  }

  v3 = v0[11];
  v4 = v0[3];
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  v7 = (v6 >> 63) ^ 0x8000000000000000;
  if (!v5)
  {
    v7 = v6;
  }

  v0[11] = v7;
  if (v5)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v0[9])
  {
    v6 = v0[9];
  }

  if (v6 < v3)
  {
    goto LABEL_23;
  }

  if (v3 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = v0[8];
  v9 = *(v8 + 16);
  if (v9 < v3 || v9 < v6)
  {
    goto LABEL_25;
  }

  v11 = v0[10];
  v12 = v0[4];
  v13 = (2 * v6) | 1;
  v14 = swift_allocObject();
  v0[12] = v14;
  v14[2] = v8;
  v14[3] = v8 + 32;
  v14[4] = v3;
  v14[5] = v13;
  v15 = *(v12 + v11);
  v0[13] = v15;
  swift_bridgeObjectRetain_n();
  if (v15)
  {

    v16 = swift_task_alloc();
    v0[14] = v16;
    *v16 = v0;
    v16[1] = sub_22762D1D0;

    sub_22708E1D4(sub_22708E1D4, sub_22764677C, v14);
    return;
  }

  v18 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51008], v18);
  swift_willThrow();

  v17 = v0[1];
LABEL_19:

  v17();
}

uint64_t sub_22762D5BC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = sub_227666650();

  return MEMORY[0x2822009F8](sub_22762D688, 0, 0);
}

uint64_t sub_22762D688()
{
  v31 = v0;
  v1 = static OnboardingSurveyResult.representativeSamples()();
  v0[9] = v1;
  sub_22766A770();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v29 = v0[7];
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 134218242;
    *(v7 + 4) = v1[2];

    *(v7 + 12) = 2080;
    v0[2] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFA18, &qword_22768E178);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v30);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v2, v3, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v29, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = v1[2];
  v0[10] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v0[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {

    v26 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v0[9];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = v20 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v22 = (2 * v16) | 1;
  v23 = swift_allocObject();
  v0[13] = v23;
  v23[2] = v20;
  v23[3] = v21;
  v23[4] = 0;
  v23[5] = v22;
  v24 = *(v18 + v19);
  v0[14] = v24;
  swift_bridgeObjectRetain_n();
  if (v24)
  {

    v25 = swift_task_alloc();
    v0[15] = v25;
    *v25 = v0;
    v25[1] = sub_22762DAD0;

    return sub_22708E1D4(sub_22708E1D4, sub_2276467A8, v23);
  }

  v27 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51008], v27);
  swift_willThrow();

  v26 = v0[1];
LABEL_16:

  return v26();
}

uint64_t sub_22762DAD0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_227646EF8;
  }

  else
  {
    v2 = sub_22762DBEC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_22762DBEC()
{
  v1 = v0[12];
  v2 = v0[10];

  if (v1 >= v2)
  {

    v18 = v0[1];
    goto LABEL_19;
  }

  v3 = v0[12];
  v4 = v0[3];
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  v7 = (v6 >> 63) ^ 0x8000000000000000;
  if (!v5)
  {
    v7 = v6;
  }

  v0[12] = v7;
  if (v5)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v0[10])
  {
    v6 = v0[10];
  }

  if (v6 < v3)
  {
    goto LABEL_23;
  }

  if (v3 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = v0[9];
  v9 = *(v8 + 16);
  if (v9 < v3 || v9 < v6)
  {
    goto LABEL_25;
  }

  v11 = v0[11];
  v12 = v0[4];
  v13 = v8 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v14 = (2 * v6) | 1;
  v15 = swift_allocObject();
  v0[13] = v15;
  v15[2] = v8;
  v15[3] = v13;
  v15[4] = v3;
  v15[5] = v14;
  v16 = *(v12 + v11);
  v0[14] = v16;
  swift_bridgeObjectRetain_n();
  if (v16)
  {

    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_22762DAD0;

    sub_22708E1D4(sub_22708E1D4, sub_2276467A8, v15);
    return;
  }

  v19 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51008], v19);
  swift_willThrow();

  v18 = v0[1];
LABEL_19:

  v18();
}

uint64_t sub_22762DEF4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = sub_227668A00();

  return MEMORY[0x2822009F8](sub_22762DFC0, 0, 0);
}

uint64_t sub_22762DFC0()
{
  v31 = v0;
  v1 = static PersonalizationPrivacyPreference.representativeSamples()();
  v0[9] = v1;
  sub_22766A770();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v29 = v0[7];
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 134218242;
    *(v7 + 4) = v1[2];

    *(v7 + 12) = 2080;
    v0[2] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFA20, &qword_22768E180);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v30);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v2, v3, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v29, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = v1[2];
  v0[10] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v0[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {

    v26 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v0[9];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = v20 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v22 = (2 * v16) | 1;
  v23 = swift_allocObject();
  v0[13] = v23;
  v23[2] = v20;
  v23[3] = v21;
  v23[4] = 0;
  v23[5] = v22;
  v24 = *(v18 + v19);
  v0[14] = v24;
  swift_bridgeObjectRetain_n();
  if (v24)
  {

    v25 = swift_task_alloc();
    v0[15] = v25;
    *v25 = v0;
    v25[1] = sub_22762E408;

    return sub_22708E1D4(sub_22708E1D4, sub_2276467D4, v23);
  }

  v27 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51008], v27);
  swift_willThrow();

  v26 = v0[1];
LABEL_16:

  return v26();
}

uint64_t sub_22762E408()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_227646EF8;
  }

  else
  {
    v2 = sub_22762E524;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_22762E524()
{
  v1 = v0[12];
  v2 = v0[10];

  if (v1 >= v2)
  {

    v18 = v0[1];
    goto LABEL_19;
  }

  v3 = v0[12];
  v4 = v0[3];
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  v7 = (v6 >> 63) ^ 0x8000000000000000;
  if (!v5)
  {
    v7 = v6;
  }

  v0[12] = v7;
  if (v5)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v0[10])
  {
    v6 = v0[10];
  }

  if (v6 < v3)
  {
    goto LABEL_23;
  }

  if (v3 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = v0[9];
  v9 = *(v8 + 16);
  if (v9 < v3 || v9 < v6)
  {
    goto LABEL_25;
  }

  v11 = v0[11];
  v12 = v0[4];
  v13 = v8 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v14 = (2 * v6) | 1;
  v15 = swift_allocObject();
  v0[13] = v15;
  v15[2] = v8;
  v15[3] = v13;
  v15[4] = v3;
  v15[5] = v14;
  v16 = *(v12 + v11);
  v0[14] = v16;
  swift_bridgeObjectRetain_n();
  if (v16)
  {

    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_22762E408;

    sub_22708E1D4(sub_22708E1D4, sub_2276467D4, v15);
    return;
  }

  v19 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51008], v19);
  swift_willThrow();

  v18 = v0[1];
LABEL_19:

  v18();
}

uint64_t sub_22762E82C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = sub_227664900();

  return MEMORY[0x2822009F8](sub_22762E8F8, 0, 0);
}

uint64_t sub_22762E8F8()
{
  v31 = v0;
  v1 = static PlaybackVoucher.representativeSamples()();
  v0[9] = v1;
  sub_22766A770();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v29 = v0[7];
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 134218242;
    *(v7 + 4) = v1[2];

    *(v7 + 12) = 2080;
    v0[2] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFA28, &qword_22768E188);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v30);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v2, v3, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v29, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = v1[2];
  v0[10] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v0[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {

    v26 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v0[9];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = v20 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v22 = (2 * v16) | 1;
  v23 = swift_allocObject();
  v0[13] = v23;
  v23[2] = v20;
  v23[3] = v21;
  v23[4] = 0;
  v23[5] = v22;
  v24 = *(v18 + v19);
  v0[14] = v24;
  swift_bridgeObjectRetain_n();
  if (v24)
  {

    v25 = swift_task_alloc();
    v0[15] = v25;
    *v25 = v0;
    v25[1] = sub_22762ED40;

    return sub_22708E1D4(sub_22708E1D4, sub_227646800, v23);
  }

  v27 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51008], v27);
  swift_willThrow();

  v26 = v0[1];
LABEL_16:

  return v26();
}

uint64_t sub_22762ED40()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_227646EF8;
  }

  else
  {
    v2 = sub_22762EE5C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_22762EE5C()
{
  v1 = v0[12];
  v2 = v0[10];

  if (v1 >= v2)
  {

    v18 = v0[1];
    goto LABEL_19;
  }

  v3 = v0[12];
  v4 = v0[3];
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  v7 = (v6 >> 63) ^ 0x8000000000000000;
  if (!v5)
  {
    v7 = v6;
  }

  v0[12] = v7;
  if (v5)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v0[10])
  {
    v6 = v0[10];
  }

  if (v6 < v3)
  {
    goto LABEL_23;
  }

  if (v3 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = v0[9];
  v9 = *(v8 + 16);
  if (v9 < v3 || v9 < v6)
  {
    goto LABEL_25;
  }

  v11 = v0[11];
  v12 = v0[4];
  v13 = v8 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v14 = (2 * v6) | 1;
  v15 = swift_allocObject();
  v0[13] = v15;
  v15[2] = v8;
  v15[3] = v13;
  v15[4] = v3;
  v15[5] = v14;
  v16 = *(v12 + v11);
  v0[14] = v16;
  swift_bridgeObjectRetain_n();
  if (v16)
  {

    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_22762ED40;

    sub_22708E1D4(sub_22708E1D4, sub_227646800, v15);
    return;
  }

  v19 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51008], v19);
  swift_willThrow();

  v18 = v0[1];
LABEL_19:

  v18();
}

uint64_t sub_22762F164(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = sub_227669480();

  return MEMORY[0x2822009F8](sub_22762F230, 0, 0);
}

uint64_t sub_22762F230()
{
  v31 = v0;
  v1 = static Playlist.representativeSamples()();
  v0[9] = v1;
  sub_22766A770();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v29 = v0[7];
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 134218242;
    *(v7 + 4) = v1[2];

    *(v7 + 12) = 2080;
    v0[2] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFA30, &qword_22768E190);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v30);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v2, v3, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v29, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = v1[2];
  v0[10] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v0[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {

    v26 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v0[9];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = v20 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v22 = (2 * v16) | 1;
  v23 = swift_allocObject();
  v0[13] = v23;
  v23[2] = v20;
  v23[3] = v21;
  v23[4] = 0;
  v23[5] = v22;
  v24 = *(v18 + v19);
  v0[14] = v24;
  swift_bridgeObjectRetain_n();
  if (v24)
  {

    v25 = swift_task_alloc();
    v0[15] = v25;
    *v25 = v0;
    v25[1] = sub_22762F678;

    return sub_22708E1D4(sub_22708E1D4, sub_22764682C, v23);
  }

  v27 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51008], v27);
  swift_willThrow();

  v26 = v0[1];
LABEL_16:

  return v26();
}

uint64_t sub_22762F678()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_227646EF8;
  }

  else
  {
    v2 = sub_22762F794;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_22762F794()
{
  v1 = v0[12];
  v2 = v0[10];

  if (v1 >= v2)
  {

    v18 = v0[1];
    goto LABEL_19;
  }

  v3 = v0[12];
  v4 = v0[3];
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  v7 = (v6 >> 63) ^ 0x8000000000000000;
  if (!v5)
  {
    v7 = v6;
  }

  v0[12] = v7;
  if (v5)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v0[10])
  {
    v6 = v0[10];
  }

  if (v6 < v3)
  {
    goto LABEL_23;
  }

  if (v3 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = v0[9];
  v9 = *(v8 + 16);
  if (v9 < v3 || v9 < v6)
  {
    goto LABEL_25;
  }

  v11 = v0[11];
  v12 = v0[4];
  v13 = v8 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v14 = (2 * v6) | 1;
  v15 = swift_allocObject();
  v0[13] = v15;
  v15[2] = v8;
  v15[3] = v13;
  v15[4] = v3;
  v15[5] = v14;
  v16 = *(v12 + v11);
  v0[14] = v16;
  swift_bridgeObjectRetain_n();
  if (v16)
  {

    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_22762F678;

    sub_22708E1D4(sub_22708E1D4, sub_22764682C, v15);
    return;
  }

  v19 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51008], v19);
  swift_willThrow();

  v18 = v0[1];
LABEL_19:

  v18();
}

uint64_t sub_22762FA9C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = sub_227663AB0();

  return MEMORY[0x2822009F8](sub_22762FB68, 0, 0);
}

uint64_t sub_22762FB68()
{
  v31 = v0;
  v1 = static PlaylistItem.representativeSamples()();
  v0[9] = v1;
  sub_22766A770();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v29 = v0[7];
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 134218242;
    *(v7 + 4) = v1[2];

    *(v7 + 12) = 2080;
    v0[2] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFA38, &qword_22768E198);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v30);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v2, v3, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v29, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = v1[2];
  v0[10] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v0[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {

    v26 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v0[9];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = v20 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v22 = (2 * v16) | 1;
  v23 = swift_allocObject();
  v0[13] = v23;
  v23[2] = v20;
  v23[3] = v21;
  v23[4] = 0;
  v23[5] = v22;
  v24 = *(v18 + v19);
  v0[14] = v24;
  swift_bridgeObjectRetain_n();
  if (v24)
  {

    v25 = swift_task_alloc();
    v0[15] = v25;
    *v25 = v0;
    v25[1] = sub_22762FFB0;

    return sub_22708E1D4(sub_22708E1D4, sub_227646858, v23);
  }

  v27 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51008], v27);
  swift_willThrow();

  v26 = v0[1];
LABEL_16:

  return v26();
}

uint64_t sub_22762FFB0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_227646EF8;
  }

  else
  {
    v2 = sub_2276300CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_2276300CC()
{
  v1 = v0[12];
  v2 = v0[10];

  if (v1 >= v2)
  {

    v18 = v0[1];
    goto LABEL_19;
  }

  v3 = v0[12];
  v4 = v0[3];
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  v7 = (v6 >> 63) ^ 0x8000000000000000;
  if (!v5)
  {
    v7 = v6;
  }

  v0[12] = v7;
  if (v5)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v0[10])
  {
    v6 = v0[10];
  }

  if (v6 < v3)
  {
    goto LABEL_23;
  }

  if (v3 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = v0[9];
  v9 = *(v8 + 16);
  if (v9 < v3 || v9 < v6)
  {
    goto LABEL_25;
  }

  v11 = v0[11];
  v12 = v0[4];
  v13 = v8 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v14 = (2 * v6) | 1;
  v15 = swift_allocObject();
  v0[13] = v15;
  v15[2] = v8;
  v15[3] = v13;
  v15[4] = v3;
  v15[5] = v14;
  v16 = *(v12 + v11);
  v0[14] = v16;
  swift_bridgeObjectRetain_n();
  if (v16)
  {

    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_22762FFB0;

    sub_22708E1D4(sub_22708E1D4, sub_227646858, v15);
    return;
  }

  v19 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51008], v19);
  swift_willThrow();

  v18 = v0[1];
LABEL_19:

  v18();
}

uint64_t sub_2276303D4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = sub_227666710();

  return MEMORY[0x2822009F8](sub_2276304A0, 0, 0);
}

uint64_t sub_2276304A0()
{
  v31 = v0;
  v1 = static PrivacyAcknowledgement.representativeSamples()();
  v0[9] = v1;
  sub_22766A770();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v29 = v0[7];
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 134218242;
    *(v7 + 4) = v1[2];

    *(v7 + 12) = 2080;
    v0[2] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFA40, &qword_22768E1A0);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v30);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v2, v3, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v29, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = v1[2];
  v0[10] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v0[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {

    v26 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v0[9];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = v20 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v22 = (2 * v16) | 1;
  v23 = swift_allocObject();
  v0[13] = v23;
  v23[2] = v20;
  v23[3] = v21;
  v23[4] = 0;
  v23[5] = v22;
  v24 = *(v18 + v19);
  v0[14] = v24;
  swift_bridgeObjectRetain_n();
  if (v24)
  {

    v25 = swift_task_alloc();
    v0[15] = v25;
    *v25 = v0;
    v25[1] = sub_2276308E8;

    return sub_22708E1D4(sub_22708E1D4, sub_227646884, v23);
  }

  v27 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51008], v27);
  swift_willThrow();

  v26 = v0[1];
LABEL_16:

  return v26();
}

uint64_t sub_2276308E8()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_227646EF8;
  }

  else
  {
    v2 = sub_227630A04;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_227630A04()
{
  v1 = v0[12];
  v2 = v0[10];

  if (v1 >= v2)
  {

    v18 = v0[1];
    goto LABEL_19;
  }

  v3 = v0[12];
  v4 = v0[3];
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  v7 = (v6 >> 63) ^ 0x8000000000000000;
  if (!v5)
  {
    v7 = v6;
  }

  v0[12] = v7;
  if (v5)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v0[10])
  {
    v6 = v0[10];
  }

  if (v6 < v3)
  {
    goto LABEL_23;
  }

  if (v3 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = v0[9];
  v9 = *(v8 + 16);
  if (v9 < v3 || v9 < v6)
  {
    goto LABEL_25;
  }

  v11 = v0[11];
  v12 = v0[4];
  v13 = v8 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v14 = (2 * v6) | 1;
  v15 = swift_allocObject();
  v0[13] = v15;
  v15[2] = v8;
  v15[3] = v13;
  v15[4] = v3;
  v15[5] = v14;
  v16 = *(v12 + v11);
  v0[14] = v16;
  swift_bridgeObjectRetain_n();
  if (v16)
  {

    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_2276308E8;

    sub_22708E1D4(sub_22708E1D4, sub_227646884, v15);
    return;
  }

  v19 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51008], v19);
  swift_willThrow();

  v18 = v0[1];
LABEL_19:

  v18();
}

uint64_t sub_227630D0C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = sub_2276652D0();

  return MEMORY[0x2822009F8](sub_227630DD8, 0, 0);
}

uint64_t sub_227630DD8()
{
  v31 = v0;
  v1 = static ProgramCompletion.representativeSamples()();
  v0[9] = v1;
  sub_22766A770();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v29 = v0[7];
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 134218242;
    *(v7 + 4) = v1[2];

    *(v7 + 12) = 2080;
    v0[2] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFA48, &qword_22768E1A8);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v30);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v2, v3, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v29, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = v1[2];
  v0[10] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v0[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {

    v26 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v0[9];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = v20 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v22 = (2 * v16) | 1;
  v23 = swift_allocObject();
  v0[13] = v23;
  v23[2] = v20;
  v23[3] = v21;
  v23[4] = 0;
  v23[5] = v22;
  v24 = *(v18 + v19);
  v0[14] = v24;
  swift_bridgeObjectRetain_n();
  if (v24)
  {

    v25 = swift_task_alloc();
    v0[15] = v25;
    *v25 = v0;
    v25[1] = sub_227631220;

    return sub_22708E1D4(sub_22708E1D4, sub_2276468B0, v23);
  }

  v27 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51008], v27);
  swift_willThrow();

  v26 = v0[1];
LABEL_16:

  return v26();
}

uint64_t sub_227631220()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_227646EF8;
  }

  else
  {
    v2 = sub_22763133C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_22763133C()
{
  v1 = v0[12];
  v2 = v0[10];

  if (v1 >= v2)
  {

    v18 = v0[1];
    goto LABEL_19;
  }

  v3 = v0[12];
  v4 = v0[3];
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  v7 = (v6 >> 63) ^ 0x8000000000000000;
  if (!v5)
  {
    v7 = v6;
  }

  v0[12] = v7;
  if (v5)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v0[10])
  {
    v6 = v0[10];
  }

  if (v6 < v3)
  {
    goto LABEL_23;
  }

  if (v3 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = v0[9];
  v9 = *(v8 + 16);
  if (v9 < v3 || v9 < v6)
  {
    goto LABEL_25;
  }

  v11 = v0[11];
  v12 = v0[4];
  v13 = v8 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v14 = (2 * v6) | 1;
  v15 = swift_allocObject();
  v0[13] = v15;
  v15[2] = v8;
  v15[3] = v13;
  v15[4] = v3;
  v15[5] = v14;
  v16 = *(v12 + v11);
  v0[14] = v16;
  swift_bridgeObjectRetain_n();
  if (v16)
  {

    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_227631220;

    sub_22708E1D4(sub_22708E1D4, sub_2276468B0, v15);
    return;
  }

  v19 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51008], v19);
  swift_willThrow();

  v18 = v0[1];
LABEL_19:

  v18();
}

uint64_t sub_227631644(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = sub_2276675F0();

  return MEMORY[0x2822009F8](sub_227631710, 0, 0);
}

uint64_t sub_227631710()
{
  v31 = v0;
  v1 = static ProgressDisplayPreference.representativeSamples()();
  v0[9] = v1;
  sub_22766A770();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v29 = v0[7];
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 134218242;
    *(v7 + 4) = v1[2];

    *(v7 + 12) = 2080;
    v0[2] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFA50, &qword_22768E1B0);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v30);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v2, v3, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v29, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = v1[2];
  v0[10] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v0[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {

    v26 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v0[9];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = v20 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v22 = (2 * v16) | 1;
  v23 = swift_allocObject();
  v0[13] = v23;
  v23[2] = v20;
  v23[3] = v21;
  v23[4] = 0;
  v23[5] = v22;
  v24 = *(v18 + v19);
  v0[14] = v24;
  swift_bridgeObjectRetain_n();
  if (v24)
  {

    v25 = swift_task_alloc();
    v0[15] = v25;
    *v25 = v0;
    v25[1] = sub_227631B58;

    return sub_22708E1D4(sub_22708E1D4, sub_2276468DC, v23);
  }

  v27 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51008], v27);
  swift_willThrow();

  v26 = v0[1];
LABEL_16:

  return v26();
}

uint64_t sub_227631B58()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_227646EF8;
  }

  else
  {
    v2 = sub_227631C74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_227631C74()
{
  v1 = v0[12];
  v2 = v0[10];

  if (v1 >= v2)
  {

    v18 = v0[1];
    goto LABEL_19;
  }

  v3 = v0[12];
  v4 = v0[3];
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  v7 = (v6 >> 63) ^ 0x8000000000000000;
  if (!v5)
  {
    v7 = v6;
  }

  v0[12] = v7;
  if (v5)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v0[10])
  {
    v6 = v0[10];
  }

  if (v6 < v3)
  {
    goto LABEL_23;
  }

  if (v3 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = v0[9];
  v9 = *(v8 + 16);
  if (v9 < v3 || v9 < v6)
  {
    goto LABEL_25;
  }

  v11 = v0[11];
  v12 = v0[4];
  v13 = v8 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v14 = (2 * v6) | 1;
  v15 = swift_allocObject();
  v0[13] = v15;
  v15[2] = v8;
  v15[3] = v13;
  v15[4] = v3;
  v15[5] = v14;
  v16 = *(v12 + v11);
  v0[14] = v16;
  swift_bridgeObjectRetain_n();
  if (v16)
  {

    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_227631B58;

    sub_22708E1D4(sub_22708E1D4, sub_2276468DC, v15);
    return;
  }

  v19 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51008], v19);
  swift_willThrow();

  v18 = v0[1];
LABEL_19:

  v18();
}

uint64_t sub_227631F7C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = sub_227664E20();

  return MEMORY[0x2822009F8](sub_227632048, 0, 0);
}

uint64_t sub_227632048()
{
  v31 = v0;
  v1 = static RecentSearchTerm.representativeSamples()();
  v0[9] = v1;
  sub_22766A770();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v29 = v0[7];
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 134218242;
    *(v7 + 4) = v1[2];

    *(v7 + 12) = 2080;
    v0[2] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFA58, &qword_22768E1B8);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v30);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v2, v3, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v29, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = v1[2];
  v0[10] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v0[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {

    v26 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v0[9];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = v20 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v22 = (2 * v16) | 1;
  v23 = swift_allocObject();
  v0[13] = v23;
  v23[2] = v20;
  v23[3] = v21;
  v23[4] = 0;
  v23[5] = v22;
  v24 = *(v18 + v19);
  v0[14] = v24;
  swift_bridgeObjectRetain_n();
  if (v24)
  {

    v25 = swift_task_alloc();
    v0[15] = v25;
    *v25 = v0;
    v25[1] = sub_227632490;

    return sub_22708E1D4(sub_22708E1D4, sub_227646908, v23);
  }

  v27 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51008], v27);
  swift_willThrow();

  v26 = v0[1];
LABEL_16:

  return v26();
}

uint64_t sub_227632490()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_227646EF8;
  }

  else
  {
    v2 = sub_2276325AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_2276325AC()
{
  v1 = v0[12];
  v2 = v0[10];

  if (v1 >= v2)
  {

    v18 = v0[1];
    goto LABEL_19;
  }

  v3 = v0[12];
  v4 = v0[3];
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  v7 = (v6 >> 63) ^ 0x8000000000000000;
  if (!v5)
  {
    v7 = v6;
  }

  v0[12] = v7;
  if (v5)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v0[10])
  {
    v6 = v0[10];
  }

  if (v6 < v3)
  {
    goto LABEL_23;
  }

  if (v3 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = v0[9];
  v9 = *(v8 + 16);
  if (v9 < v3 || v9 < v6)
  {
    goto LABEL_25;
  }

  v11 = v0[11];
  v12 = v0[4];
  v13 = v8 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v14 = (2 * v6) | 1;
  v15 = swift_allocObject();
  v0[13] = v15;
  v15[2] = v8;
  v15[3] = v13;
  v15[4] = v3;
  v15[5] = v14;
  v16 = *(v12 + v11);
  v0[14] = v16;
  swift_bridgeObjectRetain_n();
  if (v16)
  {

    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_227632490;

    sub_22708E1D4(sub_22708E1D4, sub_227646908, v15);
    return;
  }

  v19 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51008], v19);
  swift_willThrow();

  v18 = v0[1];
LABEL_19:

  v18();
}

uint64_t sub_2276328B4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = sub_227664410();

  return MEMORY[0x2822009F8](sub_227632980, 0, 0);
}

uint64_t sub_227632980()
{
  v31 = v0;
  v1 = static Recommendation.representativeSamples()();
  v0[9] = v1;
  sub_22766A770();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v29 = v0[7];
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 134218242;
    *(v7 + 4) = v1[2];

    *(v7 + 12) = 2080;
    v0[2] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFA60, &qword_22768E1C0);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v30);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v2, v3, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v29, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = v1[2];
  v0[10] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v0[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {

    v26 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v0[9];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = v20 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v22 = (2 * v16) | 1;
  v23 = swift_allocObject();
  v0[13] = v23;
  v23[2] = v20;
  v23[3] = v21;
  v23[4] = 0;
  v23[5] = v22;
  v24 = *(v18 + v19);
  v0[14] = v24;
  swift_bridgeObjectRetain_n();
  if (v24)
  {

    v25 = swift_task_alloc();
    v0[15] = v25;
    *v25 = v0;
    v25[1] = sub_227632DC8;

    return sub_22708E1D4(sub_22708E1D4, sub_227646934, v23);
  }

  v27 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51008], v27);
  swift_willThrow();

  v26 = v0[1];
LABEL_16:

  return v26();
}

uint64_t sub_227632DC8()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_227646EF8;
  }

  else
  {
    v2 = sub_227632EE4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_227632EE4()
{
  v1 = v0[12];
  v2 = v0[10];

  if (v1 >= v2)
  {

    v18 = v0[1];
    goto LABEL_19;
  }

  v3 = v0[12];
  v4 = v0[3];
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  v7 = (v6 >> 63) ^ 0x8000000000000000;
  if (!v5)
  {
    v7 = v6;
  }

  v0[12] = v7;
  if (v5)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v0[10])
  {
    v6 = v0[10];
  }

  if (v6 < v3)
  {
    goto LABEL_23;
  }

  if (v3 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = v0[9];
  v9 = *(v8 + 16);
  if (v9 < v3 || v9 < v6)
  {
    goto LABEL_25;
  }

  v11 = v0[11];
  v12 = v0[4];
  v13 = v8 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v14 = (2 * v6) | 1;
  v15 = swift_allocObject();
  v0[13] = v15;
  v15[2] = v8;
  v15[3] = v13;
  v15[4] = v3;
  v15[5] = v14;
  v16 = *(v12 + v11);
  v0[14] = v16;
  swift_bridgeObjectRetain_n();
  if (v16)
  {

    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_227632DC8;

    sub_22708E1D4(sub_22708E1D4, sub_227646934, v15);
    return;
  }

  v19 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51008], v19);
  swift_willThrow();

  v18 = v0[1];
LABEL_19:

  v18();
}

uint64_t sub_2276331EC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = sub_227668700();

  return MEMORY[0x2822009F8](sub_2276332B8, 0, 0);
}

uint64_t sub_2276332B8()
{
  v31 = v0;
  v1 = static RemoteBrowsingConnectionRecord.representativeSamples()();
  v0[9] = v1;
  sub_22766A770();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v29 = v0[7];
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 134218242;
    *(v7 + 4) = v1[2];

    *(v7 + 12) = 2080;
    v0[2] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFA68, &qword_22768E1C8);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v30);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v2, v3, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v29, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = v1[2];
  v0[10] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v0[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {

    v26 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v0[9];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = v20 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v22 = (2 * v16) | 1;
  v23 = swift_allocObject();
  v0[13] = v23;
  v23[2] = v20;
  v23[3] = v21;
  v23[4] = 0;
  v23[5] = v22;
  v24 = *(v18 + v19);
  v0[14] = v24;
  swift_bridgeObjectRetain_n();
  if (v24)
  {

    v25 = swift_task_alloc();
    v0[15] = v25;
    *v25 = v0;
    v25[1] = sub_227633700;

    return sub_22708E1D4(sub_22708E1D4, sub_227646960, v23);
  }

  v27 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51008], v27);
  swift_willThrow();

  v26 = v0[1];
LABEL_16:

  return v26();
}

uint64_t sub_227633700()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_227646EF8;
  }

  else
  {
    v2 = sub_22763381C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_22763381C()
{
  v1 = v0[12];
  v2 = v0[10];

  if (v1 >= v2)
  {

    v18 = v0[1];
    goto LABEL_19;
  }

  v3 = v0[12];
  v4 = v0[3];
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  v7 = (v6 >> 63) ^ 0x8000000000000000;
  if (!v5)
  {
    v7 = v6;
  }

  v0[12] = v7;
  if (v5)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v0[10])
  {
    v6 = v0[10];
  }

  if (v6 < v3)
  {
    goto LABEL_23;
  }

  if (v3 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = v0[9];
  v9 = *(v8 + 16);
  if (v9 < v3 || v9 < v6)
  {
    goto LABEL_25;
  }

  v11 = v0[11];
  v12 = v0[4];
  v13 = v8 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v14 = (2 * v6) | 1;
  v15 = swift_allocObject();
  v0[13] = v15;
  v15[2] = v8;
  v15[3] = v13;
  v15[4] = v3;
  v15[5] = v14;
  v16 = *(v12 + v11);
  v0[14] = v16;
  swift_bridgeObjectRetain_n();
  if (v16)
  {

    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_227633700;

    sub_22708E1D4(sub_22708E1D4, sub_227646960, v15);
    return;
  }

  v19 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51008], v19);
  swift_willThrow();

  v18 = v0[1];
LABEL_19:

  v18();
}

uint64_t sub_227633B24(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = sub_227667E50();

  return MEMORY[0x2822009F8](sub_227633BF0, 0, 0);
}

uint64_t sub_227633BF0()
{
  v31 = v0;
  v1 = static SampleContentArchivedSession.representativeSamples()();
  v0[9] = v1;
  sub_22766A770();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v29 = v0[7];
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 134218242;
    *(v7 + 4) = v1[2];

    *(v7 + 12) = 2080;
    v0[2] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFA70, &qword_22768E1D0);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v30);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v2, v3, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v29, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = v1[2];
  v0[10] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v0[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {

    v26 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v0[9];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = v20 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v22 = (2 * v16) | 1;
  v23 = swift_allocObject();
  v0[13] = v23;
  v23[2] = v20;
  v23[3] = v21;
  v23[4] = 0;
  v23[5] = v22;
  v24 = *(v18 + v19);
  v0[14] = v24;
  swift_bridgeObjectRetain_n();
  if (v24)
  {

    v25 = swift_task_alloc();
    v0[15] = v25;
    *v25 = v0;
    v25[1] = sub_227634038;

    return sub_22708E1D4(sub_22708E1D4, sub_22764698C, v23);
  }

  v27 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51008], v27);
  swift_willThrow();

  v26 = v0[1];
LABEL_16:

  return v26();
}

uint64_t sub_227634038()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_227646EF8;
  }

  else
  {
    v2 = sub_227634154;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_227634154()
{
  v1 = v0[12];
  v2 = v0[10];

  if (v1 >= v2)
  {

    v18 = v0[1];
    goto LABEL_19;
  }

  v3 = v0[12];
  v4 = v0[3];
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  v7 = (v6 >> 63) ^ 0x8000000000000000;
  if (!v5)
  {
    v7 = v6;
  }

  v0[12] = v7;
  if (v5)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v0[10])
  {
    v6 = v0[10];
  }

  if (v6 < v3)
  {
    goto LABEL_23;
  }

  if (v3 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = v0[9];
  v9 = *(v8 + 16);
  if (v9 < v3 || v9 < v6)
  {
    goto LABEL_25;
  }

  v11 = v0[11];
  v12 = v0[4];
  v13 = v8 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v14 = (2 * v6) | 1;
  v15 = swift_allocObject();
  v0[13] = v15;
  v15[2] = v8;
  v15[3] = v13;
  v15[4] = v3;
  v15[5] = v14;
  v16 = *(v12 + v11);
  v0[14] = v16;
  swift_bridgeObjectRetain_n();
  if (v16)
  {

    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_227634038;

    sub_22708E1D4(sub_22708E1D4, sub_22764698C, v15);
    return;
  }

  v19 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51008], v19);
  swift_willThrow();

  v18 = v0[1];
LABEL_19:

  v18();
}

uint64_t sub_22763445C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = sub_227663C10();

  return MEMORY[0x2822009F8](sub_227634528, 0, 0);
}

uint64_t sub_227634528()
{
  v31 = v0;
  v1 = static ScoreSummary.representativeSamples()();
  v0[9] = v1;
  sub_22766A770();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v29 = v0[7];
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 134218242;
    *(v7 + 4) = v1[2];

    *(v7 + 12) = 2080;
    v0[2] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFA78, &qword_22768E1D8);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v30);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v2, v3, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v29, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = v1[2];
  v0[10] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v0[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {

    v26 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v0[9];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = v20 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v22 = (2 * v16) | 1;
  v23 = swift_allocObject();
  v0[13] = v23;
  v23[2] = v20;
  v23[3] = v21;
  v23[4] = 0;
  v23[5] = v22;
  v24 = *(v18 + v19);
  v0[14] = v24;
  swift_bridgeObjectRetain_n();
  if (v24)
  {

    v25 = swift_task_alloc();
    v0[15] = v25;
    *v25 = v0;
    v25[1] = sub_227634970;

    return sub_22708E1D4(sub_22708E1D4, sub_2276469B8, v23);
  }

  v27 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51008], v27);
  swift_willThrow();

  v26 = v0[1];
LABEL_16:

  return v26();
}

uint64_t sub_227634970()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_227646EF8;
  }

  else
  {
    v2 = sub_227634A8C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_227634A8C()
{
  v1 = v0[12];
  v2 = v0[10];

  if (v1 >= v2)
  {

    v18 = v0[1];
    goto LABEL_19;
  }

  v3 = v0[12];
  v4 = v0[3];
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  v7 = (v6 >> 63) ^ 0x8000000000000000;
  if (!v5)
  {
    v7 = v6;
  }

  v0[12] = v7;
  if (v5)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v0[10])
  {
    v6 = v0[10];
  }

  if (v6 < v3)
  {
    goto LABEL_23;
  }

  if (v3 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = v0[9];
  v9 = *(v8 + 16);
  if (v9 < v3 || v9 < v6)
  {
    goto LABEL_25;
  }

  v11 = v0[11];
  v12 = v0[4];
  v13 = v8 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v14 = (2 * v6) | 1;
  v15 = swift_allocObject();
  v0[13] = v15;
  v15[2] = v8;
  v15[3] = v13;
  v15[4] = v3;
  v15[5] = v14;
  v16 = *(v12 + v11);
  v0[14] = v16;
  swift_bridgeObjectRetain_n();
  if (v16)
  {

    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_227634970;

    sub_22708E1D4(sub_22708E1D4, sub_2276469B8, v15);
    return;
  }

  v19 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51008], v19);
  swift_willThrow();

  v18 = v0[1];
LABEL_19:

  v18();
}

uint64_t sub_227634D94(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = sub_2276640A0();

  return MEMORY[0x2822009F8](sub_227634E60, 0, 0);
}

uint64_t sub_227634E60()
{
  v31 = v0;
  v1 = static SessionScores.representativeSamples()();
  v0[9] = v1;
  sub_22766A770();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v29 = v0[7];
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 134218242;
    *(v7 + 4) = v1[2];

    *(v7 + 12) = 2080;
    v0[2] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFA80, &qword_22768E1E0);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v30);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v2, v3, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v29, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = v1[2];
  v0[10] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v0[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {

    v26 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v0[9];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = v20 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v22 = (2 * v16) | 1;
  v23 = swift_allocObject();
  v0[13] = v23;
  v23[2] = v20;
  v23[3] = v21;
  v23[4] = 0;
  v23[5] = v22;
  v24 = *(v18 + v19);
  v0[14] = v24;
  swift_bridgeObjectRetain_n();
  if (v24)
  {

    v25 = swift_task_alloc();
    v0[15] = v25;
    *v25 = v0;
    v25[1] = sub_2276352A8;

    return sub_22708E1D4(sub_22708E1D4, sub_2276469E4, v23);
  }

  v27 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51008], v27);
  swift_willThrow();

  v26 = v0[1];
LABEL_16:

  return v26();
}

uint64_t sub_2276352A8()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_227646EF8;
  }

  else
  {
    v2 = sub_2276353C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_2276353C4()
{
  v1 = v0[12];
  v2 = v0[10];

  if (v1 >= v2)
  {

    v18 = v0[1];
    goto LABEL_19;
  }

  v3 = v0[12];
  v4 = v0[3];
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  v7 = (v6 >> 63) ^ 0x8000000000000000;
  if (!v5)
  {
    v7 = v6;
  }

  v0[12] = v7;
  if (v5)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v0[10])
  {
    v6 = v0[10];
  }

  if (v6 < v3)
  {
    goto LABEL_23;
  }

  if (v3 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = v0[9];
  v9 = *(v8 + 16);
  if (v9 < v3 || v9 < v6)
  {
    goto LABEL_25;
  }

  v11 = v0[11];
  v12 = v0[4];
  v13 = v8 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v14 = (2 * v6) | 1;
  v15 = swift_allocObject();
  v0[13] = v15;
  v15[2] = v8;
  v15[3] = v13;
  v15[4] = v3;
  v15[5] = v14;
  v16 = *(v12 + v11);
  v0[14] = v16;
  swift_bridgeObjectRetain_n();
  if (v16)
  {

    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_2276352A8;

    sub_22708E1D4(sub_22708E1D4, sub_2276469E4, v15);
    return;
  }

  v19 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51008], v19);
  swift_willThrow();

  v18 = v0[1];
LABEL_19:

  v18();
}

uint64_t sub_2276356CC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = sub_2276633A0();

  return MEMORY[0x2822009F8](sub_227635798, 0, 0);
}

uint64_t sub_227635798()
{
  v31 = v0;
  v1 = static SkillLevel.representativeSamples()();
  v0[9] = v1;
  sub_22766A770();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v29 = v0[7];
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 134218242;
    *(v7 + 4) = v1[2];

    *(v7 + 12) = 2080;
    v0[2] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFA88, &qword_22768E1E8);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v30);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v2, v3, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v29, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = v1[2];
  v0[10] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v0[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {

    v26 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v0[9];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = v20 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v22 = (2 * v16) | 1;
  v23 = swift_allocObject();
  v0[13] = v23;
  v23[2] = v20;
  v23[3] = v21;
  v23[4] = 0;
  v23[5] = v22;
  v24 = *(v18 + v19);
  v0[14] = v24;
  swift_bridgeObjectRetain_n();
  if (v24)
  {

    v25 = swift_task_alloc();
    v0[15] = v25;
    *v25 = v0;
    v25[1] = sub_227635BE0;

    return sub_22708E1D4(sub_22708E1D4, sub_227646A10, v23);
  }

  v27 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51008], v27);
  swift_willThrow();

  v26 = v0[1];
LABEL_16:

  return v26();
}

uint64_t sub_227635BE0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_227646EF8;
  }

  else
  {
    v2 = sub_227635CFC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_227635CFC()
{
  v1 = v0[12];
  v2 = v0[10];

  if (v1 >= v2)
  {

    v18 = v0[1];
    goto LABEL_19;
  }

  v3 = v0[12];
  v4 = v0[3];
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  v7 = (v6 >> 63) ^ 0x8000000000000000;
  if (!v5)
  {
    v7 = v6;
  }

  v0[12] = v7;
  if (v5)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v0[10])
  {
    v6 = v0[10];
  }

  if (v6 < v3)
  {
    goto LABEL_23;
  }

  if (v3 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = v0[9];
  v9 = *(v8 + 16);
  if (v9 < v3 || v9 < v6)
  {
    goto LABEL_25;
  }

  v11 = v0[11];
  v12 = v0[4];
  v13 = v8 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v14 = (2 * v6) | 1;
  v15 = swift_allocObject();
  v0[13] = v15;
  v15[2] = v8;
  v15[3] = v13;
  v15[4] = v3;
  v15[5] = v14;
  v16 = *(v12 + v11);
  v0[14] = v16;
  swift_bridgeObjectRetain_n();
  if (v16)
  {

    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_227635BE0;

    sub_22708E1D4(sub_22708E1D4, sub_227646A10, v15);
    return;
  }

  v19 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51008], v19);
  swift_willThrow();

  v18 = v0[1];
LABEL_19:

  v18();
}

uint64_t sub_227636004(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2276360C4, 0, 0);
}

uint64_t sub_2276360C4(uint64_t a1)
{
  v30 = v1;
  v2 = sub_22721814C(a1);
  v1[8] = v2;
  sub_22766A770();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v1[6];
    v28 = v1[7];
    v6 = v1[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v7 = 134218242;
    *(v7 + 4) = *(v2 + 16);

    *(v7 + 12) = 2080;
    v1[2] = &type metadata for SkillLevelIdentifier;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFA90, &qword_22768E1F0);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v29);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v3, v4, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v28, v6);
  }

  else
  {
    v14 = v1[6];
    v13 = v1[7];
    v15 = v1[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v1[3];
  v17 = *(v2 + 16);
  v1[9] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v1[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v1[10] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {

    v25 = v1[1];
    goto LABEL_16;
  }

  v1[11] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v1[8];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = (2 * v16) | 1;
  v22 = swift_allocObject();
  v1[12] = v22;
  v22[2] = v20;
  v22[3] = v20 + 32;
  v22[4] = 0;
  v22[5] = v21;
  v23 = *(v18 + v19);
  v1[13] = v23;
  swift_bridgeObjectRetain_n();
  if (v23)
  {

    v24 = swift_task_alloc();
    v1[14] = v24;
    *v24 = v1;
    v24[1] = sub_2276364E0;

    return sub_22708E1D4(sub_22708E1D4, sub_227646A3C, v22);
  }

  v26 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277D51008], v26);
  swift_willThrow();

  v25 = v1[1];
LABEL_16:

  return v25();
}

uint64_t sub_2276364E0()
{
  *(*v1 + 120) = v0;

  if (v0)
  {

    v2 = sub_227646EFC;
  }

  else
  {
    v2 = sub_2276365FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_2276365FC()
{
  v1 = v0[11];
  v2 = v0[9];

  if (v1 >= v2)
  {

    v17 = v0[1];
    goto LABEL_19;
  }

  v3 = v0[11];
  v4 = v0[3];
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  v7 = (v6 >> 63) ^ 0x8000000000000000;
  if (!v5)
  {
    v7 = v6;
  }

  v0[11] = v7;
  if (v5)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v0[9])
  {
    v6 = v0[9];
  }

  if (v6 < v3)
  {
    goto LABEL_23;
  }

  if (v3 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = v0[8];
  v9 = *(v8 + 16);
  if (v9 < v3 || v9 < v6)
  {
    goto LABEL_25;
  }

  v11 = v0[10];
  v12 = v0[4];
  v13 = (2 * v6) | 1;
  v14 = swift_allocObject();
  v0[12] = v14;
  v14[2] = v8;
  v14[3] = v8 + 32;
  v14[4] = v3;
  v14[5] = v13;
  v15 = *(v12 + v11);
  v0[13] = v15;
  swift_bridgeObjectRetain_n();
  if (v15)
  {

    v16 = swift_task_alloc();
    v0[14] = v16;
    *v16 = v0;
    v16[1] = sub_2276364E0;

    sub_22708E1D4(sub_22708E1D4, sub_227646A3C, v14);
    return;
  }

  v18 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51008], v18);
  swift_willThrow();

  v17 = v0[1];
LABEL_19:

  v17();
}

uint64_t sub_2276368CC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = sub_2276653A0();

  return MEMORY[0x2822009F8](sub_227636998, 0, 0);
}

uint64_t sub_227636998()
{
  v31 = v0;
  v1 = static SocialMediaHandle.representativeSamples()();
  v0[9] = v1;
  sub_22766A770();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v29 = v0[7];
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 134218242;
    *(v7 + 4) = v1[2];

    *(v7 + 12) = 2080;
    v0[2] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFA98, &qword_22768E1F8);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v30);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v2, v3, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v29, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = v1[2];
  v0[10] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v0[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {

    v26 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v0[9];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = v20 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v22 = (2 * v16) | 1;
  v23 = swift_allocObject();
  v0[13] = v23;
  v23[2] = v20;
  v23[3] = v21;
  v23[4] = 0;
  v23[5] = v22;
  v24 = *(v18 + v19);
  v0[14] = v24;
  swift_bridgeObjectRetain_n();
  if (v24)
  {

    v25 = swift_task_alloc();
    v0[15] = v25;
    *v25 = v0;
    v25[1] = sub_227636DE0;

    return sub_22708E1D4(sub_22708E1D4, sub_227646A68, v23);
  }

  v27 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51008], v27);
  swift_willThrow();

  v26 = v0[1];
LABEL_16:

  return v26();
}

uint64_t sub_227636DE0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_227646EF8;
  }

  else
  {
    v2 = sub_227636EFC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_227636EFC()
{
  v1 = v0[12];
  v2 = v0[10];

  if (v1 >= v2)
  {

    v18 = v0[1];
    goto LABEL_19;
  }

  v3 = v0[12];
  v4 = v0[3];
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  v7 = (v6 >> 63) ^ 0x8000000000000000;
  if (!v5)
  {
    v7 = v6;
  }

  v0[12] = v7;
  if (v5)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v0[10])
  {
    v6 = v0[10];
  }

  if (v6 < v3)
  {
    goto LABEL_23;
  }

  if (v3 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = v0[9];
  v9 = *(v8 + 16);
  if (v9 < v3 || v9 < v6)
  {
    goto LABEL_25;
  }

  v11 = v0[11];
  v12 = v0[4];
  v13 = v8 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v14 = (2 * v6) | 1;
  v15 = swift_allocObject();
  v0[13] = v15;
  v15[2] = v8;
  v15[3] = v13;
  v15[4] = v3;
  v15[5] = v14;
  v16 = *(v12 + v11);
  v0[14] = v16;
  swift_bridgeObjectRetain_n();
  if (v16)
  {

    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_227636DE0;

    sub_22708E1D4(sub_22708E1D4, sub_227646A68, v15);
    return;
  }

  v19 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51008], v19);
  swift_willThrow();

  v18 = v0[1];
LABEL_19:

  v18();
}

uint64_t sub_227637204(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2276372C4, 0, 0);
}

uint64_t sub_2276372C4(uint64_t a1)
{
  v31 = v1;
  _s15SeymourServices17StreamingKeyNonceV21representativeSamplesSayACGyFZ_0(a1);
  v3 = v2;
  v1[8] = v2;
  sub_22766A770();

  v4 = sub_22766B380();
  v5 = sub_22766C8B0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[6];
    v29 = v1[7];
    v7 = v1[5];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v30 = v9;
    *v8 = 134218242;
    *(v8 + 4) = *(v3 + 16);

    *(v8 + 12) = 2080;
    v1[2] = &type metadata for StreamingKeyNonce;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFAA0, &qword_22768E200);
    v10 = sub_22766C060();
    v12 = sub_226E97AE8(v10, v11, &v30);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_226E8E000, v4, v5, "Inserting %ld samples for type %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    result = (*(v6 + 8))(v29, v7);
  }

  else
  {
    v15 = v1[6];
    v14 = v1[7];
    v16 = v1[5];

    result = (*(v15 + 8))(v14, v16);
  }

  v17 = v1[3];
  v18 = *(v3 + 16);
  v1[9] = v18;
  if (!v17)
  {
    __break(1u);
    goto LABEL_20;
  }

  v19 = v1[4];
  v20 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v1[10] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v17 < 1 || !v18)
  {

    v26 = v1[1];
    goto LABEL_16;
  }

  v1[11] = v17;
  if (v17 >= v18)
  {
    v17 = v18;
  }

  v21 = v1[8];
  if (*(v21 + 16) < v17)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v22 = (2 * v17) | 1;
  v23 = swift_allocObject();
  v1[12] = v23;
  v23[2] = v21;
  v23[3] = v21 + 32;
  v23[4] = 0;
  v23[5] = v22;
  v24 = *(v19 + v20);
  v1[13] = v24;
  swift_bridgeObjectRetain_n();
  if (v24)
  {

    v25 = swift_task_alloc();
    v1[14] = v25;
    *v25 = v1;
    v25[1] = sub_2276376E0;

    return sub_22708E1D4(sub_22708E1D4, sub_227646A94, v23);
  }

  v27 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51008], v27);
  swift_willThrow();

  v26 = v1[1];
LABEL_16:

  return v26();
}

uint64_t sub_2276376E0()
{
  *(*v1 + 120) = v0;

  if (v0)
  {

    v2 = sub_227646EFC;
  }

  else
  {
    v2 = sub_2276377FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_2276377FC()
{
  v1 = v0[11];
  v2 = v0[9];

  if (v1 >= v2)
  {

    v17 = v0[1];
    goto LABEL_19;
  }

  v3 = v0[11];
  v4 = v0[3];
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  v7 = (v6 >> 63) ^ 0x8000000000000000;
  if (!v5)
  {
    v7 = v6;
  }

  v0[11] = v7;
  if (v5)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v0[9])
  {
    v6 = v0[9];
  }

  if (v6 < v3)
  {
    goto LABEL_23;
  }

  if (v3 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = v0[8];
  v9 = *(v8 + 16);
  if (v9 < v3 || v9 < v6)
  {
    goto LABEL_25;
  }

  v11 = v0[10];
  v12 = v0[4];
  v13 = (2 * v6) | 1;
  v14 = swift_allocObject();
  v0[12] = v14;
  v14[2] = v8;
  v14[3] = v8 + 32;
  v14[4] = v3;
  v14[5] = v13;
  v15 = *(v12 + v11);
  v0[13] = v15;
  swift_bridgeObjectRetain_n();
  if (v15)
  {

    v16 = swift_task_alloc();
    v0[14] = v16;
    *v16 = v0;
    v16[1] = sub_2276376E0;

    sub_22708E1D4(sub_22708E1D4, sub_227646A94, v14);
    return;
  }

  v18 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51008], v18);
  swift_willThrow();

  v17 = v0[1];
LABEL_19:

  v17();
}

uint64_t sub_227637ACC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for SyncChangeTag(0);

  return MEMORY[0x2822009F8](sub_227637B98, 0, 0);
}

uint64_t sub_227637B98()
{
  v31 = v0;
  v1 = sub_227336B08();
  v0[9] = v1;
  sub_22766A770();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v29 = v0[7];
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 134218242;
    *(v7 + 4) = *(v1 + 16);

    *(v7 + 12) = 2080;
    v0[2] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFAA8, &qword_22768E208);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v30);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v2, v3, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v29, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = *(v1 + 16);
  v0[10] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v0[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {

    v26 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v0[9];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = v20 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v22 = (2 * v16) | 1;
  v23 = swift_allocObject();
  v0[13] = v23;
  v23[2] = v20;
  v23[3] = v21;
  v23[4] = 0;
  v23[5] = v22;
  v24 = *(v18 + v19);
  v0[14] = v24;
  swift_bridgeObjectRetain_n();
  if (v24)
  {

    v25 = swift_task_alloc();
    v0[15] = v25;
    *v25 = v0;
    v25[1] = sub_227637FE0;

    return sub_22708E1D4(sub_22708E1D4, sub_227646AC0, v23);
  }

  v27 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51008], v27);
  swift_willThrow();

  v26 = v0[1];
LABEL_16:

  return v26();
}

uint64_t sub_227637FE0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_227646EF8;
  }

  else
  {
    v2 = sub_2276380FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_2276380FC()
{
  v1 = v0[12];
  v2 = v0[10];

  if (v1 >= v2)
  {

    v18 = v0[1];
    goto LABEL_19;
  }

  v3 = v0[12];
  v4 = v0[3];
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  v7 = (v6 >> 63) ^ 0x8000000000000000;
  if (!v5)
  {
    v7 = v6;
  }

  v0[12] = v7;
  if (v5)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v0[10])
  {
    v6 = v0[10];
  }

  if (v6 < v3)
  {
    goto LABEL_23;
  }

  if (v3 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = v0[9];
  v9 = *(v8 + 16);
  if (v9 < v3 || v9 < v6)
  {
    goto LABEL_25;
  }

  v11 = v0[11];
  v12 = v0[4];
  v13 = v8 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v14 = (2 * v6) | 1;
  v15 = swift_allocObject();
  v0[13] = v15;
  v15[2] = v8;
  v15[3] = v13;
  v15[4] = v3;
  v15[5] = v14;
  v16 = *(v12 + v11);
  v0[14] = v16;
  swift_bridgeObjectRetain_n();
  if (v16)
  {

    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_227637FE0;

    sub_22708E1D4(sub_22708E1D4, sub_227646AC0, v15);
    return;
  }

  v19 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51008], v19);
  swift_willThrow();

  v18 = v0[1];
LABEL_19:

  v18();
}

uint64_t sub_227638404(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for SyncZoneChangeWindow(0);

  return MEMORY[0x2822009F8](sub_2276384D0, 0, 0);
}

uint64_t sub_2276384D0()
{
  v31 = v0;
  v1 = sub_226F5DC58();
  v0[9] = v1;
  sub_22766A770();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v29 = v0[7];
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 134218242;
    *(v7 + 4) = *(v1 + 16);

    *(v7 + 12) = 2080;
    v0[2] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BFAB0, &qword_22768E210);
    v9 = sub_22766C060();
    v11 = sub_226E97AE8(v9, v10, &v30);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_226E8E000, v2, v3, "Inserting %ld samples for type %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    result = (*(v5 + 8))(v29, v6);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];

    result = (*(v14 + 8))(v13, v15);
  }

  v16 = v0[3];
  v17 = *(v1 + 16);
  v0[10] = v17;
  if (!v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = v0[4];
  v19 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v0[11] = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  if (v16 < 1 || !v17)
  {

    v26 = v0[1];
    goto LABEL_16;
  }

  v0[12] = v16;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v20 = v0[9];
  if (*(v20 + 16) < v16)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v21 = v20 + ((*(*(v0[8] - 8) + 80) + 32) & ~*(*(v0[8] - 8) + 80));
  v22 = (2 * v16) | 1;
  v23 = swift_allocObject();
  v0[13] = v23;
  v23[2] = v20;
  v23[3] = v21;
  v23[4] = 0;
  v23[5] = v22;
  v24 = *(v18 + v19);
  v0[14] = v24;
  swift_bridgeObjectRetain_n();
  if (v24)
  {

    v25 = swift_task_alloc();
    v0[15] = v25;
    *v25 = v0;
    v25[1] = sub_227638918;

    return sub_22708E1D4(sub_22708E1D4, sub_227646AEC, v23);
  }

  v27 = sub_227664DD0();
  sub_22764662C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51008], v27);
  swift_willThrow();

  v26 = v0[1];
LABEL_16:

  return v26();
}