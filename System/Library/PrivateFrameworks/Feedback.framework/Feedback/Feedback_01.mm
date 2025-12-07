uint64_t sub_1B8B41108@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v2 = a1;
  v3 = sub_1B8C238B8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6290, &qword_1B8C2F800);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6280, &unk_1B8C285B0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v34 - v17;
  v19 = (v4 + 48);
  if (v2)
  {
    sub_1B8C23918();
    if ((*v19)(v10, 1, v3))
    {
      sub_1B8B3433C(v10, &qword_1EBAA6290, &qword_1B8C2F800);
      v20 = sub_1B8C23938();
      v21 = *(v20 - 8);
      (*(v21 + 56))(v16, 1, 1, v20);
      sub_1B8C238D8();
      result = (*(v21 + 48))(v16, 1, v20);
      if (result == 1)
      {
        return result;
      }

      v23 = v16;
      return sub_1B8B3433C(v23, &qword_1EBAA6280, &unk_1B8C285B0);
    }

    (*(v4 + 16))(v6, v10, v3);
    sub_1B8B3433C(v10, &qword_1EBAA6290, &qword_1B8C2F800);
    sub_1B8C23878();
    (*(v4 + 8))(v6, v3);
    v26 = sub_1B8C23938();
    v27 = *(v26 - 8);
    v28 = *(v27 + 56);
    v28(v16, 0, 1, v26);
    v29 = v35;
    (*(v27 + 32))(v35, v16, v26);
    return (v28)(v29, 0, 1, v26);
  }

  else
  {
    sub_1B8C238F8();
    if ((*v19)(v12, 1, v3))
    {
      sub_1B8B3433C(v12, &qword_1EBAA6290, &qword_1B8C2F800);
      v24 = sub_1B8C23938();
      v25 = *(v24 - 8);
      (*(v25 + 56))(v18, 1, 1, v24);
      sub_1B8C237F8();
      result = (*(v25 + 48))(v18, 1, v24);
      if (result == 1)
      {
        return result;
      }

      v23 = v18;
      return sub_1B8B3433C(v23, &qword_1EBAA6280, &unk_1B8C285B0);
    }

    (*(v4 + 16))(v6, v12, v3);
    sub_1B8B3433C(v12, &qword_1EBAA6290, &qword_1B8C2F800);
    sub_1B8C23878();
    (*(v4 + 8))(v6, v3);
    v30 = sub_1B8C23938();
    v31 = *(v30 - 8);
    v32 = *(v31 + 56);
    v32(v18, 0, 1, v30);
    v33 = v35;
    (*(v31 + 32))(v35, v18, v30);
    return (v32)(v33, 0, 1, v30);
  }
}

uint64_t sub_1B8B41648@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B8C23568();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void *sub_1B8B416B4()
{
  swift_getKeyPath();
  sub_1B8B46314(&qword_1EBAA6258, type metadata accessor for NullableBatchInteraction, &unk_1B8C284D0);
  sub_1B8C23588();

  v1 = *(v0 + OBJC_IVAR____TtC8Feedback24NullableBatchInteraction__donation);
  v2 = v1;
  return v1;
}

id sub_1B8B41764@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B46314(&qword_1EBAA6258, type metadata accessor for NullableBatchInteraction, &unk_1B8C284D0);
  sub_1B8C23588();

  v4 = *(v3 + OBJC_IVAR____TtC8Feedback24NullableBatchInteraction__donation);
  *a2 = v4;

  return v4;
}

void sub_1B8B41824(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8Feedback24NullableBatchInteraction__donation;
  v5 = *(v1 + OBJC_IVAR____TtC8Feedback24NullableBatchInteraction__donation);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8B46314(&qword_1EBAA6258, type metadata accessor for NullableBatchInteraction, &unk_1B8C284D0);
    sub_1B8C23578();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1B8C23688();
  v6 = v5;
  v7 = a1;
  v8 = sub_1B8C255E8();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_1B8B419AC(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = type metadata accessor for BatchInteraction.ContentPreview(0);
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v4 = sub_1B8C237B8();
  v2[23] = v4;
  v2[24] = *(v4 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  sub_1B8C23688();
  v5 = OBJC_IVAR____TtC8Feedback24NullableBatchInteraction_id;
  v2[27] = OBJC_IVAR____TtC8Feedback24NullableBatchInteraction_id;
  v6 = swift_task_alloc();
  v2[28] = v6;
  *v6 = v2;
  v6[1] = sub_1B8B41B3C;

  return MEMORY[0x1EEE03E80](v1 + v5);
}

uint64_t sub_1B8B41B3C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 232) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1B8B41CA4, 0, 0);
  }
}

uint64_t sub_1B8B41CA4()
{
  v1 = v0[29];
  v2 = v1;
  sub_1B8B41824(v1);
  if (!v1)
  {
    sub_1B8B463B0(v3, v4, v5);
    swift_allocError();
    *v21 = 0;
    v21[1] = 0;
    swift_willThrow();
LABEL_20:

    v31 = v0[1];

    return v31();
  }

  v6 = v0[26];
  v7 = v0[23];
  v8 = v0[24];
  v9 = v2;
  sub_1B8C237C8();

  v10 = (*(v8 + 88))(v6, v7);
  v11 = v0[26];
  v12 = v0[23];
  v13 = v0[24];
  if (v10 == *MEMORY[0x1E699C380])
  {
    (*(v13 + 96))(v0[26], v12);
    v14 = *v11;
    v15 = v11[1];
    if (v14 == 0x6164696C61766E69 && v15 == 0xEA00000000006574)
    {

LABEL_19:
      sub_1B8B463B0(v18, v19, v20);
      swift_allocError();
      *v30 = xmmword_1B8C28170;
      swift_willThrow();

      goto LABEL_20;
    }

    v17 = sub_1B8C25A08();

    if (v17)
    {
      goto LABEL_19;
    }
  }

  else
  {
    (*(v13 + 8))(v0[26], v12);
  }

  v22 = sub_1B8C0976C(v9);
  if (v23 || (v22 = sub_1B8C23948(), v23))
  {
    v24 = v22;
    v25 = v23;
    type metadata accessor for AppInfoController(0);
    v26 = swift_allocObject();
    v26[3] = 0;
    v26[4] = 0;
    v26[2] = 0;
    sub_1B8C235B8();
    v26[5] = v24;
    v26[6] = v25;
  }

  else
  {
    v26 = 0;
  }

  v0[30] = v26;
  sub_1B8B8061C(v9, (v0 + 12));
  v27 = v0[15];
  sub_1B8B3433C((v0 + 12), &qword_1EBAA6270, &qword_1B8C285A0);
  if (v27)
  {
    v28 = swift_task_alloc();
    v0[31] = v28;
    *v28 = v0;
    v28[1] = sub_1B8B4201C;

    return sub_1B8B7FFCC((v0 + 2), v9);
  }

  else
  {
    v32 = v9;
    v33 = swift_task_alloc();
    v0[33] = v33;
    *v33 = v0;
    v33[1] = sub_1B8B422C0;
    v34 = v0[22];

    return sub_1B8B401E4(v34, v32, 0);
  }
}

uint64_t sub_1B8B4201C()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {

    v3 = sub_1B8B42724;
  }

  else
  {
    v3 = sub_1B8B42138;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B8B42138()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 160);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);

  v5 = sub_1B8C23568();
  (*(*(v5 - 8) + 16))(v3, v4 + v1, v5);
  v6 = type metadata accessor for BatchInteraction(0);
  v7 = (v3 + v6[7]);
  *v7 = *(v0 + 16);
  v8 = *(v0 + 32);
  v9 = *(v0 + 48);
  v10 = *(v0 + 64);
  *(v7 + 57) = *(v0 + 73);
  v7[2] = v9;
  v7[3] = v10;
  v7[1] = v8;
  swift_storeEnumTagMultiPayload();
  v12 = *(v0 + 232);
  v11 = *(v0 + 240);
  v13 = *(v0 + 136);
  (*(v2 + 56))(v7, 0, 1, *(v0 + 152));
  type metadata accessor for BatchInteraction.ContentPolarity(0);
  swift_storeEnumTagMultiPayload();
  v14 = v6[6];
  *(v13 + v6[5]) = v12;
  *(v13 + v14) = v11;

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1B8B422C0()
{
  v2 = *v1;
  v3 = *v1;
  v2[34] = v0;

  v4 = v2[29];
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B8B429E4, 0, 0);
  }

  else
  {
    v5 = v4;
    v6 = swift_task_alloc();
    v2[35] = v6;
    *v6 = v3;
    v6[1] = sub_1B8B42464;
    v7 = v2[21];

    return sub_1B8B401E4(v7, v5, 1);
  }
}

uint64_t sub_1B8B42464()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_1B8B42A7C;
  }

  else
  {
    v2 = sub_1B8B42578;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8B42578()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  v4 = *(v0 + 152);
  v5 = *(v0 + 160);
  v6 = *(v0 + 136);
  v7 = *(v0 + 144);

  v8 = sub_1B8C23568();
  (*(*(v8 - 8) + 16))(v6, v7 + v1, v8);
  v9 = type metadata accessor for BatchInteraction(0);
  v10 = v6 + v9[7];
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5FD8, &qword_1B8C28560) + 48);
  sub_1B8B46248(v3, v10);
  v12 = *(v5 + 56);
  v12(v10, 0, 1, v4);
  sub_1B8B46248(v2, v10 + v11);
  v13 = *(v0 + 232);
  v14 = *(v0 + 240);
  v15 = *(v0 + 136);
  v12(v10 + v11, 0, 1, *(v0 + 152));
  type metadata accessor for BatchInteraction.ContentPolarity(0);
  swift_storeEnumTagMultiPayload();
  v16 = v9[6];
  *(v15 + v9[5]) = v13;
  *(v15 + v16) = v14;

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1B8B42724()
{
  v26 = v0;
  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v1 = v0[32];
  v2 = v0[29];
  v3 = sub_1B8C23C38();
  __swift_project_value_buffer(v3, qword_1EBAB3A30);
  v4 = v2;
  v5 = v1;
  v6 = sub_1B8C23C18();
  v7 = sub_1B8C25478();

  if (os_log_type_enabled(v6, v7))
  {
    v23 = v0[32];
    v8 = v0[24];
    v9 = v0[25];
    v10 = v0[23];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v11 = 136446466;
    sub_1B8C237C8();
    sub_1B8B46314(&qword_1EBAA6278, MEMORY[0x1E699C390], MEMORY[0x1E699C3A8]);
    v13 = sub_1B8C259E8();
    v15 = v14;
    (*(v8 + 8))(v9, v10);
    v16 = sub_1B8B5DD48(v13, v15, &v25);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2114;
    v17 = v23;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v18;
    *v12 = v18;
    _os_log_impl(&dword_1B8B22000, v6, v7, "FBKSInteraction.Content is for %{public}s but failed with error: %{public}@", v11, 0x16u);
    sub_1B8B3433C(v12, &qword_1EBAA69A0, &qword_1B8C29670);
    MEMORY[0x1B8CCB0E0](v12, -1, -1);
    v19 = __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x1B8CCB0E0](v24, -1, -1, v19);
    MEMORY[0x1B8CCB0E0](v11, -1, -1);
  }

  v20 = v0[29];
  swift_willThrow();

  v21 = v0[1];

  return v21();
}

