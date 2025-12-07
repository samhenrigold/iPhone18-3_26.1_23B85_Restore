uint64_t sub_1B04219F8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1B0421A34(uint64_t a1)
{
  sub_1B0E43F78();
  swift_allocObject();
  v2 = sub_1B0E43F68();
  v3 = sub_1B0E43F58();
  sec_protocol_options_add_tls_application_protocol(v3, "imap");
  swift_unknownObjectRelease();
  v4 = sub_1B0E43F58();
  v7[4] = sub_1B041E708;
  v7[5] = a1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1B041E604;
  v7[3] = &block_descriptor_3_1;
  v5 = _Block_copy(v7);

  if (qword_1EB6DCDB0 != -1)
  {
    swift_once();
  }

  sec_protocol_options_set_verify_block(v4, v5, qword_1EB6DCDB8);
  _Block_release(v5);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1B0421B80@<X0>(void *a1@<X0>, uint64_t a3@<X8>, double a4@<D0>)
{
  v7 = sub_1B0E44208();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = aBlock - v13;
  *(aBlock - v13) = 500;
  v15 = *MEMORY[0x1E69E7F38];
  v16 = *(v8 + 104);
  v16(aBlock - v13, v15, v7, v12);
  *v10 = 100;
  (v16)(v10, v15, v7);
  v17 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1B038CC1C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B038C908;
  aBlock[3] = &block_descriptor_77;
  v18 = _Block_copy(aBlock);
  type metadata accessor for RestartableTimer();
  swift_allocObject();
  v19 = a1;

  v20 = RestartableTimer.init(queue:repeating:leeway:closure:)(v19, v14, v10, v18);

  LODWORD(v10) = sub_1B0421E9C(0x1000001uLL);

  v22 = (vcvts_n_f32_u32(v10, 0x18uLL) * 0.17) + 0.83;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 2;
  *(a3 + 40) = v20;
  if (v10 == 0x1000000)
  {
    v22 = 1.0;
  }

  *(a3 + 48) = a4;
  *(a3 + 56) = v22;
  return result;
}

unint64_t sub_1B0421E38()
{
  v2 = qword_1EB6DEDC0;
  if (!qword_1EB6DEDC0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DEDC0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B0421E9C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = result;
    v5 = 0;
    MEMORY[0x1B272C250](&v5, 8);
    v3 = v5 * v2;
    if (v3 < v1)
    {
      for (i = -v1 % v1; i > v3; v3 = v5 * v2)
      {
        v5 = 0;
        MEMORY[0x1B272C250](&v5, 8);
      }
    }

    return HIDWORD(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0421F28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 60))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

Swift::Void __swiftcall CommandConnection.start()()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  v8 = sub_1B0E44468();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v1 + 24);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8, v10);
  v14 = v13;
  LOBYTE(v13) = sub_1B0E44488();
  (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v15 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1B038C9A4(v1 + v15, v7, type metadata accessor for ConnectionState);
  v16 = *MEMORY[0x1E6977C08];
  v17 = sub_1B0E43DF8();
  (*(*(v17 - 8) + 104))(v4, v16, v17);
  swift_storeEnumTagMultiPayload();
  v18 = _s15IMAP2Connection0B5StateO21__derived_enum_equalsySbAC_ACtFZ_0(v7, v4);
  sub_1B038D690(v4, type metadata accessor for ConnectionState);
  sub_1B038D690(v7, type metadata accessor for ConnectionState);
  if ((v18 & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!*(v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_dataTransferReportCollector))
  {
LABEL_9:
    __break(1u);
    return;
  }

  sub_1B0422238();

  sub_1B0423148();
  if (*(v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_stuckConnectionCheckTimer))
  {

    RestartableTimer.start()();
  }
}

uint64_t sub_1B0422238()
{
  v1 = sub_1B0E43DF8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B0E44468();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = v0[4];
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5, v7);
  v11 = v10;
  LOBYTE(v10) = sub_1B0E44488();
  result = (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v0[9])
  {
    return result;
  }

  sub_1B0E43E18();
  v13 = (*(v2 + 88))(v4, v1);
  v14 = *MEMORY[0x1E6977C08];
  (*(v2 + 8))(v4, v1);
  if (v13 != v14)
  {
LABEL_7:
    result = sub_1B0E465B8();
    __break(1u);
    return result;
  }

  v15 = sub_1B0E43D98();
  v0[8] = static MonotonicTime.now()();
  v0[9] = v15;
}

uint64_t sub_1B0422494(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t RestartableTimer.init(queue:repeating:leeway:closure:)(void *a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v33 = a3;
  v26 = a4;
  v32 = a2;
  v28 = a1;
  v31 = sub_1B0E443F8();
  v35 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v25 - v7;
  v8 = sub_1B0E45A38();
  v27 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B0E44238();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1B0E44288();
  MEMORY[0x1EEE9AC00](v12 - 8);
  _Block_copy(a4);
  sub_1B0E44278();
  v36 = MEMORY[0x1E69E7CC0];
  sub_1B039E46C(&qword_1EB6DEE50, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1880, &unk_1B0E99EA0);
  sub_1B03CFB8C(&qword_1EB6DEE20, &qword_1EB6E1880, &unk_1B0E99EA0);
  sub_1B0E460A8();
  sub_1B0E44458();
  swift_allocObject();
  sub_1B0E44428();
  sub_1B0421E38();
  v36 = MEMORY[0x1E69E7CC0];
  sub_1B039E46C(&qword_1EB6DAA70, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5AA0, &qword_1B0EDC030);
  sub_1B03CFB8C(&qword_1EB6DAFA0, &qword_1EB6E5AA0, &qword_1B0EDC030);
  sub_1B0E460A8();
  v13 = v28;
  v25 = v13;
  v14 = sub_1B0E45A48();

  (*(v27 + 8))(v10, v8);
  ObjectType = swift_getObjectType();
  sub_1B0E45A68();
  v16 = v30;
  sub_1B0E443D8();
  v17 = v29;
  v18 = v32;
  sub_1B0E443E8();
  v19 = *(v35 + 8);
  v35 += 8;
  v20 = v31;
  v19(v16, v31);
  v21 = v33;
  MEMORY[0x1B2727D90](v17, v18, v33, ObjectType);

  _Block_release(v26);
  v22 = sub_1B0E44208();
  v23 = *(*(v22 - 8) + 8);
  v23(v21, v22);
  v23(v18, v22);
  v19(v17, v20);
  result = v34;
  *(v34 + 32) = v25;
  *(result + 16) = v14;
  *(result + 24) = 1;
  return result;
}

uint64_t _s15IMAP2Connection0B5StateO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnauthenticatedStateWithTasks(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v47 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B0E43DF8();
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v46 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v46 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5478, &unk_1B0ED2770);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = (&v46 + *(v22 + 56) - v21);
  v24 = a1;
  v25 = &v46 - v21;
  sub_1B038CA0C(v24, &v46 - v21, type metadata accessor for ConnectionState);
  sub_1B038CA0C(a2, v23, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          goto LABEL_25;
        }
      }

      else if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_25;
      }

LABEL_29:
      sub_1B0398EFC(v25, &qword_1EB6E5478, &unk_1B0ED2770);
LABEL_30:
      v28 = 0;
      return v28 & 1;
    }

    sub_1B038CA0C(v25, v10, type metadata accessor for ConnectionState);
    v30 = *v10;
    v29 = v10[1];
    v31 = v10[2];
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      sub_1B0BD1488(v30, v29, v31);
      goto LABEL_29;
    }

    v32 = *v23;
    v33 = v23[1];
    v34 = v23[2];
    if (v31 > 1)
    {
      if (v31 == 2)
      {
        if (v34 == 2)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v31 != 3)
        {
          goto LABEL_39;
        }

        if (v34 == 3)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      if (v31)
      {
        if (v31 == 1)
        {
          if (v34 == 1)
          {
            goto LABEL_25;
          }

          goto LABEL_44;
        }

LABEL_39:
        if (v34 >= 4)
        {
          v42 = *v23;
          v43 = v23[1];
          v44 = v23[2];
          v45 = static ResponseText.__derived_struct_equals(_:_:)(v30, v29, v31, v42, v43, v44);
          sub_1B0BD1488(v42, v43, v44);
          sub_1B0BD1488(v30, v29, v31);
          if ((v45 & 1) == 0)
          {
            goto LABEL_45;
          }

          goto LABEL_25;
        }

        sub_1B0BD1488(v32, v33, v34);
        v32 = v30;
        v33 = v29;
        v34 = v31;
        goto LABEL_44;
      }

      if (!v34)
      {
        goto LABEL_25;
      }
    }

