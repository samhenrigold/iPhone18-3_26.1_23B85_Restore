uint64_t sub_248008230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProcessorTraceTapMessage.FileSharingType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_248008294(uint64_t a1, uint64_t a2)
{
  v4 = sub_2480078E4(&unk_27EE83FE0, &qword_24803DE60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_248008304(uint64_t a1)
{
  v2 = sub_2480078E4(&unk_27EE83FE0, &qword_24803DE60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_248008374(uint64_t a1)
{
  sub_248008428(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_248008428(uint64_t a1)
{
  if (!qword_27EE83BE0)
  {
    sub_248030778();
    v1 = sub_248030D48();
    if (!v2)
    {
      atomic_store(v1, &qword_27EE83BE0);
    }
  }
}

uint64_t sub_2480084DC(uint64_t a1, uint64_t a2)
{
  v2 = sub_2480309A8();
  sub_248008A94(v2, qword_27EE83BF0);
  v3 = sub_248006DF0(v2, qword_27EE83BF0);
  if (qword_27EE83A00 != -1)
  {
    swift_once();
  }

  v4 = sub_248006DF0(v2, qword_27EE85A48);
  v5 = *(*(v2 - 8) + 16);

  return v5(v3, v4, v2);
}

id CoreMLPerfRunnerService.__allocating_init(channel:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithChannel_];

  return v3;
}

id CoreMLPerfRunnerService.init(channel:)(uint64_t a1)
{
  if (qword_27EE839E8 != -1)
  {
    swift_once();
  }

  v3 = qword_27EE85A38;
  type metadata accessor for CoreMLPerfRunnerServiceMessageHandler();
  v4 = swift_allocObject();
  v4[5] = type metadata accessor for CoreMLPerfCoordinator();
  v4[6] = &protocol witness table for CoreMLPerfCoordinator;
  v4[2] = v3;
  v4[7] = a1;
  *&v1[OBJC_IVAR____TtC24DVTInstrumentsFoundation23CoreMLPerfRunnerService_messageHandler] = v4;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for CoreMLPerfRunnerService();

  return objc_msgSendSuper2(&v6, sel_initWithChannel_, a1);
}

id CoreMLPerfRunnerService.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_27EE839D0 != -1)
  {
    swift_once();
  }

  v4 = sub_2480309A8();
  sub_248006DF0(v4, qword_27EE83BF0);
  v5 = sub_248030C78();
  v6 = sub_248030988();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_247F67000, v6, v5, "PerfRunnerService - deinit invoked", v7, 2u);
    MEMORY[0x24C1C47E0](v7, -1, -1);
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for CoreMLPerfRunnerService();
  return objc_msgSendSuper2(&v9, sel_dealloc);
}

id CoreMLPerfRunnerService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t *sub_248008A94(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_248008B20(uint64_t a1, uint64_t a2)
{
  v2 = sub_2480309A8();
  sub_248008A94(v2, qword_27EE83C10);
  v3 = sub_248006DF0(v2, qword_27EE83C10);
  if (qword_27EE83A00 != -1)
  {
    swift_once();
  }

  v4 = sub_248006DF0(v2, qword_27EE85A48);
  v5 = *(*(v2 - 8) + 16);

  return v5(v3, v4, v2);
}

void sub_248008BE8()
{
  [objc_opt_self() enableMonitoring];
  v1 = *(v0 + OBJC_IVAR____TtC24DVTInstrumentsFoundation31XPCModelRunnerConnectionManager__serviceConnection);
  os_unfair_lock_lock((v1 + 24));
  swift_unknownObjectRelease();
  *(v1 + 16) = sub_248009BEC();
  os_unfair_lock_unlock((v1 + 24));
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v1 + 24));
  if (!v2)
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  xpc_connection_resume(v2);
  swift_unknownObjectRelease();
  if (qword_27EE839D8 != -1)
  {
    swift_once();
  }

  v3 = sub_2480309A8();
  sub_248006DF0(v3, qword_27EE83C10);
  v4 = sub_248030C78();
  v5 = sub_248030988();
  if (os_log_type_enabled(v5, v4))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_247F67000, v5, v4, "xpc_connection_resume complete", v6, 2u);
    MEMORY[0x24C1C47E0](v6, -1, -1);
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v7, "command", "getPID");
  v8 = sub_248030C78();
  v9 = sub_248030988();
  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_247F67000, v9, v8, "set XPC dictionary string for getPID", v10, 2u);
    MEMORY[0x24C1C47E0](v10, -1, -1);
  }

  v11 = sub_248030C78();
  v12 = sub_248030988();
  if (os_log_type_enabled(v12, v11))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_247F67000, v12, v11, "about to send XPC message for getPID", v13, 2u);
    MEMORY[0x24C1C47E0](v13, -1, -1);
  }

  os_unfair_lock_lock((v1 + 24));
  v14 = *(v1 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v1 + 24));
  if (!v14)
  {
    goto LABEL_18;
  }

  xpc_connection_send_message_with_reply_sync(v14, v7);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v15 = sub_248030C78();
  v16 = sub_248030988();
  if (os_log_type_enabled(v16, v15))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_247F67000, v16, v15, "sent XPC message for getPID", v17, 2u);
    MEMORY[0x24C1C47E0](v17, -1, -1);
  }

  os_unfair_lock_lock((v1 + 24));
  v18 = *(v1 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v1 + 24));
  if (!v18)
  {
    goto LABEL_19;
  }

  xpc_connection_get_pid(v18);
  swift_unknownObjectRelease();
  v19 = sub_248030EC8();
  v21 = v20;
  v22 = sub_248030C78();
  if (qword_27EE839F8 != -1)
  {
    swift_once();
  }

  v23 = qword_27EE85A40;
  sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_24803DE50;
  *(v24 + 56) = MEMORY[0x277D837D0];
  *(v24 + 64) = sub_24800A52C();
  *(v24 + 32) = v19;
  *(v24 + 40) = v21;
  sub_2480308C8(v22, &dword_247F67000, v23, "PID is %@, returning it from launchXPCService", 45, 2, v24);
  swift_unknownObjectRelease();
}

void sub_248009008(int64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;

  v10 = sub_24800A068(a1);
  if (qword_27EE839D8 != -1)
  {
    swift_once();
  }

  v11 = sub_2480309A8();
  sub_248006DF0(v11, qword_27EE83C10);
  v12 = sub_248030988();
  v13 = sub_248030C98();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_247F67000, v12, v13, "about to send XPC message in kickoffModelPerfRunInXPCService", v14, 2u);
    MEMORY[0x24C1C47E0](v14, -1, -1);
  }

  v15 = *&v5[OBJC_IVAR____TtC24DVTInstrumentsFoundation31XPCModelRunnerConnectionManager__serviceConnection];
  os_unfair_lock_lock((v15 + 24));
  v16 = *(v15 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v15 + 24));
  if (v16)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;
    *(v17 + 32) = v5;
    *(v17 + 40) = a2;
    v23[4] = sub_24800A504;
    v23[5] = v17;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 1107296256;
    v23[2] = sub_248009898;
    v23[3] = &unk_285A19238;
    v18 = _Block_copy(v23);
    v19 = v5;

    xpc_connection_send_message_with_reply(v16, v10, 0, v18);
    _Block_release(v18);
    swift_unknownObjectRelease();
    v20 = sub_248030C78();
    v21 = sub_248030988();
    if (os_log_type_enabled(v21, v20))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_247F67000, v21, v20, "sent XPC message in kickoffModelPerfRunInXPCService", v22, 2u);
      MEMORY[0x24C1C47E0](v22, -1, -1);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_248009288(void *a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x24C1C4CD0]();
  v10 = sub_248030C78();
  if (qword_27EE839F8 != -1)
  {
    swift_once();
  }

  v11 = qword_27EE85A40;
  sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24803DE50;
  v13 = MEMORY[0x24C1C1A50](v9);
  v15 = v14;
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_24800A52C();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  sub_2480308C8(v10, &dword_247F67000, v11, "received async reply of type %@", 31, 2, v12);

  v16 = sub_248030B78();
  string = xpc_dictionary_get_string(a1, (v16 + 32));

  if (!string)
  {
    sub_24800A580(a1);
    v28 = [objc_opt_self() diagnoseNoXPCResponse_];
    if (!v28)
    {
      if (qword_27EE839D8 != -1)
      {
        swift_once();
      }

      v39 = sub_2480309A8();
      sub_248006DF0(v39, qword_27EE83C10);
      v40 = sub_248030C78();
      v41 = sub_248030988();
      if (os_log_type_enabled(v41, v40))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_247F67000, v41, v40, "kickoffModelPerfRunInXPCService - no data returned: Jetsam", v42, 2u);
        MEMORY[0x24C1C47E0](v42, -1, -1);
      }

      v38 = xmmword_24803DF00;
      goto LABEL_34;
    }

    if (v28 == 1)
    {
      if (qword_27EE839D8 != -1)
      {
        swift_once();
      }

      v34 = sub_2480309A8();
      sub_248006DF0(v34, qword_27EE83C10);
      v35 = sub_248030C78();
      v36 = sub_248030988();
      if (os_log_type_enabled(v36, v35))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_247F67000, v36, v35, "kickoffModelPerfRunInXPCService - no data returned: Crash", v37, 2u);
        MEMORY[0x24C1C47E0](v37, -1, -1);
      }

      v38 = xmmword_24803DF10;
      goto LABEL_34;
    }

    if (v28 == 2)
    {
      if (qword_27EE839D8 != -1)
      {
        swift_once();
      }

      v29 = sub_2480309A8();
      sub_248006DF0(v29, qword_27EE83C10);
      v30 = sub_248030C78();
      v31 = sub_248030988();
      if (!os_log_type_enabled(v31, v30))
      {
        goto LABEL_33;
      }

      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = "kickoffModelPerfRunInXPCService - no data returned: Unknown";
    }

    else
    {
      if (qword_27EE839D8 != -1)
      {
        swift_once();
      }

      v43 = sub_2480309A8();
      sub_248006DF0(v43, qword_27EE83C10);
      v30 = sub_248030C78();
      v31 = sub_248030988();
      if (!os_log_type_enabled(v31, v30))
      {
        goto LABEL_33;
      }

      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = "kickoffModelPerfRunInXPCService - no data returned: Undefined cause";
    }

    _os_log_impl(&dword_247F67000, v31, v30, v33, v32, 2u);
    MEMORY[0x24C1C47E0](v32, -1, -1);
LABEL_33:

    v38 = xmmword_24803CE10;
LABEL_34:
    v47 = v38;
    v48 = 1;
    a2(&v47);
    goto LABEL_35;
  }

  if (qword_27EE839D8 != -1)
  {
    swift_once();
  }

  v18 = sub_2480309A8();
  sub_248006DF0(v18, qword_27EE83C10);
  v19 = sub_248030C78();
  v20 = sub_248030988();
  if (os_log_type_enabled(v20, v19))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_247F67000, v20, v19, "unboxed timerData", v21, 2u);
    MEMORY[0x24C1C47E0](v21, -1, -1);
  }

  v22 = sub_248030BA8();
  v24 = v23;
  v25 = sub_248030C78();
  v26 = sub_248030988();
  if (os_log_type_enabled(v26, v25))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_247F67000, v26, v25, "converted timerData", v27, 2u);
    MEMORY[0x24C1C47E0](v27, -1, -1);
  }

  *&v47 = v22;
  *(&v47 + 1) = v24;
  v48 = 0;
  a2(&v47);
  sub_24800ABCC(v47, *(&v47 + 1), v48);
LABEL_35:
  [objc_opt_self() disableMonitoring];
  v44 = *(a4 + OBJC_IVAR____TtC24DVTInstrumentsFoundation31XPCModelRunnerConnectionManager__serviceConnection);
  os_unfair_lock_lock((v44 + 24));
  v45 = *(v44 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v44 + 24));
  if (v45)
  {
    sub_24800A904(v45, v46);

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_248009898(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_2480098F8(void *a1, _xpc_connection_s *a2)
{
  v4 = sub_248030C78();
  if (qword_27EE839F8 != -1)
  {
    swift_once();
  }

  v5 = qword_27EE85A40;
  sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24803DE50;
  v7 = [a1 description];
  v8 = sub_248030B38();
  v10 = v9;

  v11 = MEMORY[0x277D837D0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  v12 = sub_24800A52C();
  *(v6 + 64) = v12;
  *(v6 + 32) = v8;
  *(v6 + 40) = v10;
  sub_2480308C8(v4, &dword_247F67000, v5, "XPC event handler fired: %@", 27, 2, v6);

  xpc_connection_get_pid(a2);
  v13 = sub_248030C78();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_24803DE50;
  v15 = sub_248030EC8();
  *(v14 + 56) = v11;
  *(v14 + 64) = v12;
  *(v14 + 32) = v15;
  *(v14 + 40) = v16;
  sub_2480308C8(v13, &dword_247F67000, v5, "XPC PID: %@", 11, 2, v14);
}

id sub_248009B38(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

_xpc_connection_s *sub_248009BEC()
{
  v0 = sub_248030CB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_248030CA8();
  MEMORY[0x28223BE20](v4);
  v5 = sub_248030AC8();
  MEMORY[0x28223BE20](v5 - 8);
  sub_24800ABDC();
  sub_248030AB8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24800AC28();
  sub_2480078E4(&qword_27EE83C58, &qword_24803DFA0);
  sub_24800AC80();
  sub_248030D78();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v0);
  v6 = sub_248030CC8();
  if (qword_27EE839D8 != -1)
  {
    swift_once();
  }

  v7 = sub_2480309A8();
  sub_248006DF0(v7, qword_27EE83C10);
  v8 = sub_248030C78();
  v9 = sub_248030988();
  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_247F67000, v9, v8, "Creating XPC connection", v10, 2u);
    MEMORY[0x24C1C47E0](v10, -1, -1);
  }

  v11 = sub_248030B78();
  v12 = v6;
  v13 = xpc_connection_create((v11 + 32), v12);

  v14 = sub_248030C78();
  v15 = sub_248030988();
  if (os_log_type_enabled(v15, v14))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_247F67000, v15, v14, "Successfully created XPC connection", v16, 2u);
    MEMORY[0x24C1C47E0](v16, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  aBlock[4] = sub_24800AD2C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_248009898;
  aBlock[3] = &unk_285A19288;
  v18 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  xpc_connection_set_event_handler(v13, v18);
  _Block_release(v18);
  v19 = sub_248030988();
  v20 = sub_248030C98();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_247F67000, v19, v20, "Created XPC handler", v21, 2u);
    MEMORY[0x24C1C47E0](v21, -1, -1);
  }

  return v13;
}

xpc_object_t sub_24800A068(int64_t *a1)
{
  v2 = type metadata accessor for ModelInfo(0);
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "command", "profile");
  sub_2480307E8();
  v4 = sub_248030B78();

  xpc_dictionary_set_string(v3, "containerGUID", (v4 + 32));

  type metadata accessor for ModelLocation(0);
  v5 = sub_248030B78();
  xpc_dictionary_set_string(v3, "modelFileName", (v5 + 32));

  if (qword_27EE839D8 != -1)
  {
    swift_once();
  }

  v6 = sub_2480309A8();
  sub_248006DF0(v6, qword_27EE83C10);
  v7 = sub_248030C78();
  v8 = sub_248030988();
  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_247F67000, v8, v7, "created XPC dictionary in kickoffModelPerfRunInXPCService", v9, 2u);
    MEMORY[0x24C1C47E0](v9, -1, -1);
  }

  xpc_dictionary_set_int64(v3, "computeUnit", *a1);
  v10 = sub_248030C78();
  if (qword_27EE839F8 != -1)
  {
    swift_once();
  }

  v11 = qword_27EE85A40;
  sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24803DE50;
  v13 = sub_248030EC8();
  v15 = v14;
  *(v12 + 56) = MEMORY[0x277D837D0];
  v16 = sub_24800A52C();
  *(v12 + 64) = v16;
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  v40 = v11;
  sub_2480308C8(v10, &dword_247F67000, v11, "set XPC dictionary Int for computeUnit to %@", 44, 2, v12);

  v17 = (a1 + *(v2 + 28));
  v18 = *v17;
  v19 = v17[1];
  v21 = v17[2];
  v20 = v17[3];
  v22 = v17[4];
  v23 = v17[5];
  v24 = v17[6];

  xpc_dictionary_set_int64(v3, "experimentIterations", v18);
  xpc_dictionary_set_int64(v3, "loadCount", v19);
  xpc_dictionary_set_int64(v3, "predictionCount", v21);
  xpc_dictionary_set_int64(v3, "maxPredictionTime", v20);
  xpc_dictionary_set_int64(v3, "maxIterationTime", v22);
  if (v24)
  {
    v25 = sub_248030B78();
    xpc_dictionary_set_string(v3, "functionName", (v25 + 32));
  }

  v39 = sub_248030C78();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_24803DF20;
  v27 = sub_248030EC8();
  v28 = MEMORY[0x277D837D0];
  *(v26 + 56) = MEMORY[0x277D837D0];
  *(v26 + 64) = v16;
  *(v26 + 32) = v27;
  *(v26 + 40) = v29;
  v30 = sub_248030EC8();
  *(v26 + 96) = v28;
  *(v26 + 104) = v16;
  *(v26 + 72) = v30;
  *(v26 + 80) = v31;
  v32 = sub_248030EC8();
  *(v26 + 136) = v28;
  *(v26 + 144) = v16;
  *(v26 + 112) = v32;
  *(v26 + 120) = v33;
  v34 = sub_248030EC8();
  *(v26 + 176) = v28;
  *(v26 + 184) = v16;
  *(v26 + 152) = v34;
  *(v26 + 160) = v35;
  v36 = sub_248030EC8();
  *(v26 + 216) = v28;
  *(v26 + 224) = v16;
  *(v26 + 192) = v36;
  *(v26 + 200) = v37;
  *(v26 + 256) = v28;
  *(v26 + 264) = v16;
  if (v24)
  {
    *(v26 + 232) = v23;
    *(v26 + 240) = v24;
  }

  else
  {
    *(v26 + 232) = 0x3E7465736E753CLL;
    *(v26 + 240) = 0xE700000000000000;
  }

  sub_2480308C8(v39, &dword_247F67000, v40, "Experiments: %@, Loads: %@, Predictions: %@, Max Prediction Time: %@, Max Iteration Time: %@, Function Name: %@", 111, 2, v26, v23);

  return v3;
}

uint64_t sub_24800A514(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24800A52C()
{
  result = qword_27EE83C40;
  if (!qword_27EE83C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83C40);
  }

  return result;
}

void sub_24800A580(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC24DVTInstrumentsFoundation31XPCModelRunnerConnectionManager__serviceConnection);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v3 + 24));
  if (v4)
  {
    v5 = xpc_connection_copy_invalidation_reason();
    swift_unknownObjectRelease();
    v6 = MEMORY[0x277D837D0];
    if (v5)
    {
      if (qword_27EE839D8 != -1)
      {
        swift_once();
      }

      v7 = sub_2480309A8();
      sub_248006DF0(v7, qword_27EE83C10);
      v8 = sub_248030C78();
      v9 = sub_248030988();
      if (os_log_type_enabled(v9, v8))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_247F67000, v9, v8, "attempting to convert error", v10, 2u);
        MEMORY[0x24C1C47E0](v10, -1, -1);
      }

      v11 = sub_248030BA8();
      v13 = v12;
      v14 = sub_248030C88();
      if (qword_27EE839F8 != -1)
      {
        swift_once();
      }

      v15 = qword_27EE85A40;
      sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_24803DE50;
      *(v16 + 56) = v6;
      *(v16 + 64) = sub_24800A52C();
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
      sub_2480308C8(v14, &dword_247F67000, v15, "invalidation reason: %@", 23, 2, v16);
    }

    else
    {
      if (qword_27EE839D8 != -1)
      {
        swift_once();
      }

      v17 = sub_2480309A8();
      sub_248006DF0(v17, qword_27EE83C10);
      v18 = sub_248030C88();
      v19 = sub_248030988();
      if (os_log_type_enabled(v19, v18))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_247F67000, v19, v18, "no invalidation reason", v20, 2u);
        MEMORY[0x24C1C47E0](v20, -1, -1);
      }
    }

    v21 = sub_248030C88();
    if (qword_27EE839F8 != -1)
    {
      swift_once();
    }

    v22 = qword_27EE85A40;
    sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_24803DE50;
    v24 = [a1 description];
    v25 = sub_248030B38();
    v27 = v26;

    *(v23 + 56) = v6;
    *(v23 + 64) = sub_24800A52C();
    *(v23 + 32) = v25;
    *(v23 + 40) = v27;
    sub_2480308C8(v21, &dword_247F67000, v22, "received no dictionary value. reply: %@", 39, 2, v23);
  }

  else
  {
    __break(1u);
  }
}

void sub_24800A904(_xpc_connection_s *a1, uint64_t a2)
{
  if (qword_27EE839D8 != -1)
  {
    swift_once();
  }

  v3 = sub_2480309A8();
  sub_248006DF0(v3, qword_27EE83C10);
  v4 = sub_248030C78();
  v5 = sub_248030988();
  if (os_log_type_enabled(v5, v4))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_247F67000, v5, v4, "about to cancel XPC serviceConnection", v6, 2u);
    MEMORY[0x24C1C47E0](v6, -1, -1);
  }

  xpc_connection_cancel(a1);
  v7 = sub_248030C78();
  v8 = sub_248030988();
  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_247F67000, v8, v7, "canceled XPC serviceConnection", v9, 2u);
    MEMORY[0x24C1C47E0](v9, -1, -1);
  }

  pid = xpc_connection_get_pid(a1);
  v11 = sub_248030EC8();
  v13 = v12;
  v14 = sub_248030C78();
  if (qword_27EE839F8 != -1)
  {
    swift_once();
  }

  v15 = qword_27EE85A40;
  sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_24803DE50;
  *(v16 + 56) = MEMORY[0x277D837D0];
  *(v16 + 64) = sub_24800A52C();
  *(v16 + 32) = v11;
  *(v16 + 40) = v13;
  sub_2480308C8(v14, &dword_247F67000, v15, "Sending SIG_KILL to pid: %@", 27, 2, v16);

  kill(pid, 9);
  v17 = sub_248030C78();
  v18 = sub_248030988();
  if (os_log_type_enabled(v18, v17))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_247F67000, v18, v17, "finished sending SIG_KILL to XPC service", v19, 2u);
    MEMORY[0x24C1C47E0](v19, -1, -1);
  }
}