uint64_t sub_1B8B429E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B8B42A7C()
{
  v1 = v0[29];
  v2 = v0[22];

  sub_1B8B461E8(v2, type metadata accessor for BatchInteraction.ContentPreview);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B8B42B38(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = type metadata accessor for AnalyticsEvent(0);
  v2[6] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[7] = v4;
  *v4 = v2;
  v4[1] = sub_1B8B42C04;

  return sub_1B8B419AC(a1);
}

uint64_t sub_1B8B42C04()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1B8B430CC;
  }

  else
  {
    v2 = sub_1B8B42D18;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8B42D18()
{
  v14 = v0;
  v1 = v0[3];
  v2 = *(v1 + *(type metadata accessor for BatchInteraction(0) + 24));
  v0[9] = v2;
  if (v2)
  {
    v3 = qword_1EBAA5978;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_1B8C23C38();
    __swift_project_value_buffer(v4, qword_1EBAB3A30);
    v5 = sub_1B8C23C18();
    v6 = sub_1B8C25468();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1B8B5DD48(0x292864616F6CLL, 0xE600000000000000, &v13);
      _os_log_impl(&dword_1B8B22000, v5, v6, "%s - interaction has appInfoController", v7, 0xCu);
      v9 = __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x1B8CCB0E0](v8, -1, -1, v9);
      MEMORY[0x1B8CCB0E0](v7, -1, -1);
    }

    v10 = swift_task_alloc();
    v0[10] = v10;
    *v10 = v0;
    v10[1] = sub_1B8B42F64;

    return MEMORY[0x1EEE6DDE0]();
  }

  else
  {

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1B8B42F64()
{

  return MEMORY[0x1EEE6DFA0](sub_1B8B43060, 0, 0);
}

uint64_t sub_1B8B43060()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B8B430CC()
{
  v26 = v0;
  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_1B8C23C38();
  v0[11] = __swift_project_value_buffer(v2, qword_1EBAB3A30);
  v3 = v1;
  v4 = sub_1B8C23C18();
  v5 = sub_1B8C25478();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[8];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1B8B22000, v4, v5, "Error loading data on interaction: %{public}@", v7, 0xCu);
    sub_1B8B3433C(v8, &qword_1EBAA69A0, &qword_1B8C29670);
    MEMORY[0x1B8CCB0E0](v8, -1, -1);
    MEMORY[0x1B8CCB0E0](v7, -1, -1);
  }

  v11 = v0[4];

  swift_getKeyPath();
  v0[2] = v11;
  sub_1B8B46314(&qword_1EBAA6258, type metadata accessor for NullableBatchInteraction, &unk_1B8C284D0);
  sub_1B8C23588();

  v12 = *(v11 + OBJC_IVAR____TtC8Feedback24NullableBatchInteraction__donation);
  v0[12] = v12;
  if (v12)
  {
    v12;

    v13 = sub_1B8C23C18();
    v14 = sub_1B8C25478();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = v16;
      *v15 = 136315138;
      sub_1B8C23568();
      sub_1B8B46314(&qword_1EBAA6260, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v17 = sub_1B8C259E8();
      v19 = sub_1B8B5DD48(v17, v18, &v25);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1B8B22000, v13, v14, "Will invalidate: %s", v15, 0xCu);
      v20 = __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x1B8CCB0E0](v16, -1, -1, v20);
      MEMORY[0x1B8CCB0E0](v15, -1, -1);
    }

    v24 = (*MEMORY[0x1E699C1A0] + MEMORY[0x1E699C1A0]);
    v21 = swift_task_alloc();
    v0[13] = v21;
    *v21 = v0;
    v21[1] = sub_1B8B434D0;

    return v24();
  }

  else
  {
    swift_willThrow();

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_1B8B434D0()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1B8B436BC;
  }

  else
  {
    v2 = sub_1B8B435E4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8B435E4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 96);
  sub_1B8C237C8();

  swift_storeEnumTagMultiPayload();
  sub_1B8C03B68();

  sub_1B8B461E8(v1, type metadata accessor for AnalyticsEvent);
  swift_willThrow();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B8B436BC()
{
  v15 = v0;

  v1 = sub_1B8C23C18();
  v2 = sub_1B8C25478();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[14];
  v5 = v0[12];
  if (v3)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    sub_1B8C23568();
    sub_1B8B46314(&qword_1EBAA6260, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v8 = sub_1B8C259E8();
    v10 = sub_1B8B5DD48(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1B8B22000, v1, v2, "Failed to invalidate interaction: %s", v6, 0xCu);
    v11 = __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B8CCB0E0](v7, -1, -1, v11);
    MEMORY[0x1B8CCB0E0](v6, -1, -1);
  }

  else
  {
  }

  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1B8B438A4()
{
  v1 = OBJC_IVAR____TtC8Feedback24NullableBatchInteraction_id;
  v2 = sub_1B8C23568();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC8Feedback24NullableBatchInteraction___observationRegistrar;
  v4 = sub_1B8C235C8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1B8B439B8(uint64_t a1)
{
  result = sub_1B8C23568();
  if (v2 <= 0x3F)
  {
    result = sub_1B8C235C8();
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

void sub_1B8B43AF4(uint64_t a1)
{
  sub_1B8C23568();
  if (v1 <= 0x3F)
  {
    sub_1B8C23688();
    if (v2 <= 0x3F)
    {
      sub_1B8B43C54(319, &qword_1EBAA61F0, type metadata accessor for AppInfoController);
      if (v3 <= 0x3F)
      {
        type metadata accessor for BatchInteraction.ContentPolarity(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B8B43BC4(uint64_t a1)
{
  sub_1B8B43C54(319, &qword_1EBAA6020, type metadata accessor for BatchInteraction.ContentPreview);
  if (v1 <= 0x3F)
  {
    sub_1B8B43CC8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1B8B43C54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B8C25608();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B8B43CC8(uint64_t a1)
{
  if (!qword_1EBAA6208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6008, &qword_1B8C2A5B0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBAA6208);
    }
  }
}

void sub_1B8B43D3C(uint64_t a1)
{
  sub_1B8B46130(319, &qword_1EBAA6220, 0x1E69DCAB8);
  if (v1 <= 0x3F)
  {
    sub_1B8B43DE8(319);
    if (v2 <= 0x3F)
    {
      sub_1B8C23328();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1B8B43DE8(uint64_t a1)
{
  if (!qword_1EBAA6228)
  {
    sub_1B8B46130(255, &qword_1EBAA6220, 0x1E69DCAB8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBAA6228);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_8Feedback30ImagePlaygroundDonationDecoderV6ResultV6PersonVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_8Feedback22GenmojiDonationDecoderV6ResultV6PersonOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B8B43ED4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 73))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 72);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B8B43F1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B8B43F8C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8Feedback24NullableBatchInteraction_id;
  v5 = sub_1B8C23568();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1B8B44024(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1B8C25A08() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1B8B440B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CatchUpDonationDecoder.Result.Mail(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v10 = (&v20 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_28:
    v18 = 0;
    return v18 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1B8B462AC(v13, v10, type metadata accessor for CatchUpDonationDecoder.Result.Mail);
      sub_1B8B462AC(v14, v7, type metadata accessor for CatchUpDonationDecoder.Result.Mail);
      v16 = *v10 == *v7 && v10[1] == v7[1];
      if (!v16 && (sub_1B8C25A08() & 1) == 0)
      {
        break;
      }

      v17 = v10[2] == v7[2] && v10[3] == v7[3];
      if (!v17 && (sub_1B8C25A08() & 1) == 0 || (v10[4] != v7[4] || v10[5] != v7[5]) && (sub_1B8C25A08() & 1) == 0)
      {
        break;
      }

      if ((v10[6] != v7[6] || v10[7] != v7[7]) && (sub_1B8C25A08() & 1) == 0 || (sub_1B8C23508() & 1) == 0 || (sub_1B8C23548() & 1) == 0)
      {
        break;
      }

      v18 = sub_1B8C23318();
      sub_1B8B461E8(v7, type metadata accessor for CatchUpDonationDecoder.Result.Mail);
      sub_1B8B461E8(v10, type metadata accessor for CatchUpDonationDecoder.Result.Mail);
      if (v18)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_1B8B461E8(v7, type metadata accessor for CatchUpDonationDecoder.Result.Mail);
    sub_1B8B461E8(v10, type metadata accessor for CatchUpDonationDecoder.Result.Mail);
    goto LABEL_28;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t sub_1B8B4435C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CatchUpDonationDecoder.Result.Message(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v10 = (&v20 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_23:
    v18 = 0;
    return v18 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1B8B462AC(v13, v10, type metadata accessor for CatchUpDonationDecoder.Result.Message);
      sub_1B8B462AC(v14, v7, type metadata accessor for CatchUpDonationDecoder.Result.Message);
      v16 = *v10 == *v7 && v10[1] == v7[1];
      if (!v16 && (sub_1B8C25A08() & 1) == 0)
      {
        break;
      }

      v17 = v10[2] == v7[2] && v10[3] == v7[3];
      if (!v17 && (sub_1B8C25A08() & 1) == 0 || (sub_1B8C23508() & 1) == 0 || (sub_1B8C23318() & 1) == 0 || *(v10 + *(v4 + 32)) != *(v7 + *(v4 + 32)))
      {
        break;
      }

      v18 = sub_1B8C23548();
      sub_1B8B461E8(v7, type metadata accessor for CatchUpDonationDecoder.Result.Message);
      sub_1B8B461E8(v10, type metadata accessor for CatchUpDonationDecoder.Result.Message);
      if (v18)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_1B8B461E8(v7, type metadata accessor for CatchUpDonationDecoder.Result.Message);
    sub_1B8B461E8(v10, type metadata accessor for CatchUpDonationDecoder.Result.Message);
    goto LABEL_23;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t sub_1B8B445D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 48);
    for (i = (a2 + 48); ; i += 3)
    {
      v5 = *v3;
      v6 = *i;
      v7 = *(v3 - 2) == *(i - 2) && *(v3 - 1) == *(i - 1);
      if (!v7 && (sub_1B8C25A08() & 1) == 0)
      {
        break;
      }

      v8 = sub_1B8B446D0(v5, v6);

      if ((v8 & 1) == 0)
      {
        break;
      }

      v3 += 3;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1B8B446D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 56);
  for (i = (a2 + 56); ; i += 32)
  {
    v6 = *(v3 - 3);
    v5 = *(v3 - 2);
    v8 = *(i - 3);
    v7 = *(i - 2);
    v9 = *i;
    if (!*v3)
    {
      if (*i)
      {
        return 0;
      }

      if (v6 != v8 || v5 != v7)
      {
LABEL_5:
        if ((sub_1B8C25A08() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

      goto LABEL_6;
    }

    if (*v3 == 1)
    {
      if (v9 != 1)
      {
        return 0;
      }

      if (v6 != v8 || v5 != v7)
      {
        goto LABEL_5;
      }

      goto LABEL_6;
    }

    if (v9 != 2)
    {
      return 0;
    }

    v11 = *(v3 - 1);
    v12 = *(i - 1);
    sub_1B8B46130(0, &qword_1EBAA6238, 0x1E69E58C0);
    sub_1B8B46850(v8, v7, v12, 2u);
    sub_1B8B46850(v6, v5, v11, 2u);
    if ((sub_1B8C255E8() & 1) == 0)
    {
      v18 = v8;
      v19 = v7;
      v20 = v12;
LABEL_34:
      sub_1B8B468BC(v18, v19, v20, 2u);
      v13 = v6;
      v14 = v5;
      v21 = v11;
      goto LABEL_35;
    }

    if (!v11)
    {
      break;
    }

    if (!v12)
    {
      v18 = v8;
      v19 = v7;
      v20 = 0;
      goto LABEL_34;
    }

    if (v5 == v7 && v11 == v12)
    {
      sub_1B8B468BC(v8, v5, v11, 2u);
      v13 = v6;
      v14 = v5;
      v15 = v11;
LABEL_28:
      sub_1B8B468BC(v13, v14, v15, 2u);
      goto LABEL_6;
    }

    v16 = sub_1B8C25A08();
    sub_1B8B468BC(v8, v7, v12, 2u);
    sub_1B8B468BC(v6, v5, v11, 2u);
    if ((v16 & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    v3 += 32;
    if (!--v2)
    {
      return 1;
    }
  }

  sub_1B8B468BC(v6, v5, 0, 2u);
  v13 = v8;
  v14 = v7;
  if (!v12)
  {
    v15 = 0;
    goto LABEL_28;
  }

  v21 = v12;
LABEL_35:
  sub_1B8B468BC(v13, v14, v21, 2u);
  return 0;
}

uint64_t sub_1B8B4491C(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      LOBYTE(v4) = 1;
      return v4 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v4 = v12 - 4;
        v13 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1B8CCA4C0](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v4 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          if (!v11)
          {
LABEL_24:
            if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            goto LABEL_26;
          }
        }

        MEMORY[0x1B8CCA4C0](v12 - 4, a2);
LABEL_26:
        LOBYTE(v4) = sub_1B8C23548();

        if (v4)
        {
          ++v12;
          if (v13 != v5)
          {
            continue;
          }
        }

        return v4 & 1;
      }
    }

    v14 = (v3 + 32);
    v15 = (a2 + 32);
    v16 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v17 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v18 = v5 - 1;
    while (1)
    {
      if (!v16)
      {
        goto LABEL_40;
      }

      if (!v17)
      {
        break;
      }

      v19 = *v14++;
      a2 = v19;
      v20 = *v15++;
      v3 = v20;

      v4 = sub_1B8C23548();

      v22 = v18-- != 0;
      if (v4)
      {
        --v17;
        --v16;
        if (v22)
        {
          continue;
        }
      }

      return v4 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_1B8C258B8();
  }

  result = sub_1B8C258B8();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  LOBYTE(v4) = 0;
  return v4 & 1;
}

uint64_t sub_1B8B44B6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BatchInteraction(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_17:
    v20 = 0;
    return v20 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1B8B462AC(v13, v10, type metadata accessor for BatchInteraction);
      sub_1B8B462AC(v14, v7, type metadata accessor for BatchInteraction);
      if ((sub_1B8C23548() & 1) == 0)
      {
        break;
      }

      sub_1B8B46130(0, &qword_1EBAA6238, 0x1E69E58C0);
      if ((sub_1B8C255E8() & 1) == 0)
      {
        break;
      }

      v16 = *(v4 + 24);
      v17 = *&v10[v16];
      v18 = *&v7[v16];
      if (v17)
      {
        if (!v18)
        {
          break;
        }

        v19 = sub_1B8C09398(v17, v18);

        if ((v19 & 1) == 0)
        {
          break;
        }
      }

      else if (v18)
      {
        break;
      }

      v20 = sub_1B8B456E8(&v10[*(v4 + 28)], &v7[*(v4 + 28)]);
      sub_1B8B461E8(v7, type metadata accessor for BatchInteraction);
      sub_1B8B461E8(v10, type metadata accessor for BatchInteraction);
      if (v20)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    sub_1B8B461E8(v7, type metadata accessor for BatchInteraction);
    sub_1B8B461E8(v10, type metadata accessor for BatchInteraction);
    goto LABEL_17;
  }

  v20 = 1;
  return v20 & 1;
}

uint64_t sub_1B8B44DE8(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

BOOL sub_1B8B44E48(uint64_t a1, __int128 *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (!*(a1 + 72))
  {
    if (!*(a2 + 72))
    {
      if (*(a1 + 8))
      {
        if ((*(a2 + 8) & 1) == 0 || (sub_1B8B4435C(v3, *a2) & 1) == 0)
        {
          return 0;
        }
      }

      else if ((*(a2 + 8) & 1) != 0 || (sub_1B8B440B4(v3, *a2) & 1) == 0)
      {
        return 0;
      }

      return 1;
    }

    return 0;
  }

  if (*(a1 + 72) != 1)
  {
    v14 = v3;
    v15 = v4;
    v16 = *(a1 + 9);
    v17 = *(a1 + 25);
    *v18 = *(a1 + 41);
    if (*(a2 + 72) == 2)
    {
      v8 = a2[1];
      v10 = *a2;
      v11 = v8;
      *v12 = a2[2];
      *&v12[9] = *(a2 + 41);
      return sub_1B8B47980(&v14, &v10);
    }

    return 0;
  }

  v14 = v3;
  v15 = v4;
  v16 = *(a1 + 9);
  v17 = *(a1 + 25);
  *v18 = *(a1 + 41);
  *&v18[15] = *(a1 + 56);
  if (*(a2 + 72) != 1)
  {
    return 0;
  }

  v5 = a2[3];
  *v12 = a2[2];
  *&v12[16] = v5;
  v13 = *(a2 + 8);
  v6 = a2[1];
  v10 = *a2;
  v11 = v6;
  return sub_1B8C061C8(&v14, &v10);
}

uint64_t sub_1B8B44F78(uint64_t a1, uint64_t a2)
{
  v66 = a2;
  v3 = sub_1B8C23328();
  v64 = *(v3 - 8);
  v65 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v62 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BatchInteraction.ContentPreview(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = (&v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v6);
  v63 = &v61 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v61 - v12);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (&v61 - v15);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = (&v61 - v18);
  MEMORY[0x1EEE9AC00](v17);
  v21 = (&v61 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6250, &qword_1B8C28568);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v61 - v24;
  v26 = &v61 + *(v23 + 56) - v24;
  v27 = a1;
  v28 = v26;
  sub_1B8B462AC(v27, v25, type metadata accessor for BatchInteraction.ContentPreview);
  sub_1B8B462AC(v66, v28, type metadata accessor for BatchInteraction.ContentPreview);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1B8B462AC(v25, v13, type metadata accessor for BatchInteraction.ContentPreview);
      v41 = *v13;
      v40 = v13[1];
      v42 = v13[2];
      if (swift_getEnumCaseMultiPayload() != 3)
      {

        goto LABEL_37;
      }

      v44 = *v28;
      v43 = *(v28 + 8);
      v45 = *(v28 + 16);
      sub_1B8B46130(0, &qword_1EBAA6238, 0x1E69E58C0);
      v46 = sub_1B8C255E8();

      if (v46)
      {
        if (v40 != v43 || v42 != v45)
        {
          v48 = sub_1B8C25A08();

          if ((v48 & 1) == 0)
          {
            goto LABEL_52;
          }

          goto LABEL_49;
        }

        goto LABEL_48;
      }

LABEL_52:
      sub_1B8B461E8(v25, type metadata accessor for BatchInteraction.ContentPreview);
      goto LABEL_53;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v34 = v63;
      sub_1B8B462AC(v25, v63, type metadata accessor for BatchInteraction.ContentPreview);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        (*(v64 + 8))(v34, v65);
        goto LABEL_37;
      }

      v36 = v64;
      v35 = v65;
      v37 = v62;
      (*(v64 + 32))(v62, v28, v65);
      v38 = sub_1B8C23318();
      v39 = *(v36 + 8);
      v39(v37, v35);
      v39(v34, v35);
      goto LABEL_27;
    }

    sub_1B8B462AC(v25, v8, type metadata accessor for BatchInteraction.ContentPreview);
    v51 = v8[3];
    v69[2] = v8[2];
    v70[0] = v51;
    *(v70 + 9) = *(v8 + 57);
    v52 = v8[1];
    v69[0] = *v8;
    v69[1] = v52;
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      sub_1B8B3F338(v69);
      goto LABEL_37;
    }

    v53 = *(v28 + 48);
    v67[2] = *(v28 + 32);
    v68[0] = v53;
    *(v68 + 9) = *(v28 + 57);
    v54 = *(v28 + 16);
    v67[0] = *v28;
    v67[1] = v54;
    if (BYTE8(v70[1]))
    {
      if (BYTE8(v70[1]) == 1)
      {
        v71 = *&v69[0];
        v72 = BYTE8(v69[0]);
        v73 = *(v8 + 9);
        v74 = *(v8 + 25);
        *v75 = *(v8 + 41);
        *&v75[15] = *(v8 + 56);
        if (BYTE8(v68[1]) == 1)
        {
          v55 = *(v28 + 48);
          *v78 = *(v28 + 32);
          *&v78[16] = v55;
          v79 = *(v28 + 64);
          v56 = *(v28 + 16);
          v76 = *v28;
          v77 = v56;
          v57 = sub_1B8C061C8(&v71, &v76);
          goto LABEL_46;
        }

        goto LABEL_51;
      }

      v71 = *&v69[0];
      v72 = BYTE8(v69[0]);
      v73 = *(v8 + 9);
      v74 = *(v8 + 25);
      *v75 = *(v8 + 41);
      if (BYTE8(v68[1]) == 2)
      {
        v58 = *(v28 + 16);
        v76 = *v28;
        v77 = v58;
        *v78 = *(v28 + 32);
        *&v78[9] = *(v28 + 41);
        v57 = sub_1B8B47980(&v71, &v76);
        goto LABEL_46;
      }
    }

    else if (!BYTE8(v68[1]))
    {
      if (BYTE8(v69[0]))
      {
        if (BYTE8(v67[0]))
        {
          v57 = sub_1B8B4435C(*&v69[0], *&v67[0]);
          goto LABEL_46;
        }
      }

      else if ((BYTE8(v67[0]) & 1) == 0)
      {
        v57 = sub_1B8B440B4(*&v69[0], *&v67[0]);
LABEL_46:
        v59 = v57;
        sub_1B8B3F338(v67);
        sub_1B8B3F338(v69);
        if ((v59 & 1) == 0)
        {
          goto LABEL_52;
        }

        goto LABEL_49;
      }
    }

LABEL_51:
    sub_1B8B3F338(v67);
    sub_1B8B3F338(v69);
    goto LABEL_52;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1B8B462AC(v25, v21, type metadata accessor for BatchInteraction.ContentPreview);
    v31 = *v21;
    v30 = v21[1];
    if (!swift_getEnumCaseMultiPayload())
    {
LABEL_5:
      if (v31 != *v28 || v30 != *(v28 + 8))
      {
        v33 = sub_1B8C25A08();

        if ((v33 & 1) == 0)
        {
          goto LABEL_52;
        }

        goto LABEL_49;
      }

LABEL_48:

LABEL_49:
      sub_1B8B461E8(v25, type metadata accessor for BatchInteraction.ContentPreview);
      v38 = 1;
      return v38 & 1;
    }

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1B8B462AC(v25, v19, type metadata accessor for BatchInteraction.ContentPreview);
    v31 = *v19;
    v30 = v19[1];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      goto LABEL_5;
    }

LABEL_16:

LABEL_37:
    sub_1B8B3433C(v25, &qword_1EBAA6250, &qword_1B8C28568);
LABEL_53:
    v38 = 0;
    return v38 & 1;
  }

  sub_1B8B462AC(v25, v16, type metadata accessor for BatchInteraction.ContentPreview);
  v49 = *v16;
  if (swift_getEnumCaseMultiPayload() != 2)
  {

    goto LABEL_37;
  }

  v50 = *v28;
  sub_1B8B46130(0, &qword_1EBAA6238, 0x1E69E58C0);
  v38 = sub_1B8C255E8();

LABEL_27:
  sub_1B8B461E8(v25, type metadata accessor for BatchInteraction.ContentPreview);
  return v38 & 1;
}

uint64_t sub_1B8B456E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BatchInteraction.ContentPreview(0);
  v68 = *(v4 - 8);
  v69 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v65 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6008, &qword_1B8C2A5B0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v61 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v64 = &v61 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v67 = &v61 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v66 = &v61 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v63 = &v61 - v15;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6240, &qword_1B8C28550);
  v16 = MEMORY[0x1EEE9AC00](v70);
  v62 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v61 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v61 - v21;
  v23 = type metadata accessor for BatchInteraction.ContentPolarity(0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v61 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6248, &qword_1B8C28558);
  v30 = MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = &v61 - v31;
  v33 = &v61 + *(v30 + 56) - v31;
  sub_1B8B462AC(a1, &v61 - v31, type metadata accessor for BatchInteraction.ContentPolarity);
  sub_1B8B462AC(a2, v33, type metadata accessor for BatchInteraction.ContentPolarity);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B8B462AC(v32, v26, type metadata accessor for BatchInteraction.ContentPolarity);
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5FD8, &qword_1B8C28560) + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v35 = v66;
      sub_1B8B46178(&v26[v34], v66);
      v36 = v67;
      sub_1B8B46178(&v33[v34], v67);
      v37 = *(v70 + 48);
      sub_1B8B46178(v26, v20);
      sub_1B8B46178(v33, &v20[v37]);
      v38 = v69;
      v39 = *(v68 + 48);
      if (v39(v20, 1, v69) == 1)
      {
        if (v39(&v20[v37], 1, v38) == 1)
        {
          sub_1B8B3433C(v20, &qword_1EBAA6008, &qword_1B8C2A5B0);
LABEL_21:
          v52 = v36;
          v53 = *(v70 + 48);
          v54 = v62;
          sub_1B8B34450(v35, v62, &qword_1EBAA6008, &qword_1B8C2A5B0);
          sub_1B8B34450(v52, v54 + v53, &qword_1EBAA6008, &qword_1B8C2A5B0);
          if (v39(v54, 1, v38) == 1)
          {
            sub_1B8B3433C(v52, &qword_1EBAA6008, &qword_1B8C2A5B0);
            sub_1B8B3433C(v35, &qword_1EBAA6008, &qword_1B8C2A5B0);
            if (v39(v54 + v53, 1, v38) == 1)
            {
              v43 = v54;
              goto LABEL_24;
            }
          }

          else
          {
            v57 = v61;
            sub_1B8B34450(v54, v61, &qword_1EBAA6008, &qword_1B8C2A5B0);
            if (v39(v54 + v53, 1, v38) != 1)
            {
              v59 = v65;
              sub_1B8B46248(v54 + v53, v65);
              v60 = sub_1B8B44F78(v57, v59);
              sub_1B8B461E8(v59, type metadata accessor for BatchInteraction.ContentPreview);
              sub_1B8B3433C(v67, &qword_1EBAA6008, &qword_1B8C2A5B0);
              sub_1B8B3433C(v35, &qword_1EBAA6008, &qword_1B8C2A5B0);
              sub_1B8B461E8(v57, type metadata accessor for BatchInteraction.ContentPreview);
              sub_1B8B3433C(v54, &qword_1EBAA6008, &qword_1B8C2A5B0);
              if (v60)
              {
                goto LABEL_35;
              }

              goto LABEL_31;
            }

            sub_1B8B3433C(v67, &qword_1EBAA6008, &qword_1B8C2A5B0);
            sub_1B8B3433C(v35, &qword_1EBAA6008, &qword_1B8C2A5B0);
            sub_1B8B461E8(v57, type metadata accessor for BatchInteraction.ContentPreview);
          }

          v46 = &qword_1EBAA6240;
          v47 = &qword_1B8C28550;
          v45 = v54;
          goto LABEL_30;
        }
      }

      else
      {
        v44 = v64;
        sub_1B8B34450(v20, v64, &qword_1EBAA6008, &qword_1B8C2A5B0);
        if (v39(&v20[v37], 1, v38) != 1)
        {
          v49 = v65;
          sub_1B8B46248(&v20[v37], v65);
          v50 = sub_1B8B44F78(v44, v49);
          v51 = v49;
          v36 = v67;
          sub_1B8B461E8(v51, type metadata accessor for BatchInteraction.ContentPreview);
          sub_1B8B461E8(v44, type metadata accessor for BatchInteraction.ContentPreview);
          sub_1B8B3433C(v20, &qword_1EBAA6008, &qword_1B8C2A5B0);
          if (v50)
          {
            goto LABEL_21;
          }

          goto LABEL_16;
        }

        sub_1B8B461E8(v44, type metadata accessor for BatchInteraction.ContentPreview);
      }

      sub_1B8B3433C(v20, &qword_1EBAA6240, &qword_1B8C28550);
LABEL_16:
      sub_1B8B3433C(v36, &qword_1EBAA6008, &qword_1B8C2A5B0);
      v45 = v35;
      v46 = &qword_1EBAA6008;
      v47 = &qword_1B8C2A5B0;
      goto LABEL_30;
    }

    sub_1B8B3433C(&v26[v34], &qword_1EBAA6008, &qword_1B8C2A5B0);
  }

  else
  {
    sub_1B8B462AC(v32, v28, type metadata accessor for BatchInteraction.ContentPolarity);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v40 = *(v70 + 48);
      sub_1B8B46178(v28, v22);
      sub_1B8B46178(v33, &v22[v40]);
      v41 = v69;
      v42 = *(v68 + 48);
      if (v42(v22, 1, v69) == 1)
      {
        if (v42(&v22[v40], 1, v41) == 1)
        {
          v43 = v22;
LABEL_24:
          sub_1B8B3433C(v43, &qword_1EBAA6008, &qword_1B8C2A5B0);
LABEL_35:
          sub_1B8B461E8(v32, type metadata accessor for BatchInteraction.ContentPolarity);
          return 1;
        }
      }

      else
      {
        v48 = v63;
        sub_1B8B34450(v22, v63, &qword_1EBAA6008, &qword_1B8C2A5B0);
        if (v42(&v22[v40], 1, v41) != 1)
        {
          v55 = v65;
          sub_1B8B46248(&v22[v40], v65);
          v56 = sub_1B8B44F78(v48, v55);
          sub_1B8B461E8(v55, type metadata accessor for BatchInteraction.ContentPreview);
          sub_1B8B461E8(v48, type metadata accessor for BatchInteraction.ContentPreview);
          sub_1B8B3433C(v22, &qword_1EBAA6008, &qword_1B8C2A5B0);
          if (v56)
          {
            goto LABEL_35;
          }

          goto LABEL_31;
        }

        sub_1B8B461E8(v48, type metadata accessor for BatchInteraction.ContentPreview);
      }

      v46 = &qword_1EBAA6240;
      v47 = &qword_1B8C28550;
      v45 = v22;
LABEL_30:
      sub_1B8B3433C(v45, v46, v47);
LABEL_31:
      sub_1B8B461E8(v32, type metadata accessor for BatchInteraction.ContentPolarity);
      return 0;
    }

    v26 = v28;
  }

  sub_1B8B3433C(v26, &qword_1EBAA6008, &qword_1B8C2A5B0);
  sub_1B8B3433C(v32, &qword_1EBAA6248, &qword_1B8C28558);
  return 0;
}

uint64_t sub_1B8B46048(uint64_t a1, uint64_t a2)
{
  if ((sub_1B8C23548() & 1) == 0)
  {
    return 0;
  }

  sub_1B8B46130(0, &qword_1EBAA6238, 0x1E69E58C0);
  v4 = type metadata accessor for BatchInteraction(0);
  if ((sub_1B8C255E8() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (!v6)
  {
    if (!v7)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (!v7)
  {
    return 0;
  }

  v8 = sub_1B8C09398(v6, v7);

  if ((v8 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  v9 = *(v4 + 28);

  return sub_1B8B456E8(a1 + v9, a2 + v9);
}

uint64_t sub_1B8B46130(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1B8B46178(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6008, &qword_1B8C2A5B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B461E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B8B46248(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BatchInteraction.ContentPreview(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B462AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B8B46314(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    (*(v1 + 8))();
  }

  return result;
}

unint64_t sub_1B8B463B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA6268;
  if (!qword_1EBAA6268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6268);
  }

  return result;
}

uint64_t sub_1B8B46424(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1B8B4645C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

void sub_1B8B464B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC8Feedback24NullableBatchInteraction__donation);
  *(v1 + OBJC_IVAR____TtC8Feedback24NullableBatchInteraction__donation) = v2;
  v4 = v2;
}

uint64_t sub_1B8B46540(uint64_t a1)
{
  result = sub_1B8C237E8();
  if (v2 <= 0x3F)
  {
    result = sub_1B8C23938();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8Feedback24NullableBatchInteractionC13LoadDataErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B8B465CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B8B46628(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_1B8B46678(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BatchInteraction.ContentPreview.Mode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BatchInteraction.ContentPreview.Mode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B8B467FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA62A8;
  if (!qword_1EBAA62A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA62A8);
  }

  return result;
}

id sub_1B8B46850(id result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 == 2)
  {
    v5 = result;

    return v5;
  }

  else if (a4 <= 1u)
  {
  }

  return result;
}

void *sub_1B8B468BC(void *result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 >= 2u)
  {
    if (a4 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1B8B46918()
{
  sub_1B8C25AB8();
  sub_1B8C251B8();

  return sub_1B8C25AF8();
}

uint64_t sub_1B8B469B8(uint64_t a1)
{
  sub_1B8C251B8();
}

uint64_t sub_1B8B46A44(uint64_t a1)
{
  sub_1B8C25AB8();
  sub_1B8C251B8();

  return sub_1B8C25AF8();
}

unint64_t sub_1B8B46AE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B8B48070(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B8B46B10(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6E616D6F77;
  if (v2 != 1)
  {
    v5 = 0x6E79676F72646E61;
    v4 = 0xEB0000000073756FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7233901;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1B8B46B6C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6E616D6F77;
  if (v2 != 1)
  {
    v4 = 0x6E79676F72646E61;
    v3 = 0xEB0000000073756FLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7233901;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6E616D6F77;
  if (*a2 != 1)
  {
    v8 = 0x6E79676F72646E61;
    v7 = 0xEB0000000073756FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7233901;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B8C25A08();
  }

  return v11 & 1;
}

uint64_t sub_1B8B46C70(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 1802658148;
    v6 = 0x6B72614470656564;
    if (a1 != 8)
    {
      v6 = 0x7473656B726164;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6D756964656DLL;
    if (a1 != 5)
    {
      v7 = 0x61446D756964656DLL;
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
    v1 = 0x6C6559696A6F6D65;
    v2 = 0x696146746867696CLL;
    v3 = 1919508838;
    if (a1 != 3)
    {
      v3 = 0x64654D746867696CLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x74736572696166;
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

uint64_t sub_1B8B46DB0()
{
  v1 = *v0;
  sub_1B8C25AB8();
  sub_1B8B46C70(v1);
  sub_1B8C251B8();

  return sub_1B8C25AF8();
}

uint64_t sub_1B8B46E14(uint64_t a1)
{
  sub_1B8B46C70(*v1);
  sub_1B8C251B8();
}

uint64_t sub_1B8B46E68(uint64_t a1)
{
  v2 = *v1;
  sub_1B8C25AB8();
  sub_1B8B46C70(v2);
  sub_1B8C251B8();

  return sub_1B8C25AF8();
}

unint64_t sub_1B8B46EC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B8B480BC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1B8B46EF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B8B46C70(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B8B46F24(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1B8B46C70(*a1);
  v5 = v4;
  if (v3 == sub_1B8B46C70(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B8C25A08();
  }

  return v8 & 1;
}

uint64_t sub_1B8B46FAC(__int16 a1)
{
  v1 = HIBYTE(a1);
  MEMORY[0x1B8CC9EB0](*&asc_1B8C28B38[8 * a1], 0xA400000000000000);

  if (v1 <= 3)
  {
    v5 = v1 - 2;
    v6 = 0xA400000000000000;
    v7 = 3146751984;
    if (!v1)
    {
      v7 = v1;
      v6 = 0xE000000000000000;
    }

    if (v5 >= 2)
    {
      v3 = v7;
    }

    else
    {
      v3 = 3163529200;
    }

    if (v5 >= 2)
    {
      v4 = v6;
    }

    else
    {
      v4 = 0xA400000000000000;
    }
  }

  else
  {
    v2 = 3197083632;
    if (((1 << v1) & 0xC0) == 0)
    {
      v2 = 3213860848;
    }

    if (((1 << v1) & 0x30) != 0)
    {
      v3 = 3180306416;
    }

    else
    {
      v3 = v2;
    }

    v4 = 0xA400000000000000;
  }

  MEMORY[0x1B8CC9EB0](v3, v4);

  return 0;
}

uint64_t sub_1B8B470B0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      return sub_1B8B477E8(v3, *a2);
    }

    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    return 0;
  }

  v4 = a1[1];
  if (v3 == *a2 && v4 == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B8C25A08();
  }
}

BOOL sub_1B8B47108(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_1B8B47980(v5, v7);
}

uint64_t sub_1B8B47164()
{
  v1 = sub_1B8C237B8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1B8C237C8();
  v6 = sub_1B8B4E0BC(v4, v5);
  (*(v2 + 8))(v4, v1);
  return v6 & 1;
}

uint64_t sub_1B8B4724C(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  v4 = swift_task_alloc();
  *(v2 + 104) = v4;
  *v4 = v2;
  v4[1] = sub_1B8B47300;

  return sub_1B8B48108(v2 + 16, a2);
}

uint64_t sub_1B8B47300()
{
  v2 = *v1;
  v3 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 96);
    *v4 = *(v2 + 16);
    v5 = *(v2 + 32);
    v6 = *(v2 + 48);
    v7 = *(v2 + 64);
    *(v4 + 57) = *(v2 + 73);
    v4[2] = v6;
    v4[3] = v7;
    v4[1] = v5;
  }

  v8 = *(v3 + 8);

  return v8();
}

unint64_t sub_1B8B47428@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
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

    v7 = sub_1B8C25288();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1B8B5D0A0(0, 1, 1, MEMORY[0x1E69E7CC0]);
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
    v14 = sub_1B8B5D0A0((a7 > 1), v10, 1, v14);
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
        v19 = sub_1B8C25268();
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

        v14 = sub_1B8C251D8();
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
        v18 = sub_1B8C251D8();
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
          v7 = sub_1B8C25288();
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

        v14 = sub_1B8B5D0A0(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1B8C25288();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1B8B5D0A0(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1B8B5D0A0((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1B8C251D8();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8B477E8(__int16 a1, __int16 a2)
{
  v2 = HIBYTE(a2);
  v3 = HIBYTE(a1);
  v4 = a1;
  if (!a1)
  {
    v6 = 0xE300000000000000;
    v5 = 7233901;
    v7 = a2;
    if (a2)
    {
      goto LABEL_9;
    }

LABEL_18:
    v9 = 0xE300000000000000;
    if (v5 != 7233901)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (a1 == 1)
  {
    v5 = 0x6E616D6F77;
  }

  else
  {
    v5 = 0x6E79676F72646E61;
  }

  if (v4 == 1)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xEB0000000073756FLL;
  }

  v7 = a2;
  if (!a2)
  {
    goto LABEL_18;
  }

LABEL_9:
  if (v7 == 1)
  {
    v8 = 0x6E616D6F77;
  }

  else
  {
    v8 = 0x6E79676F72646E61;
  }

  if (v7 == 1)
  {
    v9 = 0xE500000000000000;
  }

  else
  {
    v9 = 0xEB0000000073756FLL;
  }

  if (v5 != v8)
  {
LABEL_21:
    v10 = sub_1B8C25A08();

    v11 = 0;
    if ((v10 & 1) == 0)
    {
      return v11 & 1;
    }

    goto LABEL_22;
  }

LABEL_19:
  if (v6 != v9)
  {
    goto LABEL_21;
  }

LABEL_22:
  v12 = sub_1B8B46C70(v3);
  v14 = v13;
  if (v12 == sub_1B8B46C70(v2) && v14 == v15)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B8C25A08();
  }

  return v11 & 1;
}

BOOL sub_1B8B47980(uint64_t a1, uint64_t a2)
{
  sub_1B8B47A9C();
  if ((sub_1B8C255E8() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (sub_1B8C25A08() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 32);
  v6 = *(a2 + 32);
  if (v5)
  {
    if (!v6 || (*(a1 + 24) != *(a2 + 24) || v5 != v6) && (sub_1B8C25A08() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v7 = *(a1 + 56);
  v8 = *(a2 + 56);
  if (v7 == 255)
  {
    if (v8 == 255)
    {
      return 1;
    }
  }

  else if (v8 != 255)
  {
    v9 = *(a1 + 40);
    if (v7)
    {
      return (v8 & 1) != 0 && (v9 == *(a2 + 40) && *(a1 + 48) == *(a2 + 48) || (sub_1B8C25A08() & 1) != 0);
    }

    if (v8 & 1) == 0 && (sub_1B8B477E8(v9, *(a2 + 40)))
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1B8B47A9C()
{
  result = qword_1EBAA6238;
  if (!qword_1EBAA6238)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBAA6238);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1B8B47B14(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1B8B47B5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B8B47BBC(uint64_t a1)
{
  v63 = sub_1B8C23218();
  v2 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1B8B5F49C(MEMORY[0x1E69E7CC0]);
  v4 = *(a1 + 16);
  if (!v4)
  {
    return v66;
  }

  v5 = 0;
  v6 = a1 + 32;
  v61 = (v2 + 8);
  v64 = a1 + 32;
  v65 = v4;
  while (1)
  {
    v7 = (v6 + 32 * v5);
    v8 = *v7;
    v9 = *v7 >> 14;
    v10 = v7[1] >> 14;
    if (v9 != v10)
    {
      break;
    }

LABEL_5:
    if (++v5 == v4)
    {
      return v66;
    }
  }

  v69 = v5;

  v70 = MEMORY[0x1E69E7CC0];
  v11 = v8;
  while (1)
  {
    while (sub_1B8C25638() != 58 || v16 != 0xE100000000000000)
    {
      v17 = sub_1B8C25A08();

      if (v17)
      {
        goto LABEL_16;
      }

      result = sub_1B8C25618();
      v9 = result >> 14;
      if (result >> 14 == v10)
      {
LABEL_22:
        if (v11 >> 14 == v10)
        {

          v26 = v70;
          if (*(v70 + 2) > 1uLL)
          {
LABEL_31:
            v38 = *(v26 + 4);
            v39 = *(v26 + 5);
            v40 = *(v26 + 6);
            v41 = *(v26 + 7);

            v42 = MEMORY[0x1B8CC9E60](v38, v39, v40, v41);
            v44 = v43;

            if (*(v26 + 2) < 2uLL)
            {
              goto LABEL_36;
            }

            v45 = *(v26 + 8);
            v46 = *(v26 + 9);
            v48 = *(v26 + 10);
            v47 = *(v26 + 11);

            v49 = MEMORY[0x1B8CC9E60](v45, v46, v48, v47);
            v51 = v50;

            v71 = v49;
            v72 = v51;
            v52 = v62;
            v53 = sub_1B8C23208();
            sub_1B8B34CA8(v53, v54, v55);
            v56 = sub_1B8C25678();
            v58 = v57;
            (*v61)(v52, v63);

            v59 = v66;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v71 = v59;
            sub_1B8B5EE34(v56, v58, v42, v44, isUniquelyReferenced_nonNull_native);

            v66 = v71;
LABEL_4:
            v6 = v64;
            v4 = v65;
            v5 = v69;
            goto LABEL_5;
          }
        }

        else
        {
          if (v10 < v11 >> 14)
          {
            goto LABEL_35;
          }

          v27 = sub_1B8C25648();
          v29 = v28;
          v31 = v30;
          v33 = v32;

          v26 = v70;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = sub_1B8B5D0A0(0, *(v26 + 2) + 1, 1, v26);
          }

          v35 = *(v26 + 2);
          v34 = *(v26 + 3);
          v36 = v35 + 1;
          if (v35 >= v34 >> 1)
          {
            v26 = sub_1B8B5D0A0((v34 > 1), v35 + 1, 1, v26);
          }

          *(v26 + 2) = v36;
          v37 = &v26[32 * v35];
          *(v37 + 4) = v27;
          *(v37 + 5) = v29;
          *(v37 + 6) = v31;
          *(v37 + 7) = v33;
          if (v36 > 1)
          {
            goto LABEL_31;
          }
        }

        goto LABEL_4;
      }
    }

LABEL_16:
    if (v11 >> 14 != v9)
    {
      break;
    }

LABEL_9:
    result = sub_1B8C25618();
    v11 = result;
    v9 = result >> 14;
    if (result >> 14 == v10)
    {
      goto LABEL_22;
    }
  }

  if (v9 >= v11 >> 14)
  {
    v18 = sub_1B8C25648();
    v67 = v19;
    v68 = v18;
    v21 = v20;
    v23 = v22;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v70 = sub_1B8B5D0A0(0, *(v70 + 2) + 1, 1, v70);
    }

    v25 = *(v70 + 2);
    v24 = *(v70 + 3);
    if (v25 >= v24 >> 1)
    {
      v70 = sub_1B8B5D0A0((v24 > 1), v25 + 1, 1, v70);
    }

    v12 = v70;
    *(v70 + 2) = v25 + 1;
    v13 = &v12[32 * v25];
    v14 = v67;
    *(v13 + 4) = v68;
    *(v13 + 5) = v21;
    *(v13 + 6) = v23;
    *(v13 + 7) = v14;
    goto LABEL_9;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

unint64_t sub_1B8B48070(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B8C25908();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B8B480BC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B8C25908();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B8B48108(uint64_t a1, uint64_t a2)
{
  v2[52] = a1;
  v2[53] = a2;
  v3 = sub_1B8C238B8();
  v2[54] = v3;
  v2[55] = *(v3 - 8);
  v2[56] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6290, &qword_1B8C2F800);
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v4 = sub_1B8C23938();
  v2[59] = v4;
  v2[60] = *(v4 - 8);
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8B48274, 0, 0);
}

uint64_t sub_1B8B48274(uint64_t a1)
{
  v2 = *(v1 + 464);
  v3 = *(v1 + 432);
  v4 = *(v1 + 440);
  sub_1B8C23918();
  v5 = *(v4 + 48);
  if (v5(v2, 1, v3))
  {
    v6 = sub_1B8B48A20(*(v1 + 464));
LABEL_8:
    sub_1B8B48A88(v6, v7, v8);
    swift_allocError();
    *v32 = 2;
    swift_willThrow();
LABEL_9:

    v33 = *(v1 + 8);
    goto LABEL_10;
  }

  v9 = *(v1 + 496);
  v10 = *(v1 + 472);
  v11 = *(v1 + 480);
  v12 = *(v1 + 464);
  v14 = *(v1 + 440);
  v13 = *(v1 + 448);
  v15 = *(v1 + 432);
  v89 = *(v14 + 16);
  v89(v13, v12, v15);
  sub_1B8B48A20(v12);
  sub_1B8C23878();
  v88 = *(v14 + 8);
  v88(v13, v15);
  v16 = *(v11 + 88);
  v17 = v16(v9, v10);
  v18 = *(v1 + 496);
  v19 = *(v1 + 472);
  v20 = *(v1 + 480);
  if (v17 != *MEMORY[0x1E699C5F0])
  {
    v6 = (*(v20 + 8))(*(v1 + 496), v19);
    goto LABEL_8;
  }

  v21 = v16;
  v84 = *(v20 + 96);
  v84(*(v1 + 496), v19);
  v23 = *v18;
  v22 = v18[1];
  v24 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v25 = sub_1B8C234A8();
  v26 = [v24 initWithData_];

  if (!v26)
  {
    type metadata accessor for BatchInteraction.ContentPreview.Err(0);
    sub_1B8B48ADC();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v35 = v23;
LABEL_30:
    sub_1B8B4645C(v35, v22);
    goto LABEL_9;
  }

  v85 = v26;
  v86 = v23;
  v87 = v22;
  v27 = *(v1 + 456);
  v28 = *(v1 + 432);
  sub_1B8C238F8();
  if (v5(v27, 1, v28))
  {
    v29 = sub_1B8B48A20(*(v1 + 456));
LABEL_29:
    v22 = v87;
    sub_1B8B48A88(v29, v30, v31);
    swift_allocError();
    *v76 = 1;
    swift_willThrow();

    v35 = v86;
    goto LABEL_30;
  }

  v36 = *(v1 + 488);
  v37 = *(v1 + 472);
  v39 = *(v1 + 448);
  v38 = *(v1 + 456);
  v40 = *(v1 + 432);
  v89(v39, v38, v40);
  sub_1B8B48A20(v38);
  sub_1B8C23878();
  v88(v39, v40);
  v41 = v21(v36, v37);
  v42 = *(v1 + 488);
  if (v41 != *MEMORY[0x1E699C5D0])
  {
    v29 = (*(*(v1 + 480) + 8))(*(v1 + 488), *(v1 + 472));
    goto LABEL_29;
  }

  v84(*(v1 + 488), *(v1 + 472));
  v44 = *v42;
  v43 = v42[1];
  *(v1 + 400) = 10;
  *(v1 + 408) = 0xE100000000000000;
  v45 = swift_task_alloc();
  *(v45 + 16) = v1 + 400;
  v47 = sub_1B8B47428(0x7FFFFFFFFFFFFFFFLL, 1, sub_1B8B48B34, v45, v44, v43, v46);

  if (!v47[2])
  {

    sub_1B8B48A88(v77, v78, v79);
    swift_allocError();
    *v80 = 0;
    swift_willThrow();

    sub_1B8B4645C(v86, v87);
    goto LABEL_9;
  }

  v48 = v47[4];
  v49 = v47[5];
  v50 = v47[6];
  v51 = v47[7];

  v52 = v85;
  v53 = MEMORY[0x1B8CC9E60](v48, v49, v50, v51);
  v55 = v54;

  *(v1 + 80) = v52;
  *(v1 + 88) = v53;
  *(v1 + 96) = v55;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 136) = -1;
  *(v1 + 16) = v52;
  *(v1 + 24) = v53;
  *(v1 + 32) = v55;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = -1;
  sub_1B8B3F288(v1 + 80, v1 + 144);
  sub_1B8B48B8C(v1 + 16);
  v57 = *(v1 + 120);
  v56 = *(v1 + 128);
  v58 = *(v1 + 136);
  v93 = *(v1 + 80);
  v94 = *(v1 + 96);
  v91 = *(v1 + 112);
  v92 = *(v1 + 104);
  v59 = sub_1B8B47BBC(v47);

  v60 = v87;
  if (!*(v59 + 16))
  {
    goto LABEL_33;
  }

  sub_1B8B5E2DC(0x7265646E6567, 0xE600000000000000);
  if ((v61 & 1) == 0)
  {
    goto LABEL_37;
  }

  v62 = sub_1B8C25908();

  if (v62 > 2)
  {
    goto LABEL_37;
  }

  if (!*(v59 + 16))
  {
LABEL_33:
    sub_1B8B4645C(v86, v60);

    goto LABEL_34;
  }

  v63 = sub_1B8B5E2DC(0x6E6F74206E696B73, 0xE900000000000065);
  if ((v64 & 1) != 0 && (v65 = (*(v59 + 56) + 16 * v63), v66 = v65[1], v90 = *v65, , v67 = sub_1B8B480BC(v90, v66), v67 != 10))
  {
    v81 = v67;
    sub_1B8B3B1B4(v57, v56, v58);
    v56 = 0;
    v58 = 0;
    v57 = v62 | (v81 << 8);
    if (!*(v59 + 16))
    {
      goto LABEL_33;
    }
  }

  else
  {
LABEL_37:
    if (!*(v59 + 16))
    {
      goto LABEL_33;
    }

    v68 = sub_1B8B5E2DC(0x5555736F746F6870, 0xEA00000000004449);
    if (v69)
    {
      v70 = (*(v59 + 56) + 16 * v68);
      v71 = *v70;
      v72 = v70[1];

      sub_1B8B3B1B4(v57, v56, v58);
      v58 = 1;
      v57 = v71;
      v60 = v87;
      v56 = v72;
    }

    if (!*(v59 + 16))
    {
      goto LABEL_33;
    }
  }

  v73 = sub_1B8B5E2DC(0xD000000000000016, 0x80000001B8C32870);
  if ((v74 & 1) == 0)
  {
    goto LABEL_33;
  }

  v75 = (*(v59 + 56) + 16 * v73);
  v91 = v75[1];
  v92 = *v75;

  sub_1B8B4645C(v86, v60);

LABEL_34:
  *(v1 + 272) = v93;
  *(v1 + 288) = v94;
  *(v1 + 296) = v92;
  *(v1 + 304) = v91;
  *(v1 + 312) = v57;
  v82 = *(v1 + 304);
  v95 = *(v1 + 288);
  *(v1 + 320) = v56;
  *(v1 + 328) = v58;
  *v96 = v82;
  *&v96[9] = *(v1 + 313);
  v83 = *(v1 + 416);
  *(v1 + 208) = v93;
  *(v1 + 224) = v94;
  *(v1 + 232) = v92;
  *(v1 + 240) = v91;
  *(v1 + 248) = v57;
  *(v1 + 256) = v56;
  *(v1 + 264) = v58;
  sub_1B8B3F288(v1 + 272, v1 + 336);
  sub_1B8B48B8C(v1 + 208);
  *(v83 + 32) = *v96;
  *(v83 + 48) = *&v96[16];
  *(v83 + 64) = v97;
  *v83 = v93;
  *(v83 + 16) = v95;
  *(v83 + 72) = 2;

  v33 = *(v1 + 8);
LABEL_10:

  return v33();
}

uint64_t sub_1B8B48A20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6290, &qword_1B8C2F800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B8B48A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA62B0;
  if (!qword_1EBAA62B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA62B0);
  }

  return result;
}

unint64_t sub_1B8B48ADC()
{
  result = qword_1EBAA6288;
  if (!qword_1EBAA6288)
  {
    type metadata accessor for BatchInteraction.ContentPreview.Err(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6288);
  }

  return result;
}

uint64_t sub_1B8B48B34(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B8C25A08() & 1;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B8B48BE0(uint64_t a1, unsigned int a2)
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

uint64_t sub_1B8B48C28(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B8B48C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA62B8;
  if (!qword_1EBAA62B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA62B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenmojiDonationDecoder.Result.Person.Generic(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for GenmojiDonationDecoder.Result.Person.Generic(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenmojiDonationDecoder.Result.Person.Generic.SkinTone(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GenmojiDonationDecoder.Result.Person.Generic.SkinTone(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B8B48FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA62C0;
  if (!qword_1EBAA62C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA62C0);
  }

  return result;
}

unint64_t sub_1B8B48FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA62C8[0];
  if (!qword_1EBAA62C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBAA62C8);
  }

  return result;
}

void sub_1B8B490A4(uint64_t a1)
{
  type metadata accessor for BatchInteraction(319);
  if (v1 <= 0x3F)
  {
    sub_1B8B491A0();
    if (v2 <= 0x3F)
    {
      sub_1B8B491F0(319);
      if (v3 <= 0x3F)
      {
        sub_1B8B49254(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1B8B491A0()
{
  result = qword_1EBAA6350;
  if (!qword_1EBAA6350)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EBAA6350);
  }

  return result;
}

void sub_1B8B491F0(uint64_t a1)
{
  if (!qword_1EBAA6358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6360, qword_1B8C28BA0);
    v1 = sub_1B8C25318();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBAA6358);
    }
  }
}

void sub_1B8B49254(uint64_t a1)
{
  if (!qword_1EBAA6368)
  {
    type metadata accessor for FullScreenPreviewController(255);
    v1 = sub_1B8C24E88();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBAA6368);
    }
  }
}

uint64_t sub_1B8B492F0(uint64_t a1)
{
  v2 = v1 + *(a1 + 48);
  v5[1] = *v2;
  v6 = *(v2 + 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA63B8, &qword_1B8C28C60);
  MEMORY[0x1B8CC9B00](v5, v3);
  return v5[0];
}

uint64_t sub_1B8B49350(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA63B8, &qword_1B8C28C60);
  sub_1B8C24E68();
  return v2;
}

uint64_t sub_1B8B493B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v10 = type metadata accessor for PrebuiltPreviewController(0, a3, a4, v9);
  return (*(v8 + 24))(a2, *(a2 + *(v10 + 36)), v7, v8) & 1;
}

double sub_1B8B4944C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + *(a1 + 44));
  v15 = *(a1 + 16);
  sub_1B8B8B768(sub_1B8B4D440, v5, v12);
  v6 = v13;
  if (v13)
  {
    v7 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v8 = *(v2 + *(a1 + 36));
    v9 = sub_1B8B492F0(a1);
    v10 = *(v7 + 32);
    *(a2 + 24) = swift_getAssociatedTypeWitness();
    *(a2 + 32) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(a2);
    v10(v2, v8, v9, v6, v7);

    return __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    sub_1B8B3433C(v12, &qword_1EBAA6448, &unk_1B8C28D10);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double sub_1B8B495B8(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v2 + 16))(&v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v6 = *(a1 + 24);
  *(v5 + 16) = *(a1 + 16);
  *(v5 + 24) = v6;
  (*(v2 + 32))(v5 + v4, &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_1B8C245A8();
  sub_1B8C245A8();
  v31 = MEMORY[0x1E6981900];
  v32 = v6;
  WitnessTable = swift_getWitnessTable();
  v30 = v6;
  swift_getWitnessTable();
  v7 = sub_1B8C24E18();
  v8 = type metadata accessor for FullScreenPreviewController.Content(255);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6370, &qword_1B8C28C10);
  v10 = swift_getWitnessTable();
  v11 = sub_1B8B4D128(&qword_1EBAA6378, type metadata accessor for FullScreenPreviewController.Content, &unk_1B8C295E0);
  v12 = sub_1B8B4BDFC();
  v23 = v7;
  v24 = v8;
  v25 = v9;
  v26 = v10;
  v27 = v11;
  v28 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v23 = v7;
  v24 = v8;
  v25 = v9;
  v26 = v10;
  v27 = v11;
  v28 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = OpaqueTypeMetadata2;
  v24 = OpaqueTypeConformance2;
  v15 = swift_getOpaqueTypeMetadata2();
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA85A0, &qword_1B8C28C20);
  v23 = OpaqueTypeMetadata2;
  v24 = OpaqueTypeConformance2;
  v17 = swift_getOpaqueTypeConformance2();
  v18 = sub_1B8B4BEB4();
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v26 = v18;
  swift_getOpaqueTypeMetadata2();
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v26 = v18;
  swift_getOpaqueTypeConformance2();
  v21 = sub_1B8C23F38();
  v22 = v19;
  sub_1B8C23F48();
  swift_getWitnessTable();
  sub_1B8BE21A0();

  v21 = v23;
  v22 = v24;
  sub_1B8BE21A0();

  return result;
}

uint64_t sub_1B8B49990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v118 = a2;
  v112 = a1;
  v115 = a5;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA85A0, &qword_1B8C28C20);
  MEMORY[0x1EEE9AC00](v119);
  v114 = &v81 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA63A8, &qword_1B8C28C28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v113 = &v81 - v9;
  v109 = sub_1B8C23E98();
  v108 = *(v109 - 8);
  v110 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v104 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for PrebuiltPreviewController(0, a3, a4, v11);
  v122 = *(v95 - 8);
  v103 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v117 = &v81 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA63B0, &qword_1B8C28C30);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v116 = &v81 - v14;
  v121 = a3;
  sub_1B8C245A8();
  sub_1B8C245A8();
  v134 = MEMORY[0x1E6981900];
  v135 = a4;
  v120 = a4;
  WitnessTable = swift_getWitnessTable();
  v133 = a4;
  v84 = swift_getWitnessTable();
  v15 = sub_1B8C24E18();
  v98 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v81 - v16;
  v18 = type metadata accessor for FullScreenPreviewController.Content(255);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6370, &qword_1B8C28C10);
  v20 = swift_getWitnessTable();
  v21 = sub_1B8B4D128(&qword_1EBAA6378, type metadata accessor for FullScreenPreviewController.Content, &unk_1B8C295E0);
  v22 = sub_1B8B4BDFC();
  v126 = v15;
  v127 = v18;
  v90 = v15;
  v85 = v18;
  v128 = v19;
  v129 = v20;
  v91 = v19;
  v88 = v20;
  v130 = v21;
  v131 = v22;
  v87 = v21;
  v86 = v22;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v97 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v89 = &v81 - v24;
  v126 = v15;
  v127 = v18;
  v128 = v19;
  v129 = v20;
  v130 = v21;
  v131 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = OpaqueTypeMetadata2;
  v93 = OpaqueTypeMetadata2;
  v126 = OpaqueTypeMetadata2;
  v127 = OpaqueTypeConformance2;
  v27 = OpaqueTypeConformance2;
  v94 = OpaqueTypeConformance2;
  v28 = swift_getOpaqueTypeMetadata2();
  v102 = v28;
  v111 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v92 = &v81 - v29;
  v126 = v26;
  v127 = v27;
  v30 = swift_getOpaqueTypeConformance2();
  v101 = v30;
  v100 = sub_1B8B4BEB4();
  v126 = v28;
  v127 = v119;
  v128 = v30;
  v129 = v100;
  v105 = MEMORY[0x1E6981440];
  v106 = swift_getOpaqueTypeMetadata2();
  v107 = *(v106 - 8);
  v31 = MEMORY[0x1EEE9AC00](v106);
  v96 = &v81 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v99 = &v81 - v33;
  v123 = v121;
  v124 = v120;
  v34 = v118;
  v125 = v118;
  sub_1B8C24468();
  sub_1B8C24E08();
  v35 = v95;
  v36 = sub_1B8B49350(v95);
  v38 = v37;
  v40 = v39;
  swift_getKeyPath();
  v126 = v36;
  v127 = v38;
  v128 = v40;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA63B8, &qword_1B8C28C60);
  sub_1B8C24E58();

  v41 = v122;
  v42 = *(v122 + 16);
  v83 = v122 + 16;
  v84 = v42;
  v43 = v117;
  v42(v117, v34, v35);
  v44 = v108;
  v45 = v104;
  v46 = v109;
  (*(v108 + 16))(v104, v112, v109);
  v47 = *(v41 + 80);
  v48 = (v47 + 32) & ~v47;
  v112 = v48 + v103;
  v82 = v48;
  v103 = v47 | 7;
  v49 = v44;
  v50 = (v112 + *(v44 + 80)) & ~*(v44 + 80);
  v51 = swift_allocObject();
  v52 = v120;
  *(v51 + 16) = v121;
  *(v51 + 24) = v52;
  v53 = *(v41 + 32);
  v122 = v41 + 32;
  v110 = v53;
  v53(v51 + v48, v43, v35);
  (*(v49 + 32))(v51 + v50, v45, v46);
  swift_checkMetadataState();
  v54 = v89;
  v55 = v116;
  v56 = v90;
  sub_1B8C24BE8();

  sub_1B8B3433C(v55, &qword_1EBAA63B0, &qword_1B8C28C30);
  (*(v98 + 8))(v17, v56);
  v57 = v118;
  v58 = sub_1B8B49350(v35);
  v60 = v59;
  v62 = v61;
  swift_getKeyPath();
  v126 = v58;
  v127 = v60;
  v128 = v62;
  v63 = v113;
  sub_1B8C24E58();

  v64 = v92;
  v65 = v93;
  sub_1B8C249F8();
  sub_1B8B3433C(v63, &qword_1EBAA63A8, &qword_1B8C28C28);
  (*(v97 + 8))(v54, v65);
  v66 = sub_1B8B492F0(v35);
  swift_getKeyPath();
  v126 = v66;
  sub_1B8B4D128(&qword_1EBAA6148, type metadata accessor for FullScreenPreviewController, &unk_1B8C29618);
  sub_1B8C23588();

  v67 = OBJC_IVAR____TtC8Feedback27FullScreenPreviewController__quickLookPreviewURL;
  swift_beginAccess();
  v68 = v114;
  sub_1B8B34450(v66 + v67, v114, &qword_1EBAA85A0, &qword_1B8C28C20);

  v69 = v117;
  v84(v117, v57, v35);
  v70 = swift_allocObject();
  v71 = v120;
  *(v70 + 16) = v121;
  *(v70 + 24) = v71;
  v110(v70 + v82, v69, v35);
  v72 = v96;
  v73 = v102;
  v74 = v119;
  v75 = v101;
  v76 = v100;
  sub_1B8C24C48();

  sub_1B8B3433C(v68, &qword_1EBAA85A0, &qword_1B8C28C20);
  (*(v111 + 8))(v64, v73);
  v126 = v73;
  v127 = v74;
  v128 = v75;
  v129 = v76;
  swift_getOpaqueTypeConformance2();
  v77 = v99;
  v78 = v106;
  sub_1B8BE21A0();
  v79 = *(v107 + 8);
  v79(v72, v78);
  sub_1B8BE21A0();
  return (v79)(v77, v78);
}

uint64_t sub_1B8B4A6C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a4;
  v7 = *(a2 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v36 - v11;
  v13 = sub_1B8C245A8();
  v39 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v38 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v37 = &v36 - v16;
  v41 = sub_1B8C245A8();
  v40 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v18 = &v36 - v17;
  v20 = type metadata accessor for PrebuiltPreviewController(0, a2, a3, v19);
  v21 = *(a1 + *(v20 + 44));
  v54 = *(v20 + 16);
  v55 = a1;
  sub_1B8B8B768(sub_1B8B4D440, v21, &v51);
  v22 = v52;
  v23 = sub_1B8B3433C(&v51, &qword_1EBAA6448, &unk_1B8C28D10);
  if (v22)
  {
    sub_1B8B4944C(v20, &v51);
    if (v52)
    {
      sub_1B8B4D380(&v51, v53);
      v24 = __swift_project_boxed_opaque_existential_1(v53, *(&v54 + 1));
      MEMORY[0x1EEE9AC00](v24);
      (*(v26 + 16))(&v36 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
      *&v51 = sub_1B8C24E28();
      v27 = v37;
      sub_1B8BE0100(&v51, MEMORY[0x1E6981910]);

      __swift_destroy_boxed_opaque_existential_0(v53);
    }

    else
    {
      v30 = sub_1B8B3433C(&v51, &qword_1EBAA6440, &qword_1B8C28D08);
      (*(a1 + *(v20 + 40)))(v30);
      sub_1B8BE21A0();
      v31 = *(v7 + 8);
      v31(v10, a2);
      sub_1B8BE21A0();
      v27 = v37;
      sub_1B8BE01F8(v10, MEMORY[0x1E6981910], a2);
      v31(v10, a2);
      v31(v12, a2);
    }

    v28 = MEMORY[0x1E6981900];
    v43 = MEMORY[0x1E6981900];
    v44 = a3;
    swift_getWitnessTable();
    v32 = v38;
    sub_1B8BE21A0();
    sub_1B8BE0100(v32, v13);
    v33 = *(v39 + 8);
    v33(v32, v13);
    v33(v27, v13);
  }

  else
  {
    v28 = MEMORY[0x1E6981900];
    (*(a1 + *(v20 + 40)))(v23);
    sub_1B8BE21A0();
    v29 = *(v7 + 8);
    v29(v10, a2);
    sub_1B8BE21A0();
    v49 = v28;
    v50 = a3;
    swift_getWitnessTable();
    sub_1B8BE01F8(v10, v13, a2);
    v29(v10, a2);
    v29(v12, a2);
  }

  v47 = v28;
  v48 = a3;
  WitnessTable = swift_getWitnessTable();
  v46 = a3;
  v34 = v41;
  swift_getWitnessTable();
  sub_1B8BE21A0();
  return (*(v40 + 8))(v18, v34);
}

double sub_1B8B4AD08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6390, &qword_1B8C28C18);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  *v6 = sub_1B8C24468();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA63C8, &qword_1B8C28C90);
  sub_1B8B4AE24(a1, &v6[*(v7 + 44)]);
  sub_1B8C23E88();
  sub_1B8C24F48();
  sub_1B8C23E38();
  sub_1B8B4CF5C(v6, a2);
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6370, &qword_1B8C28C10) + 36));
  v9 = v11[1];
  *v8 = v11[0];
  v8[1] = v9;
  result = *&v12;
  v8[2] = v12;
  return result;
}

uint64_t sub_1B8B4AE24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v65 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA63D0, &qword_1B8C28C98);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v47 - v3;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA63D8, &qword_1B8C28CA0);
  MEMORY[0x1EEE9AC00](v63);
  v52 = &v47 - v4;
  v49 = type metadata accessor for CatchUpMailOriginalContentFullScreenPreviewController(0);
  MEMORY[0x1EEE9AC00](v49);
  v48 = (&v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = type metadata accessor for FullPreviewAttributedText(0);
  MEMORY[0x1EEE9AC00](v56);
  v54 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1B8C23328();
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA63E0, &qword_1B8C28CA8);
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v47 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA63E8, &qword_1B8C28CB0);
  MEMORY[0x1EEE9AC00](v59);
  v10 = &v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA63F0, &qword_1B8C28CB8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v47 - v12);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA63F8, &qword_1B8C28CC0);
  MEMORY[0x1EEE9AC00](v60);
  v15 = &v47 - v14;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6400, &qword_1B8C28CC8);
  MEMORY[0x1EEE9AC00](v61);
  v58 = &v47 - v16;
  v17 = type metadata accessor for FullScreenPreviewController.Content.PreviewType(0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = (&v47 - v21);
  v23 = *(type metadata accessor for FullScreenPreviewController.Content(0) + 20);
  v24 = a1;
  sub_1B8B4D2B8(a1 + v23, v22, type metadata accessor for FullScreenPreviewController.Content.PreviewType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v33 = v48;
    v32 = v49;
    v34 = v50;
    if (EnumCaseMultiPayload == 3)
    {
      *v48 = *v22;
      v35 = *(v32 + 20);
      *(v33 + v35) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6408, &qword_1B8C28D00);
      swift_storeEnumTagMultiPayload();
      sub_1B8B4D2B8(v33, v34, type metadata accessor for CatchUpMailOriginalContentFullScreenPreviewController);
      swift_storeEnumTagMultiPayload();
      sub_1B8B4D128(&qword_1EBAA6410, type metadata accessor for CatchUpMailOriginalContentFullScreenPreviewController, &unk_1B8C31AB8);
      v36 = v52;
      sub_1B8C24598();
      sub_1B8B34450(v36, v10, &qword_1EBAA63D8, &qword_1B8C28CA0);
      swift_storeEnumTagMultiPayload();
      sub_1B8B4D018();
      sub_1B8B4D170();
      v37 = v58;
      sub_1B8C24598();
      sub_1B8B3433C(v36, &qword_1EBAA63D8, &qword_1B8C28CA0);
      sub_1B8B34450(v37, v64, &qword_1EBAA6400, &qword_1B8C28CC8);
      swift_storeEnumTagMultiPayload();
      sub_1B8B4D22C();
      sub_1B8C24598();
      sub_1B8B3433C(v37, &qword_1EBAA6400, &qword_1B8C28CC8);
      return sub_1B8B4D320(v33, type metadata accessor for CatchUpMailOriginalContentFullScreenPreviewController);
    }

    else
    {
      if (EnumCaseMultiPayload != 2)
      {
        v66 = 0;
        v67 = 0xE000000000000000;
        sub_1B8C257E8();
        MEMORY[0x1B8CC9EB0](0xD000000000000035, 0x80000001B8C328C0);
        sub_1B8B4D2B8(v24 + v23, v20, type metadata accessor for FullScreenPreviewController.Content.PreviewType);
        v46 = sub_1B8C25178();
        MEMORY[0x1B8CC9EB0](v46);
      }

      result = sub_1B8C258A8();
      __break(1u);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v38 = v53;
    v39 = v57;
    v40 = v55;
    (*(v53 + 32))(v57, v22, v55);
    v41 = v54;
    (*(v38 + 16))(v54, v39, v40);
    sub_1B8B4D2B8(v41, v13, type metadata accessor for FullPreviewAttributedText);
    v42 = swift_storeEnumTagMultiPayload();
    sub_1B8B4D0D4(v42, v43, v44);
    sub_1B8B4D128(&qword_1EBAA6428, type metadata accessor for FullPreviewAttributedText, &unk_1B8C28D70);
    sub_1B8C24598();
    sub_1B8B34450(v15, v10, &qword_1EBAA63F8, &qword_1B8C28CC0);
    swift_storeEnumTagMultiPayload();
    sub_1B8B4D018();
    sub_1B8B4D170();
    v45 = v58;
    sub_1B8C24598();
    sub_1B8B3433C(v15, &qword_1EBAA63F8, &qword_1B8C28CC0);
    sub_1B8B34450(v45, v64, &qword_1EBAA6400, &qword_1B8C28CC8);
    swift_storeEnumTagMultiPayload();
    sub_1B8B4D22C();
    sub_1B8C24598();
    sub_1B8B3433C(v45, &qword_1EBAA6400, &qword_1B8C28CC8);
    sub_1B8B4D320(v41, type metadata accessor for FullPreviewAttributedText);
    return (*(v38 + 8))(v57, v40);
  }

  else
  {
    v26 = v22[1];
    *v13 = *v22;
    v13[1] = v26;
    v27 = swift_storeEnumTagMultiPayload();
    sub_1B8B4D0D4(v27, v28, v29);
    sub_1B8B4D128(&qword_1EBAA6428, type metadata accessor for FullPreviewAttributedText, &unk_1B8C28D70);
    sub_1B8C24598();
    sub_1B8B34450(v15, v10, &qword_1EBAA63F8, &qword_1B8C28CC0);
    swift_storeEnumTagMultiPayload();
    sub_1B8B4D018();
    sub_1B8B4D170();
    v30 = v58;
    sub_1B8C24598();
    sub_1B8B3433C(v15, &qword_1EBAA63F8, &qword_1B8C28CC0);
    sub_1B8B34450(v30, v64, &qword_1EBAA6400, &qword_1B8C28CC8);
    swift_storeEnumTagMultiPayload();
    sub_1B8B4D22C();
    sub_1B8C24598();
    return sub_1B8B3433C(v30, &qword_1EBAA6400, &qword_1B8C28CC8);
  }

  return result;
}

uint64_t sub_1B8B4B8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a4;
  v41 = a5;
  v42 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA85A0, &qword_1B8C28C20);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v39 - v11;
  v13 = sub_1B8C23498();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v43 = &v39 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v39 - v20;
  sub_1B8B34450(a1, v12, &qword_1EBAA85A0, &qword_1B8C28C20);
  v22 = *(v14 + 48);
  if (v22(v12, 1, v13) == 1)
  {
    sub_1B8B3433C(v12, &qword_1EBAA85A0, &qword_1B8C28C20);
  }

  else
  {
    (*(v14 + 32))(v21, v12, v13);
    v24 = type metadata accessor for PrebuiltPreviewController(0, v40, v41, v23);
    sub_1B8B492F0(v24);
    sub_1B8B619D4(v21);

    (*(v14 + 8))(v21, v13);
  }

  sub_1B8B34450(a2, v10, &qword_1EBAA85A0, &qword_1B8C28C20);
  if (v22(v10, 1, v13) == 1)
  {
    return sub_1B8B3433C(v10, &qword_1EBAA85A0, &qword_1B8C28C20);
  }

  v26 = v43;
  (*(v14 + 32))(v43, v10, v13);
  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v27 = sub_1B8C23C38();
  __swift_project_value_buffer(v27, qword_1EBAB3A30);
  (*(v14 + 16))(v17, v26, v13);
  v28 = sub_1B8C23C18();
  v29 = sub_1B8C25468();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v44 = v31;
    *v30 = 136315138;
    sub_1B8B4D128(&qword_1EBAA63C0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v32 = sub_1B8C259E8();
    v34 = v33;
    v35 = *(v14 + 8);
    v35(v17, v13);
    v36 = sub_1B8B5DD48(v32, v34, &v44);

    *(v30 + 4) = v36;
    _os_log_impl(&dword_1B8B22000, v28, v29, "New quicklook preview url: %s", v30, 0xCu);
    v37 = __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x1B8CCB0E0](v31, -1, -1, v37);
    MEMORY[0x1B8CCB0E0](v30, -1, -1);

    return (v35)(v43, v13);
  }

  else
  {

    v38 = *(v14 + 8);
    v38(v17, v13);
    return (v38)(v26, v13);
  }
}

uint64_t sub_1B8B4BD60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for PrebuiltPreviewController(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1B8B49990(a1, v9, v6, v7, a3);
}

unint64_t sub_1B8B4BDFC()
{
  result = qword_1EBAA6380;
  if (!qword_1EBAA6380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6370, &qword_1B8C28C10);
    sub_1B8B34CFC(&qword_1EBAA6388, &qword_1EBAA6390, &qword_1B8C28C18, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6380);
  }

  return result;
}