LABEL_44:
    sub_1B0BD1488(v32, v33, v34);
    goto LABEL_45;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1B038CA0C(v25, v19, type metadata accessor for ConnectionState);
    if (!swift_getEnumCaseMultiPayload())
    {
      v37 = v48;
      v38 = v46;
      v39 = v23;
      v40 = v49;
      (*(v48 + 32))(v46, v39, v49);
      v28 = MEMORY[0x1B2725F00](v19, v38);
      v41 = *(v37 + 8);
      v41(v38, v40);
      v41(v19, v40);
      goto LABEL_34;
    }

    (*(v48 + 8))(v19, v49);
    goto LABEL_29;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1B038CA0C(v25, v16, type metadata accessor for ConnectionState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v27 = v47;
      sub_1B04478FC(v23, v47, type metadata accessor for UnauthenticatedStateWithTasks);
      v28 = _s15IMAP2Connection29UnauthenticatedStateWithTasksV2eeoiySbAC_ACtFZ_0(v16, v27);
      sub_1B038C704(v27, type metadata accessor for UnauthenticatedStateWithTasks);
      sub_1B038C704(v16, type metadata accessor for UnauthenticatedStateWithTasks);
LABEL_34:
      sub_1B038C704(v25, type metadata accessor for ConnectionState);
      return v28 & 1;
    }

    sub_1B038C704(v16, type metadata accessor for UnauthenticatedStateWithTasks);
    goto LABEL_29;
  }

  sub_1B038CA0C(v25, v13, type metadata accessor for ConnectionState);
  memcpy(v51, v13, sizeof(v51));
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1B0BE278C(v51);
    goto LABEL_29;
  }

  memcpy(v50, v23, sizeof(v50));
  if ((sub_1B0BE5360(*v51, *v50) & 1) == 0 || (v56[8] = *&v51[136], v56[9] = *&v51[152], v56[10] = *&v51[168], v56[4] = *&v51[72], v56[5] = *&v51[88], v56[7] = *&v51[120], v56[6] = *&v51[104], v56[0] = *&v51[8], v56[1] = *&v51[24], v56[3] = *&v51[56], v56[2] = *&v51[40], v57[8] = *&v50[136], v57[9] = *&v50[152], v57[10] = *&v50[168], v57[4] = *&v50[72], v57[5] = *&v50[88], v57[7] = *&v50[120], v57[6] = *&v50[104], v57[0] = *&v50[8], v57[1] = *&v50[24], v57[3] = *&v50[56], v57[2] = *&v50[40], (static ServerID.__derived_struct_equals(_:_:)(v56, v57) & 1) == 0) || (sub_1B038F0C4(*&v51[184], *&v50[184]) & 1) == 0)
  {
    sub_1B0BE278C(v50);
    sub_1B0BE278C(v51);
LABEL_45:
    sub_1B038C704(v25, type metadata accessor for ConnectionState);
    goto LABEL_30;
  }

  v52[8] = *&v51[320];
  v52[9] = *&v51[336];
  v53 = *&v51[352];
  v52[4] = *&v51[256];
  v52[5] = *&v51[272];
  v52[6] = *&v51[288];
  v52[7] = *&v51[304];
  v52[0] = *&v51[192];
  v52[1] = *&v51[208];
  v52[2] = *&v51[224];
  v52[3] = *&v51[240];
  v54[8] = *&v50[320];
  v54[9] = *&v50[336];
  v55 = *&v50[352];
  v54[4] = *&v50[256];
  v54[5] = *&v50[272];
  v54[7] = *&v50[304];
  v54[6] = *&v50[288];
  v54[0] = *&v50[192];
  v54[1] = *&v50[208];
  v54[2] = *&v50[224];
  v54[3] = *&v50[240];
  v35 = sub_1B0BF4164(v52, v54);
  sub_1B0BE278C(v50);
  sub_1B0BE278C(v51);
  if ((v35 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_25:
  sub_1B038C704(v25, type metadata accessor for ConnectionState);
  v28 = 1;
  return v28 & 1;
}

uint64_t sub_1B0423148()
{
  v1 = sub_1B0E44238();
  v52 = *(v1 - 8);
  v53 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v50 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1B0E44288();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v48 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = _s6LoggerVMa_0(0);
  v46 = *(v44 - 8);
  v4 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v44 - v6;
  v8 = sub_1B0E43DF8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  v54 = v0;
  sub_1B0E43E18();
  (*(v9 + 104))(v11, *MEMORY[0x1E6977C08], v8);
  v15 = MEMORY[0x1B2725F00](v14, v11);
  v16 = *(v9 + 8);
  v16(v11, v8);
  result = (v16)(v14, v8);
  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5520, &qword_1B0ED0CE8);
    v18 = swift_allocBox();
    (*(v9 + 56))(v19, 1, 1, v8);
    v20 = swift_allocObject();
    v21 = v54;
    swift_weakInit();
    v22 = v21 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger;
    v45 = _s6LoggerVMa_0;
    sub_1B03FD208(v21 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, v7, _s6LoggerVMa_0);
    v23 = (*(v46 + 80) + 16) & ~*(v46 + 80);
    v24 = (v4 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    sub_1B0423D50(v7, v25 + v23, _s6LoggerVMa_0);
    *(v25 + v24) = v20;
    *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;

    sub_1B0423B38(sub_1B044EF48, v25);
    sub_1B0E43D68();

    v26 = swift_allocObject();
    swift_weakInit();

    sub_1B0423B38(sub_1B042581C, v26);
    sub_1B0E43CF8();

    v27 = swift_allocObject();
    swift_weakInit();

    sub_1B0423B38(sub_1B0455E58, v27);
    sub_1B0E43D78();

    v28 = swift_allocObject();
    swift_weakInit();

    sub_1B0423B38(sub_1B0BEFC74, v28);
    sub_1B0E43D88();

    v29 = v47;
    sub_1B03FD208(v22, v47, v45);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v30 = sub_1B0E43988();
    v31 = sub_1B0E439A8();
    (*(*(v31 - 8) + 8))(v29, v31);
    v32 = sub_1B0E45908();
    if (os_log_type_enabled(v30, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock[0] = v34;
      *v33 = 68158210;
      *(v33 + 4) = 2;
      *(v33 + 8) = 256;
      v35 = v22 + *(v44 + 20);
      *(v33 + 10) = *v35;

      *(v33 + 11) = 2082;
      v36 = ConnectionID.debugDescription.getter(*(v35 + 4));
      v38 = sub_1B0399D64(v36, v37, aBlock);

      *(v33 + 13) = v38;
      _os_log_impl(&dword_1B0389000, v30, v32, "[%.*hhx-%{public}s] Starting", v33, 0x15u);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      MEMORY[0x1B272C230](v34, -1, -1);
      MEMORY[0x1B272C230](v33, -1, -1);
    }

    else
    {
    }

    sub_1B0E43E08();
    v39 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1B042578C;
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B038C908;
    aBlock[3] = &block_descriptor_26;
    v40 = _Block_copy(aBlock);

    v41 = v48;
    sub_1B0E44258();
    v55 = MEMORY[0x1E69E7CC0];
    sub_1B0422494(&qword_1EB6DEE50, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1880, &unk_1B0E99EA0);
    sub_1B039E3F8(&qword_1EB6DEE20, &qword_1EB6E1880, &unk_1B0E99EA0, MEMORY[0x1E69E6328]);
    v42 = v50;
    v43 = v53;
    sub_1B0E460A8();
    MEMORY[0x1B2727B00](0, v41, v42, v40);
    _Block_release(v40);
    (*(v52 + 8))(v42, v43);
    (*(v49 + 8))(v41, v51);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0423A08()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1B0423A40()
{
  v1 = *(_s6LoggerVMa_0(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_1B0E439A8();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1B0423B38(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B0423B48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0423BB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0423C18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0423C80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0423CE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0423D50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0423DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_1B0E44118();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_1B0E46138();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_1B0E46138();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

Swift::Void __swiftcall StateWithTasks.logForDidCreateFirstConnection()()
{
  v1 = 0;
  v162 = type metadata accessor for StateWithTasks(0);
  MEMORY[0x1EEE9AC00](v162);
  v158 = &v143 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v172 = &v143 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v143 - v6;
  v159 = type metadata accessor for State.Logger(0);
  MEMORY[0x1EEE9AC00](v159);
  v157 = &v143 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v143 - v10;
  v163 = v0;
  v12 = *(v0 + 64);
  *&v177 = MEMORY[0x1E69E7CD0];
  v13 = 1 << *(v12 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v12 + 64);
  v16 = (v13 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v161 = 0;
  if (v15)
  {
    while (1)
    {
      v17 = v1;
LABEL_9:
      v18 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      sub_1B03FFC1C(&v175, *(*(v12 + 56) + ((v17 << 11) | (32 * v18))));
      if (!v15)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v17 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
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
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
      return;
    }

    if (v17 >= v16)
    {
      break;
    }

    v15 = *(v12 + 64 + 8 * v17);
    ++v1;
    if (v15)
    {
      v1 = v17;
      goto LABEL_9;
    }
  }

  v19 = v177;
  v20 = v162;
  v21 = v163;
  v160 = *(v162 + 28);
  sub_1B0390720(v163 + v160, v11, type metadata accessor for State.Logger);
  sub_1B0390720(v21, v7, type metadata accessor for StateWithTasks);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v22 = v172;
  sub_1B0390720(v21, v172, type metadata accessor for StateWithTasks);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v23 = sub_1B0E43988();
  v24 = sub_1B0E439A8();
  v25 = *(v24 - 8);
  v155 = *(v25 + 8);
  v156 = v24;
  v154 = v25 + 8;
  v155(v11);
  v26 = sub_1B0E45908();

  v171 = v23;
  if (os_log_type_enabled(v23, v26))
  {
    v27 = swift_slowAlloc();
    LODWORD(v169) = v26;
    v28 = v27;
    v170 = swift_slowAlloc();
    *&v177 = v170;
    *v28 = 68158978;
    *(v28 + 4) = 2;
    *(v28 + 8) = 256;
    v29 = v7[*(v20 + 28) + *(v159 + 20)];
    v168 = type metadata accessor for StateWithTasks;
    sub_1B0390574(v7, type metadata accessor for StateWithTasks);
    *(v28 + 10) = v29;
    *(v28 + 11) = 2048;
    *(v28 + 13) = *(v12 + 16);

    *(v28 + 21) = 2082;
    v30 = v161;
    v31 = sub_1B0424F24(v12);
    v167 = v30;
    v175 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    sub_1B039E3F8(&qword_1EB6DB070, &qword_1EB6E2A70, &qword_1B0E9B5F0, MEMORY[0x1E69E6310]);
    v32 = sub_1B0E448E8();
    v34 = v33;

    v35 = sub_1B0399D64(v32, v34, &v177);

    *(v28 + 23) = v35;
    *(v28 + 31) = 2082;
    v36 = v167;
    v37 = sub_1B04252E0(v19);
    v161 = v36;

    v175 = v37;
    v21 = v163;
    v38 = sub_1B0E448E8();
    v40 = v39;

    v41 = sub_1B0399D64(v38, v40, &v177);

    *(v28 + 33) = v41;
    *(v28 + 41) = 2082;
    if (*(v172 + 25))
    {
      v42 = 0x756F72676B636162;
    }

    else
    {
      v42 = 0x656C6269736976;
    }

    if (*(v172 + 25))
    {
      v43 = 0xEC0000006465646ELL;
    }

    else
    {
      v43 = 0xE700000000000000;
    }

    sub_1B0390574(v172, v168);
    v44 = sub_1B0399D64(v42, v43, &v177);

    *(v28 + 43) = v44;
    v45 = v171;
    _os_log_impl(&dword_1B0389000, v171, v169, "[%.*hhx] [1st connection] Running sync requests %ld: {%{public}s}, kinds: %{public}s; App state: %{public}s", v28, 0x33u);
    v46 = v170;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v46, -1, -1);
    MEMORY[0x1B272C230](v28, -1, -1);
  }

  else
  {
    sub_1B0390574(v7, type metadata accessor for StateWithTasks);

    swift_bridgeObjectRelease_n();
    sub_1B0390574(v22, type metadata accessor for StateWithTasks);
  }

  if (*(v21 + 192) == 1)
  {
    v47 = *(v21 + 168);
    v48 = sub_1B0398D1C();
    v51 = sub_1B0BC9560(v48, v50, v49 & 1);
    v53 = v52;
    v55 = v54;
    v56 = *(v21 + *(v162 + 32));
    *(v189 + 12) = *(v21 + 228);
    v57 = *(v21 + 216);
    v188[2] = *(v21 + 200);
    v189[0] = v57;
    v58 = *(v21 + 184);
    v188[0] = *(v21 + 168);
    v188[1] = v58;
    sub_1B03A3668(v188, &v177);
    v165 = v55;
    sub_1B0BCC328(v51, v53, v55, v21 + v160, v56, v188);
    sub_1B03AD10C(v188);
    v60 = v53;
    v171 = *(v47 + 16);
    v172 = v47;
    if (v171)
    {
      v166 = 0;
      v61 = 0;
      v170 = v172 + 32;
      v62 = (v53 + 32);
      v164 = v165 + 32;
      *&v59 = 68160515;
      v147 = v59;
      v168 = (v53 + 32);
      v169 = v53;
      while (1)
      {
        if (v61 >= *(v172 + 16))
        {
          goto LABEL_117;
        }

        v63 = (v170 + 176 * v61);
        v64 = *v63;
        v65 = v63[2];
        v178 = v63[1];
        v179 = v65;
        v177 = v64;
        v66 = v63[3];
        v67 = v63[4];
        v68 = v63[6];
        v182 = v63[5];
        v183 = v68;
        v180 = v66;
        v181 = v67;
        v69 = v63[7];
        v70 = v63[8];
        v71 = v63[10];
        v186 = v63[9];
        v187 = v71;
        v184 = v69;
        v185 = v70;
        v72 = v178;
        v73 = DWORD2(v178);
        v74 = DWORD1(v182);
        v75 = BYTE8(v182);
        v61 = (v61 + 1);
        v76 = *(v60 + 16);
        if (v51)
        {
          sub_1B0BA7CA4(v178, DWORD2(v178), v62, v76, (v51 + 16), v51 + 32);
          if ((v77 & 1) == 0)
          {
            LODWORD(v167) = v74;
            v78 = 0;
            v76 = *(v60 + 16);
            goto LABEL_57;
          }
        }

        else if (v76)
        {
          for (i = 0; i != v76; ++i)
          {
            v80 = (v62 + 16 * i);
            if ((v80[2] | (v80[2] << 32)) == (DWORD2(v178) | (DWORD2(v178) << 32)))
            {
              v81 = *v80;
              v82 = *(*v80 + 16);
              if (v82 == *(v178 + 16))
              {
                if (!v82 || v81 == v178)
                {
LABEL_40:
                  LODWORD(v167) = DWORD1(v182);
                  v78 = 0;
                  goto LABEL_41;
                }

                v83 = (v81 + 32);
                v84 = (v178 + 32);
                while (*v83 == *v84)
                {
                  ++v83;
                  ++v84;
                  if (!--v82)
                  {
                    goto LABEL_40;
                  }
                }
              }
            }
          }
        }

        if (v166 > 7)
        {
          goto LABEL_25;
        }

        LODWORD(v167) = v74;
        v76 = *(v60 + 16);
        v78 = 1;
        if (!v51)
        {
LABEL_41:
          if (!v76)
          {
            goto LABEL_58;
          }

          v85 = 0;
          while (1)
          {
            v86 = (v62 + 16 * v85);
            if ((v86[2] | (v86[2] << 32)) == (v73 | (v73 << 32)))
            {
              v87 = *v86;
              v88 = *(*v86 + 16);
              if (v88 == *(v72 + 16))
              {
                break;
              }
            }

LABEL_43:
            if (++v85 == v76)
            {
              goto LABEL_58;
            }
          }

          if (v88)
          {
            v89 = v87 == v72;
          }

          else
          {
            v89 = 1;
          }

          if (!v89)
          {
            v90 = (v87 + 32);
            v91 = (v72 + 32);
            while (v88)
            {
              if (*v90 != *v91)
              {
                goto LABEL_43;
              }

              ++v90;
              ++v91;
              if (!--v88)
              {
                goto LABEL_60;
              }
            }

            goto LABEL_116;
          }

          goto LABEL_60;
        }

LABEL_57:
        v92 = sub_1B0BA7CA4(v72, v73, v62, v76, (v51 + 16), v51 + 32);
        if (v93)
        {
LABEL_58:
          sub_1B03A35B8(&v177, &v175);
          v94 = 63740;
          goto LABEL_62;
        }

        v85 = v92;

        if ((v85 & 0x8000000000000000) != 0)
        {
          goto LABEL_118;
        }

LABEL_60:
        if (v85 >= *(v165 + 16))
        {
          goto LABEL_119;
        }

        v94 = *(v164 + 2 * v85);
        sub_1B03A35B8(&v177, &v175);

LABEL_62:
        v95 = BYTE12(v183);
        v96 = *(*(&v185 + 1) + 16);
        v97 = *(v186 + 16) != 0;
        v98 = *(*(&v186 + 1) + 16) != 0;
        if (v75)
        {
          if (v96 == 0 && *(v186 + 16) == 0 && *(*(&v186 + 1) + 16) == 0)
          {
            if ((v78 & 1) == 0)
            {
              LODWORD(v167) = v78;
              v99 = __OFADD__(v166++, 1);
              if (v99)
              {
                goto LABEL_121;
              }

              v97 = 0;
              v98 = 0;
              v152 = 0;
LABEL_78:
              v148 = v94;
              v149 = *(&v185 + 1);
              v150 = v95;
              v151 = v185;
              v145 = DWORD2(v183);
              v146 = *(&v184 + 1);
              v102 = 0;
              v101 = 0xE000000000000000;
              goto LABEL_79;
            }

            goto LABEL_24;
          }

          goto LABEL_74;
        }

        if (BYTE12(v183))
        {
          if (v96 == 0 && *(v186 + 16) == 0 && *(*(&v186 + 1) + 16) == 0)
          {
            if (!v78)
            {
              LODWORD(v167) = 0;
              v99 = __OFADD__(v166++, 1);
              if (v99)
              {
                goto LABEL_122;
              }

              v97 = 0;
              v98 = 0;
              v95 = 1;
              v152 = 1;
              goto LABEL_78;
            }

            goto LABEL_24;
          }

          v95 = 1;
LABEL_74:
          v100 = v75 ^ 1;
LABEL_75:
          v99 = __OFADD__(v166++, 1);
          if (v99)
          {
            goto LABEL_120;
          }

          LODWORD(v167) = v78;
          v152 = v100;
          if (!v96)
          {
            goto LABEL_78;
          }

          v148 = v94;
          v149 = *(&v185 + 1);
          v150 = v95;
          v151 = v185;
          v145 = DWORD2(v183);
          v146 = *(&v184 + 1);
          v101 = 0xE100000000000000;
          v102 = 82;
LABEL_79:
          v103 = !v97;
          v104 = 68;
          if (v103)
          {
            v104 = 0;
          }

          v153 = v104;
          if (v103)
          {
            v105 = 0xE000000000000000;
          }

          else
          {
            v105 = 0xE100000000000000;
          }

          v175 = v102;
          v176 = v101;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          MEMORY[0x1B2726E80](v153, v105);

          v106 = 83;
          if (!v98)
          {
            v106 = 0;
          }

          v153 = v106;
          if (v98)
          {
            v107 = 0xE100000000000000;
          }

          else
          {
            v107 = 0xE000000000000000;
          }

          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          MEMORY[0x1B2726E80](v153, v107);

          v108 = 76;
          if (v152)
          {
            v108 = 0;
          }

          v153 = v108;
          if (v152)
          {
            v109 = 0xE000000000000000;
          }

          else
          {
            v109 = 0xE100000000000000;
          }

          v110 = 0xE100000000000000;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          MEMORY[0x1B2726E80](v153, v109);

          if (v167)
          {
            v111 = 0;
          }

          else
          {
            v111 = 42;
          }

          if (v167)
          {
            v110 = 0xE000000000000000;
          }

          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          MEMORY[0x1B2726E80](v111, v110);

          v112 = v176;
          v167 = v175;
          v113 = v163;
          v114 = v157;
          sub_1B0390720(v163 + v160, v157, type metadata accessor for State.Logger);
          v115 = v158;
          sub_1B0390720(v113, v158, type metadata accessor for StateWithTasks);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B03A35B8(&v177, &v175);
          sub_1B03A35B8(&v177, &v175);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B03A35B8(&v177, &v175);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v116 = sub_1B0E43988();
          (v155)(v114, v156);
          v117 = sub_1B0E45908();

          sub_1B03A3614(&v177);
          sub_1B03A3614(&v177);
          if (os_log_type_enabled(v116, v117))
          {
            v152 = v117;
            v153 = v116;
            v118 = swift_slowAlloc();
            v119 = swift_slowAlloc();
            v143 = v112;
            v144 = v119;
            v174 = v119;
            *v118 = v147;
            *(v118 + 4) = 2;
            *(v118 + 8) = 256;
            v120 = *(v115 + *(v162 + 28) + *(v159 + 20));
            sub_1B0390574(v115, type metadata accessor for StateWithTasks);
            *(v118 + 10) = v120;
            *(v118 + 11) = 2048;
            *(v118 + 13) = v166;
            *(v118 + 21) = 1040;
            *(v118 + 23) = 2;
            *(v118 + 27) = 512;
            *(v118 + 29) = WORD6(v187);
            sub_1B03A3614(&v177);
            *(v118 + 31) = 2160;
            *(v118 + 33) = 0x786F626C69616DLL;
            *(v118 + 41) = 2085;
            v175 = v72;
            LODWORD(v176) = v73;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v121 = sub_1B0E44BA8();
            v123 = sub_1B0399D64(v121, v122, &v174);

            *(v118 + 43) = v123;
            *(v118 + 51) = 2082;
            v124 = sub_1B0399D64(v167, v143, &v174);

            *(v118 + 53) = v124;
            *(v118 + 61) = 2082;
            if ((~v148 & 0xF8FC) != 0)
            {
              v126 = sub_1B0425504(v148);
              v125 = v127;
            }

            else
            {
              v125 = 0xE100000000000000;
              v126 = 47;
            }

            v128 = sub_1B0399D64(v126, v125, &v174);

            *(v118 + 63) = v128;
            *(v118 + 71) = 2082;
            v129 = v161;
            v130 = sub_1B0BA7198(v149);
            v161 = v129;
            v175 = v130;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
            sub_1B039E3F8(&qword_1EB6DB070, &qword_1EB6E2A70, &qword_1B0E9B5F0, MEMORY[0x1E69E6310]);
            v131 = 0xE100000000000000;
            v132 = sub_1B0E448E8();
            v134 = v133;

            v135 = sub_1B0399D64(v132, v134, &v174);

            *(v118 + 73) = v135;
            *(v118 + 81) = 2082;
            if (v150)
            {
              v136 = 47;
            }

            else
            {
              v175 = 0;
              v176 = 0xE000000000000000;
              v173[0] = v145;
              sub_1B0E46508();
              v136 = v175;
              v131 = v176;
            }

            v137 = sub_1B0399D64(v136, v131, &v174);

            *(v118 + 83) = v137;
            *(v118 + 91) = 2082;
            if (v151)
            {
              v138 = 0xE100000000000000;
              v139 = 47;
            }

            else
            {
              v175 = v146;
              v139 = sub_1B0E469C8();
              v138 = v140;
            }

            v141 = sub_1B0399D64(v139, v138, &v174);

            *(v118 + 93) = v141;
            v116 = v153;
            _os_log_impl(&dword_1B0389000, v153, v152, "[%.*hhx] {%ld} [1st connection] Mailbox: {%.*hx} '%{sensitive,mask.mailbox}s' %{public}s, %{public}s, {%{public}s} last sync:  {local: %{public}s, remote: %{public}s}", v118, 0x65u);
            v142 = v144;
            swift_arrayDestroy();
            MEMORY[0x1B272C230](v142, -1, -1);
            MEMORY[0x1B272C230](v118, -1, -1);
          }

          else
          {
            sub_1B0390574(v115, type metadata accessor for StateWithTasks);
            sub_1B03A3614(&v177);
          }

          sub_1B03A3614(&v177);
          v62 = v168;
          v60 = v169;
          if (v61 == v171)
          {
            break;
          }
        }

        else
        {
          if (v96 != 0 || *(v186 + 16) != 0 || *(*(&v186 + 1) + 16) != 0 || (v78 & 1) == 0)
          {
            v95 = 0;
            v100 = DWORD2(v183) < v167;
            goto LABEL_75;
          }

LABEL_24:
          sub_1B03A3614(&v177);
          v62 = v168;
          v60 = v169;
LABEL_25:
          if (v61 == v171)
          {
            break;
          }
        }
      }
    }
  }
}

uint64_t sub_1B0424F24(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v30 = MEMORY[0x1E69E7CC0];
    sub_1B041D32C(0, v2, 0);
    v4 = v30;
    v5 = v1 + 64;
    result = sub_1B0E460B8();
    v6 = result;
    v7 = 0;
    v25 = v1 + 72;
    v26 = v2;
    v27 = v1 + 64;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      v28 = v7;
      v29 = *(v1 + 36);
      result = sub_1B0E469C8();
      v10 = result;
      v12 = v11;
      v13 = v4;
      v31 = v4;
      v14 = v1;
      v16 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_1B041D32C((v15 > 1), v16 + 1, 1);
        v13 = v31;
      }

      *(v13 + 16) = v16 + 1;
      v17 = v13 + 16 * v16;
      *(v17 + 32) = v10;
      *(v17 + 40) = v12;
      v8 = 1 << *(v14 + 32);
      if (v6 >= v8)
      {
        goto LABEL_23;
      }

      v5 = v27;
      v18 = *(v27 + 8 * v9);
      if ((v18 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v14;
      v4 = v13;
      if (v29 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v19 = v18 & (-2 << (v6 & 0x3F));
      if (v19)
      {
        v8 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v9 << 6;
        v21 = v9 + 1;
        v22 = (v25 + 8 * v9);
        while (v21 < (v8 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_1B0425168(v6, v29, 0);
            v8 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        result = sub_1B0425168(v6, v29, 0);
      }

LABEL_4:
      v7 = v28 + 1;
      v6 = v8;
      if (v28 + 1 == v26)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0425168(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

char *sub_1B0425174(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = sub_1B03B7A3C(v4, v6);
  if (v7)
  {
    sub_1B06BCC28((a4 + 32), v4, v5 + 32);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    *(a4 + 16) = 0;
  }

  else
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    sub_1B03B0648((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

uint64_t sub_1B04252E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  sub_1B041D32C(0, v1, 0);
  v2 = v26;
  v25 = a1 + 56;
  result = sub_1B0E460B8();
  v5 = result;
  v6 = 0;
  v24 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v25 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    result = SyncRequest.Kind.description.getter(*(*(a1 + 48) + v5));
    v13 = *(v26 + 16);
    v12 = *(v26 + 24);
    if (v13 >= v12 >> 1)
    {
      v22 = v11;
      v23 = result;
      sub_1B041D32C((v12 > 1), v13 + 1, 1);
      v11 = v22;
      result = v23;
    }

    *(v26 + 16) = v13 + 1;
    v14 = v26 + 16 * v13;
    *(v14 + 32) = result;
    *(v14 + 40) = v11;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v15 = *(v25 + 8 * v9);
    if ((v15 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v5 & 0x3F));
    if (v16)
    {
      v7 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v24;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v8 = v24;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v7 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1B0425168(v5, v10, 0);
          v7 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_1B0425168(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
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

uint64_t sub_1B0425504(unsigned __int16 a1)
{
  if ((a1 >> 14) <= 1u)
  {
    if (!(a1 >> 14))
    {
      sub_1B0E46298();
      MEMORY[0x1B2726E80](0xD000000000000016, 0x80000001B0F2C2F0);
      sub_1B0E46508();
      MEMORY[0x1B2726E80](8236, 0xE200000000000000);
      v1 = sub_1B0E44BA8();
      MEMORY[0x1B2726E80](v1);

LABEL_8:
      MEMORY[0x1B2726E80](41, 0xE100000000000000);
      return 0;
    }

    sub_1B0E46298();
    v3 = 0x80000001B0F2C2D0;
    v2 = 0xD000000000000014;
LABEL_7:
    MEMORY[0x1B2726E80](v2, v3);
    sub_1B0E46508();
    goto LABEL_8;
  }

  if (a1 >> 14 == 2)
  {
    v2 = 0x6154657669746361;
    v3 = 0xEB00000000286B73;
    goto LABEL_7;
  }

  v5 = 0x6973695672657375;
  v6 = 0x6E7953736465656ELL;
  if (a1 != 49154)
  {
    v6 = 0x797469726F697270;
  }

  if (a1 != 49152)
  {
    v5 = 0x7953657669746361;
  }

  if (a1 <= 0xC001u)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_1B04257B8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC15IMAP2Connection10Connection_lastMessageTime) = static MonotonicTime.now()();
  }

  return result;
}

uint64_t sub_1B042584C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(a1);
  }

  return result;
}

uint64_t sub_1B04258C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5810, &unk_1B0ED8630);
  v1 = v0 - 8;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - v2;
  v4 = sub_1B0E44158();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B0E44188();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0E44198();
  sub_1B0E44168();
  v12 = *(v1 + 56);
  (*(v9 + 32))(v3, v11, v8);
  (*(v5 + 32))(&v3[v12], v7, v4);
  v13 = (*(v9 + 88))(v3, v8);
  if (v13 == *MEMORY[0x1E6977D40])
  {
    (*(v5 + 8))(&v3[v12], v4);
    return 0x6569667369746173;
  }

  else if (v13 == *MEMORY[0x1E6977D30])
  {
    v15 = (*(v5 + 88))(&v3[v12], v4);
    if (v15 == *MEMORY[0x1E6977D10])
    {
      return 0x6C69617641746F6ELL;
    }

    else if (v15 == *MEMORY[0x1E6977D18])
    {
      return 0x72616C756C6C6563;
    }

    else if (v15 == *MEMORY[0x1E6977D00])
    {
      return 0x696E654469666977;
    }

    else if (v15 == *MEMORY[0x1E6977CF8])
    {
      return 0xD000000000000012;
    }

    else if (v15 == *MEMORY[0x1E6977D08])
    {
      return 0x7463616E496E7076;
    }

    else
    {
      (*(v5 + 8))(&v3[v12], v4);
      return 0x6673697461736E75;
    }
  }

  else if (v13 == *MEMORY[0x1E6977D38])
  {
    (*(v5 + 8))(&v3[v12], v4);
    return 0xD000000000000012;
  }

  else
  {
    sub_1B0398EFC(v3, &qword_1EB6E5810, &unk_1B0ED8630);
    return 63;
  }
}

uint64_t sub_1B0425CC8()
{
  v0 = sub_1B0E43BD8();
  v42 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v41 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v41 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5808, &qword_1B0ED8628);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v41 - v13;
  v15 = sub_1B0E43C38();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0E43C48();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1B0398EFC(v14, &qword_1EB6E5808, &qword_1B0ED8628);
    sub_1B0E43BF8();
    v19 = v42;
    (*(v42 + 16))(v2, v5, v0);
    v20 = (*(v19 + 88))(v2, v0);
    v21 = v0;
    if (v20 == *MEMORY[0x1E6977B48])
    {
      v22 = 0x726568746FLL;
      (*(v19 + 8))(v5, v0);
    }

    else if (v20 == *MEMORY[0x1E6977B40])
    {
      v22 = 1768319351;
      (*(v19 + 8))(v5, v0);
    }

    else if (v20 == *MEMORY[0x1E6977B50])
    {
      v22 = 0x72616C756C6C6563;
      (*(v19 + 8))(v5, v0);
    }

    else if (v20 == *MEMORY[0x1E6977B38])
    {
      v22 = 0x6874456465726977;
      (*(v19 + 8))(v5, v0);
    }

    else
    {
      v30 = *MEMORY[0x1E6977B58];
      v31 = *(v19 + 8);
      v32 = v20;
      v33 = v21;
      v31(v5);
      if (v32 == v30)
      {
        return 0x6B636162706F6F6CLL;
      }

      else
      {
        v22 = 0x6E776F6E6B6E75;
        (v31)(v2, v33);
      }
    }
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_1B0E43BF8();
    v23 = v42;
    (*(v42 + 16))(v8, v11, v0);
    v24 = (*(v23 + 88))(v8, v0);
    v25 = v0;
    v26 = v11;
    if (v24 == *MEMORY[0x1E6977B48])
    {
      v27 = v16;
      v28 = 0x726568746FLL;
      (*(v23 + 8))(v26, v25);
      v29 = 0xE500000000000000;
    }

    else if (v24 == *MEMORY[0x1E6977B40])
    {
      v27 = v16;
      v28 = 1768319351;
      (*(v23 + 8))(v26, v25);
      v29 = 0xE400000000000000;
    }

    else
    {
      v27 = v16;
      if (v24 == *MEMORY[0x1E6977B50])
      {
        v28 = 0x72616C756C6C6563;
        (*(v23 + 8))(v26, v25);
        v29 = 0xE800000000000000;
      }

      else if (v24 == *MEMORY[0x1E6977B38])
      {
        v28 = 0x6874456465726977;
        (*(v23 + 8))(v26, v25);
        v29 = 0xED000074656E7265;
      }

      else
      {
        v34 = v25;
        v35 = v18;
        v36 = *MEMORY[0x1E6977B58];
        v37 = *(v23 + 8);
        v38 = v24;
        v37(v26);
        if (v38 == v36)
        {
          v28 = 0x6B636162706F6F6CLL;
          v29 = 0xE800000000000000;
        }

        else
        {
          v28 = 0x6E776F6E6B6E75;
          (v37)(v8, v34);
          v29 = 0xE700000000000000;
        }

        v18 = v35;
      }
    }

    MEMORY[0x1B2726E80](v28, v29);

    MEMORY[0x1B2726E80](45, 0xE100000000000000);
    v39 = sub_1B0C1A4FC();
    MEMORY[0x1B2726E80](v39);

    v22 = v43;
    (*(v27 + 8))(v18, v15);
  }

  return v22;
}

void sub_1B0426318(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B0E44468();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + 24);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4, v6);
  v10 = v9;
  LOBYTE(v9) = sub_1B0E44488();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v11 = static MonotonicTime.now()();
    swift_beginAccess();
    sub_1B044540C(v11, a1);
    swift_endAccess();
    v12 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_enqueuedEvents;
    swift_beginAccess();
    if (*(v2 + v12))
    {
      v13 = *(a1 + 16);
      if (v13)
      {
        v14 = *(type metadata accessor for ConnectionEvent(0) - 8);
        v15 = (a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80)));
        v16 = *(v14 + 72);
        do
        {
          sub_1B0426594(v15);
          v15 += v16;
          --v13;
        }

        while (v13);
      }
    }

    else
    {
      *(v2 + v12) = MEMORY[0x1E69E7CC0];
      v17 = *(a1 + 16);
      if (v17)
      {
        v18 = *(type metadata accessor for ConnectionEvent(0) - 8);
        v19 = (a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80)));
        v20 = *(v18 + 72);
        do
        {
          sub_1B0426594(v19);
          v19 += v20;
          --v17;
        }

        while (v17);
      }

      sub_1B044DBD8();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B0426594(char *a1)
{
  v418 = a1;
  v402 = type metadata accessor for ConnectionConfiguration(0);
  MEMORY[0x1EEE9AC00](v402);
  v410 = (&v385 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v417 = type metadata accessor for UntaggedResponse(0);
  MEMORY[0x1EEE9AC00](v417);
  v416 = &v385 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v404 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v404);
  v409 = &v385 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v411 = &v385 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v413 = &v385 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v406 = &v385 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v405 = &v385 - v11;
  v397 = sub_1B0E441D8();
  v398 = *(v397 - 8);
  MEMORY[0x1EEE9AC00](v397);
  v386 = &v385 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v387 = &v385 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v390 = &v385 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v396 = &v385 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v399 = &v385 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v392 = &v385 - v22;
  v412 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v412);
  v403 = &v385 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v401 = &v385 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v408 = &v385 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v407 = &v385 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v395 = &v385 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v400 = &v385 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v394 = &v385 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v393 = &v385 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v415 = (&v385 - v39);
  MEMORY[0x1EEE9AC00](v40);
  v385 = &v385 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v388 = &v385 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v391 = &v385 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v389 = &v385 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v385 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v385 - v52;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v385 - v55;
  v57 = type metadata accessor for ConnectionEvent.FailureReason(0);
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v385 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v385 - v61;
  v63 = sub_1B0E43DF8();
  v414 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v385 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for ConnectionEvent(0);
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v385 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B038C9A4(v418, v68, type metadata accessor for ConnectionEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v408 = v56;
    v409 = v53;
    v83 = v415;
    v410 = v59;
    v418 = v62;
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v84 = v414;
        (*(v414 + 32))(v65, v68, v63);
        sub_1B0BDDD9C(v65);
        return (*(v84 + 8))(v65, v63);
      }

      v113 = v418;
      sub_1B038CB4C(v68, v418, type metadata accessor for ConnectionEvent.FailureReason);
      v114 = v419;
      v115 = *(v419 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
      v116 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands;
      swift_beginAccess();
      v117 = *(v114 + v116);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      LODWORD(v115) = sub_1B044CC18(v115, v117);
      v416 = v118;
      v417 = v119;

      v120 = v410;
      sub_1B038C9A4(v113, v410, type metadata accessor for ConnectionEvent.FailureReason);
      v121 = swift_getEnumCaseMultiPayload();
      LODWORD(v407) = v115;
      if (v121 > 1)
      {
        if (v121 == 2)
        {
          v414 = v116;
          v163 = v114 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
          v164 = v408;
          sub_1B038C9A4(v114 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v408, _s6LoggerVMa_0);
          swift_retain_n();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          swift_retain_n();
          v165 = v416;
          swift_bridgeObjectRetain_n();
          v166 = v417;
          swift_bridgeObjectRetain_n();
          v167 = sub_1B0E43988();
          v168 = sub_1B0E439A8();
          (*(*(v168 - 8) + 8))(v164, v168);
          v169 = sub_1B0E45908();
          if (os_log_type_enabled(v167, v169))
          {
            v170 = swift_slowAlloc();
            v171 = swift_slowAlloc();
            v422 = v171;
            *v170 = 68158722;
            *(v170 + 4) = 2;
            *(v170 + 8) = 256;
            v172 = v163 + *(v412 + 20);
            *(v170 + 10) = *v172;
            *(v170 + 11) = 2082;
            v173 = ConnectionID.debugDescription.getter(*(v172 + 4));
            v175 = sub_1B0399D64(v173, v174, &v422);

            *(v170 + 13) = v175;

            *(v170 + 21) = 2048;
            v176 = *(*(v114 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

            *(v170 + 23) = v176;

            *(v170 + 31) = 2048;
            v177 = *(v165 + 16);

            *(v170 + 33) = v177;

            _os_log_impl(&dword_1B0389000, v167, v169, "[%.*hhx-%{public}s] [C%llu] Connection did fail (%ld running command(s)): Closed", v170, 0x29u);
            __swift_destroy_boxed_opaque_existential_0Tm(v171);
            MEMORY[0x1B272C230](v171, -1, -1);
            MEMORY[0x1B272C230](v170, -1, -1);
          }

          else
          {

            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
          }

          v311 = v405;
          v312 = v406;
          goto LABEL_71;
        }

        v254 = v114 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
        sub_1B038C9A4(v114 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v50, _s6LoggerVMa_0);
        swift_retain_n();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        swift_retain_n();
        v165 = v416;
        swift_bridgeObjectRetain_n();
        v166 = v417;
        swift_bridgeObjectRetain_n();
        v255 = sub_1B0E43988();
        v256 = sub_1B0E439A8();
        (*(*(v256 - 8) + 8))(v50, v256);
        v257 = sub_1B0E458E8();
        if (os_log_type_enabled(v255, v257))
        {
          v258 = swift_slowAlloc();
          v414 = v116;
          v259 = v258;
          v260 = swift_slowAlloc();
          v422 = v260;
          *v259 = 68158722;
          *(v259 + 4) = 2;
          *(v259 + 8) = 256;
          v261 = v254 + *(v412 + 20);
          *(v259 + 10) = *v261;
          *(v259 + 11) = 2082;
          v262 = ConnectionID.debugDescription.getter(*(v261 + 4));
          v264 = sub_1B0399D64(v262, v263, &v422);

          *(v259 + 13) = v264;

          *(v259 + 21) = 2048;
          v265 = *(*(v114 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

          *(v259 + 23) = v265;

          *(v259 + 31) = 2048;
          v266 = *(v165 + 16);

          *(v259 + 33) = v266;

          _os_log_impl(&dword_1B0389000, v255, v257, "[%.*hhx-%{public}s] [C%llu] Connection did fail (%ld running command(s)): invalid continuation state.", v259, 0x29u);
          __swift_destroy_boxed_opaque_existential_0Tm(v260);
          MEMORY[0x1B272C230](v260, -1, -1);
          v267 = v259;
          v116 = v414;
          MEMORY[0x1B272C230](v267, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
        }

        v311 = v405;
        v312 = v406;
        v313 = v418;
LABEL_96:
        *(v114 + v116) = MEMORY[0x1E69E7CC0];

        v379 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
        swift_beginAccess();
        sub_1B038C9A4(v114 + v379, v311, type metadata accessor for ConnectionState);
        sub_1B038C9A4(v311, v312, type metadata accessor for ConnectionState);
        v380 = swift_getEnumCaseMultiPayload();
        if (v380 <= 2)
        {
          sub_1B038D690(v312, type metadata accessor for ConnectionState);
LABEL_100:
          sub_1B038D690(v311, type metadata accessor for ConnectionState);
          v381 = v413;
          swift_storeEnumTagMultiPayload();
          v382 = v411;
          sub_1B038C9A4(v114 + v379, v411, type metadata accessor for ConnectionState);
          swift_beginAccess();
          sub_1B044B474(v381, v114 + v379);
          swift_endAccess();
          sub_1B042D734(v382);
          sub_1B038D690(v381, type metadata accessor for ConnectionState);
          sub_1B038D690(v382, type metadata accessor for ConnectionState);
          v383 = swift_allocObject();
          v384 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_recentErrors;
          swift_beginAccess();
          *(v383 + 16) = *(v114 + v384);
          *(v383 + 24) = v407;
          *(v383 + 32) = v165;
          *(v383 + 40) = v166;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0BDAD70(v383 | 0x1000000000000000);

          return sub_1B038D690(v313, type metadata accessor for ConnectionEvent.FailureReason);
        }

        if (v380 == 3)
        {
          sub_1B038D690(v312, type metadata accessor for ConnectionState);
        }

        else if (v380 != 4)
        {
          goto LABEL_100;
        }

        sub_1B038D690(v311, type metadata accessor for ConnectionState);
        sub_1B038D690(v313, type metadata accessor for ConnectionEvent.FailureReason);
      }

      v414 = v116;
      if (!v121)
      {
        sub_1B038D690(v120, type metadata accessor for ConnectionEvent.FailureReason);
        v122 = v114 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
        v123 = v409;
        sub_1B038C9A4(v114 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v409, _s6LoggerVMa_0);
        swift_retain_n();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        swift_retain_n();
        v124 = sub_1B0E43988();
        v125 = sub_1B0E439A8();
        (*(*(v125 - 8) + 8))(v123, v125);
        v126 = sub_1B0E458E8();
        if (os_log_type_enabled(v124, v126))
        {
          v127 = swift_slowAlloc();
          v128 = swift_slowAlloc();
          v422 = v128;
          *v127 = 68158466;
          *(v127 + 4) = 2;
          *(v127 + 8) = 256;
          v129 = v122 + *(v412 + 20);
          *(v127 + 10) = *v129;
          *(v127 + 11) = 2082;
          v130 = ConnectionID.debugDescription.getter(*(v129 + 4));
          v132 = sub_1B0399D64(v130, v131, &v422);

          *(v127 + 13) = v132;

          *(v127 + 21) = 2048;
          v133 = *(*(v114 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

          *(v127 + 23) = v133;

          _os_log_impl(&dword_1B0389000, v124, v126, "[%.*hhx-%{public}s] [C%llu] Connection did fail to authenticate.", v127, 0x1Fu);
          __swift_destroy_boxed_opaque_existential_0Tm(v128);
          MEMORY[0x1B272C230](v128, -1, -1);
          MEMORY[0x1B272C230](v127, -1, -1);
        }

        else
        {
        }

        v311 = v405;
        v312 = v406;
        v165 = v416;
        v166 = v417;
LABEL_71:
        v116 = v414;
        v313 = v418;
        goto LABEL_96;
      }

      v231 = v398;
      v232 = *(v398 + 88);
      v233 = v397;
      v234 = v232(v120, v397);
      v235 = *MEMORY[0x1E6977D68];
      if (v234 == *MEMORY[0x1E6977D68])
      {
        v236 = *(v231 + 16);
        v237 = v231;
        v238 = v233;
        v239 = v392;
        v236(v392, v120, v238);
        (*(v237 + 96))(v239, v238);
        v240 = *v239;
        v233 = v238;
        v231 = v237;
        if (v240 == 89)
        {
          v241 = v114 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
          v242 = v389;
          sub_1B038C9A4(v114 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v389, _s6LoggerVMa_0);
          swift_retain_n();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          swift_retain_n();
          v165 = v416;
          swift_bridgeObjectRetain_n();
          v166 = v417;
          swift_bridgeObjectRetain_n();
          v243 = sub_1B0E43988();
          v244 = sub_1B0E439A8();
          (*(*(v244 - 8) + 8))(v242, v244);
          v245 = sub_1B0E45908();
          if (os_log_type_enabled(v243, v245))
          {
            v246 = swift_slowAlloc();
            v247 = swift_slowAlloc();
            v422 = v247;
            *v246 = 68158722;
            *(v246 + 4) = 2;
            *(v246 + 8) = 256;
            v248 = v241 + *(v412 + 20);
            *(v246 + 10) = *v248;
            *(v246 + 11) = 2082;
            v249 = ConnectionID.debugDescription.getter(*(v248 + 4));
            v251 = sub_1B0399D64(v249, v250, &v422);

            *(v246 + 13) = v251;

            *(v246 + 21) = 2048;
            v252 = *(*(v114 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

            *(v246 + 23) = v252;

            *(v246 + 31) = 2048;
            v253 = *(v165 + 16);

            *(v246 + 33) = v253;

            _os_log_impl(&dword_1B0389000, v243, v245, "[%.*hhx-%{public}s] [C%llu] Connection did fail (%ld running command(s)): Operation canceled", v246, 0x29u);
            __swift_destroy_boxed_opaque_existential_0Tm(v247);
            MEMORY[0x1B272C230](v247, -1, -1);
            MEMORY[0x1B272C230](v246, -1, -1);
          }

          else
          {

            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
          }

          v311 = v405;
          v312 = v406;
          v313 = v418;
          (*(v398 + 8))(v410, v397);
          goto LABEL_95;
        }
      }

      v271 = v399;
      (*(v231 + 32))(v399, v120, v233);
      v272 = v396;
      v410 = *(v231 + 16);
      (v410)(v396, v271, v233);
      v273 = v232(v272, v233);
      if (v273 == v235)
      {
        (*(v231 + 96))(v272, v233);
        LODWORD(v415) = *v272;
        v114 = v419;
        v274 = v419 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
        v275 = v391;
        sub_1B038C9A4(v419 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v391, _s6LoggerVMa_0);
        swift_retain_n();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        swift_retain_n();
        v276 = v416;
        swift_bridgeObjectRetain_n();
        v277 = v231;
        v166 = v417;
        swift_bridgeObjectRetain_n();
        v278 = sub_1B0E43988();
        v279 = sub_1B0E439A8();
        (*(*(v279 - 8) + 8))(v275, v279);
        v280 = sub_1B0E458E8();
        if (os_log_type_enabled(v278, v280))
        {
          v281 = swift_slowAlloc();
          v282 = swift_slowAlloc();
          v422 = v282;
          *v281 = 68158978;
          *(v281 + 4) = 2;
          *(v281 + 8) = 256;
          v283 = v274 + *(v412 + 20);
          *(v281 + 10) = *v283;
          *(v281 + 11) = 2082;
          v284 = ConnectionID.debugDescription.getter(*(v283 + 4));
          v286 = sub_1B0399D64(v284, v285, &v422);

          *(v281 + 13) = v286;

          *(v281 + 21) = 2048;
          v287 = *(*(v114 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

          *(v281 + 23) = v287;

          *(v281 + 31) = 2048;
          v288 = *(v276 + 16);

          *(v281 + 33) = v288;

          *(v281 + 41) = 1024;
          *(v281 + 43) = sub_1B0E43AF8();
          _os_log_impl(&dword_1B0389000, v278, v280, "[%.*hhx-%{public}s] [C%llu] Connection did fail (%ld running command(s)): posix %{darwin.errno}d", v281, 0x2Fu);
          __swift_destroy_boxed_opaque_existential_0Tm(v282);
          v289 = v282;
          v166 = v417;
          MEMORY[0x1B272C230](v289, -1, -1);
          MEMORY[0x1B272C230](v281, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
        }

        (*(v277 + 8))(v399, v233);
        v311 = v405;
        v312 = v406;
        goto LABEL_87;
      }

      if (v273 == *MEMORY[0x1E6977D58])
      {
        v314 = v396;
        (*(v231 + 96))(v396, v233);
        LODWORD(v415) = *v314;
        v315 = v419;
        v316 = v271;
        v317 = v419 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
        v318 = v388;
        sub_1B038C9A4(v419 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v388, _s6LoggerVMa_0);
        swift_retain_n();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v319 = v390;
        (v410)(v390, v316, v233);
        v114 = v315;
        swift_retain_n();
        v276 = v416;
        swift_bridgeObjectRetain_n();
        v320 = v417;
        swift_bridgeObjectRetain_n();
        v321 = sub_1B0E43988();
        v322 = sub_1B0E439A8();
        (*(*(v322 - 8) + 8))(v318, v322);
        v323 = sub_1B0E458E8();
        if (os_log_type_enabled(v321, v323))
        {
          v324 = swift_slowAlloc();
          v410 = swift_slowAlloc();
          v422 = v410;
          *v324 = 68159234;
          *(v324 + 4) = 2;
          *(v324 + 8) = 256;
          v325 = v317 + *(v412 + 20);
          *(v324 + 10) = *v325;
          *(v324 + 11) = 2082;
          v326 = ConnectionID.debugDescription.getter(*(v325 + 4));
          v328 = sub_1B0399D64(v326, v327, &v422);

          *(v324 + 13) = v328;

          *(v324 + 21) = 2048;
          v329 = *(*(v114 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

          *(v324 + 23) = v329;

          *(v324 + 31) = 2048;
          v330 = *(v276 + 16);

          *(v324 + 33) = v330;

          *(v324 + 41) = 1024;
          *(v324 + 43) = v415;
          *(v324 + 47) = 2080;
          v331 = v390;
          v332 = sub_1B0E441B8();
          v334 = sub_1B0399D64(v332, v333, &v422);

          *(v324 + 49) = v334;
          v335 = *(v231 + 8);
          v335(v331, v233);
          v336 = "[%.*hhx-%{public}s] [C%llu] Connection did fail (%ld running command(s)): DNS %d, %s";
LABEL_85:
          _os_log_impl(&dword_1B0389000, v321, v323, v336, v324, 0x39u);
          v353 = v410;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v353, -1, -1);
          MEMORY[0x1B272C230](v324, -1, -1);

          v335(v399, v233);
          v311 = v405;
          v312 = v406;
          v313 = v418;
          v165 = v276;
LABEL_94:
          v166 = v417;
          goto LABEL_95;
        }
      }

      else
      {
        if (v273 != *MEMORY[0x1E6977D60])
        {
          v355 = v419;
          v356 = v419 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
          v357 = v83;
          sub_1B038C9A4(v419 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v83, _s6LoggerVMa_0);
          swift_retain_n();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v358 = v386;
          (v410)(v386, v271, v233);
          swift_retain_n();
          v359 = v416;
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          v360 = sub_1B0E43988();
          v361 = sub_1B0E439A8();
          (*(*(v361 - 8) + 8))(v357, v361);
          v362 = sub_1B0E458E8();
          v415 = v360;
          if (os_log_type_enabled(v360, v362))
          {
            v363 = swift_slowAlloc();
            LODWORD(v408) = v362;
            v364 = v363;
            v365 = swift_slowAlloc();
            v409 = swift_slowAlloc();
            v422 = v409;
            *v364 = 68158978;
            *(v364 + 4) = 2;
            *(v364 + 8) = 256;
            v366 = v356 + *(v412 + 20);
            *(v364 + 10) = *v366;
            *(v364 + 11) = 2082;
            v367 = ConnectionID.debugDescription.getter(*(v366 + 4));
            v369 = sub_1B0399D64(v367, v368, &v422);

            *(v364 + 13) = v369;

            *(v364 + 21) = 2048;
            v370 = *(*(v355 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

            *(v364 + 23) = v370;

            *(v364 + 31) = 2048;
            v371 = *(v359 + 16);

            *(v364 + 33) = v371;

            *(v364 + 41) = 2112;
            sub_1B0BE2B48(&qword_1EB6DB9A0, MEMORY[0x1E6977D78], MEMORY[0x1E6977D88]);
            v372 = swift_allocError();
            (v410)(v373, v358, v233);
            v374 = sub_1B0E42CC8();

            *(v364 + 43) = v374;
            v375 = v365;
            *v365 = v374;
            v376 = *(v398 + 8);
            v376(v358, v233);
            v377 = v415;
            _os_log_impl(&dword_1B0389000, v415, v408, "[%.*hhx-%{public}s] [C%llu] Connection did fail (%ld running command(s)): %@", v364, 0x33u);
            sub_1B0398EFC(v375, &unk_1EB6E2630, &qword_1B0E97970);
            MEMORY[0x1B272C230](v375, -1, -1);
            v378 = v409;
            __swift_destroy_boxed_opaque_existential_0Tm(v409);
            MEMORY[0x1B272C230](v378, -1, -1);
            MEMORY[0x1B272C230](v364, -1, -1);
          }

          else
          {

            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
            v376 = *(v398 + 8);
            v376(v358, v233);
          }

          v376(v399, v233);
          v114 = v355;
          v311 = v405;
          v312 = v406;
          v376(v396, v233);
          v313 = v418;
          v165 = v416;
          goto LABEL_94;
        }

        v337 = v396;
        (*(v231 + 96))(v396, v233);
        LODWORD(v415) = *v337;
        v338 = v419;
        v339 = v271;
        v340 = v419 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
        v341 = v385;
        sub_1B038C9A4(v419 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v385, _s6LoggerVMa_0);
        swift_retain_n();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v319 = v387;
        (v410)(v387, v339, v233);
        v114 = v338;
        swift_retain_n();
        v276 = v416;
        swift_bridgeObjectRetain_n();
        v320 = v417;
        swift_bridgeObjectRetain_n();
        v321 = sub_1B0E43988();
        v342 = sub_1B0E439A8();
        (*(*(v342 - 8) + 8))(v341, v342);
        v323 = sub_1B0E458E8();
        if (os_log_type_enabled(v321, v323))
        {
          v324 = swift_slowAlloc();
          v410 = swift_slowAlloc();
          v422 = v410;
          *v324 = 68159234;
          *(v324 + 4) = 2;
          *(v324 + 8) = 256;
          v343 = v340 + *(v412 + 20);
          *(v324 + 10) = *v343;
          *(v324 + 11) = 2082;
          v344 = ConnectionID.debugDescription.getter(*(v343 + 4));
          v346 = sub_1B0399D64(v344, v345, &v422);

          *(v324 + 13) = v346;

          *(v324 + 21) = 2048;
          v347 = *(*(v114 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

          *(v324 + 23) = v347;

          *(v324 + 31) = 2048;
          v348 = *(v276 + 16);

          *(v324 + 33) = v348;

          *(v324 + 41) = 1024;
          *(v324 + 43) = v415;
          *(v324 + 47) = 2080;
          v349 = v387;
          v350 = sub_1B0E441B8();
          v352 = sub_1B0399D64(v350, v351, &v422);

          *(v324 + 49) = v352;
          v335 = *(v231 + 8);
          v335(v349, v233);
          v336 = "[%.*hhx-%{public}s] [C%llu] Connection did fail (%ld running command(s)): TLS %d, %s";
          goto LABEL_85;
        }
      }

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      v354 = *(v231 + 8);
      v354(v319, v233);

      v354(v399, v233);
      v311 = v405;
      v312 = v406;
      v166 = v320;
LABEL_87:
      v313 = v418;
      v165 = v276;
LABEL_95:
      v116 = v414;
      goto LABEL_96;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v86 = v416;
      sub_1B038CB4C(v68, v416, type metadata accessor for UntaggedResponse);
      v87 = swift_allocBox();
      sub_1B038C9A4(v86, v88, type metadata accessor for UntaggedResponse);
      sub_1B0BDAD70(v87 | 0x3000000000000000);

      return sub_1B038D690(v86, type metadata accessor for UntaggedResponse);
    }

    v134 = *v68;
    v135 = *(v68 + 1);
    v136 = *(v68 + 2);
    v137 = v68[24];
    v138 = v68[28];
    v139 = *(v68 + 8);
    v140 = v419;
    swift_beginAccess();
    v141 = static MonotonicTime.now()();
    v142 = v138 | (v139 << 32);
    v143 = sub_1B0C2700C(v142, v141);
    v145 = v144;
    swift_endAccess();
    LODWORD(v418) = v137;
    if ((v145 & 1) == 0)
    {
      v416 = HIDWORD(v143);
      v178 = v140 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
      v179 = v400;
      sub_1B038C9A4(v140 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v400, _s6LoggerVMa_0);
      swift_retain_n();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v180 = sub_1B0E43988();
      v181 = sub_1B0E439A8();
      (*(*(v181 - 8) + 8))(v179, v181);
      v182 = sub_1B0E458D8();
      if (os_log_type_enabled(v180, v182))
      {
        v183 = swift_slowAlloc();
        v184 = swift_slowAlloc();
        v417 = v136;
        v185 = v184;
        v421[0] = v184;
        *v183 = 68158466;
        *(v183 + 4) = 2;
        *(v183 + 8) = 256;
        v186 = v178 + *(v412 + 20);
        *(v183 + 10) = *v186;
        *(v183 + 11) = 2082;
        v187 = ConnectionID.debugDescription.getter(*(v186 + 4));
        v189 = sub_1B0399D64(v187, v188, v421);

        *(v183 + 13) = v189;

        *(v183 + 21) = 2082;
        v190 = Tag.debugDescription.getter(v143 & 0xFFFFFFFF000000FFLL);
        v192 = sub_1B0399D64(v190, v191, v421);

        *(v183 + 23) = v192;
        _os_log_impl(&dword_1B0389000, v180, v182, "[%.*hhx-%{public}s] Command %{public}s completed.", v183, 0x1Fu);
        swift_arrayDestroy();
        v193 = v185;
        v136 = v417;
        MEMORY[0x1B272C230](v193, -1, -1);
        MEMORY[0x1B272C230](v183, -1, -1);
      }

      else
      {
      }

      v268 = swift_allocObject();
      v269 = v416;
      *(v268 + 16) = v143;
      *(v268 + 20) = v269;
      *(v268 + 24) = v134;
      *(v268 + 32) = v135;
      *(v268 + 40) = v136;
      v270 = v418;
      *(v268 + 48) = v418;
      sub_1B0A91FD0(v134, v135, v136, v270);
      sub_1B0BDAD70(v268 | 0x4000000000000000);

      goto LABEL_66;
    }

    v417 = v136;
    v146 = v140 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    if (v143)
    {
      if (v143 == 1)
      {
        v147 = v394;
        sub_1B038C9A4(v140 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v394, _s6LoggerVMa_0);
        swift_retain_n();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v148 = sub_1B0E43988();
        v149 = sub_1B0E439A8();
        (*(*(v149 - 8) + 8))(v147, v149);
        v150 = sub_1B0E45908();
        if (os_log_type_enabled(v148, v150))
        {
          v151 = swift_slowAlloc();
          v152 = swift_slowAlloc();
          v421[0] = v152;
          *v151 = 68158466;
          *(v151 + 4) = 2;
          *(v151 + 8) = 256;
          v153 = v146 + *(v412 + 20);
          *(v151 + 10) = *v153;
          *(v151 + 11) = 2082;
          v154 = ConnectionID.debugDescription.getter(*(v153 + 4));
          v156 = sub_1B0399D64(v154, v155, v421);

          *(v151 + 13) = v156;

          *(v151 + 21) = 2082;
          v157 = Tag.debugDescription.getter(v142);
          v159 = sub_1B0399D64(v157, v158, v421);

          *(v151 + 23) = v159;
          v160 = "[%.*hhx-%{public}s] %{public}s IDLE completed.";
LABEL_60:
          _os_log_impl(&dword_1B0389000, v148, v150, v160, v151, 0x1Fu);
          swift_arrayDestroy();
          v299 = v152;
LABEL_63:
          MEMORY[0x1B272C230](v299, -1, -1);
          MEMORY[0x1B272C230](v151, -1, -1);
LABEL_65:

          v136 = v417;
          v270 = v418;
LABEL_66:
          sub_1B038CC7C();
          return sub_1B0BB6FE0(v134, v135, v136, v270);
        }
      }

      else
      {
        v300 = v395;
        sub_1B038C9A4(v140 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v395, _s6LoggerVMa_0);
        swift_retain_n();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v148 = sub_1B0E43988();
        v301 = sub_1B0E439A8();
        (*(*(v301 - 8) + 8))(v300, v301);
        v302 = sub_1B0E458E8();
        if (os_log_type_enabled(v148, v302))
        {
          v151 = swift_slowAlloc();
          v416 = swift_slowAlloc();
          v421[0] = v416;
          *v151 = 68158466;
          *(v151 + 4) = 2;
          *(v151 + 8) = 256;
          v303 = v146 + *(v412 + 20);
          *(v151 + 10) = *v303;
          *(v151 + 11) = 2082;
          v304 = ConnectionID.debugDescription.getter(*(v303 + 4));
          v306 = sub_1B0399D64(v304, v305, v421);

          *(v151 + 13) = v306;

          *(v151 + 21) = 2082;
          v307 = Tag.debugDescription.getter(v142);
          v309 = sub_1B0399D64(v307, v308, v421);

          *(v151 + 23) = v309;
          _os_log_impl(&dword_1B0389000, v148, v302, "[%.*hhx-%{public}s] Command with unknown tag %{public}s completed.", v151, 0x1Fu);
          v310 = v416;
          swift_arrayDestroy();
          v299 = v310;
          goto LABEL_63;
        }
      }
    }

    else
    {
      v290 = v393;
      sub_1B038C9A4(v140 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v393, _s6LoggerVMa_0);
      swift_retain_n();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v148 = sub_1B0E43988();
      v291 = sub_1B0E439A8();
      (*(*(v291 - 8) + 8))(v290, v291);
      v150 = sub_1B0E458D8();
      if (os_log_type_enabled(v148, v150))
      {
        v151 = swift_slowAlloc();
        v152 = swift_slowAlloc();
        v421[0] = v152;
        *v151 = 68158466;
        *(v151 + 4) = 2;
        *(v151 + 8) = 256;
        v292 = v146 + *(v412 + 20);
        *(v151 + 10) = *v292;
        *(v151 + 11) = 2082;
        v293 = ConnectionID.debugDescription.getter(*(v292 + 4));
        v295 = sub_1B0399D64(v293, v294, v421);

        *(v151 + 13) = v295;

        *(v151 + 21) = 2082;
        v296 = Tag.debugDescription.getter(v142);
        v298 = sub_1B0399D64(v296, v297, v421);

        *(v151 + 23) = v298;
        v160 = "[%.*hhx-%{public}s] %{public}s NOOP completed.";
        goto LABEL_60;
      }
    }

    goto LABEL_65;
  }

  if (EnumCaseMultiPayload > 5)
  {
    v70 = v419;
    if (EnumCaseMultiPayload == 6)
    {
      v111 = *v68;
      v112 = swift_allocObject();
      *(v112 + 16) = v111;
      sub_1B0BDAD70(v112 | 0x7000000000000000);
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v71 = v419 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
      v72 = v408;
      sub_1B038C9A4(v419 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v408, _s6LoggerVMa_0);
      swift_retain_n();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v73 = sub_1B0E43988();
      v74 = sub_1B0E439A8();
      (*(*(v74 - 8) + 8))(v72, v74);
      v75 = sub_1B0E45908();
      v76 = os_log_type_enabled(v73, v75);
      v418 = v71;
      if (v76)
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v421[0] = v78;
        *v77 = 68158210;
        *(v77 + 4) = 2;
        *(v77 + 8) = 256;
        v79 = v71 + *(v412 + 20);
        *(v77 + 10) = *v79;
        *(v77 + 11) = 2082;
        v80 = ConnectionID.debugDescription.getter(*(v79 + 4));
        v82 = sub_1B0399D64(v80, v81, v421);

        *(v77 + 13) = v82;

        _os_log_impl(&dword_1B0389000, v73, v75, "[%.*hhx-%{public}s] Connection did start TLS.", v77, 0x15u);
        __swift_destroy_boxed_opaque_existential_0Tm(v78);
        MEMORY[0x1B272C230](v78, -1, -1);
        MEMORY[0x1B272C230](v77, -1, -1);
      }

      else
      {
      }

      v194 = v410;
      v195 = *(v70 + 16);
      v196 = sub_1B0447ABC();
      v199 = v196;
      v200 = v198;
      v417 = v197;
      if (v198 == 1)
      {
        v201 = 0;
        v202 = 0;
        v203 = 0x8000000000000000;
      }

      else
      {
        if (*(v195 + OBJC_IVAR____TtC15IMAP2Connection10Connection_configuration + *(v402 + 28)) >= 0)
        {
          v203 = v196 | 0x4000000000000000;
        }

        else
        {
          v203 = v196;
        }

        v201 = v197;
        v202 = v198;
      }

      sub_1B038C9A4(v195 + OBJC_IVAR____TtC15IMAP2Connection10Connection_configuration, v194, type metadata accessor for ConnectionConfiguration);
      v204 = sub_1B0447BC4();
      v206 = v205;
      v208 = v207;
      sub_1B038D690(v194, type metadata accessor for ConnectionConfiguration);
      v421[0] = v203;
      v421[1] = v201;
      v421[2] = v202;
      v421[3] = v204;
      v421[4] = v206;
      v421[5] = v208;
      v209 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
      v210 = v419;
      swift_beginAccess();
      v211 = v413;
      sub_1B038C9A4(v210 + v209, v413, type metadata accessor for ConnectionState);
      sub_1B0BF0E90(v421, v418);
      sub_1B0429C7C(v199, v417, v200);
      sub_1B0429C7C(v204, v206, v208);
      v212 = v411;
      sub_1B038C9A4(v210 + v209, v411, type metadata accessor for ConnectionState);
      swift_beginAccess();
      sub_1B044B474(v211, v210 + v209);
      swift_endAccess();
      sub_1B042D734(v212);
      sub_1B038D690(v211, type metadata accessor for ConnectionState);
      sub_1B038D690(v212, type metadata accessor for ConnectionState);
      return sub_1B0BDE9C8();
    }

    else
    {
      return sub_1B0BDEBD8();
    }
  }

  v89 = v419;
  if (EnumCaseMultiPayload == 4)
  {
    v91 = *v68;
    v90 = *(v68 + 1);
    v92 = v68[16];
    v93 = v419 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    v94 = v407;
    sub_1B038C9A4(v419 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v407, _s6LoggerVMa_0);
    swift_retain_n();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v95 = sub_1B0E43988();
    v96 = sub_1B0E439A8();
    v97 = *(v96 - 8);
    v98 = *(v97 + 8);
    v417 = v97 + 8;
    v98(v94, v96);
    v99 = sub_1B0E458D8();
    v100 = os_log_type_enabled(v95, v99);
    v418 = v98;
    if (v100)
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      LODWORD(v416) = v92;
      v415 = v90;
      v103 = v91;
      v104 = v102;
      v421[0] = v102;
      *v101 = 68158210;
      *(v101 + 4) = 2;
      *(v101 + 8) = 256;
      v105 = v93 + *(v412 + 20);
      *(v101 + 10) = *v105;
      *(v101 + 11) = 2082;
      v106 = ConnectionID.debugDescription.getter(*(v105 + 4));
      v108 = v93;
      v109 = sub_1B0399D64(v106, v107, v421);

      *(v101 + 13) = v109;
      v93 = v108;

      _os_log_impl(&dword_1B0389000, v95, v99, "[%.*hhx-%{public}s] Received handshake.", v101, 0x15u);
      __swift_destroy_boxed_opaque_existential_0Tm(v104);
      v110 = v104;
      v91 = v103;
      v90 = v415;
      v92 = v416;
      MEMORY[0x1B272C230](v110, -1, -1);
      MEMORY[0x1B272C230](v101, -1, -1);
    }

    else
    {
    }

    v213 = v89;
    v214 = v409;
    v215 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
    swift_beginAccess();
    sub_1B038C9A4(v213 + v215, v214, type metadata accessor for ConnectionState);

    sub_1B0BF0A30(v91, v90, v92, v93, sub_1B0BE2F40, v213, sub_1B0BE2B1C, v213);
    v230 = v413;
    sub_1B038C9A4(v213 + v215, v413, type metadata accessor for ConnectionState);
    swift_beginAccess();
    sub_1B044B474(v214, v213 + v215);
    swift_endAccess();
    sub_1B042D734(v230);
    sub_1B038D690(v214, type metadata accessor for ConnectionState);
    sub_1B038D690(v230, type metadata accessor for ConnectionState);

    sub_1B0BDE9C8();
    sub_1B0446050(0x8000000000000008);
    return sub_1B0BCDEB0(v91, v90, v92);
  }

  v161 = *v68;
  v162 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_pathAttributes;
  swift_beginAccess();
  if (sub_1B0429CE0(*(v89 + v162), v161))
  {
  }

  *(v89 + v162) = v161;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  v216 = v89 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
  v217 = v401;
  sub_1B038C9A4(v89 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v401, _s6LoggerVMa_0);
  swift_retain_n();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  swift_bridgeObjectRetain_n();
  v218 = sub_1B0E43988();
  v219 = sub_1B0E439A8();
  (*(*(v219 - 8) + 8))(v217, v219);
  v220 = sub_1B0E45908();
  if (os_log_type_enabled(v218, v220))
  {
    v221 = swift_slowAlloc();
    v222 = swift_slowAlloc();
    v420 = v222;
    *v221 = 68158466;
    *(v221 + 4) = 2;
    *(v221 + 8) = 256;
    v223 = v216 + *(v412 + 20);
    *(v221 + 10) = *v223;
    *(v221 + 11) = 2082;
    v224 = ConnectionID.debugDescription.getter(*(v223 + 4));
    v226 = sub_1B0399D64(v224, v225, &v420);

    *(v221 + 13) = v226;

    *(v221 + 21) = 1024;
    if (*(v161 + 16))
    {
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](0);
      v227 = sub_1B0E46CB8() & ~(-1 << *(v161 + 32));
      v228 = *(v161 + ((v227 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v227;

      v229 = v228 & 1;
    }

    else
    {

      v229 = 0;
    }

    *(v221 + 23) = v229;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&dword_1B0389000, v218, v220, "[%.*hhx-%{public}s] Path did change. Constrained: %{BOOL}d", v221, 0x1Bu);
    __swift_destroy_boxed_opaque_existential_0Tm(v222);
    MEMORY[0x1B272C230](v222, -1, -1);
    MEMORY[0x1B272C230](v221, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  return sub_1B0BDC398();
}

uint64_t sub_1B0429C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_1B0429CA0()
{
  sub_1B0BB6FE0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1B0429CE0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
LABEL_7:
    v7 &= v7 - 1;
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](0);
    result = sub_1B0E46CB8();
    v9 = result & ~(-1 << *(a2 + 32));
    if (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      return 1;
    }

    v7 = *(v4 + 8 * v10);
    ++v3;
    if (v7)
    {
      v3 = v10;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0429DF4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t, uint64_t))
{
  v460 = a4;
  v455 = a3;
  v463 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5520, &qword_1B0ED0CE8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v441 = &v402 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v448 = &v402 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v449 = &v402 - v10;
  v444 = type metadata accessor for ConnectionEvent(0);
  v445 = *(v444 - 8);
  MEMORY[0x1EEE9AC00](v444);
  v440 = &v402 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v407 = &v402 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v438 = &v402 - v15;
  v459 = sub_1B0E441D8();
  v461 = *(v459 - 8);
  MEMORY[0x1EEE9AC00](v459);
  v415 = &v402 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v414 = &v402 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v422 = &v402 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v436 = &v402 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v443 = (&v402 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v433 = &v402 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v423 = &v402 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v432 = &v402 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v437 = (&v402 - v32);
  MEMORY[0x1EEE9AC00](v33);
  v447 = (&v402 - v34);
  v35 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v35);
  v405 = &v402 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v406 = &v402 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v403 = &v402 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v404 = &v402 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v411 = &v402 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v413 = &v402 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v410 = &v402 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v412 = &v402 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v420 = &v402 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v421 = &v402 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v430 = &v402 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v431 = &v402 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v408 = &v402 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v409 = &v402 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v416 = &v402 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v417 = &v402 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v419 = &v402 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v429 = &v402 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v418 = &v402 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v428 = &v402 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v426 = &v402 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v427 = &v402 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v434 = &v402 - v80;
  MEMORY[0x1EEE9AC00](v81);
  v435 = &v402 - v82;
  MEMORY[0x1EEE9AC00](v83);
  v424 = &v402 - v84;
  MEMORY[0x1EEE9AC00](v85);
  v425 = &v402 - v86;
  v87 = sub_1B0E43DF8();
  v88 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v450 = &v402 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v90);
  v92 = &v402 - v91;
  MEMORY[0x1EEE9AC00](v93);
  v95 = &v402 - v94;
  v96 = sub_1B0E43828();
  v453 = *(v96 - 8);
  v454 = v96;
  MEMORY[0x1EEE9AC00](v96);
  v98 = (&v402 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0));
  v99 = sub_1B0E43868();
  v100 = *(v99 - 1);
  MEMORY[0x1EEE9AC00](v99);
  v102 = &v402 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  v457 = swift_projectBox();
  v103 = tracingSignposter.unsafeMutableAddressor();
  v104 = *(v100 + 16);
  v451 = v99;
  v104(v102, v103, v99);
  v439 = v35;
  v446 = a2;
  v452 = v98;
  sub_1B0E43838();
  v105 = *(v88 + 16);
  v105(v95, v463, v87);
  v106 = sub_1B0E43858();
  LODWORD(v442) = sub_1B0E45AE8();
  v107 = sub_1B0E45D38();
  v108 = MEMORY[0x1E6977C18];
  v462 = v88;
  v458 = v87;
  v456 = v88 + 16;
  v460 = v105;
  if ((v107 & 1) == 0)
  {
    v112 = *(v88 + 8);
    v112(v95, v87);
    v113 = v87;
    v111 = v459;
    v114 = v452;
    goto LABEL_18;
  }

  v402 = swift_slowAlloc();
  *v402 = 67109120;
  v105(v92, v95, v87);
  v109 = (*(v88 + 88))(v92, v87);
  if (v109 == *v108)
  {
    v110 = 4;
    v111 = v459;
  }

  else
  {
    v111 = v459;
    if (v109 != *MEMORY[0x1E6977C10])
    {
      if (v109 == *MEMORY[0x1E6977C08])
      {
        v110 = 3;
      }

      else if (v109 == *MEMORY[0x1E6977C28])
      {
        v110 = 5;
      }

      else if (v109 == *MEMORY[0x1E6977C00])
      {
        v110 = 6;
      }

      else
      {
        if (v109 != *MEMORY[0x1E6977C20])
        {
          v110 = 0;
          goto LABEL_7;
        }

        v110 = 8;
      }

      v116 = v458;
      v115 = v462;
      goto LABEL_17;
    }

    v110 = 7;
  }

LABEL_7:
  v115 = v462;
  v116 = v458;
  (*(v462 + 8))(v92, v458);
LABEL_17:
  v112 = *(v115 + 8);
  v112(v95, v116);
  v117 = v402;
  *(v402 + 1) = v110;
  v114 = v452;
  v118 = sub_1B0E43818();
  _os_signpost_emit_with_name_impl(&dword_1B0389000, v106, v442, v118, "Connection.networkStateUpdate", "%u", v117, 8u);
  MEMORY[0x1B272C230](v117, -1, -1);
  v113 = v116;
LABEL_18:

  (*(v453 + 1))(v114, v454);
  (*(v100 + 8))(v102, v451);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v121 = v460;
  v120 = v461;
  if (!result)
  {
    return result;
  }

  v122 = result;
  v123 = v450;
  v460(v450, v463, v113);
  v124 = v462;
  v125 = *(v462 + 88);
  v454 = v462 + 88;
  v126 = v125(v123, v113);
  v127 = *MEMORY[0x1E6977C18];
  v452 = v112;
  if (v126 == v127)
  {
    v455 = v122;
    (*(v124 + 96))(v123, v113);
    v128 = v447;
    (*(v120 + 32))(v447, v123, v111);
    v129 = *(v120 + 16);
    v130 = v437;
    v129(v437, v128, v111);
    v131 = (*(v120 + 88))(v130, v111);
    if (v131 == *MEMORY[0x1E6977D68])
    {
      (*(v120 + 96))(v130, v111);
      v132 = *v130;
      v133 = v120;
      v134 = v446;
      v135 = v435;
      sub_1B03FD208(v446, v435, _s6LoggerVMa_0);
      v136 = v434;
      sub_1B03FD208(v134, v434, _s6LoggerVMa_0);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v137 = sub_1B0E43988();
      v138 = sub_1B0E45908();
      if (os_log_type_enabled(v137, v138))
      {
        v139 = swift_slowAlloc();
        v453 = v125;
        v140 = v139;
        v141 = swift_slowAlloc();
        v464 = v141;
        *v140 = 68158466;
        *(v140 + 4) = 2;
        *(v140 + 8) = 256;
        LODWORD(v451) = v132;
        v142 = v439;
        v143 = v136;
        v144 = *(v136 + *(v439 + 20));
        sub_1B03D6AC4(v143, _s6LoggerVMa_0);
        *(v140 + 10) = v144;
        *(v140 + 11) = 2082;
        v145 = *(v135 + *(v142 + 20) + 4);
        sub_1B03D6AC4(v135, _s6LoggerVMa_0);
        v146 = ConnectionID.debugDescription.getter(v145);
        v148 = sub_1B0399D64(v146, v147, &v464);

        *(v140 + 13) = v148;
        *(v140 + 21) = 1024;
        *(v140 + 23) = sub_1B0E43AF8();
        _os_log_impl(&dword_1B0389000, v137, v138, "[%.*hhx-%{public}s] state: waiting, POSIX %{darwin.errno}d", v140, 0x1Bu);
        __swift_destroy_boxed_opaque_existential_0Tm(v141);
        v149 = v141;
        v124 = v462;
        MEMORY[0x1B272C230](v149, -1, -1);
        v150 = v140;
        v125 = v453;
        MEMORY[0x1B272C230](v150, -1, -1);

        (*(v133 + 8))(v447, v459);
      }

      else
      {
        sub_1B03D6AC4(v136, _s6LoggerVMa_0);

        sub_1B03D6AC4(v135, _s6LoggerVMa_0);
        (*(v133 + 8))(v447, v111);
      }

      v214 = v449;
      v215 = v448;
      v217 = v457;
      v216 = v458;
      v121 = v460;
      goto LABEL_81;
    }

    if (v131 == *MEMORY[0x1E6977D58])
    {
      v175 = v446;
      v176 = v427;
      sub_1B03FD208(v446, v427, _s6LoggerVMa_0);
      v177 = v426;
      sub_1B03FD208(v175, v426, _s6LoggerVMa_0);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v178 = v432;
      v451 = v129;
      v129(v432, v128, v111);
      v179 = sub_1B0E43988();
      v180 = sub_1B0E45908();
      if (!os_log_type_enabled(v179, v180))
      {
        sub_1B03D6AC4(v177, _s6LoggerVMa_0);

        v269 = *(v461 + 8);
        v269(v178, v111);
        sub_1B03D6AC4(v176, _s6LoggerVMa_0);
        v269(v447, v111);
        v214 = v449;
        v215 = v448;
        v217 = v457;
        v216 = v458;
        v121 = v460;
        v124 = v462;
        goto LABEL_81;
      }

      v181 = swift_slowAlloc();
      LODWORD(v446) = v180;
      v182 = v181;
      v443 = swift_slowAlloc();
      v183 = swift_slowAlloc();
      v453 = v125;
      v450 = v183;
      v464 = v183;
      *v182 = 68158466;
      *(v182 + 4) = 2;
      *(v182 + 8) = 256;
      v184 = v439;
      v185 = v178;
      v186 = *(v177 + *(v439 + 20));
      v187 = v111;
      sub_1B03D6AC4(v177, _s6LoggerVMa_0);
      *(v182 + 10) = v186;
      *(v182 + 11) = 2082;
      v188 = *(v176 + *(v184 + 20) + 4);
      sub_1B03D6AC4(v176, _s6LoggerVMa_0);
      v189 = ConnectionID.debugDescription.getter(v188);
      v191 = sub_1B0399D64(v189, v190, &v464);

      *(v182 + 13) = v191;
      *(v182 + 21) = 2112;
      sub_1B0422494(&qword_1EB6DB9A0, MEMORY[0x1E6977D78], MEMORY[0x1E6977D88]);
      v192 = swift_allocError();
      v451(v193, v185, v187);
      v194 = sub_1B0E42CC8();
      v195 = *(v461 + 8);
      v195(v185, v187);

      *(v182 + 23) = v194;
      v196 = v443;
      v443->isa = v194;
      _os_log_impl(&dword_1B0389000, v179, v446, "[%.*hhx-%{public}s] state: waiting, DNS %@", v182, 0x1Fu);
      sub_1B0398EFC(v196, &unk_1EB6E2630, &qword_1B0E97970);
      v124 = v462;
      MEMORY[0x1B272C230](v196, -1, -1);
      v197 = &v465;
    }

    else
    {
      if (v131 != *MEMORY[0x1E6977D60])
      {
        v287 = v446;
        sub_1B03FD208(v446, v429, _s6LoggerVMa_0);
        v288 = v419;
        sub_1B03FD208(v287, v419, _s6LoggerVMa_0);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v129(v433, v128, v111);
        v289 = sub_1B0E43988();
        v290 = sub_1B0E45908();
        if (os_log_type_enabled(v289, v290))
        {
          v291 = swift_slowAlloc();
          LODWORD(v450) = v290;
          v292 = v291;
          v446 = swift_slowAlloc();
          v293 = swift_slowAlloc();
          v453 = v125;
          v451 = v293;
          v464 = v293;
          *v292 = 68158466;
          *(v292 + 4) = 2;
          *(v292 + 8) = 256;
          v294 = v439;
          v295 = v433;
          v296 = *(v288 + *(v439 + 20));
          v443 = v289;
          v297 = v111;
          sub_1B03D6AC4(v288, _s6LoggerVMa_0);
          *(v292 + 10) = v296;
          *(v292 + 11) = 2082;
          v298 = *(v429 + *(v294 + 20) + 4);
          sub_1B03D6AC4(v429, _s6LoggerVMa_0);
          v299 = ConnectionID.debugDescription.getter(v298);
          v301 = sub_1B0399D64(v299, v300, &v464);

          *(v292 + 13) = v301;
          *(v292 + 21) = 2112;
          sub_1B0422494(&qword_1EB6DB9A0, MEMORY[0x1E6977D78], MEMORY[0x1E6977D88]);
          v302 = swift_allocError();
          v129(v303, v295, v297);
          v304 = sub_1B0E42CC8();
          v305 = *(v461 + 8);
          v305(v295, v297);

          *(v292 + 23) = v304;
          v306 = v446;
          *v446 = v304;
          v307 = v443;
          _os_log_impl(&dword_1B0389000, v443, v450, "[%.*hhx-%{public}s] state: waiting, %@", v292, 0x1Fu);
          sub_1B0398EFC(v306, &unk_1EB6E2630, &qword_1B0E97970);
          v124 = v462;
          MEMORY[0x1B272C230](v306, -1, -1);
          v308 = v451;
          __swift_destroy_boxed_opaque_existential_0Tm(v451);
          v309 = v308;
          v125 = v453;
          MEMORY[0x1B272C230](v309, -1, -1);
          MEMORY[0x1B272C230](v292, -1, -1);

          v305(v447, v297);
          v214 = v449;
        }

        else
        {
          sub_1B03D6AC4(v288, _s6LoggerVMa_0);

          v305 = *(v461 + 8);
          v305(v433, v111);
          sub_1B03D6AC4(v429, _s6LoggerVMa_0);
          v305(v447, v111);
          v214 = v449;
          v297 = v111;
        }

        v217 = v457;
        v305(v130, v297);
        v215 = v448;
        v216 = v458;
        goto LABEL_68;
      }

      v239 = v446;
      sub_1B03FD208(v446, v428, _s6LoggerVMa_0);
      v240 = v418;
      sub_1B03FD208(v239, v418, _s6LoggerVMa_0);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v241 = v423;
      v129(v423, v128, v111);
      v179 = sub_1B0E43988();
      v242 = sub_1B0E45908();
      if (!os_log_type_enabled(v179, v242))
      {
        sub_1B03D6AC4(v240, _s6LoggerVMa_0);

        v326 = *(v461 + 8);
        v326(v241, v111);
        sub_1B03D6AC4(v428, _s6LoggerVMa_0);
        v326(v447, v111);
        goto LABEL_63;
      }

      v243 = swift_slowAlloc();
      LODWORD(v450) = v242;
      v182 = v243;
      v446 = swift_slowAlloc();
      v244 = swift_slowAlloc();
      v453 = v125;
      v451 = v244;
      v464 = v244;
      *v182 = 68158466;
      *(v182 + 4) = 2;
      *(v182 + 8) = 256;
      v245 = v439;
      v246 = *(v240 + *(v439 + 20));
      v247 = v428;
      v187 = v111;
      sub_1B03D6AC4(v240, _s6LoggerVMa_0);
      *(v182 + 10) = v246;
      *(v182 + 11) = 2082;
      v248 = *(v247 + *(v245 + 20) + 4);
      sub_1B03D6AC4(v247, _s6LoggerVMa_0);
      v249 = ConnectionID.debugDescription.getter(v248);
      v251 = sub_1B0399D64(v249, v250, &v464);

      *(v182 + 13) = v251;
      *(v182 + 21) = 2112;
      sub_1B0422494(&qword_1EB6DB9A0, MEMORY[0x1E6977D78], MEMORY[0x1E6977D88]);
      v252 = swift_allocError();
      v253 = v423;
      v129(v254, v423, v187);
      v255 = sub_1B0E42CC8();
      v195 = *(v461 + 8);
      v195(v253, v187);

      *(v182 + 23) = v255;
      v256 = v446;
      *v446 = v255;
      _os_log_impl(&dword_1B0389000, v179, v450, "[%.*hhx-%{public}s] state: waiting, TLS %@", v182, 0x1Fu);
      sub_1B0398EFC(v256, &unk_1EB6E2630, &qword_1B0E97970);
      v124 = v462;
      MEMORY[0x1B272C230](v256, -1, -1);
      v197 = &v466;
    }

    v257 = *(v197 - 32);
    __swift_destroy_boxed_opaque_existential_0Tm(v257);
    v258 = v257;
    v125 = v453;
    MEMORY[0x1B272C230](v258, -1, -1);
    MEMORY[0x1B272C230](v182, -1, -1);

    v195(v447, v187);
LABEL_63:
    v214 = v449;
    v215 = v448;
    v217 = v457;
    v216 = v458;
LABEL_68:
    v121 = v460;
    goto LABEL_81;
  }

  if (v126 == *MEMORY[0x1E6977C10])
  {
    v455 = v122;
    (*(v124 + 96))(v123, v113);
    v151 = v443;
    (*(v120 + 32))(v443, v123, v111);
    v152 = v120 + 16;
    v153 = v436;
    v154 = v151;
    v155 = *(v120 + 16);
    v155(v436, v154, v111);
    v156 = (*(v120 + 88))(v153, v111);
    v157 = v156 == *MEMORY[0x1E6977D68];
    v451 = v155;
    if (v157)
    {
      (*(v120 + 96))(v153, v111);
      v158 = *v153;
      v159 = v446;
      v160 = v431;
      sub_1B03FD208(v446, v431, _s6LoggerVMa_0);
      v161 = v430;
      sub_1B03FD208(v159, v430, _s6LoggerVMa_0);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v162 = sub_1B0E43988();
      v163 = sub_1B0E458E8();
      if (os_log_type_enabled(v162, v163))
      {
        v164 = swift_slowAlloc();
        v453 = v125;
        v165 = v164;
        v166 = swift_slowAlloc();
        v464 = v166;
        *v165 = 68158466;
        *(v165 + 4) = 2;
        *(v165 + 8) = 256;
        LODWORD(v450) = v158;
        v167 = v439;
        v168 = *(v161 + *(v439 + 20));
        sub_1B03D6AC4(v161, _s6LoggerVMa_0);
        *(v165 + 10) = v168;
        *(v165 + 11) = 2082;
        v169 = *(v160 + *(v167 + 20) + 4);
        sub_1B03D6AC4(v160, _s6LoggerVMa_0);
        v170 = ConnectionID.debugDescription.getter(v169);
        v172 = sub_1B0399D64(v170, v171, &v464);

        *(v165 + 13) = v172;
        *(v165 + 21) = 1024;
        *(v165 + 23) = sub_1B0E43AF8();
        _os_log_impl(&dword_1B0389000, v162, v163, "[%.*hhx-%{public}s] state: failed, POSIX %{darwin.errno}d", v165, 0x1Bu);
        __swift_destroy_boxed_opaque_existential_0Tm(v166);
        v173 = v166;
        v124 = v462;
        MEMORY[0x1B272C230](v173, -1, -1);
        v174 = v165;
        v125 = v453;
        MEMORY[0x1B272C230](v174, -1, -1);
      }

      else
      {
        sub_1B03D6AC4(v161, _s6LoggerVMa_0);

        sub_1B03D6AC4(v160, _s6LoggerVMa_0);
      }

      v214 = v449;
      v217 = v457;
      v229 = v459;
      goto LABEL_76;
    }

    if (v156 == *MEMORY[0x1E6977D58])
    {
      v218 = v446;
      v219 = v421;
      sub_1B03FD208(v446, v421, _s6LoggerVMa_0);
      v220 = v420;
      sub_1B03FD208(v218, v420, _s6LoggerVMa_0);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v221 = v422;
      v155(v422, v443, v111);
      v222 = sub_1B0E43988();
      LODWORD(v446) = sub_1B0E458E8();
      v447 = v222;
      if (os_log_type_enabled(v222, v446))
      {
        v223 = swift_slowAlloc();
        v437 = swift_slowAlloc();
        v224 = swift_slowAlloc();
        v453 = v125;
        v442 = v224;
        v464 = v224;
        *v223 = 68158466;
        *(v223 + 4) = 2;
        *(v223 + 8) = 256;
        v225 = v439;
        v226 = *(v439 + 20);
        v450 = v152;
        v227 = *(v220 + v226);
        v228 = v221;
        v229 = v111;
        sub_1B03D6AC4(v220, _s6LoggerVMa_0);
        *(v223 + 10) = v227;
        *(v223 + 11) = 2082;
        v230 = *(v219 + *(v225 + 20) + 4);
        sub_1B03D6AC4(v219, _s6LoggerVMa_0);
        v231 = ConnectionID.debugDescription.getter(v230);
        v233 = sub_1B0399D64(v231, v232, &v464);

        *(v223 + 13) = v233;
        *(v223 + 21) = 2112;
        sub_1B0422494(&qword_1EB6DB9A0, MEMORY[0x1E6977D78], MEMORY[0x1E6977D88]);
        v234 = swift_allocError();
        v155(v235, v228, v229);
        v236 = sub_1B0E42CC8();
        (*(v461 + 8))(v228, v229);

        *(v223 + 23) = v236;
        v237 = v437;
        *v437 = v236;
        v238 = "[%.*hhx-%{public}s] state: failed, DNS %@";
LABEL_55:
        v284 = v447;
        _os_log_impl(&dword_1B0389000, v447, v446, v238, v223, 0x1Fu);
        sub_1B0398EFC(v237, &unk_1EB6E2630, &qword_1B0E97970);
        v124 = v462;
        MEMORY[0x1B272C230](v237, -1, -1);
        v285 = v442;
        __swift_destroy_boxed_opaque_existential_0Tm(v442);
        v286 = v285;
        v125 = v453;
        MEMORY[0x1B272C230](v286, -1, -1);
        MEMORY[0x1B272C230](v223, -1, -1);

        v214 = v449;
        v217 = v457;
LABEL_76:
        v368 = v438;
        v451(v438, v443, v229);
        type metadata accessor for ConnectionEvent.FailureReason(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5508, &unk_1B0ED0CC0);
        v369 = (*(v445 + 80) + 32) & ~*(v445 + 80);
        v370 = swift_allocObject();
        *(v370 + 16) = xmmword_1B0EC1E70;
        sub_1B03FD208(v368, v370 + v369, type metadata accessor for ConnectionEvent);
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_1B0426318(v370);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        sub_1B03D6AC4(v438, type metadata accessor for ConnectionEvent);
        (*(v461 + 8))(v443, v459);
LABEL_80:
        v215 = v448;
        v216 = v458;
        goto LABEL_81;
      }
    }

    else
    {
      if (v156 != *MEMORY[0x1E6977D60])
      {
        v453 = v125;
        v327 = v446;
        v328 = v413;
        sub_1B03FD208(v446, v413, _s6LoggerVMa_0);
        v329 = v411;
        sub_1B03FD208(v327, v411, _s6LoggerVMa_0);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v330 = v415;
        v155(v415, v443, v111);
        v331 = sub_1B0E43988();
        v332 = sub_1B0E458E8();
        if (os_log_type_enabled(v331, v332))
        {
          v333 = swift_slowAlloc();
          LODWORD(v447) = v332;
          v334 = v333;
          v446 = swift_slowAlloc();
          v450 = swift_slowAlloc();
          v464 = v450;
          *v334 = 68158466;
          *(v334 + 4) = 2;
          *(v334 + 8) = 256;
          v335 = v439;
          v336 = v329;
          v337 = *(v329 + *(v439 + 20));
          v338 = v330;
          v229 = v111;
          sub_1B03D6AC4(v336, _s6LoggerVMa_0);
          *(v334 + 10) = v337;
          *(v334 + 11) = 2082;
          v339 = *(v328 + *(v335 + 20) + 4);
          sub_1B03D6AC4(v328, _s6LoggerVMa_0);
          v340 = ConnectionID.debugDescription.getter(v339);
          v342 = sub_1B0399D64(v340, v341, &v464);

          *(v334 + 13) = v342;
          *(v334 + 21) = 2112;
          sub_1B0422494(&qword_1EB6DB9A0, MEMORY[0x1E6977D78], MEMORY[0x1E6977D88]);
          v343 = swift_allocError();
          v155(v344, v338, v229);
          v345 = sub_1B0E42CC8();
          v346 = *(v461 + 8);
          v346(v338, v229);

          *(v334 + 23) = v345;
          v347 = v446;
          *v446 = v345;
          _os_log_impl(&dword_1B0389000, v331, v447, "[%.*hhx-%{public}s] state: failed, %@", v334, 0x1Fu);
          sub_1B0398EFC(v347, &unk_1EB6E2630, &qword_1B0E97970);
          v348 = v347;
          v124 = v462;
          MEMORY[0x1B272C230](v348, -1, -1);
          v349 = v450;
          __swift_destroy_boxed_opaque_existential_0Tm(v450);
          MEMORY[0x1B272C230](v349, -1, -1);
          MEMORY[0x1B272C230](v334, -1, -1);

          v214 = v449;
        }

        else
        {
          sub_1B03D6AC4(v329, _s6LoggerVMa_0);

          v346 = *(v461 + 8);
          v346(v330, v111);
          sub_1B03D6AC4(v328, _s6LoggerVMa_0);
          v214 = v449;
          v229 = v111;
        }

        v217 = v457;
        v346(v436, v229);
        v121 = v460;
        v125 = v453;
        goto LABEL_76;
      }

      v270 = v446;
      v219 = v412;
      sub_1B03FD208(v446, v412, _s6LoggerVMa_0);
      v220 = v410;
      sub_1B03FD208(v270, v410, _s6LoggerVMa_0);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v221 = v414;
      v155(v414, v443, v111);
      v271 = sub_1B0E43988();
      LODWORD(v446) = sub_1B0E458E8();
      v447 = v271;
      if (os_log_type_enabled(v271, v446))
      {
        v223 = swift_slowAlloc();
        v437 = swift_slowAlloc();
        v272 = swift_slowAlloc();
        v453 = v125;
        v442 = v272;
        v464 = v272;
        *v223 = 68158466;
        *(v223 + 4) = 2;
        *(v223 + 8) = 256;
        v273 = v439;
        v274 = *(v439 + 20);
        v450 = v152;
        v275 = *(v220 + v274);
        v276 = v221;
        v229 = v111;
        sub_1B03D6AC4(v220, _s6LoggerVMa_0);
        *(v223 + 10) = v275;
        *(v223 + 11) = 2082;
        v277 = *(v219 + *(v273 + 20) + 4);
        sub_1B03D6AC4(v219, _s6LoggerVMa_0);
        v278 = ConnectionID.debugDescription.getter(v277);
        v280 = sub_1B0399D64(v278, v279, &v464);

        *(v223 + 13) = v280;
        *(v223 + 21) = 2112;
        sub_1B0422494(&qword_1EB6DB9A0, MEMORY[0x1E6977D78], MEMORY[0x1E6977D88]);
        v281 = swift_allocError();
        v155(v282, v276, v229);
        v283 = sub_1B0E42CC8();
        (*(v461 + 8))(v276, v229);

        *(v223 + 23) = v283;
        v237 = v437;
        *v437 = v283;
        v238 = "[%.*hhx-%{public}s] state: failed, TLS %@";
        goto LABEL_55;
      }
    }

    sub_1B03D6AC4(v220, _s6LoggerVMa_0);

    (*(v461 + 8))(v221, v111);
    sub_1B03D6AC4(v219, _s6LoggerVMa_0);
    v214 = v449;
    v229 = v111;
    v217 = v457;
    goto LABEL_76;
  }

  if (v126 == *MEMORY[0x1E6977C08])
  {
    v198 = v446;
    v199 = v425;
    sub_1B03FD208(v446, v425, _s6LoggerVMa_0);
    v200 = v424;
    sub_1B03FD208(v198, v424, _s6LoggerVMa_0);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v201 = sub_1B0E43988();
    v202 = sub_1B0E458D8();
    if (os_log_type_enabled(v201, v202))
    {
      v203 = swift_slowAlloc();
      v204 = swift_slowAlloc();
      v453 = v125;
      v205 = v204;
      v464 = v204;
      *v203 = 68158210;
      *(v203 + 4) = 2;
      *(v203 + 8) = 256;
      v206 = v439;
      v207 = v200;
      v208 = *(v200 + *(v439 + 20));
      sub_1B03D6AC4(v207, _s6LoggerVMa_0);
      *(v203 + 10) = v208;
      *(v203 + 11) = 2082;
      v209 = *(v199 + *(v206 + 20) + 4);
      sub_1B03D6AC4(v199, _s6LoggerVMa_0);
      v210 = ConnectionID.debugDescription.getter(v209);
      v212 = sub_1B0399D64(v210, v211, &v464);
      v124 = v462;

      *(v203 + 13) = v212;
      v213 = "[%.*hhx-%{public}s] state: setup";
LABEL_46:
      _os_log_impl(&dword_1B0389000, v201, v202, v213, v203, 0x15u);
      __swift_destroy_boxed_opaque_existential_0Tm(v205);
      v268 = v205;
      v125 = v453;
      MEMORY[0x1B272C230](v268, -1, -1);
      MEMORY[0x1B272C230](v203, -1, -1);

LABEL_48:
      v214 = v449;
      v215 = v448;
      v217 = v457;
      v216 = v458;
      goto LABEL_81;
    }

    goto LABEL_47;
  }

  if (v126 == *MEMORY[0x1E6977C28])
  {
    v259 = v446;
    v199 = v417;
    sub_1B03FD208(v446, v417, _s6LoggerVMa_0);
    v200 = v416;
    sub_1B03FD208(v259, v416, _s6LoggerVMa_0);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v201 = sub_1B0E43988();
    v202 = sub_1B0E458D8();
    if (os_log_type_enabled(v201, v202))
    {
      v203 = swift_slowAlloc();
      v260 = swift_slowAlloc();
      v453 = v125;
      v205 = v260;
      v464 = v260;
      *v203 = 68158210;
      *(v203 + 4) = 2;
      *(v203 + 8) = 256;
      v261 = v439;
      v262 = v200;
      v263 = *(v200 + *(v439 + 20));
      sub_1B03D6AC4(v262, _s6LoggerVMa_0);
      *(v203 + 10) = v263;
      *(v203 + 11) = 2082;
      v264 = *(v199 + *(v261 + 20) + 4);
      sub_1B03D6AC4(v199, _s6LoggerVMa_0);
      v265 = ConnectionID.debugDescription.getter(v264);
      v267 = sub_1B0399D64(v265, v266, &v464);
      v124 = v462;

      *(v203 + 13) = v267;
      v213 = "[%.*hhx-%{public}s] state: preparing";
      goto LABEL_46;
    }

LABEL_47:
    sub_1B03D6AC4(v200, _s6LoggerVMa_0);

    sub_1B03D6AC4(v199, _s6LoggerVMa_0);
    goto LABEL_48;
  }

  if (v126 == *MEMORY[0x1E6977C00])
  {
    v310 = v446;
    v311 = v409;
    sub_1B03FD208(v446, v409, _s6LoggerVMa_0);
    v312 = v408;
    sub_1B03FD208(v310, v408, _s6LoggerVMa_0);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v313 = sub_1B0E43988();
    v314 = sub_1B0E45908();
    if (os_log_type_enabled(v313, v314))
    {
      v315 = swift_slowAlloc();
      v316 = swift_slowAlloc();
      v453 = v125;
      v317 = v316;
      v464 = v316;
      *v315 = 68158210;
      *(v315 + 4) = 2;
      *(v315 + 8) = 256;
      v318 = v439;
      v319 = v312;
      v320 = *(v312 + *(v439 + 20));
      sub_1B03D6AC4(v319, _s6LoggerVMa_0);
      *(v315 + 10) = v320;
      *(v315 + 11) = 2082;
      v321 = *(v311 + *(v318 + 20) + 4);
      sub_1B03D6AC4(v311, _s6LoggerVMa_0);
      v322 = ConnectionID.debugDescription.getter(v321);
      v324 = sub_1B0399D64(v322, v323, &v464);
      v124 = v462;

      *(v315 + 13) = v324;
      _os_log_impl(&dword_1B0389000, v313, v314, "[%.*hhx-%{public}s] state: ready", v315, 0x15u);
      __swift_destroy_boxed_opaque_existential_0Tm(v317);
      v325 = v317;
      v125 = v453;
      MEMORY[0x1B272C230](v325, -1, -1);
      MEMORY[0x1B272C230](v315, -1, -1);
    }

    else
    {
      sub_1B03D6AC4(v312, _s6LoggerVMa_0);

      sub_1B03D6AC4(v311, _s6LoggerVMa_0);
    }

    v217 = v457;
    v366 = swift_allocObject();
    swift_weakInit();
    v367 = swift_allocObject();
    *(v367 + 16) = sub_1B0443904;
    *(v367 + 24) = v366;
    swift_retain_n();
    sub_1B0E43CE8();

    v214 = v449;
    goto LABEL_80;
  }

  if (v126 == *MEMORY[0x1E6977C20])
  {
    v350 = v446;
    v351 = v404;
    sub_1B03FD208(v446, v404, _s6LoggerVMa_0);
    v352 = v403;
    sub_1B03FD208(v350, v403, _s6LoggerVMa_0);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v353 = sub_1B0E43988();
    v354 = sub_1B0E458C8();
    if (os_log_type_enabled(v353, v354))
    {
      v355 = swift_slowAlloc();
      v356 = swift_slowAlloc();
      v453 = v125;
      v357 = v356;
      v464 = v356;
      *v355 = 68158210;
      *(v355 + 4) = 2;
      *(v355 + 8) = 256;
      v358 = v439;
      v359 = v352;
      v360 = *(v352 + *(v439 + 20));
      sub_1B03D6AC4(v359, _s6LoggerVMa_0);
      *(v355 + 10) = v360;
      *(v355 + 11) = 2082;
      v361 = *(v351 + *(v358 + 20) + 4);
      sub_1B03D6AC4(v351, _s6LoggerVMa_0);
      v362 = ConnectionID.debugDescription.getter(v361);
      v364 = sub_1B0399D64(v362, v363, &v464);
      v124 = v462;

      *(v355 + 13) = v364;
      _os_log_impl(&dword_1B0389000, v353, v354, "[%.*hhx-%{public}s] state: cancelled", v355, 0x15u);
      __swift_destroy_boxed_opaque_existential_0Tm(v357);
      v365 = v357;
      v125 = v453;
      MEMORY[0x1B272C230](v365, -1, -1);
      MEMORY[0x1B272C230](v355, -1, -1);
    }

    else
    {
      sub_1B03D6AC4(v352, _s6LoggerVMa_0);

      sub_1B03D6AC4(v351, _s6LoggerVMa_0);
    }

    v214 = v449;
    v398 = v457;
    v399 = v407;
    type metadata accessor for ConnectionEvent.FailureReason(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5508, &unk_1B0ED0CC0);
    v400 = (*(v445 + 80) + 32) & ~*(v445 + 80);
    v401 = swift_allocObject();
    *(v401 + 16) = xmmword_1B0EC1E70;
    sub_1B03FD208(v399, v401 + v400, type metadata accessor for ConnectionEvent);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1B0426318(v401);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v216 = v458;
    sub_1B03D6AC4(v399, type metadata accessor for ConnectionEvent);
    v215 = v448;
    v217 = v398;
  }

  else
  {
    v382 = v446;
    v383 = v406;
    sub_1B03FD208(v446, v406, _s6LoggerVMa_0);
    v384 = v405;
    sub_1B03FD208(v382, v405, _s6LoggerVMa_0);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v385 = sub_1B0E43988();
    v386 = sub_1B0E458E8();
    if (os_log_type_enabled(v385, v386))
    {
      v387 = swift_slowAlloc();
      v388 = swift_slowAlloc();
      v453 = v125;
      v389 = v388;
      v464 = v388;
      *v387 = 68158210;
      *(v387 + 4) = 2;
      *(v387 + 8) = 256;
      v390 = v439;
      v391 = v384;
      v392 = *(v384 + *(v439 + 20));
      sub_1B03D6AC4(v391, _s6LoggerVMa_0);
      *(v387 + 10) = v392;
      *(v387 + 11) = 2082;
      v123 = v450;
      v393 = *(v383 + *(v390 + 20) + 4);
      sub_1B03D6AC4(v383, _s6LoggerVMa_0);
      v394 = ConnectionID.debugDescription.getter(v393);
      v396 = sub_1B0399D64(v394, v395, &v464);
      v124 = v462;

      *(v387 + 13) = v396;
      _os_log_impl(&dword_1B0389000, v385, v386, "[%.*hhx-%{public}s] state: <unknown>", v387, 0x15u);
      __swift_destroy_boxed_opaque_existential_0Tm(v389);
      v397 = v389;
      v125 = v453;
      MEMORY[0x1B272C230](v397, -1, -1);
      MEMORY[0x1B272C230](v387, -1, -1);
    }

    else
    {
      sub_1B03D6AC4(v384, _s6LoggerVMa_0);

      sub_1B03D6AC4(v383, _s6LoggerVMa_0);
    }

    v214 = v449;
    v217 = v457;
    v216 = v458;
    v452(v123, v458);
    v215 = v448;
  }

LABEL_81:
  swift_beginAccess();
  sub_1B03B5C80(v217, v214, &qword_1EB6E5520, &qword_1B0ED0CE8);
  if ((*(v124 + 48))(v214, 1, v216) == 1)
  {
LABEL_82:
    v371 = v124;
    v372 = v440;
    v373 = v121;
    v374 = v463;
    v375 = v216;
    v376 = v373;
    (v373)(v440);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5508, &unk_1B0ED0CC0);
    v377 = (*(v445 + 80) + 32) & ~*(v445 + 80);
    v378 = swift_allocObject();
    *(v378 + 16) = xmmword_1B0EC1E70;
    sub_1B03FD208(v372, v378 + v377, type metadata accessor for ConnectionEvent);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1B0426318(v378);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    sub_1B03D6AC4(v372, type metadata accessor for ConnectionEvent);
    v380 = v441;
    v376(v441, v374, v375);
    (*(v371 + 56))(v380, 0, 1, v375);
    v381 = v457;
    swift_beginAccess();
    sub_1B0455DE8(v380, v381);
    return sub_1B0398EFC(v214, &qword_1EB6E5520, &qword_1B0ED0CE8);
  }

  sub_1B03B5C80(v214, v215, &qword_1EB6E5520, &qword_1B0ED0CE8);
  v379 = v125(v215, v216);
  if (v379 == *MEMORY[0x1E6977C10])
  {

    v452(v215, v216);
  }

  else
  {
    if (v379 != *MEMORY[0x1E6977C20])
    {
      v452(v215, v216);
      goto LABEL_82;
    }
  }

  return sub_1B0398EFC(v214, &qword_1EB6E5520, &qword_1B0ED0CE8);
}

uint64_t sub_1B042D30C()
{

  return swift_deallocObject();
}

uint64_t sub_1B042D344(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5558, &qword_1B0ED2728);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  v8 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B038CA0C(v2, v10, type metadata accessor for ConnectionState);
  result = swift_getEnumCaseMultiPayload();
  if (result > 2)
  {
    if (result == 3)
    {
      return sub_1B038C704(v10, type metadata accessor for ConnectionState);
    }

    if (result == 4)
    {
      return result;
    }
  }

  else
  {
    sub_1B038C704(v10, type metadata accessor for ConnectionState);
  }

  v12 = *(v5 + 48);
  sub_1B038CA0C(v2, v7, type metadata accessor for ConnectionState);
  v13 = sub_1B0E43DF8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 16);
  v15(&v7[v12], a1, v13);
  v16 = (*(v14 + 88))(&v7[v12], v13);
  if (v16 == *MEMORY[0x1E6977C10])
  {
LABEL_6:
    sub_1B038C704(v2, type metadata accessor for ConnectionState);
    swift_storeEnumTagMultiPayload();
    (*(v14 + 8))(&v7[v12], v13);
    return sub_1B038C704(v7, type metadata accessor for ConnectionState);
  }

  if (v16 == *MEMORY[0x1E6977C00])
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B038C704(v2, type metadata accessor for ConnectionState);
      v17 = static MonotonicTime.now()();
      *&v2[*(type metadata accessor for UnauthenticatedStateWithTasks(0) + 28)] = MEMORY[0x1E69E7CC0];
      *v2 = a2;
      *(v2 + 1) = v17;
      type metadata accessor for UnauthenticatedState(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v18 = v7;
      goto LABEL_15;
    }
  }

  else if (v16 == *MEMORY[0x1E6977C20])
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    return sub_1B0398EFC(v7, &qword_1EB6E5558, &qword_1B0ED2728);
  }

  sub_1B038C704(v2, type metadata accessor for ConnectionState);
  v15(v2, a1, v13);
  swift_storeEnumTagMultiPayload();
  v18 = v7;
LABEL_15:
  sub_1B038C704(v18, type metadata accessor for ConnectionState);
  return (*(v14 + 8))(&v7[v12], v13);
}

void sub_1B042D734(uint64_t a1)
{
  v3 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v16 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v16 - v10;
  v12 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1B038C9A4(v1 + v12, v11, type metadata accessor for ConnectionState);
  v13 = _s15IMAP2Connection0B5StateO21__derived_enum_equalsySbAC_ACtFZ_0(a1, v11);
  sub_1B038D690(v11, type metadata accessor for ConnectionState);
  if ((v13 & 1) == 0)
  {
    sub_1B038C9A4(a1, v8, type metadata accessor for ConnectionState);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      memcpy(v21, v8, sizeof(v21));
      sub_1B038C9A4(v1 + v12, v5, type metadata accessor for ConnectionState);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        memcpy(v18, v5, sizeof(v18));
        v19[8] = *&v21[320];
        v19[9] = *&v21[336];
        v20 = *&v21[352];
        v19[4] = *&v21[256];
        v19[5] = *&v21[272];
        v19[6] = *&v21[288];
        v19[7] = *&v21[304];
        v19[0] = *&v21[192];
        v19[1] = *&v21[208];
        v19[2] = *&v21[224];
        v19[3] = *&v21[240];
        if (sub_1B0BE2780(v19) == 1)
        {
          sub_1B03DB9A4(v19);
          sub_1B0BE278C(v21);
          v16[8] = *&v18[320];
          v16[9] = *&v18[336];
          v17 = *&v18[352];
          v16[4] = *&v18[256];
          v16[5] = *&v18[272];
          v16[6] = *&v18[288];
          v16[7] = *&v18[304];
          v16[0] = *&v18[192];
          v16[1] = *&v18[208];
          v16[2] = *&v18[224];
          v16[3] = *&v18[240];
          if (sub_1B0BE2780(v16) == 1)
          {
            sub_1B03DB9A4(v16);
            sub_1B0BE278C(v18);
            return;
          }

          v14 = v18;
        }

        else
        {
          sub_1B0BE278C(v18);
          v14 = v21;
        }

        sub_1B0BE278C(v14);
      }

      else
      {
        sub_1B0BE278C(v21);
        sub_1B038D690(v5, type metadata accessor for ConnectionState);
      }
    }

    else
    {
      sub_1B038D690(v8, type metadata accessor for ConnectionState);
    }

    v15 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_enqueuedEvents;
    swift_beginAccess();
    if (*(v1 + v15))
    {
      sub_1B042DA54(a1);
    }

    else
    {
      *(v1 + v15) = MEMORY[0x1E69E7CC0];
      sub_1B042DA54(a1);
      sub_1B044DBD8();
    }
  }
}

uint64_t sub_1B042DA54(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5470, &unk_1B0ED0460);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v93 = (&v89 - v5);
  v95 = type metadata accessor for ConnectionEvent(0);
  MEMORY[0x1EEE9AC00](v95);
  v94 = (&v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v96 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v96);
  v97 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v92 = &v89 - v9;
  v10 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v10);
  v99 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v89 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v89 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5478, &unk_1B0ED2770);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v89 - v20;
  sub_1B044C2EC();
  v22 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  v23 = *(v19 + 56);
  v100 = a1;
  sub_1B038C9A4(a1, v21, type metadata accessor for ConnectionState);
  v24 = v1;
  v98 = v22;
  v25 = v23;
  sub_1B038C9A4(v24 + v22, &v21[v23], type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v39 = v94;
    sub_1B038C9A4(&v21[v25], v14, type metadata accessor for ConnectionState);
    v40 = *v14;
    v41 = v14[1];
    v42 = v14[2];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v90 = static MonotonicTime.now()();
      v91 = v42;
      *v39 = v40;
      v39[1] = v41;
      v39[2] = v42;
      type metadata accessor for ConnectionEvent.FailureReason(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v92 = v21;
      v43 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_recentErrors;
      v2 = v24;
      swift_beginAccess();
      v44 = v93;
      sub_1B038C9A4(v39, v93, type metadata accessor for ConnectionEvent);
      sub_1B0BD67B0(v40, v41, v42);
      v95 = v25;
      sub_1B0BDD224(v90, v44);
      sub_1B0398EFC(v44, &qword_1EB6E5470, &unk_1B0ED0460);
      sub_1B038D690(v39, type metadata accessor for ConnectionEvent);
      swift_endAccess();
      v45 = swift_allocObject();
      *(v45 + 16) = *(v2 + v43);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      *(v45 + 24) = *ConnectionID.invalid.unsafeMutableAddressor();
      v46 = MEMORY[0x1E69E7CD0];
      *(v45 + 32) = MEMORY[0x1E69E7CD0];
      *(v45 + 40) = v46;
      sub_1B0BDAD70(v45 | 0x1000000000000000);

      sub_1B0E43E28();
      sub_1B0BD1488(v40, v41, v91);
      v47 = v92;
      sub_1B038D690(v92, type metadata accessor for ConnectionState);
      v48 = v47 + v95;
      goto LABEL_23;
    }

    sub_1B0BD1488(v40, v41, v42);
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 2)
  {
LABEL_11:
    v2 = v24;
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      v54 = swift_getEnumCaseMultiPayload();
      v55 = v99;
      if (v54 == 4)
      {
        sub_1B0E43E28();
        sub_1B038D690(v21, type metadata accessor for ConnectionState);
      }

      else
      {
        sub_1B0398EFC(v21, &qword_1EB6E5478, &unk_1B0ED2770);
      }

      v56 = v100;
      goto LABEL_24;
    }

    v48 = &v21[v25];
    goto LABEL_23;
  }

  v95 = v23;
  sub_1B038C9A4(&v21[v23], v17, type metadata accessor for ConnectionState);
  memcpy(v105, v17, sizeof(v105));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = v21;
    v28 = v24 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    v29 = v92;
    sub_1B038C9A4(v24 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v92, _s6LoggerVMa_0);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v30 = sub_1B0E43988();
    v31 = sub_1B0E439A8();
    (*(*(v31 - 8) + 8))(v29, v31);
    v32 = sub_1B0E458D8();
    if (os_log_type_enabled(v30, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v101[0] = v34;
      *v33 = 68158210;
      *(v33 + 4) = 2;
      *(v33 + 8) = 256;
      v35 = v28 + *(v96 + 20);
      *(v33 + 10) = *v35;

      *(v33 + 11) = 2082;
      v36 = ConnectionID.debugDescription.getter(*(v35 + 4));
      v38 = sub_1B0399D64(v36, v37, v101);

      *(v33 + 13) = v38;
      _os_log_impl(&dword_1B0389000, v30, v32, "[%.*hhx-%{public}s] Connection did authenticate.", v33, 0x15u);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      MEMORY[0x1B272C230](v34, -1, -1);
      MEMORY[0x1B272C230](v33, -1, -1);
    }

    else
    {
    }

    v57 = *v105;
    v58 = Capability.idle.unsafeMutableAddressor();
    v59 = *v58;
    v60 = v58[1];
    v61 = v58[2];
    v62 = *(v58 + 24);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v63 = sub_1B039F8EC(v59, v60, v61, v62, v57);

    v64 = v2 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_idle;
    result = swift_beginAccess();
    if (!*(v64 + 40))
    {
      __break(1u);
      return result;
    }

    if (v63)
    {
      v66 = 2;
    }

    else
    {
      v66 = 1;
    }

    sub_1B0C09438(v66);
    swift_endAccess();
    v67 = swift_allocObject();
    *(v67 + 16) = v57;
    *(v67 + 136) = *&v105[120];
    *(v67 + 152) = *&v105[136];
    *(v67 + 168) = *&v105[152];
    *(v67 + 184) = *&v105[168];
    *(v67 + 72) = *&v105[56];
    *(v67 + 88) = *&v105[72];
    *(v67 + 104) = *&v105[88];
    *(v67 + 120) = *&v105[104];
    *(v67 + 24) = *&v105[8];
    *(v67 + 40) = *&v105[24];
    *(v67 + 56) = *&v105[40];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B039F420(&v105[8], v101);
    sub_1B0446050(v67);

    sub_1B0BE278C(v105);
    sub_1B038D690(v27, type metadata accessor for ConnectionState);
    v48 = v27 + v95;
    goto LABEL_23;
  }

  v49 = *(v17 + 21);
  v101[8] = *(v17 + 20);
  v101[9] = v49;
  v102 = *(v17 + 176);
  v50 = *(v17 + 17);
  v101[4] = *(v17 + 16);
  v101[5] = v50;
  v51 = *(v17 + 19);
  v101[6] = *(v17 + 18);
  v101[7] = v51;
  v52 = *(v17 + 13);
  v101[0] = *(v17 + 12);
  v101[1] = v52;
  v53 = *(v17 + 15);
  v101[2] = *(v17 + 14);
  v101[3] = v53;
  if (!sub_1B0BE2780(v101))
  {
    v80 = sub_1B03DB9A4(v101);
    v81 = *v80;
    if (*v80)
    {
      v82 = v21;
      v84 = v80[3];
      v83 = v80[4];
      v86 = v80[1];
      v85 = v80[2];
      v87 = swift_allocObject();
      *(v87 + 16) = v81;
      *(v87 + 24) = v86;
      *(v87 + 32) = v85;
      *(v87 + 40) = v84;
      *(v87 + 48) = v83;
      sub_1B0BE2E00(&v105[192], v103);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B6DCB0(v85, v84, v83);
      v2 = v24;
      sub_1B0446050(v87 | 0x5000000000000000);

      sub_1B0B6DCF0(v85, v84, v83);
      sub_1B0BE278C(v105);
      sub_1B038D690(&v82[v95], type metadata accessor for ConnectionState);
      v48 = v82;
      goto LABEL_23;
    }

    v103[8] = *&v105[320];
    v103[9] = *&v105[336];
    v104 = *&v105[352];
    v103[4] = *&v105[256];
    v103[5] = *&v105[272];
    v103[6] = *&v105[288];
    v103[7] = *&v105[304];
    v103[0] = *&v105[192];
    v103[1] = *&v105[208];
    v103[2] = *&v105[224];
    v103[3] = *&v105[240];
    v88 = sub_1B03DB9A4(v103);
    sub_1B0BE2DA8(*v88, v88[1], v88[2], v88[3], v88[4]);
  }

  sub_1B0BE278C(v105);
  sub_1B038D690(&v21[v95], type metadata accessor for ConnectionState);
  v48 = v21;
LABEL_23:
  sub_1B038D690(v48, type metadata accessor for ConnectionState);
  v55 = v99;
  v56 = v100;
LABEL_24:
  sub_1B038C9A4(v2 + v98, v55, type metadata accessor for ConnectionState);
  v68 = ConnectionState.mailboxSelectionPayload(old:)(v56);
  sub_1B038D690(v55, type metadata accessor for ConnectionState);
  if ((~v68 & 0xF000000000000007) != 0)
  {
    v69 = v2 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    v70 = v97;
    sub_1B038C9A4(v2 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v97, _s6LoggerVMa_0);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v71 = sub_1B0E43988();
    v72 = sub_1B0E439A8();
    (*(*(v72 - 8) + 8))(v70, v72);
    v73 = sub_1B0E458D8();
    if (os_log_type_enabled(v71, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v105 = v75;
      *v74 = 68158210;
      *(v74 + 4) = 2;
      *(v74 + 8) = 256;
      v76 = v69 + *(v96 + 20);
      *(v74 + 10) = *v76;

      *(v74 + 11) = 2082;
      v77 = ConnectionID.debugDescription.getter(*(v76 + 4));
      v79 = sub_1B0399D64(v77, v78, v105);

      *(v74 + 13) = v79;
      _os_log_impl(&dword_1B0389000, v71, v73, "[%.*hhx-%{public}s] Mailbox selection changed.", v74, 0x15u);
      __swift_destroy_boxed_opaque_existential_0Tm(v75);
      MEMORY[0x1B272C230](v75, -1, -1);
      MEMORY[0x1B272C230](v74, -1, -1);
    }

    else
    {
    }

    sub_1B0446050(v68);
    sub_1B0BE2D94(v68);
  }

  sub_1B0BDC398();
  return sub_1B0446050(0x8000000000000010);
}

uint64_t sub_1B042E67C()
{

  return swift_deallocObject();
}

uint64_t sub_1B042E6C4()
{

  if (*(v0 + 48))
  {
    if ((~*(v0 + 32) & 0xF000000000000007) != 0)
    {
      sub_1B0447F14(*(v0 + 32));
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1B042E724()
{

  return swift_deallocObject();
}

int64_t sub_1B042E7B4(void (*a1)(unint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, void *a4, __int128 *a5)
{
  v6 = v5;
  v164 = a5;
  v161 = a3;
  v162 = a4;
  v154 = a2;
  v155 = a1;
  v7 = _s6LoggerVMa_0(0);
  v8 = *(v7 - 8);
  v159 = v7;
  v160 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v149 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v149 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v151 = &v149 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v152 = &v149 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v156 = &v149 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v157 = &v149 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v153 = &v149 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v158 = &v149 - v28;
  v29 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v149 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for UnauthenticatedStateWithTasks(0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v149 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B038CA0C(v6, v31, type metadata accessor for ConnectionState);
  v163 = v29;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_1B038C704(v31, type metadata accessor for ConnectionState);
  }

  v149 = v16;
  v35 = v6;
  v36 = &v239;
  v150 = v35;
  sub_1B038C704(v35, type metadata accessor for ConnectionState);
  sub_1B04478FC(v31, v34, type metadata accessor for UnauthenticatedStateWithTasks);
  sub_1B04319C0(&v222);
  v219 = v230;
  v220 = v231;
  v221[0] = v232[0];
  *(v221 + 9) = *(v232 + 9);
  v215 = v226;
  v216 = v227;
  v217 = v228;
  v218 = v229;
  v211 = v222;
  v212 = v223;
  v213 = v224;
  v214 = v225;
  v247 = v230;
  v248 = v231;
  v249[0] = v232[0];
  *(v249 + 9) = *(v232 + 9);
  v243 = v226;
  v244 = v227;
  v245 = v228;
  v246 = v229;
  v239 = v222;
  v240 = v223;
  v241 = v224;
  v242 = v225;
  v37 = v34;
  if (sub_1B044CFF8(&v239) != 1)
  {
    v250[8] = v247;
    v250[9] = v248;
    v251[0] = v249[0];
    *(v251 + 9) = *(v249 + 9);
    v250[4] = v243;
    v250[5] = v244;
    v250[6] = v245;
    v250[7] = v246;
    v250[0] = v239;
    v250[1] = v240;
    v250[2] = v241;
    v250[3] = v242;
    if (sub_1B0BF706C(v250) == 1)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      v38 = &v211;
      goto LABEL_11;
    }

    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  }

  if (*(*&v34[*(v32 + 28)] + 16))
  {
    sub_1B0398EFC(&v222, &qword_1EB6E5588, &qword_1B0ED2750);
LABEL_10:
    v40 = v164;
    sub_1B038CA0C(v164, v10, _s6LoggerVMa_0);
    v41 = (*(v160 + 80) + 16) & ~*(v160 + 80);
    v42 = (v9 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    sub_1B04478FC(v10, v43 + v41, _s6LoggerVMa_0);
    v44 = (v43 + v42);
    v45 = v162;
    *v44 = v161;
    v44[1] = v45;
    sub_1B044D00C(v40, sub_1B0BF6FCC, v43);
    sub_1B04478FC(v34, v150, type metadata accessor for UnauthenticatedStateWithTasks);
    swift_storeEnumTagMultiPayload();
  }

  v237[8] = v230;
  v237[9] = v231;
  v238[0] = v232[0];
  *(v238 + 9) = *(v232 + 9);
  v237[4] = v226;
  v237[5] = v227;
  v237[6] = v228;
  v237[7] = v229;
  v237[0] = v222;
  v237[1] = v223;
  v237[2] = v224;
  v237[3] = v225;
  v38 = v237;
  if (sub_1B044CFF8(v237) == 1)
  {
    goto LABEL_10;
  }

LABEL_11:
  v46 = v38[9];
  v208 = v38[8];
  v209 = v46;
  v210[0] = v38[10];
  *(v210 + 9) = *(v38 + 169);
  v47 = v38[5];
  v204 = v38[4];
  v205 = v47;
  v48 = v38[7];
  v206 = v38[6];
  v207 = v48;
  v49 = v38[1];
  v200 = *v38;
  v201 = v49;
  v50 = v38[3];
  v202 = v38[2];
  v203 = v50;
  v198[8] = v208;
  v198[9] = v209;
  v199[0] = v210[0];
  *(v199 + 9) = *(v210 + 9);
  v198[4] = v204;
  v198[5] = v205;
  v198[6] = v206;
  v198[7] = v207;
  v198[0] = v200;
  v198[1] = v201;
  v198[2] = v202;
  v198[3] = v50;
  if (sub_1B0BF706C(v198) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v36 = *v51;
    v52 = v51[1];
    v53 = v51[2];
    v54 = v164;
    v55 = v149;
    sub_1B038CA0C(v164, v149, _s6LoggerVMa_0);
    sub_1B038CA0C(v54, v13, _s6LoggerVMa_0);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v195 = v219;
    v196 = v220;
    v197[0] = v221[0];
    *(v197 + 9) = *(v221 + 9);
    v191 = v215;
    v192 = v216;
    v193 = v217;
    v194 = v218;
    v187 = v211;
    v188 = v212;
    v189 = v213;
    v190 = v214;
    sub_1B03B5C80(&v187, &v176, &qword_1EB6E5590, &qword_1B0ED2758);
    v38 = sub_1B0E43988();
    v56 = sub_1B0E458E8();
    sub_1B0398EFC(&v222, &qword_1EB6E5588, &qword_1B0ED2750);
    if (os_log_type_enabled(v38, v56))
    {
      v161 = v52;
      v162 = v34;
      v164 = v36;
      v57 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      *&v176 = v160;
      *v57 = 68158466;
      *(v57 + 4) = 2;
      *(v57 + 8) = 256;
      v58 = v53;
      v59 = v159;
      v60 = v13[*(v159 + 20)];
      sub_1B038C704(v13, _s6LoggerVMa_0);
      *(v57 + 10) = v60;
      *(v57 + 11) = 2082;
      v61 = *(v59 + 20);
      v53 = v58;
      v62 = *(v55 + v61 + 4);
      sub_1B038C704(v55, _s6LoggerVMa_0);
      v63 = ConnectionID.debugDescription.getter(v62);
      v65 = sub_1B0399D64(v63, v64, &v176);

      *(v57 + 13) = v65;
      *(v57 + 21) = 2080;
      v66 = 0xEA00000000006174;
      v67 = 0x6F7571207265766FLL;
      if (v58 > 1)
      {
        if (v58 == 2)
        {
          v66 = 0xE500000000000000;
          v67 = 0x6B63757473;
        }

        else if (v58 == 3)
        {
          v66 = 0xE500000000000000;
          v67 = 0x726568746FLL;
        }
      }

      else if (v58)
      {
        if (v58 == 1)
        {
          v66 = 0x80000001B0F2C330;
          v67 = 0xD000000000000015;
        }
      }

      else
      {
        v66 = 0xEF736C6169746E65;
        v67 = 0x6465726320646162;
      }

      v128 = sub_1B0399D64(v67, v66, &v176);

      *(v57 + 23) = v128;
      _os_log_impl(&dword_1B0389000, v38, v56, "[%.*hhx-%{public}s] Authentication failed: %s", v57, 0x1Fu);
      v129 = v160;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v129, -1, -1);
      MEMORY[0x1B272C230](v57, -1, -1);

      sub_1B038C704(v162, type metadata accessor for UnauthenticatedStateWithTasks);
      v71 = v150;
      v36 = v164;
      v52 = v161;
      goto LABEL_55;
    }

LABEL_22:
    sub_1B038C704(v13, _s6LoggerVMa_0);

    sub_1B038C704(v55, _s6LoggerVMa_0);
    sub_1B038C704(v34, type metadata accessor for UnauthenticatedStateWithTasks);
    v71 = v150;
LABEL_55:
    *v71 = v36;
    v71[1] = v52;
    v71[2] = v53;
    return swift_storeEnumTagMultiPayload();
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  v55 = v68;
  result = static MonotonicTime.now()();
  v69 = *(v34 + 1);
  v70 = result - v69;
  if (result < v69)
  {
    v13 = v157;
    v52 = v158;
    v53 = v156;
    if (__OFSUB__(v69, result))
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v70 = result - v69;
    if (__OFSUB__(0, v69 - result))
    {
      __break(1u);
      goto LABEL_22;
    }

LABEL_24:
    v72 = v70 / 1000000000.0;
    if (COERCE__INT64(fabs(v72)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v72 > -9.22337204e18)
    {
      if (v72 < 9.22337204e18)
      {
        v73 = v72;
        v194 = *(v55 + 120);
        v195 = *(v55 + 136);
        v196 = *(v55 + 152);
        v197[0] = *(v55 + 168);
        v190 = *(v55 + 56);
        v191 = *(v55 + 72);
        v192 = *(v55 + 88);
        v193 = *(v55 + 104);
        v187 = *(v55 + 8);
        v188 = *(v55 + 24);
        v189 = *(v55 + 40);
        v74 = ServerID.logDescription.getter();
        if (v75)
        {
          v76 = v75;
          v162 = v74;
          v77 = v164;
          sub_1B038CA0C(v164, v52, _s6LoggerVMa_0);
          v78 = v153;
          sub_1B038CA0C(v77, v153, _s6LoggerVMa_0);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v79 = sub_1B0E43988();
          v80 = sub_1B0E45908();

          if (os_log_type_enabled(v79, v80))
          {
            v81 = v52;
            v82 = swift_slowAlloc();
            v160 = swift_slowAlloc();
            *&v176 = v160;
            *v82 = 68158722;
            *(v82 + 4) = 2;
            *(v82 + 8) = 256;
            v161 = v73;
            v83 = v159;
            v84 = v78;
            v85 = *(v78 + *(v159 + 20));
            LODWORD(v158) = v80;
            sub_1B038C704(v84, _s6LoggerVMa_0);
            *(v82 + 10) = v85;
            *(v82 + 11) = 2082;
            v86 = *(v81 + *(v83 + 20) + 4);
            sub_1B038C704(v81, _s6LoggerVMa_0);
            v87 = ConnectionID.debugDescription.getter(v86);
            v89 = v37;
            v90 = sub_1B0399D64(v87, v88, &v176);

            *(v82 + 13) = v90;
            v37 = v89;
            *(v82 + 21) = 2082;
            v91 = sub_1B0399D64(v162, v76, &v176);

            *(v82 + 23) = v91;
            *(v82 + 31) = 2048;
            *(v82 + 33) = v161;
            _os_log_impl(&dword_1B0389000, v79, v158, "[%.*hhx-%{public}s] Authentication completed with server %{public}s (took %ld s)", v82, 0x29u);
            v92 = v160;
            swift_arrayDestroy();
            MEMORY[0x1B272C230](v92, -1, -1);
            v93 = v82;
LABEL_32:
            MEMORY[0x1B272C230](v93, -1, -1);

            goto LABEL_39;
          }

          sub_1B038C704(v78, _s6LoggerVMa_0);

          v107 = v52;
        }

        else
        {
          v94 = v164;
          sub_1B038CA0C(v164, v13, _s6LoggerVMa_0);
          sub_1B038CA0C(v94, v53, _s6LoggerVMa_0);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v79 = sub_1B0E43988();
          v95 = sub_1B0E45908();
          if (os_log_type_enabled(v79, v95))
          {
            v96 = swift_slowAlloc();
            v97 = swift_slowAlloc();
            v162 = v37;
            v98 = v97;
            *&v176 = v97;
            *v96 = 68158466;
            *(v96 + 4) = 2;
            *(v96 + 8) = 256;
            v161 = v73;
            v99 = v159;
            v100 = *(v53 + *(v159 + 20));
            sub_1B038C704(v53, _s6LoggerVMa_0);
            *(v96 + 10) = v100;
            *(v96 + 11) = 2082;
            v101 = *&v13[*(v99 + 20) + 4];
            sub_1B038C704(v13, _s6LoggerVMa_0);
            v102 = ConnectionID.debugDescription.getter(v101);
            v104 = sub_1B0399D64(v102, v103, &v176);

            *(v96 + 13) = v104;
            *(v96 + 21) = 2048;
            *(v96 + 23) = v161;
            _os_log_impl(&dword_1B0389000, v79, v95, "[%.*hhx-%{public}s] Authentication completed (took %ld s).", v96, 0x1Fu);
            __swift_destroy_boxed_opaque_existential_0(v98);
            v105 = v98;
            v37 = v162;
            MEMORY[0x1B272C230](v105, -1, -1);
            v93 = v96;
            goto LABEL_32;
          }

          sub_1B038C704(v53, _s6LoggerVMa_0);

          v107 = v13;
        }

        v106 = sub_1B038C704(v107, _s6LoggerVMa_0);
LABEL_39:
        v155(&v233, v106);
        v252 = v235;
        v108 = *(&v234 + 1);
        v253 = v236;
        v109 = v233;
        v110 = v234;
        if (v236 == 1)
        {
          sub_1B044A65C(v233, v234, *(&v234 + 1));
LABEL_41:
          v111 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v112 = sub_1B0BF4770(v111);

          v113 = *v37;
          sub_1B039F420(v55 + 8, &v176);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B038C704(v37, type metadata accessor for UnauthenticatedStateWithTasks);
          sub_1B0398EFC(&v222, &qword_1EB6E5588, &qword_1B0ED2750);
          v165 = 0u;
          v166 = 0u;
          *&v167 = 0;
          sub_1B0BF6DA0(&v165);
          v183 = *(v55 + 120);
          v114 = v183;
          v179 = *(v55 + 56);
          v115 = v179;
          v184 = *(v55 + 136);
          v185 = *(v55 + 152);
          v186 = *(v55 + 168);
          v180 = *(v55 + 72);
          v181 = *(v55 + 88);
          v182 = *(v55 + 104);
          v176 = *(v55 + 8);
          v177 = *(v55 + 24);
          v178 = *(v55 + 40);
          v116 = v150;
          *v150 = v112;
          *(v116 + 7) = v115;
          *(v116 + 15) = v114;
          v117 = v177;
          *(v116 + 5) = v178;
          v118 = v176;
          *(v116 + 3) = v117;
          *(v116 + 1) = v118;
          v119 = v180;
          v120 = v181;
          *(v116 + 13) = v182;
          *(v116 + 11) = v120;
          *(v116 + 9) = v119;
          v121 = v185;
          *(v116 + 21) = v186;
          v122 = v184;
          *(v116 + 19) = v121;
          *(v116 + 17) = v122;
          v116[23] = v113;
          v123 = v174;
          *(v116 + 20) = v173;
          *(v116 + 21) = v123;
          *(v116 + 176) = v175;
          v124 = v170;
          *(v116 + 16) = v169;
          *(v116 + 17) = v124;
          v125 = v172;
          *(v116 + 18) = v171;
          *(v116 + 19) = v125;
          v126 = v166;
          *(v116 + 12) = v165;
          *(v116 + 13) = v126;
          v127 = v168;
          *(v116 + 14) = v167;
          *(v116 + 15) = v127;
          return swift_storeEnumTagMultiPayload();
        }

        if (v233 >> 62 == 1)
        {
          if (!v236)
          {
            if ((v252 == 1 || v233 != 771) && v233 != 772)
            {
              goto LABEL_60;
            }

LABEL_59:
            sub_1B044A65C(v109, v110, v108);
            sub_1B044A6B4(&v252);
            goto LABEL_41;
          }

          if (v252 == 1)
          {
            if (v233 != 772)
            {
              goto LABEL_60;
            }
          }

          else if (v233 - 773 < 0xFFFFFFFE)
          {
            goto LABEL_60;
          }

          if (*(&v234 + 1) && (__PAIR128__(v236, *(&v252 + 1)) == v234 || (sub_1B0E46A78() & 1) != 0))
          {
            goto LABEL_59;
          }
        }

LABEL_60:
        v162 = v37;
        sub_1B0398EFC(&v222, &qword_1EB6E5588, &qword_1B0ED2750);
        v130 = v164;
        v131 = v152;
        sub_1B038CA0C(v164, v152, _s6LoggerVMa_0);
        v132 = v151;
        sub_1B038CA0C(v130, v151, _s6LoggerVMa_0);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B044A64C(v109, v110, v108);
        sub_1B0BF7074(&v252, &v176);
        v133 = sub_1B0E43988();
        v134 = sub_1B0E458E8();
        sub_1B044A65C(v109, v110, v108);
        sub_1B044A6B4(&v252);
        if (os_log_type_enabled(v133, v134))
        {
          v135 = swift_slowAlloc();
          v164 = swift_slowAlloc();
          *&v176 = v164;
          *v135 = 68158466;
          *(v135 + 4) = 2;
          *(v135 + 8) = 256;
          v136 = v159;
          v137 = *(v159 + 20);
          LODWORD(v161) = v134;
          v138 = v132;
          v139 = *(v132 + v137);
          sub_1B038C704(v138, _s6LoggerVMa_0);
          *(v135 + 10) = v139;
          *(v135 + 11) = 2082;
          v140 = *(v131 + *(v136 + 20) + 4);
          sub_1B038C704(v131, _s6LoggerVMa_0);
          v141 = ConnectionID.debugDescription.getter(v140);
          v143 = sub_1B0399D64(v141, v142, &v176);

          *(v135 + 13) = v143;
          *(v135 + 21) = 2082;
          sub_1B044A6B4(&v252);
          v144 = sub_1B0C36F70(v109);
          v146 = v145;
          sub_1B044A65C(v109, v110, v108);
          v147 = sub_1B0399D64(v144, v146, &v176);

          *(v135 + 23) = v147;
          _os_log_impl(&dword_1B0389000, v133, v161, "[%.*hhx-%{public}s] Did authenticate, but connection (%{public}s) does not fulfil TLS requirements.", v135, 0x1Fu);
          v148 = v164;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v148, -1, -1);
          MEMORY[0x1B272C230](v135, -1, -1);
        }

        else
        {
          sub_1B038C704(v132, _s6LoggerVMa_0);
          sub_1B044A65C(v109, v110, v108);
          sub_1B044A6B4(&v252);

          sub_1B038C704(v131, _s6LoggerVMa_0);
        }

        sub_1B038C704(v162, type metadata accessor for UnauthenticatedStateWithTasks);
        return swift_storeEnumTagMultiPayload();
      }

      goto LABEL_67;
    }

    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v13 = v157;
  v52 = v158;
  v53 = v156;
  if (!__OFSUB__(result, v69))
  {
    goto LABEL_24;
  }

LABEL_69:
  __break(1u);
  return result;
}

uint64_t sub_1B042FBBC()
{
  v1 = *(_s6LoggerVMa_0(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_1B0E439A8();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

void sub_1B042FC94(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a4;
  v7(v9, a3, a4);
}

uint64_t sub_1B042FD28(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1B042FD60(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a6;
  v26 = a3;
  v10 = a5;
  v11 = a4;
  v27 = a2;
  v12 = a1;
  v13 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B0E44468();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EB6DCDB0 != -1)
  {
    swift_once();
  }

  v20 = qword_1EB6DCDB8;
  *v19 = qword_1EB6DCDB8;
  (*(v17 + 104))(v19, *MEMORY[0x1E69E8020], v16);
  v21 = v20;
  LOBYTE(v20) = sub_1B0E44488();
  result = (*(v17 + 8))(v19, v16);
  if (v20)
  {
    sub_1B041C97C(a8, v15);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v23 = sub_1B042FFCC(v11, v12, v10, v25, a7, v15);
    return v27(v23);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B042FF4C(uint64_t a1)
{
  v3 = *(_s6LoggerVMa_0(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 32);
  v10 = v1 + ((*(v3 + 80) + 64) & ~*(v3 + 80));

  return sub_1B042FD60(a1, v4, v5, v9, v6, v7, v8, v10);
}

uint64_t sub_1B042FFCC(unsigned __int8 a1, int a2, unsigned __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v161 = a5;
  v162 = a6;
  LODWORD(v160) = a2;
  v7 = a3;
  v159 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v159);
  v9 = &v150 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v150 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v153 = &v150 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v154 = &v150 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v151 = &v150 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v152 = &v150 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v155 = &v150 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v156 = &v150 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v150 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v158 = &v150 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v150 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v157 = &v150 - v34;
  v35 = sub_1B0E439A8();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v150 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  MEMORY[0x1EEE9AC00](v40);
  MEMORY[0x1EEE9AC00](v41);
  MEMORY[0x1EEE9AC00](v42);
  MEMORY[0x1EEE9AC00](&v150 - v43);
  v49 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      if (v7 == 772)
      {
        goto LABEL_4;
      }

LABEL_10:

      v69 = v162;
      (*(v36 + 16))(v38, v162, v35);
      sub_1B041C97C(v69, v12);
      sub_1B041C97C(v69, v9);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v70 = sub_1B0E43988();
      v71 = sub_1B0E458E8();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v160 = swift_slowAlloc();
        v161 = v35;
        v163 = v160;
        *v72 = 68158210;
        *(v72 + 4) = 2;
        *(v72 + 8) = 256;
        v73 = v159;
        v74 = v9[*(v159 + 20)];
        sub_1B041C9E0(v9);
        *(v72 + 10) = v74;
        *(v72 + 11) = 2082;
        v75 = *&v12[*(v73 + 20) + 4];
        sub_1B041C9E0(v12);
        v76 = ConnectionID.debugDescription.getter(v75);
        v78 = sub_1B0399D64(v76, v77, &v163);

        *(v72 + 13) = v78;
        _os_log_impl(&dword_1B0389000, v70, v71, "[%.*hhx-%{public}s] TLS policy not met.", v72, 0x15u);
        v79 = v160;
        __swift_destroy_boxed_opaque_existential_0(v160);
        MEMORY[0x1B272C230](v79, -1, -1);
        MEMORY[0x1B272C230](v72, -1, -1);

        sub_1B041C9E0(v69);
        (*(v36 + 8))(v38, v161);
      }

      else
      {
        sub_1B041C9E0(v9);

        sub_1B041C9E0(v69);
        sub_1B041C9E0(v12);
        (*(v36 + 8))(v38, v35);
      }

      return 1;
    }

    if ((v7 - 771) > 1)
    {
      goto LABEL_10;
    }
  }

  else if ((v7 - 771) >= 2)
  {
    goto LABEL_10;
  }

LABEL_4:
  v50 = &v150 - v45;
  v51 = v44;
  v52 = v48;
  v53 = v47;
  v54 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5428, &qword_1B0ED0290);
  if (v160)
  {
    if (v160 == 4)
    {

      v81 = v36;
      v82 = v51;
      v83 = v51;
      v84 = v162;
      (*(v36 + 16))(v83, v162, v35);
      v85 = v158;
      sub_1B041C97C(v84, v158);
      sub_1B041C97C(v84, v27);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v86 = sub_1B0E43988();
      v87 = sub_1B0E458E8();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v161 = v35;
        v90 = v89;
        v163 = v89;
        *v88 = 68158210;
        *(v88 + 4) = 2;
        *(v88 + 8) = 256;
        v91 = v159;
        v92 = *(v159 + 20);
        v160 = v82;
        v93 = v27[v92];
        sub_1B041C9E0(v27);
        *(v88 + 10) = v93;
        *(v88 + 11) = 2082;
        v94 = *(v85 + *(v91 + 20) + 4);
        sub_1B041C9E0(v85);
        v95 = ConnectionID.debugDescription.getter(v94);
        v97 = sub_1B0399D64(v95, v96, &v163);

        *(v88 + 13) = v97;
        _os_log_impl(&dword_1B0389000, v86, v87, "[%.*hhx-%{public}s] Fatal trust failure.", v88, 0x15u);
        __swift_destroy_boxed_opaque_existential_0(v90);
        MEMORY[0x1B272C230](v90, -1, -1);
        MEMORY[0x1B272C230](v88, -1, -1);

        sub_1B041C9E0(v84);
        (*(v81 + 8))(v160, v161);
      }

      else
      {
        sub_1B041C9E0(v27);

        sub_1B041C9E0(v84);
        sub_1B041C9E0(v85);
        (*(v36 + 8))(v82, v35);
      }

      return 1;
    }

    if (v160 == 1)
    {

      v55 = v50;
      v56 = v162;
      (*(v36 + 16))(v50, v162, v35);
      v57 = v157;
      sub_1B041C97C(v56, v157);
      sub_1B041C97C(v56, v32);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v58 = sub_1B0E43988();
      v59 = sub_1B0E458E8();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v160 = swift_slowAlloc();
        v163 = v160;
        *v60 = 68158210;
        *(v60 + 4) = 2;
        *(v60 + 8) = 256;
        v61 = v159;
        v62 = *(v159 + 20);
        v161 = v35;
        v63 = v32[v62];
        sub_1B041C9E0(v32);
        *(v60 + 10) = v63;
        *(v60 + 11) = 2082;
        v64 = *(v57 + *(v61 + 20) + 4);
        sub_1B041C9E0(v57);
        v65 = ConnectionID.debugDescription.getter(v64);
        v67 = sub_1B0399D64(v65, v66, &v163);

        *(v60 + 13) = v67;
        _os_log_impl(&dword_1B0389000, v58, v59, "[%.*hhx-%{public}s] Trust denied.", v60, 0x15u);
        v68 = v160;
        __swift_destroy_boxed_opaque_existential_0(v160);
        MEMORY[0x1B272C230](v68, -1, -1);
        MEMORY[0x1B272C230](v60, -1, -1);

        sub_1B041C9E0(v56);
        (*(v36 + 8))(v55, v161);
      }

      else
      {
        sub_1B041C9E0(v32);

        sub_1B041C9E0(v56);
        sub_1B041C9E0(v57);
        (*(v36 + 8))(v55, v35);
      }

      return 1;
    }

    if (v49 <= 1u)
    {

      v98 = v36;
      v99 = *(v36 + 16);
      v100 = v52;
      v101 = v162;
      v102 = v35;
      v99(v52, v162, v35);
      v103 = v156;
      sub_1B041C97C(v101, v156);
      v104 = v155;
      sub_1B041C97C(v101, v155);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v105 = sub_1B0E43988();
      v106 = sub_1B0E458E8();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v161 = v100;
        v109 = v108;
        v163 = v108;
        *v107 = 68158210;
        *(v107 + 4) = 2;
        *(v107 + 8) = 256;
        v110 = v159;
        v111 = v104;
        v112 = *(v104 + *(v159 + 20));
        sub_1B041C9E0(v111);
        *(v107 + 10) = v112;
        *(v107 + 11) = 2082;
        v113 = *(v103 + *(v110 + 20) + 4);
        sub_1B041C9E0(v103);
        v114 = ConnectionID.debugDescription.getter(v113);
        v116 = v102;
        v117 = sub_1B0399D64(v114, v115, &v163);

        *(v107 + 13) = v117;
        _os_log_impl(&dword_1B0389000, v105, v106, "[%.*hhx-%{public}s] Trust evaluation failed.", v107, 0x15u);
        __swift_destroy_boxed_opaque_existential_0(v109);
        MEMORY[0x1B272C230](v109, -1, -1);
        MEMORY[0x1B272C230](v107, -1, -1);

        sub_1B041C9E0(v101);
        (*(v98 + 8))(v161, v116);
        return 1;
      }

      sub_1B041C9E0(v104);

      sub_1B041C9E0(v101);
      v134 = v103;
      goto LABEL_35;
    }

    v118 = v162;
    v98 = v36;
    v102 = v35;
    switch(v160)
    {
      case 2u:

        (*(v36 + 16))(v53, v118, v35);
        v135 = v152;
        sub_1B041C97C(v118, v152);
        v136 = v151;
        sub_1B041C97C(v118, v151);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v137 = sub_1B0E43988();
        v138 = sub_1B0E45908();
        if (os_log_type_enabled(v137, v138))
        {
          v139 = swift_slowAlloc();
          v140 = swift_slowAlloc();
          v161 = v53;
          v141 = v140;
          v163 = v140;
          *v139 = 68158210;
          *(v139 + 4) = 2;
          *(v139 + 8) = 256;
          v142 = v159;
          v143 = v136;
          v144 = *(v136 + *(v159 + 20));
          sub_1B041C9E0(v143);
          *(v139 + 10) = v144;
          *(v139 + 11) = 2082;
          v145 = *(v135 + *(v142 + 20) + 4);
          sub_1B041C9E0(v135);
          v146 = ConnectionID.debugDescription.getter(v145);
          v148 = v102;
          v149 = sub_1B0399D64(v146, v147, &v163);

          *(v139 + 13) = v149;
          _os_log_impl(&dword_1B0389000, v137, v138, "[%.*hhx-%{public}s] Unspecified trust result.", v139, 0x15u);
          __swift_destroy_boxed_opaque_existential_0(v141);
          MEMORY[0x1B272C230](v141, -1, -1);
          MEMORY[0x1B272C230](v139, -1, -1);

          sub_1B041C9E0(v118);
          (*(v98 + 8))(v161, v148);
        }

        else
        {
          sub_1B041C9E0(v136);

          sub_1B041C9E0(v118);
          sub_1B041C9E0(v135);
          (*(v98 + 8))(v53, v35);
        }

        return 0;
      case 5u:

        v100 = v54;
        (*(v36 + 16))(v54, v118, v35);
        v119 = v154;
        sub_1B041C97C(v118, v154);
        v120 = v153;
        sub_1B041C97C(v118, v153);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v121 = sub_1B0E43988();
        v122 = sub_1B0E458E8();
        if (os_log_type_enabled(v121, v122))
        {
          v123 = swift_slowAlloc();
          v124 = swift_slowAlloc();
          v161 = v100;
          v125 = v124;
          v163 = v124;
          *v123 = 68158210;
          *(v123 + 4) = 2;
          *(v123 + 8) = 256;
          v126 = v159;
          v127 = v120;
          v128 = *(v120 + *(v159 + 20));
          sub_1B041C9E0(v127);
          *(v123 + 10) = v128;
          *(v123 + 11) = 2082;
          v129 = *(v119 + *(v126 + 20) + 4);
          sub_1B041C9E0(v119);
          v130 = ConnectionID.debugDescription.getter(v129);
          v132 = v102;
          v133 = sub_1B0399D64(v130, v131, &v163);

          *(v123 + 13) = v133;
          _os_log_impl(&dword_1B0389000, v121, v122, "[%.*hhx-%{public}s] Trust evaluation failed with other error.", v123, 0x15u);
          __swift_destroy_boxed_opaque_existential_0(v125);
          MEMORY[0x1B272C230](v125, -1, -1);
          MEMORY[0x1B272C230](v123, -1, -1);

          sub_1B041C9E0(v118);
          (*(v98 + 8))(v161, v132);
          return 1;
        }

        sub_1B041C9E0(v120);

        sub_1B041C9E0(v118);
        v134 = v119;
LABEL_35:
        sub_1B041C9E0(v134);
        (*(v98 + 8))(v100, v102);
        return 1;
      case 3u:
        sub_1B041C9E0(v162);

        return 2;
      default:
        result = sub_1B0E46A68();
        __break(1u);
        break;
    }
  }

  else
  {

    sub_1B041C9E0(v162);
    return 0;
  }

  return result;
}

uint64_t sub_1B0430EC4(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1B0430F04(a1);
  return v2;
}

uint64_t sub_1B0430F04(uint64_t a1)
{
  ServerResponseFramingParser.init()(v25);
  v2 = v25[9];
  *(v1 + 144) = v25[8];
  *(v1 + 160) = v2;
  v3 = v25[11];
  *(v1 + 176) = v25[10];
  *(v1 + 192) = v3;
  v4 = v25[5];
  *(v1 + 80) = v25[4];
  *(v1 + 96) = v4;
  v5 = v25[7];
  *(v1 + 112) = v25[6];
  *(v1 + 128) = v5;
  v6 = v25[1];
  *(v1 + 16) = v25[0];
  *(v1 + 32) = v6;
  v7 = v25[3];
  *(v1 + 48) = v25[2];
  *(v1 + 64) = v7;
  *(v1 + 208) = MEMORY[0x1E69E7CC0];
  *(v1 + 216) = 0;
  *(v1 + 224) = 0;
  *(v1 + 232) = 0;
  *(v1 + 240) = 256;
  v8 = ClientCommand.EncodingOptions.rfc3501.unsafeMutableAddressor();
  v9 = v8[1];
  v10 = v8[2];
  *(v1 + 242) = *v8;
  *(v1 + 243) = v9;
  *(v1 + 244) = v10;
  *(v1 + 248) = 0;
  *(v1 + 256) = 0;
  if (qword_1EB6DCD50 != -1)
  {
    swift_once();
  }

  v11 = sub_1B0E439A8();
  __swift_project_value_buffer(v11, qword_1EB6DCD58);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v12 = sub_1B0E43988();
  v13 = sub_1B0E458C8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 68158210;
    *(v14 + 4) = 2;
    *(v14 + 8) = 256;
    *(v14 + 10) = sub_1B04314DC(v15);

    *(v14 + 11) = 2082;
    sub_1B0E440F8();
    sub_1B0E44058();
    if (v23)
    {
      if (swift_dynamicCast())
      {

        v16 = v21;
LABEL_10:
        v17 = ConnectionID.debugDescription.getter(v16);
        v19 = sub_1B0399D64(v17, v18, &v24);

        *(v14 + 13) = v19;
        _os_log_impl(&dword_1B0389000, v12, v13, "[%.*hhx-%{public}s] New IMAP framer", v14, 0x15u);
        __swift_destroy_boxed_opaque_existential_0Tm(v15);
        MEMORY[0x1B272C230](v15, -1, -1);
        MEMORY[0x1B272C230](v14, -1, -1);

        return v1;
      }
    }

    else
    {
      sub_1B0398EFC(v22, &qword_1EB6E29B0, &qword_1B0E9F008);
    }

    v16 = *(ConnectionLoggerID.invalid.unsafeMutableAddressor() + 1);
    goto LABEL_10;
  }

  return v1;
}

__n128 ServerResponseFramingParser.init()@<Q0>(uint64_t a1@<X8>)
{
  FramingParser.init(bufferSizeLimit:)(6000000, v8);
  sub_1B0431308(v9);
  v2 = v9[5];
  *(a1 + 128) = v9[4];
  *(a1 + 144) = v2;
  v3 = v10;
  v4 = v9[1];
  *(a1 + 64) = v9[0];
  *(a1 + 80) = v4;
  v5 = v9[3];
  *(a1 + 96) = v9[2];
  *(a1 + 112) = v5;
  v6 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v6;
  result = v8[3];
  *(a1 + 32) = v8[2];
  *(a1 + 48) = result;
  *(a1 + 160) = v3;
  *(a1 + 168) = 0;
  *(a1 + 176) = 1;
  *(a1 + 184) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t FramingParser.init(bufferSizeLimit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EB6DE5C0 != -1)
  {
    v8 = a1;
    v9 = a2;
    swift_once();
    a2 = v9;
    a1 = v8;
  }

  v3 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v4 = dword_1EB737EB8;
  v5 = word_1EB737EBC;
  v6 = byte_1EB737EBE;
  *a2 = 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v3;
  *(a2 + 40) = qword_1EB737EB0;
  *(a2 + 48) = v4;
  *(a2 + 52) = v5;
  *(a2 + 54) = v6;
  *(a2 + 56) = a1;
}

__n128 sub_1B0431308@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for ParsedStringCache();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B0EE7F20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6558, &qword_1B0EE8180);
  v3 = sub_1B0E45278();
  *(v3 + 16) = 32;
  bzero((v3 + 32), 0x300uLL);
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = v3;
  v13[0] = xmmword_1B0EE7F30;
  v13[1] = xmmword_1B0EE7F40;
  v14 = sub_1B0441678;
  v15 = v2;
  ResponseParser.init(options:)(v13, &v8);
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v16 = v8;
  v17 = v9;
  *v21 = 0;
  *&v21[8] = 0;
  *&v21[15] = 0;
  v22[3] = v11;
  v22[4] = v12;
  v22[1] = v9;
  v22[2] = v10;
  v22[0] = v8;
  v23 = 0;
  v24[0] = 0;
  *(v24 + 7) = 0;
  sub_1B0431468(&v16, v7);
  sub_1B04314A0(v22);
  v4 = *v21;
  *(a1 + 64) = v20;
  *(a1 + 80) = v4;
  *(a1 + 95) = *&v21[15];
  v5 = v17;
  *a1 = v16;
  *(a1 + 16) = v5;
  result = v19;
  *(a1 + 32) = v18;
  *(a1 + 48) = result;
  return result;
}

unint64_t sub_1B04314DC(uint64_t a1)
{
  sub_1B0E440F8();
  sub_1B0E44058();

  if (!v8)
  {
    sub_1B0398EFC(v7, &qword_1EB6E29B0, &qword_1B0E9F008);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v3 = ConnectionLoggerID.invalid.unsafeMutableAddressor();
    v1 = *v3;
    v2 = *(v3 + 1);
    return v1 | (v2 << 32);
  }

  v1 = v5;
  v2 = v6;
  return v1 | (v2 << 32);
}

uint64_t sub_1B04315B0@<X0>(uint64_t a2@<X8>)
{
  sub_1B0E440F8();
  sub_1B0E44058();

  v3 = v28;
  sub_1B0398EFC(v27, &qword_1EB6E29B0, &qword_1B0E9F008);
  if (v3)
  {
    if (qword_1EB6DCD50 != -1)
    {
      swift_once();
    }

    v4 = sub_1B0E439A8();
    __swift_project_value_buffer(v4, qword_1EB6DCD58);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v5 = sub_1B0E43988();
    v6 = sub_1B0E458C8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v27[0] = v8;
      *v7 = 68158210;
      *(v7 + 4) = 2;
      *(v7 + 8) = 256;
      *(v7 + 10) = sub_1B04314DC(v8);

      *(v7 + 11) = 2082;
      v10 = sub_1B04314DC(v9);
      v11 = ConnectionID.debugDescription.getter(HIDWORD(v10));
      v13 = sub_1B0399D64(v11, v12, v27);

      *(v7 + 13) = v13;
      _os_log_impl(&dword_1B0389000, v5, v6, "[%.*hhx-%{public}s] (post STARTTLS) IMAP framer loaded.", v7, 0x15u);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x1B272C230](v8, -1, -1);
      MEMORY[0x1B272C230](v7, -1, -1);
    }

    else
    {
    }

    sub_1B0E44008();

    sub_1B0E43FF8();
    v28 = MEMORY[0x1E69E6370];
    LOBYTE(v27[0]) = 1;
    sub_1B0E44028();
    sub_1B0E440D8();
    goto LABEL_13;
  }

  if (qword_1EB6DCD50 != -1)
  {
    swift_once();
  }

  v14 = sub_1B0E439A8();
  __swift_project_value_buffer(v14, qword_1EB6DCD58);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v15 = sub_1B0E43988();
  v16 = sub_1B0E458C8();
  if (!os_log_type_enabled(v15, v16))
  {

LABEL_13:

    goto LABEL_14;
  }

  v17 = swift_slowAlloc();
  v18 = swift_slowAlloc();
  v27[0] = v18;
  *v17 = 68158210;
  *(v17 + 4) = 2;
  *(v17 + 8) = 256;
  *(v17 + 10) = sub_1B04314DC(v18);

  *(v17 + 11) = 2082;
  v20 = sub_1B04314DC(v19);
  v21 = ConnectionID.debugDescription.getter(HIDWORD(v20));
  v23 = sub_1B0399D64(v21, v22, v27);

  *(v17 + 13) = v23;
  _os_log_impl(&dword_1B0389000, v15, v16, "[%.*hhx-%{public}s] IMAP framer loaded.", v17, 0x15u);
  __swift_destroy_boxed_opaque_existential_0Tm(v18);
  MEMORY[0x1B272C230](v18, -1, -1);
  MEMORY[0x1B272C230](v17, -1, -1);

LABEL_14:
  v24 = *MEMORY[0x1E6977CC8];
  v25 = sub_1B0E43FD8();
  return (*(*(v25 - 8) + 104))(a2, v24, v25);
}

double sub_1B04319C0@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Authenticator(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v49[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for UnauthenticatedState(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v49[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v49[-v11];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49[-v14];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49[-v17];
  sub_1B044CF68(v2, &v49[-v17]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload != 10)
    {
      if (EnumCaseMultiPayload == 9)
      {
        sub_1B044CF68(v18, v15);
        v20 = *v15;
        *&v49[120] = *(v15 + 120);
        *&v49[136] = *(v15 + 136);
        *&v49[152] = *(v15 + 152);
        *&v49[168] = *(v15 + 168);
        *&v49[56] = *(v15 + 56);
        *&v49[72] = *(v15 + 72);
        *&v49[88] = *(v15 + 88);
        *&v49[104] = *(v15 + 104);
        *&v49[8] = *(v15 + 8);
        *&v49[24] = *(v15 + 24);
        *&v49[40] = *(v15 + 40);
        *v49 = v20;
        sub_1B0BD14CC(v49);
LABEL_16:
        v58 = *&v49[128];
        v59 = *&v49[144];
        v60[0] = *&v49[160];
        *(v60 + 9) = *&v49[169];
        v54 = *&v49[64];
        v55 = *&v49[80];
        v56 = *&v49[96];
        v57 = *&v49[112];
        v50 = *v49;
        v51 = *&v49[16];
        v52 = *&v49[32];
        v53 = *&v49[48];
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
        v72 = v58;
        v73 = v59;
        v74[0] = v60[0];
        v34 = *(v60 + 9);
        goto LABEL_17;
      }

LABEL_19:
      sub_1B044CFCC(&v64);
      goto LABEL_20;
    }

    sub_1B044CF68(v18, v12);
    v21 = *v12;
    v22 = *(v12 + 1);
    v23 = *(v12 + 2);
    v24 = v12[24];
    v25 = v24 >> 6;
    if (v24 >> 6 > 1)
    {
      if (v25 != 2)
      {
        v42 = v23 | v22;
        if (v23 | v22 | v21 || v24 != 192)
        {
          v43 = v24 == 192 && v21 == 1;
          v44 = v43 && v42 == 0;
          if (v44 || (v24 == 192 ? (v45 = v21 == 2) : (v45 = 0), v45 ? (v46 = v42 == 0) : (v46 = 0), !v46 && (v24 == 192 ? (v47 = v21 == 3) : (v47 = 0), v47 ? (v48 = v42 == 0) : (v48 = 0), v48)))
          {
            *v49 = 0;
            *&v49[8] = 0;
            v35 = 1;
            goto LABEL_14;
          }
        }

LABEL_13:
        *v49 = 0;
        *&v49[8] = 0;
        v35 = 3;
LABEL_14:
        *&v49[16] = v35;
        goto LABEL_15;
      }
    }

    else if (!v25)
    {
      *v49 = *v12;
      *&v49[8] = v22;
      *&v49[16] = v23;
LABEL_15:
      sub_1B0BD13E4(v49);
      goto LABEL_16;
    }

    sub_1B0BD1458(v21, v22, v23, v24);
    goto LABEL_13;
  }

  sub_1B044CF68(v18, v9);
  v26 = sub_1B0BD1360(v9, v6);
  MEMORY[0x1EEE9AC00](v26);
  *&v49[-16] = v6;
  sub_1B0BD4E3C(sub_1B0BD13C4, v27, &v64);
  v61[2] = v66;
  v62 = v67;
  v63 = v68;
  v61[0] = v64;
  v61[1] = v65;
  if ((~*(&v66 + 1) & 0x3000000000000000) != 0 || (*(&v62 + 1) & 0x1000000000000000) == 0)
  {
    sub_1B0BD13F0(v61);
    sub_1B0447964(v6, type metadata accessor for Authenticator);
    goto LABEL_19;
  }

  sub_1B0BD3F38();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_1B0447964(v6, type metadata accessor for Authenticator);
  *v49 = v29;
  *&v49[8] = v31;
  *&v49[16] = v33;
  sub_1B0BD13E4(v49);
  v58 = *&v49[128];
  v59 = *&v49[144];
  v60[0] = *&v49[160];
  *(v60 + 9) = *&v49[169];
  v54 = *&v49[64];
  v55 = *&v49[80];
  v56 = *&v49[96];
  v57 = *&v49[112];
  v50 = *v49;
  v51 = *&v49[16];
  v52 = *&v49[32];
  v53 = *&v49[48];
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  v72 = v58;
  v73 = v59;
  v74[0] = v60[0];
  v34 = *(v60 + 9);
LABEL_17:
  *(v74 + 9) = v34;
  v68 = v54;
  v69 = v55;
  v70 = v56;
  v71 = v57;
  v64 = v50;
  v65 = v51;
  v66 = v52;
  v67 = v53;
LABEL_20:
  sub_1B0447964(v18, type metadata accessor for UnauthenticatedState);
  v36 = v73;
  a1[8] = v72;
  a1[9] = v36;
  a1[10] = v74[0];
  *(a1 + 169) = *(v74 + 9);
  v37 = v69;
  a1[4] = v68;
  a1[5] = v37;
  v38 = v71;
  a1[6] = v70;
  a1[7] = v38;
  v39 = v65;
  *a1 = v64;
  a1[1] = v39;
  result = *&v66;
  v41 = v67;
  a1[2] = v66;
  a1[3] = v41;
  return result;
}

uint64_t sub_1B0431EC8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A90, &unk_1B0EDC020);
  MEMORY[0x1EEE9AC00](v3 - 8);
    ;
  }

  sub_1B0448650(a1);
  sub_1B03D5174(a1);
  swift_beginAccess();
  if (*(v1 + 192))
  {
    return 0;
  }

  else
  {
    return *(v1 + 184);
  }
}

BOOL sub_1B0432080(uint64_t a1)
{
  v1 = sub_1B0E44088();
  if (qword_1EB6DCD50 != -1)
  {
    swift_once();
  }

  v2 = sub_1B0E439A8();
  __swift_project_value_buffer(v2, qword_1EB6DCD58);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v3 = sub_1B0E43988();
  v4 = sub_1B0E458D8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 68158466;
    *(v5 + 4) = 2;
    *(v5 + 8) = 256;
    *(v5 + 10) = sub_1B04314DC(v6);

    *(v5 + 11) = 2082;
    v8 = sub_1B04314DC(v7);
    v9 = ConnectionID.debugDescription.getter(HIDWORD(v8));
    v11 = sub_1B0399D64(v9, v10, &v13);

    *(v5 + 13) = v11;
    *(v5 + 21) = 1024;
    *(v5 + 23) = v1 & 1;
    _os_log_impl(&dword_1B0389000, v3, v4, "[%.*hhx-%{public}s] parseInput() returned %{BOOL}d", v5, 0x1Bu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x1B272C230](v6, -1, -1);
    MEMORY[0x1B272C230](v5, -1, -1);
  }

  else
  {
  }

  return (v1 & 1) == 0;
}

uint64_t sub_1B0432268(_BYTE *a1, _BYTE *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A90, &unk_1B0EDC020);
  MEMORY[0x1EEE9AC00](v10 - 8);
  result = 0;
  if ((a3 & 1) == 0 && a1)
  {
    if (a2 == a1)
    {
      return 0;
    }

    else
    {
      sub_1B043257C(a1, a2, a6);
      return a2 - a1;
    }
  }

  return result;
}

void sub_1B043257C(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v61 = a3;
  v4 = v3;
  v7 = sub_1B0E43868();
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5530, &qword_1B0ED0CF8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v56 = &v50 - v10;
  v11 = sub_1B0E43828();
  v57 = *(v11 - 8);
  v58 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Deflate.InputBuffer(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for Deflate.Result(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v19 = a2 - a1;
  }

  else
  {
    v19 = 0;
  }

  v20 = *(v4 + 248);
  if (a1)
  {
    v21 = a2;
  }

  else
  {
    v21 = 0;
  }

  if (v20)
  {
    v51 = v19;
    v22 = v4;
    v23 = *(v4 + 256);
    *v15 = a1;
    v15[1] = v21;
    swift_storeEnumTagMultiPayload();

    v24 = v60;
    sub_1B0BFAAE0(v15, v18);
    if (v24)
    {
      sub_1B03D6500(v20, v23);
      sub_1B03D6B24(v15, type metadata accessor for Deflate.InputBuffer);
      return;
    }

    v60 = 0;
    v25 = sub_1B03D6B24(v15, type metadata accessor for Deflate.InputBuffer);
    MEMORY[0x1EEE9AC00](v25);
    *(&v50 - 2) = sub_1B0C05AA0;
    *(&v50 - 1) = v22;
    sub_1B0E44318();
    v52 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
    sub_1B03D6500(v20, v23);
    sub_1B03D6B24(v18, type metadata accessor for Deflate.Result);
    v4 = v22;
    v19 = v51;
  }

  else
  {
    swift_beginAccess();
    ServerResponseFramingParser.append(_:)(a1, v21);
    swift_endAccess();
    v52 = v19;
  }

  sub_1B0E440F8();
  sub_1B0E44058();

  v27 = v57;
  v26 = v58;
  v28 = v59;
  v29 = v56;
  if (v63)
  {
    v30 = swift_dynamicCast();
    (*(v27 + 56))(v29, v30 ^ 1u, 1, v26);
    if ((*(v27 + 48))(v29, 1, v26) != 1)
    {
      v31 = v19;
      (*(v27 + 32))(v28, v29, v26);
      v32 = tracingSignposter.unsafeMutableAddressor();
      (*(v54 + 16))(v53, v32, v55);
      v33 = sub_1B0E43858();
      v34 = sub_1B0E45AE8();
      if (sub_1B0E45D38())
      {
        v35 = swift_slowAlloc();
        *v35 = 134218240;
        *(v35 + 4) = v31;
        *(v35 + 12) = 2048;
        *(v35 + 14) = v52;
        v36 = sub_1B0E43818();
        _os_signpost_emit_with_name_impl(&dword_1B0389000, v33, v34, v36, "Connection.didReceiveData", "%ld,%ld", v35, 0x16u);
        v37 = v35;
        v28 = v59;
        MEMORY[0x1B272C230](v37, -1, -1);
      }

      (*(v54 + 8))(v53, v55);
      (*(v27 + 8))(v28, v26);
      goto LABEL_19;
    }
  }

  else
  {
    sub_1B0398EFC(v62, &qword_1EB6E29B0, &qword_1B0E9F008);
    (*(v27 + 56))(v29, 1, 1, v26);
  }

  sub_1B0398EFC(v29, &qword_1EB6E5530, &qword_1B0ED0CF8);
LABEL_19:
  if (qword_1EB6DCD50 != -1)
  {
    swift_once();
  }

  v38 = sub_1B0E439A8();
  __swift_project_value_buffer(v38, qword_1EB6DCD58);
  swift_retain_n();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  swift_retain_n();
  v39 = sub_1B0E43988();
  v40 = sub_1B0E458D8();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v64 = v42;
    *v41 = 0x204100502;
    *(v41 + 8) = 256;
    v43 = sub_1B04314DC(v42);

    *(v41 + 10) = v43;

    *(v41 + 11) = 2082;
    v45 = sub_1B04314DC(v44);
    v46 = ConnectionID.debugDescription.getter(HIDWORD(v45));
    v48 = sub_1B0399D64(v46, v47, &v64);

    *(v41 + 13) = v48;
    *(v41 + 21) = 2048;
    *(v41 + 23) = v52;
    *(v41 + 31) = 2048;
    swift_beginAccess();
    v49 = *(v4 + 56);
    LODWORD(v48) = *(v4 + 60);

    *(v41 + 33) = (v48 - v49);

    _os_log_impl(&dword_1B0389000, v39, v40, "[%.*hhx-%{public}s] Appending %{iec-bytes}ld to receive buffer. Now has %{iec-bytes}ld.", v41, 0x29u);
    __swift_destroy_boxed_opaque_existential_0Tm(v42);
    MEMORY[0x1B272C230](v42, -1, -1);
    MEMORY[0x1B272C230](v41, -1, -1);
  }

  else
  {
  }
}

uint64_t ServerResponseFramingParser.append(_:)(const void *a1, const void *a2)
{
  v4 = type metadata accessor for ServerResponseFramingParser.Frame(0);
  MEMORY[0x1EEE9AC00](v4);
  FramingParser.appendAndFrameBytes(_:)(a1, a2);
  sub_1B0434420(v5);
}

void ByteBuffer._setBytes(_:at:)(const void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = a2 - a1;
  }

  else
  {
    v4 = 0;
  }

  v5 = a3 + v4;
  if (__CFADD__(a3, v4))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = a3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = *(v3 + 16);
    v10 = v5 >= v9;
    v11 = v5 - v9;
    if (v10)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = sub_1B03904C0();
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v12, v13 & 1);
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  if (!HIDWORD(v4))
  {
    ByteBuffer._ensureAvailableCapacity(_:at:)(v4, v6);
    ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(a1, a2, v6);
    return;
  }

LABEL_15:
  __break(1u);
}

void FramingParser.appendAndFrameBytes(_:)(const void *a1, const void *a2)
{
  if (a1 && a2 != a1)
  {
    ByteBuffer._setBytes(_:at:)(a1, a2, *(v2 + 44));
    v3 = *(v2 + 44);
    v5 = __CFADD__(v3, v4);
    v6 = v3 + v4;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      *(v2 + 44) = v6;
      sub_1B0433C50();
    }
  }
}

Swift::Void __swiftcall ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(Swift::UInt32 capacity, Swift::Bool resetIndices)
{
  v3 = v2;
  if (resetIndices)
  {
    v4 = *(v2 + 2);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v2 + 22) | (*(v2 + 10) << 8);
  v6 = v5 + v4;
  if (__CFADD__(v5, v4))
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = v6 + capacity;
  if (__CFADD__(v6, capacity))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v7 >= *(v2 + 4))
  {
    v7 = *(v2 + 4);
  }

  v8 = v7 - v6;
  if (v7 < v6)
  {
    goto LABEL_16;
  }

  v9 = *v2;
  v10 = ByteBuffer._Storage.allocateStorage(capacity:)(capacity);
  v11 = *(v9 + 56);
  swift_beginAccess();
  v12 = *(v10 + 24);
  swift_beginAccess();
  v11(v12, *(v9 + 24) + v6, v8);

  *v3 = v10;
  v13 = *(v3 + 2);
  v14 = v13 >= v4;
  v15 = v13 - v4;
  if (!v14)
  {
    goto LABEL_17;
  }

  *(v3 + 2) = v15;
  v16 = *(v3 + 3);
  v14 = v16 >= v4;
  v17 = v16 - v4;
  if (v14)
  {
    *(v3 + 3) = v17;
    swift_beginAccess();
    *(v3 + 4) = *(v10 + 16);
    *(v3 + 10) = 0;
    *(v3 + 22) = 0;
    return;
  }

LABEL_18:
  __break(1u);
}

