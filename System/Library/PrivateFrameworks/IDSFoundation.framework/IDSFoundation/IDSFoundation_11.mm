uint64_t IDSLinksQualityRepeatingAsyncTask.linkEngine.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state));
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v1);
  return Strong;
}

uint64_t sub_1A7D12964()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t IDSLinksQualityRepeatingAsyncTask.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_name);

  return v1;
}

uint64_t sub_1A7D12A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v8 = sub_1A7E22640();
  v7[15] = v8;
  v7[16] = *(v8 - 8);
  v7[17] = swift_task_alloc();
  v9 = sub_1A7E22CF0();
  v7[18] = v9;
  v7[19] = *(v9 - 8);
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v10 = sub_1A7E22D10();
  v7[22] = v10;
  v7[23] = *(v10 - 8);
  v7[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7D12B94, 0, 0);
}

uint64_t sub_1A7D12B94()
{
  swift_beginAccess();
  if ((sub_1A7E22700() & 1) == 0)
  {
    Strong = swift_weakLoadStrong();
    v0[25] = Strong;
    if (Strong)
    {
      v2 = (Strong + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state);
      os_unfair_lock_lock((Strong + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state));
      v3 = swift_weakLoadStrong();
      v0[26] = v3;
      os_unfair_lock_unlock(v2);
      if (v3)
      {
        v7 = (v0[12] + *v0[12]);
        v4 = swift_task_alloc();
        v0[27] = v4;
        *v4 = v0;
        v4[1] = sub_1A7D12D64;

        return v7(v3);
      }
    }
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A7D12D64(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  *(v6 + 224) = a1;
  *(v6 + 232) = a2;
  *(v6 + 240) = v3;

  if (v3)
  {
    v7 = sub_1A7D137AC;
  }

  else
  {
    *(v6 + 57) = a3;
    v7 = sub_1A7D12E90;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1A7D12E90()
{
  if (*(v0 + 57))
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v4 = *(v0 + 224);
    v3 = *(v0 + 232);
    v6 = *(v0 + 152);
    v5 = *(v0 + 160);
    v7 = *(v0 + 144);
    sub_1A7E23170();
    *(v0 + 64) = v4;
    *(v0 + 72) = v3;
    *(v0 + 48) = 0;
    *(v0 + 40) = 0;
    *(v0 + 56) = 1;
    v8 = sub_1A7B059B8(&qword_1EB2B2880, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
    sub_1A7E23150();
    sub_1A7B059B8(&qword_1EB2B2888, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
    sub_1A7E22D20();
    v9 = *(v6 + 8);
    *(v0 + 248) = v9;
    *(v0 + 256) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v7);
    v10 = swift_task_alloc();
    *(v0 + 264) = v10;
    *v10 = v0;
    v10[1] = sub_1A7D130CC;
    v12 = *(v0 + 168);
    v11 = *(v0 + 176);

    return MEMORY[0x1EEE6DE58](v12, v0 + 40, v11, v8);
  }
}

uint64_t sub_1A7D130CC()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    (*(v2 + 248))(*(v2 + 168), *(v2 + 144));
    v3 = sub_1A7D133EC;
  }

  else
  {
    v5 = *(v2 + 184);
    v4 = *(v2 + 192);
    v6 = *(v2 + 176);
    (*(v2 + 248))(*(v2 + 168), *(v2 + 144));
    (*(v5 + 8))(v4, v6);
    v3 = sub_1A7D13224;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A7D13224()
{

  if ((sub_1A7E22700() & 1) == 0)
  {
    Strong = swift_weakLoadStrong();
    v0[25] = Strong;
    if (Strong)
    {
      v2 = (Strong + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state);
      os_unfair_lock_lock((Strong + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state));
      v3 = swift_weakLoadStrong();
      v0[26] = v3;
      os_unfair_lock_unlock(v2);
      if (v3)
      {
        v7 = (v0[12] + *v0[12]);
        v4 = swift_task_alloc();
        v0[27] = v4;
        *v4 = v0;
        v4[1] = sub_1A7D12D64;

        return v7(v3);
      }
    }
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A7D133EC()
{
  v27 = v0;
  (*(v0[23] + 8))(v0[24], v0[22]);
  v1 = v0[34];
  v0[10] = v1;
  v2 = v1;
  sub_1A7CC7FFC(&qword_1EB2B57A8, &qword_1A7E494F0);
  if (swift_dynamicCast())
  {
    (*(v0[16] + 8))(v0[17], v0[15]);

    v3 = sub_1A7E22040();
    v4 = sub_1A7E228D0();

    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[25];
    if (v5)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v26 = v8;
      *v7 = 136315138;
      v9 = *(v6 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_name);
      v10 = *(v6 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_name + 8);

      v11 = sub_1A7B0CB38(v9, v10, &v26);

      *(v7 + 4) = v11;
      sub_1A7B0CD6C(v8);
      MEMORY[0x1AC5654B0](v8, -1, -1);
      MEMORY[0x1AC5654B0](v7, -1, -1);

LABEL_6:

      goto LABEL_9;
    }
  }

  else
  {
    v12 = v1;

    v3 = sub_1A7E22040();
    v13 = sub_1A7E228E0();

    v14 = os_log_type_enabled(v3, v13);
    v15 = v0[25];
    if (v14)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v18;
      *v16 = 136315394;
      v20 = *(v15 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_name);
      v19 = *(v15 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_name + 8);

      v21 = sub_1A7B0CB38(v20, v19, &v26);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2112;
      v22 = v1;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v23;
      *v17 = v23;
      sub_1A7D13CA0(v17);
      MEMORY[0x1AC5654B0](v17, -1, -1);
      sub_1A7B0CD6C(v18);
      MEMORY[0x1AC5654B0](v18, -1, -1);
      MEMORY[0x1AC5654B0](v16, -1, -1);

      goto LABEL_6;
    }
  }

LABEL_9:

  v24 = v0[1];

  return v24();
}

uint64_t sub_1A7D137AC()
{
  v27 = v0;
  v1 = v0[30];
  v0[10] = v1;
  v2 = v1;
  sub_1A7CC7FFC(&qword_1EB2B57A8, &qword_1A7E494F0);
  if (swift_dynamicCast())
  {
    (*(v0[16] + 8))(v0[17], v0[15]);

    v3 = sub_1A7E22040();
    v4 = sub_1A7E228D0();

    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[25];
    if (v5)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v26 = v8;
      *v7 = 136315138;
      v9 = *(v6 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_name);
      v10 = *(v6 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_name + 8);

      v11 = sub_1A7B0CB38(v9, v10, &v26);

      *(v7 + 4) = v11;
      sub_1A7B0CD6C(v8);
      MEMORY[0x1AC5654B0](v8, -1, -1);
      MEMORY[0x1AC5654B0](v7, -1, -1);

LABEL_6:

      goto LABEL_9;
    }
  }

  else
  {
    v12 = v1;

    v3 = sub_1A7E22040();
    v13 = sub_1A7E228E0();

    v14 = os_log_type_enabled(v3, v13);
    v15 = v0[25];
    if (v14)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v18;
      *v16 = 136315394;
      v20 = *(v15 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_name);
      v19 = *(v15 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_name + 8);

      v21 = sub_1A7B0CB38(v20, v19, &v26);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2112;
      v22 = v1;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v23;
      *v17 = v23;
      sub_1A7D13CA0(v17);
      MEMORY[0x1AC5654B0](v17, -1, -1);
      sub_1A7B0CD6C(v18);
      MEMORY[0x1AC5654B0](v18, -1, -1);
      MEMORY[0x1AC5654B0](v16, -1, -1);

      goto LABEL_6;
    }
  }

LABEL_9:

  v24 = v0[1];

  return v24();
}

uint64_t IDSLinksQualityRepeatingAsyncTask.deinit()
{
  v1 = OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_logger;
  v2 = sub_1A7E22060();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1A7D13D08(v0 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state + 8);
  return v0;
}

uint64_t IDSLinksQualityRepeatingAsyncTask.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_logger;
  v2 = sub_1A7E22060();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1A7D13D08(v0 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state + 8);

  return swift_deallocClassInstance();
}

uint64_t sub_1A7D13CA0(uint64_t a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B57A0, qword_1A7E45740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for IDSLinksQualityRepeatingAsyncTask(uint64_t a1)
{
  result = qword_1EB2B30E8;
  if (!qword_1EB2B30E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A7D13D8C(uint64_t a1)
{
  result = sub_1A7E22060();
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

uint64_t sub_1A7D13E48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A7D13EA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1A7D13F14()
{
  v0 = sub_1A7CC7FFC(&qword_1EB2B5678, &qword_1A7E4F420);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1A7E21F80();
  sub_1A7CC7A10(v3, qword_1EB2DC250);
  sub_1A7B0CB00(v3, qword_1EB2DC250);
  v4 = sub_1A7E21EF0();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_1A7E21F40();
}

uint64_t sub_1A7D1404C()
{
  v1[10] = v0;
  type metadata accessor for LEToolOptions(0);
  v1[11] = swift_task_alloc();
  type metadata accessor for LEToolRequestMessage(0);
  v1[12] = swift_task_alloc();
  v1[13] = type metadata accessor for LEToolRequest(0);
  v1[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7D14138, 0, 0);
}

uint64_t sub_1A7D14138()
{
  type metadata accessor for LEToolQualityDeltaCommand(0);
  sub_1A7CC7FFC(&qword_1EB2B5958, &unk_1A7E466B0);
  sub_1A7E22010();
  if (v0[8] && (v1 = sub_1A7E21990(), v3 = v2, , v3 >> 60 != 15))
  {
    sub_1A7E215B0();
    swift_allocObject();
    sub_1A7E215A0();
    sub_1A7D165B8();
    sub_1A7E21590();
    sub_1A7B1516C(v1, v3);

    v4 = v0[9];
  }

  else
  {
    v4 = 0;
  }

  v5 = v0[14];
  v6 = v0[12];
  *v5 = v4;
  swift_storeEnumTagMultiPayload();
  sub_1A7D16550(v5, v6, type metadata accessor for LEToolRequest);
  sub_1A7CC7FFC(&qword_1EB2B5690, &qword_1A7E45388);
  sub_1A7E21DC0();
  v0[5] = &type metadata for CLIDefaultPrinter;
  v0[6] = &protocol witness table for CLIDefaultPrinter;
  v0[2] = sub_1A7D2B464;
  v0[3] = 0;
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_1A7D14390;
  v8 = v0[11];
  v9 = v0[12];

  return sub_1A7DE8A40(v9, v8, (v0 + 2));
}

uint64_t sub_1A7D14390()
{
  v2 = *v1;
  v2[16] = v0;

  v3 = v2[12];
  sub_1A7D1649C(v2[11], type metadata accessor for LEToolOptions);
  sub_1A7D1649C(v3, type metadata accessor for LEToolRequestMessage);
  sub_1A7B0CD6C(v2 + 2);
  if (v0)
  {
    v4 = sub_1A7D145B8;
  }

  else
  {
    v4 = sub_1A7D14518;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A7D14518()
{
  sub_1A7D1649C(*(v0 + 112), type metadata accessor for LEToolRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7D145B8()
{
  sub_1A7D1649C(*(v0 + 112), type metadata accessor for LEToolRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7D14654@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v32 = a2;
  v33 = sub_1A7CC7FFC(&qword_1EB2B5958, &unk_1A7E466B0);
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v30 - v2;
  v36 = sub_1A7CC7FFC(&qword_1EB2B5690, &qword_1A7E45388);
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v30 - v3;
  v39 = sub_1A7CC7FFC(&qword_1EB2B59C8, &qword_1A7E468D0);
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v5 = &v30 - v4;
  v6 = sub_1A7E21FA0();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1A7E21EF0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A7CC7FFC(&qword_1EB2B59B8, &qword_1A7E468C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - v9;
  v11 = sub_1A7CC7FFC(&qword_1EB2B59C0, &qword_1A7E468C8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v30 - v12;
  v14 = sub_1A7E21D90();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = type metadata accessor for LEToolQualityDeltaCommand(0);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A7E21D80();
  type metadata accessor for LEToolOptions(0);
  sub_1A7D1616C(&qword_1EB2B56B0, type metadata accessor for LEToolOptions, &unk_1A7E46D5C);
  sub_1A7E21DD0();
  v19 = *(v16 + 28);
  v20 = sub_1A7E21DA0();
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  v21 = sub_1A7E21DF0();
  (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
  sub_1A7E21EB0();
  sub_1A7E21F90();
  v22 = v40;
  sub_1A7E22000();
  sub_1A7CC9878(v22, v22[3]);
  sub_1A7D1660C();
  v23 = v41;
  sub_1A7E23250();
  if (!v23)
  {
    v25 = v34;
    v24 = v35;
    v43 = 0;
    sub_1A7CF3788(&qword_1EB2B56D8, &qword_1EB2B5690, &qword_1A7E45388, MEMORY[0x1E698CF40]);
    v26 = v36;
    sub_1A7E22F30();
    (*(v25 + 40))(v18, v38, v26);
    v42 = 1;
    sub_1A7CF3788(&qword_1EB2B59D8, &qword_1EB2B5958, &unk_1A7E466B0, MEMORY[0x1E698CF78]);
    v27 = v33;
    v28 = v39;
    sub_1A7E22F30();
    (*(v37 + 8))(v5, v28);
    (*(v31 + 40))(&v18[v19], v24, v27);
    sub_1A7D16550(v18, v32, type metadata accessor for LEToolQualityDeltaCommand);
  }

  sub_1A7B0CD6C(v22);
  return sub_1A7D1649C(v18, type metadata accessor for LEToolQualityDeltaCommand);
}

uint64_t sub_1A7D14CCC()
{
  if (*v0)
  {
    return 0x6E656B6F74;
  }

  else
  {
    return 0x736E6F6974706FLL;
  }
}

uint64_t sub_1A7D14D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000;
  if (v6 || (sub_1A7E230D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A7E230D0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A7D14DDC(uint64_t a1)
{
  v2 = sub_1A7D1660C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D14E18(uint64_t a1)
{
  v2 = sub_1A7D1660C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7D14E54()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A7CD22FC;

  return sub_1A7D1404C();
}

uint64_t sub_1A7D14F04(double a1)
{
  v1 = sub_1A7E21FA0();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1A7E21EF0();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1A7CC7FFC(&qword_1EB2B59B8, &qword_1A7E468C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = sub_1A7CC7FFC(&qword_1EB2B59C0, &qword_1A7E468C8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_1A7E21D90();
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1A7E21D80();
  type metadata accessor for LEToolOptions(0);
  sub_1A7D1616C(&qword_1EB2B56B0, type metadata accessor for LEToolOptions, &unk_1A7E46D5C);
  sub_1A7E21DD0();
  v10 = sub_1A7E21DA0();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = sub_1A7E21DF0();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  sub_1A7E21EB0();
  sub_1A7E21F90();
  return sub_1A7E22000();
}

uint64_t sub_1A7D151E0()
{
  v0 = sub_1A7CC7FFC(&qword_1EB2B5678, &qword_1A7E4F420);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1A7E21F80();
  sub_1A7CC7A10(v3, qword_1EB2DC268);
  sub_1A7B0CB00(v3, qword_1EB2DC268);
  v4 = sub_1A7E21EF0();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_1A7E21F40();
}

uint64_t sub_1A7D15328()
{
  v1[7] = v0;
  type metadata accessor for LEToolOptions(0);
  v1[8] = swift_task_alloc();
  type metadata accessor for LEToolRequestMessage(0);
  v1[9] = swift_task_alloc();
  v1[10] = type metadata accessor for LEToolRequest(0);
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7D15414, 0, 0);
}

uint64_t sub_1A7D15414()
{
  v1 = v0[11];
  v2 = v0[9];
  *v1 = 1;
  swift_storeEnumTagMultiPayload();
  sub_1A7D16550(v1, v2, type metadata accessor for LEToolRequest);
  sub_1A7CC7FFC(&qword_1EB2B5690, &qword_1A7E45388);
  sub_1A7E21DC0();
  v0[5] = &type metadata for CLIDefaultPrinter;
  v0[6] = &protocol witness table for CLIDefaultPrinter;
  v0[2] = sub_1A7D2B464;
  v0[3] = 0;
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1A7D15540;
  v4 = v0[8];
  v5 = v0[9];

  return sub_1A7DE8A40(v5, v4, (v0 + 2));
}

uint64_t sub_1A7D15540()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  *(v2 + 104) = v0;

  sub_1A7D1649C(v4, type metadata accessor for LEToolOptions);
  sub_1A7D1649C(v3, type metadata accessor for LEToolRequestMessage);
  sub_1A7B0CD6C((v2 + 16));
  if (v0)
  {
    v5 = sub_1A7D15764;
  }

  else
  {
    v5 = sub_1A7D156C4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A7D156C4()
{
  sub_1A7D1649C(*(v0 + 88), type metadata accessor for LEToolRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7D15764()
{
  sub_1A7D1649C(*(v0 + 88), type metadata accessor for LEToolRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7D15804@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = sub_1A7CC7FFC(&qword_1EB2B5690, &qword_1A7E45388);
  v18 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - v4;
  v6 = sub_1A7CC7FFC(&qword_1EB2B59A0, &qword_1A7E468B0);
  v19 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = sub_1A7E21D90();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = type metadata accessor for LEToolQualityReportCommand(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A7E21D80();
  type metadata accessor for LEToolOptions(0);
  sub_1A7D1616C(&qword_1EB2B56B0, type metadata accessor for LEToolOptions, &unk_1A7E46D5C);
  sub_1A7E21DD0();
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D164FC();
  v13 = v20;
  sub_1A7E23250();
  if (!v13)
  {
    v14 = v18;
    sub_1A7CF3788(&qword_1EB2B56D8, &qword_1EB2B5690, &qword_1A7E45388, MEMORY[0x1E698CF40]);
    sub_1A7E22F30();
    (*(v19 + 8))(v8, v6);
    (*(v14 + 40))(v12, v5, v3);
    sub_1A7D16550(v12, v17, type metadata accessor for LEToolQualityReportCommand);
  }

  sub_1A7B0CD6C(a1);
  return sub_1A7D1649C(v12, type metadata accessor for LEToolQualityReportCommand);
}

uint64_t sub_1A7D15B60(uint64_t a1)
{
  v2 = sub_1A7D164FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D15B9C(uint64_t a1)
{
  v2 = sub_1A7D164FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7D15BD8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A7CD2A2C;

  return sub_1A7D15328();
}

uint64_t sub_1A7D15C88(double a1)
{
  v1 = sub_1A7E21D90();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1A7E21D80();
  type metadata accessor for LEToolOptions(0);
  sub_1A7D1616C(&qword_1EB2B56B0, type metadata accessor for LEToolOptions, &unk_1A7E46D5C);
  return sub_1A7E21DD0();
}

uint64_t sub_1A7D15D74()
{
  v0 = sub_1A7CC7FFC(&qword_1EB2B5678, &qword_1A7E4F420);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_1A7E21F80();
  sub_1A7CC7A10(v3, qword_1EB2DC280);
  sub_1A7B0CB00(v3, qword_1EB2DC280);
  sub_1A7CC7FFC(&qword_1EB2B5680, &qword_1A7E45380);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A7E418D0;
  v5 = type metadata accessor for LEToolQualityDeltaCommand(0);
  v6 = sub_1A7D1616C(&qword_1EB2B5938, type metadata accessor for LEToolQualityDeltaCommand, &unk_1A7E46868);
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  v7 = type metadata accessor for LEToolQualityReportCommand(0);
  v8 = sub_1A7D1616C(&qword_1EB2B5940, type metadata accessor for LEToolQualityReportCommand, &unk_1A7E46828);
  *(v4 + 48) = v7;
  *(v4 + 56) = v8;
  v9 = sub_1A7E21EF0();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  return sub_1A7E21F40();
}

uint64_t sub_1A7D15F78(uint64_t a1)
{
  sub_1A7D16080();
  sub_1A7E21E90();
  v2 = *(v1 + 8);

  return v2();
}

unint64_t sub_1A7D16028()
{
  result = qword_1EB2B5920;
  if (!qword_1EB2B5920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5920);
  }

  return result;
}

unint64_t sub_1A7D16080()
{
  result = qword_1EB2B5928;
  if (!qword_1EB2B5928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5928);
  }

  return result;
}

unint64_t sub_1A7D160D8()
{
  result = qword_1EB2B5930;
  if (!qword_1EB2B5930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5930);
  }

  return result;
}

uint64_t sub_1A7D1616C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A7D16204(uint64_t a1)
{
  sub_1A7D0293C(319);
  if (v1 <= 0x3F)
  {
    sub_1A7D16288(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A7D16288(uint64_t a1)
{
  if (!qword_1EB2B5970)
  {
    sub_1A7CC9830(&qword_1EB2B5978, &qword_1A7E466E0);
    v1 = sub_1A7E22030();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB2B5970);
    }
  }
}

uint64_t sub_1A7D1649C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A7D164FC()
{
  result = qword_1EB2B59A8;
  if (!qword_1EB2B59A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B59A8);
  }

  return result;
}

uint64_t sub_1A7D16550(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A7D165B8()
{
  result = qword_1EB2B59B0;
  if (!qword_1EB2B59B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B59B0);
  }

  return result;
}

unint64_t sub_1A7D1660C()
{
  result = qword_1EB2B59D0;
  if (!qword_1EB2B59D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B59D0);
  }

  return result;
}

unint64_t sub_1A7D16684()
{
  result = qword_1EB2B59E0;
  if (!qword_1EB2B59E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B59E0);
  }

  return result;
}

unint64_t sub_1A7D166DC()
{
  result = qword_1EB2B59E8;
  if (!qword_1EB2B59E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B59E8);
  }

  return result;
}

unint64_t sub_1A7D16734()
{
  result = qword_1EB2B59F0;
  if (!qword_1EB2B59F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B59F0);
  }

  return result;
}

unint64_t sub_1A7D1678C()
{
  result = qword_1EB2B59F8;
  if (!qword_1EB2B59F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B59F8);
  }

  return result;
}

unint64_t sub_1A7D167E4()
{
  result = qword_1EB2B5A00;
  if (!qword_1EB2B5A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5A00);
  }

  return result;
}

unint64_t sub_1A7D1683C()
{
  result = qword_1EB2B5A08;
  if (!qword_1EB2B5A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5A08);
  }

  return result;
}

Swift::Void __swiftcall Data.appendVarInt(rawUInt64:)(Swift::UInt64 rawUInt64)
{
  v1 = rawUInt64;
  v9 = *MEMORY[0x1E69E9840];
  if (rawUInt64 < 0x80)
  {
    LOBYTE(v3) = rawUInt64;
  }

  else
  {
    do
    {
      v2 = sub_1A7CC7FFC(&qword_1EB2B5A10, &unk_1A7E46B00);
      v7 = v2;
      v8 = sub_1A7D16A78();
      LOBYTE(v6[0]) = v1 | 0x80;
      sub_1A7CC9878(v6, v2);
      sub_1A7E219B0();
      sub_1A7B0CD6C(v6);
      v3 = v1 >> 7;
      v4 = v1 >> 14;
      v1 >>= 7;
    }

    while (v4);
  }

  v5 = sub_1A7CC7FFC(&qword_1EB2B5A10, &unk_1A7E46B00);
  v7 = v5;
  v8 = sub_1A7D16A78();
  LOBYTE(v6[0]) = v3;
  sub_1A7CC9878(v6, v5);
  sub_1A7E219B0();
  sub_1A7B0CD6C(v6);
}

unint64_t sub_1A7D16A78()
{
  result = qword_1EB2B3068;
  if (!qword_1EB2B3068)
  {
    sub_1A7CC9830(&qword_1EB2B5A10, &unk_1A7E46B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B3068);
  }

  return result;
}

void Data.appendVarInt<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v23 - v14;
  (*(v8 + 16))(v23 - v14, a1, a2, v13);
  if (sub_1A7E22A80() & 1) == 0 || (swift_getAssociatedConformanceWitness(), sub_1A7E23120(), sub_1A7E230C0(), v16 = sub_1A7E22220(), (*(v8 + 8))(v11, a2), (v16))
  {
    if (sub_1A7E22A70() <= 63)
    {
      goto LABEL_13;
    }

    v23[0] = v4;
    v23[1] = -1;
    v17 = sub_1A7E22A80();
    v18 = sub_1A7E22A70();
    if (v17)
    {
      if (v18 <= 64)
      {
        goto LABEL_11;
      }

      sub_1A7D16F00();
      sub_1A7E22A50();
      v19 = sub_1A7E22210();
      (*(v8 + 8))(v11, a2);
      if ((v19 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v18 < 65)
      {
LABEL_12:
        sub_1A7E22A60();
        goto LABEL_13;
      }

      sub_1A7D16F00();
      sub_1A7E22A50();
      v20 = sub_1A7E22210();
      (*(v8 + 8))(v11, a2);
      if ((v20 & 1) == 0)
      {
LABEL_13:
        v22 = sub_1A7E22A60();
        (*(v8 + 8))(v15, a2);
        Data.appendVarInt(rawUInt64:)(v22);
        return;
      }
    }

    __break(1u);
LABEL_11:
    swift_getAssociatedConformanceWitness();
    sub_1A7E23120();
    sub_1A7E230C0();
    v21 = sub_1A7E22200();
    (*(v8 + 8))(v11, a2);
    if (v21)
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  __break(1u);
}

{
  v4 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - v14;
  (*(v8 + 16))(&v24 - v14, a1, a2, v13);
  if ((sub_1A7E22A80() & 1) != 0 && sub_1A7E22A70() > 64)
  {
    v25 = 0x8000000000000000;
    if (sub_1A7E22A80())
    {
      if (sub_1A7E22A70() < 64)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    v24 = v4;
    v16 = sub_1A7E22A80();
    v17 = sub_1A7E22A70();
    if (v16)
    {
      if (v17 > 64)
      {
LABEL_8:
        sub_1A7D173B0();
        sub_1A7E22A50();
        v18 = sub_1A7E22210();
        (*(v8 + 8))(v11, a2);
        if ((v18 & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_25:
        __break(1u);
        return;
      }

      swift_getAssociatedConformanceWitness();
      sub_1A7E23120();
      sub_1A7E230C0();
      v19 = sub_1A7E22210();
      (*(v8 + 8))(v11, a2);
      if (v19)
      {
        goto LABEL_25;
      }

LABEL_13:
      sub_1A7E22A60();
      goto LABEL_14;
    }

    if (v17 < 64)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  if (sub_1A7E22A70() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v25 = 0x7FFFFFFFFFFFFFFFLL;
    v20 = sub_1A7E22A80();
    v21 = sub_1A7E22A70();
    if ((v20 & 1) == 0)
    {
      break;
    }

    if (v21 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    sub_1A7D173B0();
    sub_1A7E22A50();
    v22 = sub_1A7E22210();
    (*(v8 + 8))(v11, a2);
    if (v22)
    {
      __break(1u);
LABEL_19:
      if (sub_1A7E22A70() == 64 && (sub_1A7E22A80() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v21 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  sub_1A7E22A60();
LABEL_24:
  v23 = sub_1A7E22A60();
  (*(v8 + 8))(v15, a2);
  Data.appendVarInt(rawUInt64:)((2 * v23) ^ (v23 >> 63));
}

unint64_t sub_1A7D16F00()
{
  result = qword_1EB2B5A18;
  if (!qword_1EB2B5A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5A18);
  }

  return result;
}

unint64_t sub_1A7D173B0()
{
  result = qword_1EB2B5A20;
  if (!qword_1EB2B5A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5A20);
  }

  return result;
}

uint64_t sub_1A7D17410(_DWORD *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v40[2] = *MEMORY[0x1E69E9840];
  v7 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v7)
    {
      v8 = BYTE6(a4);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v7 == 2)
  {
    v10 = *(a3 + 16);
    v9 = *(a3 + 24);
    v11 = __OFSUB__(v9, v10);
    v8 = v9 - v10;
    if (!v11)
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    LODWORD(v8) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_57;
    }

    v8 = v8;
LABEL_10:
    if (v8 > a2)
    {
      goto LABEL_14;
    }

LABEL_13:
    sub_1A7D17E10();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
    return v5;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_14:
  v15 = sub_1A7E08C84(a2, a3, a4);
  v16 = v4;
  if (v4)
  {
    return v5;
  }

  v18 = 0;
  v19 = a3;
  v20 = __OFSUB__(HIDWORD(a3), a3);
  v36 = v20;
  v21 = a2;
  v22 = a2 - 0x7FFFFFFFFFFFFFFELL;
  v5 = 1;
  v39 = a2;
  v38 = a2 - 0x7FFFFFFFFFFFFFFELL;
  while (1)
  {
    v23 = (v15 & 0x7F) << v18;
    if (v18 >= 0x20)
    {
      v23 = 0;
    }

    v16 |= v23;
    if ((v15 & 0x80) == 0)
    {
      *a1 = v16;
      return v5;
    }

    v24 = v21 + v5;
    if (__OFADD__(v21, v5))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
    }

    if (v22 + v5 == 1)
    {
      goto LABEL_50;
    }

    if (v7 > 1)
    {
      if (v7 != 2)
      {
        if (v24 <= 0x7FFFFFFFFFFFFFFELL)
        {
          goto LABEL_13;
        }

        memset(v40, 0, 14);
        goto LABEL_21;
      }

      v27 = *(v19 + 16);
      v26 = *(v19 + 24);
      v11 = __OFSUB__(v26, v27);
      v25 = v26 - v27;
      if (v11)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v25 = BYTE6(a4);
      if (v7)
      {
        v25 = HIDWORD(a3) - a3;
        if (v36)
        {
          goto LABEL_53;
        }
      }
    }

    if (v25 < (v24 + 1))
    {
      goto LABEL_13;
    }

    if (v7 == 2)
    {
      break;
    }

    if (v7 == 1)
    {
      if (a3 >> 32 < a3)
      {
        goto LABEL_54;
      }

      v28 = sub_1A7E21630();
      if (!v28)
      {
        goto LABEL_59;
      }

      v29 = v28;
      v30 = sub_1A7E21660();
      if (__OFSUB__(a3, v30))
      {
        goto LABEL_56;
      }

      v31 = a3 - v30 + v29;
      result = sub_1A7E21650();
      if (!v31)
      {
        goto LABEL_60;
      }

      goto LABEL_47;
    }

    LOWORD(v40[0]) = v19;
    BYTE2(v40[0]) = BYTE2(v19);
    BYTE3(v40[0]) = BYTE3(v19);
    BYTE4(v40[0]) = BYTE4(a3);
    BYTE5(v40[0]) = BYTE5(v19);
    BYTE6(v40[0]) = BYTE6(v19);
    HIBYTE(v40[0]) = HIBYTE(v19);
    LOWORD(v40[1]) = a4;
    BYTE2(v40[1]) = BYTE2(a4);
    BYTE3(v40[1]) = BYTE3(a4);
    BYTE4(v40[1]) = BYTE4(a4);
    BYTE5(v40[1]) = BYTE5(a4);
LABEL_21:
    v15 = *(v40 + v24);
LABEL_22:
    ++v5;
    v18 += 7;
    if (v5 == 0x124924924924924BLL)
    {
      goto LABEL_51;
    }
  }

  v32 = *(v19 + 16);
  v33 = sub_1A7E21630();
  if (v33)
  {
    v34 = v33;
    v35 = sub_1A7E21660();
    if (__OFSUB__(v32, v35))
    {
      goto LABEL_55;
    }

    v31 = v32 - v35 + v34;
    result = sub_1A7E21650();
    if (!v31)
    {
      goto LABEL_61;
    }

LABEL_47:
    v15 = *(v31 + v24);
    v21 = v39;
    v19 = a3;
    v22 = v38;
    goto LABEL_22;
  }

  sub_1A7E21650();
  __break(1u);
LABEL_59:
  result = sub_1A7E21650();
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

uint64_t sub_1A7D17798(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v41[2] = *MEMORY[0x1E69E9840];
  v7 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v7)
    {
      v8 = BYTE6(a4);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v7 == 2)
  {
    v10 = *(a3 + 16);
    v9 = *(a3 + 24);
    v11 = __OFSUB__(v9, v10);
    v8 = v9 - v10;
    if (!v11)
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    LODWORD(v8) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_60;
    }

    v8 = v8;
LABEL_10:
    if (v8 > a2)
    {
      goto LABEL_14;
    }

LABEL_13:
    sub_1A7D17E10();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
    return v5;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_14:
  v15 = sub_1A7E08C84(a2, a3, a4);
  v16 = v4;
  if (v4)
  {
    return v5;
  }

  v18 = 0;
  v19 = a3;
  v20 = __OFSUB__(HIDWORD(a3), a3);
  v37 = v20;
  v21 = a2;
  v22 = a2 - 0x7FFFFFFFFFFFFFFELL;
  v5 = 1;
  v40 = a2;
  v39 = a2 - 0x7FFFFFFFFFFFFFFELL;
  while (1)
  {
    v23 = (v15 & 0x7F) << v18;
    if (v18 >= 0x40)
    {
      v23 = 0;
    }

    if (v18 - 65 >= 0xFFFFFFFFFFFFFF7FLL)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v16 |= v24;
    if ((v15 & 0x80) == 0)
    {
      *a1 = v16;
      return v5;
    }

    v25 = v21 + v5;
    if (__OFADD__(v21, v5))
    {
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
    }

    if (v22 + v5 == 1)
    {
      goto LABEL_53;
    }

    if (v7 > 1)
    {
      if (v7 != 2)
      {
        if (v25 <= 0x7FFFFFFFFFFFFFFELL)
        {
          goto LABEL_13;
        }

        memset(v41, 0, 14);
        goto LABEL_21;
      }

      v28 = *(v19 + 16);
      v27 = *(v19 + 24);
      v11 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v11)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v26 = BYTE6(a4);
      if (v7)
      {
        v26 = HIDWORD(a3) - a3;
        if (v37)
        {
          goto LABEL_56;
        }
      }
    }

    if (v26 < (v25 + 1))
    {
      goto LABEL_13;
    }

    if (v7 == 2)
    {
      break;
    }

    if (v7 == 1)
    {
      if (a3 >> 32 < a3)
      {
        goto LABEL_57;
      }

      v29 = sub_1A7E21630();
      if (!v29)
      {
        goto LABEL_62;
      }

      v30 = v29;
      v31 = sub_1A7E21660();
      if (__OFSUB__(a3, v31))
      {
        goto LABEL_59;
      }

      v32 = a3 - v31 + v30;
      result = sub_1A7E21650();
      if (!v32)
      {
        goto LABEL_63;
      }

      goto LABEL_50;
    }

    LOWORD(v41[0]) = v19;
    BYTE2(v41[0]) = BYTE2(v19);
    BYTE3(v41[0]) = BYTE3(v19);
    BYTE4(v41[0]) = BYTE4(a3);
    BYTE5(v41[0]) = BYTE5(v19);
    BYTE6(v41[0]) = BYTE6(v19);
    HIBYTE(v41[0]) = HIBYTE(v19);
    LOWORD(v41[1]) = a4;
    BYTE2(v41[1]) = BYTE2(a4);
    BYTE3(v41[1]) = BYTE3(a4);
    BYTE4(v41[1]) = BYTE4(a4);
    BYTE5(v41[1]) = BYTE5(a4);
LABEL_21:
    v15 = *(v41 + v25);
LABEL_22:
    ++v5;
    v18 += 7;
    if (v5 == 0x124924924924924BLL)
    {
      goto LABEL_54;
    }
  }

  v33 = *(v19 + 16);
  v34 = sub_1A7E21630();
  if (v34)
  {
    v35 = v34;
    v36 = sub_1A7E21660();
    if (__OFSUB__(v33, v36))
    {
      goto LABEL_58;
    }

    v32 = v33 - v36 + v35;
    result = sub_1A7E21650();
    if (!v32)
    {
      goto LABEL_64;
    }

LABEL_50:
    v15 = *(v32 + v25);
    v21 = v40;
    v19 = a3;
    v22 = v39;
    goto LABEL_22;
  }

  sub_1A7E21650();
  __break(1u);
LABEL_62:
  result = sub_1A7E21650();
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

Swift::UInt64 sub_1A7D17B2C(uint64_t a1, unint64_t a2)
{

  result = sub_1A7E03860(a1, a2);
  v6 = result;
  v7 = v5;
  v8 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_13;
    }

    v10 = *(result + 16);
    v9 = *(result + 24);
    result = v9 - v10;
    if (!__OFSUB__(v9, v10))
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v6), v6))
    {
      goto LABEL_18;
    }

    result = HIDWORD(v6) - v6;
LABEL_10:
    if ((result & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(result))
      {
        goto LABEL_14;
      }

      __break(1u);
LABEL_13:
      result = 0;
      goto LABEL_14;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    goto LABEL_8;
  }

  result = BYTE6(v5);
LABEL_14:
  Data.appendVarInt(rawUInt64:)(result);
  sub_1A7E21A30();

  return sub_1A7CC7E50(v6, v7);
}

char *sub_1A7D17BF8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_1A7E222E0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A7D17410(&v29, a1, a2, a3);
  if (v3)
  {
    return v9;
  }

  v11 = v10;
  v12 = __OFADD__(a1, v10);
  result = (a1 + v10);
  if (v12)
  {
    __break(1u);
    goto LABEL_23;
  }

  v14 = v29;
  v15 = &result[v29];
  if (__OFADD__(result, v29))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v16 == 2)
    {
      v18 = *(a2 + 16);
      v17 = *(a2 + 24);
      v12 = __OFSUB__(v17, v18);
      v19 = v17 - v18;
      if (v12)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (v19 >= v15)
      {
LABEL_11:
        if (v15 >= result)
        {
          v20 = v11;
          v21 = sub_1A7E219D0();
          v23 = v22;
          sub_1A7E222D0();
          v24 = sub_1A7E222B0();
          if (!v25)
          {
            sub_1A7D17E10();
            v9 = swift_allocError();
            *v27 = 1;
            swift_willThrow();
            sub_1A7CC7E50(v21, v23);
            return v9;
          }

          v9 = v24;
          result = sub_1A7CC7E50(v21, v23);
          if (!__OFADD__(v20, v14))
          {
            return v9;
          }

          goto LABEL_25;
        }

LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }
    }

    else if (v15 <= 0)
    {
      goto LABEL_11;
    }

LABEL_19:
    sub_1A7D17E10();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
    return v9;
  }

  if (!v16)
  {
    if (BYTE6(a3) < v15)
    {
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  if (!__OFSUB__(HIDWORD(a2), a2))
  {
    if (HIDWORD(a2) - a2 < v15)
    {
      goto LABEL_19;
    }

    goto LABEL_11;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1A7D17E10()
{
  result = qword_1EB2B5A28;
  if (!qword_1EB2B5A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5A28);
  }

  return result;
}

unint64_t sub_1A7D17E78()
{
  result = qword_1EB2B5A30;
  if (!qword_1EB2B5A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5A30);
  }

  return result;
}

uint64_t LinkEndpoint.isRealloc.getter()
{
  v1 = *v0;
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_1A7CD0DFC(&type metadata for IDSLinkEndpointIsRealloc);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_1A7B0CD10(*(v1 + 56) + 32 * v2, v6);
  sub_1A7B1503C(v6, &v5);
  sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60);
  return swift_dynamicCast() & v7;
}

_OWORD *LinkEndpoint.isRealloc.setter(char a1)
{
  v3 = &type metadata for IDSLinkEndpointIsRealloc;
  v2[0] = a1;
  return sub_1A7CC8D74(v2, &type metadata for IDSLinkEndpointIsRealloc);
}

uint64_t (*LinkEndpoint.isRealloc.modify(uint64_t a1))()
{
  *a1 = v1;
  sub_1A7CE0720(*v1, &v4);
  *(a1 + 8) = v4 & 1;
  return sub_1A7D18000;
}

_OWORD *sub_1A7D18000(uint64_t a1)
{
  v1 = *(a1 + 8);
  v4 = &type metadata for IDSLinkEndpointIsRealloc;
  v3[0] = v1;
  return sub_1A7CC8D74(v3, &type metadata for IDSLinkEndpointIsRealloc);
}

__n128 sub_1A7D180B4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1A7D180D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 51))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1A7D18118(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 51) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 51) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

unint64_t sub_1A7D18180()
{
  result = qword_1EB2B5A38;
  if (!qword_1EB2B5A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5A38);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for CLITableColumn.Sizing(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 initializeWithCopy for CLITableColumn.Sizing(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CLITableColumn.Sizing(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for CLITableColumn.Sizing(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for LEToolOptions(uint64_t a1)
{
  result = qword_1EB2B5A50;
  if (!qword_1EB2B5A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A7D18340(uint64_t a1)
{
  sub_1A7D183C4(319);
  if (v1 <= 0x3F)
  {
    sub_1A7D18458();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A7D183C4(uint64_t a1)
{
  if (!qword_1EB2B5A60)
  {
    type metadata accessor for IDSToolOptions(255);
    sub_1A7D190C8(&qword_1EB2B5A68, type metadata accessor for IDSToolOptions, &unk_1A7E4ABC8);
    v1 = sub_1A7E21DE0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB2B5A60);
    }
  }
}

void sub_1A7D18458()
{
  if (!qword_1EB2B5A70)
  {
    v0 = sub_1A7E21FF0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB2B5A70);
    }
  }
}

uint64_t sub_1A7D184A8(uint64_t a1, double a2)
{
  v2 = sub_1A7E21D90();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1A7CC7FFC(&qword_1EB2B59C0, &qword_1A7E468C8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_1A7E21EF0();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1A7CC7FFC(&qword_1EB2B5A80, &qword_1A7E46DA0);
  sub_1A7E21EE0();
  *(swift_allocObject() + 16) = xmmword_1A7E418D0;
  sub_1A7E21EC0();
  sub_1A7E21ED0();
  sub_1A7E21EA0();
  sub_1A7E21D80();
  sub_1A7E21DB0();
  v7 = sub_1A7E21DA0();
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  return sub_1A7E21FE0();
}

void *sub_1A7D1872C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for IDSToolOptions(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A7CC7FFC(&qword_1EB2B5A40, &unk_1A7E4F310);
  sub_1A7E21DC0();
  sub_1A7CC7FFC(&qword_1EB2B5A88, &qword_1A7E4F430);
  sub_1A7E21FC0();
  if (v12)
  {
    if (v12 != 1)
    {
      result = sub_1A7D19164(v4, type metadata accessor for IDSToolOptions);
      *a1 = 2;
      *(a1 + 8) = 0;
      return result;
    }

    if (qword_1EB2B4728 != -1)
    {
      swift_once();
    }

    v5 = &qword_1EB2B53F1;
  }

  else
  {
    if (qword_1EB2B4720 != -1)
    {
      swift_once();
    }

    v5 = &qword_1EB2B53E8;
  }

  v6 = *(v5 + 8);
  v7 = *v5 | (*(v5 + 2) << 16);
  v8 = *(v5 + 1);
  sub_1A7D19164(v4, type metadata accessor for IDSToolOptions);
  type metadata accessor for LEToolOptions(0);
  sub_1A7CC7FFC(&qword_1EB2B5A48, &unk_1A7E53E20);
  result = sub_1A7E21FC0();
  v10 = 0x1000000;
  if (!v11[14])
  {
    v10 = 0;
  }

  *a1 = v10 | (v8 << 32) | v7;
  *(a1 + 8) = v6;
  return result;
}

uint64_t sub_1A7D1891C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v24 = sub_1A7CC7FFC(&qword_1EB2B5A48, &unk_1A7E53E20);
  v22 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v4 = &v22 - v3;
  v5 = sub_1A7CC7FFC(&qword_1EB2B5A40, &unk_1A7E4F310);
  v25 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v28 = sub_1A7CC7FFC(&qword_1EB2B5A90, &qword_1A7E46DA8);
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v8 = &v22 - v7;
  v9 = sub_1A7E21D90();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = type metadata accessor for LEToolOptions(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A7E21D80();
  type metadata accessor for IDSToolOptions(0);
  sub_1A7D190C8(&qword_1EB2B5A68, type metadata accessor for IDSToolOptions, &unk_1A7E4ABC8);
  sub_1A7E21DD0();
  v14 = *(v11 + 28);
  sub_1A7D184A8(0, v15);
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D19110();
  v16 = v29;
  sub_1A7E23250();
  if (!v16)
  {
    v17 = v25;
    v31 = 0;
    sub_1A7CF3788(&qword_1EB2B5AA0, &qword_1EB2B5A40, &unk_1A7E4F310, MEMORY[0x1E698CF40]);
    sub_1A7E22F30();
    (*(v17 + 40))(v13, v27, v5);
    v30 = 1;
    sub_1A7CF3788(&qword_1EB2B5AA8, &qword_1EB2B5A48, &unk_1A7E53E20, MEMORY[0x1E698CF68]);
    v18 = v4;
    v19 = v24;
    v20 = v28;
    sub_1A7E22F30();
    (*(v26 + 8))(v8, v20);
    (*(v22 + 40))(&v13[v14], v18, v19);
    sub_1A7D191C4(v13, v23);
  }

  sub_1A7B0CD6C(a1);
  return sub_1A7D19164(v13, type metadata accessor for LEToolOptions);
}

uint64_t sub_1A7D18DC4()
{
  if (*v0)
  {
    return 0x4E6564756C636E69;
  }

  else
  {
    return 0x6974704F65736162;
  }
}

uint64_t sub_1A7D18E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6974704F65736162 && a2 == 0xEB00000000736E6FLL;
  if (v6 || (sub_1A7E230D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4E6564756C636E69 && a2 == 0xEC00000073656D61)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A7E230D0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A7D18EF4(uint64_t a1)
{
  v2 = sub_1A7D19110();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D18F30(uint64_t a1)
{
  v2 = sub_1A7D19110();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7D18F6C(double a1)
{
  v1 = sub_1A7E21D90();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1A7E21D80();
  type metadata accessor for IDSToolOptions(0);
  sub_1A7D190C8(&qword_1EB2B5A68, type metadata accessor for IDSToolOptions, &unk_1A7E4ABC8);
  sub_1A7E21DD0();
  return sub_1A7D184A8(0, v2);
}

uint64_t sub_1A7D190C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A7D19110()
{
  result = qword_1EB2B5A98;
  if (!qword_1EB2B5A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5A98);
  }

  return result;
}

uint64_t sub_1A7D19164(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A7D191C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LEToolOptions(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A7D1923C()
{
  result = qword_1EB2B5AB0;
  if (!qword_1EB2B5AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5AB0);
  }

  return result;
}

unint64_t sub_1A7D19294()
{
  result = qword_1EB2B5AB8;
  if (!qword_1EB2B5AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5AB8);
  }

  return result;
}

unint64_t sub_1A7D192EC()
{
  result = qword_1EB2B5AC0;
  if (!qword_1EB2B5AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5AC0);
  }

  return result;
}

void IDSGLTwoWayLinkConnectorPlugin.Behavior.cli.getter(uint64_t a1@<X8>)
{
  v2 = *v1 == 0;
  v3 = 0x7463656E6E6F43;
  if (*v1)
  {
    v3 = 0x656E6E6F63736944;
  }

  v4 = 0xE700000000000000;
  if (*v1)
  {
    v4 = 0xEA00000000007463;
  }

  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  if (v2)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 2;
  *(a1 + 17) = v5;
}

uint64_t sub_1A7D193A4(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = *a2;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1A7CD22FC;

  return v7(v4);
}

uint64_t sub_1A7D19498()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B5AC8);
  sub_1A7B0CB00(v0, qword_1EB2B5AC8);
  return sub_1A7E22050();
}

uint64_t IDSGLTwoWayLinkConnectorPlugin.name.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_1A7D19570()
{
  if (*v0)
  {
    return 0x656E6E6F63736964;
  }

  else
  {
    return 0x7463656E6E6F63;
  }
}

uint64_t sub_1A7D195B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7463656E6E6F63 && a2 == 0xE700000000000000;
  if (v6 || (sub_1A7E230D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656E6E6F63736964 && a2 == 0xEA00000000007463)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A7E230D0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A7D19694(uint64_t a1)
{
  v2 = sub_1A7D19AAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D196D0(uint64_t a1)
{
  v2 = sub_1A7D19AAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7D1970C(uint64_t a1)
{
  v2 = sub_1A7D19B54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D19748(uint64_t a1)
{
  v2 = sub_1A7D19B54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7D19784(uint64_t a1)
{
  v2 = sub_1A7D19B00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D197C0(uint64_t a1)
{
  v2 = sub_1A7D19B00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSGLTwoWayLinkConnectorPlugin.Behavior.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B5AE0, &qword_1A7E46EE0);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = sub_1A7CC7FFC(&qword_1EB2B5AE8, &qword_1A7E46EE8);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = sub_1A7CC7FFC(&qword_1EB2B5AF0, &qword_1A7E46EF0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D19AAC();
  sub_1A7E23260();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1A7D19B00();
    v14 = v18;
    sub_1A7E22F80();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1A7D19B54();
    sub_1A7E22F80();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1A7D19AAC()
{
  result = qword_1EB2B5AF8;
  if (!qword_1EB2B5AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5AF8);
  }

  return result;
}

unint64_t sub_1A7D19B00()
{
  result = qword_1EB2B5B00;
  if (!qword_1EB2B5B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5B00);
  }

  return result;
}

unint64_t sub_1A7D19B54()
{
  result = qword_1EB2B5B08;
  if (!qword_1EB2B5B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5B08);
  }

  return result;
}

uint64_t IDSGLTwoWayLinkConnectorPlugin.Behavior.hashValue.getter()
{
  v1 = *v0;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v1);
  return sub_1A7E23240();
}

uint64_t IDSGLTwoWayLinkConnectorPlugin.Behavior.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = sub_1A7CC7FFC(&qword_1EB2B5B10, &qword_1A7E46EF8);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = sub_1A7CC7FFC(&qword_1EB2B5B18, &qword_1A7E46F00);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = sub_1A7CC7FFC(&qword_1EB2B5B20, &unk_1A7E46F08);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D19AAC();
  v12 = v31;
  sub_1A7E23250();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1A7E22F70();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1A7CDB538();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1A7E22BD0();
      swift_allocError();
      v22 = v21;
      sub_1A7CC7FFC(&qword_1EB2B4EC8, &qword_1A7E42100);
      *v22 = &type metadata for IDSGLTwoWayLinkConnectorPlugin.Behavior;
      sub_1A7E22E90();
      sub_1A7E22BC0();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1A7D19B00();
        sub_1A7E22E70();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1A7D19B54();
        sub_1A7E22E70();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return sub_1A7B0CD6C(v13);
}

uint64_t sub_1A7D1A108()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 17);
  v12 = *v0;

  MEMORY[0x1AC561C90](8250, 0xE200000000000000);
  v3 = 0xE700000000000000;
  v4 = 0x6C6C65436E6F4ELL;
  if (v1 != 1)
  {
    v4 = 7958081;
    v3 = 0xE300000000000000;
  }

  if (v1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1819043139;
  }

  if (v1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  MEMORY[0x1AC561C90](v5, v6);

  MEMORY[0x1AC561C90](45, 0xE100000000000000);
  v7 = 0xE700000000000000;
  v8 = 0x6C6C65436E6F4ELL;
  if (v2 != 1)
  {
    v8 = 7958081;
    v7 = 0xE300000000000000;
  }

  if (v2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1819043139;
  }

  if (v2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  MEMORY[0x1AC561C90](v9, v10);

  return v12;
}

uint64_t sub_1A7D1A218()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1A7DAB434(*v0);
  MEMORY[0x1AC561C90](8250, 0xE200000000000000);
  MEMORY[0x1AC561C90](v1, v2);
  return 0;
}

uint64_t IDSGLTwoWayLinkConnectorPlugin.register(engine:)(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1A7D1A360;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = &unk_1A7E46F20;
  *(v4 + 24) = v3;

  sub_1A7D212B4(v5, &unk_1A7E44460, v4, v2);
}

void sub_1A7D1A364(uint64_t a1)
{
  v2 = v1;
  v150 = sub_1A7E22CF0();
  v4 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v149 = &v131[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1A7CC7FFC(&qword_1EB2B4A80, &unk_1A7E41910);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v176 = &v131[-v7];
  v170 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v170);
  v169 = &v131[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v175 = &v131[-v10];
  os_unfair_lock_lock((a1 + 120));
  v12 = *(a1 + 128);
  v11 = *(a1 + 136);

  v162 = a1;
  os_unfair_lock_unlock((a1 + 120));
  if (qword_1EB2B4788 != -1)
  {
    goto LABEL_99;
  }

  while (1)
  {
    v13 = sub_1A7E22060();
    v14 = sub_1A7B0CB00(v13, qword_1EB2B5AC8);

    v161 = v14;
    v15 = sub_1A7E22040();
    v16 = sub_1A7E228F0();

    v17 = os_log_type_enabled(v15, v16);
    v173 = v4;
    if (v17)
    {
      v18 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      *&v184 = v4;
      *v18 = 136315394;
      *(v18 + 4) = sub_1A7B0CB38(0x6528657461647075, 0xEF293A656E69676ELL, &v184);
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_1A7B0CB38(v12, v11, &v184);
      _os_log_impl(&dword_1A7AD9000, v15, v16, "%s[%s]", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC5654B0](v4, -1, -1);
      MEMORY[0x1AC5654B0](v18, -1, -1);
    }

    v19 = LinkEngine.linkConnector.getter();
    v148 = v20;
    v155 = v19;
    if (!v19)
    {

      v176 = sub_1A7E22040();
      v39 = sub_1A7E228E0();

      if (os_log_type_enabled(v176, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *&v184 = v41;
        *v40 = 136315394;
        *(v40 + 4) = sub_1A7B0CB38(0x6528657461647075, 0xEF293A656E69676ELL, &v184);
        *(v40 + 12) = 2080;
        v42 = sub_1A7B0CB38(v12, v11, &v184);

        *(v40 + 14) = v42;
        _os_log_impl(&dword_1A7AD9000, v176, v39, "%s[%s]: no link connector", v40, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1AC5654B0](v41, -1, -1);
        MEMORY[0x1AC5654B0](v40, -1, -1);
      }

      else
      {

        v130 = v176;
      }

      return;
    }

    os_unfair_lock_lock((v2 + 40));
    sub_1A7D1D874((v2 + 48), v12, v11, v2, &v184);
    v160 = 0;
    v154 = v12;
    v168 = v11;
    os_unfair_lock_unlock((v2 + 40));
    v135 = *(&v184 + 1);
    v21 = v184;
    v133 = *(&v185 + 1);
    v134 = v185;
    v22 = *(v184 + 16);
    v157 = v2;
    v156 = v184;
    v151 = v22;
    if (v22)
    {
      break;
    }

    v37 = 0;
LABEL_33:
    v132 = v37;
    v153 = (*(v2 + 112))(v162);
    os_unfair_lock_lock((v2 + 40));
    v147 = *(v2 + 48);
    v43 = *(v2 + 56);
    v152 = *(v2 + 72);

    os_unfair_lock_unlock((v2 + 40));
    if (!v22)
    {
      v167 = MEMORY[0x1E69E7CC0];
LABEL_83:

      v113 = v157;
      os_unfair_lock_lock(v157 + 10);
      *(v113 + 64) = v167;

      os_unfair_lock_unlock((v113 + 40));
      v114 = v168;

      v115 = sub_1A7E22040();
      v116 = sub_1A7E228F0();

      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        *&v181 = v118;
        *v117 = 136315650;
        *(v117 + 4) = sub_1A7B0CB38(0x6528657461647075, 0xEF293A656E69676ELL, &v181);
        *(v117 + 12) = 2080;
        *(v117 + 14) = sub_1A7B0CB38(v154, v114, &v181);
        *(v117 + 22) = 2080;

        v120 = MEMORY[0x1AC561E20](v119, &type metadata for IDSGLTwoWayLinkConnectorPlugin.AllocatedLink);
        v122 = v121;

        v123 = sub_1A7B0CB38(v120, v122, &v181);

        *(v117 + 24) = v123;
        _os_log_impl(&dword_1A7AD9000, v115, v116, "%s TwoWay[%s]: new allocated links: %s", v117, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC5654B0](v118, -1, -1);
        MEMORY[0x1AC5654B0](v117, -1, -1);
      }

      if (*(v113 + 200) == 1)
      {
        v124 = v168;

        v125 = sub_1A7E22040();
        v126 = sub_1A7E228F0();

        if (os_log_type_enabled(v125, v126))
        {
          v127 = swift_slowAlloc();
          v128 = swift_slowAlloc();
          *&v181 = v128;
          *v127 = 136315394;
          *(v127 + 4) = sub_1A7B0CB38(0x6528657461647075, 0xEF293A656E69676ELL, &v181);
          *(v127 + 12) = 2080;
          v129 = v154;
          *(v127 + 14) = sub_1A7B0CB38(v154, v124, &v181);
          _os_log_impl(&dword_1A7AD9000, v125, v126, "%s TwoWay[%s]: is initiator; checking if we need another allocation...", v127, 0x16u);
          v113 = v157;
          swift_arrayDestroy();
          MEMORY[0x1AC5654B0](v128, -1, -1);
          MEMORY[0x1AC5654B0](v127, -1, -1);
        }

        else
        {

          v129 = v154;
        }

        os_unfair_lock_lock((v113 + 40));
        sub_1A7D1E11C(v113 + 48, v129, v124, v135, v134, v156, v133, v132, v113);

        os_unfair_lock_unlock((v113 + 40));
      }

      else
      {
      }

      swift_unknownObjectRelease();
      return;
    }

    v11 = 0;
    v45 = v21 + 32;
    v146 = 0x80000001A7EADE80;
    v143 = (v173 + 8);
    *&v44 = 136315906;
    v137 = v44;
    *(&v46 + 1) = 2;
    v159 = xmmword_1A7E418C0;
    *&v46 = 136315650;
    v136 = v46;
    v167 = MEMORY[0x1E69E7CC0];
    v145 = v43;
    v144 = v21 + 32;
    while (v11 < *(v21 + 16))
    {
      v47 = (v45 + 48 * v11);
      v49 = v47[1];
      v48 = v47[2];
      v184 = *v47;
      v185 = v49;
      v186 = v48;
      v172 = *(&v49 + 1);
      v4 = v49;
      v2 = *(&v48 + 1);
      v171 = v48;
      if (*(v43 + 16))
      {
        v164 = v184;
        v163 = BYTE1(v184);
        v50 = *(&v184 + 1);
        sub_1A7D25A14(&v184, &v181);
        sub_1A7D25A14(&v184, &v181);
        v166 = v50;
        v51 = sub_1A7CD1248(v50, v4);
        if (v52)
        {
          v165 = v4;
          v158 = v11;
          v53 = *(v43 + 56) + 32 * v51;
          v55 = *v53;
          v54 = *(v53 + 8);
          v2 = *(v53 + 16);
          v56 = *(v53 + 17);
          v57 = *(v53 + 24);

          sub_1A7D25A14(&v184, &v181);

          v58 = sub_1A7E22040();
          v59 = sub_1A7E228F0();

          sub_1A7D25A4C(&v184);

          if (os_log_type_enabled(v58, v59))
          {
            v60 = v184;
            v61 = swift_slowAlloc();
            v173 = v55;
            LODWORD(v174) = v56;
            v62 = v61;
            v63 = v2;
            v2 = swift_slowAlloc();
            v180 = v2;
            *v62 = v137;
            *(v62 + 4) = sub_1A7B0CB38(0x6528657461647075, 0xEF293A656E69676ELL, &v180);
            *(v62 + 12) = 2080;
            *(v62 + 14) = sub_1A7B0CB38(v154, v168, &v180);
            *(v62 + 22) = 2080;
            v177 = 0;
            v178 = 0xE000000000000000;
            sub_1A7D25A14(&v184, &v181);
            sub_1A7DAB434(v60);
            MEMORY[0x1AC561C90](8250, 0xE200000000000000);
            MEMORY[0x1AC561C90](v166, v165);
            sub_1A7D25A4C(&v184);
            v64 = sub_1A7B0CB38(v177, v178, &v180);

            *(v62 + 24) = v64;
            *(v62 + 32) = 2080;
            *&v181 = v173;
            *(&v181 + 1) = v54;
            LOBYTE(v182) = v63;
            BYTE1(v182) = v174;
            *(&v182 + 1) = v57;

            v65 = sub_1A7D1A108();
            v67 = v66;

            v68 = sub_1A7B0CB38(v65, v67, &v180);

            *(v62 + 34) = v68;
            _os_log_impl(&dword_1A7AD9000, v58, v59, "%s TwoWay[%s]: for allocated link: %s, allocation: %s", v62, 0x2Au);
            swift_arrayDestroy();
            v69 = v157;
            MEMORY[0x1AC5654B0](v2, -1, -1);
            MEMORY[0x1AC5654B0](v62, -1, -1);
          }

          else
          {

            v69 = v157;
          }

          sub_1A7CC7FFC(&qword_1EB2B4AF0, &unk_1A7E41A30);
          inited = swift_initStackObject();
          *(inited + 16) = v159;
          sub_1A7CC7FFC(&qword_1EB2B4B60, &qword_1A7E434A0);
          v71 = swift_allocObject();
          *(v71 + 16) = v159;
          *(v71 + 32) = sub_1A7D25A7C;
          *(v71 + 40) = v69;
          *(v71 + 48) = 0xD000000000000012;
          *(v71 + 56) = v146;
          *(inited + 32) = v71;
          *&v181 = v152;

          sub_1A7DDF468(inited);
          v72 = v181;
          *&v181 = MEMORY[0x1E69E7CC0];
          v12 = EndpointLinkCreationController.update(_:localEndpoints:remoteEndpoints:permutating:log:)(v162, v153, v57, v72, &v181);

          v73 = *&v69[42]._os_unfair_lock_opaque;
          v74 = *&v69[44]._os_unfair_lock_opaque;
          sub_1A7CC9878(&v69[36]._os_unfair_lock_opaque, v73);
          v75 = (*(v74 + 8))(v12, v73, v74);
          sub_1A7D25A14(&v184, &v181);
          *&v181 = sub_1A7D20C18(v75);
          v76 = v160;
          sub_1A7D25690(&v181, &v184);
          sub_1A7D25A4C(&v184);
          v25 = &v183;
          v160 = v76;
          if (v76)
          {
            goto LABEL_101;
          }

          v77 = *(v181 + 16);
          v78 = v176;
          v79 = v175;
          v4 = v168;
          if (v77)
          {
            *&v181 = MEMORY[0x1E69E7CC0];
            sub_1A7E22C20();
            v80 = 40;
            do
            {

              sub_1A7E22BF0();
              sub_1A7E22C40();
              sub_1A7E22C50();
              sub_1A7E22C00();
              v80 += 16;
              --v77;
            }

            while (v77);

            v2 = v181;
            v4 = v168;
          }

          else
          {

            v2 = MEMORY[0x1E69E7CC0];
          }

          v81 = sub_1A7E22040();
          v11 = sub_1A7E228F0();

          if (os_log_type_enabled(v81, v11))
          {
            v82 = swift_slowAlloc();
            v142 = swift_slowAlloc();
            v180 = v142;
            *v82 = v136;
            *(v82 + 4) = sub_1A7B0CB38(0x6528657461647075, 0xEF293A656E69676ELL, &v180);
            *(v82 + 12) = 2080;
            *(v82 + 14) = sub_1A7B0CB38(v154, v4, &v180);
            *(v82 + 22) = 2080;
            if (v2 >> 62)
            {
              v83 = sub_1A7E22DA0();
            }

            else
            {
              v83 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v174 = v2;
            if (v83)
            {
              v179 = MEMORY[0x1E69E7CC0];
              sub_1A7CCE918(0, v83 & ~(v83 >> 63), 0);
              if (v83 < 0)
              {
                goto LABEL_98;
              }

              v138 = v82;
              v139 = v11;
              v140 = v81;
              v141 = v12;
              v84 = v2;
              v85 = v179;
              v86 = type metadata accessor for LinkStateComponent(0);
              v87 = 0;
              v173 = v84 & 0xC000000000000001;
              do
              {
                if (v173)
                {
                  v88 = MEMORY[0x1AC562480](v87, v174);
                }

                else
                {
                  v88 = *(v174 + 8 * v87 + 32);
                }

                v177 = 8237;
                v178 = 0xE200000000000000;
                os_unfair_lock_lock((v88 + 40));
                v89 = *(v88 + 48);
                if (*(v89 + 16) && (v90 = sub_1A7CD0DFC(v86), (v91 & 1) != 0))
                {
                  sub_1A7B0CD10(*(v89 + 56) + 32 * v90, &v181);
                }

                else
                {
                  v181 = 0u;
                  v182 = 0u;
                }

                os_unfair_lock_unlock((v88 + 40));
                sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
                v92 = swift_dynamicCast();
                v93 = *(v86 - 8);
                (*(v93 + 56))(v78, v92 ^ 1u, 1, v86);
                if ((*(v93 + 48))(v78, 1, v86))
                {
                  sub_1A7CC9970(v78, &qword_1EB2B4A80, &unk_1A7E41910);
                  swift_storeEnumTagMultiPayload();
                }

                else
                {
                  v94 = v169;
                  sub_1A7CD0EC4(v78, v169);
                  sub_1A7CC9970(v78, &qword_1EB2B4A80, &unk_1A7E41910);
                  sub_1A7D25A84(v94, v79, type metadata accessor for LinkState);
                }

                v95 = LinkState.description.getter();
                MEMORY[0x1AC561C90](v95);

                sub_1A7CD0E68(v79);
                MEMORY[0x1AC561C90](8250, 0xE200000000000000);
                MEMORY[0x1AC561C90](*(v88 + 16), *(v88 + 24));

                v96 = v177;
                v97 = v178;
                v179 = v85;
                v99 = *(v85 + 16);
                v98 = *(v85 + 24);
                if (v99 >= v98 >> 1)
                {
                  sub_1A7CCE918((v98 > 1), v99 + 1, 1);
                  v85 = v179;
                }

                ++v87;
                *(v85 + 16) = v99 + 1;
                v100 = v85 + 16 * v99;
                *(v100 + 32) = v96;
                *(v100 + 40) = v97;
                v78 = v176;
                v79 = v175;
              }

              while (v83 != v87);
              v12 = v141;
              v81 = v140;
              LOBYTE(v11) = v139;
              v82 = v138;
            }

            else
            {
              v85 = MEMORY[0x1E69E7CC0];
            }

            *&v181 = v85;
            sub_1A7CC7FFC(&qword_1EB2B4AA0, &qword_1A7E45010);
            sub_1A7CD0F8C();
            v101 = sub_1A7E221F0();
            v103 = v102;

            v104 = sub_1A7B0CB38(v101, v103, &v180);

            *(v82 + 24) = v104;
            _os_log_impl(&dword_1A7AD9000, v81, v11, "%s TwoWay[%s]:     calling connector with links:\n         %s", v82, 0x20u);
            v105 = v142;
            swift_arrayDestroy();
            MEMORY[0x1AC5654B0](v105, -1, -1);
            MEMORY[0x1AC5654B0](v82, -1, -1);

            v22 = v151;
            v43 = v145;
            v11 = v158;
            v45 = v144;
            v2 = v174;
          }

          else
          {

            v22 = v151;
            v43 = v145;
            v11 = v158;
            v45 = v144;
          }

          v106 = v186;
          v107 = v149;
          sub_1A7E22CC0();
          LOBYTE(v106) = sub_1A7D21B34(v155, v148, v162, v2, v147, v107, v106);
          (*v143)(v107, v150);
          if ((v106 & 1) == 0 && v12 >> 62)
          {
            sub_1A7E22DA0();
          }

          v187 = *(&v186 + 1);
          sub_1A7CC9970(&v187, &qword_1EB2B5B70, &qword_1A7E50F90);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v167 = sub_1A7CCDA68(0, *(v167 + 2) + 1, 1, v167);
          }

          v109 = *(v167 + 2);
          v108 = *(v167 + 3);
          if (v109 >= v108 >> 1)
          {
            v167 = sub_1A7CCDA68((v108 > 1), v109 + 1, 1, v167);
          }

          sub_1A7D25A4C(&v184);
          v110 = v167;
          *(v167 + 2) = v109 + 1;
          v111 = &v110[48 * v109];
          v111[32] = v164;
          v111[33] = v163;
          v4 = v165;
          *(v111 + 5) = v166;
          *(v111 + 6) = v4;
          v112 = v171;
          *(v111 + 7) = v172;
          *(v111 + 8) = v112;
          *(v111 + 9) = v2;
          v21 = v156;
        }

        else
        {
          sub_1A7D25A4C(&v184);
        }
      }

      else
      {
        sub_1A7D25A14(&v184, &v181);
      }

      ++v11;

      if (v11 == v22)
      {
        goto LABEL_83;
      }
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    swift_once();
  }

  v23 = 0;
  v24 = v184 + 32;
  v4 = &type metadata for IDSObservedRemoteRAT;
  v12 = &unk_1A7E41920;
  v166 = v184 + 32;
  while (1)
  {
    v25 = *(v21 + 16);
    if (v23 >= v25)
    {
      break;
    }

    v26 = (v24 + 48 * v23);
    v27 = v26[2];
    v28 = v26[3];
    v30 = v26[4];
    v29 = v26[5];
    v174 = v23;
    if (v29 >> 62)
    {
      v38 = v27;
      v2 = sub_1A7E22DA0();
      v27 = v38;
    }

    else
    {
      v2 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v172 = v27;

    v171 = v28;

    v167 = v30;

    swift_bridgeObjectRetain_n();
    if (!v2)
    {
LABEL_31:
      swift_bridgeObjectRelease_n();

      v37 = 1;
      v2 = v157;
      v21 = v156;
      v22 = v151;
      goto LABEL_33;
    }

    v31 = 0;
    ++v174;
    v11 = v29 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x1AC562480](v31, v29);
        v33 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_96;
        }
      }

      else
      {
        if (v31 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_97;
        }

        v32 = *(v29 + 8 * v31 + 32);

        v33 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_96;
        }
      }

      os_unfair_lock_lock((v32 + 40));
      v34 = *(v32 + 48);
      if (*(v34 + 16) && (v35 = sub_1A7CD0DFC(&type metadata for IDSObservedRemoteRAT), (v36 & 1) != 0))
      {
        sub_1A7B0CD10(*(v34 + 56) + 32 * v35, &v184);
      }

      else
      {
        v184 = 0u;
        v185 = 0u;
      }

      os_unfair_lock_unlock((v32 + 40));

      sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
      if ((swift_dynamicCast() & 1) != 0 && (BYTE4(v181) & 1) == 0)
      {
        break;
      }

      ++v31;
      if (v33 == v2)
      {
        goto LABEL_31;
      }
    }

    swift_bridgeObjectRelease_n();

    v37 = 0;
    v22 = v151;
    v23 = v174;
    v2 = v157;
    v21 = v156;
    v24 = v166;
    if (v174 == v151)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_101:

  __break(1u);
  os_unfair_lock_unlock((v2 + 40));
  __break(1u);
}

uint64_t sub_1A7D1BCEC(uint64_t a1, void (*a2)(uint64_t))
{
  a2(a1);
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_1A7D1BD50(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A7CD2A2C;

  return sub_1A7D1BCEC(a1, v4);
}

char *sub_1A7D1BE04(void *a1)
{
  i = a1[7];
  v186 = a1[6];

  v217 = sub_1A7D1D684(v198);
  v216 = a1[2];
  v191 = a1;
  v3 = a1[5];
  v4 = qword_1EB2B4788;
  v208 = v216;

  if (v4 == -1)
  {
    goto LABEL_2;
  }

LABEL_162:
  swift_once();
LABEL_2:
  v5 = sub_1A7E22060();
  sub_1A7B0CB00(v5, qword_1EB2B5AC8);

  v6 = sub_1A7E22040();
  v7 = sub_1A7E228F0();

  v199 = i;
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v209 = v9;
    *v8 = 136315906;
    *(v8 + 4) = sub_1A7B0CB38(0xD000000000000013, 0x80000001A7EAEB50, &v209);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_1A7B0CB38(v186, i, &v209);
    *(v8 + 22) = 2080;
    sub_1A7D25B5C();

    v10 = sub_1A7E227B0();
    v12 = v11;

    v13 = sub_1A7B0CB38(v10, v12, &v209);
    i = v199;

    *(v8 + 24) = v13;
    *(v8 + 32) = 2080;
    v14 = MEMORY[0x1AC561E20](v3, &type metadata for IDSLinkCellularTuple);
    v16 = sub_1A7B0CB38(v14, v15, &v209);

    *(v8 + 34) = v16;
    _os_log_impl(&dword_1A7AD9000, v6, v7, "%s TwoWay[%s]: allocations available: %s, desired link types: %s", v8, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1AC5654B0](v9, -1, -1);
    MEMORY[0x1AC5654B0](v8, -1, -1);
  }

  v203 = *(v3 + 2);
  v17 = v198;
  if (v203)
  {
    v18 = v3;
    v19 = 0;
    v20 = v3 + 32;
    v3 = MEMORY[0x1E69E7CC0];
    v205 = v18;
    while (v19 < *(v18 + 2))
    {
      v23 = &v20[2 * v19];
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v216 + 16);
      if (v26)
      {
        v27 = 0;
        v28 = (v216 + 40);
        while (1)
        {
          if (v24 == 2 || ((v32 = *(v28 - 8), v24 != v32) ? (v33 = v32 == 2) : (v33 = 1), v33))
          {
            v29 = *(v28 - 7);
            v30 = v25 == v29 || v25 == 2;
            if (v30 || v29 == 2)
            {
              break;
            }
          }

          ++v27;
          v28 += 6;
          if (v26 == v27)
          {
            goto LABEL_27;
          }
        }

        if (*(v17 + 16))
        {
          v37 = *v28;
          v38 = v28[1];

          v39 = sub_1A7CD1248(v37, v38);
          if (v40)
          {
            v21 = (*(v17 + 56) + 32 * v39);
            v22 = v21[1];
            v195 = *v21;
            swift_beginAccess();

            sub_1A7D91A30(v195, v22, &v209);
            swift_endAccess();

            v17 = v198;

            sub_1A7D21920(v209, v210);
            sub_1A7D1D7D0(v27, &v209);
          }

          i = v199;
          v18 = v205;
        }
      }

      else
      {
LABEL_27:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_1A7CCDB88(0, *(v3 + 2) + 1, 1, v3);
        }

        v35 = *(v3 + 2);
        v34 = *(v3 + 3);
        if (v35 >= v34 >> 1)
        {
          v3 = sub_1A7CCDB88((v34 > 1), v35 + 1, 1, v3);
        }

        *(v3 + 2) = v35 + 1;
        v36 = &v3[2 * v35];
        v36[32] = v24;
        v36[33] = v25;
      }

      if (++v19 == v203)
      {
        goto LABEL_36;
      }
    }

LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_36:
  v41 = *(v208 + 2);
  if (v41)
  {
    v42 = v208 + 72;
    v206 = v3;
    do
    {
      if (*(v17 + 16))
      {
        v45 = *(v42 - 4);
        v46 = *(v42 - 3);

        v47 = sub_1A7CD1248(v45, v46);
        if (v48)
        {
          v43 = (*(v17 + 56) + 32 * v47);
          v44 = v43[1];
          v200 = *v43;
          swift_beginAccess();

          v3 = v206;
          sub_1A7D91A30(v200, v44, &v209);
          swift_endAccess();

          v17 = v198;

          i = v199;

          sub_1A7D21920(v209, v210);
        }

        else
        {
        }
      }

      v42 += 48;
      --v41;
    }

    while (v41);
  }

  v49 = sub_1A7E22040();
  v50 = sub_1A7E228F0();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v209 = v52;
    *v51 = 136315650;
    *(v51 + 4) = sub_1A7B0CB38(0xD000000000000013, 0x80000001A7EAEB50, &v209);
    *(v51 + 12) = 2080;
    *(v51 + 14) = sub_1A7B0CB38(v186, i, &v209);
    *(v51 + 22) = 2080;

    v54 = MEMORY[0x1AC561E20](v53, &type metadata for IDSLinkCellularTuple);
    v56 = v55;

    v57 = sub_1A7B0CB38(v54, v56, &v209);

    *(v51 + 24) = v57;
    _os_log_impl(&dword_1A7AD9000, v49, v50, "%s TwoWay[%s]: remaining link types after accounting for existing allocated links: %s", v51, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1AC5654B0](v52, -1, -1);
    MEMORY[0x1AC5654B0](v51, -1, -1);
  }

  v58 = v194;
  v59 = MEMORY[0x1E69E7CC0];
  v207 = v3;
  v198 = *(v3 + 2);
  if (v198)
  {
    v196 = v3 + 32;

    swift_beginAccess();
    v60 = 0;
    while (v60 < *(v3 + 2))
    {
      v62 = 0;
      v63 = &v196[2 * v60];
      v64 = 1 << *(v217 + 32);
      if (v64 < 64)
      {
        v65 = ~(-1 << v64);
      }

      else
      {
        v65 = -1;
      }

      v66 = v65 & *(v217 + 56);
      v67 = *v63;
      v3 = v63[1];
      ++v60;
      while (v66)
      {
LABEL_59:
        v69 = __clz(__rbit64(v66));
        v66 &= v66 - 1;
        v70 = *(v217 + 48) + ((v62 << 11) | (32 * v69));
        v71 = *(v70 + 16);
        if (v67 == v71 || v67 == 2 || v71 == 2)
        {
          if ((v74 = *(v70 + 17), *(v58 + 200) != 1) || v3 == 2 || (v3 != v74 ? (v75 = v74 == 2) : (v75 = 1), v75))
          {
            v76 = *(v70 + 8);
            v190 = *v70;
            v77 = *(v70 + 24);
            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();

            v78 = sub_1A7E22040();
            v79 = sub_1A7E228F0();
            v192 = v77;

            v188 = v79;
            v201 = v59;
            if (os_log_type_enabled(v78, v79))
            {
              log = v78;
              v80 = swift_slowAlloc();
              v184 = swift_slowAlloc();
              v215[0] = v184;
              *v80 = 136316162;
              *(v80 + 4) = sub_1A7B0CB38(0xD000000000000013, 0x80000001A7EAEB50, v215);
              *(v80 + 12) = 2080;
              *(v80 + 14) = sub_1A7B0CB38(v186, v199, v215);
              *(v80 + 22) = 2080;
              v81 = 0x6C6C65436E6F4ELL;
              if (v67 != 1)
              {
                v81 = 7958081;
              }

              v82 = 0xE700000000000000;
              if (v67 != 1)
              {
                v82 = 0xE300000000000000;
              }

              if (v67)
              {
                v83 = v81;
              }

              else
              {
                v83 = 1819043139;
              }

              if (v67)
              {
                v84 = v82;
              }

              else
              {
                v84 = 0xE400000000000000;
              }

              v85 = sub_1A7B0CB38(v83, v84, v215);

              *(v80 + 24) = v85;
              *(v80 + 32) = 2080;
              v86 = 0x6C6C65436E6F4ELL;
              if (v3 != 1)
              {
                v86 = 7958081;
              }

              v87 = 0xE700000000000000;
              if (v3 != 1)
              {
                v87 = 0xE300000000000000;
              }

              if (v3)
              {
                v88 = v86;
              }

              else
              {
                v88 = 1819043139;
              }

              if (v3)
              {
                v89 = v87;
              }

              else
              {
                v89 = 0xE400000000000000;
              }

              v90 = v76;
              v91 = sub_1A7B0CB38(v88, v89, v215);

              *(v80 + 34) = v91;
              *(v80 + 42) = 2080;
              v209 = v190;
              v210 = v76;
              v211 = v71;
              v212 = v74;
              v213 = v192;

              v92 = sub_1A7D1A108();
              v94 = v93;

              v95 = sub_1A7B0CB38(v92, v94, v215);

              *(v80 + 44) = v95;
              _os_log_impl(&dword_1A7AD9000, log, v188, "%s TwoWay[%s]:     found unused allocation matching %s-%s: %s", v80, 0x34u);
              swift_arrayDestroy();
              MEMORY[0x1AC5654B0](v184, -1, -1);
              MEMORY[0x1AC5654B0](v80, -1, -1);
            }

            else
            {

              v90 = v76;
            }

            type metadata accessor for EndpointLinkCreationController();
            v98 = swift_allocObject();
            type metadata accessor for LinkCreationController();
            v99 = swift_allocObject();
            *(v99 + 16) = 0;
            *(v99 + 40) = 0;
            *(v99 + 24) = MEMORY[0x1E69E7CD0];
            *(v99 + 32) = 0;
            *(v98 + 16) = v99;
            v100 = *(v194 + 128);
            v101 = *(v194 + 136);
            type metadata accessor for LinkEngineConnectFirstController();
            v102 = swift_allocObject();
            *(v102 + 16) = v100;
            *(v102 + 24) = v101;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v208 = sub_1A7CCDA68(0, *(v208 + 2) + 1, 1, v208);
            }

            v104 = *(v208 + 2);
            v103 = *(v208 + 3);
            if (v104 >= v103 >> 1)
            {
              v208 = sub_1A7CCDA68((v103 > 1), v104 + 1, 1, v208);
            }

            *(v208 + 2) = v104 + 1;
            v105 = &v208[48 * v104];
            v105[32] = v67;
            v105[33] = v3;
            *(v105 + 5) = v190;
            *(v105 + 6) = v90;
            *(v105 + 7) = v98;
            *(v105 + 8) = v102;
            *(v105 + 9) = MEMORY[0x1E69E7CC0];
            v191[2] = v208;
            swift_beginAccess();
            sub_1A7D91A30(v190, v90, &v209);
            swift_endAccess();

            sub_1A7D21920(v209, v210);
            i = v199;
            v59 = v201;
            v58 = v194;
            goto LABEL_48;
          }
        }
      }

      while (1)
      {
        v68 = v62 + 1;
        if (__OFADD__(v62, 1))
        {
          __break(1u);
          goto LABEL_156;
        }

        if (v68 >= ((v64 + 63) >> 6))
        {
          break;
        }

        v66 = *(v217 + 56 + 8 * v68);
        ++v62;
        if (v66)
        {
          v62 = v68;
          goto LABEL_59;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v59 = sub_1A7CCDB88(0, *(v59 + 2) + 1, 1, v59);
      }

      v97 = *(v59 + 2);
      v96 = *(v59 + 3);
      if (v97 >= v96 >> 1)
      {
        v59 = sub_1A7CCDB88((v96 > 1), v97 + 1, 1, v59);
      }

      *(v59 + 2) = v97 + 1;
      v61 = &v59[2 * v97];
      v61[32] = v67;
      v61[33] = v3;
LABEL_48:
      v3 = v207;
      if (v60 == v198)
      {
        v106 = v59;

        goto LABEL_108;
      }
    }

    goto LABEL_158;
  }

  v106 = MEMORY[0x1E69E7CC0];
LABEL_108:

  v107 = sub_1A7E22040();
  v108 = sub_1A7E228F0();

  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v209 = v110;
    *v109 = 136315650;
    *(v109 + 4) = sub_1A7B0CB38(0xD000000000000013, 0x80000001A7EAEB50, &v209);
    *(v109 + 12) = 2080;
    *(v109 + 14) = sub_1A7B0CB38(v186, i, &v209);
    *(v109 + 22) = 2080;

    v112 = MEMORY[0x1AC561E20](v111, &type metadata for IDSLinkCellularTuple);
    v114 = v113;

    v115 = sub_1A7B0CB38(v112, v114, &v209);

    *(v109 + 24) = v115;
    v58 = v194;
    _os_log_impl(&dword_1A7AD9000, v107, v108, "%s TwoWay[%s]: remaining link types after assigning links matching affinities: %s", v109, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1AC5654B0](v110, -1, -1);
    MEMORY[0x1AC5654B0](v109, -1, -1);
  }

  v116 = MEMORY[0x1E69E7CC0];
  v202 = v106;
  v198 = *(v106 + 2);
  if (v198)
  {
    v197 = v106 + 32;

    swift_beginAccess();
    v3 = 0;
    while (2)
    {
      if (v3 >= *(v106 + 2))
      {
        goto LABEL_157;
      }

      v118 = 0;
      v119 = 0;
      v120 = &v197[2 * v3];
      v121 = *v120;
      v122 = v120[1];
      ++v3;
      v123 = v217 + 56;
      v124 = 1 << *(v217 + 32);
      while (1)
      {
        v125 = *(v123 + 8 * v119);
        if (v125)
        {
          break;
        }

        ++v119;
        v118 -= 64;
        if ((v124 + 63) >> 6 == v119)
        {
          goto LABEL_120;
        }
      }

      v126 = __clz(__rbit64(v125));
      if (v126 - v124 == v118)
      {
LABEL_120:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v116 = sub_1A7CCDB88(0, *(v116 + 2) + 1, 1, v116);
        }

        v128 = *(v116 + 2);
        v127 = *(v116 + 3);
        v129 = v116;
        if (v128 >= v127 >> 1)
        {
          v129 = sub_1A7CCDB88((v127 > 1), v128 + 1, 1, v116);
        }

        *(v129 + 2) = v128 + 1;
        v116 = v129;
        v117 = &v129[2 * v128];
        v117[32] = v121;
        v117[33] = v122;
        goto LABEL_113;
      }

      if (-v118 < 0)
      {
        goto LABEL_160;
      }

      v130 = v126 - v118;
      if (v130 >= v124)
      {
        goto LABEL_160;
      }

      if (((*(v123 + 8 * (v119 & 0x3FFFFFFFFFFFFFFLL)) >> v126) & 1) == 0)
      {
        goto LABEL_161;
      }

      v189 = *v120;
      v193 = v116;
      v131 = *(v217 + 48) + 32 * v130;
      v132 = i;
      v133 = *v131;
      v134 = *(v131 + 8);
      v135 = *(v131 + 16);
      v136 = *(v131 + 17);
      v137 = *(v131 + 24);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();

      v138 = sub_1A7E22040();
      v139 = sub_1A7E228F0();

      if (os_log_type_enabled(v138, v139))
      {
        v185 = v122;
        v140 = v135;
        v141 = swift_slowAlloc();
        v183 = swift_slowAlloc();
        v214[0] = v183;
        *v141 = 136315650;
        *(v141 + 4) = sub_1A7B0CB38(0xD000000000000013, 0x80000001A7EAEB50, v214);
        v182 = v139;
        *(v141 + 12) = 2080;
        *(v141 + 14) = sub_1A7B0CB38(v186, v132, v214);
        *(v141 + 22) = 2080;
        v209 = v133;
        v210 = v134;
        v211 = v140;
        v122 = v185;
        v212 = v136;
        v213 = v137;

        v142 = sub_1A7D1A108();
        v144 = v143;

        v145 = sub_1A7B0CB38(v142, v144, v214);

        *(v141 + 24) = v145;
        _os_log_impl(&dword_1A7AD9000, v138, v182, "%s TwoWay[%s]:     found unused allocation (not matching affinity): %s", v141, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC5654B0](v183, -1, -1);
        MEMORY[0x1AC5654B0](v141, -1, -1);
      }

      type metadata accessor for EndpointLinkCreationController();
      v146 = swift_allocObject();
      type metadata accessor for LinkCreationController();
      v147 = swift_allocObject();
      *(v147 + 16) = 0;
      *(v147 + 40) = 0;
      *(v147 + 24) = MEMORY[0x1E69E7CD0];
      *(v147 + 32) = 0;
      *(v146 + 16) = v147;
      v148 = *(v194 + 128);
      v149 = *(v194 + 136);
      type metadata accessor for LinkEngineConnectFirstController();
      v150 = swift_allocObject();
      *(v150 + 16) = v148;
      *(v150 + 24) = v149;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v208 = sub_1A7CCDA68(0, *(v208 + 2) + 1, 1, v208);
      }

      v152 = *(v208 + 2);
      v151 = *(v208 + 3);
      if (v152 >= v151 >> 1)
      {
        v208 = sub_1A7CCDA68((v151 > 1), v152 + 1, 1, v208);
      }

      *(v208 + 2) = v152 + 1;
      v153 = &v208[48 * v152];
      v153[32] = v189;
      v153[33] = v122;
      *(v153 + 5) = v133;
      *(v153 + 6) = v134;
      *(v153 + 7) = v146;
      *(v153 + 8) = v150;
      *(v153 + 9) = MEMORY[0x1E69E7CC0];
      v191[2] = v208;
      swift_beginAccess();
      sub_1A7D91A30(v133, v134, &v209);
      swift_endAccess();

      sub_1A7D21920(v209, v210);
      i = v199;
      v116 = v193;
      v58 = v194;
LABEL_113:
      v106 = v202;
      if (v3 != v198)
      {
        continue;
      }

      break;
    }

    v3 = v207;
  }

  if (!v203 || (*(v58 + 200) & 1) != 0)
  {
    goto LABEL_151;
  }

  swift_beginAccess();
  v154 = v217 + 56;
  v155 = 1 << *(v217 + 32);
  v156 = -1;
  if (v155 < 64)
  {
    v156 = ~(-1 << v155);
  }

  v157 = v156 & *(v217 + 56);
  v158 = (v155 + 63) >> 6;
  v204 = v217;

  for (i = 0; v157; v3 = v207)
  {
LABEL_144:
    v160 = (*(v204 + 48) + ((i << 11) | (32 * __clz(__rbit64(v157)))));
    v162 = *v160;
    v161 = v160[1];
    type metadata accessor for EndpointLinkCreationController();
    v163 = swift_allocObject();
    type metadata accessor for LinkCreationController();
    v164 = swift_allocObject();
    *(v164 + 16) = 0;
    *(v164 + 40) = 0;
    *(v164 + 24) = MEMORY[0x1E69E7CD0];
    *(v164 + 32) = 0;
    *(v163 + 16) = v164;
    v165 = *(v194 + 128);
    v166 = *(v194 + 136);
    type metadata accessor for LinkEngineConnectFirstController();
    v167 = swift_allocObject();
    *(v167 + 16) = v165;
    *(v167 + 24) = v166;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v208 = sub_1A7CCDA68(0, *(v208 + 2) + 1, 1, v208);
    }

    v169 = *(v208 + 2);
    v168 = *(v208 + 3);
    if (v169 >= v168 >> 1)
    {
      v208 = sub_1A7CCDA68((v168 > 1), v169 + 1, 1, v208);
    }

    *(v208 + 2) = v169 + 1;
    v170 = &v208[48 * v169];
    *(v170 + 16) = 514;
    v157 &= v157 - 1;
    *(v170 + 5) = v162;
    *(v170 + 6) = v161;
    *(v170 + 7) = v163;
    *(v170 + 8) = v167;
    *(v170 + 9) = MEMORY[0x1E69E7CC0];
    v191[2] = v208;
  }

  while (1)
  {
    v159 = i + 1;
    if (__OFADD__(i, 1))
    {
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
      goto LABEL_162;
    }

    if (v159 >= v158)
    {
      break;
    }

    v157 = *(v154 + 8 * v159);
    ++i;
    if (v157)
    {
      i = v159;
      goto LABEL_144;
    }
  }

  v217 = MEMORY[0x1E69E7CD0];

  i = v199;
LABEL_151:

  v171 = sub_1A7E22040();
  v172 = sub_1A7E228F0();
  if (os_log_type_enabled(v171, v172))
  {
    v173 = swift_slowAlloc();
    v174 = swift_slowAlloc();
    v214[0] = v174;
    *v173 = 136315650;
    *(v173 + 4) = sub_1A7B0CB38(0xD000000000000013, 0x80000001A7EAEB50, v214);
    *(v173 + 12) = 2080;
    v175 = sub_1A7B0CB38(v186, i, v214);

    *(v173 + 14) = v175;
    *(v173 + 22) = 2080;

    v177 = MEMORY[0x1AC561E20](v176, &type metadata for IDSLinkCellularTuple);
    v179 = v178;

    v180 = sub_1A7B0CB38(v177, v179, v214);

    *(v173 + 24) = v180;
    _os_log_impl(&dword_1A7AD9000, v171, v172, "%s TwoWay[%s]: remaining link types after assigning links not matching affinities: %s", v173, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1AC5654B0](v174, -1, -1);
    MEMORY[0x1AC5654B0](v173, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();

  return v208;
}

uint64_t sub_1A7D1D568(uint64_t a1)
{
  result = MEMORY[0x1AC5620A0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_1A7CF0154(&v13, v11, v12);
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

      return v14;
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

uint64_t sub_1A7D1D684(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1A7D25B5C();
  result = MEMORY[0x1AC5620A0](v2, &type metadata for IDSGLTwoWayLinkConnectorPlugin.Allocation, v3);
  v5 = 0;
  v18 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = )
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(a1 + 56) + ((v10 << 11) | (32 * v11));
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 24);
    v16 = *(v12 + 16);

    sub_1A7CF04F4(v17, v13, v14, v16, v15);
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v18;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7D1D7D0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A7CDD0CC(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 48 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 8);
    *a2 = v10;
    *(a2 + 8) = v11;
    v12 = *(v9 + 32);
    *(a2 + 16) = *(v9 + 16);
    *(a2 + 32) = v12;
    result = memmove(v9, (v9 + 48), 48 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1A7D1D874@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v53 = a4;
  v54 = a5;
  v8 = sub_1A7CC7FFC(&qword_1EB2B4A80, &unk_1A7E41910);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v51 - v9;
  v67 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - v13;

  a1[6] = a2;
  a1[7] = a3;
  v52 = a1;
  v16 = a1[2];
  v57 = *(v16 + 16);
  if (v57)
  {
    v17 = 0;
    v56 = v16 + 32;
    v64 = MEMORY[0x1E69E7CC0];
    v55 = v16;
    while (v17 < *(v16 + 16))
    {
      v18 = (v56 + 48 * v17);
      v63 = *v18;
      v19 = v18[1];
      v20 = *(v18 + 2);
      v62 = *(v18 + 1);
      v21 = *(v18 + 3);
      v22 = *(v18 + 4);
      v23 = *(v18 + 5);
      if (v23 >> 62)
      {
        v24 = sub_1A7E22DA0();
      }

      else
      {
        v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v69 = v23;
      v65 = v19;
      if (v24)
      {
        v60 = v21;
        v61 = v20;
        result = type metadata accessor for LinkStateComponent(0);
        if (v24 < 1)
        {
          goto LABEL_42;
        }

        v25 = result;
        v59 = v17;
        v68 = v23 & 0xC000000000000001;

        v58 = v22;

        swift_bridgeObjectRetain_n();
        for (i = 0; i != v24; ++i)
        {
          if (v68)
          {
            v27 = MEMORY[0x1AC562480](i, v23);
          }

          else
          {
            v27 = *(v23 + 8 * i + 32);
          }

          os_unfair_lock_lock((v27 + 40));
          v28 = *(v27 + 48);
          if (*(v28 + 16) && (v29 = sub_1A7CD0DFC(v25), (v30 & 1) != 0))
          {
            sub_1A7B0CD10(*(v28 + 56) + 32 * v29, &v70);
          }

          else
          {
            v70 = 0u;
            v71 = 0u;
          }

          os_unfair_lock_unlock((v27 + 40));
          sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
          v31 = swift_dynamicCast();
          v32 = *(v25 - 8);
          (*(v32 + 56))(v10, v31 ^ 1u, 1, v25);
          if ((*(v32 + 48))(v10, 1, v25))
          {
            sub_1A7CC9970(v10, &qword_1EB2B4A80, &unk_1A7E41910);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            v33 = v66;
            sub_1A7CD0EC4(v10, v66);
            sub_1A7CC9970(v10, &qword_1EB2B4A80, &unk_1A7E41910);
            sub_1A7D25A84(v33, v14, type metadata accessor for LinkState);
          }

          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v34 = sub_1A7E22CF0();
            (*(*(v34 - 8) + 8))(v14, v34);
            os_unfair_lock_lock((v27 + 40));
            v35 = *(v27 + 48);
            if (*(v35 + 16) && (v36 = sub_1A7CD0DFC(&type metadata for IDSObservedRemoteRAT), (v37 & 1) != 0))
            {
              sub_1A7B0CD10(*(v35 + 56) + 32 * v36, &v70);
            }

            else
            {
              v70 = 0u;
              v71 = 0u;
            }

            v23 = v69;
            os_unfair_lock_unlock((v27 + 40));

            if ((swift_dynamicCast() & 1) != 0 && (v73 & 1) == 0)
            {
              v65 = (v72 < 0xB) & (0x601u >> v72);
            }
          }

          else
          {

            sub_1A7CD0E68(v14);
            v23 = v69;
          }
        }

        v38 = v64;
        v17 = v59;
        v21 = v60;
        v20 = v61;
        v39 = v58;
      }

      else
      {

        v39 = v22;
        v38 = v64;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1A7CCDA68(0, *(v38 + 2) + 1, 1, v38);
      }

      v41 = *(v38 + 2);
      v40 = *(v38 + 3);
      if (v41 >= v40 >> 1)
      {
        v64 = sub_1A7CCDA68((v40 > 1), v41 + 1, 1, v38);
      }

      else
      {
        v64 = v38;
      }

      ++v17;
      v42 = v69;

      v43 = v64;
      *(v64 + 2) = v41 + 1;
      v44 = &v43[48 * v41];
      v44[32] = v63;
      v44[33] = v65;
      *(v44 + 5) = v62;
      *(v44 + 6) = v20;
      *(v44 + 7) = v21;
      *(v44 + 8) = v39;
      *(v44 + 9) = v42;
      v16 = v55;
      if (v17 == v57)
      {

        v45 = v64;
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
  }

  else
  {

    v45 = MEMORY[0x1E69E7CC0];
LABEL_40:
    v46 = v52;
    v52[2] = v45;
    result = sub_1A7D1BE04(v46);
    v47 = v54;
    *v54 = result;
    v47[1] = v48;
    v47[2] = v49;
    v47[3] = v50;
  }

  return result;
}

uint64_t sub_1A7D1DEC8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  os_unfair_lock_lock((v3 + 16));
  if (*(v3 + 40) == 1)
  {
    sub_1A7D85A68();
  }

  v5 = sub_1A7CD203C(v4);

  os_unfair_lock_unlock((v3 + 16));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 40;
    do
    {
      v8 = *(v7 - 8);

      v8(a1);

      v7 += 16;
      --v6;
    }

    while (v6);
  }
}

BOOL sub_1A7D1DF94(uint64_t *a1, uint64_t *a2, unsigned __int8 *a3)
{
  v4 = *a1;
  v5 = *a2;
  LinkEngineLink.definition.getter(&v16);
  v6 = v16;
  if (v16)
  {
    v8 = v17;
    v7 = v18;

    sub_1A7CDB84C(v6, v8, v7);
    v16 = v8;
    LODWORD(v7) = LinkEndpoint.isCellular.getter();

    v9 = ~v7 & 1;
  }

  else
  {
    sub_1A7CDB84C(0, v17, v18);
    v9 = 2;
  }

  LinkEngineLink.definition.getter(&v16);
  v10 = v16;
  if (v16)
  {
    v12 = v17;
    v11 = v18;

    sub_1A7CDB84C(v10, v12, v11);
    v16 = v12;
    LOBYTE(v11) = LinkEndpoint.isCellular.getter();

    v13 = (v11 & 1) == 0;
  }

  else
  {
    sub_1A7CDB84C(0, v17, v18);
    v13 = 2;
  }

  v14 = *a3;
  if (v14 == 2 || v9 == v14)
  {
    if (v14 == 2 || v13 == 2 || v13 == v14)
    {
      return v4 < v5;
    }

    return 1;
  }

  if (v13 == v14)
  {
    if (v9 != 2)
    {
      return 0;
    }

    return v4 < v5;
  }

  if (v9 == 2)
  {
    if (v13 == 2)
    {
      return v4 < v5;
    }

    return 1;
  }

  if (v13 == 2)
  {
    return 0;
  }

  return v4 < v5;
}

void sub_1A7D1E11C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  if (!*(*(a1 + 8) + 16))
  {
    if (qword_1EB2B4788 != -1)
    {
      swift_once();
    }

    v18 = sub_1A7E22060();
    sub_1A7B0CB00(v18, qword_1EB2B5AC8);

    v13 = sub_1A7E22040();
    v14 = sub_1A7E228F0();

    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_27;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v48 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_1A7B0CB38(0x6528657461647075, 0xEF293A656E69676ELL, &v48);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_1A7B0CB38(a2, a3, &v48);
    v17 = "%s TwoWay[%s]:     no initial allocation, so will not trigger any new ones.";
    goto LABEL_26;
  }

  if (!*(a4 + 16))
  {
    if (qword_1EB2B4788 != -1)
    {
      swift_once();
    }

    v19 = sub_1A7E22060();
    sub_1A7B0CB00(v19, qword_1EB2B5AC8);

    v13 = sub_1A7E22040();
    v14 = sub_1A7E228F0();

    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_27;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v48 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_1A7B0CB38(0x6528657461647075, 0xEF293A656E69676ELL, &v48);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_1A7B0CB38(a2, a3, &v48);
    v17 = "%s TwoWay[%s]:     no remaining tuples; no allocation needed.";
    goto LABEL_26;
  }

  if (*(a5 + 16))
  {
    if (qword_1EB2B4788 != -1)
    {
      swift_once();
    }

    v12 = sub_1A7E22060();
    sub_1A7B0CB00(v12, qword_1EB2B5AC8);

    v13 = sub_1A7E22040();
    v14 = sub_1A7E228F0();

    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_27;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v48 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_1A7B0CB38(0x6528657461647075, 0xEF293A656E69676ELL, &v48);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_1A7B0CB38(a2, a3, &v48);
    v17 = "%s TwoWay[%s]:     still have allocations we've not allocated; no new allocation needed";
LABEL_26:
    _os_log_impl(&dword_1A7AD9000, v13, v14, v17, v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC5654B0](v16, -1, -1);
    MEMORY[0x1AC5654B0](v15, -1, -1);
LABEL_27:

    *(a1 + 32) = 3;
    return;
  }

  if (*(a6 + 16) >= a7)
  {
    if (qword_1EB2B4788 != -1)
    {
      swift_once();
    }

    v21 = sub_1A7E22060();
    sub_1A7B0CB00(v21, qword_1EB2B5AC8);

    v13 = sub_1A7E22040();
    v14 = sub_1A7E228F0();

    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_27;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v48 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_1A7B0CB38(0x6528657461647075, 0xEF293A656E69676ELL, &v48);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_1A7B0CB38(a2, a3, &v48);
    v17 = "%s TwoWay[%s]:      have used our allocation budget; no new allocation needed";
    goto LABEL_26;
  }

  if (a8)
  {
    if (qword_1EB2B4788 != -1)
    {
      swift_once();
    }

    v20 = sub_1A7E22060();
    sub_1A7B0CB00(v20, qword_1EB2B5AC8);

    v13 = sub_1A7E22040();
    v14 = sub_1A7E228F0();

    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_27;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v48 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_1A7B0CB38(0x6528657461647075, 0xEF293A656E69676ELL, &v48);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_1A7B0CB38(a2, a3, &v48);
    v17 = "%s TwoWay[%s]:      have allocated links but some are not fully connected; not making another allocation until connection done";
    goto LABEL_26;
  }

  if (qword_1EB2B4788 != -1)
  {
    swift_once();
  }

  v22 = sub_1A7E22060();
  sub_1A7B0CB00(v22, qword_1EB2B5AC8);

  v23 = sub_1A7E22040();
  v24 = sub_1A7E228F0();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v48 = v26;
    *v25 = 136315394;
    *(v25 + 4) = sub_1A7B0CB38(0x6528657461647075, 0xEF293A656E69676ELL, &v48);
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_1A7B0CB38(a2, a3, &v48);
    _os_log_impl(&dword_1A7AD9000, v23, v24, "%s TwoWay[%s]:      want another allocation; checking if we've already asked", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC5654B0](v26, -1, -1);
    MEMORY[0x1AC5654B0](v25, -1, -1);
  }

  v27 = *(a4 + 32);
  LODWORD(v28) = *(a4 + 33);
  v29 = *(a1 + 32);
  if (*(a1 + 32) == 3)
  {
    if (v27 != 3)
    {
LABEL_41:
      v44 = v27 | (v28 << 8);

      v37 = sub_1A7E22040();
      v38 = sub_1A7E228F0();

      if (os_log_type_enabled(v37, v38))
      {
        v47 = v28;
        v28 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v48 = v45;
        *v28 = 136315650;
        *(v28 + 4) = sub_1A7B0CB38(0x6528657461647075, 0xEF293A656E69676ELL, &v48);
        *(v28 + 12) = 2080;
        *(v28 + 14) = sub_1A7B0CB38(a2, a3, &v48);
        *(v28 + 22) = 2080;
        v39 = IDSLinkCellularTuple.description.getter();
        v41 = sub_1A7B0CB38(v39, v40, &v48);

        *(v28 + 24) = v41;
        _os_log_impl(&dword_1A7AD9000, v37, v38, "%s TwoWay[%s]:     have remaining tuples and have connected all allocations we've got; need to allocate for tuple %s", v28, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC5654B0](v45, -1, -1);
        v42 = v28;
        LOBYTE(v28) = v47;
        MEMORY[0x1AC5654B0](v42, -1, -1);
      }

      *(a1 + 32) = v44;
      v43 = *(a9 + 184);
      LOBYTE(v48) = v27;
      BYTE1(v48) = v28;
      v43(&v48);
      return;
    }
  }

  else if (v27 == 3 || v27 != v29 || v29 >> 8 != v28)
  {
    goto LABEL_41;
  }

  v30 = sub_1A7E22040();
  v31 = sub_1A7E228F0();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v48 = v33;
    *v32 = 136315650;
    *(v32 + 4) = sub_1A7B0CB38(0x6528657461647075, 0xEF293A656E69676ELL, &v48);
    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_1A7B0CB38(a2, a3, &v48);
    *(v32 + 22) = 2080;
    v34 = IDSLinkCellularTuple.description.getter();
    v36 = sub_1A7B0CB38(v34, v35, &v48);

    *(v32 + 24) = v36;
    _os_log_impl(&dword_1A7AD9000, v30, v31, "%s TwoWay[%s]:     have remaining tuples and have connected all allocations we've got; already asked for allocation for %s, no need to ask again...", v32, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1AC5654B0](v33, -1, -1);
    MEMORY[0x1AC5654B0](v32, -1, -1);
  }
}

void sub_1A7D1EB70(char **a1, uint64_t a2)
{
  v6 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v64 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 40);
  v9 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1A7CCCAA4(0, *(v9 + 2) + 1, 1, v9);
    *a1 = v9;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    v9 = sub_1A7CCCAA4((v11 > 1), v12 + 1, 1, v9);
  }

  *(v9 + 2) = v12 + 1;
  v13 = &v9[16 * v12];
  *(v13 + 4) = 0x3A736B6E694CLL;
  *(v13 + 5) = 0xE600000000000000;
  *a1 = v9;
  v14 = v2[21];
  v15 = v2[22];
  sub_1A7CC9878(v2 + 18, v14);
  v16 = (*(v15 + 8))(v8, v14, v15);
  v17 = v16;
  if (v16 >> 62)
  {
    v56 = v16;
    v18 = sub_1A7E22DA0();
    v17 = v56;
    if (v18)
    {
      goto LABEL_7;
    }

LABEL_38:

    return;
  }

  v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
    goto LABEL_38;
  }

LABEL_7:
  if (v18 >= 1)
  {
    v57 = a1;
    v19 = 0;
    v60 = 0x80000001A7EAEAB0;
    v61 = v17 & 0xC000000000000001;
    v58 = "  RAT: CommandConnected: ";
    v59 = 0x80000001A7EAEAD0;
    v62 = v18;
    v63 = v17;
    while (1)
    {
      if (v61)
      {
        v20 = MEMORY[0x1AC562480](v19);
      }

      else
      {
        v20 = *(v17 + 8 * v19 + 32);
      }

      *&v65 = 8237;
      *(&v65 + 1) = 0xE200000000000000;
      v21 = v64;
      LinkEngineLink.state.getter(v64);
      v22 = LinkState.description.getter();
      MEMORY[0x1AC561C90](v22);

      sub_1A7CD0E68(v21);
      MEMORY[0x1AC561C90](8250, 0xE200000000000000);
      v23 = *(v20 + 16);
      v24 = *(v20 + 24);

      MEMORY[0x1AC561C90](v23, v24);

      v25 = v65;
      v27 = *(v9 + 2);
      v26 = *(v9 + 3);
      if (v27 >= v26 >> 1)
      {
        v9 = sub_1A7CCCAA4((v26 > 1), v27 + 1, 1, v9);
      }

      *(v9 + 2) = v27 + 1;
      *&v9[16 * v27 + 32] = v25;
      *&v65 = 0;
      *(&v65 + 1) = 0xE000000000000000;
      sub_1A7E22B70();

      v71 = 0xD000000000000015;
      v72 = v60;
      LinkEngineLink.definition.getter(&v68);
      v28 = v68;
      if (v68)
      {
        v29 = v70;
        sub_1A7CE07D8(v70, &v65);
        v30 = v67;
        if (v67)
        {
          v32 = *(&v65 + 1);
          v31 = v66;
          v33 = v65;

          sub_1A7D25988(v33, v32, v31, v30);
          sub_1A7CDB84C(v28, v69, v29);
          if (v32)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

        v34 = v69;
        v36 = v28;
        v35 = v29;
      }

      else
      {
        v34 = v69;
        v35 = v70;
        v36 = 0;
      }

      sub_1A7CDB84C(v36, v34, v35);
LABEL_21:

      v32 = 0xE400000000000000;
      v33 = 1701736302;
LABEL_22:
      MEMORY[0x1AC561C90](v33, v32);

      v37 = v71;
      v38 = v72;
      v40 = *(v9 + 2);
      v39 = *(v9 + 3);
      if (v40 >= v39 >> 1)
      {
        v9 = sub_1A7CCCAA4((v39 > 1), v40 + 1, 1, v9);
      }

      *(v9 + 2) = v40 + 1;
      v41 = &v9[16 * v40];
      *(v41 + 4) = v37;
      *(v41 + 5) = v38;
      *&v65 = 0;
      *(&v65 + 1) = 0xE000000000000000;
      sub_1A7E22B70();

      v68 = 0xD000000000000019;
      v69 = v59;
      os_unfair_lock_lock((v20 + 40));
      sub_1A7CCBE5C((v20 + 48), &v65);
      os_unfair_lock_unlock((v20 + 40));
      sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
      if ((swift_dynamicCast() & 1) != 0 && (v71 & 0x100000000) == 0)
      {
        v43 = IDSRadioAccessTechnology.description.getter(v71);
        v42 = v44;
      }

      else
      {
        v42 = 0xE400000000000000;
        v43 = 1701736302;
      }

      MEMORY[0x1AC561C90](v43, v42);

      MEMORY[0x1AC561C90](0xD000000000000012, v58 | 0x8000000000000000);
      LinkEngineLink.definition.getter(&v65);
      v45 = v65;
      if (!v65)
      {
        v46 = v66;
LABEL_32:
        sub_1A7CDB84C(v45, *(&v65 + 1), v46);
        v50 = 0xE400000000000000;
        v48 = 1701736302;
        goto LABEL_33;
      }

      v46 = v66;
      sub_1A7CE072C(v66, &v71);
      if (BYTE4(v71) == 1)
      {
        goto LABEL_32;
      }

      v47 = v71;
      sub_1A7CDB84C(v45, *(&v65 + 1), v46);
      v48 = IDSRadioAccessTechnology.description.getter(v47);
      v50 = v49;
LABEL_33:
      MEMORY[0x1AC561C90](v48, v50);

      v51 = v68;
      v52 = v69;
      v54 = *(v9 + 2);
      v53 = *(v9 + 3);
      if (v54 >= v53 >> 1)
      {
        v9 = sub_1A7CCCAA4((v53 > 1), v54 + 1, 1, v9);
      }

      ++v19;

      *(v9 + 2) = v54 + 1;
      v55 = &v9[16 * v54];
      *(v55 + 4) = v51;
      *(v55 + 5) = v52;
      v17 = v63;
      if (v62 == v19)
      {

        *v57 = v9;
        return;
      }
    }
  }

  __break(1u);
  os_unfair_lock_unlock(v3 + 10);
  __break(1u);
}

void IDSGLTwoWayLinkConnectorPlugin.logState(_:engine:)(unint64_t *a1)
{
  os_unfair_lock_lock((v1 + 40));
  sub_1A7D1F1AC((v1 + 48), a1, v1);

  os_unfair_lock_unlock((v1 + 40));
}

uint64_t sub_1A7D1F1AC(_BYTE *a1, unint64_t *a2, uint64_t a3)
{
  v123 = 0;
  v124 = 0xE000000000000000;
  MEMORY[0x1AC561C90](0x726F697661686542, 0xEA0000000000203ALL);
  v108 = a1;
  LOBYTE(v129) = *a1;
  sub_1A7E22D30();
  v5 = 0;
  v6 = 0xE000000000000000;
  v7 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v120 = a2;
  *a2 = v7;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_2;
  }

LABEL_84:
  v7 = sub_1A7CCCAA4(0, *(v7 + 16) + 1, 1, v7);
  *v120 = v7;
LABEL_2:
  v10 = *(v7 + 16);
  v9 = *(v7 + 24);
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1A7CCCAA4((v9 > 1), v10 + 1, 1, v7);
    *v120 = v7;
  }

  *(v7 + 16) = v10 + 1;
  v11 = v7 + 16 * v10;
  *(v11 + 32) = v5;
  *(v11 + 40) = v6;
  v123 = 0x6F74616974696E49;
  v124 = 0xEB00000000203A72;
  if (*(a3 + 200))
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (*(a3 + 200))
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x1AC561C90](v12, v13);

  v14 = v123;
  v15 = v124;
  v16 = *v120;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  *v120 = v16;
  if ((v17 & 1) == 0)
  {
    v16 = sub_1A7CCCAA4(0, *(v16 + 2) + 1, 1, v16);
    *v120 = v16;
  }

  v19 = *(v16 + 2);
  v18 = *(v16 + 3);
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1A7CCCAA4((v18 > 1), v19 + 1, 1, v16);
    *v120 = v16;
  }

  *(v16 + 2) = v19 + 1;
  v20 = &v16[16 * v19];
  *(v20 + 4) = v14;
  *(v20 + 5) = v15;
  v123 = 0;
  v124 = 0xE000000000000000;
  sub_1A7E22B70();

  v123 = 0xD000000000000014;
  v124 = 0x80000001A7EAEA70;
  v21 = MEMORY[0x1AC561E20](*(v108 + 5), &type metadata for IDSLinkCellularTuple);
  MEMORY[0x1AC561C90](v21);

  v22 = v123;
  v23 = v124;
  v24 = *v120;
  v25 = swift_isUniquelyReferenced_nonNull_native();
  *v120 = v24;
  if ((v25 & 1) == 0)
  {
    v24 = sub_1A7CCCAA4(0, *(v24 + 2) + 1, 1, v24);
    *v120 = v24;
  }

  v27 = *(v24 + 2);
  v26 = *(v24 + 3);
  if (v27 >= v26 >> 1)
  {
    v24 = sub_1A7CCCAA4((v26 > 1), v27 + 1, 1, v24);
    *v120 = v24;
  }

  *(v24 + 2) = v27 + 1;
  v28 = &v24[16 * v27];
  *(v28 + 4) = v22;
  *(v28 + 5) = v23;
  v123 = 0;
  v124 = 0xE000000000000000;
  sub_1A7E22B70();

  v123 = 0xD000000000000014;
  v124 = 0x80000001A7EAEA90;
  if (*(v108 + 16) == 3)
  {
    v29 = 0xE400000000000000;
    v30 = 1701736302;
  }

  else
  {
    LOWORD(v129) = *(v108 + 16);
    v30 = IDSLinkCellularTuple.description.getter();
    v29 = v31;
  }

  MEMORY[0x1AC561C90](v30, v29);

  v32 = v123;
  v33 = v124;
  v34 = *v120;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  *v120 = v34;
  if ((v35 & 1) == 0)
  {
    v34 = sub_1A7CCCAA4(0, *(v34 + 2) + 1, 1, v34);
    *v120 = v34;
  }

  v37 = *(v34 + 2);
  v36 = *(v34 + 3);
  if (v37 >= v36 >> 1)
  {
    v34 = sub_1A7CCCAA4((v36 > 1), v37 + 1, 1, v34);
    *v120 = v34;
  }

  *(v34 + 2) = v37 + 1;
  v38 = &v34[16 * v37];
  *(v38 + 4) = v32;
  *(v38 + 5) = v33;
  v39 = *v120;
  v41 = *(*v120 + 16);
  v40 = *(*v120 + 24);
  if (v41 >= v40 >> 1)
  {
    v39 = sub_1A7CCCAA4((v40 > 1), v41 + 1, 1, v39);
    *v120 = v39;
  }

  *(v39 + 2) = v41 + 1;
  v42 = &v39[16 * v41];
  *(v42 + 4) = 0;
  *(v42 + 5) = 0xE000000000000000;
  v43 = *v120;
  v45 = *(*v120 + 16);
  v44 = *(*v120 + 24);
  if (v45 >= v44 >> 1)
  {
    v43 = sub_1A7CCCAA4((v44 > 1), v45 + 1, 1, v43);
    *v120 = v43;
  }

  *(v43 + 2) = v45 + 1;
  v46 = &v43[16 * v45];
  strcpy(v46 + 32, "Allocations:");
  v46[45] = 0;
  *(v46 + 23) = -5120;
  v47 = *(v108 + 1);
  v50 = *(v47 + 64);
  v49 = v47 + 64;
  v48 = v50;
  v51 = 1 << *(*(v108 + 1) + 32);
  v52 = -1;
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  v7 = v52 & v48;
  v53 = (v51 + 63) >> 6;
  v114 = *(v108 + 1);

  v6 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  v110 = v53;
  for (i = v49; v7; v49 = i)
  {
LABEL_36:
    v55 = *(v114 + 56) + ((v6 << 11) | (32 * __clz(__rbit64(v7))));
    v57 = *v55;
    v56 = *(v55 + 8);
    v119 = *(v55 + 16);
    v117 = *(v55 + 17);
    v58 = *(v55 + 24);
    v121 = v7;
    v123 = 8237;
    v124 = 0xE200000000000000;
    swift_bridgeObjectRetain_n();

    MEMORY[0x1AC561C90](v57, v56);

    v59 = v123;
    v115 = v124;
    v60 = *v120;
    v61 = swift_isUniquelyReferenced_nonNull_native();
    *v120 = v60;
    if ((v61 & 1) == 0)
    {
      v60 = sub_1A7CCCAA4(0, *(v60 + 2) + 1, 1, v60);
      *v120 = v60;
    }

    v63 = *(v60 + 2);
    v62 = *(v60 + 3);
    if (v63 >= v62 >> 1)
    {
      v60 = sub_1A7CCCAA4((v62 > 1), v63 + 1, 1, v60);
      *v120 = v60;
    }

    *(v60 + 2) = v63 + 1;
    v64 = &v60[16 * v63];
    *(v64 + 4) = v59;
    *(v64 + 5) = v115;
    v129 = v5;
    v123 = v57;
    v124 = v56;
    LOBYTE(v125) = v119;
    BYTE1(v125) = v117;
    v126 = v58;
    sub_1A7D25748(&v129, &v123);

    v65 = v129;
    v66 = *(v129 + 2);
    if (v66)
    {
      v131 = v5;
      sub_1A7CCE918(0, v66, 0);
      v67 = v131;
      v68 = (v65 + 40);
      do
      {
        v70 = *(v68 - 1);
        v69 = *v68;
        v123 = 538976288;
        v124 = 0xE400000000000000;

        MEMORY[0x1AC561C90](v70, v69);

        v72 = v123;
        v71 = v124;
        v131 = v67;
        v74 = *(v67 + 16);
        v73 = *(v67 + 24);
        if (v74 >= v73 >> 1)
        {
          sub_1A7CCE918((v73 > 1), v74 + 1, 1);
          v67 = v131;
        }

        *(v67 + 16) = v74 + 1;
        v75 = v67 + 16 * v74;
        *(v75 + 32) = v72;
        *(v75 + 40) = v71;
        v68 += 2;
        --v66;
      }

      while (v66);
    }

    else
    {
      v67 = v5;
    }

    sub_1A7DDEE7C(v67);

    v76 = *v120;
    v77 = swift_isUniquelyReferenced_nonNull_native();
    *v120 = v76;
    if ((v77 & 1) == 0)
    {
      v76 = sub_1A7CCCAA4(0, *(v76 + 2) + 1, 1, v76);
      *v120 = v76;
    }

    v79 = *(v76 + 2);
    v78 = *(v76 + 3);
    if (v79 >= v78 >> 1)
    {
      v76 = sub_1A7CCCAA4((v78 > 1), v79 + 1, 1, v76);
      *v120 = v76;
    }

    v7 = (v121 - 1) & v121;
    *(v76 + 2) = v79 + 1;
    v80 = &v76[16 * v79];
    *(v80 + 4) = 0;
    *(v80 + 5) = 0xE000000000000000;
    v5 = MEMORY[0x1E69E7CC0];
    v53 = v110;
  }

  while (1)
  {
    v54 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_84;
    }

    if (v54 >= v53)
    {
      break;
    }

    v7 = *(v49 + 8 * v54);
    ++v6;
    if (v7)
    {
      v6 = v54;
      goto LABEL_36;
    }
  }

  v82 = *(v108 + 2);
  v83 = *(v82 + 16);
  if (v83)
  {
    v84 = (v82 + 40);
    do
    {
      v118 = v83;
      v85 = *(v84 - 8);
      v86 = *(v84 - 7);
      v87 = v84[1];
      v88 = v84[2];
      v89 = v84[3];
      v111 = v84[4];
      v122 = *v84;
      v123 = 8237;
      v124 = 0xE200000000000000;
      v129 = 0;
      v130 = 0xE000000000000000;
      if (v85 == 1)
      {
        v90 = 0x6C6C65436E6F4ELL;
      }

      else
      {
        v90 = 7958081;
      }

      v91 = 0xE700000000000000;
      if (v85 != 1)
      {
        v91 = 0xE300000000000000;
      }

      v113 = v85;
      if (v85)
      {
        v92 = v90;
      }

      else
      {
        v92 = 1819043139;
      }

      if (v85)
      {
        v93 = v91;
      }

      else
      {
        v93 = 0xE400000000000000;
      }

      v116 = v88;

      MEMORY[0x1AC561C90](v92, v93);

      MEMORY[0x1AC561C90](45, 0xE100000000000000);
      if (v86 == 1)
      {
        v94 = 0x6C6C65436E6F4ELL;
      }

      else
      {
        v94 = 7958081;
      }

      v95 = 0xE700000000000000;
      if (v86 != 1)
      {
        v95 = 0xE300000000000000;
      }

      if (v86)
      {
        v96 = v94;
      }

      else
      {
        v96 = 1819043139;
      }

      if (v86)
      {
        v97 = v95;
      }

      else
      {
        v97 = 0xE400000000000000;
      }

      MEMORY[0x1AC561C90](v96, v97);

      MEMORY[0x1AC561C90](v129, v130);

      MEMORY[0x1AC561C90](8250, 0xE200000000000000);

      MEMORY[0x1AC561C90](v122, v87);

      v98 = v123;
      v99 = v124;
      v100 = *v120;
      v101 = swift_isUniquelyReferenced_nonNull_native();
      *v120 = v100;
      if ((v101 & 1) == 0)
      {
        v100 = sub_1A7CCCAA4(0, *(v100 + 2) + 1, 1, v100);
        *v120 = v100;
      }

      v103 = *(v100 + 2);
      v102 = *(v100 + 3);
      v104 = v86;
      if (v103 >= v102 >> 1)
      {
        v107 = sub_1A7CCCAA4((v102 > 1), v103 + 1, 1, v100);
        v104 = v86;
        v100 = v107;
        *v120 = v107;
      }

      *(v100 + 2) = v103 + 1;
      v105 = &v100[16 * v103];
      *(v105 + 4) = v98;
      *(v105 + 5) = v99;
      v129 = MEMORY[0x1E69E7CC0];
      LOBYTE(v123) = v113;
      BYTE1(v123) = v104;
      v124 = v122;
      v125 = v87;
      v126 = v116;
      v127 = v89;
      v128 = v111;
      sub_1A7D1EB70(&v129, &v123);
      v123 = v129;
      v106._countAndFlagsBits = 538976288;
      v106._object = 0xE400000000000000;
      LinkEngineStateLog.log(_:indentation:)(&v123, v106);

      v84 += 6;
      v83 = v118 - 1;
    }

    while (v118 != 1);
  }

  return result;
}

uint64_t sub_1A7D1FC58@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = *result;
    v6 = *(result + 24);
    v7 = *(result + 16);
    v8 = *(v6 + 16);
    if (v8)
    {
      v16 = MEMORY[0x1E69E7CC0];

      sub_1A7CCE918(0, v8, 0);
      v4 = v16;
      v9 = v6 + 32;
      do
      {
        result = LinkEndpoint.uniqueID.getter();
        v17 = v4;
        v12 = *(v4 + 16);
        v11 = *(v4 + 24);
        if (v12 >= v11 >> 1)
        {
          v15 = result;
          v14 = v10;
          sub_1A7CCE918((v11 > 1), v12 + 1, 1);
          v10 = v14;
          result = v15;
          v4 = v17;
        }

        *(v4 + 16) = v12 + 1;
        v13 = v4 + 16 * v12;
        *(v13 + 32) = result;
        *(v13 + 40) = v10;
        v9 += 8;
        --v8;
      }

      while (v8);
    }

    else
    {
    }
  }

  else
  {
    v7 = 2;
    v3 = 0xE300000000000000;
    v5 = 7104878;
  }

  *a2 = v5;
  *(a2 + 8) = v3;
  *(a2 + 16) = v7;
  *(a2 + 24) = v4;
  return result;
}