unint64_t sub_1B8B4BEB4()
{
  result = qword_1EBAA6398;
  if (!qword_1EBAA6398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA85A0, &qword_1B8C28C20);
    sub_1B8B4D128(&qword_1EBAA63A0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6398);
  }

  return result;
}

double sub_1B8B4BF74@<D0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  type metadata accessor for PrebuiltPreviewController(0, *(v3 + 16), *(v3 + 24), a2);
  sub_1B8C23E98();

  return sub_1B8B4AD08(a1, a3);
}

uint64_t objectdestroyTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(type metadata accessor for PrebuiltPreviewController(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v20 = *(v5 + 64);
  v8 = sub_1B8C23568();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);
  v9 = type metadata accessor for BatchInteraction(0);

  v10 = v4 + v7 + *(v9 + 28);
  type metadata accessor for BatchInteraction.ContentPolarity(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = type metadata accessor for BatchInteraction.ContentPreview(0);
  v13 = *(*(v12 - 8) + 48);
  v14 = v13(v10, 1, v12);
  if (EnumCaseMultiPayload != 1)
  {
    if (v14)
    {
      goto LABEL_26;
    }

    goto LABEL_6;
  }

  if (!v14)
  {
    v16 = swift_getEnumCaseMultiPayload();
    if (v16 > 2)
    {
      switch(v16)
      {
        case 3:

          break;
        case 4:
          v18 = sub_1B8C23328();
          (*(*(v18 - 8) + 8))(v10, v18);
          break;
        case 5:
          sub_1B8B3B06C(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 40), *(v10 + 48), *(v10 + 56), *(v10 + 64), *(v10 + 72));
          break;
      }
    }

    else if (v16 < 2)
    {
    }

    else if (v16 == 2)
    {
    }
  }

  v10 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5FD8, &qword_1B8C28560) + 48);
  if (!v13(v10, 1, v12))
  {
LABEL_6:
    v15 = swift_getEnumCaseMultiPayload();
    if (v15 > 2)
    {
      switch(v15)
      {
        case 3:

          break;
        case 4:
          v17 = sub_1B8C23328();
          (*(*(v17 - 8) + 8))(v10, v17);
          break;
        case 5:
          sub_1B8B3B06C(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 40), *(v10 + 48), *(v10 + 56), *(v10 + 64), *(v10 + 72));
          break;
      }
    }

    else if (v15 < 2)
    {
    }

    else if (v15 == 2)
    {
    }
  }