uint64_t ByteBuffer._Storage.reallocSlice(_:capacity:)(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = HIDWORD(a1);
  v5 = ByteBuffer._Storage.allocateStorage(capacity:)(a2);
  v6 = *(v2 + 56);
  swift_beginAccess();
  v7 = *(v5 + 24);
  swift_beginAccess();
  if (v4 < v3)
  {
    v8 = -(v3 - v4);
  }

  else
  {
    v8 = v4 - v3;
  }

  v6(v7, *(v2 + 24) + v3, v8);
  return v5;
}

uint64_t ByteBuffer._Storage.allocateStorage(capacity:)(int a1)
{
  if (a1)
  {
    v2 = (a1 - 1) | ((a1 - 1) >> 1) | (((a1 - 1) | ((a1 - 1) >> 1)) >> 2);
    v3 = v2 | (v2 >> 4) | ((v2 | (v2 >> 4)) >> 8);
    v4 = v3 | HIWORD(v3);
    v5 = __CFADD__(v4, 1);
    v6 = v4 + 1;
    if (v5)
    {
      v7 = -1;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v1 + 32);
  result = v8(v7);
  if (result)
  {
    v10 = result;
    v11 = *(v1 + 56);
    result = swift_allocObject();
    *(result + 16) = v7;
    *(result + 24) = v10;
    *(result + 32) = v8;
    *(result + 40) = *(v1 + 40);
    *(result + 56) = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(Swift::UInt32 extraCapacity, Swift::Bool resetIndices)
{
  v3 = *(v2 + 16) - (*(v2 + 22) | (*(v2 + 20) << 8));
  v4 = __CFADD__(v3, extraCapacity);
  v5 = v3 + extraCapacity;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(v5, resetIndices);
  }
}

Swift::UInt32 __swiftcall UInt32.nextPowerOf2ClampedToMax()()
{
  if (!v0)
  {
    return 1;
  }

  v1 = (v0 - 1) | ((v0 - 1) >> 1) | (((v0 - 1) | ((v0 - 1) >> 1)) >> 2);
  v2 = v1 | (v1 >> 4) | ((v1 | (v1 >> 4)) >> 8);
  v3 = v2 | HIWORD(v2);
  v4 = __CFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    return -1;
  }

  else
  {
    return v5;
  }
}

void OUTLINED_FUNCTION_4_0(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x16u);
}