uint64_t sub_1A7D1FD88@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = v3;
  v78 = a3;
  v7 = sub_1A7CC7FFC(&qword_1EB2B4A80, &unk_1A7E41910);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v88 = &v71 - v8;
  v80 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v71 - v11;
  v13 = type metadata accessor for LEToolLink(0);
  v86 = *(v13 - 8);
  v87 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v76 = a1[1];
  v77 = v16;
  v17 = *(a1 + 5);
  if (*(a2 + 16) && (v18 = sub_1A7CD1248(*(a1 + 1), *(a1 + 2)), (v19 & 1) != 0))
  {
    v20 = *(a2 + 56) + 32 * v18;
    v21 = *v20;
    v22 = *(v20 + 8);
    v23 = *(v20 + 24);
    v24 = *(v20 + 16);
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v24 = 0;
    v23 = 0;
  }

  *&v123 = v21;
  *(&v123 + 1) = v22;
  *&v124 = v24;
  *(&v124 + 1) = v23;
  sub_1A7D1FC58(&v123, v142);
  sub_1A7D21920(v21, v22);
  v25 = v142[0];
  v26 = v142[1];
  v73 = v143;
  v72 = v144;
  v27 = v4[21];
  v28 = v4[22];
  sub_1A7CC9878(v4 + 18, v27);
  v29 = (*(v28 + 8))(v17, v27, v28);
  v30 = v29;
  v74 = v26;
  v75 = v25;
  if (v29 >> 62)
  {
    v31 = sub_1A7E22DA0();
    if (v31)
    {
      goto LABEL_7;
    }

LABEL_38:

    v33 = MEMORY[0x1E69E7CC0];
LABEL_39:
    v68 = v78;
    v69 = v76;
    *v78 = v77;
    v68[1] = v69;
    v70 = v74;
    *(v68 + 1) = v75;
    *(v68 + 2) = v70;
    v68[24] = v73;
    *(v68 + 4) = v72;
    *(v68 + 5) = v33;
    return result;
  }

  v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v31)
  {
    goto LABEL_38;
  }