LABEL_26:

  return MEMORY[0x1EEE6BDD0](v4, v7 + v20, v6 | 7);
}

uint64_t sub_1B8B4C420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for PrebuiltPreviewController(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_1B8B4B8C8(a1, a2, v10, v7, v8);
}

uint64_t sub_1B8B4C4BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B8C242E8();
  LOBYTE(v33[0]) = 1;
  sub_1B8B4C6F8(a1, a2, v7, &v35);
  v28 = v39;
  v29 = v40;
  v30[0] = *v41;
  *(v30 + 9) = *&v41[9];
  v24 = v35;
  v25 = v36;
  v26 = v37;
  v27 = v38;
  v31[0] = v35;
  v31[1] = v36;
  v31[2] = v37;
  v31[3] = v38;
  v31[4] = v39;
  v31[5] = v40;
  v32[0] = *v41;
  *(v32 + 9) = *&v41[9];
  sub_1B8B34450(&v24, v44, &qword_1EBAA6468, &qword_1B8C28E18);
  sub_1B8B3433C(v31, &qword_1EBAA6468, &qword_1B8C28E18);
  *&v23[71] = v28;
  *&v23[87] = v29;
  *&v23[103] = v30[0];
  *&v23[112] = *(v30 + 9);
  *&v23[7] = v24;
  *&v23[23] = v25;
  *&v23[39] = v26;
  *&v23[55] = v27;
  v8 = v33[0];
  v33[0] = v6;
  v33[1] = 0;
  v34[0] = v8;
  *&v34[1] = *v23;
  v9 = *v23;
  v10 = *&v23[16];
  *&v34[17] = *&v23[16];
  v11 = *&v23[48];
  *&v34[33] = *&v23[32];
  *&v34[113] = *(v30 + 9);
  v13 = *&v23[96];
  v12 = *(v30 + 9);
  *&v34[97] = *&v23[96];
  *&v34[81] = *&v23[80];
  v15 = *&v23[64];
  v14 = *&v23[80];
  *&v34[65] = *&v23[64];
  v16 = *&v23[32];
  *&v34[49] = *&v23[48];
  *v41 = *&v34[80];
  *&v41[16] = *&v34[96];
  v42 = *&v34[112];
  v37 = *&v34[16];
  v38 = *&v34[32];
  v39 = *&v34[48];
  v40 = *&v34[64];
  v35 = v6;
  v36 = *v34;
  v17 = *&v34[96];
  *(a3 + 96) = *&v34[80];
  *(a3 + 112) = v17;
  *(a3 + 128) = v42;
  v18 = v38;
  *(a3 + 32) = v37;
  *(a3 + 48) = v18;
  v19 = v40;
  *(a3 + 64) = v39;
  *(a3 + 80) = v19;
  v20 = v36;
  *a3 = v35;
  *(a3 + 16) = v20;
  v50 = v15;
  v51 = v14;
  v52 = v13;
  v53 = v12;
  v46 = v9;
  v47 = v10;
  v48 = v16;
  LOBYTE(v43) = v34[128];
  v22[152] = 1;
  *(a3 + 144) = v43;
  *(a3 + 152) = 0;
  *(a3 + 160) = 1;
  v44[0] = v6;
  v44[1] = 0;
  v45 = v8;
  v49 = v11;
  sub_1B8B34450(v33, v22, &qword_1EBAA6470, &qword_1B8C28E20);
  return sub_1B8B3433C(v44, &qword_1EBAA6470, &qword_1B8C28E20);
}

uint64_t sub_1B8B4C6F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1B8B34CA8(a1, a2, a3);

  v5 = sub_1B8C249E8();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  KeyPath = swift_getKeyPath();
  v13 = sub_1B8C248A8();
  v14 = swift_getKeyPath();
  v9 &= 1u;
  v15 = sub_1B8C24808();
  *&v23 = v5;
  *(&v23 + 1) = v7;
  LOBYTE(v24) = v9;
  *(&v24 + 1) = v11;
  *&v25 = KeyPath;
  BYTE8(v25) = 0;
  *&v26 = v14;
  *(&v26 + 1) = v13;
  v27[0] = v15;
  memset(&v27[8], 0, 32);
  v27[40] = 1;
  v28 = v23;
  v29 = v24;
  *&v33[9] = *&v27[25];
  v32 = *v27;
  *v33 = *&v27[16];
  v30 = v25;
  v31 = v26;
  v22[112] = 1;
  v16 = v24;
  *a4 = v23;
  *(a4 + 16) = v16;
  v17 = v30;
  v18 = v31;
  v19 = *&v33[16];
  *(a4 + 80) = *v33;
  *(a4 + 96) = v19;
  v20 = v32;
  *(a4 + 48) = v18;
  *(a4 + 64) = v20;
  *(a4 + 32) = v17;
  *(a4 + 112) = 0;
  *(a4 + 120) = 1;
  v34[0] = v5;
  v34[1] = v7;
  v35 = v9;
  v36 = v11;
  v37 = KeyPath;
  v38 = 0;
  v39 = v14;
  v40 = v13;
  v41 = v15;
  v43 = 0u;
  v42 = 0u;
  v44 = 1;
  sub_1B8B34450(&v23, v22, &qword_1EBAA6478, &qword_1B8C28E88);
  return sub_1B8B3433C(v34, &qword_1EBAA6478, &qword_1B8C28E88);
}

uint64_t sub_1B8B4C888@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6460, &qword_1B8C28E10) + 40);
  *(a1 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6408, &qword_1B8C28D00);
  swift_storeEnumTagMultiPayload();
  *(a1 + 24) = sub_1B8B4D570;
  *(a1 + 32) = v5;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_1B8B4C94C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B8C242E8();
  LOBYTE(v30[0]) = 1;
  sub_1B8B4CB80(a1, &v32);
  v25 = v36;
  v26 = v37;
  v27[0] = *v38;
  *(v27 + 9) = *&v38[9];
  v21 = v32;
  v22 = v33;
  v23 = v34;
  v24 = v35;
  v28[0] = v32;
  v28[1] = v33;
  v28[2] = v34;
  v28[3] = v35;
  v28[4] = v36;
  v28[5] = v37;
  v29[0] = *v38;
  *(v29 + 9) = *&v38[9];
  sub_1B8B34450(&v21, v41, &qword_1EBAA6468, &qword_1B8C28E18);
  sub_1B8B3433C(v28, &qword_1EBAA6468, &qword_1B8C28E18);
  *&v20[71] = v25;
  *&v20[87] = v26;
  *&v20[103] = v27[0];
  *&v20[112] = *(v27 + 9);
  *&v20[7] = v21;
  *&v20[23] = v22;
  *&v20[39] = v23;
  *&v20[55] = v24;
  v5 = v30[0];
  v30[0] = v4;
  v30[1] = 0;
  v31[0] = v5;
  *&v31[1] = *v20;
  v6 = *v20;
  v7 = *&v20[16];
  *&v31[17] = *&v20[16];
  v8 = *&v20[48];
  *&v31[33] = *&v20[32];
  *&v31[113] = *(v27 + 9);
  v10 = *&v20[96];
  v9 = *(v27 + 9);
  *&v31[97] = *&v20[96];
  *&v31[81] = *&v20[80];
  v12 = *&v20[64];
  v11 = *&v20[80];
  *&v31[65] = *&v20[64];
  v13 = *&v20[32];
  *&v31[49] = *&v20[48];
  *v38 = *&v31[80];
  *&v38[16] = *&v31[96];
  v39 = *&v31[112];
  v34 = *&v31[16];
  v35 = *&v31[32];
  v36 = *&v31[48];
  v37 = *&v31[64];
  v32 = v4;
  v33 = *v31;
  v14 = *&v31[96];
  *(a2 + 96) = *&v31[80];
  *(a2 + 112) = v14;
  *(a2 + 128) = v39;
  v15 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v15;
  v16 = v37;
  *(a2 + 64) = v36;
  *(a2 + 80) = v16;
  v17 = v33;
  *a2 = v32;
  *(a2 + 16) = v17;
  v47 = v12;
  v48 = v11;
  v49 = v10;
  v50 = v9;
  v43 = v6;
  v44 = v7;
  v45 = v13;
  LOBYTE(v40) = v31[128];
  v19[152] = 1;
  *(a2 + 144) = v40;
  *(a2 + 152) = 0;
  *(a2 + 160) = 1;
  v41[0] = v4;
  v41[1] = 0;
  v42 = v5;
  v46 = v8;
  sub_1B8B34450(v30, v19, &qword_1EBAA6470, &qword_1B8C28E20);
  return sub_1B8B3433C(v41, &qword_1EBAA6470, &qword_1B8C28E20);
}

uint64_t sub_1B8B4CB80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B8C23328();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 16))(&v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], a1);
  v7 = sub_1B8C249D8();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  KeyPath = swift_getKeyPath();
  v15 = sub_1B8C248A8();
  v16 = swift_getKeyPath();
  v11 &= 1u;
  LOBYTE(v36) = v11;
  v17 = sub_1B8C24808();
  *&v31 = v7;
  *(&v31 + 1) = v9;
  LOBYTE(v32) = v11;
  v18 = v29[0];
  *(&v32 + 1) = v29[0];
  DWORD1(v32) = *(v29 + 3);
  *(&v32 + 1) = v13;
  *&v33 = KeyPath;
  BYTE8(v33) = 0;
  v19 = *v28;
  *(&v33 + 9) = *v28;
  HIDWORD(v33) = *&v28[3];
  *&v34 = v16;
  *(&v34 + 1) = v15;
  LOBYTE(v35[0]) = v17;
  DWORD1(v35[0]) = *&v30[3];
  *(v35 + 1) = *v30;
  *(&v35[1] + 8) = 0u;
  *(v35 + 8) = 0u;
  BYTE8(v35[2]) = 1;
  v38 = v33;
  v37 = v32;
  v36 = v31;
  *(v41 + 9) = *(&v35[1] + 9);
  v41[0] = v35[1];
  v40 = v35[0];
  v39 = v34;
  v20 = v32;
  v21 = v33;
  *a2 = v31;
  *(a2 + 16) = v20;
  v22 = v39;
  v23 = v40;
  v24 = v41[1];
  *(a2 + 80) = v41[0];
  *(a2 + 96) = v24;
  *(a2 + 48) = v22;
  *(a2 + 64) = v23;
  *(a2 + 32) = v21;
  *(a2 + 112) = 0;
  *(a2 + 120) = 1;
  v27[112] = 1;
  v42[0] = v7;
  v42[1] = v9;
  v43 = v11;
  *&v44[3] = *(v29 + 3);
  *v44 = v18;
  v45 = v13;
  v46 = KeyPath;
  v47 = 0;
  *&v48[3] = *&v28[3];
  *v48 = v19;
  v49 = v16;
  v50 = v15;
  v51 = v17;
  *&v52[3] = *&v30[3];
  *v52 = *v30;
  v54 = 0u;
  v53 = 0u;
  v55 = 1;
  sub_1B8B34450(&v31, v27, &qword_1EBAA6478, &qword_1B8C28E88);
  return sub_1B8B3433C(v42, &qword_1EBAA6478, &qword_1B8C28E88);
}

uint64_t sub_1B8B4CE08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1B8B4D2B8(v2, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FullPreviewAttributedText);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1B8B4D578(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6460, &qword_1B8C28E10) + 40);
  *(a2 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6408, &qword_1B8C28D00);
  result = swift_storeEnumTagMultiPayload();
  *(a2 + 24) = sub_1B8B4D5DC;
  *(a2 + 32) = v7;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_1B8B4CF5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6390, &qword_1B8C28C18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for FullPreviewAttributedText(uint64_t a1)
{
  result = qword_1EBAA6450;
  if (!qword_1EBAA6450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B8B4D018()
{
  result = qword_1EBAA6418;
  if (!qword_1EBAA6418)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA63F8, &qword_1B8C28CC0);
    sub_1B8B4D0D4(v1, v2, v3);
    sub_1B8B4D128(&qword_1EBAA6428, type metadata accessor for FullPreviewAttributedText, &unk_1B8C28D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6418);
  }

  return result;
}

unint64_t sub_1B8B4D0D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA6420;
  if (!qword_1EBAA6420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6420);
  }

  return result;
}

uint64_t sub_1B8B4D128(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B8B4D170()
{
  result = qword_1EBAA6430;
  if (!qword_1EBAA6430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA63D8, &qword_1B8C28CA0);
    sub_1B8B4D128(&qword_1EBAA6410, type metadata accessor for CatchUpMailOriginalContentFullScreenPreviewController, &unk_1B8C31AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6430);
  }

  return result;
}

unint64_t sub_1B8B4D22C()
{
  result = qword_1EBAA6438;
  if (!qword_1EBAA6438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6400, &qword_1B8C28CC8);
    sub_1B8B4D018();
    sub_1B8B4D170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6438);
  }

  return result;
}