void OUTLINED_FUNCTION_4_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

uint64_t sub_1B0433338(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (!a3)
  {
    v4 = 0;
  }

  if (result < 0 || v4 < result)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0 && v4 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

void sub_1B043336C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v58[1] = a2;
  v59 = a1;
  v60 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E53F8, &qword_1B0ECFF80);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v58 - v6;
  v8 = type metadata accessor for AuthenticationTask(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Authenticator(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UnauthenticatedState(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0433BE8(v4, v17, type metadata accessor for UnauthenticatedState);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      sub_1B0C3A6F0(v17, v14, type metadata accessor for Authenticator);
      sub_1B03B5C80(&v14[*(v12 + 32)], v7, &qword_1EB6E53F8, &qword_1B0ECFF80);
      if ((*(v9 + 48))(v7, 1, v8) != 1)
      {
        sub_1B0C3A6F0(v7, v11, type metadata accessor for AuthenticationTask);
        v80 = v8;
        v81 = &off_1F271C380;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v78);
        sub_1B0C3A6F0(v11, boxed_opaque_existential_1, type metadata accessor for AuthenticationTask);
        sub_1B04479C4(v14, type metadata accessor for Authenticator);
        v19 = v80;
        v20 = v81;
        goto LABEL_15;
      }

      sub_1B04479C4(v14, type metadata accessor for Authenticator);
      sub_1B0398EFC(v7, &qword_1EB6E53F8, &qword_1B0ECFF80);
      v26 = v60;
      *v60 = 0u;
      *(v26 + 16) = 0u;
      *(v26 + 32) = 0;
      return;
    case 3u:
      v27 = *v17;
      v28 = Capability.id.unsafeMutableAddressor();
      v29 = v28[1];
      v30 = v28[2];
      v31 = *(v28 + 24);
      *&v67 = *v28;
      *(&v67 + 1) = v29;
      *&v68 = v30;
      BYTE8(v68) = v31;
      MEMORY[0x1EEE9AC00](v28);
      v58[-2] = &v67;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v32 = sub_1B0C32414(sub_1B0C10BD0, &v58[-4], v27);

      if ((v32 & 1) == 0)
      {
        goto LABEL_3;
      }

      v33 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0C090B4(v33, &v67);
      *(&v61[1] + 7) = v68;
      *(&v61[2] + 7) = v69;
      *(&v61[3] + 7) = v70;
      *(&v61[4] + 7) = v71;
      *(v61 + 7) = v67;
      v19 = &type metadata for IdentifyServer;
      v20 = &off_1F271E440;
      v80 = &type metadata for IdentifyServer;
      v81 = &off_1F271E440;
      v34 = swift_allocObject();
      v35 = v61[0];
      *(v34 + 33) = v61[1];
      v36 = v61[3];
      *(v34 + 49) = v61[2];
      *(v34 + 65) = v36;
      *(v34 + 80) = *(&v61[3] + 15);
      *&v78 = v34;
      *(v34 + 16) = 3;
      *(v34 + 17) = v35;
      *(v34 + 104) = 0;
      *(v34 + 112) = 0;
      *(v34 + 96) = 0;
      goto LABEL_15;
    case 4u:
      sub_1B04479C4(v17, type metadata accessor for UnauthenticatedState);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E59F0, &unk_1B0EDA820);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1B0EC1E70;
      v22 = Capability.uidOnly.unsafeMutableAddressor();
      v23 = v22[1];
      v24 = v22[2];
      v25 = *(v22 + 24);
      *(v21 + 32) = *v22;
      *(v21 + 40) = v23;
      *(v21 + 48) = v24;
      *(v21 + 56) = v25;
      v19 = &type metadata for Enable;
      v20 = &off_1F271DF88;
      v80 = &type metadata for Enable;
      v81 = &off_1F271DF88;
      LOBYTE(v78) = 4;
      *(&v78 + 1) = v21;
      v79 = MEMORY[0x1E69E7CD0];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      goto LABEL_15;
    case 5u:
      sub_1B04479C4(v17, type metadata accessor for UnauthenticatedState);
      v19 = &type metadata for Compress;
      v20 = &off_1F271CF00;
      v80 = &type metadata for Compress;
      v81 = &off_1F271CF00;
      LOBYTE(v78) = 6;
      goto LABEL_15;
    case 8u:
      v37 = *(v17 + 1);
      v63 = *v17;
      v64 = v37;
      v38 = *(v17 + 3);
      v65 = *(v17 + 2);
      v66 = v38;
      v39 = *(v17 + 8);
      v40 = *(v17 + 184);
      v41 = *(v17 + 216);
      v75 = *(v17 + 200);
      v76 = v41;
      v77 = *(v17 + 232);
      v42 = *(v17 + 120);
      v43 = *(v17 + 152);
      v71 = *(v17 + 136);
      v72 = v43;
      v73 = *(v17 + 168);
      v74 = v40;
      v44 = *(v17 + 88);
      v67 = *(v17 + 72);
      v68 = v44;
      v69 = *(v17 + 104);
      v70 = v42;
      sub_1B039FF14(&v67);
      v45 = Capability.applePushService.unsafeMutableAddressor();
      v46 = v45[1];
      v47 = v45[2];
      v48 = *(v45 + 24);
      *&v78 = *v45;
      *(&v78 + 1) = v46;
      v79 = v47;
      LOBYTE(v80) = v48;
      MEMORY[0x1EEE9AC00](v45);
      v58[-2] = &v78;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v49 = sub_1B0C32414(sub_1B0C10BD0, &v58[-4], v39);

      if (v49)
      {
        LOBYTE(v78) = 1;
        *(v62 + 7) = v63;
        *(&v62[1] + 7) = v64;
        *(&v62[2] + 7) = v65;
        *(&v62[3] + 7) = v66;
        v19 = &type metadata for RegisterForPush;
        v20 = &off_1F271FFC0;
        v80 = &type metadata for RegisterForPush;
        v81 = &off_1F271FFC0;
        v50 = swift_allocObject();
        v51 = v62[0];
        *(v50 + 33) = v62[1];
        v52 = v62[3];
        *(v50 + 49) = v62[2];
        *(v50 + 65) = v52;
        *&v78 = v50;
        *(v50 + 16) = 5;
        v53 = *(&v62[3] + 15);
        *(v50 + 17) = v51;
        v54 = MEMORY[0x1E69E7CC0];
        *(v50 + 80) = v53;
        *(v50 + 88) = v54;
        *(v50 + 96) = 0;
        *(v50 + 104) = 1;
        *(v50 + 112) = 0;
        *(v50 + 120) = 0;
LABEL_15:
        v56 = v60;
        __swift_project_boxed_opaque_existential_0(&v78, v19);
        v57 = (v20[1])(v19, v20);
        if (sub_1B0A9299C(v57, v59))
        {
          __swift_destroy_boxed_opaque_existential_0Tm(&v78);
          *(v56 + 32) = 0;
          *v56 = 0u;
          *(v56 + 16) = 0u;
        }

        else
        {
          sub_1B0450C74(&v78, v56);
        }
      }

      else
      {
        sub_1B0A1C37C();
LABEL_3:
        v18 = v60;
        *(v60 + 32) = 0;
        *v18 = 0u;
        v18[1] = 0u;
      }

      return;
    case 0xBu:
    case 0xEu:
      goto LABEL_3;
    case 0xCu:
    case 0xFu:
      v19 = &type metadata for GetCapabilities;
      v20 = &off_1F271C600;
      v80 = &type metadata for GetCapabilities;
      v81 = &off_1F271C600;
      LOBYTE(v78) = 0;
      goto LABEL_15;
    case 0xDu:
      v19 = &type metadata for StartTLS;
      v20 = &off_1F2720398;
      v80 = &type metadata for StartTLS;
      v81 = &off_1F2720398;
      LOWORD(v78) = 0;
      goto LABEL_15;
    default:
      sub_1B04479C4(v17, type metadata accessor for UnauthenticatedState);
      goto LABEL_3;
  }
}