LABEL_7:
  v141 = MEMORY[0x1E69E7CC0];
  result = sub_1A7CCEB90(0, v31 & ~(v31 >> 63), 0);
  if ((v31 & 0x8000000000000000) == 0)
  {
    v33 = v141;
    v34 = 0;
    v89 = type metadata accessor for LinkStateComponent(0);
    v82 = v89 - 8;
    v83 = v30 & 0xC000000000000001;
    v81 = v31 - 1;
    v84 = v30;
    v85 = v12;
    if ((v30 & 0xC000000000000001) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v35 = MEMORY[0x1AC562480](v34, v30);
    while (1)
    {
      v37 = *(v35 + 16);
      v36 = *(v35 + 24);

      os_unfair_lock_lock((v35 + 40));
      v38 = *(v35 + 48);
      if (*(v38 + 16) && (v39 = sub_1A7CD0DFC(&type metadata for LinkDefinitionComponent), (v40 & 1) != 0))
      {
        sub_1A7B0CD10(*(v38 + 56) + 32 * v39, v137);
      }

      else
      {
        memset(v137, 0, sizeof(v137));
      }

      v90 = v37;
      v91 = v36;
      v41 = v34;
      os_unfair_lock_unlock((v35 + 40));
      sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v43 = v138;
      v42 = v139;
      v44 = v140;
      if (v138 == 1)
      {
        goto LABEL_22;
      }

      sub_1A7CDB7B8(v138, v139, v140);
      sub_1A7CDBC48(v43, v42, v44);
      if (!v43)
      {
        goto LABEL_23;
      }

      v106[2] = v42;
      LinkEndpoint.toolRepresentation.getter(&v114);
      v106[1] = v44;
      LinkEndpoint.toolRepresentation.getter(v121);
      sub_1A7CE0528(v43, v106);
      v45 = v106[0];
      sub_1A7CDB84C(v43, v42, v44);
      v46 = MEMORY[0x1E69E7CC0];
      if (v45)
      {
        v46 = v45;
      }

      v111 = v118;
      v112 = v119;
      LOWORD(v113[0]) = v120;
      v107 = v114;
      v108 = v115;
      v109 = v116;
      v110 = v117;
      *(v113 + 8) = v121[0];
      *(&v113[1] + 8) = v121[1];
      *(&v113[2] + 8) = v121[2];
      WORD4(v113[6]) = v122;
      *(&v113[5] + 8) = v121[5];
      *(&v113[4] + 8) = v121[4];
      *(&v113[3] + 8) = v121[3];
      v94 = v116;
      v95 = v117;
      v92 = v114;
      v93 = v115;
      v98 = v113[0];
      v99 = v113[1];
      v96 = v118;
      v97 = v119;
      v103 = v113[5];
      v104 = v113[6];
      v101 = v113[3];
      v102 = v113[4];
      v100 = v113[2];
      v105 = v46;
      nullsub_15();
      v133 = v102;
      v134 = v103;
      v135 = v104;
      v136 = v105;
      v129 = v98;
      v130 = v99;
      v131 = v100;
      v132 = v101;
      v125 = v94;
      v126 = v95;
      v127 = v96;
      v128 = v97;
      v123 = v92;
      v124 = v93;
LABEL_24:
      v47 = v88;
      v48 = v41;
      v50 = v90;
      v49 = v91;
      os_unfair_lock_lock((v35 + 40));
      v51 = *(v35 + 48);
      if (*(v51 + 16) && (v52 = sub_1A7CD0DFC(v89), (v53 & 1) != 0))
      {
        sub_1A7B0CD10(*(v51 + 56) + 32 * v52, &v92);
      }

      else
      {
        v92 = 0u;
        v93 = 0u;
      }

      os_unfair_lock_unlock((v35 + 40));

      v54 = v89;
      v55 = swift_dynamicCast();
      v56 = *(v54 - 8);
      (*(v56 + 56))(v47, v55 ^ 1u, 1, v54);
      if ((*(v56 + 48))(v47, 1, v54))
      {
        sub_1A7CC9970(v47, &qword_1EB2B4A80, &unk_1A7E41910);
        v57 = v85;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v58 = v79;
        sub_1A7CD0EC4(v47, v79);
        sub_1A7CC9970(v47, &qword_1EB2B4A80, &unk_1A7E41910);
        v59 = v58;
        v57 = v85;
        sub_1A7D25A84(v59, v85, type metadata accessor for LinkState);
      }

      *v15 = v50;
      *(v15 + 1) = v49;
      v60 = v134;
      *(v15 + 11) = v133;
      *(v15 + 12) = v60;
      *(v15 + 13) = v135;
      *(v15 + 28) = v136;
      v61 = v130;
      *(v15 + 7) = v129;
      *(v15 + 8) = v61;
      v62 = v132;
      *(v15 + 9) = v131;
      *(v15 + 10) = v62;
      v63 = v126;
      *(v15 + 3) = v125;
      *(v15 + 4) = v63;
      v64 = v128;
      *(v15 + 5) = v127;
      *(v15 + 6) = v64;
      v65 = v124;
      *(v15 + 1) = v123;
      *(v15 + 2) = v65;
      sub_1A7D25A84(v57, &v15[*(v87 + 24)], type metadata accessor for LinkState);
      v141 = v33;
      v67 = *(v33 + 16);
      v66 = *(v33 + 24);
      if (v67 >= v66 >> 1)
      {
        sub_1A7CCEB90((v66 > 1), v67 + 1, 1);
        v33 = v141;
      }

      *(v33 + 16) = v67 + 1;
      sub_1A7D25A84(v15, v33 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v67, type metadata accessor for LEToolLink);
      if (v81 == v48)
      {

        goto LABEL_39;
      }

      v34 = v48 + 1;
      v30 = v84;
      if (v83)
      {
        goto LABEL_9;
      }

LABEL_10:
      v35 = *(v30 + 8 * v34 + 32);
    }

    v44 = 0;
    v42 = 0;
    v138 = 1;
    v139 = 0;
    v140 = 0;
LABEL_22:
    sub_1A7CDBC48(1, v42, v44);
LABEL_23:
    sub_1A7D21964(&v123);
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7D20568@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = *(a2 + 200);

  v9 = sub_1A7DF29D0(v8);

  v11 = sub_1A7DF2D00(v10, a2, a1);

  v12 = *(a1 + 5);
  v13 = 256;
  if (!v7)
  {
    v13 = 0;
  }

  v14 = *(a1 + 16) | 0x8000000000000000;
  *a3 = v13 | v6;
  a3[1] = v9;
  a3[2] = v11;
  a3[3] = v14;
  a3[4] = v12;
}

void *IDSGLTwoWayLinkConnectorPlugin.deinit()
{

  sub_1A7D21440(v0 + 48);

  sub_1A7B0CD6C((v0 + 144));

  return v0;
}

uint64_t IDSGLTwoWayLinkConnectorPlugin.__deallocating_deinit()
{

  sub_1A7D21440(v0 + 48);

  sub_1A7B0CD6C((v0 + 144));

  return swift_deallocClassInstance();
}

uint64_t sub_1A7D206FC()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_1A7D2072C(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1A7D25CDC;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = &unk_1A7E473A8;
  *(v4 + 24) = v3;

  sub_1A7D212B4(v5, &unk_1A7E473B0, v4, v2);
}

void sub_1A7D207F4(unint64_t *a1)
{
  v3 = *v1;
  os_unfair_lock_lock((v3 + 40));
  sub_1A7D1F1AC((v3 + 48), a1, v3);

  os_unfair_lock_unlock((v3 + 40));
}

uint64_t sub_1A7D20858(char *__src, char *a2, char *a3, uint64_t *__dst, unsigned __int8 *a5)
{
  v50 = a5;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 15;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 4;
  v11 = a3;
  v12 = a3 - a2;
  v13 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 4;
  if (v10 < v13 >> 4)
  {
    v15 = __dst;
    if (__dst != __src || &__src[16 * v10] <= __dst)
    {
      memmove(__dst, __src, 16 * v10);
    }

    v16 = &v15[2 * v10];
    if (v8 < 16 || v6 >= v11)
    {
LABEL_21:
      v24 = v7;
      goto LABEL_52;
    }

    v17 = v11;
    while (1)
    {
      v18 = v6[1];
      v48 = *v6;
      v49 = v18;
      v19 = v15[1];
      v46 = *v15;
      v47 = v19;

      v20 = sub_1A7D1DF94(&v48, &v46, v50);
      if (v5)
      {

        v35 = v16 - v15 + 15;
        if (v16 - v15 >= 0)
        {
          v35 = v16 - v15;
        }

        if (v7 < v15 || v7 >= v15 + (v35 & 0xFFFFFFFFFFFFFFF0) || v7 != v15)
        {
          v36 = 16 * (v35 >> 4);
          v24 = v7;
          goto LABEL_58;
        }

        goto LABEL_60;
      }

      v21 = v20;

      if (!v21)
      {
        break;
      }

      v22 = v6;
      v23 = v7 == v6;
      v6 += 2;
      if (!v23)
      {
        goto LABEL_18;
      }

LABEL_19:
      v7 += 16;
      if (v15 >= v16 || v6 >= v17)
      {
        goto LABEL_21;
      }
    }

    v22 = v15;
    v23 = v7 == v15;
    v15 += 2;
    if (v23)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v7 = *v22;
    goto LABEL_19;
  }

  if (__dst != a2 || &a2[16 * v14] <= __dst)
  {
    v25 = __dst;
    memmove(__dst, a2, 16 * v14);
    __dst = v25;
  }

  __srca = __dst;
  v16 = &__dst[2 * v14];
  if (v12 < 16 || v6 <= v7)
  {
    v24 = v6;
    v15 = __dst;
    goto LABEL_52;
  }

LABEL_27:
  v26 = 0;
  v27 = v16;
  v43 = (v6 - 2);
  v44 = v11;
  while (1)
  {
    v28 = v27;
    v29 = &v27[v26];
    v30 = &v27[v26 - 2];
    v31 = v27[v26 - 1];
    v48 = *v30;
    v49 = v31;
    v32 = *(v6 - 1);
    v46 = *(v6 - 2);
    v47 = v32;

    v33 = sub_1A7D1DF94(&v48, &v46, v50);
    if (v5)
    {
      break;
    }

    v34 = v33;

    if (v34)
    {
      v24 = v6 - 2;
      v11 = &v44[v26 * 8 - 16];
      if (&v44[v26 * 8] != v6)
      {
        *v11 = *v43;
      }

      v16 = &v28[v26];
      v15 = __srca;
      if (&v28[v26] <= __srca || (v6 -= 2, v43 <= v7))
      {
        v16 = &v28[v26];
        goto LABEL_52;
      }

      goto LABEL_27;
    }

    v27 = v28;
    if (&v44[v26 * 8] != v29)
    {
      *&v44[v26 * 8 - 16] = *v30;
    }

    v26 -= 2;
    v16 = &v28[v26];
    v15 = __srca;
    if (&v28[v26] <= __srca)
    {
      v24 = v6;
LABEL_52:
      v41 = v16 - v15 + 15;
      if (v16 - v15 >= 0)
      {
        v41 = v16 - v15;
      }

      if (v24 >= v15 && v24 < (v15 + (v41 & 0xFFFFFFFFFFFFFFF0)) && v24 == v15)
      {
        goto LABEL_60;
      }

      v36 = 16 * (v41 >> 4);
LABEL_58:
      v37 = v15;
LABEL_59:
      memmove(v24, v37, v36);
      goto LABEL_60;
    }
  }

  v37 = __srca;
  v38 = v28 - __srca + v26 * 8;
  v39 = v38 + 15;
  if (v38 >= 0)
  {
    v39 = v28 - __srca + v26 * 8;
  }

  v40 = v39 >> 4;
  if (v6 < __srca || v6 >= (__srca + (v39 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, __srca, 16 * v40);
    goto LABEL_60;
  }

  if (v6 != __srca)
  {
    v36 = 16 * v40;
    v24 = v6;
    goto LABEL_59;
  }

LABEL_60:
  sub_1A7D25A4C(v50);
  return 1;
}

unint64_t sub_1A7D20C18(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = (MEMORY[0x1E69E7CC0] + 32);
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    v27 = v1 & 0xC000000000000001;
    v28 = v1;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        result = MEMORY[0x1AC562480](v4, v1);
        v9 = result;
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v8 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          result = sub_1A7E22DA0();
          v2 = result;
          goto LABEL_3;
        }

        v9 = *(v1 + 8 * v4 + 32);

        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }
      }

      if (!v5)
      {
        v11 = v3[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v12 = v2;
        v13 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        sub_1A7CC7FFC(&qword_1EB2B4CA0, &unk_1A7E41BF0);
        v15 = swift_allocObject();
        v16 = j__malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 17;
        }

        v18 = v17 >> 4;
        v15[2] = v14;
        v15[3] = 2 * (v17 >> 4);
        v19 = (v15 + 4);
        v20 = v3[3] >> 1;
        if (v3[2])
        {
          v21 = v3 + 4;
          if (v15 != v3 || v19 >= v21 + 16 * v20)
          {
            memmove(v15 + 4, v21, 16 * v20);
          }

          v3[2] = 0;
        }

        v7 = (v19 + 16 * v20);
        v5 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v3 = v15;
        v2 = v12;
        v6 = v27;
        v1 = v28;
        v8 = v26;
      }

      v22 = __OFSUB__(v5--, 1);
      if (v22)
      {
        goto LABEL_33;
      }

      *v7 = v4;
      v7[1] = v9;
      v7 += 2;
      ++v4;
      if (v10 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  v5 = 0;
LABEL_28:
  v23 = v3[3];
  if (v23 < 2)
  {
    return v3;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v5);
  v25 = v24 - v5;
  if (!v22)
  {
    v3[2] = v25;
    return v3;
  }

  __break(1u);
  return result;
}