uint64_t sub_1B8B4D2B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B8B4D320(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B8B4D380(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
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

uint64_t sub_1B8B4D4BC(uint64_t a1)
{
  result = sub_1B8C23328();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B8B4D578(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FullPreviewAttributedText(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B4D5DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FullPreviewAttributedText(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1B8B4C94C(v4, a1);
}

uint64_t sub_1B8B4D64C(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v65 = a3;
  v62 = a2;
  v6 = sub_1B8C23738();
  v63 = *(v6 - 8);
  v64 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1B8C236E8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v61 - v14;
  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v15 = a1;
  v16 = sub_1B8C23C38();
  __swift_project_value_buffer(v16, qword_1EBAB3A30);
  v17 = sub_1B8C23C18();
  v18 = sub_1B8C25468();
  v19 = os_log_type_enabled(v17, v18);
  v66 = v9;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v69[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_1B8B5DD48(0xD000000000000013, 0x80000001B8C32A30, v69);
    _os_log_impl(&dword_1B8B22000, v17, v18, "%s", v20, 0xCu);
    v22 = __swift_destroy_boxed_opaque_existential_0(v21);
    v23 = v21;
    v9 = v66;
    MEMORY[0x1B8CCB0E0](v23, -1, -1, v22);
    MEMORY[0x1B8CCB0E0](v20, -1, -1);
  }

  v24 = *(v4 + OBJC_IVAR____TtC8Feedback15BatchController__lastAction);
  v25 = v24 != 3 && v24 == v15;
  v67 = v10;
  if (v25)
  {
    *(v4 + OBJC_IVAR____TtC8Feedback15BatchController__lastAction) = v15;
    if (v15 != 2)
    {
      goto LABEL_10;
    }

LABEL_15:
    (*(v10 + 104))(v13, *MEMORY[0x1E699C1E8], v9);
    goto LABEL_18;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v61 - 2) = v4;
  *(&v61 - 8) = v15;
  v69[0] = v4;
  sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
  sub_1B8C23578();

  v10 = v67;
  if (v15 == 2)
  {
    goto LABEL_15;
  }

LABEL_10:
  v27 = sub_1B8C23C18();
  v28 = sub_1B8C25468();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v69[0] = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_1B8B5DD48(0xD000000000000013, 0x80000001B8C32A30, v69);
    _os_log_impl(&dword_1B8B22000, v27, v28, "%s - will increment score", v29, 0xCu);
    v31 = __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x1B8CCB0E0](v30, -1, -1, v31);
    MEMORY[0x1B8CCB0E0](v29, -1, -1);
  }

  swift_getKeyPath();
  v69[0] = v4;
  sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
  sub_1B8C23588();

  v32 = *(v4 + 24);
  swift_retain_n();
  v33 = sub_1B8C24F68();
  MEMORY[0x1EEE9AC00](v33);
  *(&v61 - 2) = sub_1B8B513A0;
  *(&v61 - 1) = v32;
  sub_1B8C23F08();

  v9 = v66;
  v10 = v67;
  if (v15)
  {
    v34 = MEMORY[0x1E699C1C8];
  }

  else
  {
    v34 = MEMORY[0x1E699C1F0];
  }

  (*(v67 + 104))(v13, *v34, v66);
LABEL_18:
  (*(v10 + 32))(v68, v13, v9);
  v35 = sub_1B8C23C18();
  v36 = sub_1B8C25458();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v69[0] = v38;
    *v37 = 136315394;
    *(v37 + 4) = sub_1B8B5DD48(0xD000000000000013, 0x80000001B8C32A30, v69);
    *(v37 + 12) = 2080;
    v39 = 0x6F4473626D756874;
    v40 = 0xEA00000000006E77;
    if (v15 != 1)
    {
      v39 = 1885956979;
      v40 = 0xE400000000000000;
    }

    if (v15)
    {
      v41 = v39;
    }

    else
    {
      v41 = 0x705573626D756874;
    }

    if (v15)
    {
      v42 = v40;
    }

    else
    {
      v42 = 0xE800000000000000;
    }

    v43 = sub_1B8B5DD48(v41, v42, v69);

    *(v37 + 14) = v43;
    _os_log_impl(&dword_1B8B22000, v35, v36, "%s - will commit action %s on evaluation controller", v37, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CCB0E0](v38, -1, -1);
    MEMORY[0x1B8CCB0E0](v37, -1, -1);

    v9 = v66;
    v10 = v67;
  }

  else
  {
  }

  v44 = type metadata accessor for BatchInteraction(0);
  v45 = v63;
  v46 = *(v62 + *(v44 + 20));
  *v8 = v46;
  v47 = v64;
  (*(v45 + 104))(v8, *MEMORY[0x1E699C218], v64);
  v48 = v46;
  v49 = sub_1B8BED0A4(v68, v8, v15 == 1, 2, 0);
  (*(v45 + 8))(v8, v47, v49);
  v50 = sub_1B8C23C18();
  if (v15 == 1)
  {
    v51 = sub_1B8C25458();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v69[0] = v53;
      *v52 = 136315394;
      *(v52 + 4) = sub_1B8B5DD48(0xD000000000000013, 0x80000001B8C32A30, v69);
      *(v52 + 12) = 2080;
      *(v52 + 14) = sub_1B8B5DD48(0x6F4473626D756874, 0xEA00000000006E77, v69);
      _os_log_impl(&dword_1B8B22000, v50, v51, "%s - action is %s, will not animate yet", v52, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CCB0E0](v53, -1, -1);
      MEMORY[0x1B8CCB0E0](v52, -1, -1);
    }
  }

  else
  {
    v54 = sub_1B8C25468();
    if (os_log_type_enabled(v50, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v69[0] = v56;
      *v55 = 136315394;
      *(v55 + 4) = sub_1B8B5DD48(0xD000000000000013, 0x80000001B8C32A30, v69);
      *(v55 + 12) = 2080;
      if (v15)
      {
        v57 = 1885956979;
      }

      else
      {
        v57 = 0x705573626D756874;
      }

      if (v15)
      {
        v58 = 0xE400000000000000;
      }

      else
      {
        v58 = 0xE800000000000000;
      }

      v59 = sub_1B8B5DD48(v57, v58, v69);

      *(v55 + 14) = v59;
      v10 = v67;
      _os_log_impl(&dword_1B8B22000, v50, v54, "%s - action %s was not feedback, will animate out", v55, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CCB0E0](v56, -1, -1);
      MEMORY[0x1B8CCB0E0](v55, -1, -1);
    }

    swift_getKeyPath();
    v69[0] = v4;
    sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
    sub_1B8C23588();

    swift_beginAccess();

    sub_1B8BC1BDC();
  }

  return (*(v10 + 8))(v68, v9);
}

uint64_t sub_1B8B4E0BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B8C237B8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1B8B51340(&qword_1EBAA64E0, MEMORY[0x1E699C390], MEMORY[0x1E699C398]), v7 = sub_1B8C250B8(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1B8B51340(&unk_1EBAA8610, MEMORY[0x1E699C390], MEMORY[0x1E699C3A0]);
      v15 = sub_1B8C250E8();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1B8B4E2D4(__int128 *a1, uint64_t a2)
{
  v2 = a1[1];
  v48 = *a1;
  v49 = v2;
  v50[0] = a1[2];
  *(v50 + 9) = *(a1 + 41);
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a2;
  sub_1B8C25AB8();
  v5 = *(a1 + 1);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v6 = 3;
      goto LABEL_12;
    }

    if (v5 == 3)
    {
      v6 = 4;
      goto LABEL_12;
    }

LABEL_9:
    v7 = *a1;
    v8 = a1[2];
    v42 = a1[1];
    *v43 = v8;
    *&v43[9] = *(a1 + 41);
    MEMORY[0x1B8CCA790](1);
    *&v41 = v7;
    *(&v41 + 1) = v5;
    BatchStatusView.Config.hash(into:)(__dst);
    goto LABEL_13;
  }

  if (!v5)
  {
    v6 = 0;
    goto LABEL_12;
  }

  if (v5 != 1)
  {
    goto LABEL_9;
  }

  v6 = 2;
LABEL_12:
  MEMORY[0x1B8CCA790](v6);
LABEL_13:
  v9 = sub_1B8C25AF8();
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  v39 = v3 + 56;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v38 = ~v10;
  while (1)
  {
    v12 = (*(v3 + 48) + (v11 << 6));
    v14 = v12[1];
    v13 = v12[2];
    v15 = *v12;
    *&v43[9] = *(v12 + 41);
    v42 = v14;
    *v43 = v13;
    v41 = v15;
    memmove(__dst, v12, 0x39uLL);
    v45 = v48;
    v46 = v49;
    v47[0] = v50[0];
    *(v47 + 9) = *(v50 + 9);
    v16 = v42;
    v17 = v43[0];
    v18 = *&v43[8];
    v19 = *&v43[16];
    v20 = v43[24];
    if (*(&v41 + 1) > 1)
    {
      break;
    }

    if (!*(&v41 + 1))
    {
      if (!*(a1 + 1))
      {
        goto LABEL_53;
      }

      goto LABEL_29;
    }

    if (*(&v41 + 1) == 1)
    {
      if (*(a1 + 1) == 1)
      {
        goto LABEL_53;
      }

      goto LABEL_29;
    }

LABEL_24:
    if (*(a1 + 1) < 4uLL || (v23 = *(a1 + 2), v22 = *(a1 + 3), v24 = *(a1 + 32), v35 = *(a1 + 5), v37 = *(a1 + 6), v36 = *(a1 + 56), v41 != *a1) && (v34 = v3, v33 = *(a1 + 32), v25 = *(a1 + 3), v32 = *(a1 + 2), v26 = sub_1B8C25A08(), v23 = v32, v22 = v25, v24 = v33, v3 = v34, (v26 & 1) == 0))
    {
LABEL_25:
      sub_1B8B50FF8(a1, v40);
      v21 = &v41;
LABEL_30:
      sub_1B8B50FF8(v21, v40);
      sub_1B8B3433C(__dst, &qword_1EBAA64D8, &qword_1B8C2DB40);
      goto LABEL_31;
    }

    if (*(&v16 + 1))
    {
      if (!v22)
      {
        goto LABEL_25;
      }

      if (v16 != __PAIR128__(v22, v23))
      {
        v27 = v3;
        v28 = v24;
        v29 = sub_1B8C25A08();
        v24 = v28;
        v3 = v27;
        if ((v29 & 1) == 0)
        {
          goto LABEL_25;
        }
      }
    }

    else if (v22)
    {
      goto LABEL_25;
    }

    if (v17 != v24)
    {
      goto LABEL_25;
    }

    if (v19)
    {
      if (!v37)
      {
        goto LABEL_25;
      }

      if (v18 == v35 && v19 == v37)
      {
        sub_1B8B50FF8(a1, v40);
        sub_1B8B50FF8(&v41, v40);
        sub_1B8B3433C(__dst, &qword_1EBAA64D8, &qword_1B8C2DB40);
      }

      else
      {
        v30 = sub_1B8C25A08();
        sub_1B8B50FF8(a1, v40);
        sub_1B8B50FF8(&v41, v40);
        sub_1B8B3433C(__dst, &qword_1EBAA64D8, &qword_1B8C2DB40);
        if ((v30 & 1) == 0)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
      sub_1B8B50FF8(a1, v40);
      sub_1B8B50FF8(&v41, v40);
      sub_1B8B50FF8(a1, v40);
      sub_1B8B50FF8(&v41, v40);
      sub_1B8B3433C(__dst, &qword_1EBAA64D8, &qword_1B8C2DB40);
      sub_1B8B51054(a1);
      sub_1B8B51054(&v41);
      if (v37)
      {
        goto LABEL_31;
      }
    }

    if (((v20 ^ v36) & 1) == 0)
    {
      return 1;
    }

LABEL_31:
    v11 = (v11 + 1) & v38;
    if (((*(v39 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  if (*(&v41 + 1) != 2)
  {
    if (*(&v41 + 1) == 3)
    {
      if (*(a1 + 1) == 3)
      {
        goto LABEL_53;
      }

      goto LABEL_29;
    }

    goto LABEL_24;
  }

  if (*(a1 + 1) != 2)
  {
LABEL_29:
    v21 = a1;
    goto LABEL_30;
  }

LABEL_53:
  sub_1B8B3433C(__dst, &qword_1EBAA64D8, &qword_1B8C2DB40);
  return 1;
}

uint64_t BatchController.donationController.getter()
{
  swift_getKeyPath();
  sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
  sub_1B8C23588();

  swift_beginAccess();
}

uint64_t sub_1B8B4E7E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
  sub_1B8C23588();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t type metadata accessor for BatchController(uint64_t a1)
{
  result = qword_1EBAA64A0;
  if (!qword_1EBAA64A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double BatchController.donationController.setter(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 16) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
    sub_1B8C23578();
  }

  return result;
}

void sub_1B8B4EA40(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

uint64_t (*BatchController.donationController.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC8Feedback15BatchController___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
  sub_1B8C23588();

  *v4 = v1;
  swift_getKeyPath();
  sub_1B8C235A8();

  swift_beginAccess();
  return sub_1B8B4EC04;
}

void sub_1B8B4EC04(void *a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_1B8C23598();

  free(v1);
}

uint64_t sub_1B8B4EC88()
{
  swift_getKeyPath();
  sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
  sub_1B8C23588();
}

double sub_1B8B4ED2C(uint64_t a1)
{
  if (*(v1 + 24) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
    sub_1B8C23578();
  }

  return result;
}

uint64_t sub_1B8B4EE60()
{
  swift_getKeyPath();
  sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
  sub_1B8C23588();
}

double sub_1B8B4EF04(uint64_t a1)
{
  if (*(v1 + 32) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
    sub_1B8C23578();
  }

  return result;
}

uint64_t sub_1B8B4F038()
{
  swift_getKeyPath();
  sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
  sub_1B8C23588();
}

double sub_1B8B4F0DC(uint64_t a1)
{
  if (*(v1 + 40) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
    sub_1B8C23578();
  }

  return result;
}

uint64_t sub_1B8B4F210()
{
  swift_getKeyPath();
  sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
  sub_1B8C23588();
}

double sub_1B8B4F2B4(uint64_t a1)
{
  if (*(v1 + 48) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
    sub_1B8C23578();
  }

  return result;
}

uint64_t sub_1B8B4F3E8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
  sub_1B8C23588();

  v3 = OBJC_IVAR____TtC8Feedback15BatchController__dismissHandler;
  swift_beginAccess();
  return sub_1B8B50868(v5 + v3, a1);
}

uint64_t sub_1B8B4F4B0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5AC8, &qword_1B8C27250);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC8Feedback15BatchController__dismissHandler;
  swift_beginAccess();
  sub_1B8B50868(v1 + v6, v5);
  v7 = sub_1B8B501B0(v5, a1);
  sub_1B8B3433C(v5, &qword_1EBAA5AC8, &qword_1B8C27250);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
    sub_1B8C23578();
  }

  else
  {
    swift_beginAccess();
    sub_1B8B508D8(a1, v1 + v6);
    swift_endAccess();
  }

  return sub_1B8B3433C(a1, &qword_1EBAA5AC8, &qword_1B8C27250);
}

uint64_t sub_1B8B4F694(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8Feedback15BatchController__dismissHandler;
  swift_beginAccess();
  sub_1B8B508D8(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1B8B4F700()
{
  swift_getKeyPath();
  sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
  sub_1B8C23588();

  return *(v0 + OBJC_IVAR____TtC8Feedback15BatchController__lastAction);
}

void sub_1B8B4F7A8(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
  sub_1B8C23588();

  *a2 = *(v3 + OBJC_IVAR____TtC8Feedback15BatchController__lastAction);
}

void sub_1B8B4F858(unsigned __int8 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8Feedback15BatchController__lastAction);
  if (v2 == 3)
  {
    if (a1 != 3)
    {
LABEL_3:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
      sub_1B8C23578();

      return;
    }
  }

  else if (v2 != a1)
  {
    goto LABEL_3;
  }

  *(v1 + OBJC_IVAR____TtC8Feedback15BatchController__lastAction) = a1;
}

char *BatchController.__allocating_init(scoreController:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_1B8B504A0(a1);

  return v2;
}

char *BatchController.init(scoreController:)(uint64_t a1)
{
  v1 = sub_1B8B504A0(a1);

  return v1;
}

double sub_1B8B4FA00(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA64C8, &qword_1B8C2BC70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21[-v4];
  v6 = type metadata accessor for AnalyticsEvent(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1B8C23D38();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v10 + 104))(v12, *MEMORY[0x1E697BE38], v9);
  v13 = sub_1B8C23D28();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    swift_storeEnumTagMultiPayload();
    sub_1B8C03B68();
    sub_1B8B50964(v8);
    v15 = sub_1B8B8A728(&unk_1F37546B8);
    swift_arrayDestroy();
    swift_getKeyPath();
    *&v22[0] = v2;
    sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
    sub_1B8C23588();

    v16 = *(v2 + 40);
    swift_getKeyPath();
    *&v22[0] = v16;
    sub_1B8B51340(&qword_1EBAA64D0, type metadata accessor for StateController, &protocol conformance descriptor for StateController);

    sub_1B8C23588();

    v17 = v16[2];
    v22[0] = v16[1];
    v22[1] = v17;
    v23[0] = v16[3];
    *(v23 + 9) = *(v16 + 57);
    sub_1B8B50FF8(v22, v21);

    v18 = sub_1B8B4E2D4(v22, v15);

    sub_1B8B51054(v22);
    if (v18)
    {
      sub_1B8C25388();
      v19 = sub_1B8C253A8();
      (*(*(v19 - 8) + 56))(v5, 0, 1, v19);
      v20 = swift_allocObject();
      v20[2] = 0;
      v20[3] = 0;
      v20[4] = v2;

      sub_1B8BE33EC(0, 0, v5, &unk_1B8C28FD8, v20);
    }
  }

  return result;
}

uint64_t sub_1B8B4FDE4()
{
  v1 = v0[6];
  swift_getKeyPath();
  v0[5] = v1;
  sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
  sub_1B8C23588();

  swift_beginAccess();
  v0[7] = *(v1 + 16);

  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_1B8B4FF14;

  return sub_1B8BC20B4();
}

uint64_t sub_1B8B4FF14()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *BatchController.deinit()
{

  sub_1B8B3433C(v0 + OBJC_IVAR____TtC8Feedback15BatchController__dismissHandler, &qword_1EBAA5AC8, &qword_1B8C27250);
  v1 = OBJC_IVAR____TtC8Feedback15BatchController___observationRegistrar;
  v2 = sub_1B8C235C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t BatchController.__deallocating_deinit()
{

  sub_1B8B3433C(v0 + OBJC_IVAR____TtC8Feedback15BatchController__dismissHandler, &qword_1EBAA5AC8, &qword_1B8C27250);
  v1 = OBJC_IVAR____TtC8Feedback15BatchController___observationRegistrar;
  v2 = sub_1B8C235C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1B8B501B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8C23E78();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5AC8, &qword_1B8C27250);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA64B8, &qword_1B8C28F78);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1B8B50868(a1, &v21 - v13);
  sub_1B8B50868(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1B8B50868(v14, v10);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1B8B51340(&qword_1EBAA64C0, MEMORY[0x1E697BF90], MEMORY[0x1E69AC020]);
      v18 = sub_1B8C250E8();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1B8B3433C(v14, &qword_1EBAA5AC8, &qword_1B8C27250);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1B8B3433C(v14, &qword_1EBAA64B8, &qword_1B8C28F78);
    v17 = 1;
    return v17 & 1;
  }

  sub_1B8B3433C(v14, &qword_1EBAA5AC8, &qword_1B8C27250);
  v17 = 0;
  return v17 & 1;
}

char *sub_1B8B504A0(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8Feedback15BatchController__dismissHandler;
  v5 = sub_1B8C23E78();
  (*(*(v5 - 8) + 56))(&v2[v4], 1, 1, v5);
  v2[OBJC_IVAR____TtC8Feedback15BatchController__lastAction] = 3;
  sub_1B8C235B8();
  if (a1)
  {
    *(v2 + 3) = a1;
  }

  else
  {
    type metadata accessor for ScoreController(0);
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    sub_1B8C235B8();
    if (qword_1EBAA5930 != -1)
    {
      swift_once();
    }

    v7 = qword_1EBAB39E0;
    swift_getKeyPath();
    sub_1B8B51340(&qword_1EBAA5F10, type metadata accessor for UserDefaultsController, &unk_1B8C2D9F0);
    sub_1B8C23588();

    *(v6 + 24) = *(v7 + 24);
    *(v2 + 3) = v6;
  }

  type metadata accessor for DebugController(0);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;

  sub_1B8C235B8();
  *(v2 + 6) = v8;
  type metadata accessor for OnboardingController(0);
  v9 = swift_allocObject();
  *(v2 + 4) = sub_1B8B7F1B0(v9);
  type metadata accessor for StateController(0);
  v10 = swift_allocObject();
  sub_1B8C235B8();
  *(v10 + 58) = 0u;
  v10[2] = 0u;
  v10[3] = 0u;
  v10[1] = 0u;
  *(v2 + 5) = v10;
  type metadata accessor for DonationController(0);
  swift_allocObject();

  *(v2 + 2) = sub_1B8BC46D8(v11);
  return v2;
}

void sub_1B8B506F8(uint64_t a1)
{
  sub_1B8B50810(319);
  if (v1 <= 0x3F)
  {
    sub_1B8C235C8();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B8B50810(uint64_t a1)
{
  if (!qword_1EBAA64B0)
  {
    sub_1B8C23E78();
    v1 = sub_1B8C25608();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBAA64B0);
    }
  }
}

uint64_t sub_1B8B50868(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5AC8, &qword_1B8C27250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B508D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5AC8, &qword_1B8C27250);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B50964(uint64_t a1)
{
  v2 = type metadata accessor for AnalyticsEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B8B509C0(void *a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA84E0, &qword_1B8C2F0A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v37[-1] - v7;
  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v9 = sub_1B8C23C38();
  __swift_project_value_buffer(v9, qword_1EBAB3A30);
  v10 = sub_1B8C23C18();
  v11 = sub_1B8C25468();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v37[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1B8B5DD48(0xD00000000000001DLL, 0x80000001B8C32A10, v37);
    _os_log_impl(&dword_1B8B22000, v10, v11, "%s", v12, 0xCu);
    v14 = __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1B8CCB0E0](v13, -1, -1, v14);
    MEMORY[0x1B8CCB0E0](v12, -1, -1);
  }

  swift_getKeyPath();
  v37[0] = v3;
  sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
  sub_1B8C23588();

  if (*(v3 + OBJC_IVAR____TtC8Feedback15BatchController__lastAction) == 1)
  {
    v36 = v8;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v36 - 2) = v3;
    *(&v36 - 8) = 3;
    v37[0] = v3;
    sub_1B8C23578();

    if ((a2 & 1) == 0)
    {
      v16 = a1;
      v17 = v36;
      sub_1B8C236B8();
      v18 = sub_1B8C236A8();
      if ((*(*(v18 - 8) + 48))(v17, 1, v18) == 1)
      {
        sub_1B8B30A54(a1);
        sub_1B8B3433C(v17, &unk_1EBAA84E0, &qword_1B8C2F0A0);
      }

      else
      {
        sub_1B8B3433C(v17, &unk_1EBAA84E0, &qword_1B8C2F0A0);
        swift_getKeyPath();
        v37[0] = v3;
        sub_1B8C23588();

        swift_beginAccess();

        sub_1B8BC1BDC();

        sub_1B8B30A54(a1);
      }

LABEL_14:
      v29 = v16;
      v20 = sub_1B8C23C18();
      v30 = sub_1B8C25458();
      sub_1B8B30A54(a1);
      if (os_log_type_enabled(v20, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v38 = v33;
        *v31 = 136315394;
        *(v31 + 4) = sub_1B8B5DD48(0xD00000000000001DLL, 0x80000001B8C32A10, &v38);
        *(v31 + 12) = 2112;
        *(v31 + 14) = v29;
        *v32 = v29;
        v34 = v29;
        _os_log_impl(&dword_1B8B22000, v20, v30, "%s - Successfully saved evaluation: %@", v31, 0x16u);
        sub_1B8B3433C(v32, &qword_1EBAA69A0, &qword_1B8C29670);
        MEMORY[0x1B8CCB0E0](v32, -1, -1);
        v35 = __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x1B8CCB0E0](v33, -1, -1, v35);
        v28 = v31;
        goto LABEL_16;
      }

      goto LABEL_17;
    }
  }

  else if ((a2 & 1) == 0)
  {
    v16 = a1;
    goto LABEL_14;
  }

  v19 = a1;
  v20 = sub_1B8C23C18();
  v21 = sub_1B8C25478();
  sub_1B8B30A54(a1);
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v37[0] = v24;
    *v22 = 136315394;
    *(v22 + 4) = sub_1B8B5DD48(0xD00000000000001DLL, 0x80000001B8C32A10, v37);
    *(v22 + 12) = 2112;
    v25 = a1;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 14) = v26;
    *v23 = v26;
    _os_log_impl(&dword_1B8B22000, v20, v21, "%s - Failed to record evaluation: %@", v22, 0x16u);
    sub_1B8B3433C(v23, &qword_1EBAA69A0, &qword_1B8C29670);
    MEMORY[0x1B8CCB0E0](v23, -1, -1);
    v27 = __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x1B8CCB0E0](v24, -1, -1, v27);
    v28 = v22;
LABEL_16:
    MEMORY[0x1B8CCB0E0](v28, -1, -1);
  }

LABEL_17:
}

uint64_t sub_1B8B510A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B8B5115C;

  return sub_1B8B4FDC4(a1, v4, v5, v6);
}

uint64_t sub_1B8B5115C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1B8B51250()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
}

void sub_1B8B5128C()
{
  *(*(v0 + 16) + 40) = *(v0 + 24);
}

void sub_1B8B512C8()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
}