uint64_t sub_1B0433B10()
{

  return swift_deallocObject();
}

uint64_t sub_1B0433B70()
{

  if (*(v0 + 104))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1B0433BE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

char *sub_1B0433C50()
{
  result = sub_1B043929C();
  v2 = *(result + 2);
  if (v2)
  {
    if (*&result[32 * v2 + 16] >> 62 == 1)
    {
      v3 = *(v0 + 40);
      v4 = *(v0 + 44);
      if (*(v0 + 56) < (v4 - v3))
      {
        v5 = result;

        sub_1B0D8E204();
        swift_allocError();
        swift_willThrow();
        if (v3 < 0x3E9 || v4 >> 1 >= v3)
        {
          return v5;
        }

        goto LABEL_12;
      }
    }
  }

  v6 = *(v0 + 40);
  if (v6 >= 0x3E9 && *(v0 + 44) >> 1 < v6)
  {
    v5 = result;
LABEL_12:
    ByteBuffer.discardReadBytes()();
    return v5;
  }

  return result;
}

void sub_1B0433D28()
{
  v1 = *(v0 + 24);
  v3 = *(v0 + 40);
  v2 = *(v0 + 44);
  v4 = v2 - v3;
  if (v1 >= v4)
  {
    return;
  }

  while (1)
  {
    v5 = *v0;
    v6 = *(v0 + 8);
    v7 = *(v0 + 16);
    v8 = v7 >> 61;
    if ((v7 >> 61) > 1)
    {
      break;
    }

    if (v8)
    {
      sub_1B0D8E258(*v0, *(v0 + 8), *(v0 + 16), HIBYTE(v7) & 0x1F);
      sub_1B0D8C688(v5, v6, v7 & 0x1FFFFFFFFFFFFFFFLL);
      sub_1B04343E0(v5, v6, v7);
      return;
    }

    if (v1 >= v4)
    {
      __break(1u);
      goto LABEL_59;
    }

    v15 = *(v0 + 54);
    v16 = *(v0 + 52);
    v17 = *(v0 + 32);
    swift_beginAccess();
    v18 = *(v17 + 24) + (v15 | (v16 << 8)) + v3;
    v19 = *(v18 + v1);
    v14 = v1 + 1;
    *(v0 + 24) = v1 + 1;
    if (v19 > 33)
    {
      if (v19 != 34)
      {
        if (v19 == 123)
        {
          *v0 = 0;
          *(v0 + 8) = 0;
          *(v0 + 16) = 0x2400000000000000;
        }

        goto LABEL_5;
      }

      goto LABEL_3;
    }

    if (v19 == 10)
    {
      if (v5)
      {
        goto LABEL_51;
      }

      v20 = v3 + 1;
      if (v3 == -1)
      {
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      if (v1 || v2 < v20)
      {
        goto LABEL_56;
      }

      v14 = 0;
      *(v0 + 40) = v20;
      *(v0 + 24) = 0;
LABEL_27:
      *(v0 + 8) = 0;
      *(v0 + 16) = 0;
      *v0 = 1;
      goto LABEL_5;
    }

    if (v19 == 13)
    {
      if (v14 >= v4)
      {
        *v0 = 0;
        *(v0 + 8) = 0;
        *(v0 + 16) = 0;
      }

      else
      {
        if (*(v18 + v14) == 10)
        {
          v14 = v1 + 2;
          *(v0 + 24) = v1 + 2;
        }

        *(v0 + 8) = 0;
        *(v0 + 16) = 0;
        *v0 = 1;
      }

LABEL_51:
      v27 = ByteBuffer.readSlice(length:)(v14);
      *(v0 + 24) = 0;
      if (v27)
      {
        return;
      }

      goto LABEL_59;
    }

LABEL_5:
    v3 = *(v0 + 40);
    v4 = v2 - v3;
    v1 = v14;
    if (v14 >= v4)
    {
      return;
    }
  }

  if (v8 == 3)
  {
    if (v1 >= v4)
    {
      goto LABEL_59;
    }

    v9 = *(v0 + 54);
    v10 = *(v0 + 52);
    v11 = *(v0 + 32);
    swift_beginAccess();
    v12 = *(v11 + 24) + (v9 | (v10 << 8)) + v3;
    v13 = *(v12 + v1);
    v14 = v1 + 1;
    *(v0 + 24) = v1 + 1;
    if (v13 == 10)
    {
      goto LABEL_47;
    }

    if (v13 == 13)
    {
      goto LABEL_41;
    }

    if (v5)
    {
      goto LABEL_3;
    }

    if (v13 == 34)
    {
      goto LABEL_27;
    }

    if (v13 != 92)
    {
LABEL_3:
      *v0 = 0;
      *(v0 + 8) = 0;
    }

    else
    {
      *v0 = xmmword_1B0ECE570;
    }

    *(v0 + 16) = 0x6000000000000000;
    goto LABEL_5;
  }

  if (v8 == 2)
  {
    sub_1B0D8C958(v5 & 1, *(v0 + 8));
    v21 = *(v0 + 24);
    if (v21 <= 0)
    {
      return;
    }

    v22 = ByteBuffer.readSlice(length:)(v21);
    *(v0 + 24) = 0;
    if (v22)
    {
      if (v6 >= (HIDWORD(v23) - v23))
      {
        return;
      }

      goto LABEL_57;
    }

    goto LABEL_58;
  }

  v24 = v0;
  sub_1B0434238();
  v25 = *(v0 + 24);
  v0 += 32;
  v14 = ByteBuffer.readSlice(length:)(v25);
  *(v24 + 24) = 0;
  if (v14)
  {
    return;
  }

  __break(1u);
LABEL_41:
  if (v14 >= v4)
  {
    *v0 = 0;
    *(v0 + 8) = 0;
    *(v0 + 16) = 0;
  }

  else
  {
    if (*(v12 + v14) == 10)
    {
      v14 = v1 + 2;
      *(v0 + 24) = v1 + 2;
    }

    *(v0 + 8) = 0;
    *(v0 + 16) = 0;
    *v0 = 1;
  }

LABEL_47:
  v26 = ByteBuffer.readSlice(length:)(v14);
  *(v0 + 24) = 0;
  if (v26)
  {
    return;
  }

LABEL_59:
  __break(1u);
}

uint64_t sub_1B0434238()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  if (v1 >= (*(v0 + 44) - v2))
  {
    result = sub_1B04343E0(*v0, *(v0 + 8), *(v0 + 16));
    *v0 = 0;
    *(v0 + 8) = 0;
    *(v0 + 16) = 0;
  }

  else if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v0 + 54);
    v4 = *(v0 + 52);
    v5 = *(v0 + 32);
    swift_beginAccess();
    if (*(*(v5 + 24) + (v3 | (v4 << 8)) + v2 + v1) == 10)
    {
      *(v0 + 24) = v1 + 1;
    }

    result = sub_1B04343E0(*v0, *(v0 + 8), *(v0 + 16));
    *(v0 + 8) = 0;
    *(v0 + 16) = 0;
    *v0 = 1;
  }

  return result;
}