void sub_1A7D20E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock((a4 + 16));
  swift_unknownObjectWeakInit();
  v14[0] = a1;
  v14[2] = &off_1F1AAC820;
  swift_unknownObjectWeakAssign();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13[0] = *(a4 + 24);
  *(a4 + 24) = 0x8000000000000000;
  sub_1A7DC3AF8(a2, a3, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], v14, isUniquelyReferenced_nonNull_native);
  sub_1A7CC9970(v14, &qword_1EB2B4AE8, &qword_1A7E43370);
  *(a4 + 24) = v13[0];

  *(a4 + 40) = 1;
  os_unfair_lock_unlock((a4 + 16));
  os_unfair_lock_lock((a4 + 16));
  v9 = *(a4 + 48);
  v10 = *(a4 + 56);
  if (v9)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    v12 = sub_1A7D21854;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  sub_1A7B151B0(v9, v10);
  os_unfair_lock_unlock((a4 + 16));
  if (v9)
  {
    v14[0] = a2;
    v14[1] = a3;
    v13[0] = a1;
    v13[1] = &off_1F1AAC820;
    (v12)(v13, v14);
    sub_1A7B15088(v12, v11);
  }
}

void sub_1A7D20F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock((a4 + 16));
  swift_unknownObjectWeakInit();
  v14[0] = a1;
  v14[2] = &off_1F1AADFE0;
  swift_unknownObjectWeakAssign();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13[0] = *(a4 + 24);
  *(a4 + 24) = 0x8000000000000000;
  sub_1A7DC3AF8(a2, a3, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], v14, isUniquelyReferenced_nonNull_native);
  sub_1A7CC9970(v14, &qword_1EB2B4AE8, &qword_1A7E43370);
  *(a4 + 24) = v13[0];
  *(a4 + 40) = 1;
  os_unfair_lock_unlock((a4 + 16));
  os_unfair_lock_lock((a4 + 16));
  v9 = *(a4 + 48);
  v10 = *(a4 + 56);
  if (v9)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    v12 = sub_1A7D25CD4;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  sub_1A7B151B0(v9, v10);
  os_unfair_lock_unlock((a4 + 16));
  if (v9)
  {
    v14[0] = a2;
    v14[1] = a3;
    v13[0] = a1;
    v13[1] = &off_1F1AADFE0;
    (v12)(v13, v14);
    sub_1A7B15088(v12, v11);
  }
}