void sub_1B8B51304()
{
  *(*(v0 + 16) + 48) = *(v0 + 24);
}

uint64_t sub_1B8B51340(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ScoreController.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  sub_1B8C235B8();
  if (qword_1EBAA5930 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBAB39E0;
  swift_getKeyPath();
  sub_1B8B527C0(&qword_1EBAA5F10, type metadata accessor for UserDefaultsController, &unk_1B8C2D9F0);
  sub_1B8C23588();

  *(v0 + 24) = *(v1 + 24);
  return v0;
}

uint64_t sub_1B8B514E0()
{
  swift_getKeyPath();
  sub_1B8B527C0(&qword_1EBAA5F60, type metadata accessor for ScoreController, &protocol conformance descriptor for ScoreController);
  sub_1B8C23588();

  return *(v0 + 17);
}

void sub_1B8B51580()
{
  swift_getKeyPath();
  sub_1B8B527C0(&qword_1EBAA5F60, type metadata accessor for ScoreController, &protocol conformance descriptor for ScoreController);
  sub_1B8C23588();

  v1 = floor(sqrt(*(v0 + 24) * 0.5));
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v2 = v1;
  if (v1 >= 99)
  {
    v2 = 99;
  }

  v3 = floor(v2 * v2 + v2 * v2);
  if (v3 == INFINITY)
  {
    goto LABEL_13;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v3 < 9.22337204e18)
  {
    swift_getKeyPath();
    sub_1B8C23588();

    sub_1B8B522B8();
    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_1B8B51748()
{
  swift_getKeyPath();
  sub_1B8B527C0(&qword_1EBAA5F60, type metadata accessor for ScoreController, &protocol conformance descriptor for ScoreController);
  sub_1B8C23588();

  return *(v0 + 16);
}

void sub_1B8B517E8(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8B527C0(&qword_1EBAA5F60, type metadata accessor for ScoreController, &protocol conformance descriptor for ScoreController);
    sub_1B8C23578();
  }
}

void sub_1B8B51900(char a1)
{
  if (*(v1 + 17) == (a1 & 1))
  {
    *(v1 + 17) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8B527C0(&qword_1EBAA5F60, type metadata accessor for ScoreController, &protocol conformance descriptor for ScoreController);
    sub_1B8C23578();
  }
}

double sub_1B8B51A10()
{
  if (qword_1EBAA5930 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBAB39E0;
  swift_getKeyPath();
  sub_1B8B527C0(&qword_1EBAA5F60, type metadata accessor for ScoreController, &protocol conformance descriptor for ScoreController);
  sub_1B8C23588();

  v2 = *(v0 + 24);
  v3 = *(v1 + 24);
  KeyPath = swift_getKeyPath();
  if (v3 == v2)
  {
    sub_1B8B527C0(&qword_1EBAA5F10, type metadata accessor for UserDefaultsController, &unk_1B8C2D9F0);
    sub_1B8C23588();

    v5 = [objc_opt_self() sharedUserDefaults];
    v6 = sub_1B8C25A38();
    v7 = sub_1B8C250F8();
    [v5 setObject:v6 forKey:v7];

    swift_unknownObjectRelease();
  }

  else
  {
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8B527C0(&qword_1EBAA5F10, type metadata accessor for UserDefaultsController, &unk_1B8C2D9F0);
    sub_1B8C23578();
  }

  return result;
}

uint64_t sub_1B8B51CAC()
{
  swift_getKeyPath();
  sub_1B8B527C0(&qword_1EBAA5F60, type metadata accessor for ScoreController, &protocol conformance descriptor for ScoreController);
  sub_1B8C23588();

  return *(v0 + 24);
}

double sub_1B8B51D4C(uint64_t a1)
{
  if (*(v1 + 24) == a1)
  {

    return sub_1B8B51A10();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8B527C0(&qword_1EBAA5F60, type metadata accessor for ScoreController, &protocol conformance descriptor for ScoreController);
    sub_1B8C23578();
  }

  return result;
}

uint64_t ScoreController.init()(uint64_t a1)
{
  *(v1 + 16) = 0;
  sub_1B8C235B8();
  if (qword_1EBAA5930 != -1)
  {
    swift_once();
  }

  v2 = qword_1EBAB39E0;
  swift_getKeyPath();
  sub_1B8B527C0(&qword_1EBAA5F10, type metadata accessor for UserDefaultsController, &unk_1B8C2D9F0);
  sub_1B8C23588();

  *(v1 + 24) = *(v2 + 24);
  return v1;
}

void sub_1B8B51F9C()
{
  v1 = type metadata accessor for AnalyticsEvent(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  v8 = v0;
  sub_1B8B527C0(&qword_1EBAA5F60, type metadata accessor for ScoreController, &protocol conformance descriptor for ScoreController);
  sub_1B8C23588();

  v4 = floor(sqrt(*(v0 + 24) * 0.5));
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    return;
  }

  if (v4 >= 99)
  {
    v5 = 99;
  }

  else
  {
    v5 = v4;
  }

  swift_getKeyPath();
  v8 = v0;
  sub_1B8C23588();

  v6 = *(v0 + 24);
  *v3 = v5;
  v3[1] = v6;
  swift_storeEnumTagMultiPayload();
  sub_1B8C03B68();
  sub_1B8B50964(v3);
  sub_1B8C24F58();
  sub_1B8C23F08();
}

double sub_1B8B52198(uint64_t a1)
{
  if (*(a1 + 17) == 1)
  {
    *(a1 + 17) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8B527C0(&qword_1EBAA5F60, type metadata accessor for ScoreController, &protocol conformance descriptor for ScoreController);
    sub_1B8C23578();
  }

  return result;
}

void sub_1B8B522B8()
{
  swift_getKeyPath();
  sub_1B8B527C0(&qword_1EBAA5F60, type metadata accessor for ScoreController, &protocol conformance descriptor for ScoreController);
  sub_1B8C23588();

  v1 = floor(sqrt(*(v0 + 24) * 0.5));
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v2 = v1;
  if (v1 >= 99)
  {
    v2 = 99;
  }

  v3 = (v2 + 1) * (v2 + 1);
  v4 = floor(v3 + v3);
  if (v4 == INFINITY)
  {
    goto LABEL_13;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
  }
}

void sub_1B8B5241C(uint64_t a1)
{
  swift_getKeyPath();
  sub_1B8B527C0(&qword_1EBAA5F60, type metadata accessor for ScoreController, &protocol conformance descriptor for ScoreController);
  sub_1B8C23588();

  v2 = *(a1 + 24);
  v3 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1B8B522B8();
    if (v3 >= v4)
    {
      sub_1B8B51F9C();
    }

    swift_getKeyPath();
    sub_1B8C23588();

    swift_getKeyPath();
    sub_1B8C235A8();

    v5 = *(a1 + 24);
    v6 = __OFADD__(v5, 1);
    v7 = v5 + 1;
    if (!v6)
    {
      *(a1 + 24) = v7;
      sub_1B8B51A10();
      swift_getKeyPath();
      sub_1B8C23598();

      return;
    }
  }

  __break(1u);
}

uint64_t ScoreController.deinit()
{
  v1 = OBJC_IVAR____TtC8Feedback15ScoreController___observationRegistrar;
  v2 = sub_1B8C235C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ScoreController.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC8Feedback15ScoreController___observationRegistrar;
  v2 = sub_1B8C235C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ScoreController(uint64_t a1)
{
  result = qword_1EBAA64F0;
  if (!qword_1EBAA64F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8B526E8(uint64_t a1)
{
  result = sub_1B8C235C8();
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

uint64_t sub_1B8B527C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for CardStack(uint64_t a1)
{
  result = qword_1EBAA6508;
  if (!qword_1EBAA6508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B8B52920(uint64_t a1)
{
  sub_1B8B52A44(319, &qword_1EBAA5FB8, type metadata accessor for BatchController);
  if (v1 <= 0x3F)
  {
    sub_1B8B52A44(319, &qword_1EBAA6518, type metadata accessor for StateController);
    if (v2 <= 0x3F)
    {
      sub_1B8B52A44(319, &qword_1EBAA6520, type metadata accessor for DonationController);
      if (v3 <= 0x3F)
      {
        sub_1B8B52A44(319, &qword_1EBAA6528, MEMORY[0x1E697DBD0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B8B52A44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B8C23D98();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B8B52AB4()
{
  v1 = sub_1B8C242A8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);

  if ((v6 & 1) == 0)
  {
    sub_1B8C25488();
    v7 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

void sub_1B8B52BF4(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)@<X8>)
{
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6530, &qword_1B8C29238);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v53 - v5;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6540, &qword_1B8C2C1B0);
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v53 = &v53 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6548, &qword_1B8C29248);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v53 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6550, &qword_1B8C29250);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v54 = &v53 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6558, &qword_1B8C29258);
  v16 = v15 - 8;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v58 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v53 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v56 = &v53 - v22;
  v55 = a1;
  v23 = swift_projectBox();
  (*(v4 + 16))(v6, v23, v3);

  sub_1B8C24F08();
  (*(v4 + 8))(v6, v3);
  v24 = v62;
  swift_getKeyPath();
  *&v62 = v24;
  sub_1B8B54BF8(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
  sub_1B8C23588();

  v25 = *(v24 + 40);
  swift_getKeyPath();
  *&v62 = v24;
  sub_1B8C23588();

  v26 = *(v24 + 48);

  *&v62 = v25 / v26;
  BYTE8(v62) = 0;
  v61 = 0x3FF0000000000000;
  sub_1B8B54888(v27, v28, v29);
  v30 = v53;
  sub_1B8C23DD8();
  sub_1B8C24F48();
  sub_1B8C24088();
  (*(v57 + 32))(v11, v30, v59);
  v31 = &v11[*(v9 + 44)];
  v32 = v67;
  *(v31 + 4) = v66;
  *(v31 + 5) = v32;
  *(v31 + 6) = v68;
  v33 = v63;
  *v31 = v62;
  *(v31 + 1) = v33;
  v34 = v65;
  *(v31 + 2) = v64;
  *(v31 + 3) = v34;
  LOBYTE(v9) = sub_1B8C24808();
  v35 = v11;
  v36 = v54;
  sub_1B8B3883C(v35, v54, &qword_1EBAA6548, &qword_1B8C29248);
  v37 = v36 + *(v13 + 44);
  *v37 = v9;
  *(v37 + 8) = 0u;
  *(v37 + 24) = 0u;
  *(v37 + 40) = 1;
  LOBYTE(v9) = sub_1B8C24828();
  sub_1B8C23D18();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  sub_1B8B3883C(v36, v21, &qword_1EBAA6550, &qword_1B8C29250);
  v46 = &v21[*(v16 + 44)];
  *v46 = v9;
  *(v46 + 1) = v39;
  *(v46 + 2) = v41;
  *(v46 + 3) = v43;
  *(v46 + 4) = v45;
  v46[40] = 0;
  v47 = v56;
  sub_1B8B3883C(v21, v56, &qword_1EBAA6558, &qword_1B8C29258);
  v48 = v58;
  sub_1B8B34450(v47, v58, &qword_1EBAA6558, &qword_1B8C29258);
  v49 = v60;
  v50 = v55;
  *v60 = sub_1B8B547A8;
  v49[1] = v50;
  v51 = v49;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6568, &qword_1B8C292B0);
  sub_1B8B34450(v48, v51 + *(v52 + 48), &qword_1EBAA6558, &qword_1B8C29258);

  sub_1B8B3433C(v47, &qword_1EBAA6558, &qword_1B8C29258);
  sub_1B8B3433C(v48, &qword_1EBAA6558, &qword_1B8C29258);
}

uint64_t sub_1B8B53208@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  *a3 = sub_1B8C24F48();
  a3[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6570, &qword_1B8C292B8);
  sub_1B8B532EC(a1, a3 + *(v6 + 44));
  sub_1B8C23E88();
  sub_1B8C23E88();
  sub_1B8C24F48();
  sub_1B8C23E38();
  v7 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6578, &qword_1B8C292C0) + 36));
  *v7 = v9;
  v7[1] = v10;
  v7[2] = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6580, &qword_1B8C292C8);
  *(a3 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1B8B532EC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v159 = a2;
  v171 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6588, &unk_1B8C2DB50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v166 = &v152 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6590, &qword_1B8C2EFD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v173 = &v152 - v6;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6598, &qword_1B8C292D0);
  v7 = MEMORY[0x1EEE9AC00](v174);
  v153 = &v152 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v177 = &v152 - v9;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65A0, &qword_1B8C292D8);
  v10 = MEMORY[0x1EEE9AC00](v172);
  v154 = &v152 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v178 = &v152 - v12;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65A8, &qword_1B8C292E0);
  v13 = MEMORY[0x1EEE9AC00](v175);
  v155 = &v152 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v160 = &v152 - v15;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65B0, &qword_1B8C292E8);
  v16 = MEMORY[0x1EEE9AC00](v176);
  v158 = &v152 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v163 = &v152 - v18;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65B8, &qword_1B8C292F0);
  v182 = *(v179 - 8);
  v19 = MEMORY[0x1EEE9AC00](v179);
  v157 = &v152 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v156 = &v152 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v162 = &v152 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v161 = &v152 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6530, &qword_1B8C29238);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v152 - v28;
  v165 = type metadata accessor for BatchInteraction(0);
  v30 = *(v165 - 8);
  v31 = MEMORY[0x1EEE9AC00](v165);
  v167 = &v152 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v152 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v152 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65C0, &qword_1B8C292F8);
  v39 = MEMORY[0x1EEE9AC00](v38 - 8);
  v170 = &v152 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v169 = &v152 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v168 = &v152 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v181 = &v152 - v45;
  v46 = swift_projectBox();
  v48 = v27 + 16;
  v47 = *(v27 + 16);
  v183 = v46;
  v185 = v47;
  (v47)(v29);
  sub_1B8C24F08();
  v50 = *(v27 + 8);
  v49 = v27 + 8;
  v186 = v50;
  v50(v29, v26);
  v51 = v190;
  swift_getKeyPath();
  v190 = v51;
  v184 = sub_1B8B54BF8(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
  sub_1B8C23588();

  v52 = *(v51 + 32);
  v53 = *(v52 + 16);
  v180 = v48;
  v164 = v30;
  if (v53)
  {
    sub_1B8B548DC(v52 + ((*(v30 + 80) + 32) & ~*(v30 + 80)), v35);

    sub_1B8B54940(v35, v37);
    v152 = v37;
    v54 = v177;
    sub_1B8B548DC(v37, v177);
    v55 = type metadata accessor for EvaluationCard(0);
    *(v54 + v55[5]) = 1;
    v56 = v54 + v55[6];
    type metadata accessor for BatchController(0);
    sub_1B8B54BF8(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
    *v56 = sub_1B8C23DA8();
    *(v56 + 8) = v57 & 1;
    v58 = (v54 + v55[7]);
    v59 = sub_1B8C23738();
    v60 = v173;
    (*(*(v59 - 8) + 56))(v173, 1, 1, v59);
    v61 = objc_allocWithZone(type metadata accessor for FBKEvaluationController(0));
    v188 = FBKEvaluationController.init(subject:)(v60);
    sub_1B8C24D58();
    v62 = v191;
    *v58 = v190;
    v58[1] = v62;
    v63 = sub_1B8C24808();
    v64 = v54 + *(v174 + 36);
    *v64 = v63;
    *(v64 + 8) = 0u;
    *(v64 + 24) = 0u;
    *(v64 + 40) = 1;
    v65 = v183;
    v66 = v185;
    v185(v29, v183, v26);
    sub_1B8C24F08();
    v186(v29, v26);
    v67 = v190;
    swift_getKeyPath();
    v190 = v67;
    sub_1B8C23588();

    LODWORD(v55) = *(v67 + 65);

    if (v55)
    {
      v68 = 0.8;
    }

    else
    {
      v68 = 1.0;
    }

    sub_1B8C24F78();
    v70 = v69;
    v72 = v71;
    v73 = v178;
    sub_1B8B3883C(v177, v178, &qword_1EBAA6598, &qword_1B8C292D0);
    v74 = &v73[*(v172 + 36)];
    *v74 = v68;
    v74[1] = v68;
    *(v74 + 2) = v70;
    *(v74 + 3) = v72;
    v66(v29, v65, v26);
    sub_1B8C24F08();
    v186(v29, v26);
    v75 = v190;
    swift_getKeyPath();
    v190 = v75;
    sub_1B8C23588();

    LODWORD(v73) = *(v75 + 65);

    v76 = 0.0;
    v77 = 0.0;
    if (v73 == 1)
    {
      sub_1B8C23E88();
      v77 = -v78;
    }

    v79 = v160;
    sub_1B8B3883C(v178, v160, &qword_1EBAA65A0, &qword_1B8C292D8);
    v80 = v79 + *(v175 + 36);
    *v80 = v77;
    *(v80 + 8) = 0;
    v185(v29, v183, v26);
    sub_1B8C24F08();
    v186(v29, v26);
    v81 = v190;
    swift_getKeyPath();
    v190 = v81;
    sub_1B8C23588();

    v82 = *(v81 + 65);

    if (!v82)
    {
      v76 = 1.0;
    }

    v83 = v163;
    sub_1B8B3883C(v79, v163, &qword_1EBAA65A8, &qword_1B8C292E0);
    *(v83 + *(v176 + 36)) = v76;
    v190 = 0x2D746E6572727563;
    v191 = 0xE800000000000000;
    sub_1B8C23568();
    sub_1B8B54BF8(&qword_1EBAA6260, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v84 = v152;
    v85 = sub_1B8C259E8();
    MEMORY[0x1B8CC9EB0](v85);

    v86 = v190;
    v87 = v191;
    sub_1B8B54C40(v84);
    v88 = v83;
    v89 = v162;
    sub_1B8B3883C(v88, v162, &qword_1EBAA65B0, &qword_1B8C292E8);
    v90 = v179;
    v91 = (v89 + *(v179 + 52));
    *v91 = v86;
    v91[1] = v87;
    v92 = v89;
    v93 = v161;
    sub_1B8B3883C(v92, v161, &qword_1EBAA65B8, &qword_1B8C292F0);
    v94 = v93;
    v95 = v181;
    sub_1B8B3883C(v94, v181, &qword_1EBAA65B8, &qword_1B8C292F0);
    v96 = 0;
  }

  else
  {

    v96 = 1;
    v90 = v179;
    v95 = v181;
  }

  v97 = *(v182 + 56);
  v182 += 56;
  v178 = v97;
  (v97)(v95, v96, 1, v90);
  v185(v29, v183, v26);
  sub_1B8C24F08();
  v186(v29, v26);
  v98 = v190;
  swift_getKeyPath();
  v190 = v98;
  sub_1B8C23588();

  v99 = OBJC_IVAR____TtC8Feedback18DonationController__nextDonation;
  swift_beginAccess();
  v100 = v98 + v99;
  v101 = v166;
  sub_1B8B34450(v100, v166, &qword_1EBAA6588, &unk_1B8C2DB50);

  if ((*(v164 + 48))(v101, 1, v165) == 1)
  {
    sub_1B8B3433C(v101, &qword_1EBAA6588, &unk_1B8C2DB50);
    v102 = 1;
    v103 = v168;
  }

  else
  {
    v104 = v101;
    v105 = v167;
    sub_1B8B54940(v104, v167);
    v106 = v153;
    sub_1B8B548DC(v105, v153);
    v107 = type metadata accessor for EvaluationCard(0);
    *(v106 + v107[5]) = 0;
    v108 = v106 + v107[6];
    type metadata accessor for BatchController(0);
    sub_1B8B54BF8(&qword_1EBAA5AD0, type metadata accessor for BatchController, &protocol conformance descriptor for BatchController);
    *v108 = sub_1B8C23DA8();
    *(v108 + 8) = v109 & 1;
    v110 = (v106 + v107[7]);
    v111 = sub_1B8C23738();
    v112 = v183;
    v113 = v173;
    (*(*(v111 - 8) + 56))(v173, 1, 1, v111);
    v114 = objc_allocWithZone(type metadata accessor for FBKEvaluationController(0));
    v187 = FBKEvaluationController.init(subject:)(v113);
    sub_1B8C24D58();
    v115 = v189;
    *v110 = v188;
    v110[1] = v115;
    v116 = sub_1B8C24808();
    v117 = v106 + *(v174 + 36);
    *v117 = v116;
    *(v117 + 8) = 0u;
    *(v117 + 24) = 0u;
    *(v117 + 40) = 1;
    v185(v29, v112, v26);
    sub_1B8C24F08();
    v186(v29, v26);
    v118 = v188;
    swift_getKeyPath();
    v188 = v118;
    sub_1B8C23588();

    LODWORD(v107) = *(v118 + 65);

    if (v107)
    {
      v119 = 1.0;
    }

    else
    {
      v119 = 0.8;
    }

    sub_1B8C24F78();
    v121 = v120;
    v123 = v122;
    v124 = v154;
    sub_1B8B3883C(v106, v154, &qword_1EBAA6598, &qword_1B8C292D0);
    v125 = v124 + *(v172 + 36);
    *v125 = v119;
    *(v125 + 8) = v119;
    *(v125 + 16) = v121;
    *(v125 + 24) = v123;
    v185(v29, v112, v26);
    v126 = v186;
    sub_1B8C24F08();
    v177 = v49;
    v126(v29, v26);
    v127 = v188;
    swift_getKeyPath();
    v188 = v127;
    sub_1B8C23588();

    v128 = *(v127 + 65);

    v129 = 0;
    if ((v128 & 1) == 0)
    {
      sub_1B8C23E88();
      v129 = v130;
    }

    v131 = v155;
    sub_1B8B3883C(v124, v155, &qword_1EBAA65A0, &qword_1B8C292D8);
    v132 = (v131 + *(v175 + 36));
    *v132 = v129;
    v132[1] = 0;
    v185(v29, v183, v26);
    sub_1B8C24F08();
    v126(v29, v26);
    v133 = v188;
    swift_getKeyPath();
    v188 = v133;
    sub_1B8C23588();

    v134 = *(v133 + 65);

    if (v134)
    {
      v135 = 1.0;
    }

    else
    {
      v135 = 0.0;
    }

    v136 = v158;
    sub_1B8B3883C(v131, v158, &qword_1EBAA65A8, &qword_1B8C292E0);
    *(v136 + *(v176 + 36)) = v135;
    v188 = 0x2D7478656ELL;
    v189 = 0xE500000000000000;
    sub_1B8C23568();
    sub_1B8B54BF8(&qword_1EBAA6260, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v137 = v167;
    v138 = sub_1B8C259E8();
    MEMORY[0x1B8CC9EB0](v138);

    v139 = v188;
    v140 = v189;
    sub_1B8B54C40(v137);
    v141 = v136;
    v142 = v157;
    sub_1B8B3883C(v141, v157, &qword_1EBAA65B0, &qword_1B8C292E8);
    v90 = v179;
    v143 = (v142 + *(v179 + 52));
    *v143 = v139;
    v143[1] = v140;
    v144 = v142;
    v145 = v156;
    sub_1B8B3883C(v144, v156, &qword_1EBAA65B8, &qword_1B8C292F0);
    v103 = v168;
    sub_1B8B3883C(v145, v168, &qword_1EBAA65B8, &qword_1B8C292F0);
    v102 = 0;
  }

  (v178)(v103, v102, 1, v90);
  v146 = v181;
  v147 = v169;
  sub_1B8B34450(v181, v169, &qword_1EBAA65C0, &qword_1B8C292F8);
  v148 = v170;
  sub_1B8B34450(v103, v170, &qword_1EBAA65C0, &qword_1B8C292F8);
  v149 = v171;
  sub_1B8B34450(v147, v171, &qword_1EBAA65C0, &qword_1B8C292F8);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65C8, &qword_1B8C29378);
  sub_1B8B34450(v148, v149 + *(v150 + 48), &qword_1EBAA65C0, &qword_1B8C292F8);
  sub_1B8B3433C(v103, &qword_1EBAA65C0, &qword_1B8C292F8);
  sub_1B8B3433C(v146, &qword_1EBAA65C0, &qword_1B8C292F8);
  sub_1B8B3433C(v148, &qword_1EBAA65C0, &qword_1B8C292F8);
  return sub_1B8B3433C(v147, &qword_1EBAA65C0, &qword_1B8C292F8);
}

double sub_1B8B546B8@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6530, &qword_1B8C29238);
  v2 = swift_allocBox();
  sub_1B8B52AB4();
  type metadata accessor for DonationController(0);
  sub_1B8B54BF8(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
  sub_1B8C24F28();
  *a1 = sub_1B8C24468();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6538, &qword_1B8C29240);
  sub_1B8B52BF4(v2, (a1 + *(v3 + 44)));

  return result;
}

uint64_t sub_1B8B547B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B54BF8(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
  sub_1B8C23588();

  *a2 = *(v3 + 32);
}

unint64_t sub_1B8B54888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA6560;
  if (!qword_1EBAA6560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6560);
  }

  return result;
}

uint64_t sub_1B8B548DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BatchInteraction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B54940(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BatchInteraction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B8B549A4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B54BF8(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
  sub_1B8C23588();

  *a2 = *(v3 + 65);
}

uint64_t sub_1B8B54A74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B54BF8(&qword_1EBAA5F00, type metadata accessor for DonationController, &protocol conformance descriptor for DonationController);
  sub_1B8C23588();

  v4 = OBJC_IVAR____TtC8Feedback18DonationController__nextDonation;
  swift_beginAccess();
  return sub_1B8B34450(v3 + v4, a2, &qword_1EBAA6588, &unk_1B8C2DB50);
}

uint64_t sub_1B8B54B4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6588, &unk_1B8C2DB50);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1B8B34450(a1, &v6 - v3, &qword_1EBAA6588, &unk_1B8C2DB50);
  return sub_1B8BC3D58(v4);
}