unint64_t ByteBuffer.readSlice(length:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v2 = result;
  v4 = *(v1 + 8);
  v3 = *(v1 + 12);
  if (v3 < result || (v3 - result) < v4)
  {
    return 0;
  }

  v6 = *(v1 + 22) | (*(v1 + 20) << 8);
  if (__CFADD__(v6, v4))
  {
    __break(1u);
  }

  else
  {
    if ((v6 + v4) >> 24)
    {
      result = ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(*(v1 + 8), result, *v1);
    }

    else
    {
    }

    if (!__CFADD__(v4, v2))
    {
      *(v1 + 8) = v4 + v2;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B04343E0(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >> 61 == 1)
  {
    return sub_1B0D8E268(result, a2, a3, HIBYTE(a3) & 0x1F);
  }

  return result;
}

uint64_t sub_1B04343F8(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62 != 1)
  {
  }

  return v3;
}

uint64_t sub_1B043440C(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62 != 1)
  {
  }

  return v3;
}

void sub_1B0434420(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ServerResponseFramingParser.Frame(0);
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v36 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  if (!v7)
  {
    return;
  }

  v8 = (a1 + 56);
  *&v5 = 68157955;
  v30 = v5;
  v31 = xmmword_1B0ECE570;
  v29 = v2;
  v34 = v4;
  while (1)
  {
    v9 = *(v8 - 3);
    v10 = *(v8 - 2);
    v11 = *(v8 - 1);
    v12 = v11 >> 62;
    if ((v11 >> 62) <= 1)
    {
      if (v12)
      {
        *(v2 + 168) = v9;
        *(v2 + 176) = 0;
      }

      else
      {
        v38 = *(v8 - 3);
        v39 = v10;
        v40 = v11;
        v41 = WORD2(v11);
        v42 = BYTE6(v11);
        sub_1B0434864(&v38);
        *(v2 + 168) = 0;
        *(v2 + 176) = 1;
      }

      goto LABEL_4;
    }

    v13 = *v8;
    if (v12 != 2)
    {
      break;
    }

    v38 = *(v8 - 3);
    v39 = v10;
    v40 = v11;
    v41 = WORD2(v11);
    v42 = BYTE6(v11);
    sub_1B0434864(&v38);
    *(v2 + 168) = v13 & ~(v13 >> 63);
    *(v2 + 176) = v13 < 0;
LABEL_4:
    v8 += 4;
    if (!--v7)
    {
      return;
    }
  }

  v37 = HIDWORD(v11);
  swift_beginAccess();
  v33 = *(v9 + 24);
  sub_1B04343F8(v9, v10, v11);
  v35 = v13;
  sub_1B04343F8(v9, v10, v11);
  if (qword_1EB6E63B0 != -1)
  {
    swift_once();
  }

  v14 = sub_1B0E439A8();
  __swift_project_value_buffer(v14, qword_1EB7383B8);
  v15 = sub_1B0E43988();
  v16 = sub_1B0E458F8();
  if (!os_log_type_enabled(v15, v16))
  {
LABEL_16:

    sub_1B0D0CB00();
    v22 = swift_allocError();
    *v23 = v31;
    *(v23 + 16) = 3;
    v24 = v36;
    *v36 = v22;
    v24[1] = v9;
    v24[2] = v10;
    *(v24 + 30) = BYTE6(v11);
    *(v24 + 14) = v37;
    *(v24 + 6) = v11;
    swift_storeEnumTagMultiPayload();
    v25 = *(v2 + 184);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_1B044861C(0, v25[2] + 1, 1, v25);
    }

    v27 = v25[2];
    v26 = v25[3];
    if (v27 >= v26 >> 1)
    {
      v25 = sub_1B044861C((v26 > 1), v27 + 1, 1, v25);
    }

    sub_1B043440C(v9, v10, v11);
    sub_1B043440C(v9, v10, v11);
    v25[2] = v27 + 1;
    sub_1B044533C(v36, v25 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v27, type metadata accessor for ServerResponseFramingParser.Frame);
    *(v2 + 184) = v25;
    goto LABEL_4;
  }

  v17 = HIDWORD(v10) - v10;
  v18 = swift_slowAlloc();
  *v18 = v30;
  if (v17 >= 0xFFFFFFFF80000000)
  {
    if (v17 > 0x7FFFFFFF)
    {
      goto LABEL_23;
    }

    v19 = v18;
    v20 = (BYTE6(v11) | (v37 << 8)) + v10;
    *(v18 + 4) = v17;
    v21 = v33 + v20;
    *(v18 + 8) = 2101;
    *(v18 + 10) = v21;
    _os_log_impl(&dword_1B0389000, v15, v16, "Received invalid data frame from server: %{sensitive}.*P", v18, 0x12u);
    MEMORY[0x1B272C230](v19, -1, -1);
    v2 = v29;
    goto LABEL_16;
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t sub_1B0434864(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5680, &qword_1B0EE8170);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v40 - v5;
  v42 = type metadata accessor for ResponseOrContinuationRequest(0);
  v47 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v40 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6598, &qword_1B0EE8178);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v40 - v9;
  v50 = type metadata accessor for ServerResponseFramingParser.Frame(0);
  v11 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v51 = &v40 - v14;
  v15 = *a1;
  v16 = *(a1 + 2);
  v17 = *(a1 + 3);
  v18 = *(a1 + 4);
  v19 = *(a1 + 10);
  v20 = *(a1 + 22);
  v21 = *(v2 + 144);
  v43 = v2 + 144;
  if (v21)
  {
    v22 = *(v2 + 166);
    v23 = *(v2 + 164);
    v24 = *(v2 + 160);
    v25 = *(v2 + 152);
    v60 = v21;
    v61 = v25;
    v62 = v24;
    v63 = v23;
    v64 = v22;
    v54 = v15;
    v55 = v16;
    v56 = v17;
    v57 = v18;
    v58 = v19;
    v59 = v20;
    ByteBuffer.writeBuffer(_:)(&v54);
    v18 = v62;
    v19 = v63;
    v20 = v64;
    v15 = v60;
    v26 = v61;
    v27 = v62 | (v63 << 32) | (v64 << 48);
  }

  else
  {
    v26 = v16 | (v17 << 32);
    v27 = v18 | (v19 << 32) | (v20 << 48);
  }

  *(v2 + 144) = v15;
  *(v2 + 152) = v26;
  *(v2 + 160) = v27;
  *(v2 + 166) = BYTE6(v27);
  v53 = v2;
  *(v2 + 164) = WORD2(v27);
  if (v15)
  {
    v48 = v43 - 80;
    v49 = (v11 + 56);
    v41 = v47 + 6;
    v44 = v11;
    v45 = v6;
    v47 = (v11 + 48);
    while (1)
    {
      v60 = v15;
      v61 = v26;
      v62 = v18;
      v63 = v19;
      v64 = v20;

      ResponseParser.parseResponseStream(buffer:)(&v60, v6);
      if ((*v41)(v6, 1, v42) == 1)
      {
        sub_1B0398EFC(v6, &qword_1EB6E5680, &qword_1B0EE8170);
        v28 = v50;
        v29 = *v49;
        v30 = v10;
        v31 = 1;
      }

      else
      {
        v32 = v40;
        sub_1B044533C(v6, v40, type metadata accessor for ResponseOrContinuationRequest);
        sub_1B044533C(v32, v10, type metadata accessor for ResponseOrContinuationRequest);
        v28 = v50;
        swift_storeEnumTagMultiPayload();
        v29 = *v49;
        v30 = v10;
        v31 = 0;
      }

      v46 = v29;
      v29(v30, v31, 1, v28);

      if (v61 == HIDWORD(v26))
      {

        v15 = 0;
        v26 = 0;
        v33 = 0;
      }

      else
      {
        v26 = v26 & 0xFFFFFFFF00000000 | v61;
        v33 = v18 | (v19 << 32) | (v20 << 48);
      }

      v34 = v53;
      *(v53 + 144) = v15;
      *(v34 + 152) = v26;
      *(v34 + 160) = v33;
      *(v34 + 166) = BYTE6(v33);
      v18 = v33;
      v19 = WORD2(v33);
      v20 = BYTE6(v33);
      *(v34 + 164) = WORD2(v33);
      if ((*v47)(v10, 1, v28) == 1)
      {
        break;
      }

      v35 = v51;
      sub_1B044533C(v10, v51, type metadata accessor for ServerResponseFramingParser.Frame);
      sub_1B0446A38(v35, v52, type metadata accessor for ServerResponseFramingParser.Frame);
      v36 = *(v34 + 184);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_1B044861C(0, v36[2] + 1, 1, v36);
      }

      v38 = v36[2];
      v37 = v36[3];
      if (v38 >= v37 >> 1)
      {
        v36 = sub_1B044861C((v37 > 1), v38 + 1, 1, v36);
      }

      sub_1B0446AA0(v51, type metadata accessor for ServerResponseFramingParser.Frame);
      v36[2] = v38 + 1;
      sub_1B044533C(v52, v36 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v38, type metadata accessor for ServerResponseFramingParser.Frame);
      *(v53 + 184) = v36;
      v6 = v45;
      if (!v15)
      {
        v46(v10, 1, 1, v50);
        return sub_1B0398EFC(v10, &qword_1EB6E6598, &qword_1B0EE8178);
      }
    }
  }

  else
  {
    (*(v11 + 56))(v10, 1, 1, v50);
  }

  return sub_1B0398EFC(v10, &qword_1EB6E6598, &qword_1B0EE8178);
}