void sub_1A7D21128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock((a4 + 16));
  swift_unknownObjectWeakInit();
  v14[0] = a1;
  v14[2] = &off_1F1AB0808;
  swift_unknownObjectWeakAssign();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13[0] = *(a4 + 24);
  *(a4 + 24) = 0x8000000000000000;
  sub_1A7DC3AF8(a2, a3, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], v14, isUniquelyReferenced_nonNull_native);
  sub_1A7CC9970(v14, &qword_1EB2B4AE8, &qword_1A7E43370);
  *(a4 + 24) = v13[0];
  *(a4 + 40) = 1;
  os_unfair_lock_unlock((a4 + 16));
  os_unfair_lock_lock((a4 + 16));
  v9 = *(a4 + 48);
  v10 = *(a4 + 56);
  if (v9)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    v12 = sub_1A7D25CD4;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  sub_1A7B151B0(v9, v10);
  os_unfair_lock_unlock((a4 + 16));
  if (v9)
  {
    v14[0] = a2;
    v14[1] = a3;
    v13[0] = a1;
    v13[1] = &off_1F1AB0808;
    (v12)(v13, v14);
    sub_1A7B15088(v12, v11);
  }
}

void sub_1A7D212B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock((a4 + 16));
  swift_unknownObjectWeakInit();
  v14[0] = a1;
  v14[2] = &protocol witness table for IDSGLTwoWayLinkConnectorPlugin;
  swift_unknownObjectWeakAssign();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13[0] = *(a4 + 24);
  *(a4 + 24) = 0x8000000000000000;
  sub_1A7DC3AF8(a2, a3, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], v14, isUniquelyReferenced_nonNull_native);
  sub_1A7CC9970(v14, &qword_1EB2B4AE8, &qword_1A7E43370);
  *(a4 + 24) = v13[0];
  *(a4 + 40) = 1;
  os_unfair_lock_unlock((a4 + 16));
  os_unfair_lock_lock((a4 + 16));
  v9 = *(a4 + 48);
  v10 = *(a4 + 56);
  if (v9)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    v12 = sub_1A7D25CD4;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  sub_1A7B151B0(v9, v10);
  os_unfair_lock_unlock((a4 + 16));
  if (v9)
  {
    v14[0] = a2;
    v14[1] = a3;
    v13[0] = a1;
    v13[1] = &protocol witness table for IDSGLTwoWayLinkConnectorPlugin;
    (v12)(v13, v14);
    sub_1A7B15088(v12, v11);
  }
}