uint64_t sub_1B8B54BF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B8B54C40(uint64_t a1)
{
  v2 = type metadata accessor for BatchInteraction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B8B54C9C()
{
  result = qword_1EBAA65D0;
  if (!qword_1EBAA65D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA65D8, &unk_1B8C29380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA65D0);
  }

  return result;
}

uint64_t sub_1B8B54D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_1B8B5EE34(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_1B8B5E2DC(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_1B8B94220();
        v16 = v18;
      }

      result = sub_1B8B5EC84(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

BOOL sub_1B8B54E08(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_1B8C237B8();
    ++v2;
    sub_1B8B5FB84(&unk_1EBAA8610, MEMORY[0x1E699C390], MEMORY[0x1E699C3A0]);
  }

  while ((sub_1B8C250E8() & 1) == 0);
  return v3 != v4;
}

uint64_t FBKSInteraction.feedbackForm(interaction:action:attachmentDirectory:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[31] = a3;
  v4[32] = v3;
  v4[29] = a1;
  v4[30] = a2;
  v5 = sub_1B8C23A08();
  v4[33] = v5;
  v4[34] = *(v5 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65E0, &qword_1B8C29420);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v6 = sub_1B8C237B8();
  v4[40] = v6;
  v4[41] = *(v6 - 8);
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8B5509C, 0, 0);
}

uint64_t sub_1B8B5509C()
{
  v35 = v0[43];
  v1 = v0[40];
  v2 = v0[41];
  sub_1B8C23968();
  v3 = objc_allocWithZone(type metadata accessor for FBKFeedbackForm());
  v4 = FBKFeedbackForm.init(identifier:)(0xD000000000000018, 0x80000001B8C32AB0);
  v0[44] = v4;
  v5 = &v4[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__largeTitleIcon];
  *v5 = 0xD00000000000001BLL;
  v5[1] = 0x80000001B8C32AD0;

  v4[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__showInlineUserInfo] = 1;
  v4[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__hideAttachmentButton] = 1;
  v6 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_alwaysDeletesDrafts;
  swift_beginAccess();
  v4[v6] = 1;
  v7 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_allowsAttachmentDragAndDrop;
  swift_beginAccess();
  v4[v7] = 0;
  v4[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__disableAccountSwitching] = 1;
  sub_1B8C237C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65E8, &qword_1B8C2AEF0);
  v8 = *(v2 + 72);
  v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v10 = 4 * v8;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B8C29390;
  v34 = v9;
  v12 = v11 + v9;
  v13 = *MEMORY[0x1E699C270];
  v14 = *(v2 + 104);
  v0[45] = v14;
  v0[46] = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v14(v12, v13, v1);
  v14(v12 + v8, *MEMORY[0x1E699C2D8], v1);
  v14(v12 + 2 * v8, *MEMORY[0x1E699C2D0], v1);
  v32 = v8;
  v33 = 2 * v8;
  v15 = 3 * v8;
  v14(v12 + v15, *MEMORY[0x1E699C368], v1);
  v16 = v1;
  v14(v12 + v10, *MEMORY[0x1E699C2F8], v1);
  LOBYTE(v1) = sub_1B8B54E08(v35, v11);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v17 = *(v2 + 8);
  v0[47] = v17;
  v0[48] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v35, v16);
  if ((v1 & 1) != 0 || (v18 = v0[43], v19 = v0[40], sub_1B8C237C8(), v20 = swift_allocObject(), *(v20 + 16) = xmmword_1B8C293A0, v14(v20 + v34, *MEMORY[0x1E699C300], v19), v14(v20 + v34 + v32, *MEMORY[0x1E699C320], v19), v14(v20 + v34 + v33, *MEMORY[0x1E699C388], v19), v14(v20 + v34 + v15, *MEMORY[0x1E699C350], v19), v21 = sub_1B8B54E08(v18, v20), swift_setDeallocating(), swift_arrayDestroy(), swift_deallocClassInstance(), v22 = (v17)(v18, v19), v21) || (MEMORY[0x1B8CCA870](v22) & 1) == 0)
  {
    v23 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_authenticationMethod;
    swift_beginAccess();
    v4[v23] = 0;
  }

  v24 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_authenticationMethod;
  swift_beginAccess();
  v25 = "ding.reportconcernAuth";
  if (v4[v24])
  {
    v26 = 0xD000000000000026;
  }

  else
  {
    v26 = 0xD000000000000028;
  }

  if (v4[v24])
  {
    v25 = "exclamationmark.bubble.fill";
  }

  v27 = &v4[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__onBoardingKitIdentifier];
  v28 = v25 | 0x8000000000000000;
  swift_beginAccess();
  *v27 = v26;
  v27[1] = v28;

  v4[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__useInlineChoices] = 1;
  v4[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__showUserSwitcherLast] = 1;
  v29 = swift_task_alloc();
  v0[49] = v29;
  *v29 = v0;
  v29[1] = sub_1B8B555D0;
  v30 = v0[31];

  return FBKSInteraction.writeAttachments(baseURL:)(v30);
}

uint64_t sub_1B8B555D0(uint64_t a1)
{
  *(*v1 + 400) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B8B556D0, 0, 0);
}

uint64_t sub_1B8B556D0()
{
  v113 = v0;
  v1 = v0[50];
  if (!*(v1 + 16))
  {
    goto LABEL_10;
  }

  sub_1B8B5E458(0);
  if (v2)
  {
    swift_beginAccess();

    sub_1B8B58A7C(v3, &qword_1EBAA6658, &qword_1B8C29498, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB0]);
  }

  if (!*(v1 + 16))
  {
    goto LABEL_10;
  }

  sub_1B8B5E458(1);
  if (v4)
  {
    swift_beginAccess();

    sub_1B8B58A7C(v5, &qword_1EBAA6658, &qword_1B8C29498, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB0]);
  }

  if (*(v1 + 16) && (v6 = sub_1B8B5E458(2), (v7 & 1) != 0))
  {
    v8 = *(*(v0[50] + 56) + 16 * v6);

    swift_beginAccess();
    sub_1B8B58A7C(v8, &qword_1EBAA6658, &qword_1B8C29498, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB0]);
  }

  else
  {
LABEL_10:
  }

  v106 = v0;
  v9 = v0[47];
  v109 = v0[45];
  v10 = v0[43];
  v11 = v0[42];
  v12 = v0[40];
  sub_1B8C237C8();
  v13 = sub_1B8BE36EC();
  v15 = v14;
  v9(v10, v12);
  *&v112 = v13;
  *(&v112 + 1) = v15;
  MEMORY[0x1B8CC9EB0](0x209480E220, 0xA500000000000000);
  v16 = sub_1B8BE3E4C();
  MEMORY[0x1B8CC9EB0](v16);

  v17 = v112;
  v112 = 0uLL;
  sub_1B8C0BEEC(&v112, v17, *(&v17 + 1));

  sub_1B8C237C8();
  v109(v11, *MEMORY[0x1E699C378], v12);
  sub_1B8B5FB84(&unk_1EBAA8610, MEMORY[0x1E699C390], MEMORY[0x1E699C3A0]);
  LOBYTE(v13) = sub_1B8C250E8();
  v9(v11, v12);
  v9(v10, v12);
  if ((v13 & 1) == 0)
  {
    v18 = v0[47];
    v19 = v0[43];
    v20 = v0[40];
    v112 = xmmword_1B8C293B0;
    sub_1B8C237C8();
    v21 = sub_1B8BE429C();
    v23 = v22;
    v18(v19, v20);
    sub_1B8C0BEEC(&v112, v21, v23);
  }

  v24 = sub_1B8C23778();
  if (v25)
  {
    v112 = xmmword_1B8C293C0;
    sub_1B8C0BEEC(&v112, v24, v25);

    sub_1B8B5E4C4(v112, *(&v112 + 1));
  }

  v26 = sub_1B8C23948();
  if (!v27)
  {
    if (qword_1EBAA5968 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_55;
  }

  v112 = xmmword_1B8C293D0;
  sub_1B8C0BEEC(&v112, v26, v27);

  sub_1B8B5E4C4(v112, *(&v112 + 1));
  while (1)
  {
    v112 = xmmword_1B8C293E0;
    v43 = sub_1B8BE49C0();
    sub_1B8C0BEEC(&v112, v43, v44);

    sub_1B8B5E4C4(v112, *(&v112 + 1));
    v45 = sub_1B8C238E8();
    if (!v45)
    {
      break;
    }

    v46 = v45;
    v47 = 0;
    v48 = v45 + 64;
    v49 = -1;
    v50 = -1 << *(v45 + 32);
    v51 = v0[34];
    if (-v50 < 64)
    {
      v49 = ~(-1 << -v50);
    }

    v52 = v49 & *(v45 + 64);
    v99 = (63 - v50) >> 6;
    v100 = v0[34];
    v110 = (v51 + 16);
    v103 = (v51 + 32);
    v53 = (v51 + 8);
    v111 = (v51 + 8);
    v101 = v45 + 64;
    v102 = v45;
    while (v52)
    {
      v105 = v47;
      v54 = v47;
LABEL_37:
      v57 = v0[37];
      v58 = v0[38];
      v59 = v0[33];
      v104 = (v52 - 1) & v52;
      v60 = __clz(__rbit64(v52)) | (v54 << 6);
      (*(v100 + 16))(v57, *(v46 + 48) + *(v100 + 72) * v60, v59);
      v61 = *(*(v46 + 56) + 8 * v60);
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65F0, &qword_1B8C29430);
      v63 = *(v62 + 48);
      (*(v100 + 32))(v58, v57, v59);
      *(v58 + v63) = v61;
      (*(*(v62 - 8) + 56))(v58, 0, 1, v62);

      v53 = v111;
      v48 = v101;
LABEL_38:
      v64 = v0[39];
      sub_1B8B3883C(v0[38], v64, &qword_1EBAA65E0, &qword_1B8C29420);
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65F0, &qword_1B8C29430);
      if ((*(*(v65 - 8) + 48))(v64, 1, v65) == 1)
      {

        goto LABEL_50;
      }

      v66 = *(v0[39] + *(v65 + 48));
      (*v103)(v0[36]);
      v67 = *(v66 + 16);
      v46 = v102;
      if (v67)
      {
        v68 = (v66 + 40);
        do
        {
          v74 = *(v68 - 1);
          v73 = *v68;
          v75 = qword_1EBAA5968;

          if (v75 != -1)
          {
            swift_once();
          }

          v76 = v0[35];
          v77 = v0[36];
          v78 = v0[33];
          v79 = sub_1B8C23C38();
          __swift_project_value_buffer(v79, qword_1EBAB3A00);
          (*v110)(v76, v77, v78);

          v80 = sub_1B8C23C18();
          v81 = sub_1B8C25468();

          v82 = os_log_type_enabled(v80, v81);
          v83 = v0[35];
          v84 = v0[33];
          if (v82)
          {
            v108 = v67;
            v85 = swift_slowAlloc();
            v107 = swift_slowAlloc();
            *&v112 = v107;
            *v85 = 136446467;
            sub_1B8B5FB84(&qword_1EBAA65F8, MEMORY[0x1E699C658], MEMORY[0x1E699C670]);
            v86 = v74;
            v87 = sub_1B8C259E8();
            v89 = v88;
            v90 = v84;
            v70 = *v111;
            (*v111)(v83, v90);
            v91 = v87;
            v74 = v86;
            v92 = sub_1B8B5DD48(v91, v89, &v112);
            v53 = v111;

            *(v85 + 4) = v92;
            *(v85 + 12) = 2081;
            *(v85 + 14) = sub_1B8B5DD48(v86, v73, &v112);
            _os_log_impl(&dword_1B8B22000, v80, v81, "Pre-filling question-answer: %{public}s -> %{private}s", v85, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1B8CCB0E0](v107, -1, -1);
            v93 = v85;
            v67 = v108;
            v0 = v106;
            MEMORY[0x1B8CCB0E0](v93, -1, -1);
          }

          else
          {

            v69 = v84;
            v70 = *v53;
            v71 = (*v53)(v83, v69);
          }

          *&v112 = MEMORY[0x1B8CC86C0](v71);
          *(&v112 + 1) = v72;
          sub_1B8C0BEEC(&v112, v74, v73);

          sub_1B8B5E4C4(v112, *(&v112 + 1));
          v68 += 2;
          --v67;
        }

        while (v67);

        v48 = v101;
        v46 = v102;
        v70(v0[36], v0[33]);
      }

      else
      {

        (*v53)(v0[36], v0[33]);
      }

      v52 = v104;
      v47 = v105;
    }

    if (v99 <= v47 + 1)
    {
      v55 = v47 + 1;
    }

    else
    {
      v55 = v99;
    }

    v56 = v55 - 1;
    while (1)
    {
      v54 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v54 >= v99)
      {
        v94 = v0[38];
        v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65F0, &qword_1B8C29430);
        (*(*(v95 - 8) + 56))(v94, 1, 1, v95);
        v104 = 0;
        v105 = v56;
        goto LABEL_38;
      }

      v52 = *(v48 + 8 * v54);
      ++v47;
      if (v52)
      {
        v105 = v54;
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_55:
    swift_once();
LABEL_18:
    v28 = v0[29];
    v29 = sub_1B8C23C38();
    __swift_project_value_buffer(v29, qword_1EBAB3A00);
    v30 = v28;
    v31 = sub_1B8C23C18();
    v32 = sub_1B8C25478();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = v0[29];
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v112 = v35;
      *v34 = 136315138;
      v36 = v33;
      v37 = [v36 description];
      v38 = sub_1B8C25128();
      v40 = v39;

      v41 = sub_1B8B5DD48(v38, v40, &v112);

      *(v34 + 4) = v41;
      _os_log_impl(&dword_1B8B22000, v31, v32, "No bundle identifier found in interaction [%s]", v34, 0xCu);
      v42 = __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x1B8CCB0E0](v35, -1, -1, v42);
      MEMORY[0x1B8CCB0E0](v34, -1, -1);
    }
  }

LABEL_50:

  v96 = v0[1];
  v97 = v0[44];

  return v96(v97);
}

uint64_t FBKSInteraction.writeAttachments(baseURL:)(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = sub_1B8C23938();
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6280, &unk_1B8C285B0);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6290, &qword_1B8C2F800);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v4 = sub_1B8C238B8();
  v2[26] = v4;
  v2[27] = *(v4 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v5 = sub_1B8C23498();
  v2[31] = v5;
  v2[32] = *(v5 - 8);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8B5650C, 0, 0);
}

uint64_t sub_1B8B5650C()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 120);
  v3 = MEMORY[0x1E69E7CC0];
  v4 = sub_1B8B5F6B8(MEMORY[0x1E69E7CC0]);
  *(v0 + 280) = v4;
  type metadata accessor for FBKEvaluationController(0);
  sub_1B8BE4CD0(v2, v1);
  v7 = *(v0 + 208);
  v8 = *(v0 + 216);
  v9 = *(v0 + 200);
  (*(*(v0 + 256) + 32))(*(v0 + 272), *(v0 + 264), *(v0 + 248));
  sub_1B8B58E2C();
  sub_1B8B5A21C();
  sub_1B8C238F8();
  v10 = *(v8 + 48);
  *(v0 + 288) = v10;
  *(v0 + 296) = (v8 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v11 = v10(v9, 1, v7);
  if (v11 != 1)
  {
    (*(*(v0 + 216) + 32))(*(v0 + 240), *(v0 + 200), *(v0 + 208));
    sub_1B8C237F8();
    *(v0 + 408) = 0;
    v30 = swift_task_alloc();
    *(v0 + 304) = v30;
    *v30 = v0;
    v30[1] = sub_1B8B56E80;
    v31 = *(v0 + 272);
    v32 = *(v0 + 240);
    v33 = *(v0 + 184);
    v34 = v0 + 96;
    v35 = (v0 + 408);
LABEL_15:

    return sub_1B8B5A7DC(v34, v32, v31, v33, v35);
  }

  v12 = *(v0 + 176);
  v13 = *(v0 + 136);
  v14 = *(v0 + 144);
  sub_1B8B3433C(*(v0 + 200), &qword_1EBAA6290, &qword_1B8C2F800);
  sub_1B8C237F8();
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    (*(*(v0 + 144) + 32))(*(v0 + 160), *(v0 + 176), *(v0 + 136));
    *(v0 + 407) = 0;
    v36 = swift_task_alloc();
    *(v0 + 312) = v36;
    *v36 = v0;
    v36[1] = sub_1B8B57548;
    v37 = *(v0 + 272);
    v38 = *(v0 + 160);
    v39 = v0 + 80;
    v40 = (v0 + 407);
LABEL_19:

    return sub_1B8B5B200(v39, v38, v37, v40);
  }

  sub_1B8B3433C(*(v0 + 176), &qword_1EBAA6280, &unk_1B8C285B0);
  *(v0 + 320) = v4;
  v15 = *(v0 + 288);
  v16 = *(v0 + 208);
  v17 = *(v0 + 192);
  sub_1B8C23918();
  if (v15(v17, 1, v16) != 1)
  {
    (*(*(v0 + 216) + 32))(*(v0 + 232), *(v0 + 192), *(v0 + 208));
    sub_1B8C238D8();
    *(v0 + 406) = 1;
    v41 = swift_task_alloc();
    *(v0 + 328) = v41;
    *v41 = v0;
    v41[1] = sub_1B8B57BE4;
    v31 = *(v0 + 272);
    v32 = *(v0 + 232);
    v33 = *(v0 + 184);
    v34 = v0 + 64;
    v35 = (v0 + 406);
    goto LABEL_15;
  }

  v18 = *(v0 + 168);
  v19 = *(v0 + 136);
  v20 = *(v0 + 144);
  sub_1B8B3433C(*(v0 + 192), &qword_1EBAA6290, &qword_1B8C2F800);
  sub_1B8C238D8();
  if ((*(v20 + 48))(v18, 1, v19) != 1)
  {
    (*(*(v0 + 144) + 32))(*(v0 + 152), *(v0 + 168), *(v0 + 136));
    *(v0 + 405) = 1;
    v42 = swift_task_alloc();
    *(v0 + 336) = v42;
    *v42 = v0;
    v42[1] = sub_1B8B580D8;
    v37 = *(v0 + 272);
    v38 = *(v0 + 152);
    v39 = v0 + 48;
    v40 = (v0 + 405);
    goto LABEL_19;
  }

  sub_1B8B3433C(*(v0 + 168), &qword_1EBAA6280, &unk_1B8C285B0);
  *(v0 + 344) = v4;
  *(v0 + 16) = v3;
  *(v0 + 24) = v3;
  v21 = *(sub_1B8C23768() + 16);

  if (v21)
  {
    if (qword_1EBAA5968 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 128);
    v23 = sub_1B8C23C38();
    __swift_project_value_buffer(v23, qword_1EBAB3A00);
    v24 = v22;
    v25 = sub_1B8C23C18();
    v26 = sub_1B8C25458();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = *(v0 + 128);
      v28 = swift_slowAlloc();
      *v28 = 134217984;
      v29 = *(sub_1B8C23768() + 16);

      *(v28 + 4) = v29;

      _os_log_impl(&dword_1B8B22000, v25, v26, "Will attach [%ld] annotated extra content.", v28, 0xCu);
      MEMORY[0x1B8CCB0E0](v28, -1, -1);
    }

    else
    {

      v25 = *(v0 + 128);
    }
  }

  v43 = sub_1B8C23768();
  *(v0 + 352) = v43;
  v44 = *(v43 + 16);
  *(v0 + 360) = v44;
  if (v44)
  {
    v45 = *(v0 + 208);
    v46 = *(v0 + 216);
    v47 = *(v46 + 16);
    v46 += 16;
    v48 = *(v46 + 64);
    *(v0 + 400) = v48;
    *(v0 + 368) = *(v46 + 56);
    *(v0 + 376) = v47;
    *(v0 + 384) = 0;
    v49 = *(v0 + 184);
    v50 = *(v0 + 136);
    v51 = *(v0 + 144);
    v47(*(v0 + 224), v43 + ((v48 + 32) & ~v48), v45);
    (*(v51 + 56))(v49, 1, 1, v50);
    *(v0 + 404) = 2;
    v52 = swift_task_alloc();
    *(v0 + 392) = v52;
    *v52 = v0;
    v52[1] = sub_1B8B585A0;
    v31 = *(v0 + 272);
    v32 = *(v0 + 224);
    v33 = *(v0 + 184);
    v34 = v0 + 32;
    v35 = (v0 + 404);
    goto LABEL_15;
  }

  v53 = *(v0 + 344);
  v54 = *(v0 + 272);
  v55 = *(v0 + 248);
  v56 = *(v0 + 256);
  v57 = *(v0 + 16);
  v58 = *(v0 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1B8B5EF84(v57, v58, 2, isUniquelyReferenced_nonNull_native);
  (*(v56 + 8))(v54, v55);

  v5 = *(v0 + 8);

  return v5(v53);
}

uint64_t sub_1B8B56E80()
{
  v1 = *(*v0 + 184);

  sub_1B8B3433C(v1, &qword_1EBAA6280, &unk_1B8C285B0);

  return MEMORY[0x1EEE6DFA0](sub_1B8B56FA8, 0, 0);
}

uint64_t sub_1B8B56FA8()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 240);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1B8B5EF84(v5, v6, 0, isUniquelyReferenced_nonNull_native);
  (*(v4 + 8))(v2, v3);
  *(v0 + 320) = v1;
  v8 = *(v0 + 288);
  v9 = *(v0 + 208);
  v10 = *(v0 + 192);
  sub_1B8C23918();
  if (v8(v10, 1, v9) != 1)
  {
    (*(*(v0 + 216) + 32))(*(v0 + 232), *(v0 + 192), *(v0 + 208));
    sub_1B8C238D8();
    *(v0 + 406) = 1;
    v24 = swift_task_alloc();
    *(v0 + 328) = v24;
    *v24 = v0;
    v24[1] = sub_1B8B57BE4;
    v25 = *(v0 + 272);
    v26 = *(v0 + 232);
    v27 = *(v0 + 184);
    v28 = v0 + 64;
    v29 = (v0 + 406);
LABEL_16:

    return sub_1B8B5A7DC(v28, v26, v25, v27, v29);
  }

  v11 = *(v0 + 168);
  v12 = *(v0 + 136);
  v13 = *(v0 + 144);
  sub_1B8B3433C(*(v0 + 192), &qword_1EBAA6290, &qword_1B8C2F800);
  sub_1B8C238D8();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1B8B3433C(*(v0 + 168), &qword_1EBAA6280, &unk_1B8C285B0);
    *(v0 + 344) = v1;
    v14 = MEMORY[0x1E69E7CC0];
    *(v0 + 16) = MEMORY[0x1E69E7CC0];
    *(v0 + 24) = v14;
    v15 = *(sub_1B8C23768() + 16);

    if (v15)
    {
      if (qword_1EBAA5968 != -1)
      {
        swift_once();
      }

      v16 = *(v0 + 128);
      v17 = sub_1B8C23C38();
      __swift_project_value_buffer(v17, qword_1EBAB3A00);
      v18 = v16;
      v19 = sub_1B8C23C18();
      v20 = sub_1B8C25458();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = *(v0 + 128);
        v22 = swift_slowAlloc();
        *v22 = 134217984;
        v23 = *(sub_1B8C23768() + 16);

        *(v22 + 4) = v23;

        _os_log_impl(&dword_1B8B22000, v19, v20, "Will attach [%ld] annotated extra content.", v22, 0xCu);
        MEMORY[0x1B8CCB0E0](v22, -1, -1);
      }

      else
      {

        v19 = *(v0 + 128);
      }
    }

    v34 = sub_1B8C23768();
    *(v0 + 352) = v34;
    v35 = *(v34 + 16);
    *(v0 + 360) = v35;
    if (v35)
    {
      v36 = *(v0 + 208);
      v37 = *(v0 + 216);
      v38 = *(v37 + 16);
      v37 += 16;
      v39 = *(v37 + 64);
      *(v0 + 400) = v39;
      *(v0 + 368) = *(v37 + 56);
      *(v0 + 376) = v38;
      *(v0 + 384) = 0;
      v40 = *(v0 + 184);
      v41 = *(v0 + 136);
      v42 = *(v0 + 144);
      v38(*(v0 + 224), v34 + ((v39 + 32) & ~v39), v36);
      (*(v42 + 56))(v40, 1, 1, v41);
      *(v0 + 404) = 2;
      v43 = swift_task_alloc();
      *(v0 + 392) = v43;
      *v43 = v0;
      v43[1] = sub_1B8B585A0;
      v25 = *(v0 + 272);
      v26 = *(v0 + 224);
      v27 = *(v0 + 184);
      v28 = v0 + 32;
      v29 = (v0 + 404);
      goto LABEL_16;
    }

    v44 = *(v0 + 344);
    v45 = *(v0 + 272);
    v46 = *(v0 + 248);
    v47 = *(v0 + 256);
    v48 = *(v0 + 16);
    v49 = *(v0 + 24);
    v50 = swift_isUniquelyReferenced_nonNull_native();
    sub_1B8B5EF84(v48, v49, 2, v50);
    (*(v47 + 8))(v45, v46);

    v51 = *(v0 + 8);

    return v51(v44);
  }

  else
  {
    (*(*(v0 + 144) + 32))(*(v0 + 152), *(v0 + 168), *(v0 + 136));
    *(v0 + 405) = 1;
    v30 = swift_task_alloc();
    *(v0 + 336) = v30;
    *v30 = v0;
    v30[1] = sub_1B8B580D8;
    v31 = *(v0 + 272);
    v32 = *(v0 + 152);

    return sub_1B8B5B200(v0 + 48, v32, v31, (v0 + 405));
  }
}