uint64_t sub_24800ABCC(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_24800ABDC()
{
  result = qword_27EE83C48;
  if (!qword_27EE83C48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE83C48);
  }

  return result;
}

unint64_t sub_24800AC28()
{
  result = qword_27EE83C50;
  if (!qword_27EE83C50)
  {
    sub_248030CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83C50);
  }

  return result;
}

unint64_t sub_24800AC80()
{
  result = qword_27EE83C60;
  if (!qword_27EE83C60)
  {
    sub_24800ACE4(&qword_27EE83C58, &qword_24803DFA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83C60);
  }

  return result;
}

uint64_t sub_24800ACE4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_24800AD3C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2480309A8();
  sub_248008A94(v2, qword_27EE83C70);
  v3 = sub_248006DF0(v2, qword_27EE83C70);
  if (qword_27EE83A00 != -1)
  {
    swift_once();
  }

  v4 = sub_248006DF0(v2, qword_27EE85A48);
  v5 = *(*(v2 - 8) + 16);

  return v5(v3, v4, v2);
}

DVTInstrumentsFoundation::PerfRunError_optional __swiftcall PerfRunError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue - 101;
  if ((rawValue - 101) >= 0xB)
  {
    v2 = 11;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_24800AE28()
{
  v1 = *v0;
  sub_248030F98();
  MEMORY[0x24C1C1C00](v1 + 101);
  return sub_248030FB8();
}

uint64_t sub_24800AEA0(uint64_t a1)
{
  v2 = *v1;
  sub_248030F98();
  MEMORY[0x24C1C1C00](v2 + 101);
  return sub_248030FB8();
}

uint64_t sub_24800AF00(uint64_t a1, uint64_t a2)
{
  v4 = sub_248011E34();
  v5 = sub_248011E88();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

void *static CoreMLPerfCoordinator.TestFactory.create(connectionManager:modelDiskManager:)(uint64_t a1, uint64_t a2)
{
  sub_24800B14C(a1, v21);
  sub_24800B14C(a2, v18);
  type metadata accessor for CoreMLPerfCoordinator();
  v3 = swift_allocObject();
  v5 = v22;
  v4 = v23;
  v6 = sub_2480117E8(v21, v22);
  MEMORY[0x28223BE20](v6);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = v19;
  v11 = v20;
  v12 = sub_2480117E8(v18, v19);
  MEMORY[0x28223BE20](v12);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  v16 = sub_248011468(v8, v14, nullsub_52, 0, v3, v5, v10, v4, v11);
  sub_248011838(v18);
  sub_248011838(v21);
  return v16;
}

uint64_t sub_24800B14C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24800B1D8()
{
  v0 = [objc_allocWithZone(type metadata accessor for XPCModelRunnerConnectionManager()) init];
  type metadata accessor for ModelWriter();
  v1 = swift_allocObject();
  type metadata accessor for CoreMLPerfCoordinator();
  v2 = swift_allocObject();
  v3 = v0;

  v4 = sub_248011150(v3, v1, sub_24800B2B4, 0, v2);

  qword_27EE85A38 = v4;
  return result;
}

void CoreMLPerfCoordinator.kickoffSuspendedPerfRunForModel(forToken:)(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v47 = a1;
  v48 = a2;
  v3 = sub_248030808();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v40[1] = v5;
  v41 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2480078E4(&qword_27EE83C88, &unk_24803DFF0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v40 - v7;
  v9 = type metadata accessor for ModelInfo(0);
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x28223BE20](v9);
  v46 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2480078E4(&qword_27EE83C90, &unk_24803E820);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v40 - v12;
  v14 = v2[14];
  v15 = *(*v14 + *MEMORY[0x277D841D0] + 16);
  v16 = (*(*v14 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v14 + v16));
  v40[0] = v15;
  sub_2480120FC(v14 + v15, v13, &qword_27EE83C90, &unk_24803E820);
  os_unfair_lock_unlock((v14 + v16));
  v42 = v4;
  v43 = v3;
  v17 = *(v4 + 48);
  v18 = 1;
  LODWORD(v3) = v17(v13, 1, v3);
  v19 = sub_2480121CC(v13, &qword_27EE83C90, &unk_24803E820);
  if (v3 == 1)
  {
    v20 = v2[12];
    MEMORY[0x28223BE20](v19);
    v21 = v47;
    v40[-2] = v47;
    os_unfair_lock_lock((v20 + 24));
    sub_248011884((v20 + 16), v8);
    os_unfair_lock_unlock((v20 + 24));
    if ((*(v44 + 48))(v8, 1, v45) == 1)
    {
      sub_2480121CC(v8, &qword_27EE83C88, &unk_24803DFF0);
      if (qword_27EE839E0 != -1)
      {
        swift_once();
      }

      v22 = sub_2480309A8();
      sub_248006DF0(v22, qword_27EE83C70);
      v23 = sub_248030C88();
      v24 = sub_248030988();
      if (os_log_type_enabled(v24, v23))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_247F67000, v24, v23, "Unable to start perf run, no modelInfo found for token", v25, 2u);
        MEMORY[0x24C1C47E0](v25, -1, -1);
      }

      v18 = 1;
      LODWORD(v24) = 4;
    }

    else
    {
      v26 = sub_248012164(v8, v46, type metadata accessor for ModelInfo);
      MEMORY[0x28223BE20](v26);
      v40[-2] = v21;
      os_unfair_lock_lock((v14 + v16));
      sub_2480118A0(v14 + v40[0]);
      os_unfair_lock_unlock((v14 + v16));
      v27 = v2[10];
      v28 = v2[11];
      sub_2480118BC(v2 + 7, v27);
      v24 = (*(v28 + 8))(v27, v28);
      v29 = v2[10];
      v30 = v2[11];
      v45 = sub_2480118BC(v2 + 7, v29);
      v31 = swift_allocObject();
      swift_weakInit();
      v32 = v41;
      v33 = v42;
      v34 = v43;
      (*(v42 + 16))(v41, v21, v43);
      v35 = (*(v33 + 80) + 24) & ~*(v33 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = v31;
      (*(v33 + 32))(v36 + v35, v32, v34);
      v37 = *(v30 + 16);

      v38 = v46;
      v37(v46, v24, sub_248011900, v36, v29, v30);
      sub_248011FF4(v38, type metadata accessor for ModelInfo);

      v18 = 0;
    }
  }

  else
  {
    v49 = 0uLL;
    v50 = 1;
    sub_24800B874(&v49, v47);
    LODWORD(v24) = 0;
  }

  v39 = v48;
  *v48 = v24;
  *(v39 + 4) = v18;
}

uint64_t sub_24800B874(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v24 = type metadata accessor for ModelLocation(0);
  v6 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2480078E4(&qword_27EE83CD8, &qword_24803E1E0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  v15 = *(a1 + 16);
  v16 = v3[12];
  v26 = a2;
  v27 = *a1;
  v28 = v15;
  os_unfair_lock_lock((v16 + 24));
  sub_2480120BC((v16 + 16), v14);
  os_unfair_lock_unlock((v16 + 24));
  v17 = v3[14];
  v25 = a2;
  v18 = *(*v17 + *MEMORY[0x277D841D0] + 16);
  v19 = (*(*v17 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v17 + v19));
  sub_2480120E0(v17 + v18);
  os_unfair_lock_unlock((v17 + v19));
  sub_2480120FC(v14, v12, &qword_27EE83CD8, &qword_24803E1E0);
  if ((*(v6 + 48))(v12, 1, v24) == 1)
  {
    sub_2480121CC(v14, &qword_27EE83CD8, &qword_24803E1E0);
  }

  else
  {
    sub_248012164(v12, v8, type metadata accessor for ModelLocation);
    v20 = v3[5];
    v21 = v3[6];
    sub_2480118BC(v3 + 2, v20);
    (*(v21 + 48))(v8, v20, v21);
    sub_248011FF4(v8, type metadata accessor for ModelLocation);
    v12 = v14;
  }

  return sub_2480121CC(v12, &qword_27EE83CD8, &qword_24803E1E0);
}

uint64_t sub_24800BB40(uint64_t a1, uint64_t a2)
{
  sub_2480121CC(a1, &qword_27EE83C90, &unk_24803E820);
  v4 = sub_248030808();
  v5 = *(v4 - 8);
  (*(v5 + 16))(a1, a2, v4);
  return (*(v5 + 56))(a1, 0, 1, v4);
}

uint64_t sub_24800BC04(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *&v8 = v4;
    *(&v8 + 1) = v5;
    v9 = v6;
    sub_24800B874(&v8, a3);
  }

  return result;
}

uint64_t CoreMLPerfCoordinator.cancelPerfRun(forModelToken:)(uint64_t a1)
{
  v2 = xmmword_24803DFB0;
  v3 = 1;
  return sub_24800B874(&v2, a1);
}

uint64_t sub_24800BCC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16) && (v5 = sub_248028620(a2), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(v4 + 56);
    v9 = type metadata accessor for ModelInfo(0);
    v10 = *(v9 - 8);
    sub_248012054(v8 + *(v10 + 72) * v7, a3, type metadata accessor for ModelInfo);
    return (*(v10 + 56))(a3, 0, 1, v9);
  }

  else
  {
    v12 = type metadata accessor for ModelInfo(0);
    return (*(*(v12 - 8) + 56))(a3, 1, 1, v12);
  }
}

BOOL CoreMLPerfCoordinator.__testOnly_isInternalStateClean.getter()
{
  v1 = sub_2480078E4(&qword_27EE83C90, &unk_24803E820);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  v4 = *(v0 + 96);
  os_unfair_lock_lock((v4 + 24));
  v5 = *(*(v4 + 16) + 16);
  os_unfair_lock_unlock((v4 + 24));
  if (v5)
  {
    return 0;
  }

  v7 = *(v0 + 112);
  v8 = *(*v7 + *MEMORY[0x277D841D0] + 16);
  v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v7 + v9));
  sub_2480120FC(v7 + v8, v3, &qword_27EE83C90, &unk_24803E820);
  os_unfair_lock_unlock((v7 + v9));
  v10 = sub_248030808();
  v6 = (*(*(v10 - 8) + 48))(v3, 1, v10) == 1;
  sub_2480121CC(v3, &qword_27EE83C90, &unk_24803E820);
  return v6;
}

uint64_t sub_24800BF68@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v41 = a5;
  v39 = a3;
  v40 = a4;
  v43 = a6;
  v8 = sub_2480078E4(&qword_27EE83C88, &unk_24803DFF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v37 - v9;
  v11 = sub_248030808();
  v38 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ModelInfo(0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v37 - v19;
  v42 = a1;
  v21 = *a1;
  if (*(v21 + 16) && (v22 = sub_248028620(a2), (v23 & 1) != 0))
  {
    v37 = a2;
    sub_248012054(*(v21 + 56) + *(v15 + 72) * v22, v18, type metadata accessor for ModelInfo);
    sub_248012164(v18, v20, type metadata accessor for ModelInfo);
    if (qword_27EE839E0 != -1)
    {
      swift_once();
    }

    v24 = sub_2480309A8();
    sub_248006DF0(v24, qword_27EE83C70);
    v25 = sub_248030C78();
    v26 = sub_248030988();
    if (os_log_type_enabled(v26, v25))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_247F67000, v26, v25, "found a registered postTraceCallback", v27, 2u);
      MEMORY[0x24C1C47E0](v27, -1, -1);
    }

    v28 = *(v20 + 1);
    v44[0] = v39;
    v44[1] = v40;
    v45 = v41 & 1;
    v28(v44);
    (*(v38 + 16))(v13, v37, v11);
    (*(v15 + 56))(v10, 1, 1, v14);
    sub_24800C414(v10, v13);
    v29 = v43;
    sub_248012054(&v20[*(v14 + 24)], v43, type metadata accessor for ModelLocation);
    sub_248011FF4(v20, type metadata accessor for ModelInfo);
    v30 = type metadata accessor for ModelLocation(0);
    return (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
  }

  else
  {
    if (qword_27EE839E0 != -1)
    {
      swift_once();
    }

    v32 = sub_2480309A8();
    sub_248006DF0(v32, qword_27EE83C70);
    v33 = sub_248030C78();
    v34 = sub_248030988();
    if (os_log_type_enabled(v34, v33))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_247F67000, v34, v33, "no postTraceCallback found", v35, 2u);
      MEMORY[0x24C1C47E0](v35, -1, -1);
    }

    v36 = type metadata accessor for ModelLocation(0);
    return (*(*(v36 - 8) + 56))(v43, 1, 1, v36);
  }
}