unint64_t sub_1A7D21474()
{
  result = qword_1EB2B5B28;
  if (!qword_1EB2B5B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5B28);
  }

  return result;
}

uint64_t sub_1A7D21514(uint64_t a1, int a2)
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

uint64_t sub_1A7D2155C(uint64_t result, int a2, int a3)
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

unint64_t sub_1A7D215F0()
{
  result = qword_1EB2B5B38;
  if (!qword_1EB2B5B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5B38);
  }

  return result;
}

unint64_t sub_1A7D21648()
{
  result = qword_1EB2B5B40;
  if (!qword_1EB2B5B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5B40);
  }

  return result;
}

unint64_t sub_1A7D216A0()
{
  result = qword_1EB2B5B48;
  if (!qword_1EB2B5B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5B48);
  }

  return result;
}

unint64_t sub_1A7D216F8()
{
  result = qword_1EB2B5B50;
  if (!qword_1EB2B5B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5B50);
  }

  return result;
}

unint64_t sub_1A7D21750()
{
  result = qword_1EB2B5B58;
  if (!qword_1EB2B5B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5B58);
  }

  return result;
}

unint64_t sub_1A7D217A8()
{
  result = qword_1EB2B5B60;
  if (!qword_1EB2B5B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5B60);
  }

  return result;
}

unint64_t sub_1A7D21800()
{
  result = qword_1EB2B5B68;
  if (!qword_1EB2B5B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5B68);
  }

  return result;
}

uint64_t sub_1A7D21858(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A7CD22FC;

  return sub_1A7D193A4(a1, a2, v6);
}

uint64_t sub_1A7D21920(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

double sub_1A7D21964(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  return result;
}

void sub_1A7D219A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock((a4 + 16));
  swift_unknownObjectWeakInit();
  v14[0] = a1;
  v14[2] = &protocol witness table for IDSConnectRelayLinksByInterfaceTypePlugin;
  swift_unknownObjectWeakAssign();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13[0] = *(a4 + 24);
  *(a4 + 24) = 0x8000000000000000;
  sub_1A7DC3AF8(a2, a3, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], v14, isUniquelyReferenced_nonNull_native);
  sub_1A7CC9970(v14, &qword_1EB2B4AE8, &qword_1A7E43370);
  *(a4 + 24) = v13[0];
  *(a4 + 40) = 1;
  os_unfair_lock_unlock((a4 + 16));
  os_unfair_lock_lock((a4 + 16));
  v9 = *(a4 + 48);
  v10 = *(a4 + 56);
  if (v9)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    v12 = sub_1A7D25CD4;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  sub_1A7B151B0(v9, v10);
  os_unfair_lock_unlock((a4 + 16));
  if (v9)
  {
    v14[0] = a2;
    v14[1] = a3;
    v13[0] = a1;
    v13[1] = &protocol witness table for IDSConnectRelayLinksByInterfaceTypePlugin;
    (v12)(v13, v14);
    sub_1A7B15088(v12, v11);
  }
}