void ResponseParser.parseResponseStream(buffer:)(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v50 = a2;
  v4 = type metadata accessor for Response(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v48 - v8;
  v10 = *a1;
  v12 = *(a1 + 2);
  v11 = *(a1 + 3);
  v13 = *(a1 + 4);
  v14 = *(a1 + 10);
  v15 = *(a1 + 22);
  v63 = *a1;
  v69 = v11;
  v70 = v12;
  v64 = v12;
  v65 = v11;
  v66 = v13;
  v67 = v14;
  v68 = v15;
  v17 = *(v2 + 56);
  v16 = *(v2 + 64);
  if (!*(v2 + 72))
  {
    swift_retain_n();
    v22 = v16 & 1;
    v9 = v50;
    v16 = v49;
    sub_1B043554C(&v63, 1, 100, v22, v2, v50);
    if (v16)
    {

      v63 = v10;
      v21 = v69;
      v20 = v70;
      v64 = v70;
      v65 = v69;
      v66 = v13;
      v67 = v14;
      v68 = v15;
      swift_willThrow();
      v19 = v16;
      goto LABEL_10;
    }

    goto LABEL_20;
  }

  if (*(v2 + 72) != 1)
  {
    if (!v17)
    {
LABEL_23:
      if (__OFADD__(v16, 1))
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      sub_1B0D047BC(&v51);
      v30 = v60;
      *(v9 + 8) = v59;
      *(v9 + 9) = v30;
      *(v9 + 10) = v61;
      *(v9 + 88) = v62;
      v31 = v56;
      *(v9 + 4) = v55;
      *(v9 + 5) = v31;
      v32 = v58;
      *(v9 + 6) = v57;
      *(v9 + 7) = v32;
      v33 = v52;
      *v9 = v51;
      *(v9 + 1) = v33;
      v34 = v54;
      *(v9 + 2) = v53;
      *(v9 + 3) = v34;
      swift_storeEnumTagMultiPayload();
      *(v2 + 56) = v16 + 1;
      *(v2 + 64) = 0;
      *(v2 + 72) = 0;
      v35 = v50;
      sub_1B04453A4(v9, v50, type metadata accessor for Response);

      goto LABEL_31;
    }

    v23 = *(v2 + 64);
    v21 = v69;
    v24 = v69 - v70;
    if (v69 == v70)
    {
      sub_1B0D3EA30();
      v19 = swift_allocError();
      swift_willThrow();

      v20 = v70;
      goto LABEL_10;
    }

    if (v17 > v24)
    {
      v36 = ByteBuffer.readSlice(length:)(v24);
      if (v36)
      {
LABEL_29:
        v39 = (HIDWORD(v37) - v37);
        v40 = v17 - v39;
        if (__OFSUB__(v17, v39))
        {
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        *&v51 = v36;
        *(&v51 + 1) = v37;
        LODWORD(v52) = v38;
        WORD2(v52) = WORD2(v38);
        BYTE6(v52) = BYTE6(v38);
        sub_1B0D047A8(&v51);
        v41 = v60;
        *(v6 + 8) = v59;
        *(v6 + 9) = v41;
        *(v6 + 10) = v61;
        *(v6 + 88) = v62;
        v42 = v56;
        *(v6 + 4) = v55;
        *(v6 + 5) = v42;
        v43 = v58;
        *(v6 + 6) = v57;
        *(v6 + 7) = v43;
        v44 = v52;
        *v6 = v51;
        *(v6 + 1) = v44;
        v45 = v54;
        *(v6 + 2) = v53;
        *(v6 + 3) = v45;
        swift_storeEnumTagMultiPayload();
        *(v2 + 56) = v40;
        *(v2 + 64) = v23;
        *(v2 + 72) = 2;
        v35 = v50;
        sub_1B04453A4(v6, v50, type metadata accessor for Response);
LABEL_31:
        v46 = v70;
        v47 = type metadata accessor for ResponseOrContinuationRequest(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v47 - 8) + 56))(v35, 0, 1, v47);
        v27 = v64;
        if (__CFADD__(v46, v64 - v46))
        {
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        if (v69 < v64)
        {
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        goto LABEL_33;
      }

      __break(1u);
    }

    v36 = ByteBuffer.readSlice(length:)(v17);
    if (!v36)
    {
LABEL_44:
      __break(1u);
      return;
    }

    goto LABEL_29;
  }

  v18 = v50;
  v16 = v49;
  sub_1B0E110DC(&v63, v17, v50);
  if (!v16)
  {
    v2 = type metadata accessor for ResponseOrContinuationRequest(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v2 - 8) + 56))(v18, 0, 1, v2);
    v27 = v69 - v65 + v64;
    if (__CFADD__(v70, v69 - (v70 + v65) + v64))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v69 >= v27)
    {
      goto LABEL_33;
    }

    __break(1u);
LABEL_20:

    v29 = type metadata accessor for ResponseOrContinuationRequest(0);
    (*(*(v29 - 8) + 56))(v9, 0, 1, v29);
    v27 = v69 - v65 + v64;
    if (__CFADD__(v70, v69 - (v70 + v65) + v64))
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (v69 >= v27)
    {
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_23;
  }

  v19 = v16;
  v21 = v69;
  v20 = v70;
LABEL_10:
  *&v51 = v19;
  v25 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if (!swift_dynamicCast())
  {
    goto LABEL_14;
  }

  v26 = type metadata accessor for ResponseOrContinuationRequest(0);
  (*(*(v26 - 8) + 56))(v50, 1, 1, v26);

  v27 = v21 - v65 + v64;
  if (__CFADD__(v20, v21 - (v20 + v65) + v64))
  {
    __break(1u);
    goto LABEL_36;
  }

  if (v21 < v27)
  {
    __break(1u);
LABEL_14:

    v28 = v21 - v65 + v64;
    if (!__CFADD__(v20, v21 - (v20 + v65) + v64))
    {
      if (v21 >= v28)
      {
        *(a1 + 2) = v28;

        return;
      }

      goto LABEL_37;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_33:
  *(a1 + 2) = v27;
}

void sub_1B043554C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W4>, uint64_t *a5@<X5>, uint64_t a6@<X8>)
{
  v7 = v6;
  LODWORD(v129) = a4;
  v13 = type metadata accessor for ResponsePayload(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v119[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for ResponseParser._Response(0);
  MEMORY[0x1EEE9AC00](v16);
  v126 = &v119[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v127 = a2;
  v128 = &v119[-v20];
  v21 = __OFADD__(a2, 1);
  v22 = (a2 + 1);
  if (v21)
  {
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    *&v141 = 0;
    *(&v141 + 1) = 0xE000000000000000;
    sub_1B0E46298();
    v137 = v141;
    MEMORY[0x1B2726E80](0xD000000000000011, 0x80000001B0F30570);
    *&v141 = v7;
    *(&v141 + 1) = a3;
    LOBYTE(v142) = v22;
    sub_1B0E46508();
    sub_1B0E465B8();
    __break(1u);
    return;
  }

  v124 = v15;
  v125 = v19;
  v130 = a6;
  *&v132 = a3;
  if (v22 >= a3)
  {
    sub_1B0439BCC();
    v6 = swift_allocError();
    *v29 = a3;
  }

  else
  {
    v23 = a5;
    v24 = *a1;
    v25 = a1[1];
    v26 = *(a1 + 4);
    v27 = *(a1 + 10);
    v28 = *(a1 + 22);
    sub_1B0436204(a1);
    if (!v6)
    {
      a5 = v23;
      goto LABEL_9;
    }

    *a1 = v24;
    a1[1] = v25;
    *(a1 + 4) = v26;
    *(a1 + 10) = v27;
    *(a1 + 22) = v28;
    a5 = v23;
    a3 = v132;
  }

  swift_willThrow();

  if (v22 < a3)
  {
LABEL_9:
    v32 = *(a1 + 4);
    v121 = *(a1 + 10);
    v122 = v32;
    v120 = *(a1 + 22);
    v33 = *a5;
    v34 = a5[1];
    v35 = a5;
    v36 = a5[2];
    *&v131 = v35;
    v37 = v35[3];

    v123 = a1;
    if (v129)
    {
      v38 = v166;
      sub_1B0439548(a1, v22, v132, v33, v34, v36, v37, v166);
    }

    else
    {
      v38 = v167;
      sub_1B0D9DD50(a1, v22, v132, v33, v34, v36, v37, v167);
    }

    a5 = v131;
    a3 = v128;
    v50 = *(v38 + 9);
    *(v128 + 8) = *(v38 + 8);
    *(a3 + 144) = v50;
    *(a3 + 160) = *(v38 + 10);
    *(a3 + 176) = *(v38 + 88);
    v51 = *(v38 + 5);
    *(a3 + 64) = *(v38 + 4);
    *(a3 + 80) = v51;
    v52 = *(v38 + 7);
    *(a3 + 96) = *(v38 + 6);
    *(a3 + 112) = v52;
    v53 = *(v38 + 1);
    *a3 = *v38;
    *(a3 + 16) = v53;
    v54 = *(v38 + 3);
    *(a3 + 32) = *(v38 + 2);
    *(a3 + 48) = v54;
    a1 = v123;
    goto LABEL_25;
  }

  sub_1B0439BCC();
  v30 = swift_allocError();
  *v31 = a3;
  swift_willThrow();
  *&v153[0] = v30;
  v39 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if (swift_dynamicCast())
  {
  }

  else
  {

    *&v153[0] = v30;
    v40 = v30;
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_22;
    }
  }

  if (v22 >= a3)
  {
    sub_1B0439BCC();
    v30 = swift_allocError();
    *v49 = a3;
    swift_willThrow();
    goto LABEL_22;
  }

  v41 = *a1;
  v42 = *(a1 + 4);
  v121 = *(a1 + 10);
  v122 = v42;
  v120 = *(a1 + 22);
  v43 = a3;
  v44 = *a5;
  v45 = a5[1];
  *&v131 = a5;
  v46 = a5[2];
  v47 = a5[3];
  v129 = v41;

  v48 = v124;
  sub_1B0439A40(a1, v22, v43, v44, v45, v46, v47);

  a3 = v128;
  sub_1B04453A4(v48, v128, type metadata accessor for ResponsePayload);
  a5 = v131;
LABEL_25:
  LOBYTE(v22) = v125;
  swift_storeEnumTagMultiPayload();

  v7 = v126;
  sub_1B0448354(a3, v126);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B04483B8(a3, type metadata accessor for ResponseParser._Response);
    sub_1B04453A4(v7, v130, type metadata accessor for ResponsePayload);
    type metadata accessor for Response(0);
LABEL_60:
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ResponseOrContinuationRequest(0);
    swift_storeEnumTagMultiPayload();
    return;
  }

  v58 = *(v7 + 144);
  v59 = *(v7 + 112);
  v160 = *(v7 + 128);
  v161 = v58;
  v60 = *(v7 + 144);
  v162 = *(v7 + 160);
  v61 = *(v7 + 80);
  v62 = *(v7 + 48);
  v156 = *(v7 + 64);
  v157 = v61;
  v63 = *(v7 + 80);
  v64 = *(v7 + 112);
  v158 = *(v7 + 96);
  v159 = v64;
  v65 = *(v7 + 16);
  v153[0] = *v7;
  v153[1] = v65;
  v66 = *(v7 + 48);
  v68 = *v7;
  v67 = *(v7 + 16);
  v154 = *(v7 + 32);
  v155 = v66;
  v164[8] = v160;
  v164[9] = v60;
  v164[10] = *(v7 + 160);
  v164[4] = v156;
  v164[5] = v63;
  v164[6] = v158;
  v164[7] = v59;
  v164[0] = v68;
  v164[1] = v67;
  v163 = *(v7 + 176);
  v165 = *(v7 + 176);
  v164[2] = v154;
  v164[3] = v62;
  v69 = sub_1B0D0CBC8(v164);
  if (v69 <= 2)
  {
    if (!v69)
    {
      v84 = sub_1B041BA38(v164);
      v7 = a5[7];
      a3 = a5[8];
      v85 = a5 + 7;
      LOBYTE(v22) = *(v85 + 16);
      if (!v22 && (a3 & 1) != 0)
      {
        v86 = *v84;
        sub_1B04483B8(v128, type metadata accessor for ResponseParser._Response);
        *v85 = 0;
        v85[1] = 0;
        *(v85 + 16) = 0;
        LODWORD(v141) = v86;
        sub_1B041BA38(&v141);
        goto LABEL_59;
      }

      goto LABEL_71;
    }

    if (v69 == 1)
    {
      v70 = sub_1B041BA38(v164);
      v7 = a5[7];
      a3 = a5[8];
      v71 = a5 + 7;
      LOBYTE(v22) = *(v71 + 16);
      if (!v22 && (a3 & 1) != 0)
      {
        v72 = *v70;
        sub_1B04483B8(v128, type metadata accessor for ResponseParser._Response);
        *v71 = 0;
        v71[1] = 0;
        *(v71 + 16) = 0;
        LODWORD(v141) = v72;
        sub_1B0D043DC(&v141);
LABEL_59:
        v109 = v150;
        v110 = v130;
        *(v130 + 128) = v149;
        *(v110 + 144) = v109;
        *(v110 + 160) = v151;
        *(v110 + 176) = v152;
        v111 = v146;
        *(v110 + 64) = v145;
        *(v110 + 80) = v111;
        v112 = v148;
        *(v110 + 96) = v147;
        *(v110 + 112) = v112;
        v113 = v142;
        *v110 = v141;
        *(v110 + 16) = v113;
        v114 = v144;
        *(v110 + 32) = v143;
        *(v110 + 48) = v114;
        type metadata accessor for Response(0);
        goto LABEL_60;
      }

      goto LABEL_71;
    }

    v94 = sub_1B041BA38(v164);
    if (!*(a5 + 72) && (a5[8] & 1) == 0)
    {
      v95 = a5[5];
      v96 = a5[7];
      if (v96 < v95)
      {
        v97 = v94;
        sub_1B04483B8(v128, type metadata accessor for ResponseParser._Response);
        a5[7] = v96 + 1;
        a5[8] = 0;
        *(a5 + 72) = 0;
        v98 = *(v97 + 48);
        v100 = *v97;
        v99 = *(v97 + 16);
        v143 = *(v97 + 32);
        v144 = v98;
        v141 = v100;
        v142 = v99;
        v101 = *(v97 + 112);
        v103 = *(v97 + 64);
        v102 = *(v97 + 80);
        v147 = *(v97 + 96);
        v148 = v101;
        v145 = v103;
        v146 = v102;
        v105 = *(v97 + 144);
        v104 = *(v97 + 160);
        v106 = *(v97 + 128);
        v152 = *(v97 + 176);
        v150 = v105;
        v151 = v104;
        v149 = v106;
        sub_1B0D046AC(&v141);
        goto LABEL_59;
      }

      sub_1B0E12600();
      v30 = swift_allocError();
      *v117 = v96;
      v117[1] = v95;
      swift_willThrow();
      sub_1B0E12654(v153);
      goto LABEL_65;
    }

    goto LABEL_67;
  }

  v22 = &v137;
  if (v69 != 3)
  {
    if (v69 != 4)
    {
      if (*(a5 + 72) || (a5[8] & 1) != 0)
      {
        goto LABEL_68;
      }

      v107 = a5[5];
      v108 = a5[7];
      if (v108 < v107)
      {
        sub_1B04483B8(v128, type metadata accessor for ResponseParser._Response);
        *(a5 + 7) = xmmword_1B0EA4610;
        *(a5 + 72) = 0;
        sub_1B0D04728(&v141);
        goto LABEL_59;
      }

      sub_1B0E12600();
      v30 = swift_allocError();
      *v118 = v108;
      v118[1] = v107;
      swift_willThrow();
LABEL_65:
      sub_1B04483B8(v128, type metadata accessor for ResponseParser._Response);
      goto LABEL_19;
    }

    v73 = sub_1B041BA38(v164);
    v74 = *v73;
    v75 = *(v73 + 16);
    a3 = *(v73 + 32);
    v7 = *(v73 + 40);
    *(v140 + 9) = *(a5 + 57);
    v76 = *(a5 + 3);
    v139 = *(a5 + 2);
    v140[0] = v76;
    v77 = *(a5 + 1);
    v137 = *a5;
    v138 = v77;
    if ((v7 & 0x8000000000000000) != 0 || (v22 = *&v140[0], v7 < *&v140[0]))
    {
      *(v136 + 9) = *(a5 + 57);
      v78 = *(a5 + 3);
      v135 = *(a5 + 2);
      v136[0] = v78;
      v79 = *(a5 + 1);
      v133 = *a5;
      v134 = v79;
      if (BYTE8(v136[1]) || (v136[1] & 1) != 0)
      {
        goto LABEL_70;
      }

      v80 = a5;
      v81 = *(&v136[0] + 1);
      v82 = *(&v135 + 1);
      if (*(&v136[0] + 1) < *(&v135 + 1))
      {
        v131 = v75;
        v132 = v74;
        sub_1B04483B8(v128, type metadata accessor for ResponseParser._Response);
        v80[7] = v81 + 1;
        v80[8] = 0;
        v83 = 1;
LABEL_50:
        *(v80 + 72) = v83;
        v141 = v132;
        v142 = v131;
        LOBYTE(v143) = a3;
        *(&v143 + 1) = v7;
        sub_1B0D04794(&v141);
        goto LABEL_59;
      }

      goto LABEL_61;
    }

LABEL_62:
    sub_1B0E12598(&v137, &v141);
    sub_1B0E12654(v153);
    sub_1B0E126A8();
    v30 = swift_allocError();
    *v116 = v7;
    v116[1] = v22;
    swift_willThrow();
    sub_1B0E125D0(&v137);
    goto LABEL_65;
  }

  v87 = sub_1B041BA38(v164);
  v88 = *v87;
  v89 = *(v87 + 16);
  a3 = *(v87 + 32);
  v7 = *(v87 + 40);
  *(v140 + 9) = *(a5 + 57);
  v90 = *(a5 + 3);
  v139 = *(a5 + 2);
  v140[0] = v90;
  v91 = *(a5 + 1);
  v137 = *a5;
  v138 = v91;
  if ((v7 & 0x8000000000000000) == 0)
  {
    v22 = *&v140[0];
    if (v7 >= *&v140[0])
    {
      goto LABEL_62;
    }
  }

  *(v136 + 9) = *(a5 + 57);
  v92 = *(a5 + 3);
  v135 = *(a5 + 2);
  v136[0] = v92;
  v93 = *(a5 + 1);
  v133 = *a5;
  v134 = v93;
  if (BYTE8(v136[1]) || (v136[1] & 1) != 0)
  {
    goto LABEL_69;
  }

  v80 = a5;
  v81 = *(&v136[0] + 1);
  v82 = *(&v135 + 1);
  if (*(&v136[0] + 1) < *(&v135 + 1))
  {
    v131 = v89;
    v132 = v88;
    sub_1B04483B8(v128, type metadata accessor for ResponseParser._Response);
    v80[7] = v7;
    v80[8] = v81 + 1;
    v83 = 2;
    goto LABEL_50;
  }

LABEL_61:
  sub_1B0E12598(&v133, &v141);
  sub_1B0E12654(v153);
  sub_1B0E12600();
  v30 = swift_allocError();
  *v115 = v81;
  v115[1] = v82;
  swift_willThrow();
  sub_1B0E125D0(&v133);
  sub_1B04483B8(v128, type metadata accessor for ResponseParser._Response);
  a5 = v80;
LABEL_19:
  a3 = v132;
LABEL_22:
  *&v141 = v30;
  v55 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if (swift_dynamicCast())
  {

    v56 = *(a5 + 3);
    v168[2] = *(a5 + 2);
    v169[0] = v56;
    *(v169 + 9) = *(a5 + 57);
    v57 = *(a5 + 1);
    v168[0] = *a5;
    v168[1] = v57;
    sub_1B0E12598(v168, v164);
    sub_1B0E11518(a1, v127, a3);
    sub_1B0E125D0(v168);
  }
}

uint64_t type metadata accessor for ResponseParser._Response(uint64_t a1)
{
  result = qword_1EB6DE710;
  if (!qword_1EB6DE710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *sub_1B0436204(uint64_t *result)
{
  v2 = *(result + 2);
  v1 = *(result + 3);
  if (v1 == v2)
  {
    sub_1B0D3EA30();
    swift_allocError();
    return swift_willThrow();
  }

  if (v1 < v2)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v3 = result;
  v4 = *(result + 4);
  v5 = *(result + 10);
  v6 = *(result + 22);
  if (v4 - (v6 | (v5 << 8)) < v1)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v38 = *result;
  v30 = v38;
  v31 = v2;
  v32 = v1;
  v11 = v4;
  v33 = v4;
  v12 = v6;
  v13 = v5;
  v34 = v5;
  v35 = v6;
  v36 = v2;
  v37 = v1;
  v7 = v2;
  while (1)
  {
    if (v7 < v31)
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if ((v7 - v31) >= v32 - v31)
    {
      goto LABEL_18;
    }

    result = swift_beginAccess();
    if (*(*(v30 + 24) + (v35 | (v34 << 8)) + v7) != 32)
    {
      break;
    }

    if (++v7 == v1)
    {

      result = sub_1B04394F4(&v30);
      *(v3 + 8) = v1;
      return result;
    }
  }

  v8 = v38;

  sub_1B04394F4(&v30);
  v22 = v8;
  v23 = v2;
  v24 = v1;
  v25 = v11;
  v26 = v13;
  v27 = v12;
  v28 = v2;
  v29 = v1;

  result = sub_1B04394F4(&v22);
  if (v28 >= v7)
  {
    sub_1B0E46298();

    v14 = v8;
    v15 = v2;
    v16 = v1;
    v17 = v11;
    v18 = v13;
    v19 = v12;
    v20 = v2;
    v21 = v1;
    if ((v7 - v2) >= (v1 - v2))
    {
      goto LABEL_22;
    }

    swift_beginAccess();

    sub_1B04394F4(&v14);
    v9 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v9);

    sub_1B0436554();
    swift_allocError();
    *v10 = 0xD000000000000016;
    v10[1] = 0x80000001B0F304A0;
    v10[2] = 0xD000000000000020;
    v10[3] = 0x80000001B0F2FA10;
    v10[4] = 241;
    return swift_willThrow();
  }

  if (v1 < v7)
  {
    goto LABEL_21;
  }

  *(v3 + 8) = v7;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_1(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = 1752392040;
  *(a2 + 12) = 2112;
  *(a2 + 14) = result;
  return result;
}

void OUTLINED_FUNCTION_1_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

unint64_t sub_1B0436554()
{
  result = qword_1EB6DE910;
  if (!qword_1EB6DE910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE910);
  }

  return result;
}

uint64_t sub_1B04365C0()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1B0E46A78();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0xA0000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.gmailExtensions = 0x5458452D4D472D58;
  *algn_1EB7380A8 = 0xEA0000000000312DLL;
  qword_1EB7380B0 = v0;
  byte_1EB7380B8 = v4 & 1;
  return result;
}

uint64_t sub_1B04366AC()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1B0E46A78();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x90000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.condStore = 0x524F5453444E4F43;
  *algn_1EB737F48 = 0xE900000000000045;
  qword_1EB737F50 = v0;
  byte_1EB737F58 = v4 & 1;
  return result;
}

void sub_1B0436798()
{
  if (("eBuffer-views.swift" & 0x2000000000000000) != 0)
  {
    v0 = ("eBuffer-views.swift" >> 40) & 0xF0000;
  }

  else
  {
    v0 = 0x100000;
  }

  v1 = v0 == 0;
  if (v0)
  {
    v2 = 15;
    while (sub_1B0E44EA8() != 61 || v3 != 0xE100000000000000)
    {
      v4 = sub_1B0E46A78();

      if (v4)
      {
        goto LABEL_12;
      }

      v2 = sub_1B0E44D08();
      v1 = (v0 ^ v2) < 0x4000;
      if ((v0 ^ v2) < 0x4000)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v2 = 0;
  }

LABEL_12:
  static Capability.yahooMailHighestModificationSequence = 0xD000000000000010;
  *algn_1EB738048 = 0x80000001B0F2FC70;
  qword_1EB738050 = v2;
  byte_1EB738058 = v1;
}

uint64_t sub_1B04368A8()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1B0E46A78();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x70000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.partial = 0x4C414954524150;
  *algn_1EB737F88 = 0xE700000000000000;
  qword_1EB737F90 = v0;
  byte_1EB737F98 = v5 & 1;
  return result;
}

uint64_t sub_1B0436984()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1B0E46A78();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x70000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.extendedSearch = 0x48435241455345;
  *algn_1EB7380C8 = 0xE700000000000000;
  qword_1EB7380D0 = v0;
  byte_1EB7380D8 = v5 & 1;
  return result;
}

uint64_t sub_1B0436A60()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1B0E46A78();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x90000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.namespace = 0x43415053454D414ELL;
  *algn_1EB737F28 = 0xE900000000000045;
  qword_1EB737F30 = v0;
  byte_1EB737F38 = v4 & 1;
  return result;
}

uint64_t sub_1B0436B4C()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1B0E46A78();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0xB0000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.listStatus = 0x4154532D5453494CLL;
  *algn_1EB738188 = 0xEB00000000535554;
  qword_1EB738190 = v0;
  byte_1EB738198 = v4 & 1;
  return result;
}

uint64_t sub_1B0436C34()
{
  v0 = 15;
  while (sub_1B0E44EA8() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1B0E46A78();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1B0E44D08();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0xB0000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.specialUse = 0x2D4C414943455053;
  *algn_1EB738168 = 0xEB00000000455355;
  qword_1EB738170 = v0;
  byte_1EB738178 = v4 & 1;
  return result;
}