uint64_t sub_24800C414(uint64_t a1, uint64_t a2)
{
  v5 = sub_2480078E4(&qword_27EE83C88, &unk_24803DFF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for ModelInfo(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_2480121CC(a1, &qword_27EE83C88, &unk_24803DFF0);
    sub_24800F7F8(a2, type metadata accessor for ModelInfo, type metadata accessor for ModelInfo, type metadata accessor for ModelInfo, sub_248010AF8, v7);
    v12 = sub_248030808();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_2480121CC(v7, &qword_27EE83C88, &unk_24803DFF0);
  }

  else
  {
    sub_248012164(a1, v10, type metadata accessor for ModelInfo);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_24801060C(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_248030808();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_24800C674(uint64_t a1, uint64_t a2)
{
  v5 = sub_2480078E4(&qword_27EE83CC0, &qword_24803E1D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for SegmentedModelState(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_2480121CC(a1, &qword_27EE83CC0, &qword_24803E1D0);
    sub_24800F7F8(a2, type metadata accessor for SegmentedModelState, type metadata accessor for SegmentedModelState, type metadata accessor for SegmentedModelState, sub_248010E24, v7);
    v12 = sub_248030808();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_2480121CC(v7, &qword_27EE83CC0, &qword_24803E1D0);
  }

  else
  {
    sub_248012164(a1, v10, type metadata accessor for SegmentedModelState);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_248010808(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_248030808();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_24800C8D4(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = sub_248030808();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v28 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_2480078E4(&qword_27EE83CE0, &qword_24803E1E8);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v26[-v8];
  v10 = sub_2480078E4(&qword_27EE83C90, &unk_24803E820);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v32 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v26[-v14];
  MEMORY[0x28223BE20](v13);
  v17 = &v26[-v16];
  v30 = a1;
  sub_2480120FC(a1, &v26[-v16], &qword_27EE83C90, &unk_24803E820);
  (*(v4 + 16))(v15, v31, v3);
  v18 = *(v4 + 56);
  v31 = v4 + 56;
  v29 = v18;
  v18(v15, 0, 1, v3);
  v19 = *(v7 + 56);
  sub_2480120FC(v17, v9, &qword_27EE83C90, &unk_24803E820);
  sub_2480120FC(v15, &v9[v19], &qword_27EE83C90, &unk_24803E820);
  v20 = *(v4 + 48);
  if (v20(v9, 1, v3) != 1)
  {
    sub_2480120FC(v9, v32, &qword_27EE83C90, &unk_24803E820);
    if (v20(&v9[v19], 1, v3) != 1)
    {
      v22 = v28;
      (*(v4 + 32))(v28, &v9[v19], v3);
      sub_24801222C(&qword_27EE83CE8, MEMORY[0x277CC9610]);
      v23 = v32;
      v27 = sub_248030B18();
      v24 = *(v4 + 8);
      v24(v22, v3);
      sub_2480121CC(v15, &qword_27EE83C90, &unk_24803E820);
      sub_2480121CC(v17, &qword_27EE83C90, &unk_24803E820);
      v24(v23, v3);
      result = sub_2480121CC(v9, &qword_27EE83C90, &unk_24803E820);
      if ((v27 & 1) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

    sub_2480121CC(v15, &qword_27EE83C90, &unk_24803E820);
    sub_2480121CC(v17, &qword_27EE83C90, &unk_24803E820);
    (*(v4 + 8))(v32, v3);
    return sub_2480121CC(v9, &qword_27EE83CE0, &qword_24803E1E8);
  }

  sub_2480121CC(v15, &qword_27EE83C90, &unk_24803E820);
  sub_2480121CC(v17, &qword_27EE83C90, &unk_24803E820);
  if (v20(&v9[v19], 1, v3) != 1)
  {
    return sub_2480121CC(v9, &qword_27EE83CE0, &qword_24803E1E8);
  }

  sub_2480121CC(v9, &qword_27EE83C90, &unk_24803E820);
LABEL_8:
  v25 = v30;
  sub_2480121CC(v30, &qword_27EE83C90, &unk_24803E820);
  return v29(v25, 1, 1, v3);
}

void *CoreMLPerfCoordinator.deinit()
{
  sub_248011838((v0 + 16));
  sub_248011838((v0 + 56));

  return v0;
}

uint64_t CoreMLPerfCoordinator.__deallocating_deinit()
{
  sub_248011838((v0 + 16));
  sub_248011838((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 128, 7);
}

uint64_t CoreMLPerfCoordinator.writeModelToDiskAndRegisterCallback(modelPayload:perfRunConfig:computeUnit:postTraceCompletionHandler:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v51 = a5;
  v50 = a4;
  v48 = a3;
  v52 = a6;
  v10 = sub_248030808();
  v53 = *(v10 - 8);
  v54 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ModelLocation(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *a1;
  v17 = *(a1 + 2);
  v16 = *(a1 + 3);
  LOBYTE(a1) = *(a1 + 32);
  v18 = *(a2 + 16);
  v59[0] = *a2;
  v59[1] = v18;
  v59[2] = *(a2 + 32);
  v60 = *(a2 + 48);
  v19 = v7[5];
  v20 = v7[6];
  sub_2480118BC(v7 + 2, v19);
  v55 = v49;
  v56 = v17;
  v57 = v16;
  v58 = a1;
  (*(v20 + 8))(&v55, v19, v20);
  *&v49 = v13;
  v21 = v48;
  sub_2480307F8();
  v46 = sub_2480307E8();
  v45 = v22;
  v47 = sub_248030C78();
  if (qword_27EE839F8 != -1)
  {
    swift_once();
  }

  v44 = qword_27EE85A40;
  sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_24803DFD0;
  *&v55 = v21;
  v24 = sub_248030EC8();
  v26 = v25;
  v27 = MEMORY[0x277D837D0];
  *(v23 + 56) = MEMORY[0x277D837D0];
  v28 = sub_24800A52C();
  *(v23 + 64) = v28;
  *(v23 + 32) = v24;
  *(v23 + 40) = v26;
  v29 = sub_2480307E8();
  *(v23 + 96) = v27;
  *(v23 + 104) = v28;
  *(v23 + 72) = v29;
  *(v23 + 80) = v30;
  *(v23 + 136) = v27;
  *(v23 + 144) = v28;
  v31 = v45;
  *(v23 + 112) = v46;
  *(v23 + 120) = v31;
  v32 = &v15[*(v49 + 20)];
  v34 = *v32;
  v33 = *(v32 + 1);
  *(v23 + 176) = v27;
  *(v23 + 184) = v28;
  *(v23 + 152) = v34;
  *(v23 + 160) = v33;

  sub_2480308C8(v47, &dword_247F67000, v44, "registering computeUnit %@, model token %@, tmpFolderGuid %@, fileName %@", 73, 2, v23);

  v36 = v12;
  v37 = v7[12];
  MEMORY[0x28223BE20](v35);
  v38 = v50;
  *(&v43 - 6) = v21;
  *(&v43 - 5) = v38;
  *(&v43 - 4) = v51;
  *(&v43 - 3) = v15;
  *(&v43 - 2) = v59;
  *(&v43 - 1) = v36;
  os_unfair_lock_lock(v37 + 6);
  sub_248011974(&v37[4]);
  os_unfair_lock_unlock(v37 + 6);
  v40 = v52;
  v39 = v53;
  v41 = v54;
  (*(v53 + 16))(v52, v36, v54);
  (*(v39 + 56))(v40, 0, 1, v41);
  (*(v39 + 8))(v36, v41);
  return sub_248011FF4(v15, type metadata accessor for ModelLocation);
}

uint64_t sub_24800D380(uint64_t a1)
{
  v2 = xmmword_24803DFB0;
  v3 = 1;
  return sub_24800B874(&v2, a1);
}

void sub_24800D3C8(char *a1@<X8>)
{
  v4 = *(*v1 + 104);
  os_unfair_lock_lock(v4 + 6);
  sub_24801235C(a1);
  os_unfair_lock_unlock(v4 + 6);
  if (v2)
  {
    __break(1u);
  }
}

void CoreMLPerfCoordinator.generateSegmentationConfig()(char *a1@<X8>)
{
  v4 = *(v1 + 104);
  os_unfair_lock_lock(v4 + 6);
  sub_248011998(a1);
  os_unfair_lock_unlock(v4 + 6);
  if (v2)
  {
    __break(1u);
  }
}

void CoreMLPerfCoordinator.writeSegment(payload:)(uint64_t a1)
{
  v3 = sub_248030808();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for SegmentPayload(0);
  (*(v4 + 16))(v6, a1 + *(v7 + 28), v3);
  v8 = *(v1 + 104);
  v10 = v6;
  os_unfair_lock_lock((v8 + 24));
  sub_2480119B4((v8 + 16));
  os_unfair_lock_unlock((v8 + 24));
  (*(v4 + 8))(v6, v3);
}

void CoreMLPerfCoordinator.assembleModelSegments(modelToken:)(uint64_t a1)
{
  v3 = v1;
  v5 = sub_248030778();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v12 = v1[13];
  v39 = a1;
  os_unfair_lock_lock((v12 + 24));
  sub_2480119F0((v12 + 16), v11);
  os_unfair_lock_unlock((v12 + 24));
  if (!v2)
  {
    v37 = a1;
    v38 = v6;
    v40 = v5;
    LODWORD(v36) = sub_248030C78();
    if (qword_27EE839F8 != -1)
    {
      swift_once();
    }

    v13 = qword_27EE85A40;
    v35 = sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
    v14 = swift_allocObject();
    v34 = xmmword_24803DE50;
    *(v14 + 16) = xmmword_24803DE50;
    v15 = sub_248030738();
    v17 = v16;
    *(v14 + 56) = MEMORY[0x277D837D0];
    v33 = sub_24800A52C();
    *(v14 + 64) = v33;
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    v18 = v36;
    v36 = v13;
    sub_2480308C8(v18, &dword_247F67000, v13, "assembleModelSegments: Beginning to assemble model segments in: %@", 66, 2, v14);

    v19 = v3[5];
    v20 = v3[6];
    sub_2480118BC(v3 + 2, v19);
    v21 = v37;
    (*(v20 + 24))(v37, v11, v19, v20);
    v22 = sub_248030C78();
    v23 = swift_allocObject();
    *(v23 + 16) = v34;
    v24 = sub_248030738();
    v25 = v33;
    *(v23 + 56) = MEMORY[0x277D837D0];
    *(v23 + 64) = v25;
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    sub_2480308C8(v22, &dword_247F67000, v36, "assembleModelSegments: Assembled model segments into: %@", 56, 2, v23);

    MEMORY[0x28223BE20](v27);
    *(&v32 - 2) = v21;
    *(&v32 - 1) = v9;
    os_unfair_lock_lock((v12 + 24));
    sub_248011A0C(v12 + 16);
    v28 = v38;
    os_unfair_lock_unlock((v12 + 24));
    v29 = *(v28 + 8);
    v30 = v11;
    v31 = v40;
    v29(v30, v40);
    v29(v9, v31);
  }
}

void CoreMLPerfCoordinator.finalizeModel(modelName:modelToken:isCompressed:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v38 = a4;
  v39 = a1;
  v40 = a2;
  v37 = a5;
  v8 = sub_248030778();
  v41 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v34 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v34 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - v18;
  v20 = v6[13];
  v42 = a3;
  os_unfair_lock_lock((v20 + 24));
  v21 = v43;
  sub_248012374((v20 + 16), v19);
  os_unfair_lock_unlock((v20 + 24));
  if (!v21)
  {
    v43 = 0;
    v34 = v11;
    v35 = a3;
    v36 = v8;
    v23 = v6[5];
    v22 = v6[6];
    sub_2480118BC(v6 + 2, v23);
    if (v38)
    {
      v24 = v43;
      (*(v22 + 32))(v19, v39, v40, v23, v22);
      v25 = v35;
      if (!v24)
      {
        v43 = 0;
        v26 = v36;
        v27 = v41;
        goto LABEL_8;
      }
    }

    else
    {
      v28 = v43;
      (*(v22 + 40))(v19, v39, v40, v23, v22);
      v25 = v35;
      if (!v28)
      {
        v43 = 0;
        v26 = v36;
        v27 = v41;
        v17 = v14;
LABEL_8:
        v29 = v37;
        (*(v27 + 32))(v37, v17, v26);
        v30 = v34;
        v31 = (*(v27 + 16))(v34, v29, v26);
        MEMORY[0x28223BE20](v31);
        *(&v34 - 2) = v25;
        *(&v34 - 1) = v30;
        os_unfair_lock_lock((v20 + 24));
        v32 = v43;
        sub_248011A2C(v20 + 16);
        if (v32)
        {
          os_unfair_lock_unlock((v20 + 24));
          __break(1u);
        }

        else
        {
          os_unfair_lock_unlock((v20 + 24));
          v33 = *(v27 + 8);
          v33(v19, v26);
          v33(v30, v26);
        }

        return;
      }
    }

    (*(v41 + 8))(v19, v36);
  }
}

void sub_24800DD44()
{
  v1 = *(*v0 + 96);
  os_unfair_lock_lock(v1 + 6);
  sub_248012344(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

void CoreMLPerfCoordinator.finalizePerfRunSetup(modelToken:modelURL:isCompressed:perfRunConfig:computeUnit:postTraceCompletionHandler:)()
{
  v1 = *(v0 + 96);
  os_unfair_lock_lock(v1 + 6);
  sub_248011A4C(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_24800DE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a3;
  v28 = a7;
  v25 = a5;
  v26 = a2;
  v29 = a1;
  v9 = sub_2480078E4(&qword_27EE83C88, &unk_24803DFF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - v10;
  v12 = sub_248030808();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ModelInfo(0);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = (&v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_248012054(v25, v20 + *(v18 + 24), type metadata accessor for ModelLocation);
  v21 = v27;
  *v20 = v26;
  v20[1] = v21;
  v20[2] = a4;
  v22 = v20 + *(v16 + 28);
  *(v22 + 6) = *(a6 + 48);
  v23 = *(a6 + 32);
  *(v22 + 1) = *(a6 + 16);
  *(v22 + 2) = v23;
  *v22 = *a6;
  (*(v13 + 16))(v15, v28, v12);
  sub_248012054(v20, v11, type metadata accessor for ModelInfo);
  (*(v17 + 56))(v11, 0, 1, v16);
  sub_248011EDC(a6, v30);

  sub_24800C414(v11, v15);
  return sub_248011FF4(v20, type metadata accessor for ModelInfo);
}

uint64_t sub_24800E0D0@<X0>(char *a1@<X8>)
{
  v2 = sub_2480078E4(&qword_27EE83CC0, &qword_24803E1D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_248030808();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  sub_2480307F8();
  v12 = type metadata accessor for SegmentationConfig(0);
  v13 = *(v6 + 16);
  v13(&a1[*(v12 + 20)], v11, v5);
  *a1 = 524288000;
  v13(v9, v11, v5);
  sub_248012054(a1, v4, type metadata accessor for SegmentationConfig);
  v14 = type metadata accessor for SegmentedModelState(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v14 - 8) + 56))(v4, 0, 1, v14);
  sub_24800C674(v4, v9);
  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_24800E2F0(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v61 = a4;
  v62 = a3;
  v6 = sub_248030778();
  v63 = *(v6 - 8);
  v64 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SegmentedModelState(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v56 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v56 - v17;
  v19 = *a1;
  if (*(*a1 + 16) && (v20 = sub_248028620(a2), (v21 & 1) != 0))
  {
    sub_248012054(*(v19 + 56) + *(v10 + 72) * v20, v16, type metadata accessor for SegmentedModelState);
    sub_248012164(v16, v18, type metadata accessor for SegmentedModelState);
    sub_248012054(v18, v13, type metadata accessor for SegmentedModelState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v63 + 32))(v8, v13, v64);
      LODWORD(v60) = sub_248030C78();
      if (qword_27EE839F8 != -1)
      {
        swift_once();
      }

      v22 = qword_27EE85A40;
      sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
      v23 = swift_allocObject();
      v58 = xmmword_24803DFE0;
      *(v23 + 16) = xmmword_24803DFE0;
      v24 = MEMORY[0x277D83B88];
      v25 = MEMORY[0x277D83C10];
      *(v23 + 56) = MEMORY[0x277D83B88];
      *(v23 + 64) = v25;
      v26 = v62;
      v28 = *(v62 + 16);
      v27 = *(v62 + 24);
      *(v23 + 32) = v28;
      *(v23 + 96) = v24;
      *(v23 + 104) = v25;
      v57 = v27;
      *(v23 + 72) = v27;
      v29 = sub_248030738();
      v31 = v30;
      *(v23 + 136) = MEMORY[0x277D837D0];
      v59 = sub_24800A52C();
      *(v23 + 144) = v59;
      *(v23 + 112) = v29;
      *(v23 + 120) = v31;
      v32 = v60;
      v60 = v22;
      sub_2480308C8(v32, &dword_247F67000, v22, "writeSegment: Writing segment (%i of %i) to disk in: %@", 55, 2, v23);

      v33 = v61[5];
      v34 = v61[6];
      sub_2480118BC(v61 + 2, v33);
      v35 = v65;
      (*(v34 + 16))(v26, v8, v33, v34);
      if (v35)
      {
        v36 = sub_248030C88();
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_24803DE50;
        swift_getErrorValue();
        v38 = sub_248030F18();
        v40 = v59;
        v39 = v60;
        *(v37 + 56) = MEMORY[0x277D837D0];
        *(v37 + 64) = v40;
        *(v37 + 32) = v38;
        *(v37 + 40) = v41;
        sub_2480308C8(v36, &dword_247F67000, v39, "writeSegmentToDiskAndRegisterCallback: Error writing segment to disk: %@", 72, 2, v37);
      }

      else
      {
        v45 = sub_248030C78();
        v46 = swift_allocObject();
        *(v46 + 16) = v58;
        v47 = MEMORY[0x277D83B88];
        *(v46 + 56) = MEMORY[0x277D83B88];
        v48 = MEMORY[0x277D83C10];
        *(v46 + 32) = v28;
        *(v46 + 96) = v47;
        *(v46 + 104) = v48;
        v49 = v57;
        *(v46 + 64) = v48;
        *(v46 + 72) = v49;
        v50 = sub_248030738();
        v52 = v59;
        v51 = v60;
        *(v46 + 136) = MEMORY[0x277D837D0];
        *(v46 + 144) = v52;
        *(v46 + 112) = v50;
        *(v46 + 120) = v53;
        sub_2480308C8(v45, &dword_247F67000, v51, "writeSegment: Successfully wrote segment (%i of %i) to disk in: %@", 66, 2, v46);
      }

      (*(v63 + 8))(v8, v64);
      return sub_248011FF4(v18, type metadata accessor for SegmentedModelState);
    }

    else
    {
      sub_248011FF4(v13, type metadata accessor for SegmentedModelState);
      v44 = sub_248030C88();
      if (qword_27EE839F8 != -1)
      {
        v55 = v44;
        swift_once();
        v44 = v55;
      }

      sub_2480308C8(v44, &dword_247F67000, qword_27EE85A40, "writeSegment: Unable to write model segment from invalid state", 62, 2, MEMORY[0x277D84F90]);
      return sub_248011FF4(v18, type metadata accessor for SegmentedModelState);
    }
  }

  else
  {
    v42 = sub_248030C88();
    if (qword_27EE839F8 != -1)
    {
      v54 = v42;
      swift_once();
      v42 = v54;
    }

    return sub_2480308C8(v42, &dword_247F67000, qword_27EE85A40, "writeSegment: No valid state found", 34, 2, MEMORY[0x277D84F90]);
  }
}

uint64_t sub_24800E8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2480078E4(&qword_27EE83CC0, &qword_24803E1D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v16 - v7;
  v9 = sub_248030808();
  MEMORY[0x28223BE20](v9);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, a2);
  v13 = sub_248030778();
  (*(*(v13 - 8) + 16))(v8, a3, v13);
  v14 = type metadata accessor for SegmentedModelState(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v14 - 8) + 56))(v8, 0, 1, v14);
  return sub_24800C674(v8, v11);
}

uint64_t sub_24800EAB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8)
{
  v57 = a8;
  v59 = a7;
  v60 = a6;
  v55 = a5;
  v52 = a4;
  v51 = a3;
  v61 = a1;
  v9 = sub_2480078E4(&qword_27EE83C88, &unk_24803DFF0);
  MEMORY[0x28223BE20](v9 - 8);
  v58 = &v47 - v10;
  v56 = type metadata accessor for ModelInfo(0);
  v53 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v12 = (&v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = type metadata accessor for ModelLocation(0);
  MEMORY[0x28223BE20](v48);
  v54 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2480078E4(&qword_27EE83C90, &unk_24803E820);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v47 - v15;
  v17 = sub_248030808();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v49 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v62 = &v47 - v21;
  v22 = sub_248030778();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a2;
  sub_248030718();
  v26 = sub_2480306D8();
  v28 = v27;
  (*(v23 + 8))(v25, v22);
  sub_2480307D8();
  v29 = v18;
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_2480121CC(v16, &qword_27EE83C90, &unk_24803E820);
    v30 = sub_248030C88();
    if (qword_27EE839F8 != -1)
    {
      swift_once();
    }

    v31 = qword_27EE85A40;
    sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_24803DE50;
    *(v32 + 56) = MEMORY[0x277D837D0];
    *(v32 + 64) = sub_24800A52C();
    *(v32 + 32) = v26;
    *(v32 + 40) = v28;
    sub_2480308C8(v30, &dword_247F67000, v31, "finalizePerfRunSetup: Failed to create UUID from: %@", 52, 2, v32);
  }

  else
  {

    v34 = v62;
    (*(v18 + 32))(v62, v16, v17);
    v47 = *(v18 + 16);
    v35 = v54;
    v47(v54, v34, v17);
    v36 = sub_2480306D8();
    v37 = v48;
    v38 = (v35 + *(v48 + 20));
    *v38 = v36;
    v38[1] = v39;
    *(v35 + *(v37 + 24)) = v51 & 1;
    v40 = v56;
    sub_248012054(v35, v12 + *(v56 + 24), type metadata accessor for ModelLocation);
    v41 = v55;
    *v12 = v52;
    v12[1] = v41;
    v42 = v59;
    v12[2] = v60;
    v43 = v12 + *(v40 + 28);
    *(v43 + 6) = *(v42 + 48);
    v44 = *(v42 + 32);
    *(v43 + 1) = *(v42 + 16);
    *(v43 + 2) = v44;
    *v43 = *v42;
    v45 = v49;
    v47(v49, v57, v17);
    v46 = v58;
    sub_248012054(v12, v58, type metadata accessor for ModelInfo);
    (*(v53 + 56))(v46, 0, 1, v40);
    sub_248011EDC(v42, v63);

    sub_24800C414(v46, v45);
    sub_248011FF4(v12, type metadata accessor for ModelInfo);
    sub_248011FF4(v35, type metadata accessor for ModelLocation);
    return (*(v29 + 8))(v62, v17);
  }
}

uint64_t sub_24800F0A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SegmentedModelState(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v23 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v23 - v14;
  v16 = *a1;
  if (*(v16 + 16) && (v17 = sub_248028620(a2), (v18 & 1) != 0))
  {
    sub_248012054(*(v16 + 56) + *(v7 + 72) * v17, v13, type metadata accessor for SegmentedModelState);
    sub_248012164(v13, v15, type metadata accessor for SegmentedModelState);
    sub_248012054(v15, v10, type metadata accessor for SegmentedModelState);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_248011FF4(v15, type metadata accessor for SegmentedModelState);
      v19 = sub_248030778();
      return (*(*(v19 - 8) + 32))(a3, v10, v19);
    }

    else
    {
      sub_248011FA0();
      swift_allocError();
      *v22 = 8;
      swift_willThrow();
      sub_248011FF4(v15, type metadata accessor for SegmentedModelState);
      return sub_248011FF4(v10, type metadata accessor for SegmentedModelState);
    }
  }

  else
  {
    sub_248011FA0();
    swift_allocError();
    *v21 = 7;
    return swift_willThrow();
  }
}

uint64_t sub_24800F31C(void *a1, uint64_t a2)
{
  v5 = sub_2480078E4(&qword_27EE83CC0, &qword_24803E1D0);
  MEMORY[0x28223BE20](v5 - 8);
  v38 = &v34 - v6;
  v7 = sub_248030808();
  v34 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v36 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_248030778();
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SegmentedModelState(0);
  v40 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v34 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - v18;
  v39 = a1;
  v20 = *a1;
  if (*(v20 + 16) && (v21 = sub_248028620(a2), (v22 & 1) != 0))
  {
    sub_248012054(*(v20 + 56) + *(v40 + 72) * v21, v17, type metadata accessor for SegmentedModelState);
    sub_248012164(v17, v19, type metadata accessor for SegmentedModelState);
    sub_248012054(v19, v14, type metadata accessor for SegmentedModelState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if ((EnumCaseMultiPayload - 2) >= 2)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_24801C7C8(1, v10);
        if (!v2)
        {
          v29 = v36;
          (*(v34 + 16))(v36, a2, v7);
          v30 = v35;
          v32 = v37;
          v31 = v38;
          (*(v35 + 16))(v38, v10, v37);
          swift_storeEnumTagMultiPayload();
          (*(v40 + 56))(v31, 0, 1, v11);
          sub_24800C674(v31, v29);
          (*(v30 + 8))(v10, v32);
        }
      }

      sub_248011FF4(v19, type metadata accessor for SegmentedModelState);
      v26 = v14;
    }

    else
    {
      sub_248011FF4(v14, type metadata accessor for SegmentedModelState);
      v24 = sub_248030C88();
      if (qword_27EE839F8 != -1)
      {
        v33 = v24;
        swift_once();
        v24 = v33;
      }

      sub_2480308C8(v24, &dword_247F67000, qword_27EE85A40, "setupSegmentDirectory: Unable to initialize model segment destination from invalid state", 88, 2, MEMORY[0x277D84F90]);
      sub_248011FA0();
      swift_allocError();
      *v25 = 8;
      swift_willThrow();
      v26 = v19;
    }

    return sub_248011FF4(v26, type metadata accessor for SegmentedModelState);
  }

  else
  {
    sub_248011FA0();
    swift_allocError();
    *v27 = 7;
    return swift_willThrow();
  }
}

uint64_t sub_24800F7F8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = sub_248028620(a1);
  if (v14)
  {
    v15 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v6;
    v30 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v17 = v30;
    }

    v18 = *(v17 + 48);
    v19 = sub_248030808();
    v20 = v15;
    (*(*(v19 - 8) + 8))(v18 + *(*(v19 - 8) + 72) * v15, v19);
    v21 = *(v17 + 56);
    v22 = a2(0);
    v29 = *(v22 - 8);
    sub_248012164(v21 + *(v29 + 72) * v20, a6, a3);
    sub_2480102D0(v20, v17, a4);
    *v11 = v17;
    v23 = *(v29 + 56);
    v24 = a6;
    v25 = 0;
    v26 = v22;
  }

  else
  {
    v27 = a2(0);
    v23 = *(*(v27 - 8) + 56);
    v26 = v27;
    v24 = a6;
    v25 = 1;
  }

  return v23(v24, v25, 1, v26);
}

uint64_t sub_24800F9B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ModelInfo(0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_248030808();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_2480078E4(&qword_27EE83CB0, &qword_24803E1C8);
  v43 = v4;
  result = sub_248030E38();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_248012164(v27 + v28 * v24, v47, type metadata accessor for ModelInfo);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_248012054(v29 + v28 * v24, v47, type metadata accessor for ModelInfo);
      }

      sub_24801222C(&qword_27EE83CB8, MEMORY[0x277CC9600]);
      result = sub_248030AF8();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_248012164(v47, *(v12 + 56) + v28 * v20, type metadata accessor for ModelInfo);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_24800FE44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for SegmentedModelState(0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_248030808();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_2480078E4(&qword_27EE83CC8, &qword_24803E1D8);
  v43 = v4;
  result = sub_248030E38();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_248012164(v27 + v28 * v24, v47, type metadata accessor for SegmentedModelState);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_248012054(v29 + v28 * v24, v47, type metadata accessor for SegmentedModelState);
      }

      sub_24801222C(&qword_27EE83CB8, MEMORY[0x277CC9600]);
      result = sub_248030AF8();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_248012164(v47, *(v12 + 56) + v28 * v20, type metadata accessor for SegmentedModelState);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

unint64_t sub_2480102D0(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v37 = a3;
  v5 = sub_248030808();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v42 = a2;
    v13 = ~v11;
    v14 = sub_248030D88();
    v15 = v13;
    a2 = v42;
    v41 = (v14 + 1) & v15;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v39 = v10;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v40(v9, *(a2 + 48) + v18 * v12, v5);
      sub_24801222C(&qword_27EE83CB8, MEMORY[0x277CC9600]);
      v23 = sub_248030AF8();
      result = (*v38)(v9, v5);
      v15 = v21;
      v24 = v23 & v21;
      if (a1 >= v41)
      {
        if (v24 >= v41 && a1 >= v24)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v42 + 48) + v19 * a1 >= (*(v42 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v42;
          v27 = *(v42 + 56);
          v28 = *(*(v37(0) - 8) + 72);
          v29 = v28 * a1;
          result = v27 + v28 * a1;
          v30 = v28 * v12;
          v31 = v27 + v28 * v12 + v28;
          if (v29 < v30 || result >= v31)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v39;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v33 = v29 == v30;
            v10 = v39;
            v15 = v21;
            if (!v33)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v41 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v39;
      a2 = v42;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24801060C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_248030808();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_248028620(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for ModelInfo(0);
      return sub_248011F38(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for ModelInfo);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_248010AF8();
    goto LABEL_7;
  }

  sub_24800F9B8(v17, a3 & 1);
  v24 = sub_248028620(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_248030F08();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_248010A04(v14, v11, a1, v20, type metadata accessor for ModelInfo, type metadata accessor for ModelInfo);
}

uint64_t sub_248010808(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_248030808();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_248028620(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for SegmentedModelState(0);
      return sub_248011F38(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for SegmentedModelState);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_248010E24();
    goto LABEL_7;
  }

  sub_24800FE44(v17, a3 & 1);
  v24 = sub_248028620(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_248030F08();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_248010A04(v14, v11, a1, v20, type metadata accessor for SegmentedModelState, type metadata accessor for SegmentedModelState);
}

uint64_t sub_248010A04(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = sub_248030808();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v14 = a4[7];
  v15 = a5(0);
  result = sub_248012164(a3, v14 + *(*(v15 - 8) + 72) * a1, a6);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

char *sub_248010AF8()
{
  v1 = v0;
  v2 = type metadata accessor for ModelInfo(0);
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_248030808();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2480078E4(&qword_27EE83CB0, &qword_24803E1C8);
  v5 = *v0;
  v6 = sub_248030E28();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_248012054(*(v5 + 56) + v26, v35, type metadata accessor for ModelInfo);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_248012164(v25, *(v27 + 56) + v26, type metadata accessor for ModelInfo);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_248010E24()
{
  v1 = v0;
  v2 = type metadata accessor for SegmentedModelState(0);
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_248030808();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2480078E4(&qword_27EE83CC8, &qword_24803E1D8);
  v5 = *v0;
  v6 = sub_248030E28();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_248012054(*(v5 + 56) + v26, v35, type metadata accessor for SegmentedModelState);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_248012164(v25, *(v27 + 56) + v26, type metadata accessor for SegmentedModelState);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_248011150(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5)
{
  v9 = sub_2480078E4(&qword_27EE83C90, &unk_24803E820);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  v25[3] = type metadata accessor for XPCModelRunnerConnectionManager();
  v25[4] = &off_285A191F8;
  v25[0] = a1;
  v24[3] = type metadata accessor for ModelWriter();
  v24[4] = &off_285A199D8;
  v24[0] = a2;
  v12 = MEMORY[0x277D84F90];
  v13 = sub_248028980(MEMORY[0x277D84F90]);
  sub_2480078E4(&qword_27EE83CF0, &qword_24803E1F0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 16) = v13;
  a5[12] = v14;
  v15 = sub_248028B9C(v12);
  sub_2480078E4(&qword_27EE83CF8, &qword_24803E1F8);
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  *(v16 + 16) = v15;
  a5[13] = v16;
  v17 = sub_248030808();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  sub_2480078E4(&qword_27EE83D00, &unk_24803E200);
  v18 = swift_allocObject();
  *(v18 + ((*(*v18 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_2480122D4(v11, v18 + *(*v18 + *MEMORY[0x277D841D0] + 16));
  a5[14] = v18;
  a5[15] = 524288000;
  sub_24800B14C(v25, (a5 + 7));
  sub_24800B14C(v24, (a5 + 2));
  if (qword_27EE839E0 != -1)
  {
    swift_once();
  }

  v19 = sub_2480309A8();
  sub_248006DF0(v19, qword_27EE83C70);
  v20 = sub_248030C78();
  v21 = sub_248030988();
  if (os_log_type_enabled(v21, v20))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_247F67000, v21, v20, "About to clear Core ML temp folder", v22, 2u);
    MEMORY[0x24C1C47E0](v22, -1, -1);
  }

  a3();
  sub_248011838(v24);
  sub_248011838(v25);
  return a5;
}

void *sub_248011468(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = sub_2480078E4(&qword_27EE83C90, &unk_24803E820);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v33 - v17;
  v34[3] = a6;
  v34[4] = a8;
  v19 = sub_248012270(v34);
  (*(*(a6 - 8) + 32))(v19, a1, a6);
  v33[3] = a7;
  v33[4] = a9;
  v20 = sub_248012270(v33);
  (*(*(a7 - 8) + 32))(v20, a2, a7);
  v21 = MEMORY[0x277D84F90];
  v22 = sub_248028980(MEMORY[0x277D84F90]);
  sub_2480078E4(&qword_27EE83CF0, &qword_24803E1F0);
  v23 = swift_allocObject();
  *(v23 + 24) = 0;
  *(v23 + 16) = v22;
  a5[12] = v23;
  v24 = sub_248028B9C(v21);
  sub_2480078E4(&qword_27EE83CF8, &qword_24803E1F8);
  v25 = swift_allocObject();
  *(v25 + 24) = 0;
  *(v25 + 16) = v24;
  a5[13] = v25;
  v26 = sub_248030808();
  (*(*(v26 - 8) + 56))(v18, 1, 1, v26);
  sub_2480078E4(&qword_27EE83D00, &unk_24803E200);
  v27 = swift_allocObject();
  *(v27 + ((*(*v27 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_2480122D4(v18, v27 + *(*v27 + *MEMORY[0x277D841D0] + 16));
  a5[14] = v27;
  a5[15] = 524288000;
  sub_24800B14C(v34, (a5 + 7));
  sub_24800B14C(v33, (a5 + 2));
  if (qword_27EE839E0 != -1)
  {
    swift_once();
  }

  v28 = sub_2480309A8();
  sub_248006DF0(v28, qword_27EE83C70);
  v29 = sub_248030C78();
  v30 = sub_248030988();
  if (os_log_type_enabled(v30, v29))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_247F67000, v30, v29, "About to clear Core ML temp folder", v31, 2u);
    MEMORY[0x24C1C47E0](v31, -1, -1);
  }

  a3();
  sub_248011838(v33);
  sub_248011838(v34);
  return a5;
}

uint64_t sub_2480117E8(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_248011838(void *a1)
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

void *sub_2480118BC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_248011900(uint64_t *a1)
{
  v3 = *(sub_248030808() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_24800BC04(a1, v4, v5);
}

unint64_t sub_248011A68()
{
  result = qword_27EE83C98;
  if (!qword_27EE83C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83C98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PerfRunError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PerfRunError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CoreMLPerfCoordinator.TestFactory(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CoreMLPerfCoordinator.TestFactory(_WORD *result, int a2, int a3)
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

unint64_t sub_248011E34()
{
  result = qword_27EE83CA0;
  if (!qword_27EE83CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83CA0);
  }

  return result;
}

unint64_t sub_248011E88()
{
  result = qword_27EE83CA8;
  if (!qword_27EE83CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83CA8);
  }

  return result;
}

uint64_t sub_248011F38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_248011FA0()
{
  result = qword_27EE83CD0;
  if (!qword_27EE83CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83CD0);
  }

  return result;
}

uint64_t sub_248011FF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_248012054(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2480120FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2480078E4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_248012164(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2480121CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2480078E4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24801222C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_248030808();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_248012270(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2480122D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2480078E4(&qword_27EE83C90, &unk_24803E820);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ModelPayload.modelData.getter()
{
  v1 = *v0;
  sub_2480123C0(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_2480123C0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t ModelPayload.modelName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ModelPayload.init(modelData:modelName:isCompressed:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t ModelPayload.destinationFileName.getter()
{
  v1 = *(v0 + 32);
  v5 = *(v0 + 16);

  MEMORY[0x24C1C17F0](46, 0xE100000000000000);
  if (v1)
  {
    v2 = 0x67616B6361706C6DLL;
  }

  else
  {
    v2 = 0x6C65646F6D6C6DLL;
  }

  if (v1)
  {
    v3 = 0xE900000000000065;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  MEMORY[0x24C1C17F0](v2, v3);

  return v5;
}

uint64_t sub_2480124F0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_24801250C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_248012520(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_248012568(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2480125BC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_248030B38();
    v4 = v3;

    qword_27EE83D08 = v2;
    unk_27EE83D10 = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_248012648()
{
  sub_2480127A4();
  if (qword_27EE839F0 != -1)
  {
    swift_once();
  }

  result = sub_248030D38();
  qword_27EE85A40 = result;
  return result;
}

uint64_t sub_2480126E8(uint64_t a1, uint64_t a2)
{
  v2 = sub_2480309A8();
  sub_248008A94(v2, qword_27EE85A48);
  sub_248006DF0(v2, qword_27EE85A48);
  if (qword_27EE839F0 != -1)
  {
    swift_once();
  }

  return sub_248030998();
}

unint64_t sub_2480127A4()
{
  result = qword_27EE83D18;
  if (!qword_27EE83D18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE83D18);
  }

  return result;
}

unint64_t sub_2480127F4()
{
  result = qword_27EE83D20;
  if (!qword_27EE83D20)
  {
    type metadata accessor for DTCoreClusterFlags(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83D20);
  }

  return result;
}

uint64_t sub_24801284C()
{
  v1 = *v0;
  sub_248030F98();
  MEMORY[0x24C1C1C00](v1);
  return sub_248030FB8();
}

uint64_t sub_2480128C0(uint64_t a1)
{
  v2 = *v1;
  sub_248030F98();
  MEMORY[0x24C1C1C00](v2);
  return sub_248030FB8();
}

uint64_t sub_248012904(uint64_t a1, uint64_t a2)
{
  v2 = sub_2480309A8();
  sub_248008A94(v2, qword_27EE83D28);
  v3 = sub_248006DF0(v2, qword_27EE83D28);
  if (qword_27EE83A00 != -1)
  {
    swift_once();
  }

  v4 = sub_248006DF0(v2, qword_27EE85A48);
  v5 = *(*(v2 - 8) + 16);

  return v5(v3, v4, v2);
}

uint64_t CoreMLModelWriterServiceMessageHandler.ModelTokenResponse.modelToken.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_248030808();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_248012A58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6B6F546C65646F6DLL && a2 == 0xEA00000000006E65)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_248030EE8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_248012AF4(uint64_t a1)
{
  v2 = sub_248012CE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248012B30(uint64_t a1)
{
  v2 = sub_248012CE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CoreMLModelWriterServiceMessageHandler.ModelTokenResponse.encode(to:)(void *a1)
{
  v2 = sub_2480078E4(&qword_27EE83D40, &qword_24803E330);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  sub_2480118BC(a1, a1[3]);
  sub_248012CE4();
  sub_248030FE8();
  sub_248030808();
  sub_248012FF4(&qword_27EE83D50, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_248030E98();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_248012CE4()
{
  result = qword_27EE83D48;
  if (!qword_27EE83D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83D48);
  }

  return result;
}

uint64_t CoreMLModelWriterServiceMessageHandler.ModelTokenResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_248030808();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2480078E4(&qword_27EE83D58, &qword_24803E338);
  v17 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for CoreMLModelWriterServiceMessageHandler.ModelTokenResponse(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2480118BC(a1, a1[3]);
  sub_248012CE4();
  sub_248030FD8();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_248012FF4(&qword_27EE83D60, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    sub_248030E68();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_2480137FC(v11, v13, type metadata accessor for CoreMLModelWriterServiceMessageHandler.ModelTokenResponse);
  }

  return sub_248011838(a1);
}

uint64_t sub_248012FF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_248013054(void *a1)
{
  v2 = sub_2480078E4(&qword_27EE83D40, &qword_24803E330);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  sub_2480118BC(a1, a1[3]);
  sub_248012CE4();
  sub_248030FE8();
  sub_248030808();
  sub_248012FF4(&qword_27EE83D50, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_248030E98();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2480131D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SegmentationConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_248013258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000024804E570 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_248030EE8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2480132EC(uint64_t a1)
{
  v2 = sub_2480134DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248013328(uint64_t a1)
{
  v2 = sub_2480134DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CoreMLModelWriterServiceMessageHandler.SegmentationConfigResponse.encode(to:)(void *a1)
{
  v2 = sub_2480078E4(&qword_27EE83D68, &qword_24803E340);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  sub_2480118BC(a1, a1[3]);
  sub_2480134DC();
  sub_248030FE8();
  type metadata accessor for SegmentationConfig(0);
  sub_248012FF4(&qword_27EE83D78, type metadata accessor for SegmentationConfig, &protocol conformance descriptor for SegmentationConfig);
  sub_248030E98();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_2480134DC()
{
  result = qword_27EE83D70;
  if (!qword_27EE83D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83D70);
  }

  return result;
}

uint64_t CoreMLModelWriterServiceMessageHandler.SegmentationConfigResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for SegmentationConfig(0);
  MEMORY[0x28223BE20](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2480078E4(&qword_27EE83D80, &qword_24803E348);
  v16 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for CoreMLModelWriterServiceMessageHandler.SegmentationConfigResponse(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2480118BC(a1, a1[3]);
  sub_2480134DC();
  sub_248030FD8();
  if (!v2)
  {
    v12 = v15;
    sub_248012FF4(&qword_27EE83D88, type metadata accessor for SegmentationConfig, &protocol conformance descriptor for SegmentationConfig);
    v13 = v17;
    sub_248030E68();
    (*(v16 + 8))(v8, v6);
    sub_2480137FC(v13, v11, type metadata accessor for SegmentationConfig);
    sub_2480137FC(v11, v12, type metadata accessor for CoreMLModelWriterServiceMessageHandler.SegmentationConfigResponse);
  }

  return sub_248011838(a1);
}

uint64_t sub_2480137C4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2480137FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24801387C(void *a1)
{
  v2 = sub_2480078E4(&qword_27EE83D68, &qword_24803E340);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  sub_2480118BC(a1, a1[3]);
  sub_2480134DC();
  sub_248030FE8();
  type metadata accessor for SegmentationConfig(0);
  sub_248012FF4(&qword_27EE83D78, type metadata accessor for SegmentationConfig, &protocol conformance descriptor for SegmentationConfig);
  sub_248030E98();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2480139F4()
{
  sub_248030F98();
  MEMORY[0x24C1C1C00](0);
  return sub_248030FB8();
}

uint64_t sub_248013A38(uint64_t a1)
{
  sub_248030F98();
  MEMORY[0x24C1C1C00](0);
  return sub_248030FB8();
}

uint64_t sub_248013A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_248030EE8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_248013B24(uint64_t a1)
{
  v2 = sub_248013CD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248013B60(uint64_t a1)
{
  v2 = sub_248013CD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CoreMLModelWriterServiceMessageHandler.ErrorResponse.encode(to:)(void *a1)
{
  v2 = sub_2480078E4(&qword_27EE83D90, &unk_24803E350);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  sub_2480118BC(a1, a1[3]);
  sub_248013CD4();
  sub_248030FE8();
  sub_248030E88();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_248013CD4()
{
  result = qword_27EE83D98;
  if (!qword_27EE83D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83D98);
  }

  return result;
}

uint64_t sub_248013D28(void *a1)
{
  v2 = sub_2480078E4(&qword_27EE83D90, &unk_24803E350);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  sub_2480118BC(a1, a1[3]);
  sub_248013CD4();
  sub_248030FE8();
  sub_248030E88();
  return (*(v3 + 8))(v5, v2);
}

uint64_t *CoreMLModelWriterServiceMessageHandler.__allocating_init(coordinator:channel:)(void *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = sub_2480117E8(a1, v5);
  v8 = sub_248017B48(v7, a2, v2, v5, v6);
  sub_248011838(a1);
  return v8;
}

void *CoreMLModelWriterServiceMessageHandler.init(coordinator:channel:)(void *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = sub_2480117E8(a1, v5);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = sub_248017A84(v9, a2, v2, v5, v6);
  sub_248011838(a1);
  return v11;
}

void CoreMLModelWriterServiceMessageHandler.respond(to:)(void *a1)
{
  v2 = sub_248030B28();
  v3 = [a1 stringForMessageKey_];

  if (!v3)
  {
    if (qword_27EE83A08 != -1)
    {
      swift_once();
    }

    v13 = sub_2480309A8();
    sub_248006DF0(v13, qword_27EE83D28);
    v14 = sub_248030C88();
    log = sub_248030988();
    if (!os_log_type_enabled(log, v14))
    {
      goto LABEL_15;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "ModelWriterService (Handler) no command received. Model was not written to disk.";
    goto LABEL_14;
  }

  v4 = sub_248030B38();
  v6 = v5;

  v7 = sub_248030C78();
  if (qword_27EE839F8 != -1)
  {
    swift_once();
  }

  v8 = qword_27EE85A40;
  sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24803DE50;
  v10 = MEMORY[0x277D837D0];
  *(v9 + 56) = MEMORY[0x277D837D0];
  v11 = sub_24800A52C();
  *(v9 + 64) = v11;
  *(v9 + 32) = v4;
  *(v9 + 40) = v6;

  sub_2480308C8(v7, &dword_247F67000, v8, "command is %@", 13, 2, v9);

  v12 = sub_248017AFC(v4, v6);
  if (v12 <= 3)
  {
    if (v12 > 1)
    {
      if (v12 == 2)
      {

        sub_248014EF0(a1);
      }

      else
      {

        sub_248015314(a1);
      }
    }

    else if (v12)
    {
      v17 = sub_248030C88();
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_24803DE50;
      *(v18 + 56) = v10;
      *(v18 + 64) = v11;
      *(v18 + 32) = 0xD000000000000015;
      *(v18 + 40) = 0x800000024804D8B0;
      sub_2480308C8(v17, &dword_247F67000, v8, "command %@ received. Pre-compiled models are not yet supported.", 63, 2, v18);
    }

    else
    {

      sub_248014484(a1);
    }

    return;
  }

  if (v12 <= 5)
  {
    if (v12 == 4)
    {

      sub_24801557C(a1);
    }

    else
    {

      sub_248015CA4(a1);
    }

    return;
  }

  if (v12 == 6)
  {

    sub_24801613C(a1);
    return;
  }

  if (qword_27EE83A08 != -1)
  {
    swift_once();
  }

  v19 = sub_2480309A8();
  sub_248006DF0(v19, qword_27EE83D28);
  v14 = sub_248030C88();
  log = sub_248030988();
  if (os_log_type_enabled(log, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "ModelWriterService (Handler) unable to map command name to known command. Model was not written to disk.";
LABEL_14:
    _os_log_impl(&dword_247F67000, log, v14, v16, v15, 2u);
    MEMORY[0x24C1C47E0](v15, -1, -1);
  }

LABEL_15:
}

void sub_248014484(void *a1)
{
  v2 = sub_2480078E4(&qword_27EE83C90, &unk_24803E820);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v75 - v6;
  v8 = sub_248030808();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v75 - v13;
  v15 = [a1 data];
  if (v15)
  {
    v88 = v5;
    v16 = v15;
    v93 = sub_2480307B8();
    v89 = v17;

    v18 = sub_248030B28();
    v19 = [a1 stringForMessageKey_];

    v91 = v8;
    v92 = v7;
    v90 = v9;
    if (v19)
    {
      v87 = sub_248030B38();
      v21 = v20;
    }

    else
    {
      sub_2480307F8();
      v87 = sub_2480307E8();
      v21 = v26;
      (*(v9 + 8))(v14, v8);
    }

    v94 = v21;
    v27 = sub_248030B28();
    v86 = [a1 integerForMessageKey_];

    v28 = sub_248030B28();
    v29 = [a1 integerForMessageKey_];

    v30 = sub_248030C78();
    if (qword_27EE839F8 != -1)
    {
      swift_once();
    }

    v31 = qword_27EE85A40;
    if (os_log_type_enabled(qword_27EE85A40, v30))
    {
      v32 = swift_slowAlloc();
      *v32 = 67109120;
      *(v32 + 4) = v29 == 1;
      _os_log_impl(&dword_247F67000, v31, v30, "Is Compressed: %{BOOL}d", v32, 8u);
      MEMORY[0x24C1C47E0](v32, -1, -1);
    }

    v33 = sub_248030B28();
    v85 = [a1 integerForMessageKey_];

    v34 = sub_248030B28();
    v84 = [a1 integerForMessageKey_];

    v35 = sub_248030B28();
    v83 = [a1 integerForMessageKey_];

    v36 = sub_248030B28();
    v82 = [a1 integerForMessageKey_];

    v37 = sub_248030B28();
    v81 = [a1 integerForMessageKey_];

    v38 = sub_248030B28();
    v39 = [a1 stringForMessageKey_];

    v76 = v12;
    v75 = a1;
    if (v39)
    {
      v79 = sub_248030B38();
      v80 = v40;
    }

    else
    {
      v79 = 0;
      v80 = 0;
    }

    v78 = v29 == 1;
    v41 = sub_248030C78();
    sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
    v42 = swift_allocObject();
    v77 = xmmword_24803DE50;
    *(v42 + 16) = xmmword_24803DE50;
    v43 = MEMORY[0x277D837D0];
    *(v42 + 56) = MEMORY[0x277D837D0];
    v44 = sub_24800A52C();
    *(v42 + 64) = v44;
    v45 = v87;
    v46 = v94;
    *(v42 + 32) = v87;
    *(v42 + 40) = v46;

    sub_2480308C8(v41, &dword_247F67000, v31, "modelName is %@", 15, 2, v42);

    v47 = sub_248030C78();
    v48 = swift_allocObject();
    *(v48 + 16) = v77;
    v49 = v86;
    v96[0] = v86;
    v50 = sub_248030EC8();
    *(v48 + 56) = v43;
    *(v48 + 64) = v44;
    *(v48 + 32) = v50;
    *(v48 + 40) = v51;
    sub_2480308C8(v47, &dword_247F67000, v31, "Calling writeModelToDiskAndRegisterCallback with computeUnit %@", 63, 2, v48);

    v52 = v95;
    isa = v95[5].isa;
    v54 = v95[6].isa;
    sub_2480118BC(&v95[2].isa, isa);
    v55 = v93;
    v56 = v89;
    v97[0] = v93;
    v97[1] = v89;
    v97[2] = v45;
    v97[3] = v46;
    v98 = v78;
    v96[0] = v85;
    v96[1] = v84;
    v96[2] = v83;
    v96[3] = v82;
    v96[4] = v81;
    v96[5] = v79;
    v96[6] = v80;
    v57 = *(v54 + 1);
    sub_2480123C0(v93, v89);

    v58 = v49;
    v59 = v92;
    v57(v97, v96, v58, sub_24801822C, v52, isa, v54);

    v60 = v88;
    sub_2480120FC(v59, v88, &qword_27EE83C90, &unk_24803E820);
    v62 = v90;
    v61 = v91;
    if ((*(v90 + 48))(v60, 1, v91) == 1)
    {
      sub_2480121CC(v59, &qword_27EE83C90, &unk_24803E820);
      sub_2480081DC(v55, v56);
      sub_2480081DC(v55, v56);

      v63 = v60;
    }

    else
    {
      v64 = v56;
      v65 = v76;
      (*(v62 + 32))(v76, v60, v61);
      v66 = v75;
      if (qword_27EE83A08 != -1)
      {
        swift_once();
      }

      v67 = sub_2480309A8();
      sub_248006DF0(v67, qword_27EE83D28);
      v68 = sub_248030C78();
      v69 = sub_248030988();
      if (os_log_type_enabled(v69, v68))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_247F67000, v69, v68, "sendingReply from messageReceived", v70, 2u);
        MEMORY[0x24C1C47E0](v70, -1, -1);
      }

      sub_248016B0C(v66, v65);
      v71 = sub_248030C78();
      v72 = sub_248030988();
      if (os_log_type_enabled(v72, v71))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_247F67000, v72, v71, "sent reply from messageReceived", v73, 2u);
        MEMORY[0x24C1C47E0](v73, -1, -1);
      }

      v74 = v93;
      sub_2480081DC(v93, v64);

      sub_2480081DC(v74, v64);
      (*(v62 + 8))(v65, v61);
      v63 = v59;
    }

    sub_2480121CC(v63, &qword_27EE83C90, &unk_24803E820);
  }

  else
  {
    if (qword_27EE83A08 != -1)
    {
      swift_once();
    }

    v22 = sub_2480309A8();
    sub_248006DF0(v22, qword_27EE83D28);
    v23 = sub_248030C88();
    v95 = sub_248030988();
    if (os_log_type_enabled(v95, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_247F67000, v95, v23, "ModelWriterService (Handler) - no model data received", v24, 2u);
      MEMORY[0x24C1C47E0](v24, -1, -1);
    }

    v25 = v95;
  }
}

void sub_248014EF0(void *a1)
{
  v2 = v1;
  v4 = sub_2480078E4(&qword_27EE83C90, &unk_24803E820);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_248030808();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EE83A08 != -1)
  {
    swift_once();
  }

  v11 = sub_2480309A8();
  sub_248006DF0(v11, qword_27EE83D28);
  v12 = sub_248030C78();
  v13 = sub_248030988();
  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_247F67000, v13, v12, "Calling cancelPerfRun", v14, 2u);
    MEMORY[0x24C1C47E0](v14, -1, -1);
  }

  v15 = sub_248030B28();
  v16 = [a1 stringForMessageKey_];

  if (!v16)
  {
    goto LABEL_8;
  }

  v17 = sub_248030B38();
  v19 = v18;

  sub_2480307D8();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {

    sub_2480121CC(v6, &qword_27EE83C90, &unk_24803E820);
LABEL_8:
    v20 = sub_248030C88();
    v21 = sub_248030988();
    if (os_log_type_enabled(v21, v20))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_247F67000, v21, v20, "No model token received in cancelPerfRun", v22, 2u);
      MEMORY[0x24C1C47E0](v22, -1, -1);
    }

    v29 = xmmword_24803E310;
    v30 = 1;
    sub_2480171CC(&v29, v23);
    return;
  }

  (*(v8 + 32))(v10, v6, v7);
  v24 = sub_248030C78();
  if (qword_27EE839F8 != -1)
  {
    swift_once();
  }

  v25 = qword_27EE85A40;
  sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_24803DE50;
  *(v26 + 56) = MEMORY[0x277D837D0];
  *(v26 + 64) = sub_24800A52C();
  *(v26 + 32) = v17;
  *(v26 + 40) = v19;
  sub_2480308C8(v24, &dword_247F67000, v25, "Calling cancelPerfRun with model token %@", 41, 2, v26);

  v27 = v2[5];
  v28 = v2[6];
  sub_2480118BC(v2 + 2, v27);
  (*(v28 + 24))(v10, v27, v28);
  (*(v8 + 8))(v10, v7);
}

uint64_t sub_248015314(void *a1)
{
  v3 = type metadata accessor for SegmentationConfig(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = v1[5];
  v7 = v1[6];
  sub_2480118BC(v1 + 2, v6);
  (*(v7 + 32))(v6, v7);
  v8 = sub_248030C78();
  if (qword_27EE839F8 != -1)
  {
    swift_once();
  }

  v9 = qword_27EE85A40;
  sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24803DE50;
  v11 = *v5;
  v12 = MEMORY[0x277D84A90];
  *(v10 + 56) = MEMORY[0x277D84A28];
  *(v10 + 64) = v12;
  *(v10 + 32) = v11;
  sub_2480308C8(v8, &dword_247F67000, v9, "generateSegmentationConfig - Segment Size: %i", v14);

  sub_248016E84(a1, v5);
  return sub_248018458(v5, type metadata accessor for SegmentationConfig);
}

void sub_24801557C(void *a1)
{
  v3 = type metadata accessor for SegmentPayload(0);
  MEMORY[0x28223BE20](v3);
  v5 = (v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_2480078E4(&qword_27EE83C90, &unk_24803E820);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v47 - v7;
  v9 = sub_248030808();
  isa = v9[-1].isa;
  MEMORY[0x28223BE20](v9);
  v12 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 data];
  if (v13)
  {
    v54 = v9;
    v14 = v13;
    v15 = sub_2480307B8();
    v17 = v16;

    v18 = v54;
    sub_2480176B8(a1, 0xD00000000000001ALL, 0x800000024804E6E0, v8);
    if ((*(isa + 6))(v8, 1, v18) == 1)
    {
      sub_2480081DC(v15, v17);
      sub_2480121CC(v8, &qword_27EE83C90, &unk_24803E820);
    }

    else
    {
      v51 = v15;
      v52 = v17;
      v53 = v1;
      (*(isa + 4))(v12, v8, v18);
      v23 = sub_248030B28();
      v50 = [a1 integerForMessageKey_];

      v24 = sub_248030B28();
      v25 = [a1 integerForMessageKey_];

      LODWORD(v48) = sub_248030C78();
      v49 = isa;
      if (qword_27EE839F8 != -1)
      {
        swift_once();
      }

      v26 = qword_27EE85A40;
      v47[1] = sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_24803DFE0;
      v28 = MEMORY[0x277D83B88];
      v29 = MEMORY[0x277D83C10];
      *(v27 + 56) = MEMORY[0x277D83B88];
      *(v27 + 64) = v29;
      v30 = v50;
      *(v27 + 32) = v50;
      *(v27 + 96) = v28;
      *(v27 + 104) = v29;
      *(v27 + 72) = v25;
      v31 = sub_2480307E8();
      v33 = v32;
      *(v27 + 136) = MEMORY[0x277D837D0];
      v47[0] = sub_24800A52C();
      *(v27 + 144) = v47[0];
      *(v27 + 112) = v31;
      *(v27 + 120) = v33;
      v34 = v48;
      v48 = v26;
      sub_2480308C8(v34, &dword_247F67000, v26, "handleIncomingSegmentedModel - Received segment (#%i of %i) for token: %@", 73, 2, v27, v47[0]);
      v35 = v12;

      v36 = v49;
      (*(v49 + 2))(v5 + *(v3 + 28), v35, v54);
      v37 = v52;
      *v5 = v51;
      v5[1] = v37;
      v5[2] = v30;
      v5[3] = v25;
      v38 = v53[5];
      v39 = v53[6];
      sub_2480118BC(v53 + 2, v38);
      (*(v39 + 40))(v5, v38, v39);
      if (qword_27EE83A08 != -1)
      {
        swift_once();
      }

      v40 = sub_2480309A8();
      sub_248006DF0(v40, qword_27EE83D28);
      v41 = sub_248030C78();
      v42 = sub_248030988();
      if (os_log_type_enabled(v42, v41))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_247F67000, v42, v41, "handleIncomingSegmentedModel: sendingReply from messageReceived", v43, 2u);
        MEMORY[0x24C1C47E0](v43, -1, -1);
      }

      sub_248016B0C(a1, v35);
      v44 = sub_248030C78();
      v45 = sub_248030988();
      if (os_log_type_enabled(v45, v44))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_247F67000, v45, v44, "handleIncomingSegmentedModel: sent reply from messageReceived", v46, 2u);
        MEMORY[0x24C1C47E0](v46, -1, -1);
      }

      sub_248018458(v5, type metadata accessor for SegmentPayload);
      (*(v36 + 1))(v35, v54);
    }
  }

  else
  {
    if (qword_27EE83A08 != -1)
    {
      swift_once();
    }

    v19 = sub_2480309A8();
    sub_248006DF0(v19, qword_27EE83D28);
    v20 = sub_248030C88();
    v54 = sub_248030988();
    if (os_log_type_enabled(v54, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_247F67000, v54, v20, "handleIncomingSegmentedModel - no model data received", v21, 2u);
      MEMORY[0x24C1C47E0](v21, -1, -1);
    }

    v22 = v54;
  }
}

uint64_t sub_248015CA4(void *a1)
{
  v2 = v1;
  v4 = sub_2480078E4(&qword_27EE83C90, &unk_24803E820);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_248030808();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2480176B8(a1, 0xD000000000000015, 0x800000024804D920, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_2480121CC(v6, &qword_27EE83C90, &unk_24803E820);
  }

  v30 = a1;
  v12 = *(v8 + 32);
  v33 = v7;
  v12(v10, v6, v7);
  v13 = sub_248030C78();
  if (qword_27EE839F8 != -1)
  {
    swift_once();
  }

  v14 = qword_27EE85A40;
  sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
  v15 = swift_allocObject();
  v31 = xmmword_24803DE50;
  *(v15 + 16) = xmmword_24803DE50;
  v16 = sub_2480307E8();
  v18 = v17;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = sub_24800A52C();
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  v32 = v14;
  sub_2480308C8(v13, &dword_247F67000, v14, "assembleModelSegments - Assembling model segments for token: %@", 63, 2, v15);

  v19 = v2[5];
  v20 = v2[6];
  sub_2480118BC(v2 + 2, v19);
  (*(v20 + 48))(v10, v19, v20);
  v21 = v33;
  if (qword_27EE83A08 != -1)
  {
    swift_once();
  }

  v22 = sub_2480309A8();
  sub_248006DF0(v22, qword_27EE83D28);
  v23 = sub_248030C78();
  v24 = sub_248030988();
  if (os_log_type_enabled(v24, v23))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_247F67000, v24, v23, "assembleModelSegments: sendingReply from messageReceived", v25, 2u);
    MEMORY[0x24C1C47E0](v25, -1, -1);
  }

  sub_248016B0C(v30, v10);
  v26 = sub_248030C78();
  v27 = sub_248030988();
  if (os_log_type_enabled(v27, v26))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_247F67000, v27, v26, "assembleModelSegments: sent reply from messageReceived", v28, 2u);
    MEMORY[0x24C1C47E0](v28, -1, -1);
  }

  return (*(v8 + 8))(v10, v21);
}

uint64_t sub_24801613C(void *a1)
{
  v3 = sub_2480078E4(&unk_27EE83FE0, &qword_24803DE60);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v73 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v73 - v10;
  v12 = sub_2480078E4(&qword_27EE83C90, &unk_24803E820);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v73 - v13;
  v15 = sub_248030808();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2480176B8(a1, 0xD000000000000015, 0x800000024804D920, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_2480121CC(v14, &qword_27EE83C90, &unk_24803E820);
  }

  v82 = v9;
  v84 = v6;
  v88 = v1;
  (*(v16 + 32))(v18, v14, v15);
  v20 = sub_248030B28();
  v21 = [a1 stringForMessageKey_];

  v81 = v15;
  v80 = v16;
  if (v21)
  {
    v85 = sub_248030B38();
    v23 = v22;
  }

  else
  {
    v85 = sub_2480307E8();
    v23 = v24;
  }

  v25 = v18;
  v26 = sub_248030B28();
  v86 = a1;
  v27 = [a1 integerForMessageKey_];

  v78 = v27;
  v28 = v27 == 1;
  v29 = sub_248030778();
  v83 = *(v29 - 8);
  v30 = *(v83 + 56);
  v30(v11, 1, 1, v29);
  v31 = v11;
  v32 = v88[5];
  v33 = v88[6];
  sub_2480118BC(v88 + 2, v32);
  v34 = *(v33 + 56);
  v35 = v82;
  v36 = v85;
  v79 = v23;
  v85 = v25;
  v34(v36, v23, v25, v28, v32, v33);
  v87 = v31;
  sub_2480121CC(v31, &unk_27EE83FE0, &qword_24803DE60);
  v37 = v29;
  v30(v35, 0, 1, v29);
  sub_2480184EC(v35, v31);
  v38 = v88;
  v39 = v86;
  v40 = sub_248030B28();
  v88 = [v39 integerForMessageKey_];

  v41 = sub_248030B28();
  v82 = [v39 integerForMessageKey_];

  v42 = sub_248030B28();
  v77 = [v39 integerForMessageKey_];

  v43 = sub_248030B28();
  v76 = [v39 integerForMessageKey_];

  v44 = sub_248030B28();
  v75 = [v39 integerForMessageKey_];

  v45 = sub_248030B28();
  v46 = [v39 integerForMessageKey_];

  v47 = sub_248030B28();
  v48 = [v39 stringForMessageKey_];

  v49 = v83;
  if (v48)
  {
    v50 = sub_248030B38();
    v52 = v51;
  }

  else
  {
    v50 = 0;
    v52 = 0;
  }

  v53 = v37;
  v74 = v37;
  sub_24800B14C((v38 + 2), v90);
  v55 = v91;
  v54 = v92;
  sub_2480118BC(v90, v91);
  v56 = v84;
  sub_2480120FC(v87, v84, &unk_27EE83FE0, &qword_24803DE60);
  result = (*(v49 + 48))(v56, 1, v53);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v57 = v38;
    v58 = v78 == 1;

    v89[0] = v82;
    v89[1] = v77;
    v89[2] = v76;
    v89[3] = v75;
    v89[4] = v46;
    v89[5] = v50;
    v89[6] = v52;
    v59 = *(v54 + 64);

    v59(v85, v56, v58, v89, v88, sub_24801857C, v57, v55, v54);

    (*(v49 + 8))(v56, v74);
    sub_248011838(v90);
    if (qword_27EE83A08 != -1)
    {
      swift_once();
    }

    v60 = sub_2480309A8();
    sub_248006DF0(v60, qword_27EE83D28);
    v61 = sub_248030C78();
    v62 = sub_248030988();
    v63 = os_log_type_enabled(v62, v61);
    v64 = v80;
    v65 = v86;
    if (v63)
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_247F67000, v62, v61, "sendingReply from messageReceived", v66, 2u);
      MEMORY[0x24C1C47E0](v66, -1, -1);
    }

    v67 = v85;
    sub_248016B0C(v65, v85);
    v68 = sub_248030C78();
    v69 = sub_248030988();
    v70 = os_log_type_enabled(v69, v68);
    v71 = v87;
    if (v70)
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_247F67000, v69, v68, "sent reply from messageReceived", v72, 2u);
      MEMORY[0x24C1C47E0](v72, -1, -1);
    }

    sub_2480121CC(v71, &unk_27EE83FE0, &qword_24803DE60);
    return (*(v64 + 8))(v67, v81);
  }

  return result;
}

uint64_t sub_248016B0C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for CoreMLModelWriterServiceMessageHandler.ModelTokenResponse(0);
  MEMORY[0x28223BE20](v6);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_248030808();
  (*(*(v9 - 8) + 16))(v8, a2, v9);
  sub_248030648();
  swift_allocObject();
  sub_248030638();
  sub_248012FF4(&qword_27EE83E08, type metadata accessor for CoreMLModelWriterServiceMessageHandler.ModelTokenResponse, &protocol conformance descriptor for CoreMLModelWriterServiceMessageHandler.ModelTokenResponse);
  v10 = sub_248030628();
  v12 = v11;
  sub_248018458(v8, type metadata accessor for CoreMLModelWriterServiceMessageHandler.ModelTokenResponse);

  sub_2480123C0(v10, v12);
  v13 = sub_2480307A8();
  v14 = [objc_opt_self() messageWithData_];

  sub_2480081DC(v10, v12);
  v15 = [a1 newReplyWithMessage_];
  v16 = *(v3 + 56);
  aBlock[4] = sub_248018570;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_248023480;
  aBlock[3] = &unk_285A19720;
  v17 = _Block_copy(aBlock);
  [v16 sendMessage:v15 replyHandler:v17];
  _Block_release(v17);

  return sub_2480081DC(v10, v12);
}

uint64_t sub_248016E84(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for CoreMLModelWriterServiceMessageHandler.SegmentationConfigResponse(0);
  MEMORY[0x28223BE20](v6);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2480131D8(a2, v8);
  sub_248030648();
  swift_allocObject();
  sub_248030638();
  sub_248012FF4(&qword_27EE83E18, type metadata accessor for CoreMLModelWriterServiceMessageHandler.SegmentationConfigResponse, &protocol conformance descriptor for CoreMLModelWriterServiceMessageHandler.SegmentationConfigResponse);
  v9 = sub_248030628();
  v11 = v10;
  sub_248018458(v8, type metadata accessor for CoreMLModelWriterServiceMessageHandler.SegmentationConfigResponse);

  sub_2480123C0(v9, v11);
  v12 = sub_2480307A8();
  v13 = [objc_opt_self() messageWithData_];

  sub_2480081DC(v9, v11);
  v14 = [a1 newReplyWithMessage_];
  v15 = *(v3 + 56);
  aBlock[4] = sub_248018570;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_248023480;
  aBlock[3] = &unk_285A19770;
  v16 = _Block_copy(aBlock);
  [v15 sendMessage:v14 replyHandler:v16];
  _Block_release(v16);

  return sub_2480081DC(v9, v11);
}

void sub_2480171CC(__int128 *a1, uint64_t a2)
{
  v21 = *a1;
  v3 = *(a1 + 16);
  if (qword_27EE83A08 != -1)
  {
    swift_once();
  }

  v4 = sub_2480309A8();
  sub_248006DF0(v4, qword_27EE83D28);
  v5 = sub_248030C78();
  v6 = sub_248030988();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_247F67000, v6, v5, "sendTimingInfoMessage, about to convert to data", v7, 2u);
    MEMORY[0x24C1C47E0](v7, -1, -1);
  }

  aBlock = v21;
  LOBYTE(v23) = v3;
  v8 = sub_248018248(&aBlock);
  v10 = v9;
  sub_2480123C0(v8, v9);
  v11 = sub_2480307A8();
  v12 = [objc_opt_self() messageWithData_];

  sub_2480081DC(v8, v10);
  v13 = sub_248030C78();
  v14 = sub_248030988();
  if (os_log_type_enabled(v14, v13))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_247F67000, v14, v13, "sendTimingInfoMessage, about to send", v15, 2u);
    MEMORY[0x24C1C47E0](v15, -1, -1);
  }

  v16 = *(v2 + 56);
  v25 = sub_2480174A0;
  v26 = 0;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v23 = sub_248023480;
  v24 = &unk_285A19748;
  v17 = _Block_copy(&aBlock);
  [v16 sendMessage:v12 replyHandler:v17];
  _Block_release(v17);
  v18 = sub_248030C78();
  v19 = sub_248030988();
  if (os_log_type_enabled(v19, v18))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_247F67000, v19, v18, "sendTimingInfoMessage, did send", v20, 2u);
    MEMORY[0x24C1C47E0](v20, -1, -1);
  }

  sub_2480081DC(v8, v10);
}

void sub_2480174AC(uint64_t a1, const char *a2)
{
  if (qword_27EE83A08 != -1)
  {
    swift_once();
  }

  v3 = sub_2480309A8();
  sub_248006DF0(v3, qword_27EE83D28);
  v4 = sub_248030C78();
  log = sub_248030988();
  if (os_log_type_enabled(log, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_247F67000, log, v4, a2, v5, 2u);
    MEMORY[0x24C1C47E0](v5, -1, -1);
  }
}

uint64_t CoreMLModelWriterServiceMessageHandler.deinit(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_27EE83A08 != -1)
  {
    swift_once();
  }

  v4 = sub_2480309A8();
  sub_248006DF0(v4, qword_27EE83D28);
  v5 = sub_248030C78();
  v6 = sub_248030988();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_247F67000, v6, v5, "ModelWriterService (Handler) - deinit invoked", v7, 2u);
    MEMORY[0x24C1C47E0](v7, -1, -1);
  }

  sub_248011838((v3 + 16));
  return v3;
}

uint64_t CoreMLModelWriterServiceMessageHandler.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  CoreMLModelWriterServiceMessageHandler.deinit(a1, a2);

  return MEMORY[0x2821FE8D8](v2, 64, 7);
}

uint64_t sub_2480176B8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2480078E4(&qword_27EE83C90, &unk_24803E820);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  v11 = sub_248030B28();
  v12 = [a1 stringForMessageKey_];

  if (v12)
  {
    v13 = sub_248030B38();
    v15 = v14;

    sub_2480307D8();
    v16 = sub_248030808();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v10, 1, v16) == 1)
    {
      sub_2480121CC(v10, &qword_27EE83C90, &unk_24803E820);
      v29 = sub_248030C88();
      if (qword_27EE839F8 != -1)
      {
        swift_once();
      }

      v18 = qword_27EE85A40;
      sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_24803E320;
      v20 = MEMORY[0x277D837D0];
      *(v19 + 56) = MEMORY[0x277D837D0];
      v21 = sub_24800A52C();
      *(v19 + 32) = a2;
      *(v19 + 40) = a3;
      *(v19 + 96) = v20;
      *(v19 + 104) = v21;
      *(v19 + 64) = v21;
      *(v19 + 72) = v13;
      *(v19 + 80) = v15;

      sub_2480308C8(v29, &dword_247F67000, v18, "%@ - unable to create ModelToken from model token string (%@)", 61, 2, v19);

      return (*(v17 + 56))(a4, 1, 1, v16);
    }

    else
    {

      (*(v17 + 32))(a4, v10, v16);
      return (*(v17 + 56))(a4, 0, 1, v16);
    }
  }

  else
  {
    v23 = sub_248030C88();
    if (qword_27EE839F8 != -1)
    {
      swift_once();
    }

    v24 = qword_27EE85A40;
    sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_24803DE50;
    *(v25 + 56) = MEMORY[0x277D837D0];
    *(v25 + 64) = sub_24800A52C();
    *(v25 + 32) = a2;
    *(v25 + 40) = a3;

    sub_2480308C8(v23, &dword_247F67000, v24, "%@ - no model token found in message", 36, 2, v25);

    v26 = sub_248030808();
    v27 = *(*(v26 - 8) + 56);

    return v27(a4, 1, 1, v26);
  }
}

void *sub_248017A84(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  a3[5] = a4;
  a3[6] = a5;
  v9 = sub_248012270(a3 + 2);
  (*(*(a4 - 8) + 32))(v9, a1, a4);
  a3[7] = a2;
  return a3;
}

unint64_t sub_248017AFC(uint64_t a1, uint64_t a2)
{
  v2 = sub_248030E58();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

uint64_t *sub_248017B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  (*(v9 + 16))(v11, a1, a4);
  v12[5] = a4;
  v12[6] = a5;
  v13 = sub_248012270(v12 + 2);
  (*(v9 + 32))(v13, v11, a4);
  v12[7] = a2;
  return v12;
}

uint64_t sub_248017D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_248017D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_248017E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CoreMLModelWriterServiceMessageHandler.ErrorResponse(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CoreMLModelWriterServiceMessageHandler.ErrorResponse(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_248017F18()
{
  result = qword_27EE83DC0;
  if (!qword_27EE83DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83DC0);
  }

  return result;
}

unint64_t sub_248017F70()
{
  result = qword_27EE83DC8;
  if (!qword_27EE83DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83DC8);
  }

  return result;
}

unint64_t sub_248017FC8()
{
  result = qword_27EE83DD0;
  if (!qword_27EE83DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83DD0);
  }

  return result;
}

unint64_t sub_248018020()
{
  result = qword_27EE83DD8;
  if (!qword_27EE83DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83DD8);
  }

  return result;
}

unint64_t sub_248018078()
{
  result = qword_27EE83DE0;
  if (!qword_27EE83DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83DE0);
  }

  return result;
}

unint64_t sub_2480180D0()
{
  result = qword_27EE83DE8;
  if (!qword_27EE83DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83DE8);
  }

  return result;
}

unint64_t sub_248018128()
{
  result = qword_27EE83DF0;
  if (!qword_27EE83DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83DF0);
  }

  return result;
}

unint64_t sub_248018180()
{
  result = qword_27EE83DF8;
  if (!qword_27EE83DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83DF8);
  }

  return result;
}