uint64_t sub_1A7D21B34(uint64_t a1, void (**a2)(void, void), uint64_t a3, unint64_t a4, char a5, uint64_t a6, unint64_t a7)
{
  v251 = a7;
  v265 = a6;
  v261 = a2;
  v259 = a1;
  v269 = sub_1A7E22CF0();
  v10 = *(v269 - 8);
  MEMORY[0x1EEE9AC00](v269);
  v242 = &v231 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v231 - v13;
  v15 = sub_1A7CC7FFC(&qword_1EB2B5B78, &unk_1A7E488D0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v245 = &v231 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v238 = &v231 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v249 = &v231 - v20;
  v21 = sub_1A7CC7FFC(&qword_1EB2B4A80, &unk_1A7E41910);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v239 = &v231 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v241 = &v231 - v24;
  MEMORY[0x1EEE9AC00](v25);
  *&v243 = &v231 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v248 = (&v231 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v262 = &v231 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v250 = &v231 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v256 = (&v231 - v34);
  MEMORY[0x1EEE9AC00](v35);
  v264 = &v231 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v231 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v258 = &v231 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v267 = (&v231 - v43);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v231 - v45;
  v47 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v47);
  v240 = &v231 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v247 = (&v231 - v50);
  MEMORY[0x1EEE9AC00](v51);
  v244 = (&v231 - v52);
  MEMORY[0x1EEE9AC00](v53);
  v254 = (&v231 - v54);
  MEMORY[0x1EEE9AC00](v55);
  v255 = (&v231 - v56);
  MEMORY[0x1EEE9AC00](v57);
  v246 = &v231 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v252 = (&v231 - v60);
  MEMORY[0x1EEE9AC00](v61);
  v260 = &v231 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v263 = &v231 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v231 - v66;
  MEMORY[0x1EEE9AC00](v68);
  v266 = (&v231 - v69);
  MEMORY[0x1EEE9AC00](v70);
  v253 = &v231 - v71;
  v73.n128_f64[0] = MEMORY[0x1EEE9AC00](v72);
  v75 = &v231 - v74;
  v271 = a4;
  v272 = v76;
  v77 = a4 >> 62;
  if (a5)
  {
    if (!v77)
    {
      v78 = *((v271 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v78)
      {
LABEL_4:
        v79 = type metadata accessor for LinkStateComponent(0);
        if (v78 < 1)
        {
          goto LABEL_162;
        }

        v14 = v79;
        v80 = 0;
        v264 = (v271 & 0xC000000000000001);
        v252 = (v271 & 0xFFFFFFFFFFFFFF8);
        v262 = (v79 - 8);
        v256 = (v10 + 8);
        v255 = (v10 + 16);
        v254 = (v261 + 3);
        v260 = v78;
        v10 = v46;
        v257 = v46;
        v263 = v79;
        do
        {
          if (v264)
          {
            a4 = MEMORY[0x1AC562480](v80, v271);
          }

          else
          {
            if (v80 >= *(v252 + 2))
            {
              goto LABEL_94;
            }

            a4 = *(v271 + 8 * v80 + 32);
          }

          os_unfair_lock_lock((a4 + 40));
          v81 = *(a4 + 48);
          v270 = (a4 + 48);
          if (*(v81 + 16) && (v82 = sub_1A7CD0DFC(v14), (v83 & 1) != 0))
          {
            sub_1A7B0CD10(*(v81 + 56) + 32 * v82, &v273);
          }

          else
          {
            v273 = 0u;
            v274 = 0u;
          }

          os_unfair_lock_unlock((a4 + 40));
          sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
          v84 = swift_dynamicCast();
          v85 = *(v14 - 1);
          v46 = (v85 + 56);
          v67 = *(v85 + 56);
          (v67)(v10, v84 ^ 1u, 1, v14);
          v268 = *(v85 + 48);
          if ((v268)(v10, 1, v14))
          {
            v86 = v10;
            sub_1A7CC9970(v10, &qword_1EB2B4A80, &unk_1A7E41910);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            v87 = v75;
            v88 = v47;
            v89 = v253;
            sub_1A7CD0EC4(v10, v253);
            v86 = v10;
            sub_1A7CC9970(v10, &qword_1EB2B4A80, &unk_1A7E41910);
            v90 = v89;
            v47 = v88;
            v75 = v87;
            v78 = v260;
            sub_1A7D25A84(v90, v75, type metadata accessor for LinkState);
          }

          if (swift_getEnumCaseMultiPayload() >= 2)
          {

            sub_1A7CD0E68(v75);
            v10 = v86;
            v14 = v263;
          }

          else
          {
            v91 = v269;
            (*v256)(v75, v269);
            v92 = v266;
            (*v255)(v266, v265, v91);
            swift_storeEnumTagMultiPayload();
            v93 = v267;
            sub_1A7CD0EC4(v92, v267);
            v14 = v263;
            (v67)(v93, 0, 1, v263);
            os_unfair_lock_lock((a4 + 40));
            v46 = v258;
            sub_1A7CD1F00(v93, v258, &qword_1EB2B4A80, &unk_1A7E41910);
            if ((v268)(v46, 1, v14) == 1)
            {
              sub_1A7CC9970(v46, &qword_1EB2B4A80, &unk_1A7E41910);
              v273 = 0u;
              v274 = 0u;
            }

            else
            {
              *(&v274 + 1) = v14;
              v94 = sub_1A7CC98BC(&v273);
              sub_1A7D25A84(v46, v94, type metadata accessor for LinkStateComponent);
            }

            v78 = v260;
            sub_1A7CC8D74(&v273, v14);
            os_unfair_lock_unlock((a4 + 40));
            sub_1A7CD0E68(v266);
            sub_1A7CC9970(v267, &qword_1EB2B4A80, &unk_1A7E41910);
            ObjectType = swift_getObjectType();
            v261[3](a4, ObjectType);

            v47 = v272;
            v10 = v257;
          }

          ++v80;
        }

        while (v78 != v80);
      }

      return 0;
    }

LABEL_96:
    v78 = sub_1A7E22DA0();
    if (v78)
    {
      goto LABEL_4;
    }

    return 0;
  }

  v276 = MEMORY[0x1E69E7CC0];
  if (v77)
  {
    v96 = sub_1A7E22DA0();
  }

  else
  {
    v96 = *((v271 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v234 = v14;
  v235 = a3;
  v270 = v96;
  v253 = v10;
  if (!v96)
  {
    goto LABEL_54;
  }

  a4 = 0;
  v14 = (v271 & 0xC000000000000001);
  v97 = v10;
  v10 = v271 & 0xFFFFFFFFFFFFFF8;
  v268 = v97 + 8;
  while (!v14)
  {
    if (a4 >= *(v10 + 16))
    {
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v75 = *(v271 + 8 * a4 + 32);

    v47 = (a4 + 1);
    if (__OFADD__(a4, 1))
    {
      goto LABEL_52;
    }

LABEL_33:
    os_unfair_lock_lock(v75 + 10);
    v99 = *(v75 + 6);
    if (*(v99 + 16) && (v100 = sub_1A7CD0DFC(&type metadata for LinkIsPendingRemoval), (v101 & 1) != 0))
    {
      sub_1A7B0CD10(*(v99 + 56) + 32 * v100, &v273);
    }

    else
    {
      v273 = 0u;
      v274 = 0u;
    }

    os_unfair_lock_unlock(v75 + 10);
    sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
    if (swift_dynamicCast() & 1) != 0 && v275 != 2 && (v275)
    {
    }

    else
    {
      os_unfair_lock_lock(v75 + 10);
      v102 = type metadata accessor for LinkStateComponent(0);
      v46 = v102;
      v103 = *(v75 + 6);
      if (*(v103 + 16) && (v104 = sub_1A7CD0DFC(v102), (v105 & 1) != 0))
      {
        sub_1A7B0CD10(*(v103 + 56) + 32 * v104, &v273);
      }

      else
      {
        v273 = 0u;
        v274 = 0u;
      }

      os_unfair_lock_unlock(v75 + 10);
      v106 = swift_dynamicCast();
      v107 = *(v46 - 1);
      (*(v107 + 56))(v39, v106 ^ 1u, 1, v46);
      if ((*(v107 + 48))(v39, 1, v46))
      {
        sub_1A7CC9970(v39, &qword_1EB2B4A80, &unk_1A7E41910);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v108 = v263;
        sub_1A7CD0EC4(v39, v263);
        sub_1A7CC9970(v39, &qword_1EB2B4A80, &unk_1A7E41910);
        sub_1A7D25A84(v108, v67, type metadata accessor for LinkState);
      }

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*v268)(v67, v269);
        sub_1A7E22BF0();
        v46 = *(v276 + 16);
        sub_1A7E22C40();
        sub_1A7E22C50();
        sub_1A7E22C00();
      }

      else
      {

        sub_1A7CD0E68(v67);
      }
    }

    ++a4;
    v98 = v47 == v270;
    v47 = v272;
    if (v98)
    {
      goto LABEL_53;
    }
  }

  v75 = MEMORY[0x1AC562480](a4, v271, v73);
  v47 = (a4 + 1);
  if (!__OFADD__(a4, 1))
  {
    goto LABEL_33;
  }

LABEL_52:
  __break(1u);
LABEL_53:
  v10 = v253;
LABEL_54:

  *&v273 = sub_1A7DB25A8(v109);
  v46 = 0;
  sub_1A7D311D4(&v273);
  v67 = v269;
  v14 = v260;

  a4 = v273;
  if ((v273 & 0x8000000000000000) != 0 || (v273 & 0x4000000000000000) != 0)
  {
    if (sub_1A7E22DA0())
    {
      goto LABEL_57;
    }

    goto LABEL_100;
  }

  if (!*(v273 + 16))
  {
LABEL_100:

    v160 = v10 + 56;
    v260 = *(v10 + 56);
    (v260)(v249, 1, 1, v67);
    if (!v270)
    {
LABEL_155:
      v225 = v249;
      v226 = v238;
      sub_1A7CD1F00(v249, v238, &qword_1EB2B5B78, &unk_1A7E488D0);
      v227 = v253;
      if ((*(v253 + 48))(v226, 1, v67) == 1)
      {
        sub_1A7CC9970(v225, &qword_1EB2B5B78, &unk_1A7E488D0);
        v228 = v226;
      }

      else
      {
        v229 = v234;
        (*(v227 + 32))(v234, v226, v67);
        v230 = LinkEngine.scheduleUpdate(for:)(v229);
        (*(v227 + 8))(v229, v67, v230);
        v228 = v225;
      }

      sub_1A7CC9970(v228, &qword_1EB2B5B78, &unk_1A7E488D0);
      return 0;
    }

    v268 = 0;
    v264 = (v271 & 0xC000000000000001);
    v258 = (v271 & 0xFFFFFFFFFFFFFF8);
    v256 = (v253 + 16);
    v232 = v261 + 2;
    v255 = (v253 + 8);
    v252 = (v261 + 1);
    v236 = (v253 + 32);
    v162 = 1;
    *&v161 = 136315650;
    v233 = v161;
    *&v161 = 136315394;
    v231 = v161;
    v257 = v160;
    while (1)
    {
      if (v264)
      {
        v14 = MEMORY[0x1AC562480](v268, v271);
      }

      else
      {
        if (v268 >= *(v258 + 2))
        {
          goto LABEL_161;
        }

        v14 = *(v271 + 8 * v268 + 32);
      }

      v163 = v268 + 1;
      if (__OFADD__(v268, 1))
      {
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        v258 = MEMORY[0x1AC562480](0, a4);
LABEL_60:

        if (qword_1EB2B47C0 != -1)
        {
          swift_once();
        }

        v110 = sub_1A7E22060();
        v111 = sub_1A7B0CB00(v110, qword_1EB2B5F68);
        v75 = v258;

        v249 = v111;
        v112 = sub_1A7E22040();
        v113 = sub_1A7E228F0();

        if (os_log_type_enabled(v112, v113))
        {
          v46 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          *&v273 = v114;
          *v46 = 136315138;
          v115 = *(v75 + 2);
          v75 = *(v75 + 3);

          v47 = sub_1A7B0CB38(v115, v75, &v273);

          *(v46 + 4) = v47;
          _os_log_impl(&dword_1A7AD9000, v112, v113, "earliest connected link: %s", v46, 0xCu);
          sub_1A7B0CD6C(v114);
          MEMORY[0x1AC5654B0](v114, -1, -1);
          MEMORY[0x1AC5654B0](v46, -1, -1);
        }

        if (v270)
        {
          a4 = v271;
          v263 = v271 & 0xC000000000000001;
          v10 = type metadata accessor for LinkStateComponent(0);
          v116 = 0;
          v251 = a4 & 0xFFFFFFFFFFFFFF8;
          v262 = (v10 - 8);
          v254 = (v253 + 8);
          v248 = (v253 + 16);
          v247 = (v261 + 3);
          *&v117 = 136315906;
          v243 = v117;
          do
          {
            if (v263)
            {
              v118 = MEMORY[0x1AC562480](v116, v271);
              v46 = (v116 + 1);
              if (__OFADD__(v116, 1))
              {
                goto LABEL_93;
              }
            }

            else
            {
              if (v116 >= *(v251 + 16))
              {
                goto LABEL_95;
              }

              v118 = *(v271 + 8 * v116 + 32);

              v46 = (v116 + 1);
              if (__OFADD__(v116, 1))
              {
                goto LABEL_93;
              }
            }

            os_unfair_lock_lock((v118 + 40));
            v119 = *(v118 + 48);
            v268 = v118 + 48;
            if (*(v119 + 16) && (v120 = sub_1A7CD0DFC(v10), (v121 & 1) != 0))
            {
              sub_1A7B0CD10(*(v119 + 56) + 32 * v120, &v273);
            }

            else
            {
              v273 = 0u;
              v274 = 0u;
            }

            os_unfair_lock_unlock((v118 + 40));
            sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
            v122 = v264;
            v123 = swift_dynamicCast();
            v124 = *(v10 - 8);
            v47 = (v124 + 56);
            v266 = *(v124 + 56);
            (v266)(v122, v123 ^ 1u, 1, v10);
            v125 = *(v124 + 48);
            v75 = (v124 + 48);
            v267 = v125;
            if ((v125)(v122, 1, v10))
            {
              sub_1A7CC9970(v122, &qword_1EB2B4A80, &unk_1A7E41910);
              swift_storeEnumTagMultiPayload();
            }

            else
            {
              v126 = v252;
              sub_1A7CD0EC4(v122, v252);
              sub_1A7CC9970(v122, &qword_1EB2B4A80, &unk_1A7E41910);
              v127 = v126;
              v14 = v260;
              sub_1A7D25A84(v127, v260, type metadata accessor for LinkState);
            }

            if (swift_getEnumCaseMultiPayload() >= 2)
            {

              sub_1A7CD0E68(v14);
            }

            else
            {
              (*v254)(v14, v67);
              if (v118 != v258)
              {
                v257 = v46;
                v128 = v67;
                v129 = v258;

                v130 = sub_1A7E22040();
                v131 = sub_1A7E228F0();
                v132 = v129;

                LODWORD(v253) = v131;
                if (os_log_type_enabled(v130, v131))
                {
                  v133 = swift_slowAlloc();
                  v245 = swift_slowAlloc();
                  *&v273 = v245;
                  *v133 = v243;
                  v244 = v130;
                  v134 = *(v118 + 16);
                  v135 = *(v118 + 24);

                  v136 = sub_1A7B0CB38(v134, v135, &v273);

                  *(v133 + 4) = v136;
                  *(v133 + 12) = 2080;
                  v137 = *(v132 + 16);
                  v138 = *(v132 + 24);

                  v139 = sub_1A7B0CB38(v137, v138, &v273);

                  *(v133 + 14) = v139;
                  *(v133 + 22) = 2080;
                  v140 = v246;
                  LinkEngineLink.state.getter(v246);
                  v141 = LinkState.description.getter();
                  v143 = v142;
                  sub_1A7CD0E68(v140);
                  v144 = sub_1A7B0CB38(v141, v143, &v273);

                  *(v133 + 24) = v144;
                  *(v133 + 32) = 2080;
                  LinkEngineLink.state.getter(v140);
                  v145 = LinkState.description.getter();
                  v147 = v146;
                  v148 = v140;
                  a4 = v250;
                  sub_1A7CD0E68(v148);
                  v149 = sub_1A7B0CB38(v145, v147, &v273);
                  v14 = v260;

                  *(v133 + 34) = v149;
                  v150 = v244;
                  _os_log_impl(&dword_1A7AD9000, v244, v253, "%s: Disconnecting because it is not %s; state: %s, earlier link state: %s", v133, 0x2Au);
                  v151 = v245;
                  swift_arrayDestroy();
                  MEMORY[0x1AC5654B0](v151, -1, -1);
                  v152 = v133;
                  v67 = v269;
                  MEMORY[0x1AC5654B0](v152, -1, -1);
                }

                else
                {

                  v67 = v128;
                  a4 = v250;
                  v14 = v260;
                }

                v153 = v255;
                (*v248)(v255, v265, v67);
                swift_storeEnumTagMultiPayload();
                v154 = v153;
                v155 = v256;
                sub_1A7CD0EC4(v154, v256);
                (v266)(v155, 0, 1, v10);
                os_unfair_lock_lock((v118 + 40));
                v47 = &qword_1EB2B4A80;
                sub_1A7CD1F00(v155, a4, &qword_1EB2B4A80, &unk_1A7E41910);
                v156 = (v267)(a4, 1, v10);
                v46 = v257;
                if (v156 == 1)
                {
                  sub_1A7CC9970(a4, &qword_1EB2B4A80, &unk_1A7E41910);
                  v273 = 0u;
                  v274 = 0u;
                }

                else
                {
                  *(&v274 + 1) = v10;
                  v157 = sub_1A7CC98BC(&v273);
                  sub_1A7D25A84(a4, v157, type metadata accessor for LinkStateComponent);
                }

                v75 = &unk_1A7E41910;
                sub_1A7CC8D74(&v273, v10);
                os_unfair_lock_unlock((v118 + 40));
                sub_1A7CD0E68(v255);
                sub_1A7CC9970(v256, &qword_1EB2B4A80, &unk_1A7E41910);
                v158 = swift_getObjectType();
                v261[3](v118, v158);
              }
            }

            ++v116;
          }

          while (v46 != v270);
        }

        return 1;
      }

      os_unfair_lock_lock(v14 + 10);
      v165 = v14 + 48;
      v164 = *(v14 + 6);
      if (*(v164 + 16) && (v166 = sub_1A7CD0DFC(&type metadata for LinkIsPendingRemoval), (v167 & 1) != 0))
      {
        sub_1A7B0CD10(*(v164 + 56) + 32 * v166, &v273);
      }

      else
      {
        v273 = 0u;
        v274 = 0u;
      }

      os_unfair_lock_unlock(v14 + 10);
      a4 = sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
      if (swift_dynamicCast() & 1) != 0 && v276 != 2 && (v276)
      {
        goto LABEL_103;
      }

      os_unfair_lock_lock(v14 + 10);
      v168 = type metadata accessor for LinkStateComponent(0);
      v169 = v168;
      v170 = *v165;
      if (*(*v165 + 16) && (v171 = sub_1A7CD0DFC(v168), (v172 & 1) != 0))
      {
        sub_1A7B0CD10(*(v170 + 56) + 32 * v171, &v273);
      }

      else
      {
        v273 = 0u;
        v274 = 0u;
      }

      os_unfair_lock_unlock(v14 + 10);
      v173 = v262;
      v174 = swift_dynamicCast();
      v175 = *(v169 - 8);
      v266 = *(v175 + 56);
      (v266)(v173, v174 ^ 1u, 1, v169);
      v176 = *(v175 + 48);
      v46 = (v175 + 48);
      v267 = v176;
      if ((v176)(v173, 1, v169))
      {
        sub_1A7CC9970(v173, &qword_1EB2B4A80, &unk_1A7E41910);
        a4 = v254;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v177 = v244;
        sub_1A7CD0EC4(v173, v244);
        sub_1A7CC9970(v173, &qword_1EB2B4A80, &unk_1A7E41910);
        a4 = v254;
        sub_1A7D25A84(v177, v254, type metadata accessor for LinkState);
      }

      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        if ((EnumCaseMultiPayload - 4) < 2)
        {
          if (v162)
          {
LABEL_131:
            if (qword_1EB2B47C0 != -1)
            {
              swift_once();
            }

            v179 = sub_1A7E22060();
            sub_1A7B0CB00(v179, qword_1EB2B5F68);

            v180 = sub_1A7E22040();
            v181 = sub_1A7E228F0();

            v182 = os_log_type_enabled(v180, v181);
            v263 = v163;
            if (v182)
            {
              v183 = swift_slowAlloc();
              v250 = swift_slowAlloc();
              *&v273 = v250;
              *v183 = v233;
              v184 = sub_1A7E22230();
              v237 = v181;
              v186 = sub_1A7B0CB38(v184, v185, &v273);

              *(v183 + 4) = v186;
              *(v183 + 12) = 2080;
              v187 = *(v14 + 2);
              v188 = *(v14 + 3);

              v189 = sub_1A7B0CB38(v187, v188, &v273);

              *(v183 + 14) = v189;
              *(v183 + 22) = 2080;
              v190 = v246;
              LinkEngineLink.state.getter(v246);
              v191 = LinkState.description.getter();
              v193 = v192;
              sub_1A7CD0E68(v190);
              v194 = sub_1A7B0CB38(v191, v193, &v273);

              *(v183 + 24) = v194;
              _os_log_impl(&dword_1A7AD9000, v180, v237, "%s %s: %s -> connecting", v183, 0x20u);
              v195 = v250;
              swift_arrayDestroy();
              MEMORY[0x1AC5654B0](v195, -1, -1);
              v196 = v183;
              v47 = v272;
              MEMORY[0x1AC5654B0](v196, -1, -1);
            }

            v197 = v243;
            v198 = v247;
            (*v256)(v247, v265, v269);
            swift_storeEnumTagMultiPayload();
            v199 = v198;
            v200 = v248;
            sub_1A7CD0EC4(v199, v248);
            (v266)(v200, 0, 1, v169);
            os_unfair_lock_lock(v14 + 10);
            sub_1A7CD1F00(v200, v197, &qword_1EB2B4A80, &unk_1A7E41910);
            if ((v267)(v197, 1, v169) == 1)
            {
              sub_1A7CC9970(v197, &qword_1EB2B4A80, &unk_1A7E41910);
              v273 = 0u;
              v274 = 0u;
            }

            else
            {
              *(&v274 + 1) = v169;
              v221 = sub_1A7CC98BC(&v273);
              sub_1A7D25A84(v197, v221, type metadata accessor for LinkStateComponent);
            }

            sub_1A7CC8D74(&v273, v169);
            os_unfair_lock_unlock(v14 + 10);
            sub_1A7CD0E68(v247);
            sub_1A7CC9970(v248, &qword_1EB2B4A80, &unk_1A7E41910);
            v222 = swift_getObjectType();
            (v261)[1](v14, v222);
            v46 = v245;
            sub_1A7E22CD0();

            a4 = v249;
            sub_1A7CC9970(v249, &qword_1EB2B5B78, &unk_1A7E488D0);
            v67 = v269;
            (v260)(v46, 0, 1, v269);
            sub_1A7D25AEC(v46, a4);
            if (v263 == v270)
            {
              goto LABEL_155;
            }

            goto LABEL_151;
          }

LABEL_147:

          v67 = v269;
          if (v163 == v270)
          {
            goto LABEL_155;
          }

LABEL_151:
          v162 = 0;
          goto LABEL_105;
        }

        if (*(a4 + 9))
        {
          if (qword_1EB2B47C0 != -1)
          {
            swift_once();
          }

          v202 = sub_1A7E22060();
          sub_1A7B0CB00(v202, qword_1EB2B5F68);

          v203 = sub_1A7E22040();
          v204 = sub_1A7E228F0();

          v205 = os_log_type_enabled(v203, v204);
          v263 = v163;
          if (v205)
          {
            v206 = swift_slowAlloc();
            v250 = swift_slowAlloc();
            *&v273 = v250;
            *v206 = v231;
            v237 = v204;
            v207 = *(v14 + 2);
            v208 = *(v14 + 3);

            v209 = sub_1A7B0CB38(v207, v208, &v273);

            *(v206 + 4) = v209;
            *(v206 + 12) = 2080;
            v210 = v246;
            LinkEngineLink.state.getter(v246);
            v211 = LinkState.description.getter();
            v213 = v212;
            sub_1A7CD0E68(v210);
            v214 = sub_1A7B0CB38(v211, v213, &v273);

            *(v206 + 14) = v214;
            _os_log_impl(&dword_1A7AD9000, v203, v237, "%s: %s -> connecting (reconnect)", v206, 0x16u);
            v215 = v250;
            swift_arrayDestroy();
            MEMORY[0x1AC5654B0](v215, -1, -1);
            MEMORY[0x1AC5654B0](v206, -1, -1);
          }

          v216 = v249;
          v217 = v239;
          v218 = v240;
          (*v256)(v240, v265, v269);
          v47 = v272;
          swift_storeEnumTagMultiPayload();
          v219 = v218;
          v220 = v241;
          sub_1A7CD0EC4(v219, v241);
          (v266)(v220, 0, 1, v169);
          os_unfair_lock_lock(v14 + 10);
          sub_1A7CD1F00(v220, v217, &qword_1EB2B4A80, &unk_1A7E41910);
          if ((v267)(v217, 1, v169) == 1)
          {
            sub_1A7CC9970(v217, &qword_1EB2B4A80, &unk_1A7E41910);
            v273 = 0u;
            v274 = 0u;
          }

          else
          {
            *(&v274 + 1) = v169;
            v223 = sub_1A7CC98BC(&v273);
            sub_1A7D25A84(v217, v223, type metadata accessor for LinkStateComponent);
          }

          v46 = v257;
          sub_1A7CC8D74(&v273, v169);
          os_unfair_lock_unlock(v14 + 10);
          sub_1A7CD0E68(v240);
          sub_1A7CC9970(v241, &qword_1EB2B4A80, &unk_1A7E41910);
          v224 = swift_getObjectType();
          (v261)[2](v14, v224);
          a4 = v245;
          sub_1A7E22CD0();

          sub_1A7CC9970(v216, &qword_1EB2B5B78, &unk_1A7E488D0);
          v67 = v269;
          (v260)(a4, 0, 1, v269);
          sub_1A7D25AEC(a4, v216);
          v162 = 0;
          v163 = v263;
        }

        else
        {

          v67 = v269;
        }
      }

      else if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          (*v255)(a4, v269);
          if (v162)
          {
            goto LABEL_131;
          }

          goto LABEL_147;
        }

        sub_1A7CD0E68(a4);
        v67 = v269;
      }

      else
      {
        v46 = v242;
        v67 = v269;
        (*v236)(v242, a4, v269);
        sub_1A7E22CE0();
        a4 = *(v251 + 16);
        if ((sub_1A7E232A0() & 1) == 0)
        {
          (*v255)(v46, v67);
LABEL_103:

          goto LABEL_104;
        }

        v201 = v245;
        sub_1A7E22CD0();

        (*v255)(v46, v67);
        a4 = v249;
        sub_1A7CC9970(v249, &qword_1EB2B5B78, &unk_1A7E488D0);
        (v260)(v201, 0, 1, v67);
        sub_1A7D25AEC(v201, a4);
        v162 = 0;
      }

LABEL_104:
      if (v163 == v270)
      {
        goto LABEL_155;
      }

LABEL_105:
      ++v268;
    }
  }

LABEL_57:
  if ((a4 & 0xC000000000000001) != 0)
  {
    goto LABEL_163;
  }

  if (*(a4 + 16))
  {
    v258 = *(a4 + 32);

    goto LABEL_60;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1A7D23EAC(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, unsigned __int8 *a5)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    sub_1A7D25A14(a5, &v187);
    sub_1A7D25A14(a5, &v187);
    v8 = MEMORY[0x1E69E7CC0];
LABEL_216:
    __dst = *a1;
    if (!*a1)
    {
      goto LABEL_258;
    }

    sub_1A7D25A14(a5, &v187);
    sub_1A7D25A14(a5, &v187);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_252:
      v8 = sub_1A7CF0024(v8);
    }

    v189 = v8;
    v150 = *(v8 + 16);
    if (v150 >= 2)
    {
      do
      {
        v151 = *a3;
        if (!*a3)
        {
          goto LABEL_256;
        }

        v152 = *(v8 + 16 * v150);
        v153 = v8;
        v154 = *(v8 + 16 * (v150 - 1) + 40);
        v155 = (v151 + 16 * v152);
        v156 = (v151 + 16 * *(v8 + 16 * (v150 - 1) + 32));
        v8 = v151 + 16 * v154;
        sub_1A7D25A14(a5, &v187);
        sub_1A7D20858(v155, v156, v8, __dst, a5);
        if (v171)
        {
          sub_1A7D25A4C(a5);
          sub_1A7D25A4C(a5);

          sub_1A7D25A4C(a5);
          v158 = a5;
          return sub_1A7D25A4C(v158);
        }

        if (v154 < v152)
        {
          goto LABEL_245;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v153 = sub_1A7CF0024(v153);
        }

        if (v150 - 2 >= *(v153 + 2))
        {
          goto LABEL_246;
        }

        v157 = &v153[16 * v150];
        *v157 = v152;
        *(v157 + 1) = v154;
        v189 = v153;
        sub_1A7CEFF98(v150 - 1);
        v8 = v189;
        v150 = *(v189 + 16);
      }

      while (v150 > 1);
    }

    v149 = a5;
    sub_1A7D25A4C(a5);
    sub_1A7D25A4C(a5);

LABEL_227:
    sub_1A7D25A4C(v149);
    v158 = v149;
    return sub_1A7D25A4C(v158);
  }

  sub_1A7D25A14(a5, &v187);
  sub_1A7D25A14(a5, &v187);
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 >= v6)
    {
      goto LABEL_82;
    }

    v10 = *a3;
    v11 = (*a3 + 16 * v7);
    v12 = v11[1];
    *&v187 = *v11;
    *(&v187 + 1) = v12;
    v13 = (v10 + 16 * v9);
    v14 = v13[1];
    *&v183 = *v13;
    *(&v183 + 1) = v14;

    v179 = sub_1A7D1DF94(&v187, &v183, a5);
    if (v171)
    {

LABEL_214:
      v149 = a5;
      goto LABEL_227;
    }

    v7 = v9 + 2;
    if (v9 + 2 < v6)
    {
      v160 = v9;
      v162 = v8;
      v15 = v13 + 3;
      v177 = v6;
      while (1)
      {
        v172 = v7;
        v16 = v15;
        v17 = v15[1];
        v19 = v15[2];
        v15 += 2;
        v18 = v19;
        v20 = *(v16 - 1);
        v21 = *v16;

        os_unfair_lock_lock((v19 + 40));
        v22 = *(v19 + 48);
        v180 = v20;
        if (*(v22 + 16) && (v23 = sub_1A7CD0DFC(&type metadata for LinkDefinitionComponent), (v24 & 1) != 0))
        {
          sub_1A7B0CD10(*(v22 + 56) + 32 * v23, &v187);
        }

        else
        {
          v187 = 0u;
          v188 = 0u;
        }

        os_unfair_lock_unlock(v18 + 10);
        sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
        __dst = v17;
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v25 = *(&v183 + 1);
        v26 = v183;
        v27 = v184;
        if (v183 == 1)
        {
          v6 = v177;
LABEL_18:
          sub_1A7CDBC48(1, v25, v27);
          v25 = 0;
          v27 = 0;
LABEL_19:
          sub_1A7CDB84C(0, v25, v27);
          v28 = 1;
          v29 = 2;
          goto LABEL_20;
        }

        sub_1A7CDB7B8(v183, *(&v183 + 1), v184);
        sub_1A7CDBC48(v26, v25, v27);
        if (!v26)
        {
          v6 = v177;
          goto LABEL_19;
        }

        sub_1A7CDB84C(v26, v25, v27);
        if (!*(v25 + 16) || (v46 = sub_1A7CD0DFC(&type metadata for LinkEndpointIDSRAT), (v47 & 1) == 0))
        {
          v185 = 0;
          v186 = 1;
LABEL_66:
          v6 = v177;
LABEL_67:

          v28 = 0;
          v29 = 1;
          goto LABEL_20;
        }

        sub_1A7B0CD10(*(v25 + 56) + 32 * v46, &v187);
        sub_1A7B1503C(&v187, &v183);
        sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60);
        v48 = swift_dynamicCast();
        if ((v48 & 1) == 0)
        {
          v185 = 0;
          v186 = v48 ^ 1;
          goto LABEL_66;
        }

        v186 = v48 ^ 1;
        v6 = v177;
        if (v185 <= 0xA && ((1 << v185) & 0x601) != 0)
        {
          goto LABEL_67;
        }

        v28 = 0;
        v29 = 0;
LABEL_20:
        os_unfair_lock_lock((v21 + 40));
        v30 = *(v21 + 48);
        if (*(v30 + 16) && (v31 = sub_1A7CD0DFC(&type metadata for LinkDefinitionComponent), (v32 & 1) != 0))
        {
          sub_1A7B0CD10(*(v30 + 56) + 32 * v31, &v187);
        }

        else
        {
          v187 = 0u;
          v188 = 0u;
        }

        os_unfair_lock_unlock((v21 + 40));
        if ((swift_dynamicCast() & 1) == 0)
        {
          v35 = 0;
          v34 = 0;
          v183 = 1uLL;
          v184 = 0;
LABEL_34:
          sub_1A7CDBC48(1, v34, v35);
          v34 = 0;
          v42 = 0;
LABEL_35:
          sub_1A7CDB84C(0, v34, v42);
          v40 = 1;
          v41 = 2;
          goto LABEL_36;
        }

        v34 = *(&v183 + 1);
        v33 = v183;
        v35 = v184;
        if (v183 == 1)
        {
          goto LABEL_34;
        }

        v36 = v184;
        sub_1A7CDB7B8(v183, *(&v183 + 1), v184);
        sub_1A7CDBC48(v33, v34, v36);
        if (!v33)
        {
          v42 = v36;
          v6 = v177;
          goto LABEL_35;
        }

        sub_1A7CDB84C(v33, v34, v36);
        v6 = v177;
        if (!*(v34 + 16) || (v37 = sub_1A7CD0DFC(&type metadata for LinkEndpointIDSRAT), (v38 & 1) == 0))
        {
          v185 = 0;
          v186 = 1;
LABEL_64:

          v40 = 0;
          v41 = 1;
          goto LABEL_36;
        }

        sub_1A7B0CD10(*(v34 + 56) + 32 * v37, &v187);
        sub_1A7B1503C(&v187, &v183);
        sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60);
        v39 = swift_dynamicCast();
        if ((v39 & 1) == 0)
        {
          v185 = 0;
          v186 = v39 ^ 1;
          goto LABEL_64;
        }

        v186 = v39 ^ 1;
        if (v185 <= 0xA && ((1 << v185) & 0x601) != 0)
        {
          goto LABEL_64;
        }

        v40 = 0;
        v41 = 0;