uint64_t sub_1B8B57548()
{

  return MEMORY[0x1EEE6DFA0](sub_1B8B57644, 0, 0);
}

uint64_t sub_1B8B57644()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 160);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1B8B5EF84(v5, v6, 0, isUniquelyReferenced_nonNull_native);
  (*(v4 + 8))(v2, v3);
  *(v0 + 320) = v1;
  v8 = *(v0 + 288);
  v9 = *(v0 + 208);
  v10 = *(v0 + 192);
  sub_1B8C23918();
  if (v8(v10, 1, v9) != 1)
  {
    (*(*(v0 + 216) + 32))(*(v0 + 232), *(v0 + 192), *(v0 + 208));
    sub_1B8C238D8();
    *(v0 + 406) = 1;
    v24 = swift_task_alloc();
    *(v0 + 328) = v24;
    *v24 = v0;
    v24[1] = sub_1B8B57BE4;
    v25 = *(v0 + 272);
    v26 = *(v0 + 232);
    v27 = *(v0 + 184);
    v28 = v0 + 64;
    v29 = (v0 + 406);
LABEL_16:

    return sub_1B8B5A7DC(v28, v26, v25, v27, v29);
  }

  v11 = *(v0 + 168);
  v12 = *(v0 + 136);
  v13 = *(v0 + 144);
  sub_1B8B3433C(*(v0 + 192), &qword_1EBAA6290, &qword_1B8C2F800);
  sub_1B8C238D8();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1B8B3433C(*(v0 + 168), &qword_1EBAA6280, &unk_1B8C285B0);
    *(v0 + 344) = v1;
    v14 = MEMORY[0x1E69E7CC0];
    *(v0 + 16) = MEMORY[0x1E69E7CC0];
    *(v0 + 24) = v14;
    v15 = *(sub_1B8C23768() + 16);

    if (v15)
    {
      if (qword_1EBAA5968 != -1)
      {
        swift_once();
      }

      v16 = *(v0 + 128);
      v17 = sub_1B8C23C38();
      __swift_project_value_buffer(v17, qword_1EBAB3A00);
      v18 = v16;
      v19 = sub_1B8C23C18();
      v20 = sub_1B8C25458();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = *(v0 + 128);
        v22 = swift_slowAlloc();
        *v22 = 134217984;
        v23 = *(sub_1B8C23768() + 16);

        *(v22 + 4) = v23;

        _os_log_impl(&dword_1B8B22000, v19, v20, "Will attach [%ld] annotated extra content.", v22, 0xCu);
        MEMORY[0x1B8CCB0E0](v22, -1, -1);
      }

      else
      {

        v19 = *(v0 + 128);
      }
    }

    v34 = sub_1B8C23768();
    *(v0 + 352) = v34;
    v35 = *(v34 + 16);
    *(v0 + 360) = v35;
    if (v35)
    {
      v36 = *(v0 + 208);
      v37 = *(v0 + 216);
      v38 = *(v37 + 16);
      v37 += 16;
      v39 = *(v37 + 64);
      *(v0 + 400) = v39;
      *(v0 + 368) = *(v37 + 56);
      *(v0 + 376) = v38;
      *(v0 + 384) = 0;
      v40 = *(v0 + 184);
      v41 = *(v0 + 136);
      v42 = *(v0 + 144);
      v38(*(v0 + 224), v34 + ((v39 + 32) & ~v39), v36);
      (*(v42 + 56))(v40, 1, 1, v41);
      *(v0 + 404) = 2;
      v43 = swift_task_alloc();
      *(v0 + 392) = v43;
      *v43 = v0;
      v43[1] = sub_1B8B585A0;
      v25 = *(v0 + 272);
      v26 = *(v0 + 224);
      v27 = *(v0 + 184);
      v28 = v0 + 32;
      v29 = (v0 + 404);
      goto LABEL_16;
    }

    v44 = *(v0 + 344);
    v45 = *(v0 + 272);
    v46 = *(v0 + 248);
    v47 = *(v0 + 256);
    v48 = *(v0 + 16);
    v49 = *(v0 + 24);
    v50 = swift_isUniquelyReferenced_nonNull_native();
    sub_1B8B5EF84(v48, v49, 2, v50);
    (*(v47 + 8))(v45, v46);

    v51 = *(v0 + 8);

    return v51(v44);
  }

  else
  {
    (*(*(v0 + 144) + 32))(*(v0 + 152), *(v0 + 168), *(v0 + 136));
    *(v0 + 405) = 1;
    v30 = swift_task_alloc();
    *(v0 + 336) = v30;
    *v30 = v0;
    v30[1] = sub_1B8B580D8;
    v31 = *(v0 + 272);
    v32 = *(v0 + 152);

    return sub_1B8B5B200(v0 + 48, v32, v31, (v0 + 405));
  }
}

uint64_t sub_1B8B57BE4()
{
  v1 = *(*v0 + 184);

  sub_1B8B3433C(v1, &qword_1EBAA6280, &unk_1B8C285B0);

  return MEMORY[0x1EEE6DFA0](sub_1B8B57D0C, 0, 0);
}

uint64_t sub_1B8B57D0C()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 232);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1B8B5EF84(v5, v6, 1, isUniquelyReferenced_nonNull_native);
  (*(v4 + 8))(v2, v3);
  v8 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 344) = v1;
  *(v0 + 24) = v8;
  v9 = *(sub_1B8C23768() + 16);

  if (v9)
  {
    if (qword_1EBAA5968 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 128);
    v11 = sub_1B8C23C38();
    __swift_project_value_buffer(v11, qword_1EBAB3A00);
    v12 = v10;
    v13 = sub_1B8C23C18();
    v14 = sub_1B8C25458();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 128);
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      v17 = *(sub_1B8C23768() + 16);

      *(v16 + 4) = v17;

      _os_log_impl(&dword_1B8B22000, v13, v14, "Will attach [%ld] annotated extra content.", v16, 0xCu);
      MEMORY[0x1B8CCB0E0](v16, -1, -1);
    }

    else
    {

      v13 = *(v0 + 128);
    }
  }

  v18 = sub_1B8C23768();
  *(v0 + 352) = v18;
  v19 = *(v18 + 16);
  *(v0 + 360) = v19;
  if (v19)
  {
    v20 = *(v0 + 208);
    v21 = *(v0 + 216);
    v22 = *(v21 + 16);
    v21 += 16;
    v23 = *(v21 + 64);
    *(v0 + 400) = v23;
    *(v0 + 368) = *(v21 + 56);
    *(v0 + 376) = v22;
    *(v0 + 384) = 0;
    v24 = *(v0 + 184);
    v25 = *(v0 + 136);
    v26 = *(v0 + 144);
    v22(*(v0 + 224), v18 + ((v23 + 32) & ~v23), v20);
    (*(v26 + 56))(v24, 1, 1, v25);
    *(v0 + 404) = 2;
    v27 = swift_task_alloc();
    *(v0 + 392) = v27;
    *v27 = v0;
    v27[1] = sub_1B8B585A0;
    v28 = *(v0 + 272);
    v29 = *(v0 + 224);
    v30 = *(v0 + 184);

    return sub_1B8B5A7DC(v0 + 32, v29, v28, v30, (v0 + 404));
  }

  else
  {

    v32 = *(v0 + 344);
    v33 = *(v0 + 272);
    v34 = *(v0 + 248);
    v35 = *(v0 + 256);
    v36 = *(v0 + 16);
    v37 = *(v0 + 24);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    sub_1B8B5EF84(v36, v37, 2, v38);
    (*(v35 + 8))(v33, v34);

    v39 = *(v0 + 8);

    return v39(v32);
  }
}

uint64_t sub_1B8B580D8()
{

  return MEMORY[0x1EEE6DFA0](sub_1B8B581D4, 0, 0);
}

uint64_t sub_1B8B581D4()
{
  v1 = *(v0 + 320);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 136);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1B8B5EF84(v5, v6, 1, isUniquelyReferenced_nonNull_native);
  (*(v3 + 8))(v2, v4);
  v8 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 344) = v1;
  *(v0 + 24) = v8;
  v9 = *(sub_1B8C23768() + 16);

  if (v9)
  {
    if (qword_1EBAA5968 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 128);
    v11 = sub_1B8C23C38();
    __swift_project_value_buffer(v11, qword_1EBAB3A00);
    v12 = v10;
    v13 = sub_1B8C23C18();
    v14 = sub_1B8C25458();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 128);
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      v17 = *(sub_1B8C23768() + 16);

      *(v16 + 4) = v17;

      _os_log_impl(&dword_1B8B22000, v13, v14, "Will attach [%ld] annotated extra content.", v16, 0xCu);
      MEMORY[0x1B8CCB0E0](v16, -1, -1);
    }

    else
    {

      v13 = *(v0 + 128);
    }
  }

  v18 = sub_1B8C23768();
  *(v0 + 352) = v18;
  v19 = *(v18 + 16);
  *(v0 + 360) = v19;
  if (v19)
  {
    v20 = *(v0 + 208);
    v21 = *(v0 + 216);
    v22 = *(v21 + 16);
    v21 += 16;
    v23 = *(v21 + 64);
    *(v0 + 400) = v23;
    *(v0 + 368) = *(v21 + 56);
    *(v0 + 376) = v22;
    *(v0 + 384) = 0;
    v24 = *(v0 + 184);
    v25 = *(v0 + 136);
    v26 = *(v0 + 144);
    v22(*(v0 + 224), v18 + ((v23 + 32) & ~v23), v20);
    (*(v26 + 56))(v24, 1, 1, v25);
    *(v0 + 404) = 2;
    v27 = swift_task_alloc();
    *(v0 + 392) = v27;
    *v27 = v0;
    v27[1] = sub_1B8B585A0;
    v28 = *(v0 + 272);
    v29 = *(v0 + 224);
    v30 = *(v0 + 184);

    return sub_1B8B5A7DC(v0 + 32, v29, v28, v30, (v0 + 404));
  }

  else
  {

    v32 = *(v0 + 344);
    v33 = *(v0 + 272);
    v34 = *(v0 + 248);
    v35 = *(v0 + 256);
    v36 = *(v0 + 16);
    v37 = *(v0 + 24);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    sub_1B8B5EF84(v36, v37, 2, v38);
    (*(v35 + 8))(v33, v34);

    v39 = *(v0 + 8);

    return v39(v32);
  }
}

uint64_t sub_1B8B585A0()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 208);
  v4 = *(*v0 + 184);

  sub_1B8B3433C(v4, &qword_1EBAA6280, &unk_1B8C285B0);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1B8B58724, 0, 0);
}

uint64_t sub_1B8B58724()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 384) + 1;

  sub_1B8B58BD8(v3);

  sub_1B8B58A7C(v4, &qword_1EBAA6658, &qword_1B8C29498, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB0]);

  if (v2 == v1)
  {

    v5 = *(v0 + 344);
    v6 = *(v0 + 272);
    v7 = *(v0 + 248);
    v8 = *(v0 + 256);
    v9 = *(v0 + 16);
    v10 = *(v0 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1B8B5EF84(v9, v10, 2, isUniquelyReferenced_nonNull_native);
    (*(v8 + 8))(v6, v7);

    v12 = *(v0 + 8);

    return v12(v5);
  }

  else
  {
    v14 = *(v0 + 376);
    v15 = *(v0 + 384) + 1;
    *(v0 + 384) = v15;
    v16 = *(v0 + 184);
    v17 = *(v0 + 136);
    v18 = *(v0 + 144);
    v14(*(v0 + 224), *(v0 + 352) + ((*(v0 + 400) + 32) & ~*(v0 + 400)) + *(v0 + 368) * v15, *(v0 + 208));
    (*(v18 + 56))(v16, 1, 1, v17);
    *(v0 + 404) = 2;
    v19 = swift_task_alloc();
    *(v0 + 392) = v19;
    *v19 = v0;
    v19[1] = sub_1B8B585A0;
    v20 = *(v0 + 272);
    v21 = *(v0 + 224);
    v22 = *(v0 + 184);

    return sub_1B8B5A7DC(v0 + 32, v21, v20, v22, (v0 + 404));
  }
}

uint64_t sub_1B8B58A7C(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v20 = v8 + v6;
  }

  else
  {
    v20 = v8;
  }

  v7 = sub_1B8B5D9E4(isUniquelyReferenced_nonNull_native, v20, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v16 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  if (v16 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v17 = v7[2];
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    v7[2] = v19;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1B8B58BD8(void *result)
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

  result = sub_1B8B5D2B8(result, v10, 1, v3);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
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

double FBKSInteraction.idealFeedbackUIHeight.getter()
{
  v0 = sub_1B8C237B8();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  sub_1B8C237C8();
  (*(v1 + 104))(v4, *MEMORY[0x1E699C338], v0);
  v7 = MEMORY[0x1B8CC8470](v6, v4);
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  result = 700.0;
  if (v7)
  {
    return 800.0;
  }

  return result;
}

uint64_t sub_1B8B58E2C()
{
  v1 = sub_1B8C23888();
  v166 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v171 = &v150 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_1B8C237B8();
  v168 = *(v156 - 8);
  v3 = MEMORY[0x1EEE9AC00](v156);
  v5 = &v150 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v150 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6290, &qword_1B8C2F800);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v159 = &v150 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v170 = &v150 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v150 - v13;
  v15 = sub_1B8C238B8();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v165 = &v150 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v150 - v19;
  v21 = v0;
  sub_1B8C238F8();
  v22 = *(v16 + 48);
  v173 = v15;
  v157 = v22;
  *&v158 = v16 + 48;
  v23 = v22(v14, 1, v15);
  v24 = MEMORY[0x1E699C2F0];
  v163 = v1;
  v172 = v16;
  v169 = v5;
  v25 = v168;
  if (v23 == 1)
  {
    sub_1B8B3433C(v14, &qword_1EBAA6290, &qword_1B8C2F800);
    v26 = v25;
    v27 = v159;
    v28 = v156;
  }

  else
  {
    v29 = *(v16 + 32);
    v160 = v20;
    v29(v20, v14, v173);
    sub_1B8C237C8();
    v30 = *v24;
    v26 = v25;
    v31 = *(v25 + 104);
    v32 = v156;
    v164 = (v25 + 104);
    v162 = v31;
    v31(v5, v30, v156);
    v33 = MEMORY[0x1B8CC8470](v7, v5);
    v35 = *(v25 + 8);
    v34 = v25 + 8;
    v35(v5, v32);
    v161 = v35;
    v35(v7, v32);
    v36 = v1;
    v28 = v32;
    v37 = v0;
    if (v33)
    {
      v38 = v166;
      v39 = v171;
      (*(v166 + 104))(v171, *MEMORY[0x1E699C448], v36);
      v40 = v170;
      sub_1B8C23818();
      (*(v38 + 8))(v39, v36);
      (*(v172 + 56))(v40, 0, 1, v173);
      v26 = v168;
      sub_1B8C23908();
    }

    sub_1B8C237C8();
    v41 = v169;
    v162(v169, *MEMORY[0x1E699C308], v28);
    v42 = MEMORY[0x1B8CC8470](v7, v41);
    v43 = v41;
    v44 = v161;
    v161(v43, v28);
    v154 = v34;
    v44(v7, v28);
    if (v42)
    {
      v45 = sub_1B8C238A8();
      v46 = v166;
      v47 = MEMORY[0x1E699C458];
      if (v45 <= 1)
      {
        v47 = MEMORY[0x1E699C440];
      }

      v48 = v171;
      (*(v166 + 104))(v171, *v47, v36);
      v49 = v170;
      sub_1B8C23818();
      (*(v46 + 8))(v48, v36);
      (*(v172 + 56))(v49, 0, 1, v173);
      v26 = v168;
      sub_1B8C23908();
    }

    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65E8, &qword_1B8C2AEF0);
    v51 = *(v26 + 72);
    v52 = v37;
    v53 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v153 = v50;
    v151 = v53 + 2 * v51;
    v54 = swift_allocObject();
    v150 = xmmword_1B8C27920;
    *(v54 + 16) = xmmword_1B8C27920;
    v152 = v53;
    v55 = v162;
    v162(v54 + v53, *MEMORY[0x1E699C2E0], v28);
    v56 = *MEMORY[0x1E699C2B0];
    v155 = v51;
    v55(v54 + v53 + v51, v56, v28);
    v21 = v52;
    sub_1B8C237C8();
    LOBYTE(v53) = sub_1B8B54E08(v7, v54);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v161(v7, v28);
    if (v53)
    {
      v57 = sub_1B8C238A8();
      v58 = v166;
      v59 = MEMORY[0x1E699C400];
      if (v57 <= 1)
      {
        v59 = MEMORY[0x1E699C410];
      }

      v60 = v171;
      v61 = v163;
      (*(v166 + 104))(v171, *v59, v163);
      v62 = v170;
      sub_1B8C23818();
      v63 = v60;
      v26 = v168;
      (*(v58 + 8))(v63, v61);
      (*(v172 + 56))(v62, 0, 1, v173);
      sub_1B8C23908();
    }

    v64 = swift_allocObject();
    *(v64 + 16) = v150;
    v65 = v64 + v152;
    v66 = v162;
    v162(v64 + v152, *MEMORY[0x1E699C338], v28);
    v66(v65 + v155, *MEMORY[0x1E699C330], v28);
    sub_1B8C237C8();
    LOBYTE(v66) = sub_1B8B54E08(v7, v64);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v161(v7, v28);
    v67 = v166;
    if (v66)
    {
      v68 = sub_1B8C238A8();
      v69 = MEMORY[0x1E699C438];
      if (v68 <= 1)
      {
        v69 = MEMORY[0x1E699C428];
      }

      v70 = v171;
      v71 = v163;
      (*(v67 + 104))(v171, *v69, v163);
      v72 = v170;
      sub_1B8C23818();
      (*(v67 + 8))(v70, v71);
      (*(v172 + 56))(v72, 0, 1, v173);
      v26 = v168;
      sub_1B8C23908();
    }

    sub_1B8C237C8();
    v73 = v169;
    v162(v169, *MEMORY[0x1E699C270], v28);
    v74 = MEMORY[0x1B8CC8470](v7, v73);
    v75 = v73;
    v76 = v161;
    v161(v75, v28);
    v76(v7, v28);
    if (v74)
    {
      v77 = v171;
      v78 = v163;
      (*(v67 + 104))(v171, *MEMORY[0x1E699C430], v163);
      v79 = v170;
      sub_1B8C23818();
      (*(v67 + 8))(v77, v78);
      (*(v172 + 56))(v79, 0, 1, v173);
      v26 = v168;
      sub_1B8C23908();
    }

    sub_1B8C237C8();
    v80 = v169;
    v162(v169, *MEMORY[0x1E699C2D8], v28);
    v81 = MEMORY[0x1B8CC8470](v7, v80);
    v82 = v80;
    v83 = v161;
    v161(v82, v28);
    v83(v7, v28);
    v27 = v159;
    if (v81)
    {
      v84 = v171;
      v85 = v160;
      v86 = v163;
      (*(v67 + 104))(v171, *MEMORY[0x1E699C418], v163);
      v87 = v170;
      sub_1B8C23818();
      (*(v67 + 8))(v84, v86);
      v16 = v172;
      v88 = v173;
      (*(v172 + 56))(v87, 0, 1, v173);
      sub_1B8C23908();
      v89 = v85;
      v26 = v168;
      (*(v16 + 8))(v89, v88);
    }

    else
    {
      v16 = v172;
      (*(v172 + 8))(v160, v173);
    }

    v5 = v169;
  }

  sub_1B8C23918();
  if (v157(v27, 1, v173) == 1)
  {
    return sub_1B8B3433C(v27, &qword_1EBAA6290, &qword_1B8C2F800);
  }

  (*(v16 + 32))(v165, v27, v173);
  sub_1B8C237C8();
  v91 = *MEMORY[0x1E699C2F0];
  v162 = *(v26 + 104);
  v162(v5, v91, v28);
  v92 = MEMORY[0x1B8CC8470](v7, v5);
  v93 = (v26 + 8);
  v94 = *(v26 + 8);
  v94(v5, v28);
  v164 = v94;
  v94(v7, v28);
  if (v92)
  {
    v95 = *MEMORY[0x1E699C4D8];
    v161 = (v26 + 104);
    v96 = v166;
    v97 = v171;
    v98 = v163;
    (*(v166 + 104))(v171, v95, v163);
    v99 = v170;
    sub_1B8C23818();
    v100 = v97;
    v5 = v169;
    (*(v96 + 8))(v100, v98);
    (*(v172 + 56))(v99, 0, 1, v173);
    v26 = v168;
    sub_1B8C23928();
  }

  sub_1B8C237C8();
  v162(v5, *MEMORY[0x1E699C308], v28);
  v101 = MEMORY[0x1B8CC8470](v7, v5);
  v102 = v164;
  v164(v5, v28);
  v161 = v93;
  v102(v7, v28);
  if (v101)
  {
    v103 = sub_1B8C238A8();
    v104 = v166;
    v105 = MEMORY[0x1E699C4E0];
    if (v103 <= 1)
    {
      v105 = MEMORY[0x1E699C4D0];
    }

    v106 = v171;
    v107 = v163;
    (*(v166 + 104))(v171, *v105, v163);
    v108 = v170;
    sub_1B8C23818();
    (*(v104 + 8))(v106, v107);
    (*(v172 + 56))(v108, 0, 1, v173);
    v26 = v168;
    sub_1B8C23928();
  }

  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65E8, &qword_1B8C2AEF0);
  v110 = *(v26 + 72);
  v111 = *(v26 + 80);
  v112 = (v111 + 32) & ~v111;
  v159 = (v112 + 2 * v110);
  v160 = v109;
  v113 = swift_allocObject();
  v158 = xmmword_1B8C27920;
  *(v113 + 16) = xmmword_1B8C27920;
  v167 = v21;
  v114 = v162;
  v162(v113 + v112, *MEMORY[0x1E699C2E0], v28);
  v115 = *MEMORY[0x1E699C2B0];
  v168 = v110;
  v114(v113 + v112 + v110, v115, v28);
  sub_1B8C237C8();
  LOBYTE(v114) = sub_1B8B54E08(v7, v113);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v164(v7, v28);
  if (v114)
  {
    v116 = sub_1B8C238A8();
    v117 = v166;
    v118 = MEMORY[0x1E699C468];
    if (v116 <= 1)
    {
      v118 = MEMORY[0x1E699C4A0];
    }

    v119 = v171;
    v120 = v163;
    (*(v166 + 104))(v171, *v118, v163);
    v157 = ((v111 + 32) & ~v111);
    v121 = v170;
    sub_1B8C23818();
    (*(v117 + 8))(v119, v120);
    (*(v172 + 56))(v121, 0, 1, v173);
    v112 = v157;
    sub_1B8C23928();
  }

  v122 = swift_allocObject();
  *(v122 + 16) = v158;
  v123 = v162;
  v162(v122 + v112, *MEMORY[0x1E699C338], v28);
  v123(v122 + v112 + v168, *MEMORY[0x1E699C330], v28);
  sub_1B8C237C8();
  v124 = sub_1B8B54E08(v7, v122);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v164(v7, v28);
  v125 = v163;
  v126 = v166;
  if (v124)
  {
    v127 = sub_1B8C238A8();
    v128 = MEMORY[0x1E699C4C8];
    if (v127 <= 1)
    {
      v128 = MEMORY[0x1E699C4B8];
    }

    v129 = v171;
    (*(v126 + 104))(v171, *v128, v125);
    v130 = v170;
    sub_1B8C23818();
    (*(v126 + 8))(v129, v125);
    (*(v172 + 56))(v130, 0, 1, v173);
    sub_1B8C23928();
  }

  sub_1B8C237C8();
  v131 = v169;
  v123(v169, *MEMORY[0x1E699C270], v28);
  v132 = MEMORY[0x1B8CC8470](v7, v131);
  v133 = v164;
  v164(v131, v28);
  v133(v7, v28);
  if (v132)
  {
    v134 = v171;
    (*(v126 + 104))(v171, *MEMORY[0x1E699C490], v125);
    v135 = v170;
    sub_1B8C23818();
    v136 = v134;
    v131 = v169;
    (*(v126 + 8))(v136, v125);
    (*(v172 + 56))(v135, 0, 1, v173);
    sub_1B8C23928();
  }

  sub_1B8C237C8();
  v123(v131, *MEMORY[0x1E699C2D8], v28);
  v137 = MEMORY[0x1B8CC8470](v7, v131);
  v138 = v164;
  v164(v131, v28);
  v138(v7, v28);
  if (v137)
  {
    v139 = v171;
    (*(v126 + 104))(v171, *MEMORY[0x1E699C460], v125);
    v140 = v170;
    sub_1B8C23818();
    v141 = v139;
    v131 = v169;
    (*(v126 + 8))(v141, v125);
    (*(v172 + 56))(v140, 0, 1, v173);
    sub_1B8C23928();
  }

  sub_1B8C237C8();
  v123(v131, *MEMORY[0x1E699C298], v28);
  v142 = MEMORY[0x1B8CC8470](v7, v131);
  v143 = v131;
  v144 = v164;
  v164(v143, v28);
  v144(v7, v28);
  if ((v142 & 1) == 0)
  {
    return (*(v172 + 8))(v165, v173);
  }

  v145 = v171;
  (*(v126 + 104))(v171, *MEMORY[0x1E699C500], v125);
  v146 = v170;
  v147 = v165;
  sub_1B8C23818();
  (*(v126 + 8))(v145, v125);
  v148 = v172;
  v149 = v173;
  (*(v172 + 56))(v146, 0, 1, v173);
  sub_1B8C23928();
  return (*(v148 + 8))(v147, v149);
}