unint64_t sub_2480181D8()
{
  result = qword_27EE83E00;
  if (!qword_27EE83E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83E00);
  }

  return result;
}

uint64_t sub_248018230(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_248018248(uint64_t *a1)
{
  v2 = sub_248030B68();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  if (a1[2])
  {
    sub_248030648();
    swift_allocObject();
    sub_248030638();
    v12 = v6 + 101;
LABEL_5:
    sub_248018404();
    v7 = sub_248030628();

    return v7;
  }

  sub_248030B58();
  v7 = sub_248030B48();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  if (v9 >> 60 == 15)
  {
    sub_248030648();
    swift_allocObject();
    sub_248030638();
    v12 = 102;
    goto LABEL_5;
  }

  return v7;
}

unint64_t sub_248018404()
{
  result = qword_27EE83E10;
  if (!qword_27EE83E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83E10);
  }

  return result;
}

uint64_t sub_248018458(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2480184B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *a1;
  v4 = v2;
  sub_2480171CC(&v3, a2);
}

uint64_t sub_2480184EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2480078E4(&unk_27EE83FE0, &qword_24803DE60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for SegmentedModelState(uint64_t a1)
{
  result = qword_27EE83E20;
  if (!qword_27EE83E20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_248018628(uint64_t a1)
{
  result = type metadata accessor for SegmentationConfig(319);
  if (v2 <= 0x3F)
  {
    result = sub_248030778();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t PerfRunConfig.init(experimentIterations:loadCount:predictionCount:maxPredictionTime:maxIterationTime:functionName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t PerfRunConfig.functionName.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

__n128 sub_24801870C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_248018728(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_248018784(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

void sub_2480187F4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_248030B38();
    v4 = v3;

    qword_27EE83E30 = v2;
    *algn_27EE83E38 = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_248018880(uint64_t a1, uint64_t a2)
{
  v2 = sub_2480309A8();
  sub_248008A94(v2, qword_27EE85A60);
  sub_248006DF0(v2, qword_27EE85A60);
  if (qword_27EE83A10 != -1)
  {
    swift_once();
  }

  return sub_248030998();
}

uint64_t SegmentationConfig.init(segmentSizeInBytes:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for SegmentationConfig(0) + 20);
  v6 = sub_248030808();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t type metadata accessor for SegmentationConfig(uint64_t a1)
{
  result = qword_27EE83E58;
  if (!qword_27EE83E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_248018A24()
{
  v1 = *v0;
  sub_248030F98();
  MEMORY[0x24C1C1C00](v1);
  return sub_248030FB8();
}

uint64_t sub_248018A6C(uint64_t a1)
{
  v2 = *v1;
  sub_248030F98();
  MEMORY[0x24C1C1C00](v2);
  return sub_248030FB8();
}

uint64_t sub_248018AB0()
{
  if (*v0)
  {
    return 0x6E656B6F74;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_248018AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000024804E8E0 == a2 || (sub_248030EE8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_248030EE8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_248018BDC(uint64_t a1)
{
  v2 = sub_248018DF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248018C18(uint64_t a1)
{
  v2 = sub_248018DF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SegmentationConfig.encode(to:)(void *a1)
{
  v3 = sub_2480078E4(&qword_27EE83E40, &qword_24803E8C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  sub_2480118BC(a1, a1[3]);
  sub_248018DF8();
  sub_248030FE8();
  v8[15] = 0;
  sub_248030EA8();
  if (!v1)
  {
    type metadata accessor for SegmentationConfig(0);
    v8[14] = 1;
    sub_248030808();
    sub_24801222C(&qword_27EE83D50, MEMORY[0x277CC95F8]);
    sub_248030E98();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_248018DF8()
{
  result = qword_27EE83E48;
  if (!qword_27EE83E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83E48);
  }

  return result;
}

uint64_t SegmentationConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v21 = sub_248030808();
  v18 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2480078E4(&qword_27EE83E50, &qword_24803E8C8);
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = &v15 - v6;
  v8 = type metadata accessor for SegmentationConfig(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2480118BC(a1, a1[3]);
  sub_248018DF8();
  sub_248030FD8();
  if (!v2)
  {
    v17 = v8;
    v11 = v20;
    v12 = v21;
    v24 = 0;
    v13 = v22;
    *v10 = sub_248030E78();
    v23 = 1;
    sub_24801222C(&qword_27EE83D60, MEMORY[0x277CC9618]);
    v16 = v5;
    sub_248030E68();
    (*(v11 + 8))(v7, v13);
    (*(v18 + 32))(v10 + *(v17 + 20), v16, v12);
    sub_24801911C(v10, v19);
  }

  return sub_248011838(a1);
}

uint64_t sub_24801911C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SegmentationConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2480191D8(uint64_t a1)
{
  result = sub_248030808();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SegmentationConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SegmentationConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2480193B4()
{
  result = qword_27EE83E68;
  if (!qword_27EE83E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83E68);
  }

  return result;
}

unint64_t sub_24801940C()
{
  result = qword_27EE83E70;
  if (!qword_27EE83E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83E70);
  }

  return result;
}

unint64_t sub_248019464()
{
  result = qword_27EE83E78;
  if (!qword_27EE83E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83E78);
  }

  return result;
}

id ProcessorTraceRecorder.__allocating_init(configuration:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_2480309A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v2);
  *&v8[OBJC_IVAR___DTProcessorTraceRecorder_currentLiveRecording] = 0;
  v8[OBJC_IVAR___DTProcessorTraceRecorder_state] = 0;
  v9 = OBJC_IVAR___DTProcessorTraceRecorder_logger;
  if (qword_27EE83A18 != -1)
  {
    swift_once();
  }

  v10 = sub_248006DF0(v4, qword_27EE85A60);
  v11 = *(v5 + 16);
  v11(&v8[v9], v10, v4);
  v11(v7, v10, v4);
  sub_248030908();
  *&v8[OBJC_IVAR___DTProcessorTraceRecorder_configuration] = a1;
  v13.receiver = v8;
  v13.super_class = v2;
  return objc_msgSendSuper2(&v13, sel_init);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProcessorTraceRecorder.startRecording()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_2480308F8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  sub_2480308E8();
  v11 = sub_248030918();
  v12 = sub_248030CE8();
  if (sub_248030D28())
  {
    v13 = swift_slowAlloc();
    v30 = v1;
    v14 = v13;
    *v13 = 0;
    v15 = sub_2480308D8();
    _os_signpost_emit_with_name_impl(&dword_247F67000, v11, v12, v15, "start", "", v14, 2u);
    v16 = v14;
    v3 = v0;
    v2 = v30;
    MEMORY[0x24C1C47E0](v16, -1, -1);
  }

  (*(v5 + 16))(v8, v10, v4);
  sub_248030968();
  swift_allocObject();
  v17 = sub_248030958();
  (*(v5 + 8))(v10, v4);
  v18 = OBJC_IVAR___DTProcessorTraceRecorder_state;
  if (*(v3 + OBJC_IVAR___DTProcessorTraceRecorder_state))
  {
    if (*(v3 + OBJC_IVAR___DTProcessorTraceRecorder_state) != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_5;
  }

  v25 = sub_24801B41C(*(v3 + OBJC_IVAR___DTProcessorTraceRecorder_configuration));
  if (!v2)
  {
    *(v3 + OBJC_IVAR___DTProcessorTraceRecorder_currentLiveRecording) = v25;
    if (*(v3 + v18) != 1)
    {
      goto LABEL_11;
    }

LABEL_5:
    if (*(v3 + OBJC_IVAR___DTProcessorTraceRecorder_currentLiveRecording))
    {
      v19 = hwtrace_live_recording_start();
      if (!v19)
      {
        *(v3 + v18) = 2;
        goto LABEL_15;
      }

      v20 = v19;
      v21 = sub_248030988();
      v22 = sub_248030C88();
      if (!os_log_type_enabled(v21, v22))
      {
        goto LABEL_14;
      }

      v23 = swift_slowAlloc();
      *v23 = 67109120;
      *(v23 + 4) = v20;
      _os_log_impl(&dword_247F67000, v21, v22, "Failed to start recording: %d", v23, 8u);
      v24 = v23;
      goto LABEL_13;
    }

LABEL_11:
    v21 = sub_248030988();
    v26 = sub_248030C88();
    if (!os_log_type_enabled(v21, v26))
    {
LABEL_14:

      sub_24801C0A4();
      swift_allocError();
      *v28 = 1;
      swift_willThrow();
      goto LABEL_15;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_247F67000, v21, v26, "Recording is not in configured state or is not initialized.", v27, 2u);
    v24 = v27;
LABEL_13:
    MEMORY[0x24C1C47E0](v24, -1, -1);
    goto LABEL_14;
  }

LABEL_15:
  sub_24801BD00(v3, v17, "start");
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProcessorTraceRecorder.stopRecording()()
{
  v2 = v0;
  v3 = sub_2480308F8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v29 - v8;
  sub_2480308E8();
  v10 = sub_248030918();
  v11 = sub_248030CE8();
  if (sub_248030D28())
  {
    v12 = swift_slowAlloc();
    v29[1] = v1;
    v13 = v12;
    *v12 = 0;
    v14 = sub_2480308D8();
    _os_signpost_emit_with_name_impl(&dword_247F67000, v10, v11, v14, "stop", "", v13, 2u);
    v15 = v13;
    v2 = v0;
    MEMORY[0x24C1C47E0](v15, -1, -1);
  }

  (*(v4 + 16))(v7, v9, v3);
  sub_248030968();
  swift_allocObject();
  v16 = sub_248030958();
  (*(v4 + 8))(v9, v3);
  v17 = OBJC_IVAR___DTProcessorTraceRecorder_state;
  v18 = *(v2 + OBJC_IVAR___DTProcessorTraceRecorder_state);
  if (v18 != 2)
  {
LABEL_6:
    if (v18 == 3 && *(v2 + OBJC_IVAR___DTProcessorTraceRecorder_currentLiveRecording))
    {
      v20 = hwtrace_live_recording_stop();
      if (!v20)
      {
        *(v2 + v17) = 4;
        goto LABEL_15;
      }

      v21 = v20;
      v22 = sub_248030988();
      v23 = sub_248030C88();
      if (!os_log_type_enabled(v22, v23))
      {
        goto LABEL_14;
      }

      v24 = swift_slowAlloc();
      *v24 = 67109120;
      *(v24 + 4) = v21;
      _os_log_impl(&dword_247F67000, v22, v23, "Failed to stop recording: %d", v24, 8u);
      v25 = v24;
    }

    else
    {
      v22 = sub_248030988();
      v26 = sub_248030C88();
      if (!os_log_type_enabled(v22, v26))
      {
LABEL_14:

        sub_24801C0A4();
        swift_allocError();
        *v28 = 4;
        swift_willThrow();
        goto LABEL_15;
      }

      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_247F67000, v22, v26, "Failed to stop recording", v27, 2u);
      v25 = v27;
    }

    MEMORY[0x24C1C47E0](v25, -1, -1);
    goto LABEL_14;
  }

  ProcessorTraceRecorder.pauseRecording()();
  if (!v19)
  {
    v18 = *(v2 + v17);
    goto LABEL_6;
  }

LABEL_15:
  sub_24801BD00(v2, v16, "stop");
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProcessorTraceRecorder.pauseRecording()()
{
  v2 = v0;
  v3 = sub_2480308F8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v29 - v8;
  sub_2480308E8();
  v10 = sub_248030918();
  v11 = sub_248030CE8();
  if (sub_248030D28())
  {
    v12 = swift_slowAlloc();
    v29[1] = v1;
    v13 = v12;
    *v12 = 0;
    v14 = sub_2480308D8();
    _os_signpost_emit_with_name_impl(&dword_247F67000, v10, v11, v14, "pause", "", v13, 2u);
    v15 = v13;
    v2 = v0;
    MEMORY[0x24C1C47E0](v15, -1, -1);
  }

  (*(v4 + 16))(v7, v9, v3);
  sub_248030968();
  swift_allocObject();
  v16 = sub_248030958();
  (*(v4 + 8))(v9, v3);
  if (*(v2 + OBJC_IVAR___DTProcessorTraceRecorder_currentLiveRecording))
  {
    v17 = hwtrace_live_recording_pause();
    if (!v17)
    {
      *(v2 + OBJC_IVAR___DTProcessorTraceRecorder_state) = 3;
      goto LABEL_12;
    }

    v18 = v17;
    v19 = sub_248030988();
    v20 = sub_248030C88();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 67109120;
      *(v21 + 1) = v18;
      v22 = "Failed to pause recording: %d";
      v23 = v20;
      v24 = v19;
      v25 = v21;
      v26 = 8;
LABEL_9:
      _os_log_impl(&dword_247F67000, v24, v23, v22, v25, v26);
      MEMORY[0x24C1C47E0](v21, -1, -1);
    }
  }

  else
  {
    v19 = sub_248030988();
    v27 = sub_248030C88();
    if (os_log_type_enabled(v19, v27))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = "Failed to pause recording. currentLiveRecording is nil.";
      v23 = v27;
      v24 = v19;
      v25 = v21;
      v26 = 2;
      goto LABEL_9;
    }
  }

  sub_24801C0A4();
  swift_allocError();
  *v28 = 2;
  swift_willThrow();
LABEL_12:
  sub_24801BD00(v2, v16, "pause");
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProcessorTraceRecorder.unpauseRecording()()
{
  v2 = v0;
  v3 = sub_2480308F8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v21 - v8;
  sub_2480308E8();
  v10 = sub_248030918();
  v11 = sub_248030CE8();
  if (sub_248030D28())
  {
    v12 = swift_slowAlloc();
    v21[1] = v1;
    v13 = v12;
    *v12 = 0;
    v14 = sub_2480308D8();
    _os_signpost_emit_with_name_impl(&dword_247F67000, v10, v11, v14, "unpause", "", v13, 2u);
    MEMORY[0x24C1C47E0](v13, -1, -1);
  }

  (*(v4 + 16))(v7, v9, v3);
  sub_248030968();
  swift_allocObject();
  v15 = sub_248030958();
  (*(v4 + 8))(v9, v3);
  v16 = OBJC_IVAR___DTProcessorTraceRecorder_state;
  if (*(v2 + OBJC_IVAR___DTProcessorTraceRecorder_state) == 3 && *(v2 + OBJC_IVAR___DTProcessorTraceRecorder_currentLiveRecording))
  {
    hwtrace_live_recording_resume();
    *(v2 + v16) = 2;
  }

  else
  {
    v17 = sub_248030988();
    v18 = sub_248030C88();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_247F67000, v17, v18, "Failed to unpause recording", v19, 2u);
      MEMORY[0x24C1C47E0](v19, -1, -1);
    }

    sub_24801C0A4();
    swift_allocError();
    *v20 = 3;
    swift_willThrow();
  }

  sub_24801BD00(v2, v15, "unpause");
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProcessorTraceRecorder.saveRecording(fd:)(Swift::Int32 fd)
{
  v90 = *MEMORY[0x277D85DE8];
  v3 = sub_2480308F8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v72 - v8;
  sub_2480308E8();
  v80 = v1;
  v10 = sub_248030918();
  v11 = sub_248030CE8();
  if (sub_248030D28())
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_2480308D8();
    _os_signpost_emit_with_name_impl(&dword_247F67000, v10, v11, v13, "save", "", v12, 2u);
    MEMORY[0x24C1C47E0](v12, -1, -1);
  }

  (*(v4 + 16))(v7, v9, v3);
  sub_248030968();
  swift_allocObject();
  v14 = sub_248030958();
  (*(v4 + 8))(v9, v3);
  if (fd < 0)
  {
    v16 = v80;
    v26 = sub_248030988();
    v27 = sub_248030C88();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 67109120;
      *(v28 + 1) = fd;
      v29 = "Invalid file descriptor %d";
      v30 = v27;
      v31 = v26;
      v32 = v28;
      v33 = 8;
LABEL_15:
      _os_log_impl(&dword_247F67000, v31, v30, v29, v32, v33);
      MEMORY[0x24C1C47E0](v28, -1, -1);
    }

LABEL_16:

    sub_24801C0A4();
    swift_allocError();
    *v35 = 6;
    swift_willThrow();
LABEL_23:
    sub_24801BD00(v16, v14, "save");

    return;
  }

  v15 = ktrace_file_create_fd();
  v16 = v80;
  if (!v15)
  {
    v26 = sub_248030988();
    v34 = sub_248030C88();
    if (os_log_type_enabled(v26, v34))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "Can't create ktrace file";
      v30 = v34;
      v31 = v26;
      v32 = v28;
      v33 = 2;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v17 = OBJC_IVAR___DTProcessorTraceRecorder_state;
  if (*(v80 + OBJC_IVAR___DTProcessorTraceRecorder_state) != 4)
  {
    ProcessorTraceRecorder.stopRecording()();
    if (v36)
    {
      goto LABEL_22;
    }

    v79 = 0;
    if (*(v16 + v17) != 4)
    {
      goto LABEL_19;
    }
  }

  v18 = OBJC_IVAR___DTProcessorTraceRecorder_currentLiveRecording;
  if (!*(v16 + OBJC_IVAR___DTProcessorTraceRecorder_currentLiveRecording))
  {
LABEL_19:
    v37 = sub_248030988();
    v38 = sub_248030C88();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_247F67000, v37, v38, "Failed to save the recording", v39, 2u);
      MEMORY[0x24C1C47E0](v39, -1, -1);
    }

    sub_24801C0A4();
    swift_allocError();
    *v40 = 6;
    swift_willThrow();
    goto LABEL_22;
  }

  v19 = hwtrace_live_recording_postprocess_options_init();
  hwtrace_live_recording_postprocess_options_set_ktrace_session();
  v20 = hwtrace_live_recording_postprocess();
  if (v20)
  {
    v21 = v20;
    v22 = sub_248030988();
    v23 = sub_248030C88();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 67109120;
      *(v24 + 4) = v21;
      _os_log_impl(&dword_247F67000, v22, v23, "Failed to postprocess recording: %d", v24, 8u);
      MEMORY[0x24C1C47E0](v24, -1, -1);
    }

    sub_24801C0A4();
    swift_allocError();
    *v25 = 5;
    swift_willThrow();
    hwtrace_live_recording_postprocess_options_deinit();
    goto LABEL_22;
  }

  v78 = v19;
  hwtrace_live_recording_finalize_postprocessing();
  v89 = 0;
  v41 = hwtrace_recording_init_from_live_recording();
  if (v41 || (v46 = v89) == 0)
  {
    v42 = sub_248030988();
    v43 = sub_248030C88();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 67109120;
      *(v44 + 4) = v41;
      _os_log_impl(&dword_247F67000, v42, v43, "Failed to init recording from live recording: %d", v44, 8u);
      MEMORY[0x24C1C47E0](v44, -1, -1);
    }

    sub_24801C0A4();
    swift_allocError();
    *v45 = 6;
    swift_willThrow();
    goto LABEL_28;
  }

  v16 = v80;
  v47 = *(*(v80 + OBJC_IVAR___DTProcessorTraceRecorder_configuration) + OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_copyImagesOnSave);
  v74 = *(v80 + OBJC_IVAR___DTProcessorTraceRecorder_configuration);
  if (v47 > 1)
  {
    options_init = hwtrace_load_options_init();
    if (options_init)
    {
      v55 = options_init;
      v88 = 0;
      if (!hwtrace_trace_init_from_recording())
      {
        v72[0] = v55;
        v72[1] = v46;
        hwtrace_trace_topology();
        v83 = 0;
        v87 = 0;
        hwtrace_topology_systems();
        v62 = v87;
        if (v87 && v83)
        {
          v73 = v87 + 8 * v83;
          do
          {
            v75 = v62;
            v82 = 0;
            v86 = 0;
            hwtrace_system_tasks();
            v63 = v86;
            if (v86 && v82)
            {
              v76 = 0;
              v64 = v86 + 8 * v82;
              v77 = v64;
              do
              {
                v81 = 0;
                v85 = 0;
                hwtrace_task_threads();
                v65 = v85;
                if (v85)
                {
                  if (v81)
                  {
                    v66 = v85 + 8 * v81;
                    while (2)
                    {
                      while (1)
                      {
                        v65 += 8;
                        v84 = 0;
                        v67 = hwtrace_cursor_init_from_thread();
                        if (v84 && v67 == 0)
                        {
                          break;
                        }

                        if (v65 == v66)
                        {
                          v70 = 0;
                          goto LABEL_63;
                        }
                      }

                      do
                      {
                        hwtrace_cursor_range();
                        v69 = hwtrace_range_terminator();
                        v70 = v69 == 1;
                        if (v69 == 1)
                        {
                          v76 = 1;
                          goto LABEL_63;
                        }
                      }

                      while (!hwtrace_cursor_next_range());
                      if (v65 != v66)
                      {
                        continue;
                      }

                      break;
                    }

LABEL_63:
                    v64 = v77;
                  }

                  else
                  {
                    v70 = 0;
                  }
                }

                else
                {
                  v70 = 0;
                }

                v63 += 8;
              }

              while (v63 != v64 && !v70);
              v71 = v76;
            }

            else
            {
              v71 = 0;
            }

            v62 = v75 + 8;
          }

          while (v75 + 8 != v73 && (v71 & 1) == 0);
        }

        hwtrace_trace_deinit();
        hwtrace_load_options_deinit();
        goto LABEL_31;
      }

      sub_24801C0A4();
      swift_allocError();
      *v56 = 7;
      swift_willThrow();
      hwtrace_load_options_deinit();
      hwtrace_recording_deinit();
      hwtrace_live_recording_postprocess_options_deinit();
    }

    else
    {
      sub_24801C0A4();
      swift_allocError();
      *v61 = 7;
      swift_willThrow();
      hwtrace_recording_deinit();
      hwtrace_live_recording_postprocess_options_deinit();
    }

LABEL_22:
    ktrace_file_close();
    goto LABEL_23;
  }

LABEL_31:
  hwtrace_recording_save_options_init();
  hwtrace_recording_save_options_set_ktrace_file();
  hwtrace_recording_save_options_set_port_mode();
  hwtrace_recording_save_options_set_decode_trace();
  hwtrace_recording_save_options_set_decode_compression();
  v48 = hwtrace_recording_save();
  if (v48)
  {
    v49 = v48;
    v50 = sub_248030988();
    v51 = sub_248030C88();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 67109120;
      *(v52 + 4) = v49;
      _os_log_impl(&dword_247F67000, v50, v51, "Failed to save recording: %d", v52, 8u);
      MEMORY[0x24C1C47E0](v52, -1, -1);
    }

    sub_24801C0A4();
    swift_allocError();
    *v53 = 6;
    swift_willThrow();
    hwtrace_recording_save_options_deinit();
LABEL_28:
    hwtrace_recording_deinit();
    hwtrace_live_recording_postprocess_options_deinit();
    ktrace_file_close();
    v16 = v80;
    goto LABEL_23;
  }

  hwtrace_live_recording_deinit();
  v57 = v80;
  *(v80 + v18) = 0;
  *(v57 + v17) = 0;
  v58 = sub_248030988();
  v59 = sub_248030C68();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_247F67000, v58, v59, "Successfully saved recording to tracev3 file.", v60, 2u);
    MEMORY[0x24C1C47E0](v60, -1, -1);
  }

  hwtrace_recording_save_options_deinit();
  hwtrace_recording_deinit();
  hwtrace_live_recording_postprocess_options_deinit();
  ktrace_file_close();
  sub_24801BD00(v80, v14, "save");
}

uint64_t static ProcessorTraceRecorder.recordingVersionString.getter(uint64_t a1, uint64_t a2)
{
  v2 = hwtrace_version_info();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_248030BA8();
  MEMORY[0x24C1C47E0](v3, -1, -1);
  return v4;
}

id ProcessorTraceRecorder.init(configuration:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_2480309A8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR___DTProcessorTraceRecorder_currentLiveRecording] = 0;
  v2[OBJC_IVAR___DTProcessorTraceRecorder_state] = 0;
  v9 = OBJC_IVAR___DTProcessorTraceRecorder_logger;
  if (qword_27EE83A18 != -1)
  {
    swift_once();
  }

  v10 = sub_248006DF0(v5, qword_27EE85A60);
  v11 = *(v6 + 16);
  v11(&v2[v9], v10, v5);
  v11(v8, v10, v5);
  sub_248030908();
  *&v2[OBJC_IVAR___DTProcessorTraceRecorder_configuration] = a1;
  v13.receiver = v2;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

id ProcessorTraceRecorder.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (*&v2[OBJC_IVAR___DTProcessorTraceRecorder_currentLiveRecording])
  {
    hwtrace_live_recording_deinit();
  }

  v5.receiver = v2;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

NSObject *sub_24801B41C(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (hwtrace_live_topology())
  {
    v12 = v1;
    hwtrace_live_recording_options_init();
    v14 = 0;
    hwtrace_live_topology_systems();
    hwtrace_live_recording_options_set_session_policy();
    v13 = 0;
    v2 = hwtrace_live_recording_init_with_options();
    v3 = v13;
    if (v13)
    {
      *(v12 + OBJC_IVAR___DTProcessorTraceRecorder_state) = 1;
      hwtrace_live_recording_options_deinit();
    }

    else
    {
      v7 = v2;
      v3 = sub_248030988();
      v8 = sub_248030C88();
      if (os_log_type_enabled(v3, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 67109120;
        *(v9 + 4) = v7;
        _os_log_impl(&dword_247F67000, v3, v8, "Failed to initialize recording: %d", v9, 8u);
        MEMORY[0x24C1C47E0](v9, -1, -1);
      }

      sub_24801C0A4();
      swift_allocError();
      *v10 = 0;
      swift_willThrow();
      hwtrace_live_recording_options_deinit();
    }
  }

  else
  {
    v4 = sub_248030988();
    v3 = sub_248030C88();
    if (os_log_type_enabled(v4, v3))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_247F67000, v4, v3, "Failed to initialize hwtrace_live_topology.", v5, 2u);
      MEMORY[0x24C1C47E0](v5, -1, -1);
    }

    sub_24801C0A4();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_24801BC7C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = a1;
  a4();

  return 1;
}

uint64_t sub_24801BD00(uint64_t a1, uint64_t a2, const char *a3)
{
  v18 = a3;
  v3 = sub_248030938();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2480308F8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_248030918();
  sub_248030948();
  v12 = sub_248030CD8();
  if (sub_248030D28())
  {

    sub_248030978();

    if ((*(v4 + 88))(v6, v3) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v6, v3);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_2480308D8();
    _os_signpost_emit_with_name_impl(&dword_247F67000, v11, v12, v15, v18, v13, v14, 2u);
    MEMORY[0x24C1C47E0](v14, -1, -1);
  }

  return (*(v8 + 8))(v10, v7);
}

id ProcessorTraceRecorder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_24801C0A4()
{
  result = qword_27EE83EA8;
  if (!qword_27EE83EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83EA8);
  }

  return result;
}

uint64_t _s24DVTInstrumentsFoundation22ProcessorTraceRecorderC22supportsVABufferForXNUSbvgZ_0()
{
  result = hwtrace_live_topology();
  if (result)
  {
    hwtrace_live_topology_systems();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for ProcessorTraceRecorder(uint64_t a1)
{
  result = qword_27EE83EB0;
  if (!qword_27EE83EB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24801C264(uint64_t a1, uint64_t a2)
{
  result = sub_2480309A8();
  if (v3 <= 0x3F)
  {
    result = sub_248030928();
    if (v4 <= 0x3F)
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

uint64_t getEnumTagSinglePayload for ProcessorTraceRecorder.RecordingState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ProcessorTraceRecorder.RecordingState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ProcessorTraceRecorder.ProcessorTraceRecorderError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProcessorTraceRecorder.ProcessorTraceRecorderError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24801C628()
{
  result = qword_27EE83EC0;
  if (!qword_27EE83EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83EC0);
  }

  return result;
}

unint64_t sub_24801C680()
{
  result = qword_27EE83EC8;
  if (!qword_27EE83EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE83EC8);
  }

  return result;
}

void sub_24801C7C8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = sub_248030808();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_248030778();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24801CB50(v3, v12);
  if (!v2)
  {
    v20[1] = 0;
    sub_2480307F8();
    sub_2480307E8();
    sub_2480306F8();

    v13 = [objc_opt_self() defaultManager];
    v20[0] = a2;
    v14 = sub_2480306E8();
    v21[0] = 0;
    v15 = [v13 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:v21];

    if (v15)
    {
      v16 = *(v6 + 8);
      v17 = v21[0];
      v16(v8, v5);
      (*(v10 + 8))(v12, v9);
    }

    else
    {
      v18 = v21[0];
      sub_2480306B8();

      swift_willThrow();
      v19 = *(v10 + 8);
      v19(v20[0], v9);
      (*(v6 + 8))(v8, v5);
      v19(v12, v9);
    }
  }
}

uint64_t sub_24801CA88(uint64_t a1, uint64_t a2)
{
  v2 = sub_2480309A8();
  sub_248008A94(v2, qword_27EE83ED0);
  v3 = sub_248006DF0(v2, qword_27EE83ED0);
  if (qword_27EE83A00 != -1)
  {
    swift_once();
  }

  v4 = sub_248006DF0(v2, qword_27EE85A48);
  v5 = *(*(v2 - 8) + 16);

  return v5(v3, v4, v2);
}

void sub_24801CB50(char a1@<W0>, char *a2@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = sub_248030778();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() defaultManager];
  v9 = [v8 temporaryDirectory];
  sub_248030728();

  sub_2480306F8();
  v10 = *(v5 + 8);
  v10(v7, v4);
  v11 = &unk_24803D000;
  v12 = MEMORY[0x277D837D0];
  if (a1)
  {
    v44 = 1;
    sub_248030748();
    v13 = sub_248030B28();

    v14 = [v8 fileExistsAtPath:v13 isDirectory:&v44];

    v15 = sub_248030C78();
    if (v14)
    {
      if (qword_27EE839F8 != -1)
      {
        v37 = v15;
        swift_once();
        v15 = v37;
      }

      sub_2480308C8(v15, &dword_247F67000, qword_27EE85A40, "Core ML temp folder already exists", 34, 2, MEMORY[0x277D84F90]);
      v12 = MEMORY[0x277D837D0];
    }

    else
    {
      v42 = v15;
      if (qword_27EE839F8 != -1)
      {
        swift_once();
      }

      v16 = qword_27EE85A40;
      v41 = sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
      v17 = swift_allocObject();
      v40 = xmmword_24803DE50;
      *(v17 + 16) = xmmword_24803DE50;
      v18 = sub_248030748();
      v20 = v19;
      *(v17 + 56) = MEMORY[0x277D837D0];
      v39 = sub_24800A52C();
      *(v17 + 64) = v39;
      *(v17 + 32) = v18;
      *(v17 + 40) = v20;
      sub_2480308C8(v42, &dword_247F67000, v16, "About to create Core ML temp folder %@", 38, 2, v17);

      v21 = sub_2480306E8();
      v43 = 0;
      LODWORD(v17) = [v8 createDirectoryAtURL:v21 withIntermediateDirectories:1 attributes:0 error:&v43];

      if (!v17)
      {
        v36 = v43;
        sub_2480306B8();

        swift_willThrow();
        v10(a2, v4);
        return;
      }

      v22 = v43;
      v23 = sub_248030C78();
      v24 = swift_allocObject();
      *(v24 + 16) = v40;
      v25 = sub_248030748();
      v26 = MEMORY[0x277D837D0];
      v27 = v39;
      *(v24 + 56) = MEMORY[0x277D837D0];
      *(v24 + 64) = v27;
      *(v24 + 32) = v25;
      *(v24 + 40) = v28;
      sub_2480308C8(v23, &dword_247F67000, v16, "Created Core ML temp folder %@", 30, 2, v24);

      v12 = v26;
    }

    v11 = &unk_24803D000;
  }

  v29 = v12;
  v30 = sub_248030C78();
  if (qword_27EE839F8 != -1)
  {
    swift_once();
  }

  v31 = qword_27EE85A40;
  sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
  v32 = swift_allocObject();
  *(v32 + 16) = v11[229];
  v33 = sub_248030748();
  v35 = v34;
  *(v32 + 56) = v29;
  *(v32 + 64) = sub_24800A52C();
  *(v32 + 32) = v33;
  *(v32 + 40) = v35;
  sub_2480308C8(v30, &dword_247F67000, v31, "Core ML temp folder is %@", 25, 2, v32);
}

uint64_t sub_24801D070@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v89 = *MEMORY[0x277D85DE8];
  v3 = sub_248030808();
  v81 = *(v3 - 8);
  v82 = v3;
  MEMORY[0x28223BE20](v3);
  v80 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_248030778();
  v83 = *(v5 - 8);
  v84 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v70 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v70 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v85 = &v70 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v70 - v17;
  v19 = a1[1];
  v77 = *a1;
  v78 = v19;
  v20 = a1[3];
  v21 = *(a1 + 32);
  v87 = a1[2];
  v88 = v20;

  MEMORY[0x24C1C17F0](46, 0xE100000000000000);
  if (v21)
  {
    v22 = 0x67616B6361706C6DLL;
  }

  else
  {
    v22 = 0x6C65646F6D6C6DLL;
  }

  if (v21)
  {
    v23 = 0xE900000000000065;
  }

  else
  {
    v23 = 0xE700000000000000;
  }

  MEMORY[0x24C1C17F0](v22, v23);

  v24 = v87;
  v25 = v88;
  v26 = v18;
  v27 = v86;
  sub_24801CB50(1, v18);
  if (v27)
  {
  }

  v73 = v24;
  v74 = 0;
  v86 = v25;
  v76 = v14;
  v75 = v21;
  v71 = v11;
  v72 = v8;
  v29 = v80;
  sub_2480307F8();
  sub_2480307E8();
  sub_2480306F8();

  v30 = [objc_opt_self() defaultManager];
  v31 = sub_2480306E8();
  v87 = 0;
  v32 = [v30 createDirectoryAtURL:v31 withIntermediateDirectories:1 attributes:0 error:&v87];

  if (v32)
  {
    v33 = v76;
    v34 = *(v83 + 8);
    v35 = v87;
    v36 = v84;
    v34(v85, v84);
    v34(v26, v36);
    v37 = v79;
    (*(v81 + 32))(v79, v29, v82);
    v38 = type metadata accessor for ModelLocation(0);
    v39 = (v37 + *(v38 + 20));
    v40 = v74;
    v41 = v86;
    *v39 = v73;
    v39[1] = v41;
    *(v37 + *(v38 + 24)) = v75;
    sub_248029190(v33);
    if (v40)
    {
      return sub_248023178(v37);
    }

    else
    {
      v86 = v34;
      v45 = sub_248030C78();
      if (qword_27EE839F8 != -1)
      {
        swift_once();
      }

      v46 = qword_27EE85A40;
      sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_24803DE50;
      v48 = sub_248030748();
      v50 = v49;
      *(v47 + 56) = MEMORY[0x277D837D0];
      *(v47 + 64) = sub_24800A52C();
      *(v47 + 32) = v48;
      *(v47 + 40) = v50;
      sub_2480308C8(v45, &dword_247F67000, v46, "ModelWriter will write model to %@", 34, 2, v47);

      if (v75)
      {
        v51 = v71;
        sub_248030718();
        sub_248030708();
        sub_2480307C8();
        v52 = v84;
        if (qword_27EE83A20 != -1)
        {
          swift_once();
        }

        v53 = sub_2480309A8();
        sub_248006DF0(v53, qword_27EE83ED0);
        v54 = sub_248030988();
        v55 = sub_248030C98();
        v56 = os_log_type_enabled(v54, v55);
        v60 = v86;
        if (v56)
        {
          v57 = swift_slowAlloc();
          *v57 = 0;
          _os_log_impl(&dword_247F67000, v54, v55, "successfully wrote archive file to disk", v57, 2u);
          v58 = v57;
          v52 = v84;
          MEMORY[0x24C1C47E0](v58, -1, -1);
        }

        v59 = v72;
        sub_248021F60(v72, v76);
        v61 = sub_248030988();
        v62 = sub_248030C98();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 0;
          _os_log_impl(&dword_247F67000, v61, v62, "successfully decompressed archive file", v63, 2u);
          v64 = v63;
          v52 = v84;
          MEMORY[0x24C1C47E0](v64, -1, -1);
        }

        v60(v59, v52);
        v60(v51, v52);
      }

      else
      {
        sub_2480307C8();
        v52 = v84;
        v60 = v86;
      }

      if (qword_27EE83A20 != -1)
      {
        swift_once();
      }

      v65 = sub_2480309A8();
      sub_248006DF0(v65, qword_27EE83ED0);
      v66 = sub_248030988();
      v67 = sub_248030C98();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&dword_247F67000, v66, v67, "successfully wrote model to disk", v68, 2u);
        v69 = v68;
        v52 = v84;
        MEMORY[0x24C1C47E0](v69, -1, -1);
      }

      return (v60)(v76, v52);
    }
  }

  else
  {
    v42 = v87;

    sub_2480306B8();

    swift_willThrow();
    v43 = v84;
    v44 = *(v83 + 8);
    v44(v85, v84);
    (*(v81 + 8))(v29, v82);
    return (v44)(v18, v43);
  }
}

uint64_t sub_24801D93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v91 = a3;
  v103[2] = *MEMORY[0x277D85DE8];
  v102 = sub_248030778();
  v6 = *(v102 - 8);
  v7 = MEMORY[0x28223BE20](v102);
  v88 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v101 = &v85 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v85 - v11;
  v99 = sub_2480306C8();
  v13 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v98 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = objc_opt_self();
  v15 = [v92 defaultManager];
  v16 = a2;
  sub_248030738();
  v17 = sub_248030B28();

  v103[0] = 0;
  v18 = [v15 contentsOfDirectoryAtPath:v17 error:v103];

  v19 = v103[0];
  if (v18)
  {
    v100 = v12;
    v20 = sub_248030BE8();
    v21 = v19;

    MEMORY[0x28223BE20](v22);
    *(&v85 - 2) = v16;
    v23 = sub_24801ECCC(sub_248022E70, (&v85 - 4), v20);

    MEMORY[0x28223BE20](v24);
    *(&v85 - 2) = a1;
    v103[0] = sub_24801EF10(sub_248022E90, (&v85 - 4), v23);

    sub_24801F7CC(v103);
    v25 = v3;
    if (!v3)
    {

      v26 = v103[0];
      v103[0] = sub_2480307E8();
      v103[1] = v27;
      v29 = v98;
      v28 = v99;
      (*(v13 + 104))(v98, *MEMORY[0x277CC91D8], v99);
      sub_2480219D0();
      sub_248030768();
      (*(v13 + 8))(v29, v28);

      v30 = sub_248030C78();
      if (qword_27EE839F8 != -1)
      {
        goto LABEL_25;
      }

      while (1)
      {
        v96 = qword_27EE85A40;
        v90 = sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
        v31 = swift_allocObject();
        v32 = v31;
        v95 = xmmword_24803DE50;
        *(v31 + 16) = xmmword_24803DE50;
        v33 = v26;
        v34 = *(v26 + 16);
        v35 = MEMORY[0x277D84F90];
        v93 = v6;
        v94 = v33;
        if (v34)
        {
          v86 = v31;
          v87 = v30;
          v89 = v25;
          v103[0] = MEMORY[0x277D84F90];
          sub_248021088(0, v34, 0);
          v35 = v103[0];
          v37 = *(v6 + 16);
          v36 = v6 + 16;
          v38 = v33 + ((*(v36 + 64) + 32) & ~*(v36 + 64));
          v97 = *(v36 + 56);
          v98 = v37;
          v99 = v36;
          v39 = (v36 - 8);
          do
          {
            v41 = v101;
            v40 = v102;
            (v98)(v101, v38, v102);
            v42 = sub_248030738();
            v44 = v43;
            (*v39)(v41, v40);
            v103[0] = v35;
            v46 = v35[2];
            v45 = v35[3];
            if (v46 >= v45 >> 1)
            {
              sub_248021088((v45 > 1), v46 + 1, 1);
              v35 = v103[0];
            }

            v35[2] = v46 + 1;
            v47 = &v35[2 * v46];
            v47[4] = v42;
            v47[5] = v44;
            v38 += v97;
            --v34;
          }

          while (v34);
          v6 = v93;
          v25 = v89;
          v30 = v87;
          v32 = v86;
        }

        v103[0] = v35;
        sub_2480078E4(&qword_27EE83F10, &qword_24803EC40);
        sub_248022EB0(&qword_27EE83F18, &qword_27EE83F10, &qword_24803EC40, MEMORY[0x277D83958]);
        v48 = sub_248030B08();
        v50 = v49;

        v32[7] = MEMORY[0x277D837D0];
        v51 = sub_24800A52C();
        v32[8] = v51;
        v32[4] = v48;
        v32[5] = v50;
        v52 = v30;
        v30 = v96;
        sub_2480308C8(v52, &dword_247F67000, v96, "assembleSegments: Found segments: %@", 36, 2, v32);

        v53 = sub_248030C78();
        v54 = swift_allocObject();
        *(v54 + 16) = v95;
        v55 = sub_248030738();
        *(v54 + 56) = MEMORY[0x277D837D0];
        *(v54 + 64) = v51;
        v99 = v51;
        *(v54 + 32) = v55;
        *(v54 + 40) = v56;
        sub_2480308C8(v53, &dword_247F67000, v30, "assembleSegments: Begin merging segments into: %@", 49, 2, v54);

        v57 = v94;
        v101 = *(v94 + 16);
        if (v101)
        {
          break;
        }

LABEL_15:
        v89 = v25;
        v64 = sub_248030C78();
        v30 = v90;
        v65 = swift_allocObject();
        *(v65 + 16) = v95;
        v66 = sub_248030738();
        v67 = v99;
        *(v65 + 56) = MEMORY[0x277D837D0];
        *(v65 + 64) = v67;
        *(v65 + 32) = v66;
        *(v65 + 40) = v68;
        sub_2480308C8(v64, &dword_247F67000, v96, "assembleSegments: Finished merging segments into: %@", 52, 2, v65);

        if (!v101)
        {
        }

        v26 = 0;
        v69 = v6;
        v6 += 16;
        v70 = (v69 + 8);
        v25 = v88;
        v71 = v102;
        while (v26 < *(v57 + 16))
        {
          (*(v93 + 16))(v25, v57 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v26, v71);
          v72 = sub_248030C78();
          v73 = swift_allocObject();
          *(v73 + 16) = v95;
          v74 = sub_248030738();
          v75 = v99;
          *(v73 + 56) = MEMORY[0x277D837D0];
          *(v73 + 64) = v75;
          *(v73 + 32) = v74;
          *(v73 + 40) = v76;
          sub_2480308C8(v72, &dword_247F67000, v96, "assembleSegments: Removing segment at path: %@", 46, 2, v73);

          v77 = [v92 defaultManager];
          v78 = sub_2480306E8();
          v103[0] = 0;
          LODWORD(v73) = [v77 removeItemAtURL:v78 error:v103];

          if (!v73)
          {
            v83 = v103[0];
            sub_2480306B8();

            swift_willThrow();

            v84 = *v70;
            (*v70)(v25, v71);
            return v84(v91, v71);
          }

          ++v26;
          v79 = *v70;
          v80 = v103[0];
          v79(v25, v71);
          v57 = v94;
          if (v101 == v26)
          {
          }
        }

LABEL_24:
        __break(1u);
LABEL_25:
        swift_once();
      }

      v58 = 0;
      v26 = v6 + 16;
      v59 = (v6 + 8);
      while (1)
      {
        if (v58 >= *(v57 + 16))
        {
          __break(1u);
          goto LABEL_24;
        }

        v60 = v57 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v58;
        v30 = v6;
        v61 = *(v6 + 16);
        v62 = v100;
        v63 = v102;
        v61(v100, v60, v102);
        sub_24801F1E0(v62, 104857600);
        if (v25)
        {
          break;
        }

        ++v58;
        (*v59)(v62, v63);
        v6 = v30;
        if (v101 == v58)
        {
          goto LABEL_15;
        }
      }

      (*v59)(v62, v63);
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v82 = v103[0];
    sub_2480306B8();

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_24801E320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2480306C8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_248030778();
  v35 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248030718();
  v36 = a2;
  v37 = a3;
  (*(v9 + 104))(v11, *MEMORY[0x277CC91D8], v8);
  sub_2480219D0();
  v14 = MEMORY[0x277D837D0];
  v34 = a4;
  sub_248030768();
  (*(v9 + 8))(v11, v8);
  v15 = sub_248030C78();
  if (qword_27EE839F8 != -1)
  {
    swift_once();
  }

  v16 = qword_27EE85A40;
  sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
  v17 = swift_allocObject();
  v32 = xmmword_24803DE50;
  *(v17 + 16) = xmmword_24803DE50;
  v18 = sub_248030738();
  v20 = v19;
  *(v17 + 56) = v14;
  v21 = sub_24800A52C();
  *(v17 + 64) = v21;
  *(v17 + 32) = v18;
  *(v17 + 40) = v20;
  sub_2480308C8(v15, &dword_247F67000, v16, "unarchiveModel - Begin unarchiving model at path: %@", 52, 2, v17);

  v23 = v33;
  v22 = v34;
  sub_248021F60(a1, v34);
  if (v23)
  {
    v24 = *(v35 + 8);
    v25 = v22;
    v26 = v38;
    v24(v25, v38);
    return (v24)(v13, v26);
  }

  else
  {
    v28 = sub_248030C78();
    v29 = swift_allocObject();
    *(v29 + 16) = v32;
    v30 = sub_248030738();
    *(v29 + 56) = MEMORY[0x277D837D0];
    *(v29 + 64) = v21;
    *(v29 + 32) = v30;
    *(v29 + 40) = v31;
    sub_2480308C8(v28, &dword_247F67000, v16, "unarchiveModel - Finished unarchiving model to path: %@", 55, 2, v29);

    return (*(v35 + 8))(v13, v38);
  }
}

uint64_t sub_24801E6A8@<X0>(void *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v38[2] = *MEMORY[0x277D85DE8];
  v6 = sub_2480306C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_248030778();
  v36 = *(v10 - 8);
  v37 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248030718();
  v38[0] = a1;
  v38[1] = a2;
  (*(v7 + 104))(v9, *MEMORY[0x277CC91D8], v6);
  sub_2480219D0();
  v35 = a3;
  sub_248030768();
  (*(v7 + 8))(v9, v6);
  v13 = sub_248030C78();
  if (qword_27EE839F8 != -1)
  {
    swift_once();
  }

  v14 = qword_27EE85A40;
  sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
  v15 = swift_allocObject();
  v33 = xmmword_24803DE50;
  *(v15 + 16) = xmmword_24803DE50;
  v16 = sub_248030738();
  v18 = v17;
  *(v15 + 56) = MEMORY[0x277D837D0];
  v19 = sub_24800A52C();
  *(v15 + 64) = v19;
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  v34 = v14;
  sub_2480308C8(v13, &dword_247F67000, v14, "renameModel - Begin renaming model at: %@", 41, 2, v15);

  v20 = [objc_opt_self() defaultManager];
  v21 = sub_2480306E8();
  v22 = v35;
  v23 = sub_2480306E8();
  v38[0] = 0;
  LOBYTE(v18) = [v20 moveItemAtURL:v21 toURL:v23 error:v38];

  if (v18)
  {
    v24 = v38[0];
    v25 = sub_248030C78();
    v26 = swift_allocObject();
    *(v26 + 16) = v33;
    v27 = sub_248030738();
    *(v26 + 56) = MEMORY[0x277D837D0];
    *(v26 + 64) = v19;
    *(v26 + 32) = v27;
    *(v26 + 40) = v28;
    sub_2480308C8(v25, &dword_247F67000, v34, "renameModel - Finished renaming model to: %@", 44, 2, v26);

    return (*(v36 + 8))(v12, v37);
  }

  else
  {
    v30 = v38[0];
    sub_2480306B8();

    swift_willThrow();
    v31 = v37;
    v32 = *(v36 + 8);
    v32(v22, v37);
    return (v32)(v12, v31);
  }
}

uint64_t sub_24801EAD0(uint64_t a1)
{
  v4 = sub_2480307E8();
  MEMORY[0x24C1C17F0](45, 0xE100000000000000);
  v1 = sub_248030EC8();
  MEMORY[0x24C1C17F0](v1);

  MEMORY[0x24C1C17F0](1600548703, 0xE400000000000000);
  v2 = sub_248030EC8();
  MEMORY[0x24C1C17F0](v2);

  return v4;
}

uint64_t sub_24801EB9C(void *a1)
{
  v2 = sub_2480306C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  (*(v3 + 104))(v5, *MEMORY[0x277CC91D8], v2);
  sub_2480219D0();
  sub_248030768();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24801ECCC(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v17 = sub_248030778();
  v6 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v21 = MEMORY[0x277D84F90];
  sub_2480210A8(0, v9, 0);
  v10 = v21;
  v16 = v6 + 32;
  for (i = (a3 + 40); ; i += 2)
  {
    v12 = *i;
    v20[0] = *(i - 1);
    v20[1] = v12;

    v18(v20);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v21 = v10;
    v14 = *(v10 + 16);
    v13 = *(v10 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_2480210A8((v13 > 1), v14 + 1, 1);
      v10 = v21;
    }

    *(v10 + 16) = v14 + 1;
    (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v8, v17);
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24801EE98(uint64_t a1)
{
  sub_2480306D8();
  sub_2480307E8();
  v1 = sub_248030BC8();

  return v1 & 1;
}

uint64_t sub_24801EF10(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = sub_248030778();
  v7 = MEMORY[0x28223BE20](v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = MEMORY[0x277D84F90];
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2480210A8(0, *(v23 + 16) + 1, 1);
          v23 = v40;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_2480210A8((v25 > 1), v26 + 1, 1);
          v23 = v40;
        }

        *(v23 + 16) = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
LABEL_14:

    return v37;
  }

  return result;
}

void sub_24801F1E0(uint64_t a1, uint64_t a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = sub_248030C78();
  if (qword_27EE839F8 != -1)
  {
    swift_once();
  }

  v3 = qword_27EE85A40;
  sub_2480078E4(&qword_27EE83C38, &qword_24803E000);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24803DE50;
  v5 = sub_248030738();
  v7 = v6;
  *(v4 + 56) = MEMORY[0x277D837D0];
  v8 = sub_24800A52C();
  *(v4 + 64) = v8;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  sub_2480308C8(v2, &dword_247F67000, v3, "merge(into): Opening input stream for %@", 40, 2, v4);

  v9 = objc_allocWithZone(MEMORY[0x277CBEAE0]);
  v10 = sub_2480306E8();
  v11 = [v9 initWithURL_];

  if (!v11)
  {
    return;
  }

  [v11 open];
  v12 = swift_slowAlloc();
  v13 = sub_248030C78();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_24803DE50;
  v15 = [v11 hasBytesAvailable];
  v16 = 0x7365747942206F4ELL;
  if (v15)
  {
    v16 = 0x7365747942;
  }

  v17 = 0xE800000000000000;
  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 64) = v8;
  if (v15)
  {
    v17 = 0xE500000000000000;
  }

  *(v14 + 32) = v16;
  *(v14 + 40) = v17;
  sub_2480308C8(v13, &dword_247F67000, v3, "merge(into): Starting read loop: %@ available", 45, 2, v14);
  v18 = a2;
  v19 = &selRef_cleanup;

  if (![v11 hasBytesAvailable])
  {
LABEL_32:
    [v11 close];
    MEMORY[0x24C1C47E0](v12, -1, -1);

    return;
  }

  while (1)
  {
    v20 = [v11 read:v12 maxLength:v18];
    if (!v20)
    {
      goto LABEL_11;
    }

    v21 = v20;
    v37 = xmmword_24803EBE0;
    sub_248030798();
    v22 = objc_allocWithZone(MEMORY[0x277CBEB78]);
    v23 = sub_2480306E8();
    v24 = [v22 initWithURL:v23 append:1];

    if (v24)
    {
      break;
    }

    sub_2480081DC(v37, *(&v37 + 1));
LABEL_11:
    if (([v11 v19[15]] & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  [v24 open];
  v26 = *(&v37 + 1);
  v25 = v37;
  v27 = *(&v37 + 1) >> 62;
  if ((*(&v37 + 1) >> 62) > 1)
  {
    if (v27 == 2)
    {
      v28 = *(v37 + 16);
      v34 = *(v37 + 24);
      v29 = sub_248030668();
      if (v29)
      {
        v30 = sub_248030688();
        if (__OFSUB__(v28, v30))
        {
          goto LABEL_37;
        }

        v29 += v28 - v30;
      }

      if (__OFSUB__(v34, v28))
      {
        goto LABEL_35;
      }

      sub_248030678();
      if (!v29)
      {
        goto LABEL_40;
      }

      goto LABEL_28;
    }

    *(v36 + 6) = 0;
    v36[0] = 0;
LABEL_30:
    [v24 write:v36 maxLength:v21];
LABEL_31:
    [v24 close];

    sub_2480081DC(v25, v26);
    sub_2480081DC(0, 0xC000000000000000);
    v19 = &selRef_cleanup;
    goto LABEL_11;
  }

  if (!v27)
  {
    v36[0] = v37;
    LODWORD(v36[1]) = DWORD2(v37);
    WORD2(v36[1]) = WORD6(v37);
    goto LABEL_30;
  }

  if (v37 > v37 >> 32)
  {
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  v31 = sub_248030668();
  if (v31)
  {
    v32 = v31;
    v33 = sub_248030688();
    if (__OFSUB__(v25, v33))
    {
      goto LABEL_36;
    }

    v29 = v25 - v33 + v32;
    sub_248030678();
    if (!v29)
    {
      goto LABEL_39;
    }

LABEL_28:
    [v24 write:v29 maxLength:{v21, v34}];
    v18 = a2;
    goto LABEL_31;
  }

  sub_248030678();
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

char *sub_24801F6C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2480078E4(&qword_27EE83F28, &qword_24803EC50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_24801F7CC(uint64_t *a1)
{
  v2 = *(sub_248030778() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2480213AC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_24801F874(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_24801F874(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_248030EB8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_248030778();
        v6 = sub_248030C08();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_248030778() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_24801FCAC(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_24801F9A0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_24801F9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_248030778();
  v9 = MEMORY[0x28223BE20](v8);
  v44 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v48 = &v34 - v12;
  result = MEMORY[0x28223BE20](v11);
  v47 = &v34 - v15;
  v36 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v45 = *(v14 + 16);
    v46 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v42 = (v14 + 32);
    v43 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v41 = -v17;
    v20 = a1 - a3;
    v35 = v17;
    v21 = v16 + v17 * a3;
LABEL_6:
    v39 = v19;
    v40 = a3;
    v37 = v21;
    v38 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v45;
      v45(v47, v21, v8);
      v24(v48, v23, v8);
      v25 = sub_2480306D8();
      v27 = v26;
      if (v25 == sub_2480306D8() && v27 == v28)
      {

        v22 = *v18;
        (*v18)(v48, v8);
        result = (v22)(v47, v8);
LABEL_5:
        a3 = v40 + 1;
        v19 = v39 + v35;
        v20 = v38 - 1;
        v21 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return result;
        }

        goto LABEL_6;
      }

      v29 = sub_248030EE8();

      v30 = *v18;
      (*v18)(v48, v8);
      result = (v30)(v47, v8);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v31)(v23, v32, v8);
      v23 += v41;
      v21 += v41;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24801FCAC(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v134 = a1;
  v9 = sub_248030778();
  v10 = MEMORY[0x28223BE20](v9);
  v138 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v149 = &v128 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v154 = &v128 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v153 = &v128 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v146 = &v128 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v145 = &v128 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v133 = &v128 - v23;
  result = MEMORY[0x28223BE20](v22);
  v132 = &v128 - v26;
  v27 = a3[1];
  v143 = v25;
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_103:
    v31 = *v134;
    if (!*v134)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v143;
    if (result)
    {
LABEL_105:
      v155 = v29;
      v122 = *(v29 + 16);
      if (v122 >= 2)
      {
        while (1)
        {
          v123 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v124 = a3;
          v125 = *(v29 + 16 * v122);
          a3 = v29;
          v126 = *(v29 + 16 * (v122 - 1) + 32);
          v29 = *(v29 + 16 * (v122 - 1) + 40);
          sub_248020868(v123 + *(v5 + 72) * v125, (v123 + *(v5 + 72) * v126), (v123 + *(v5 + 72) * v29), v31);
          if (v6)
          {
          }

          if (v29 < v125)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_248020F90(a3);
          }

          if (v122 - 2 >= a3[2])
          {
            goto LABEL_129;
          }

          v127 = &a3[2 * v122];
          *v127 = v125;
          v127[1] = v29;
          v155 = a3;
          result = sub_248020F04(v122 - 1);
          v29 = v155;
          v122 = v155[2];
          a3 = v124;
          if (v122 <= 1)
          {
          }
        }
      }
    }

LABEL_135:
    result = sub_248020F90(v29);
    v29 = result;
    goto LABEL_105;
  }

  v129 = a4;
  v28 = 0;
  v151 = v25 + 16;
  v152 = (v25 + 8);
  v150 = (v25 + 32);
  v29 = MEMORY[0x277D84F90];
  v135 = a3;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v137 = v28;
    if (v28 + 1 < v27)
    {
      v141 = v27;
      v130 = v29;
      v32 = *a3;
      v33 = *(v143 + 72);
      v5 = v28 + 1;
      v34 = v32 + v33 * v31;
      v35 = *(v143 + 16);
      v35(v132, v34, v9);
      v144 = v33;
      v140 = v35;
      v35(v133, v32 + v33 * v30, v9);
      v31 = sub_2480306D8();
      v37 = v36;
      v38 = sub_2480306D8();
      v131 = v6;
      if (v31 == v38 && v37 == v39)
      {
        LODWORD(v142) = 0;
      }

      else
      {
        LODWORD(v142) = sub_248030EE8();
      }

      v40 = *v152;
      (*v152)(v133, v9);
      v139 = v40;
      result = (v40)(v132, v9);
      v41 = (v137 + 2);
      v42 = v144 * (v137 + 2);
      v43 = v32 + v42;
      v44 = v144 * v5;
      v45 = v32 + v144 * v5;
      do
      {
        a3 = v41;
        v48 = v5;
        v6 = v44;
        v29 = v42;
        if (v41 >= v141)
        {
          break;
        }

        v147 = v5;
        v148 = v41;
        v49 = v140;
        (v140)(v145, v43, v9);
        v49(v146, v45, v9);
        v50 = sub_2480306D8();
        v52 = v51;
        if (v50 == sub_2480306D8() && v52 == v53)
        {
          v46 = 0;
        }

        else
        {
          v46 = sub_248030EE8();
        }

        a3 = v148;

        v31 = v139;
        v139(v146, v9);
        result = (v31)(v145, v9);
        v47 = v142 ^ v46;
        v41 = (a3 + 1);
        v43 += v144;
        v45 += v144;
        v48 = v147;
        v5 = v147 + 1;
        v44 = v6 + v144;
        v42 = v29 + v144;
      }

      while ((v47 & 1) == 0);
      if (v142)
      {
        v30 = v137;
        if (a3 < v137)
        {
          goto LABEL_132;
        }

        if (v137 < a3)
        {
          v54 = v137 * v144;
          v55 = v137;
          do
          {
            if (v55 != v48)
            {
              v57 = *v135;
              if (!*v135)
              {
                goto LABEL_138;
              }

              v5 = v48;
              v148 = *v150;
              v148(v138, (v57 + v54), v9);
              if (v54 < v6 || v57 + v54 >= (v57 + v29))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v54 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v148)(v57 + v6, v138, v9);
              v30 = v137;
              v48 = v5;
            }

            ++v55;
            v6 -= v144;
            v29 -= v144;
            v54 += v144;
          }

          while (v55 < v48--);
        }

        v31 = a3;
        v6 = v131;
        a3 = v135;
        v29 = v130;
      }

      else
      {
        v31 = a3;
        v6 = v131;
        a3 = v135;
        v29 = v130;
        v30 = v137;
      }
    }

    v58 = a3[1];
    if (v31 < v58)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_131;
      }

      if (v31 - v30 < v129)
      {
        break;
      }
    }

LABEL_52:
    if (v31 < v30)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24801F6C8(0, *(v29 + 16) + 1, 1, v29);
      v29 = result;
    }

    v76 = *(v29 + 16);
    v75 = *(v29 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      result = sub_24801F6C8((v75 > 1), v76 + 1, 1, v29);
      v29 = result;
    }

    *(v29 + 16) = v77;
    v78 = v29 + 16 * v76;
    *(v78 + 32) = v30;
    *(v78 + 40) = v31;
    v79 = *v134;
    if (!*v134)
    {
      goto LABEL_140;
    }

    v144 = v31;
    if (v76)
    {
      while (1)
      {
        v31 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v80 = *(v29 + 32);
          v81 = *(v29 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_72:
          if (v83)
          {
            goto LABEL_119;
          }

          v96 = (v29 + 16 * v77);
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_122;
          }

          v102 = (v29 + 32 + 16 * v31);
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_126;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v31 = v77 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v106 = (v29 + 16 * v77);
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_86:
        if (v101)
        {
          goto LABEL_121;
        }

        v109 = v29 + 16 * v31;
        v111 = *(v109 + 32);
        v110 = *(v109 + 40);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_124;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_93:
        v117 = v31 - 1;
        if (v31 - 1 >= v77)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        v118 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v29;
        v119 = *(v29 + 32 + 16 * v117);
        v120 = *(v29 + 32 + 16 * v31);
        v29 = *(v29 + 32 + 16 * v31 + 8);
        sub_248020868(v118 + *(v143 + 72) * v119, (v118 + *(v143 + 72) * v120), (v118 + *(v143 + 72) * v29), v79);
        if (v6)
        {
        }

        if (v29 < v119)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_248020F90(a3);
        }

        if (v117 >= a3[2])
        {
          goto LABEL_116;
        }

        v121 = &a3[2 * v117];
        v121[4] = v119;
        v121[5] = v29;
        v155 = a3;
        result = sub_248020F04(v31);
        v29 = v155;
        v77 = v155[2];
        a3 = v5;
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = v29 + 32 + 16 * v77;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_117;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_118;
      }

      v91 = (v29 + 16 * v77);
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_120;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_123;
      }

      if (v95 >= v87)
      {
        v113 = (v29 + 32 + 16 * v31);
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_127;
        }

        if (v82 < v116)
        {
          v31 = v77 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v27 = a3[1];
    v28 = v144;
    if (v144 >= v27)
    {
      goto LABEL_103;
    }
  }

  v59 = (v30 + v129);
  if (__OFADD__(v30, v129))
  {
    goto LABEL_133;
  }

  if (v59 >= v58)
  {
    v59 = a3[1];
  }

  if (v59 < v30)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v31 == v59)
  {
    goto LABEL_52;
  }

  v130 = v29;
  v131 = v6;
  v60 = *a3;
  v61 = *(v143 + 72);
  v62 = *(v143 + 16);
  v63 = *a3 + v61 * (v31 - 1);
  v147 = -v61;
  v148 = v60;
  v64 = v30 - v31;
  v136 = v61;
  v65 = v60 + v31 * v61;
  v139 = v59;
LABEL_43:
  v144 = v31;
  v140 = v65;
  v141 = v64;
  v142 = v63;
  v67 = v63;
  while (1)
  {
    v62(v153, v65, v9);
    (v62)(v154, v67);
    v5 = sub_2480306D8();
    v69 = v68;
    if (v5 == sub_2480306D8() && v69 == v70)
    {

      v66 = *v152;
      (*v152)(v154, v9);
      v66(v153, v9);
LABEL_42:
      v31 = v144 + 1;
      v63 = v142 + v136;
      v64 = v141 - 1;
      v65 = &v140[v136];
      if ((v144 + 1) == v139)
      {
        v31 = v139;
        v6 = v131;
        a3 = v135;
        v29 = v130;
        v30 = v137;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_248030EE8();

    v71 = *v152;
    (*v152)(v154, v9);
    result = (v71)(v153, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v148)
    {
      break;
    }

    v72 = v149;
    v5 = v150;
    v73 = *v150;
    (*v150)(v149, v65, v9);
    swift_arrayInitWithTakeFrontToBack();
    v73(v67, v72, v9);
    v67 += v147;
    v65 += v147;
    if (__CFADD__(v64++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_248020868(unint64_t a1, char *a2, char *a3, char *a4)
{
  v71 = sub_248030778();
  v8 = *(v71 - 8);
  v9 = MEMORY[0x28223BE20](v71);
  v68 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v67 = &v59 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v70 = &v59 - v14;
  result = MEMORY[0x28223BE20](v13);
  v69 = &v59 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (&a2[-a1] == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_70;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_71;
  }

  v20 = &a2[-a1] / v18;
  v74 = a1;
  v73 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || &a2[v22] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = &a4[v22];
    if (v22 < 1)
    {
      v44 = &a4[v22];
    }

    else
    {
      v63 = a4;
      v64 = (v8 + 16);
      v62 = (v8 + 8);
      v42 = -v18;
      v43 = &a4[v22];
      v44 = v41;
      v65 = v42;
      while (2)
      {
        while (1)
        {
          v60 = v44;
          v45 = &a2[v42];
          v69 = &a2[v42];
          v66 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v74 = a2;
              v72 = v60;
              goto LABEL_68;
            }

            v47 = a3;
            v61 = v44;
            v48 = *v64;
            v70 = (v43 + v42);
            v49 = v71;
            (v48)(v67);
            (v48)(v68, v45, v49);
            v50 = sub_2480306D8();
            v52 = v51;
            if (v50 == sub_2480306D8() && v52 == v53)
            {
              v54 = 0;
            }

            else
            {
              v54 = sub_248030EE8();
            }

            v42 = v65;
            a3 = v65 + v47;
            v55 = *v62;
            v56 = v71;
            (*v62)(v68, v71);
            v55(v67, v56);
            if (v54)
            {
              break;
            }

            v57 = v70;
            v44 = v70;
            if (v47 < v43 || a3 >= v43)
            {
              swift_arrayInitWithTakeFrontToBack();
              v45 = v69;
            }

            else
            {
              v45 = v69;
              if (v47 != v43)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v43 = v44;
            v46 = v57 > v63;
            a2 = v66;
            if (!v46)
            {
              goto LABEL_66;
            }
          }

          if (v47 < v66 || a3 >= v66)
          {
            break;
          }

          a2 = v69;
          v58 = v63;
          v44 = v61;
          if (v47 != v66)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v43 <= v58)
          {
            goto LABEL_66;
          }
        }

        a2 = v69;
        swift_arrayInitWithTakeFrontToBack();
        v44 = v61;
        if (v43 > v63)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v74 = a2;
    v72 = v44;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v68 = &a4[v21];
    v72 = &a4[v21];
    if (v21 >= 1 && a2 < a3)
    {
      v24 = *(v8 + 16);
      v66 = v18;
      v67 = (v8 + 16);
      v64 = (v8 + 8);
      v65 = v24;
      do
      {
        v25 = a3;
        v26 = a2;
        v27 = a2;
        v28 = v71;
        v29 = v65;
        v65(v69, v27, v71);
        v29(v70, a4, v28);
        v30 = sub_2480306D8();
        v32 = v31;
        if (v30 == sub_2480306D8() && v32 == v33)
        {

          v34 = *v64;
          v35 = v71;
          (*v64)(v70, v71);
          v34(v69, v35);
        }

        else
        {
          v36 = sub_248030EE8();

          v37 = *v64;
          v38 = v71;
          (*v64)(v70, v71);
          v37(v69, v38);
          if (v36)
          {
            a2 = &v66[v26];
            a3 = v25;
            if (a1 < v26 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v40 = v66;
            goto LABEL_37;
          }
        }

        v39 = a4;
        v40 = v66;
        a4 = &v66[a4];
        a2 = v26;
        a3 = v25;
        if (a1 < v39 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v39)
        {
          swift_arrayInitWithTakeBackToFront();
          v73 = a4;
          goto LABEL_37;
        }

        v73 = a4;
LABEL_37:
        a1 += v40;
        v74 = a1;
      }

      while (a4 < v68 && a2 < a3);
    }
  }

LABEL_68:
  sub_248020FA4(&v74, &v73, &v72);
  return 1;
}