LABEL_36:
        v43 = *a5;

        if (v43 == 2 || v29 == v43)
        {
          if (v43 == 2 || v41 == v43)
          {
            v45 = 1;
          }

          else
          {
            v45 = v40;
          }

          v7 = v172;
          if (v45 != 1)
          {
LABEL_48:
            if (!v179)
            {
              v9 = v160;
              v8 = v162;
              goto LABEL_82;
            }

            goto LABEL_9;
          }

          goto LABEL_8;
        }

        v7 = v172;
        if (v41 == v43)
        {
          if (v28)
          {
            goto LABEL_8;
          }
        }

        else
        {
          if (v28)
          {
            if ((v40 & 1) == 0)
            {
              goto LABEL_48;
            }

LABEL_8:
            if (((v179 ^ (__dst >= v180)) & 1) == 0)
            {
              goto LABEL_73;
            }

            goto LABEL_9;
          }

          if (!v40)
          {
            goto LABEL_8;
          }
        }

        if (v179)
        {
          v9 = v160;
          v8 = v162;
          if (v172 < v160)
          {
LABEL_251:
            __break(1u);
            goto LABEL_252;
          }

LABEL_76:
          if (v9 < v7)
          {
            v49 = 0;
            v50 = 16 * v7;
            v51 = 16 * v9;
            v52 = v9;
            do
            {
              if (v52 != v7 + v49 - 1)
              {
                v53 = *a3;
                if (!*a3)
                {
                  goto LABEL_255;
                }

                v54 = (v53 + v51);
                v55 = v53 + v50;
                v56 = *v54;
                v57 = v54[1];
                *v54 = *(v55 - 16);
                *(v55 - 16) = v56;
                *(v55 - 8) = v57;
              }

              ++v52;
              --v49;
              v50 -= 16;
              v51 += 16;
            }

            while (v52 < v7 + v49);
          }

          goto LABEL_82;
        }

LABEL_9:
        if (v6 == ++v7)
        {
          v7 = v6;
LABEL_73:
          v9 = v160;
          v8 = v162;
          goto LABEL_74;
        }
      }

      v27 = 0;
      v25 = 0;
      v183 = 1uLL;
      v184 = 0;
      goto LABEL_18;
    }

LABEL_74:
    if (v179)
    {
      if (v7 < v9)
      {
        goto LABEL_251;
      }

      goto LABEL_76;
    }

LABEL_82:
    v58 = a3[1];
    if (v7 < v58)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_248;
      }

      if (v7 - v9 < a4)
      {
        v59 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          goto LABEL_249;
        }

        if (v59 >= v58)
        {
          v59 = a3[1];
        }

        if (v59 < v9)
        {
LABEL_250:
          __break(1u);
          goto LABEL_251;
        }

        if (v7 != v59)
        {
          break;
        }
      }
    }

LABEL_161:
    if (v7 < v9)
    {
      goto LABEL_247;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1A7CCC08C(0, *(v8 + 16) + 1, 1, v8);
    }

    v98 = *(v8 + 16);
    v97 = *(v8 + 24);
    v99 = v98 + 1;
    if (v98 >= v97 >> 1)
    {
      v8 = sub_1A7CCC08C((v97 > 1), v98 + 1, 1, v8);
    }

    *(v8 + 16) = v99;
    v100 = v8 + 16 * v98;
    *(v100 + 32) = v9;
    *(v100 + 40) = v7;
    __dst = *a1;
    if (!*a1)
    {
      goto LABEL_257;
    }

    v174 = v7;
    if (v98)
    {
      while (1)
      {
        v101 = v99 - 1;
        if (v99 >= 4)
        {
          break;
        }

        if (v99 == 3)
        {
          v102 = *(v8 + 32);
          v103 = *(v8 + 40);
          v112 = __OFSUB__(v103, v102);
          v104 = v103 - v102;
          v105 = v112;
LABEL_181:
          if (v105)
          {
            goto LABEL_236;
          }

          v118 = (v8 + 16 * v99);
          v120 = *v118;
          v119 = v118[1];
          v121 = __OFSUB__(v119, v120);
          v122 = v119 - v120;
          v123 = v121;
          if (v121)
          {
            goto LABEL_239;
          }

          v124 = (v8 + 32 + 16 * v101);
          v126 = *v124;
          v125 = v124[1];
          v112 = __OFSUB__(v125, v126);
          v127 = v125 - v126;
          if (v112)
          {
            goto LABEL_242;
          }

          if (__OFADD__(v122, v127))
          {
            goto LABEL_243;
          }

          if (v122 + v127 >= v104)
          {
            if (v104 < v127)
            {
              v101 = v99 - 2;
            }

            goto LABEL_202;
          }

          goto LABEL_195;
        }

        v128 = (v8 + 16 * v99);
        v130 = *v128;
        v129 = v128[1];
        v112 = __OFSUB__(v129, v130);
        v122 = v129 - v130;
        v123 = v112;
LABEL_195:
        if (v123)
        {
          goto LABEL_238;
        }

        v131 = v8 + 16 * v101;
        v133 = *(v131 + 32);
        v132 = *(v131 + 40);
        v112 = __OFSUB__(v132, v133);
        v134 = v132 - v133;
        if (v112)
        {
          goto LABEL_241;
        }

        if (v134 < v122)
        {
          goto LABEL_3;
        }

LABEL_202:
        v139 = v101 - 1;
        if (v101 - 1 >= v99)
        {
          __break(1u);
LABEL_232:
          __break(1u);
LABEL_233:
          __break(1u);
LABEL_234:
          __break(1u);
LABEL_235:
          __break(1u);
LABEL_236:
          __break(1u);
LABEL_237:
          __break(1u);
LABEL_238:
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
          goto LABEL_250;
        }

        v140 = *a3;
        if (!*a3)
        {
          goto LABEL_254;
        }

        v141 = v8;
        v142 = *(v8 + 32 + 16 * v139);
        v143 = v101;
        v144 = *(v8 + 32 + 16 * v101);
        v8 = *(v8 + 32 + 16 * v101 + 8);
        v145 = (v140 + 16 * v142);
        v146 = (v140 + 16 * v144);
        v147 = (v140 + 16 * v8);
        sub_1A7D25A14(a5, &v187);
        sub_1A7D20858(v145, v146, v147, __dst, a5);
        if (v171)
        {

          goto LABEL_214;
        }

        if (v8 < v142)
        {
          goto LABEL_232;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v141 = sub_1A7CF0024(v141);
        }

        if (v139 >= *(v141 + 2))
        {
          goto LABEL_233;
        }

        v148 = &v141[16 * v139];
        *(v148 + 4) = v142;
        *(v148 + 5) = v8;
        v189 = v141;
        sub_1A7CEFF98(v143);
        v8 = v189;
        v99 = *(v189 + 16);
        v7 = v174;
        if (v99 <= 1)
        {
          goto LABEL_3;
        }
      }

      v106 = v8 + 32 + 16 * v99;
      v107 = *(v106 - 64);
      v108 = *(v106 - 56);
      v112 = __OFSUB__(v108, v107);
      v109 = v108 - v107;
      if (v112)
      {
        goto LABEL_234;
      }

      v111 = *(v106 - 48);
      v110 = *(v106 - 40);
      v112 = __OFSUB__(v110, v111);
      v104 = v110 - v111;
      v105 = v112;
      if (v112)
      {
        goto LABEL_235;
      }

      v113 = (v8 + 16 * v99);
      v115 = *v113;
      v114 = v113[1];
      v112 = __OFSUB__(v114, v115);
      v116 = v114 - v115;
      if (v112)
      {
        goto LABEL_237;
      }

      v112 = __OFADD__(v104, v116);
      v117 = v104 + v116;
      if (v112)
      {
        goto LABEL_240;
      }

      if (v117 >= v109)
      {
        v135 = (v8 + 32 + 16 * v101);
        v137 = *v135;
        v136 = v135[1];
        v112 = __OFSUB__(v136, v137);
        v138 = v136 - v137;
        if (v112)
        {
          goto LABEL_244;
        }

        if (v104 < v138)
        {
          v101 = v99 - 2;
        }

        goto LABEL_202;
      }

      goto LABEL_181;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_216;
    }
  }

  v161 = v9;
  v163 = v8;
  v60 = *a5;
  v175 = v60;
  v176 = *a3;
  v61 = (*a3 + 16 * v7);
  v62 = v9 - v7;
  v166 = v59;
  while (2)
  {
    v173 = v7;
    v63 = (v176 + 16 * v7);
    v64 = *v63;
    v65 = v63[1];
    v167 = v62;
    v168 = v61;
LABEL_93:
    __dst = v64;
    v181 = *(v61 - 2);
    v66 = *(v61 - 1);

    os_unfair_lock_lock(v65 + 10);
    v67 = v65[6];
    if (*(v67 + 16) && (v68 = sub_1A7CD0DFC(&type metadata for LinkDefinitionComponent), (v69 & 1) != 0))
    {
      sub_1A7B0CD10(*(v67 + 56) + 32 * v68, &v187);
    }

    else
    {
      v187 = 0u;
      v188 = 0u;
    }

    os_unfair_lock_unlock(v65 + 10);
    sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
    if (swift_dynamicCast())
    {
      v70 = *(&v183 + 1);
      v71 = v183;
      v72 = v184;
      if (v183 == 1)
      {
        v60 = v175;
        goto LABEL_101;
      }

      v90 = v184;
      sub_1A7CDB7B8(v183, *(&v183 + 1), v184);
      sub_1A7CDBC48(v71, v70, v90);
      if (v71)
      {

        sub_1A7CDB84C(v71, v70, v90);
        if (*(v70 + 16) && (v91 = sub_1A7CD0DFC(&type metadata for LinkEndpointIDSRAT), (v92 & 1) != 0))
        {
          sub_1A7B0CD10(*(v70 + 56) + 32 * v91, &v187);
          sub_1A7B1503C(&v187, &v183);
          sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60);
          v93 = swift_dynamicCast();
          if (v93)
          {
            v186 = v93 ^ 1;
            v60 = v175;
            if (v185 > 0xA || ((1 << v185) & 0x601) == 0)
            {

              v178 = 0;
              v74 = 0;
              goto LABEL_103;
            }

LABEL_155:

            v178 = 0;
            v74 = 1;
            goto LABEL_103;
          }

          v185 = 0;
          v186 = v93 ^ 1;
        }

        else
        {
          v185 = 0;
          v186 = 1;
        }

        v60 = v175;
        goto LABEL_155;
      }

      v73 = v90;
      v60 = v175;
    }

    else
    {
      v72 = 0;
      v70 = 0;
      v183 = 1uLL;
      v184 = 0;
LABEL_101:
      sub_1A7CDBC48(1, v70, v72);
      v70 = 0;
      v73 = 0;
    }

    sub_1A7CDB84C(0, v70, v73);
    v178 = 1;
    v74 = 2;
LABEL_103:
    os_unfair_lock_lock((v66 + 40));
    v75 = *(v66 + 48);
    if (*(v75 + 16) && (v76 = sub_1A7CD0DFC(&type metadata for LinkDefinitionComponent), (v77 & 1) != 0))
    {
      sub_1A7B0CD10(*(v75 + 56) + 32 * v76, &v187);
    }

    else
    {
      v187 = 0u;
      v188 = 0u;
    }

    os_unfair_lock_unlock((v66 + 40));
    if ((swift_dynamicCast() & 1) == 0)
    {
      v80 = 0;
      v79 = 0;
      v183 = 1uLL;
      v184 = 0;
      goto LABEL_117;
    }

    v79 = *(&v183 + 1);
    v78 = v183;
    v80 = v184;
    if (v183 == 1)
    {
LABEL_117:
      sub_1A7CDBC48(1, v79, v80);
      v79 = 0;
      v87 = 0;
LABEL_118:
      sub_1A7CDB84C(0, v79, v87);
      v85 = 1;
      v86 = 2;
      goto LABEL_119;
    }

    v81 = v184;
    sub_1A7CDB7B8(v183, *(&v183 + 1), v184);
    sub_1A7CDBC48(v78, v79, v81);
    if (!v78)
    {
      v87 = v81;
      v60 = v175;
      goto LABEL_118;
    }

    sub_1A7CDB84C(v78, v79, v81);
    if (!*(v79 + 16) || (v82 = sub_1A7CD0DFC(&type metadata for LinkEndpointIDSRAT), (v83 & 1) == 0))
    {
      v185 = 0;
      v186 = 1;
      v60 = v175;
LABEL_152:

      v85 = 0;
      v86 = 1;
      goto LABEL_119;
    }

    sub_1A7B0CD10(*(v79 + 56) + 32 * v82, &v187);
    sub_1A7B1503C(&v187, &v183);
    sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60);
    v84 = swift_dynamicCast();
    v60 = v175;
    if ((v84 & 1) == 0)
    {
      v185 = 0;
      v186 = v84 ^ 1;
      goto LABEL_152;
    }

    v186 = v84 ^ 1;
    if (v185 <= 0xA && ((1 << v185) & 0x601) != 0)
    {
      goto LABEL_152;
    }

    v85 = 0;
    v86 = 0;
LABEL_119:

    if (v60 == 2 || v74 == v60)
    {
      v88 = __dst;
      if (v60 == 2 || v86 == v60)
      {
        if (__dst >= v181)
        {
          goto LABEL_91;
        }

        break;
      }

      goto LABEL_138;
    }

    v88 = __dst;
    if (v86 != v60)
    {
      if ((v178 & 1) == 0)
      {
        if (__dst >= v181)
        {
          v95 = 1;
        }

        else
        {
          v95 = v85;
        }

        if (v95)
        {
          goto LABEL_91;
        }

        break;
      }

LABEL_138:
      if (v88 >= v181)
      {
        v94 = v85;
      }

      else
      {
        v94 = 0;
      }

      if (v94)
      {
        goto LABEL_91;
      }

      break;
    }

    v89 = v178;
    if (__dst >= v181)
    {
      v89 = 0;
    }

    if ((v89 & 1) == 0)
    {
LABEL_91:
      v7 = v173 + 1;
      v61 = v168 + 2;
      v62 = v167 - 1;
      if (v173 + 1 == v166)
      {
        v7 = v166;
        v9 = v161;
        v8 = v163;
        goto LABEL_161;
      }

      continue;
    }

    break;
  }

  if (v176)
  {
    v64 = *v61;
    v65 = v61[1];
    *v61 = *(v61 - 1);
    *(v61 - 1) = v65;
    *(v61 - 2) = v64;
    v61 -= 2;
    if (__CFADD__(v62++, 1))
    {
      goto LABEL_91;
    }

    goto LABEL_93;
  }

  sub_1A7D25A4C(a5);
  sub_1A7D25A4C(a5);
  __break(1u);
LABEL_254:
  sub_1A7D25A4C(a5);
  sub_1A7D25A4C(a5);
  __break(1u);
LABEL_255:
  sub_1A7D25A4C(a5);
  sub_1A7D25A4C(a5);
  __break(1u);
LABEL_256:
  sub_1A7D25A4C(a5);
  __break(1u);
LABEL_257:
  sub_1A7D25A4C(a5);
  sub_1A7D25A4C(a5);
  __break(1u);
LABEL_258:
  sub_1A7D25A4C(a5);
  result = sub_1A7D25A4C(a5);
  __break(1u);
  return result;
}

uint64_t sub_1A7D24FC4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned __int8 *a5)
{
  if (a3 != a2)
  {
    v43 = *a4;
    v5 = (*a4 + 16 * a3);
    v6 = result - a3;
    v42 = *a5;
LABEL_5:
    v40 = v5;
    v41 = a3;
    v7 = (v43 + 16 * a3);
    v8 = *v7;
    v9 = v7[1];
    v39 = v6;
    while (1)
    {
      v10 = *(v5 - 1);
      v46 = *(v5 - 2);
      v47 = v8;

      os_unfair_lock_lock((v9 + 40));
      v11 = *(v9 + 48);
      if (*(v11 + 16) && (v12 = sub_1A7CD0DFC(&type metadata for LinkDefinitionComponent), (v13 & 1) != 0))
      {
        sub_1A7B0CD10(*(v11 + 56) + 32 * v12, &v50);
      }

      else
      {
        v50 = 0u;
        v51 = 0u;
      }

      os_unfair_lock_unlock((v9 + 40));
      sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v14 = *(&v48 + 1);
      v15 = v48;
      v16 = v49;
      if (v48 == 1)
      {
        goto LABEL_20;
      }

      sub_1A7CDB7B8(v48, *(&v48 + 1), v49);
      sub_1A7CDBC48(v15, v14, v16);
      if (!v15)
      {
        goto LABEL_21;
      }

      sub_1A7CDB84C(v15, v14, v16);
      if (!*(v14 + 16) || (v17 = sub_1A7CD0DFC(&type metadata for LinkEndpointIDSRAT), (v18 & 1) == 0))
      {
        v52 = 0;
        v53 = 1;
LABEL_64:

        v44 = 0;
        v45 = 1;
        goto LABEL_22;
      }

      sub_1A7B0CD10(*(v14 + 56) + 32 * v17, &v50);
      sub_1A7B1503C(&v50, &v48);
      sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60);
      v19 = swift_dynamicCast();
      if ((v19 & 1) == 0)
      {
        v52 = 0;
        v53 = v19 ^ 1;
        goto LABEL_64;
      }

      v53 = v19 ^ 1;
      if (v52 <= 0xA && ((1 << v52) & 0x601) != 0)
      {
        goto LABEL_64;
      }

      v44 = 0;
      v45 = 0;
LABEL_22:
      os_unfair_lock_lock((v10 + 40));
      v20 = *(v10 + 48);
      if (*(v20 + 16) && (v21 = sub_1A7CD0DFC(&type metadata for LinkDefinitionComponent), (v22 & 1) != 0))
      {
        sub_1A7B0CD10(*(v20 + 56) + 32 * v21, &v50);
      }

      else
      {
        v50 = 0u;
        v51 = 0u;
      }

      os_unfair_lock_unlock((v10 + 40));
      if ((swift_dynamicCast() & 1) == 0)
      {
        v25 = 0;
        v23 = 0;
        v48 = 1uLL;
        v49 = 0;
LABEL_36:
        sub_1A7CDBC48(1, v23, v25);
        v23 = 0;
        v32 = 0;
LABEL_37:
        sub_1A7CDB84C(0, v23, v32);
        v30 = 1;
        v31 = 2;
        goto LABEL_38;
      }

      v23 = *(&v48 + 1);
      v24 = v48;
      v25 = v49;
      if (v48 == 1)
      {
        goto LABEL_36;
      }

      v26 = v49;
      sub_1A7CDB7B8(v48, *(&v48 + 1), v49);
      sub_1A7CDBC48(v24, v23, v26);
      if (!v24)
      {
        v32 = v26;
        goto LABEL_37;
      }

      sub_1A7CDB84C(v24, v23, v26);
      if (!*(v23 + 16) || (v27 = sub_1A7CD0DFC(&type metadata for LinkEndpointIDSRAT), (v28 & 1) == 0))
      {
        v52 = 0;
        v53 = 1;
LABEL_66:

        v30 = 0;
        v31 = 1;
        goto LABEL_38;
      }

      sub_1A7B0CD10(*(v23 + 56) + 32 * v27, &v50);
      sub_1A7B1503C(&v50, &v48);
      sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60);
      v29 = swift_dynamicCast();
      if ((v29 & 1) == 0)
      {
        v52 = 0;
        v53 = v29 ^ 1;
        goto LABEL_66;
      }

      v53 = v29 ^ 1;
      if (v52 <= 0xA && ((1 << v52) & 0x601) != 0)
      {
        goto LABEL_66;
      }

      v30 = 0;
      v31 = 0;
LABEL_38:

      if (v42 == 2 || v45 == v42)
      {
        v33 = v47;
        if (v42 == 2 || v31 == v42)
        {
          if (v47 >= v46)
          {
            goto LABEL_4;
          }

          goto LABEL_59;
        }

LABEL_50:
        if (v33 >= v46)
        {
          v35 = v30;
        }

        else
        {
          v35 = 0;
        }

        if (v35)
        {
          goto LABEL_4;
        }

        goto LABEL_59;
      }

      v33 = v47;
      if (v31 == v42)
      {
        v34 = v44;
        if (v47 >= v46)
        {
          v34 = 0;
        }

        if ((v34 & 1) == 0)
        {
          goto LABEL_4;
        }

        goto LABEL_59;
      }

      if (v44)
      {
        goto LABEL_50;
      }

      if (v47 >= v46)
      {
        v36 = 1;
      }

      else
      {
        v36 = v30;
      }

      if (v36)
      {
LABEL_4:
        a3 = v41 + 1;
        v5 = v40 + 2;
        v6 = v39 - 1;
        if (v41 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

LABEL_59:
      if (!v43)
      {
        __break(1u);
        return result;
      }

      v8 = *v5;
      v9 = v5[1];
      *v5 = *(v5 - 1);
      *(v5 - 1) = v9;
      *(v5 - 2) = v8;
      v5 -= 2;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    v16 = 0;
    v14 = 0;
    v48 = 1uLL;
    v49 = 0;
LABEL_20:
    sub_1A7CDBC48(1, v14, v16);
    v14 = 0;
    v16 = 0;
LABEL_21:
    sub_1A7CDB84C(0, v14, v16);
    v44 = 1;
    v45 = 2;
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1A7D25530(uint64_t *a1, unsigned __int8 *a2)
{
  v4 = a1[1];
  sub_1A7D25A14(a2, v10);
  sub_1A7D25A14(a2, v10);
  result = sub_1A7E23080();
  if (result >= v4)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      if (v4)
      {
        sub_1A7D25A14(a2, v10);
        sub_1A7D24FC4(0, v4, 1, a1, a2);
        sub_1A7D25A4C(a2);
      }

      goto LABEL_10;
    }
  }

  else
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1A7CC7FFC(&qword_1EB2B4CA8, qword_1A7E473C0);
        v8 = sub_1A7E22580();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;
      sub_1A7D25A14(a2, v10);
      sub_1A7D23EAC(v9, v10, a1, v6, a2);
      sub_1A7D25A4C(a2);
      *(v8 + 16) = 0;

LABEL_10:
      sub_1A7D25A4C(a2);
      return sub_1A7D25A4C(a2);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7D25690(uint64_t *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  sub_1A7D25A14(a2, v8);
  sub_1A7D25A14(a2, v8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1A7D60334(v4);
  }

  v5 = v4[2];
  v7[0] = (v4 + 4);
  v7[1] = v5;
  sub_1A7D25A14(a2, v8);
  sub_1A7D25530(v7, a2);
  sub_1A7D25A4C(a2);
  *a1 = v4;
  sub_1A7D25A4C(a2);
  return sub_1A7D25A4C(a2);
}