void sub_23DAA66A8(uint64_t result)
{
  v2 = *(v1 + 152);
  if (v2)
  {
    swift_unknownObjectRetain();
    v3 = sub_23DB7080C();
    v4 = _CFXPCCreateXPCObjectFromCFObject();
    if (v4)
    {
      v5 = v4;
      count = xpc_dictionary_get_count(v4);

      if (count)
      {
        v7 = xpc_dictionary_create(0, 0, 0);
        v8 = sub_23DB708EC();
        xpc_dictionary_set_int64(v7, (v8 + 32), 101);

        v9 = sub_23DB708EC();
        swift_unknownObjectRetain();
        xpc_dictionary_set_value(v7, (v9 + 32), v5);
        swift_unknownObjectRelease();

        xpc_connection_send_message(v2, v7);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_23DAA67F4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  if (!a3)
  {
    if (qword_27E2FBBF0 != -1)
    {
      swift_once();
    }

    (*(*qword_27E30A6D8 + 304))();
    v8 = [objc_opt_self() mainBundle];
    sub_23DB6E9FC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2B0, &qword_23DB76980);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_23DB73BA0;
    v7 = v3[10];
    goto LABEL_9;
  }

  if (a3 == 1)
  {
    if (qword_27E2FBBF0 != -1)
    {
      swift_once();
    }

    (*(*qword_27E30A6D8 + 304))();
    v5 = [objc_opt_self() mainBundle];
    sub_23DB6E9FC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2B0, &qword_23DB76980);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_23DB73BA0;
    v7 = v3[12];
LABEL_9:
    swift_beginAccess();
    v10 = *(v7 + 40);
    v9 = *(v7 + 48);
    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 64) = sub_23DA40598();
    *(v6 + 32) = v10;
    *(v6 + 40) = v9;

    v11 = sub_23DB708CC();

    return v11;
  }

  v14 = v3[11];
  swift_beginAccess();
  if (*(v14 + 40))
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v14 + 48) == 0xE000000000000000;
  }

  if (!v15 && (sub_23DB70DBC() & 1) == 0)
  {
    if (qword_27E2FBBF0 != -1)
    {
      swift_once();
    }

    (*(*qword_27E30A6D8 + 304))(a1, a2);
    v17 = [objc_opt_self() mainBundle];
    sub_23DB6E9FC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2B0, &qword_23DB76980);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_23DB73BA0;
    v7 = v4[11];
    goto LABEL_9;
  }

  if (qword_27E2FBBF0 != -1)
  {
    swift_once();
  }

  return (*(*qword_27E30A6D8 + 304))(0xD000000000000022, 0x800000023DB8AED0);
}

void sub_23DAA6CB8()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    v2 = v0;
    v3 = qword_27E2FBBD8;
    swift_unknownObjectRetain();
    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_23DB6EBFC();
    __swift_project_value_buffer(v4, qword_27E2FE250);
    v5 = sub_23DB6EBDC();
    v6 = sub_23DB70AAC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_23D9FF000, v5, v6, "Tearing down XPC connection", v7, 2u);
      MEMORY[0x23EEF7D90](v7, -1, -1);
    }

    v8 = swift_allocObject();
    *(v8 + 16) = v1;
    v10[4] = sub_23DAA97D0;
    v10[5] = v8;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_23DABB3DC;
    v10[3] = &block_descriptor_160;
    v9 = _Block_copy(v10);
    swift_unknownObjectRetain();

    xpc_connection_send_barrier(v1, v9);
    swift_unknownObjectRelease();
    _Block_release(v9);
    *(v2 + 152) = 0;
    swift_unknownObjectRelease();
  }
}

void sub_23DAA6E6C()
{
  v1 = v0;
  v2 = sub_23DB707AC();
  isa = v2[-1].isa;
  MEMORY[0x28223BE20](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23DB707CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23DB707EC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  if (*(v1 + 161) == 1)
  {
    if (qword_27E2FBBD8 != -1)
    {
      swift_once();
    }

    v17 = sub_23DB6EBFC();
    __swift_project_value_buffer(v17, qword_27E2FE250);
    v46 = sub_23DB6EBDC();
    v18 = sub_23DB70AAC();
    if (os_log_type_enabled(v46, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_23D9FF000, v46, v18, "Retry already pending, bailing", v19, 2u);
      MEMORY[0x23EEF7D90](v19, -1, -1);
    }

    v20 = v46;

    return;
  }

  v21 = *(v1 + 164);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
    goto LABEL_18;
  }

  v41 = &v39 - v16;
  v42 = v5;
  v5 = v15;
  v44 = v6;
  v45 = isa;
  v46 = v2;
  *(v1 + 164) = v23;
  if (qword_27E2FBBD8 != -1)
  {
LABEL_18:
    swift_once();
  }

  v24 = sub_23DB6EBFC();
  __swift_project_value_buffer(v24, qword_27E2FE250);

  v25 = sub_23DB6EBDC();
  v26 = sub_23DB70AAC();
  v27 = os_log_type_enabled(v25, v26);
  v43 = v7;
  if (v27)
  {
    v28 = swift_slowAlloc();
    *v28 = 67109120;
    *(v28 + 4) = *(v1 + 164);

    _os_log_impl(&dword_23D9FF000, v25, v26, "Connection error. Retrying xpc connection (Attempt  %d)", v28, 8u);
    MEMORY[0x23EEF7D90](v28, -1, -1);
  }

  else
  {
  }

  sub_23DAA6CB8();
  *(v1 + 168) = 0;
  v29 = sub_23DB6EBDC();
  v30 = sub_23DB70AAC();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_23D9FF000, v29, v30, "Schedule retry timer", v31, 2u);
    MEMORY[0x23EEF7D90](v31, -1, -1);
  }

  *(v1 + 160) = 256;
  sub_23DAA967C(0, &qword_27E2FCFE0, 0x277D85C78);
  v32 = sub_23DB70AEC();
  sub_23DB707DC();
  v33 = v41;
  sub_23DB707FC();
  v34 = *(v11 + 8);
  v39 = v5;
  v40 = v34;
  v34(v13, v5);
  v35 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_23DAA9790;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DABB3DC;
  aBlock[3] = &block_descriptor_154;
  v36 = _Block_copy(aBlock);

  sub_23DB707BC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23DAA96CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
  sub_23DA17B80(&qword_27E2FE300, &qword_27E2FCFE8, &unk_23DB7A4E0, MEMORY[0x277D83970]);
  v37 = v42;
  v38 = v46;
  sub_23DB70C0C();
  MEMORY[0x23EEF6E80](v33, v9, v37, v36);
  _Block_release(v36);

  (*(v45 + 1))(v37, v38);
  (*(v43 + 8))(v9, v44);
  v40(v33, v39);
}

void sub_23DAA74A4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    *(Strong + 161) = 0;
    if (qword_27E2FBBD8 != -1)
    {
      swift_once();
    }

    v3 = sub_23DB6EBFC();
    __swift_project_value_buffer(v3, qword_27E2FE250);
    v4 = sub_23DB6EBDC();
    v5 = sub_23DB70AAC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_23D9FF000, v4, v5, "Retry timer fired", v6, 2u);
      MEMORY[0x23EEF7D90](v6, -1, -1);
    }

    if (*(v2 + 160) == 1)
    {
      v7 = sub_23DB6EBDC();
      v8 = sub_23DB70AAC();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_23D9FF000, v7, v8, "Bailing because retries cancelled", v9, 2u);
        MEMORY[0x23EEF7D90](v9, -1, -1);
      }
    }

    else
    {
      sub_23DAA764C();
    }
  }
}

void sub_23DAA764C()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceControlEnabled];

  *(v1 + 160) = 1;
  if (v3)
  {
    if (*(v1 + 164) < 101)
    {
      if (qword_27E2FBBD8 != -1)
      {
        swift_once();
      }

      v11 = sub_23DB6EBFC();
      __swift_project_value_buffer(v11, qword_27E2FE250);
      v12 = sub_23DB6EBDC();
      v13 = sub_23DB70AAC();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_23D9FF000, v12, v13, "Voice Control is enabled, so trying XPC connection", v14, 2u);
        MEMORY[0x23EEF7D90](v14, -1, -1);
      }

      sub_23DAA6CB8();
      v15 = sub_23DB708EC();
      mach_service = xpc_connection_create_mach_service((v15 + 32), 0, 0);

      *(v1 + 152) = mach_service;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      if (mach_service)
      {
        v17 = swift_allocObject();
        swift_weakInit();
        v28 = sub_23DAA9654;
        v29 = v17;
        aBlock = MEMORY[0x277D85DD0];
        v25 = 1107296256;
        v26 = sub_23DB3C694;
        v27 = &block_descriptor_2;
        v18 = _Block_copy(&aBlock);

        xpc_connection_set_event_handler(mach_service, v18);
        _Block_release(v18);
        xpc_connection_resume(mach_service);
        v19 = sub_23DAA8C4C(0x6E696E657473696CLL, 0xEF73757461745367);
        v20 = *(v1 + 144);
        v21 = swift_allocObject();
        swift_weakInit();
        v28 = sub_23DAA9674;
        v29 = v21;
        aBlock = MEMORY[0x277D85DD0];
        v25 = 1107296256;
        v26 = sub_23DB3C694;
        v27 = &block_descriptor_141;
        v22 = _Block_copy(&aBlock);

        xpc_connection_send_message_with_reply(mach_service, v19, v20, v22);
        _Block_release(v22);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      if (qword_27E2FBBD8 != -1)
      {
        swift_once();
      }

      v4 = sub_23DB6EBFC();
      __swift_project_value_buffer(v4, qword_27E2FE250);
      v5 = sub_23DB6EBDC();
      v6 = sub_23DB70AAC();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_23D9FF000, v5, v6, "Bailing retry, attempts > 100!!", v7, 2u);
        MEMORY[0x23EEF7D90](v7, -1, -1);
      }

      *(v1 + 164) = 0;
      *(v1 + 168) = 0;
    }
  }

  else
  {
    if (qword_27E2FBBD8 != -1)
    {
      swift_once();
    }

    v8 = sub_23DB6EBFC();
    __swift_project_value_buffer(v8, qword_27E2FE250);
    oslog = sub_23DB6EBDC();
    v9 = sub_23DB70AAC();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_23D9FF000, oslog, v9, "Voice Control is not enabled, so skipping xpc-connection creation", v10, 2u);
      MEMORY[0x23EEF7D90](v10, -1, -1);
    }
  }
}

uint64_t sub_23DAA7B18(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = MEMORY[0x23EEF7F80](a1);
    if (v4 == sub_23DB6EC0C())
    {
      if (qword_27E2FBBD8 != -1)
      {
        swift_once();
      }

      v6 = sub_23DB6EBFC();
      __swift_project_value_buffer(v6, qword_27E2FE250);
      v7 = sub_23DB6EBDC();
      v8 = sub_23DB70AAC();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_23D9FF000, v7, v8, "Retry connection because of XPC error", v9, 2u);
        MEMORY[0x23EEF7D90](v9, -1, -1);
      }

      sub_23DAA6E6C();
    }

    else
    {
      v5 = MEMORY[0x23EEF7F80](a1);
      if (v5 == sub_23DB6EC1C())
      {
        sub_23DAA41F8(a1);
      }
    }
  }

  return result;
}

void sub_23DAA7C74(uint64_t a1, uint64_t a2)
{
  v2 = sub_23DB707AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23DB707CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_getObjectType();
    if (sub_23DAA3AC0())
    {

      *(v11 + 164) = 0;
      v26 = v11;
      *(v11 + 168) = 1;
      sub_23DAA967C(0, &qword_27E2FCFE0, 0x277D85C78);
      v25 = sub_23DB70AEC();
      v12 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      aBlock[4] = sub_23DAA96C4;
      aBlock[5] = v12;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23DABB3DC;
      aBlock[3] = &block_descriptor_145;
      v13 = _Block_copy(aBlock);

      sub_23DB707BC();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_23DAA96CC();
      v24 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
      sub_23DA17B80(&qword_27E2FE300, &qword_27E2FCFE8, &unk_23DB7A4E0, MEMORY[0x277D83970]);
      sub_23DB70C0C();
      v14 = v25;
      MEMORY[0x23EEF6EA0](0, v9, v5, v13);
      _Block_release(v13);

      (*(v3 + 8))(v5, v2);
      (*(v7 + 8))(v9, v24);
      if (qword_27E2FBBD8 != -1)
      {
        swift_once();
      }

      v15 = sub_23DB6EBFC();
      __swift_project_value_buffer(v15, qword_27E2FE250);
      v16 = sub_23DB6EBDC();
      v17 = sub_23DB70AAC();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_23D9FF000, v16, v17, "XPC connection successful!!", v18, 2u);
        MEMORY[0x23EEF7D90](v18, -1, -1);
      }
    }

    else
    {
      if (qword_27E2FBBD8 != -1)
      {
        swift_once();
      }

      v19 = sub_23DB6EBFC();
      __swift_project_value_buffer(v19, qword_27E2FE250);
      v20 = sub_23DB6EBDC();
      v21 = sub_23DB70AAC();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_23D9FF000, v20, v21, "Retry connection because of invalid response", v22, 2u);
        MEMORY[0x23EEF7D90](v22, -1, -1);
      }

      sub_23DAA6E6C();
    }
  }
}

uint64_t sub_23DAA8134(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    for (i = 0; i != 3; ++i)
    {
      v4 = *(v2 + 152);
      if (v4)
      {
        v5 = 0xEF7375746174536ELL;
        v6 = 0x5379616C7265766FLL;
        if (byte_284FE77F0[i + 32] == 1)
        {
          v5 = 0xED00007375746174;
        }

        else
        {
          v6 = 0x6F69746174636964;
        }

        if (byte_284FE77F0[i + 32])
        {
          v7 = v6;
        }

        else
        {
          v7 = 0x6E696E657473696CLL;
        }

        if (byte_284FE77F0[i + 32])
        {
          v8 = v5;
        }

        else
        {
          v8 = 0xEF73757461745367;
        }

        swift_unknownObjectRetain();
        v9 = xpc_dictionary_create(0, 0, 0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2D0, &unk_23DB7BBB0);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_23DB73BA0;
        *(v10 + 56) = MEMORY[0x277D837D0];
        *(v10 + 32) = v7;
        *(v10 + 40) = v8;
        sub_23DAA967C(0, &unk_27E2FE2E0, 0x277CBEA60);

        v11 = MEMORY[0x23EEF6EB0](v10);
        v12 = _CFXPCCreateXPCObjectFromCFObject();
        v13 = sub_23DB708EC();
        xpc_dictionary_set_value(v9, (v13 + 32), v12);
        swift_unknownObjectRelease();

        v14 = xpc_dictionary_create(0, 0, 0);
        v15 = sub_23DB708EC();
        xpc_dictionary_set_int64(v14, (v15 + 32), 102);

        v16 = sub_23DB708EC();
        swift_unknownObjectRetain();
        xpc_dictionary_set_value(v14, (v16 + 32), v9);

        swift_unknownObjectRelease_n();

        v17 = *(v2 + 144);
        v18 = swift_allocObject();
        swift_weakInit();
        aBlock[4] = sub_23DAA9724;
        aBlock[5] = v18;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_23DB3C694;
        aBlock[3] = &block_descriptor_150;
        v19 = _Block_copy(aBlock);

        xpc_connection_send_message_with_reply(v4, v14, v17, v19);
        _Block_release(v19);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_23DAA8474()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_23DAA851C()
{
  sub_23DAA8474();

  return MEMORY[0x2821FE8D8](v0, 192, 7);
}

uint64_t sub_23DAA8574(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC6)
  {
    goto LABEL_17;
  }

  if (a2 + 58 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 58) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 58;
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

      return (*a1 | (v4 << 8)) - 58;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 58;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x3B;
  v8 = v6 - 59;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_23DAA8604(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 58 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 58) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC6)
  {
    v4 = 0;
  }

  if (a2 > 0xC5)
  {
    v5 = ((a2 - 198) >> 8) + 1;
    *result = a2 + 58;
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
    *result = a2 + 58;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NavigationDirection(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NavigationDirection(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23DAA8848(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_23DAA88D8(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23DAA899C()
{
  result = qword_27E2FE270;
  if (!qword_27E2FE270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE270);
  }

  return result;
}

unint64_t sub_23DAA89F4()
{
  result = qword_27E2FE278;
  if (!qword_27E2FE278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE278);
  }

  return result;
}

unint64_t sub_23DAA8A4C()
{
  result = qword_27E2FE280;
  if (!qword_27E2FE280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE280);
  }

  return result;
}

unint64_t sub_23DAA8AE8()
{
  result = qword_27E2FE298;
  if (!qword_27E2FE298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE298);
  }

  return result;
}

unint64_t sub_23DAA8B40()
{
  result = qword_27E2FE2A0;
  if (!qword_27E2FE2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE2A0);
  }

  return result;
}

unint64_t sub_23DAA8B94(uint64_t a1)
{
  result = sub_23DAA8BBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23DAA8BBC()
{
  result = qword_27E2FE2A8;
  if (!qword_27E2FE2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE2A8);
  }

  return result;
}

uint64_t sub_23DAA8C10@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for VoiceControlController();
  result = sub_23DB6EE6C();
  *a2 = result;
  return result;
}

xpc_object_t sub_23DAA8C4C(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2D0, &unk_23DB7BBB0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_23DB73BA0;
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  sub_23DAA967C(0, &unk_27E2FE2E0, 0x277CBEA60);

  v6 = MEMORY[0x23EEF6EB0](v5);
  v7 = _CFXPCCreateXPCObjectFromCFObject();
  v8 = sub_23DB708EC();
  xpc_dictionary_set_value(v4, (v8 + 32), v7);
  swift_unknownObjectRelease();

  v9 = xpc_dictionary_create(0, 0, 0);
  v10 = sub_23DB708EC();
  xpc_dictionary_set_int64(v9, (v10 + 32), 102);

  v11 = sub_23DB708EC();
  swift_unknownObjectRetain();
  xpc_dictionary_set_value(v9, (v11 + 32), v4);

  swift_unknownObjectRelease_n();

  return v9;
}

uint64_t sub_23DAA8DC8()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 voiceControlEnabled];

  if (v2)
  {
    v3 = *(v0 + 16);
    swift_beginAccess();
    if ((*(v3 + 40) & 1) == 0)
    {
      sub_23DAA764C();
      sub_23DAA3FB4(0);
      sub_23DAA3FB4(1);
      v4 = sub_23DB6BB30(&unk_284FE56D8);
      sub_23DAA97F8(&unk_284FE56F8);
      sub_23DAA66A8(v4);
    }
  }

  v5 = *(v0 + 16);
  swift_beginAccess();
  *(v5 + 40) = v2;

  sub_23DABC004();
}

uint64_t sub_23DAA8EC0(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() sharedInstance];
  VCCommandIdentifier.rawValue.getter();
  v3 = sub_23DB7087C();

  v4 = [v2 localizedVoiceControlCommand_];

  v5 = sub_23DB708BC();
  v7 = v6;

  v8 = [objc_opt_self() mainBundle];
  sub_23DB6E9FC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2B0, &qword_23DB76980);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_23DB73BA0;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_23DA40598();
  *(v9 + 32) = v5;
  *(v9 + 40) = v7;
  v10 = sub_23DB708CC();

  return v10;
}

uint64_t sub_23DAA904C(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_opt_self() sharedInstance];
  VCCommandIdentifier.rawValue.getter();
  v5 = sub_23DB7087C();

  v6 = [v4 localizedVoiceControlCommand_];

  v7 = sub_23DB708BC();
  v9 = v8;

  if (qword_27E2FBBF0 != -1)
  {
    swift_once();
  }

  v10 = (*qword_27E30A6D8 + 304);
  v11 = *v10;
  v12 = (*v10)(0xD00000000000001ELL, 0x800000023DB8ADD0);
  v13 = v11(0xD00000000000001ELL, 0x800000023DB8ADF0);
  v15 = v14;
  if (sub_23DB7092C())
  {
    if (a3)
    {
      sub_23DA16E70();
      v16 = sub_23DB70BBC();
      v18 = v17;

      v20 = v12;
      MEMORY[0x23EEF6D00](v16, v18);
    }

    else
    {
      v20 = v12;
      MEMORY[0x23EEF6D00](v7, v9);
    }

    MEMORY[0x23EEF6D00](v13, v15);

    return v20;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_23DAA92BC(uint64_t a1, uint64_t a2)
{
  v2 = sub_23DB70D8C();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_23DAA9308(uint64_t a1, uint64_t a2)
{
  v2 = sub_23DB70D8C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_23DAA9354(uint64_t a1, uint64_t a2)
{
  v2 = sub_23DB70D8C();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

xpc_object_t sub_23DAA93A0(double a1, double a2, double a3, double a4)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = [objc_opt_self() mainScreen];
  [v5 _integerDisplayID];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2D0, &unk_23DB7BBB0);
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D837D0];
  *(v6 + 16) = xmmword_23DB7B4D0;
  *(v6 + 56) = v7;
  *(v6 + 32) = 0x47657475706D6F43;
  *(v6 + 40) = 0xEF68746150646972;
  v8 = sub_23DAA967C(0, &qword_27E2FE2D8, 0x277CCABB0);
  v9 = sub_23DB70B2C();
  *(v6 + 88) = v8;
  *(v6 + 64) = v9;
  v10 = sub_23DB70B2C();
  *(v6 + 120) = v8;
  *(v6 + 96) = v10;
  v11 = sub_23DB70B2C();
  *(v6 + 152) = v8;
  *(v6 + 128) = v11;
  v12 = sub_23DB70B2C();
  *(v6 + 184) = v8;
  *(v6 + 160) = v12;
  v13 = sub_23DB70B3C();
  *(v6 + 216) = v8;
  *(v6 + 192) = v13;
  sub_23DAA967C(0, &unk_27E2FE2E0, 0x277CBEA60);
  v14 = MEMORY[0x23EEF6EB0](v6);
  v15 = _CFXPCCreateXPCObjectFromCFObject();
  v16 = sub_23DB708EC();
  xpc_dictionary_set_value(v4, (v16 + 32), v15);
  swift_unknownObjectRelease();

  v17 = xpc_dictionary_create(0, 0, 0);
  v18 = sub_23DB708EC();
  xpc_dictionary_set_int64(v17, (v18 + 32), 102);

  v19 = sub_23DB708EC();
  xpc_dictionary_set_value(v17, (v19 + 32), v4);

  swift_unknownObjectRelease();

  return v17;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_23DAA961C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23DAA967C(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_23DAA96CC()
{
  result = qword_27E2FE2F0;
  if (!qword_27E2FE2F0)
  {
    sub_23DB707AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE2F0);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_23DAA9798()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_23DAA97F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE318, &unk_23DB7BBD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23DAA992C()
{
  v1 = *v0;
  v2 = sub_23DB707AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23DB707CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DA5295C();
  v10 = sub_23DB70AEC();
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = *(v1 + 80);
  *(v12 + 24) = v11;
  aBlock[4] = sub_23DAAA5CC;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DABB3DC;
  aBlock[3] = &block_descriptor_3;
  v13 = _Block_copy(aBlock);

  sub_23DB707BC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23DAA96CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
  sub_23DAAA5EC();
  sub_23DB70C0C();
  MEMORY[0x23EEF6EA0](0, v9, v5, v13);
  _Block_release(v13);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_23DAA9BE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_23DAA9CEC(v5);
    sub_23DB6EE7C();
    (*(v3 + 8))(v5, a2);
  }

  return result;
}

uint64_t sub_23DAA9CEC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_23DAA9D8C(uint64_t a1)
{
  v3 = *v1;
  sub_23DAAA08C(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

uint64_t (*sub_23DAA9E08(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23DAA9E78;
}

uint64_t sub_23DAA9E78(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_23DAA992C();
  }

  return result;
}

char *PublishedDidSet.__allocating_init(wrappedValue:)(uint64_t a1)
{
  v2 = v1;
  swift_allocObject();
  v4 = sub_23DAAA138(a1);
  (*(*(*(v2 + 80) - 8) + 8))(a1);
  return v4;
}

char *PublishedDidSet.init(wrappedValue:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_23DAAA138(a1);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v4;
}

char *PublishedDidSet.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  return v0;
}

uint64_t PublishedDidSet.__deallocating_deinit()
{
  PublishedDidSet.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_23DAAA08C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 24))(v1 + v4, a1);
  swift_endAccess();
  return sub_23DAA992C();
}

char *sub_23DAAA138(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*v2 + 80);
  sub_23DB6EEAC();
  swift_getWitnessTable();
  v6 = sub_23DB6EE2C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  (*(*(v5 - 8) + 16))(&v2[*(v4 + 112)], a1, v5, v8);
  v11 = sub_23DB6EE8C();
  *(v2 + 2) = v11;
  v15 = v11;
  *(v2 + 3) = sub_23DB6EF3C();
  v15 = *(v2 + 2);
  *(swift_allocObject() + 16) = v5;

  sub_23DB6EF4C();

  swift_getWitnessTable();
  v12 = sub_23DB6EF3C();
  (*(v7 + 8))(v10, v6);
  *(v2 + 4) = v12;
  return v2;
}

uint64_t sub_23DAAA3F4(uint64_t a1)
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

uint64_t sub_23DAAA55C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_23DAAA594()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23DAAA5EC()
{
  result = qword_27E2FE300;
  if (!qword_27E2FE300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE300);
  }

  return result;
}

uint64_t sub_23DAAA68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_23DB6F78C();
  v8 = MEMORY[0x28223BE20](v7);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2, v8);
  swift_storeEnumTagMultiPayload();
  return sub_23DB6F79C();
}

uint64_t sub_23DAAA784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_23DB6F78C();
  v8 = MEMORY[0x28223BE20](v7);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3, v8);
  swift_storeEnumTagMultiPayload();
  return sub_23DB6F79C();
}

uint64_t AXOnboardingSectionType.hashValue.getter()
{
  v1 = *v0;
  sub_23DB70E0C();
  MEMORY[0x23EEF71C0](v1);
  return sub_23DB70E4C();
}

uint64_t AXOnboardingSection.init(type:header:content:footer:)@<X0>(char *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(uint64_t)@<X5>, uint64_t a5@<X7>, uint64_t a6@<X8>, __int128 a7, __int128 a8, uint64_t a9)
{
  v12 = *a1;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  *(a6 + *(type metadata accessor for AXOnboardingSection(0, &v16) + 76)) = v12;
  v13 = a3();
  v14 = a4(v13);
  return a2(v14);
}

uint64_t AXOnboardingSection.init<>(type:content:)@<X0>(char *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v6 = *a1;
  v8[0] = a3;
  v8[1] = MEMORY[0x277CE1428];
  v8[2] = MEMORY[0x277CE1428];
  v8[3] = a4;
  v8[4] = MEMORY[0x277CE1410];
  v8[5] = MEMORY[0x277CE1410];
  *(a5 + *(type metadata accessor for AXOnboardingSection(0, v8) + 76)) = v6;
  return a2();
}

uint64_t AXOnboardingSection.init<>(type:content:footer:)@<X0>(char *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(uint64_t)@<X3>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8)
{
  v10 = *a1;
  v13[0] = a4;
  v13[1] = a5;
  v13[2] = MEMORY[0x277CE1428];
  v13[3] = a6;
  v13[4] = a8;
  v13[5] = MEMORY[0x277CE1410];
  *(a7 + *(type metadata accessor for AXOnboardingSection(0, v13) + 76)) = v10;
  v11 = a2();
  return a3(v11);
}

uint64_t AXOnboardingSection.init<>(type:header:content:)@<X0>(char *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8)
{
  v10 = *a1;
  v13[0] = a4;
  v13[1] = MEMORY[0x277CE1428];
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = MEMORY[0x277CE1410];
  v13[5] = a8;
  *(a7 + *(type metadata accessor for AXOnboardingSection(0, v13) + 76)) = v10;
  v11 = a3();
  return a2(v11);
}

uint64_t sub_23DAAABB4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v35 = a2;
  v5 = *(a1 + 24);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v34 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 32);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v31[1] = v12;
  v32 = v14;
  v15 = sub_23DB7055C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v33 = v31 - v21;
  (*(v10 + 16))(v12, v3 + *(a1 + 72), v9, v20);
  (*(v6 + 16))(v34, v3 + *(a1 + 68), v5);
  *&v22 = v9;
  v23 = *(a1 + 40);
  v24 = *(a1 + 48);
  *(&v22 + 1) = v23;
  *&v25 = v32;
  *(&v25 + 1) = v5;
  v36 = v25;
  v37 = v22;
  v26 = *(a1 + 56);
  v38 = v24;
  v39 = v26;
  v40 = v3;
  sub_23DB7053C();
  v41 = v26;
  v42 = v23;
  v43 = v24;
  swift_getWitnessTable();
  v27 = *(v16 + 16);
  v28 = v33;
  v27(v33, v18, v15);
  v29 = *(v16 + 8);
  v29(v18, v15);
  v27(v35, v28, v15);
  return (v29)(v28, v15);
}

uint64_t sub_23DAAAECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 16);
  v9(v8, v6);
  (v9)(a3, v8, a2);
  return (*(v5 + 8))(v8, a2);
}

uint64_t sub_23DAAAFC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = *(a1 + 24);
  v50 = a2;
  v51 = *(v49 - 8);
  MEMORY[0x28223BE20](a1);
  v54 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v53 = &v39 - v6;
  v8 = *(v7 + 16);
  v40 = v8;
  v47 = *(v8 - 8);
  v9 = v47;
  MEMORY[0x28223BE20](v7);
  v52 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  v41 = &v39 - v12;
  v42 = *(v14 + 32);
  v48 = *(v42 - 8);
  v15 = v48;
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v39 - v20;
  v23 = *(v22 + 72);
  v45 = *(v22 + 56);
  v24 = *(v15 + 16);
  v24(&v39 - v20, v2 + v23, v19);
  v44 = *(a1 + 40);
  v25 = *(v9 + 16);
  v25(v13, v2, v8);
  v26 = *(a1 + 68);
  v43 = *(a1 + 48);
  v27 = *(v51 + 16);
  v28 = v49;
  v27(v53, v2 + v26, v49);
  v46 = v17;
  v29 = v42;
  (v24)(v17, v21, v42);
  v59[0] = v17;
  v30 = v52;
  v31 = v41;
  v32 = v40;
  v25(v52, v41, v40);
  v59[1] = v30;
  v34 = v53;
  v33 = v54;
  v27(v54, v53, v28);
  v59[2] = v33;
  v58[0] = v29;
  v58[1] = v32;
  v58[2] = v28;
  v55 = v45;
  v56 = v44;
  v57 = v43;
  sub_23DAC2F38(v59, 3uLL, v58);
  v35 = *(v51 + 8);
  v35(v34, v28);
  v36 = *(v47 + 8);
  v36(v31, v32);
  v37 = *(v48 + 8);
  v37(v21, v29);
  v35(v54, v28);
  v36(v52, v32);
  return (v37)(v46, v29);
}

uint64_t AXOnboardingSection.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  swift_getTupleTypeMetadata3();
  v4 = sub_23DB706BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  v11 = sub_23DB7055C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - v16;
  v18 = sub_23DB6F7AC();
  v40 = *(v18 - 8);
  v41 = v18;
  MEMORY[0x28223BE20](v18);
  v43 = &v37 - v19;
  if (*(v2 + *(a1 + 76)) == 1)
  {
    sub_23DAAAFC0(a1, v7);
    WitnessTable = swift_getWitnessTable();
    v21 = *(v5 + 16);
    v21(v10, v7, v4);
    v22 = *(v5 + 8);
    v22(v7, v4);
    v21(v7, v10, v4);
    v23 = *(a1 + 40);
    v26 = a1 + 48;
    v25 = *(a1 + 48);
    v24 = *(v26 + 8);
    v52 = v24;
    v53 = v23;
    v54 = v25;
    v27 = swift_getWitnessTable();
    sub_23DAAA784(v7, v11, v4, v27, WitnessTable);
    v22(v7, v4);
    v22(v10, v4);
  }

  else
  {
    sub_23DAAABB4(a1, v14);
    v39 = *(a1 + 56);
    v23 = *(a1 + 40);
    v25 = *(a1 + 48);
    v44 = v39;
    v45 = v23;
    v46 = v25;
    v38 = swift_getWitnessTable();
    v28 = *(v12 + 16);
    v28(v17, v14, v11);
    v29 = *(v12 + 8);
    v29(v14, v11);
    v28(v14, v17, v11);
    v30 = swift_getWitnessTable();
    sub_23DAAA68C(v14, v11, v4, v38, v30);
    v29(v14, v11);
    v29(v17, v11);
    v24 = v39;
  }

  v49 = v24;
  v50 = v23;
  v51 = v25;
  v31 = swift_getWitnessTable();
  v32 = swift_getWitnessTable();
  v47 = v31;
  v48 = v32;
  v33 = v41;
  swift_getWitnessTable();
  v34 = v40;
  v35 = v43;
  (*(v40 + 16))(v42, v43, v33);
  return (*(v34 + 8))(v35, v33);
}

unint64_t sub_23DAAB874()
{
  result = qword_27E2FE3F0[0];
  if (!qword_27E2FE3F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E2FE3F0);
  }

  return result;
}

uint64_t sub_23DAAB930(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23DAAB9E0(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = a3[4];
  v7 = *(v5 + 84);
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v6 - 8);
  v12 = *(v11 + 84);
  v13 = *(v8 + 80);
  v14 = *(*(a3[3] - 8) + 64);
  v15 = *(v11 + 80);
  v16 = *(v11 + 64);
  if (v12 <= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = *(v11 + 84);
  }

  if (v17 <= 0xFD)
  {
    v17 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(*(a3[2] - 8) + 64) + v13;
  v19 = a2 - v17;
  if (a2 <= v17)
  {
    goto LABEL_33;
  }

  v20 = v16 + ((v14 + v15 + (v18 & ~v13)) & ~v15) + 1;
  v21 = 8 * v20;
  if (v20 <= 3)
  {
    v24 = ((v19 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v24))
    {
      v22 = *(a1 + v20);
      if (!v22)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v24 > 0xFF)
    {
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v24 < 2)
    {
LABEL_33:
      if (v7 == v17)
      {
        v28 = *(v5 + 48);

        return v28();
      }

      else
      {
        v29 = (a1 + v18) & ~v13;
        if (v9 == v17)
        {
          v30 = *(v8 + 48);

          return v30(v29);
        }

        else
        {
          v31 = (v29 + v14 + v15) & ~v15;
          if (v12 == v17)
          {
            v32 = *(v11 + 48);

            return v32(v31, v12, v6);
          }

          else
          {
            v33 = *(v31 + v16);
            if (v33 >= 3)
            {
              return v33 - 2;
            }

            else
            {
              return 0;
            }
          }
        }
      }
    }
  }

  v22 = *(a1 + v20);
  if (!*(a1 + v20))
  {
    goto LABEL_33;
  }

LABEL_20:
  v25 = (v22 - 1) << v21;
  if (v20 > 3)
  {
    v25 = 0;
  }

  if (v16 + ((v14 + v15 + (v18 & ~v13)) & ~v15) == -1)
  {
    v27 = 0;
  }

  else
  {
    if (v20 <= 3)
    {
      v26 = v16 + ((v14 + v15 + (v18 & ~v13)) & ~v15) + 1;
    }

    else
    {
      v26 = 4;
    }

    if (v26 > 2)
    {
      if (v26 == 3)
      {
        v27 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v27 = *a1;
      }
    }

    else if (v26 == 1)
    {
      v27 = *a1;
    }

    else
    {
      v27 = *a1;
    }
  }

  return v17 + (v27 | v25) + 1;
}

char *sub_23DAABCC0(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[2] - 8);
  v6 = *(v5 + 84);
  v7 = a4[3];
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(a4[4] - 8);
  v12 = *(v11 + 84);
  v13 = *(*(a4[2] - 8) + 64);
  v14 = *(v8 + 80);
  v15 = *(*(v7 - 8) + 64);
  v16 = *(v11 + 80);
  v17 = *(v11 + 64);
  if (v12 <= v10)
  {
    v18 = v10;
  }

  else
  {
    v18 = *(v11 + 84);
  }

  if (v18 <= 0xFD)
  {
    v18 = 253;
  }

  v19 = v17 + ((v15 + v16 + ((v13 + v14) & ~v14)) & ~v16) + 1;
  v20 = a3 >= v18;
  v21 = a3 - v18;
  if (v21 != 0 && v20)
  {
    if (v19 <= 3)
    {
      v26 = ((v21 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
      if (HIWORD(v26))
      {
        v22 = 4;
      }

      else
      {
        if (v26 < 0x100)
        {
          v27 = 1;
        }

        else
        {
          v27 = 2;
        }

        if (v26 >= 2)
        {
          v22 = v27;
        }

        else
        {
          v22 = 0;
        }
      }
    }

    else
    {
      v22 = 1;
    }
  }

  else
  {
    v22 = 0;
  }

  if (v18 < a2)
  {
    v23 = ~v18 + a2;
    if (v19 < 4)
    {
      v25 = (v23 >> (8 * v19)) + 1;
      if (v19)
      {
        v28 = v23 & ~(-1 << (8 * v19));
        v29 = result;
        bzero(result, v19);
        result = v29;
        if (v19 != 3)
        {
          if (v19 == 2)
          {
            *v29 = v28;
            if (v22 > 1)
            {
LABEL_56:
              if (v22 == 2)
              {
                *&result[v19] = v25;
              }

              else
              {
                *&result[v19] = v25;
              }

              return result;
            }
          }

          else
          {
            *v29 = v23;
            if (v22 > 1)
            {
              goto LABEL_56;
            }
          }

          goto LABEL_53;
        }

        *v29 = v28;
        v29[2] = BYTE2(v28);
      }

      if (v22 > 1)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v24 = result;
      bzero(result, v19);
      result = v24;
      *v24 = v23;
      v25 = 1;
      if (v22 > 1)
      {
        goto LABEL_56;
      }
    }

LABEL_53:
    if (v22)
    {
      result[v19] = v25;
    }

    return result;
  }

  if (v22 > 1)
  {
    if (v22 != 2)
    {
      *&result[v19] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *&result[v19] = 0;
  }

  else if (v22)
  {
    result[v19] = 0;
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
  if (v6 == v18)
  {
    v30 = *(v5 + 56);

    return v30();
  }

  else
  {
    v31 = &result[v13 + v14] & ~v14;
    if (v9 == v18)
    {
      v32 = *(v8 + 56);

      return v32(v31);
    }

    else
    {
      result = ((v31 + v15 + v16) & ~v16);
      if (v12 == v18)
      {
        v33 = *(v11 + 56);

        return v33(result);
      }

      else
      {
        result[v17] = a2 + 2;
      }
    }
  }

  return result;
}

uint64_t sub_23DAAC050(uint64_t *a1, __n128 a2)
{
  sub_23DB7055C();
  swift_getTupleTypeMetadata3();
  sub_23DB706BC();
  sub_23DB6F7AC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23DAAC174@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

double sub_23DAAC22C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCB8, &qword_23DB798F8);
  sub_23DB7038C();
  return v2;
}

double sub_23DAAC2EC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCB8, &qword_23DB798F8);
  sub_23DB7038C();
  return v2;
}

double sub_23DAAC3AC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCB8, &qword_23DB798F8);
  sub_23DB7038C();
  return v2;
}

uint64_t AXOnboardingView.init(title:description:iconName:traits:content:button:customIconView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t (*a8)(void *)@<X7>, void *a9@<X8>, uint64_t a10, uint64_t (*a11)(uint64_t), uint64_t a12, uint64_t (*a13)(uint64_t), uint64_t a14, __int128 a15, __int128 a16, uint64_t a17, uint64_t a18)
{
  v22 = a7[1];
  v36 = *a7;
  v23 = *(a7 + 4);
  v41[0] = a15;
  v41[1] = a16;
  v42 = a17;
  v43 = a18;
  v24 = type metadata accessor for AXOnboardingView(0, v41);
  v25 = (a9 + v24[23]);
  v44 = 0;
  sub_23DB7037C();
  v26 = *(&v41[0] + 1);
  *v25 = *&v41[0];
  v25[1] = v26;
  v27 = (a9 + v24[24]);
  v44 = 0;
  sub_23DB7037C();
  v28 = *(&v41[0] + 1);
  *v27 = *&v41[0];
  v27[1] = v28;
  v29 = (a9 + v24[25]);
  v44 = 0;
  v30 = sub_23DB7037C();
  v31 = *(&v41[0] + 1);
  *v29 = *&v41[0];
  v29[1] = v31;
  v32 = a8(v30);
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  v33 = a11(v32);
  v34 = a9 + v24[22];
  *v34 = v36;
  *(v34 + 1) = v22;
  *(v34 + 4) = v23;
  return a13(v33);
}

uint64_t AXOnboardingView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE498, &qword_23DB7BDB0);
  v24 = a1[4];
  v25 = a1[7];
  v22 = a1;
  type metadata accessor for AXOnboardingHeader(255, v24, v25, v3);
  sub_23DB6F2DC();
  sub_23DB70B7C();
  v23 = a1[2];
  sub_23DB6F2DC();
  sub_23DB6F7AC();
  v21 = a1[3];
  v20 = sub_23DB70B7C();
  sub_23DB6F2DC();
  sub_23DB6F2DC();
  swift_getTupleTypeMetadata2();
  sub_23DB706BC();
  sub_23DB70B7C();
  swift_getTupleTypeMetadata3();
  sub_23DB706BC();
  sub_23DB702AC();
  swift_getTupleTypeMetadata2();
  sub_23DB706BC();
  swift_getWitnessTable();
  sub_23DB7044C();
  sub_23DB6F2DC();
  sub_23DB6F2DC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE4A0, &qword_23DB7BDB8);
  sub_23DB6F2DC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE4A8, &qword_23DB7BDC0);
  sub_23DB6F2DC();
  v19[0] = MEMORY[0x277CE1198];
  WitnessTable = swift_getWitnessTable();
  v43 = MEMORY[0x277CDF678];
  v40 = swift_getWitnessTable();
  v41 = MEMORY[0x277CDFC60];
  v38 = swift_getWitnessTable();
  v39 = sub_23DA17B80(&qword_27E2FE4B0, &qword_27E2FE4A0, &qword_23DB7BDB8, MEMORY[0x277CE0328]);
  v36 = swift_getWitnessTable();
  v37 = sub_23DA17B80(&qword_27E2FE4B8, &qword_27E2FE4A8, &qword_23DB7BDC0, MEMORY[0x277CE07C8]);
  swift_getWitnessTable();
  sub_23DB6F00C();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v34 = OpaqueTypeMetadata2;
  v35 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_23DB6F1CC();
  sub_23DB6F2DC();
  sub_23DB6F2DC();
  sub_23DB6F2DC();
  sub_23DB70B7C();
  swift_getTupleTypeMetadata2();
  sub_23DB706BC();
  v19[1] = swift_getWitnessTable();
  v6 = sub_23DB7044C();
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v19 - v7;
  v9 = swift_getWitnessTable();
  v34 = v6;
  v35 = v9;
  v19[0] = MEMORY[0x277CDED08];
  v10 = swift_getOpaqueTypeMetadata2();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v19 - v15;
  v28 = v23;
  v29 = v21;
  v30 = v24;
  v31 = *(v22 + 5);
  v32 = v25;
  v33 = v26;
  sub_23DB6F68C();
  sub_23DB7043C();
  sub_23DAAC1CC();
  sub_23DB7001C();
  (*(v20 + 8))(v8, v6);
  v34 = v6;
  v35 = v9;
  swift_getOpaqueTypeConformance2();
  sub_23DAAC170();
  v17 = *(v11 + 8);
  v17(v13, v10);
  sub_23DAAC170();
  return (v17)(v16, v10);
}

uint64_t sub_23DAACD7C@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v65 = a4;
  v71 = a8;
  v72 = a1;
  v77 = a3;
  v80 = sub_23DB70B7C();
  v74 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE4A0, &qword_23DB7BDB8);
  v14 = sub_23DB6F2DC();
  v73 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE4A8, &qword_23DB7BDC0);
  v79 = v14;
  v15 = sub_23DB6F2DC();
  v63 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v61 = &v60 - v16;
  v78 = v17;
  v18 = sub_23DB6F2DC();
  v67 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v64 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v62 = &v60 - v21;
  v76 = v22;
  v70 = sub_23DB70B7C();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v75 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v69 = &v60 - v25;
  v26 = a2;
  v108 = a2;
  v109 = a3;
  v110 = a4;
  v111 = a5;
  v27 = a5;
  v28 = a6;
  v112 = a6;
  v113 = a7;
  v29 = type metadata accessor for AXOnboardingView(0, &v108);
  v30 = *(v29 - 8);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v60 - v32;
  (*(v30 + 16))(&v60 - v32, v72, v29, v31);
  v34 = (*(v30 + 80) + 64) & ~*(v30 + 80);
  v35 = swift_allocObject();
  v66 = v35;
  v36 = v77;
  v35[2] = v26;
  v35[3] = v36;
  v37 = v65;
  v35[4] = v65;
  v35[5] = v27;
  v77 = v28;
  v35[6] = v28;
  v35[7] = a7;
  (*(v30 + 32))(v35 + v34, v33, v29);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE498, &qword_23DB7BDB0);
  type metadata accessor for AXOnboardingHeader(255, v37, a7, v38);
  sub_23DB6F2DC();
  sub_23DB70B7C();
  sub_23DB6F2DC();
  sub_23DB6F7AC();
  sub_23DB6F2DC();
  sub_23DB6F2DC();
  swift_getTupleTypeMetadata2();
  sub_23DB706BC();
  sub_23DB70B7C();
  swift_getTupleTypeMetadata3();
  sub_23DB706BC();
  sub_23DB702AC();
  swift_getTupleTypeMetadata2();
  sub_23DB706BC();
  swift_getWitnessTable();
  sub_23DB7044C();
  sub_23DB6F2DC();
  sub_23DB6F2DC();
  sub_23DB6F2DC();
  sub_23DB6F2DC();
  WitnessTable = swift_getWitnessTable();
  v107 = MEMORY[0x277CDF678];
  v104 = swift_getWitnessTable();
  v105 = MEMORY[0x277CDFC60];
  v39 = swift_getWitnessTable();
  v40 = sub_23DA17B80(&qword_27E2FE4B0, &qword_27E2FE4A0, &qword_23DB7BDB8, MEMORY[0x277CE0328]);
  v102 = v39;
  v103 = v40;
  v74 = v40;
  v41 = swift_getWitnessTable();
  v42 = sub_23DA17B80(&qword_27E2FE4B8, &qword_27E2FE4A8, &qword_23DB7BDC0, MEMORY[0x277CE07C8]);
  v100 = v41;
  v101 = v42;
  v73 = v42;
  swift_getWitnessTable();
  v43 = sub_23DB6F00C();
  v44 = swift_getWitnessTable();
  v108 = v43;
  v109 = v44;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v108 = v43;
  v109 = v44;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v108 = OpaqueTypeMetadata2;
  v109 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  v108 = OpaqueTypeMetadata2;
  v109 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v98 = sub_23DB6F1BC();
  v99 = v47;
  v48 = sub_23DB6F1CC();
  v49 = swift_getWitnessTable();
  sub_23DAAC170();

  sub_23DAAC1CC();
  if ((v98 & 2) != 0)
  {
    sub_23DAB06C4(v29, v61);
    v85 = v77;
    v83 = swift_getWitnessTable();
    v84 = v74;
    v81 = swift_getWitnessTable();
    v82 = v73;
    swift_getWitnessTable();
    View.onboardingViewFormat()();
  }

  (*(v67 + 56))(v75, 1, 1, v76);
  v97[8] = v77;
  v97[6] = swift_getWitnessTable();
  v97[7] = v74;
  v97[4] = swift_getWitnessTable();
  v97[5] = v73;
  v50 = swift_getWitnessTable();
  v51 = sub_23DAB22E0();
  v97[2] = v50;
  v97[3] = v51;
  swift_getWitnessTable();
  v52 = v69;
  v53 = v75;
  sub_23DAC3108(v75, v69);
  v54 = v68;
  v72 = *(v68 + 8);
  v55 = v70;
  v72(v53, v70);
  v97[0] = v108;
  v97[1] = v109;
  v98 = v97;
  (*(v54 + 16))(v53, v52, v55);
  v99 = v53;

  v96[0] = v48;
  v96[1] = v55;
  v93 = v77;
  v94 = v49;
  v91 = swift_getWitnessTable();
  v92 = v74;
  v89 = swift_getWitnessTable();
  v90 = v73;
  v56 = swift_getWitnessTable();
  v57 = sub_23DAB22E0();
  v87 = v56;
  v88 = v57;
  v86 = swift_getWitnessTable();
  v95 = swift_getWitnessTable();
  sub_23DAC2F38(&v98, 2uLL, v96);
  v58 = v72;
  v72(v52, v55);

  v58(v53, v55);
}

uint64_t sub_23DAAD8FC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v58 = a8;
  v62 = a7;
  v59 = a6;
  v57 = a5;
  v60 = a2;
  v61 = a1;
  v66 = a9;
  v65 = sub_23DB6F7FC();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE498, &qword_23DB7BDB0);
  type metadata accessor for AXOnboardingHeader(255, a5, a8, v14);
  sub_23DB6F2DC();
  sub_23DB70B7C();
  v56 = a3;
  sub_23DB6F2DC();
  sub_23DB6F7AC();
  sub_23DB70B7C();
  sub_23DB6F2DC();
  sub_23DB6F2DC();
  swift_getTupleTypeMetadata2();
  sub_23DB706BC();
  sub_23DB70B7C();
  swift_getTupleTypeMetadata3();
  sub_23DB706BC();
  sub_23DB702AC();
  swift_getTupleTypeMetadata2();
  sub_23DB706BC();
  swift_getWitnessTable();
  sub_23DB7044C();
  sub_23DB6F2DC();
  sub_23DB6F2DC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE4A0, &qword_23DB7BDB8);
  sub_23DB6F2DC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE4A8, &qword_23DB7BDC0);
  v15 = sub_23DB6F2DC();
  WitnessTable = swift_getWitnessTable();
  v88 = MEMORY[0x277CDF678];
  v85 = swift_getWitnessTable();
  v86 = MEMORY[0x277CDFC60];
  v16 = swift_getWitnessTable();
  v17 = sub_23DA17B80(&qword_27E2FE4B0, &qword_27E2FE4A0, &qword_23DB7BDB8, MEMORY[0x277CE0328]);
  v83 = v16;
  v84 = v17;
  v18 = swift_getWitnessTable();
  v19 = sub_23DA17B80(&qword_27E2FE4B8, &qword_27E2FE4A8, &qword_23DB7BDC0, MEMORY[0x277CE07C8]);
  v81 = v18;
  v82 = v19;
  v47[1] = v15;
  v47[0] = swift_getWitnessTable();
  v20 = sub_23DB6F00C();
  v54 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = v47 - v21;
  v23 = swift_getWitnessTable();
  v75 = v20;
  v76 = v23;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v55 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v52 = v47 - v25;
  v75 = v20;
  v76 = v23;
  v47[2] = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = OpaqueTypeMetadata2;
  v75 = OpaqueTypeMetadata2;
  v76 = OpaqueTypeConformance2;
  v50 = OpaqueTypeConformance2;
  v27 = swift_getOpaqueTypeMetadata2();
  v53 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v48 = v47 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v49 = v47 - v30;
  v31 = v56;
  v67 = v56;
  v32 = a4;
  v68 = a4;
  v33 = v57;
  v34 = v59;
  v69 = v57;
  v70 = v59;
  v35 = v62;
  v36 = v58;
  v71 = v62;
  v72 = v58;
  v73 = v60;
  v74 = v61;
  sub_23DB6FB1C();
  v61 = v22;
  sub_23DB6F01C();
  v75 = v31;
  v76 = v32;
  v77 = v33;
  v78 = v34;
  v79 = v35;
  v80 = v36;
  v37 = type metadata accessor for AXOnboardingView(0, &v75);
  sub_23DAAC1CC();
  if ((v75 & 0x20) == 0)
  {
    sub_23DAB05D0(v37);
  }

  v38 = v52;
  v39 = v61;
  sub_23DB6FEAC();
  (*(v54 + 8))(v39, v20);
  sub_23DAAC1CC();
  v40 = v63;
  if ((v75 & 0x20) != 0)
  {
    sub_23DB6F7DC();
  }

  else
  {
    sub_23DB6F7EC();
  }

  sub_23DB6FB1C();
  v41 = v48;
  v42 = v51;
  v43 = v50;
  sub_23DB6FFAC();
  (*(v64 + 8))(v40, v65);
  (*(v55 + 8))(v38, v42);
  v75 = v42;
  v76 = v43;
  swift_getOpaqueTypeConformance2();
  v44 = v49;
  sub_23DAAC170();
  v45 = *(v53 + 8);
  v45(v41, v27);
  sub_23DAAC170();
  return (v45)(v44, v27);
}

uint64_t sub_23DAAE1AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v83 = a7;
  v85 = a6;
  v79 = a2;
  v84 = a1;
  v77 = a9;
  v75 = sub_23DB6F15C();
  v74 = *(v75 - 8);
  v76 = *(v74 + 64);
  MEMORY[0x28223BE20](v75);
  v73 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101[0] = a3;
  v101[1] = a4;
  v80 = a4;
  v101[2] = a5;
  v101[3] = a6;
  v82 = a5;
  v101[4] = a7;
  v101[5] = a8;
  v81 = a8;
  v71 = type metadata accessor for AXOnboardingView(0, v101);
  v70 = *(v71 - 8);
  v72 = *(v70 + 64);
  MEMORY[0x28223BE20](v71);
  v69 = &v58 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE498, &qword_23DB7BDB0);
  type metadata accessor for AXOnboardingHeader(255, a5, a8, v17);
  sub_23DB6F2DC();
  sub_23DB70B7C();
  sub_23DB6F2DC();
  v60 = a3;
  sub_23DB6F7AC();
  sub_23DB70B7C();
  sub_23DB6F2DC();
  sub_23DB6F2DC();
  swift_getTupleTypeMetadata2();
  sub_23DB706BC();
  sub_23DB70B7C();
  swift_getTupleTypeMetadata3();
  sub_23DB706BC();
  sub_23DB702AC();
  swift_getTupleTypeMetadata2();
  sub_23DB706BC();
  swift_getWitnessTable();
  v18 = sub_23DB7044C();
  v59 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v58 - v19;
  v21 = sub_23DB6F2DC();
  v61 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v58 - v22;
  v24 = sub_23DB6F2DC();
  v62 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v58 = &v58 - v25;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE4A0, &qword_23DB7BDB8);
  v64 = sub_23DB6F2DC();
  v67 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v78 = &v58 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE4A8, &qword_23DB7BDC0);
  v66 = sub_23DB6F2DC();
  v68 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v63 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v65 = &v58 - v29;
  v86 = a3;
  v87 = v80;
  v88 = v82;
  v89 = v85;
  v90 = v83;
  v91 = v81;
  v92 = v84;
  sub_23DB6F68C();
  sub_23DB7043C();
  sub_23DB6F13C();
  sub_23DB7062C();
  WitnessTable = swift_getWitnessTable();
  sub_23DB7004C();
  (*(v59 + 8))(v20, v18);
  sub_23DB6F13C();
  sub_23DB7062C();
  v99 = WitnessTable;
  v100 = MEMORY[0x277CDF678];
  v59 = MEMORY[0x277CDFAD8];
  v57 = swift_getWitnessTable();
  v31 = v58;
  sub_23DB7005C();
  (*(v61 + 8))(v23, v21);
  sub_23DB7062C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE580, &unk_23DB7C080);
  v97 = v57;
  v98 = MEMORY[0x277CDFC60];
  v32 = swift_getWitnessTable();
  sub_23DA17B80(&qword_27E2FE588, &qword_27E2FE580, &unk_23DB7C080, MEMORY[0x277CDF7D8]);
  sub_23DB6FDFC();
  (*(v62 + 8))(v31, v24);
  v33 = v70;
  v34 = v69;
  v35 = v71;
  (*(v70 + 16))(v69, v84, v71);
  v36 = v74;
  v37 = v73;
  v38 = v75;
  (*(v74 + 16))(v73, v79, v75);
  v39 = v33;
  v40 = (*(v33 + 80) + 64) & ~*(v33 + 80);
  v41 = v36;
  v42 = (v72 + *(v36 + 80) + v40) & ~*(v36 + 80);
  v43 = swift_allocObject();
  v44 = v80;
  *(v43 + 2) = v60;
  *(v43 + 3) = v44;
  v45 = v85;
  *(v43 + 4) = v82;
  *(v43 + 5) = v45;
  v46 = v81;
  *(v43 + 6) = v83;
  *(v43 + 7) = v46;
  (*(v39 + 32))(&v43[v40], v34, v35);
  (*(v41 + 32))(&v43[v42], v37, v38);
  v47 = sub_23DA17B80(&qword_27E2FE4B0, &qword_27E2FE4A0, &qword_23DB7BDB8, MEMORY[0x277CE0328]);
  v95 = v32;
  v96 = v47;
  v48 = v64;
  v49 = swift_getWitnessTable();
  sub_23DAB2648();
  sub_23DAB269C();
  v50 = v63;
  v51 = v78;
  sub_23DB6FF4C();

  (*(v67 + 8))(v51, v48);
  v52 = sub_23DA17B80(&qword_27E2FE4B8, &qword_27E2FE4A8, &qword_23DB7BDC0, MEMORY[0x277CE07C8]);
  v93 = v49;
  v94 = v52;
  v53 = v66;
  swift_getWitnessTable();
  v54 = v65;
  sub_23DAAC170();
  v55 = *(v68 + 8);
  v55(v50, v53);
  sub_23DAAC170();
  return (v55)(v54, v53);
}

uint64_t sub_23DAAED44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v35 = a7;
  v36 = a1;
  v37 = a8;
  v38 = a6;
  v28 = a4;
  type metadata accessor for AXOnboardingHeader(255, a4, a7, a4);
  sub_23DB6F2DC();
  sub_23DB70B7C();
  sub_23DB6F2DC();
  sub_23DB6F7AC();
  sub_23DB70B7C();
  sub_23DB6F2DC();
  sub_23DB6F2DC();
  swift_getTupleTypeMetadata2();
  sub_23DB706BC();
  sub_23DB70B7C();
  swift_getTupleTypeMetadata3();
  sub_23DB706BC();
  v12 = sub_23DB702AC();
  v34 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v33 = &v27 - v16;
  v17 = a2;
  v49 = a2;
  v50 = a3;
  v18 = a3;
  v51 = a4;
  v52 = a5;
  v19 = v35;
  v53 = v38;
  v54 = v35;
  type metadata accessor for AXOnboardingView(0, &v49);
  v20 = v36;
  sub_23DAAF174();
  sub_23DB7062C();
  sub_23DB6F10C();
  v29 = v57[3];
  v30 = v59;
  v31 = v62;
  v32 = v61;
  v68 = 1;
  v66 = v58;
  v64 = v60;
  v39 = v17;
  v40 = v18;
  v41 = v28;
  v42 = a5;
  v43 = v38;
  v44 = v19;
  v45 = v20;
  WitnessTable = swift_getWitnessTable();
  sub_23DB7029C();
  v57[2] = WitnessTable;
  v22 = swift_getWitnessTable();
  v23 = v33;
  sub_23DAAC170();
  v24 = v34;
  v25 = *(v34 + 8);
  v25(v14, v12);
  v49 = 0;
  LOBYTE(v50) = v68;
  *(&v50 + 1) = *v67;
  HIDWORD(v50) = *&v67[3];
  v51 = v29;
  LOBYTE(v52) = v66;
  *(&v52 + 1) = *v65;
  HIDWORD(v52) = *&v65[3];
  v53 = v30;
  LOBYTE(v54) = v64;
  *(&v54 + 1) = *v63;
  HIDWORD(v54) = *&v63[3];
  v55 = v32;
  v56 = v31;
  v57[0] = &v49;
  (*(v24 + 16))(v14, v23, v12);
  v57[1] = v14;
  v48[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE498, &qword_23DB7BDB0);
  v48[1] = v12;
  v46 = sub_23DAB2B4C();
  v47 = v22;
  sub_23DAC2F38(v57, 2uLL, v48);
  v25(v23, v12);
  return (v25)(v14, v12);
}

double sub_23DAAF174()
{
  v0 = 0.0;
  if (AXDeviceTemplateType() != 4 && AXDeviceTemplateType() != 5)
  {
    v1 = objc_opt_self();
    v2 = [v1 mainScreen];
    [v2 bounds];
    v4 = v3;

    sub_23DAAC1CC();
    v0 = 15.0;
    if ((_UISolariumEnabled() & 1) == 0)
    {
      if (v10)
      {
        v5 = v4 * 0.06;
      }

      else
      {
        v5 = 0.0;
      }

      v6 = [v1 mainScreen];
      [v6 bounds];
      v8 = v7;

      return v8 * 0.09 - v5;
    }
  }

  return v0;
}

uint64_t sub_23DAAF27C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(void, void)@<X6>, uint64_t a8@<X8>)
{
  v117 = a6;
  v110 = a5;
  v107 = a8;
  v108 = a3;
  v88 = sub_23DB70B7C();
  v12 = sub_23DB6F2DC();
  v13 = sub_23DB6F2DC();
  swift_getTupleTypeMetadata2();
  v14 = sub_23DB706BC();
  v101 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v91 = v12;
  v92 = &v80 - v15;
  v86 = *(v12 - 8);
  MEMORY[0x28223BE20](v16);
  v85 = &v80 - v17;
  v93 = v13;
  v87 = *(v13 - 8);
  MEMORY[0x28223BE20](v18);
  v90 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v89 = &v80 - v21;
  v106 = v22;
  v116 = sub_23DB70B7C();
  v103 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v105 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v104 = &v80 - v25;
  v98 = sub_23DB6F2DC();
  v115 = sub_23DB6F7AC();
  v113 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v121 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v120 = &v80 - v28;
  v29 = sub_23DB70B7C();
  v95 = *(v29 - 8);
  v96 = v29;
  MEMORY[0x28223BE20](v29);
  v99 = &v80 - v30;
  v109 = a7;
  v32 = type metadata accessor for AXOnboardingHeader(0, a4, a7, v31);
  v100 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v97 = &v80 - v33;
  v34 = sub_23DB6F2DC();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  MEMORY[0x28223BE20](v36);
  v38 = &v80 - v37;
  v114 = sub_23DB70B7C();
  v112 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v40 = &v80 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v118 = v40;
  v119 = &v80 - v44;
  v45 = *(a1 + 8);
  v111 = v34;
  v122 = v42;
  v102 = v32;
  if (v45)
  {
    v46 = *v42;
    v47 = *(v42 + 2);
    v80 = *(v122 + 3);
    v81 = v46;
    v82 = *(v122 + 4);
    v83 = v47;
    v48 = *(v122 + 5);

    v132 = a2;
    v133 = v108;
    v134 = a4;
    v135 = v110;
    v94 = v38;
    v49 = v109;
    v136 = v117;
    v137 = v109;
    v50 = type metadata accessor for AXOnboardingView(0, &v132);
    v84 = v35;
    sub_23DAAC1CC();
    v51 = v99;
    (*(v95 + 16))(v99, &v122[*(v50 + 84)], v96);
    AXOnboardingHeader.init(title:description:iconName:traits:customIconView:)(v81, v45, v83, v80, v82, v48, &v123, v51, v97, a4, v49);
    swift_getWitnessTable();
    View.onboardingViewFormat()();
  }

  (*(v35 + 56))(v40, 1, 1, v34, v43);
  WitnessTable = swift_getWitnessTable();
  v53 = sub_23DAB22E0();
  v138 = WitnessTable;
  v139 = v53;
  swift_getWitnessTable();
  sub_23DAC3108(v40, v119);
  v99 = *(v112 + 8);
  v100 = v112 + 8;
  (v99)(v40, v114);
  v54 = v108;
  v55 = v109;
  v132 = a2;
  v133 = v108;
  v56 = a2;
  v57 = v110;
  v134 = a4;
  v135 = v110;
  v58 = v117;
  v136 = v117;
  v137 = v109;
  v95 = *(type metadata accessor for AXOnboardingView(0, &v132) + 76);
  v59 = sub_23DAAC1CC();
  v96 = &v80;
  LODWORD(v94) = (v132 & 8) == 0;
  MEMORY[0x28223BE20](v59);
  *(&v80 - 6) = v56;
  *(&v80 - 5) = v54;
  *(&v80 - 4) = a4;
  *(&v80 - 3) = v57;
  v78 = v58;
  v79 = v55;
  v60 = sub_23DAB22E0();
  v131[12] = v57;
  v131[13] = v60;
  v61 = v98;
  v62 = swift_getWitnessTable();
  v63 = v121;
  sub_23DAB00D8(v94, sub_23DAB2BD0, (&v80 - 8), v56, v61, v57, v62, v121);
  v131[10] = v62;
  v131[11] = v57;
  v64 = v115;
  v108 = swift_getWitnessTable();
  sub_23DAAC170();
  v109 = *(v113 + 8);
  v110 = v113 + 8;
  v109(v63, v64);
  sub_23DAAC1CC();
  v97 = v60;
  if ((v132 & 2) == 0)
  {
    sub_23DB6FB4C();
    v131[9] = v117;
    v65 = swift_getWitnessTable();
    sub_23DB7007C();
    v131[7] = v65;
    v131[8] = MEMORY[0x277CDF918];
    swift_getWitnessTable();
    View.onboardingViewFormat()();
  }

  v66 = v105;
  (*(v101 + 56))(v105, 1, 1, v106);
  swift_getWitnessTable();
  v67 = v104;
  sub_23DAC3108(v66, v104);
  v68 = v103;
  v69 = *(v103 + 8);
  v122 = ((v103 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  v70 = v116;
  v69(v66, v116);
  v71 = v118;
  v72 = v114;
  (*(v112 + 16))(v118, v119);
  v132 = v71;
  v73 = v121;
  v74 = v115;
  (*(v113 + 16))(v121, v120, v115);
  v133 = v73;
  (*(v68 + 16))(v66, v67, v70);
  v134 = v66;
  v131[0] = v72;
  v131[1] = v74;
  v131[2] = v70;
  v126 = swift_getWitnessTable();
  v127 = v97;
  v125 = swift_getWitnessTable();
  v128 = swift_getWitnessTable();
  v129 = v108;
  v124 = swift_getWitnessTable();
  v130 = swift_getWitnessTable();
  sub_23DAC2F38(&v132, 3uLL, v131);
  v69(v67, v70);
  v75 = v109;
  v109(v120, v74);
  v76 = v99;
  (v99)(v119, v72);
  v69(v66, v116);
  v75(v121, v74);
  return (v76)(v118, v72);
}

uint64_t sub_23DAB00D8@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, __n128)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v39 = a7;
  v40 = a6;
  v33 = a3;
  v34 = a2;
  v35 = a1;
  v38 = a8;
  v10 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v33 - v22;
  v24 = sub_23DB6F7AC();
  v37 = *(v24 - 8);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v33 - v26;
  if (v35)
  {
    v34(v36, v25);
    v28 = v39;
    sub_23DAAC170();
    v29 = *(v17 + 8);
    v29(v20, a5);
    sub_23DAAC170();
    sub_23DAAA68C(v20, a5, a4, v28, v40);
    v29(v20, a5);
    v29(v23, a5);
  }

  else
  {
    v30 = v40;
    sub_23DAAC170();
    sub_23DAAC170();
    sub_23DAAA784(v12, a5, a4, v39, v30);
    v31 = *(v10 + 8);
    v31(v12, a4);
    v31(v15, a4);
  }

  v41 = v39;
  v42 = v40;
  swift_getWitnessTable();
  sub_23DAAC170();
  return (*(v37 + 8))(v27, v24);
}

uint64_t sub_23DAB045C(CGFloat *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27[0] = a8;
  v27[1] = a2;
  v14 = sub_23DB6F82C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = a1[1];
  v20 = a1[2];
  v21 = a1[3];
  sub_23DB6F95C();
  sub_23DB6F14C();
  v23 = v22;
  (*(v15 + 8))(v17, v14);
  v29.origin.x = v18;
  v29.origin.y = v19;
  v29.size.width = v20;
  v29.size.height = v21;
  v24 = v23 + CGRectGetHeight(v29);
  v28[0] = a4;
  v28[1] = a5;
  v28[2] = a6;
  v28[3] = a7;
  v28[4] = v27[0];
  v28[5] = a9;
  v25 = type metadata accessor for AXOnboardingView(0, v28);
  return sub_23DAAC28C(v25, v24);
}

BOOL sub_23DAB05D0(uint64_t a1)
{
  sub_23DAAC1CC();
  v2 = sub_23DAAC22C(a1);
  if ((v14 & 2) != 0)
  {
    if (v2 <= sub_23DAAC2EC(a1) + 1.0)
    {
      return 1;
    }

    v12 = sub_23DAAC3AC(a1) > 0.0;
  }

  else
  {
    v3 = [objc_opt_self() mainScreen];
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v15.origin.x = v5;
    v15.origin.y = v7;
    v15.size.width = v9;
    v15.size.height = v11;
    v12 = v2 > CGRectGetHeight(v15);
  }

  return !v12;
}

uint64_t sub_23DAB06C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = *(a1 - 8);
  v35 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v30 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v5 + 24);
  sub_23DB70B7C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE4A0, &qword_23DB7BDB8);
  v32 = sub_23DB6F2DC();
  v37 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v40 = v29 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE4A8, &qword_23DB7BDC0);
  v7 = sub_23DB6F2DC();
  v38 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v31 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v36 = v29 - v10;
  v29[1] = *(a1 + 80);
  sub_23DB7062C();
  v29[0] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE580, &unk_23DB7C080);
  v45 = *(a1 + 48);
  v12 = v45;
  WitnessTable = swift_getWitnessTable();
  sub_23DA17B80(&qword_27E2FE588, &qword_27E2FE580, &unk_23DB7C080, MEMORY[0x277CDF7D8]);
  v14 = v33;
  sub_23DB6FDFC();
  v15 = v30;
  (*(v3 + 16))(v30, v14, a1);
  v16 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v17 = swift_allocObject();
  v18 = v34;
  *(v17 + 16) = *(a1 + 16);
  *(v17 + 24) = v18;
  *(v17 + 32) = *(a1 + 32);
  v19 = *(a1 + 56);
  *(v17 + 48) = v12;
  *(v17 + 56) = v19;
  (*(v3 + 32))(v17 + v16, v15, a1);
  v20 = sub_23DA17B80(&qword_27E2FE4B0, &qword_27E2FE4A0, &qword_23DB7BDB8, MEMORY[0x277CE0328]);
  v43 = WitnessTable;
  v44 = v20;
  v21 = v32;
  v22 = swift_getWitnessTable();
  sub_23DAB2648();
  sub_23DAB269C();
  v23 = v31;
  v24 = v40;
  sub_23DB6FF4C();

  (*(v37 + 8))(v24, v21);
  v25 = sub_23DA17B80(&qword_27E2FE4B8, &qword_27E2FE4A8, &qword_23DB7BDC0, MEMORY[0x277CE07C8]);
  v41 = v22;
  v42 = v25;
  swift_getWitnessTable();
  v26 = v36;
  sub_23DAAC170();
  v27 = *(v38 + 8);
  v27(v23, v7);
  sub_23DAAC170();
  return (v27)(v26, v7);
}

uint64_t sub_23DAB0BB4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_23DB6F82C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23DB7018C();
  sub_23DB6F95C();
  sub_23DB6F14C();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  a1[1] = v8;
  a1[2] = v10;
  a1[3] = v12;
  a1[4] = v14;
  return result;
}

uint64_t sub_23DAB0CCC(CGFloat *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *a1;
  v15 = a1[1];
  v16 = a1[2];
  v17 = a1[3];
  v23.origin.x = *a1;
  v23.origin.y = v15;
  v23.size.width = v16;
  v23.size.height = v17;
  MinY = CGRectGetMinY(v23);
  v22[0] = a3;
  v22[1] = a4;
  v22[2] = a5;
  v22[3] = a6;
  v22[4] = a7;
  v22[5] = a8;
  v19 = type metadata accessor for AXOnboardingView(0, v22);
  sub_23DAAC34C(v19, MinY);
  v24.origin.x = v14;
  v24.origin.y = v15;
  v24.size.width = v16;
  v24.size.height = v17;
  Height = CGRectGetHeight(v24);
  return sub_23DAAC40C(v19, Height);
}

BOOL sub_23DAB0E48(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_23DAB0E78@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_23DAB0EA4@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

_DWORD *sub_23DAB0F90@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t static FramePreferenceKey.defaultValue.setter(double a1, double a2, double a3, double a4)
{
  result = swift_beginAccess();
  *&xmmword_27E2FE478 = a1;
  *(&xmmword_27E2FE478 + 1) = a2;
  qword_27E2FE488 = *&a3;
  unk_27E2FE490 = *&a4;
  return result;
}

unint64_t sub_23DAB1120()
{
  result = qword_27E2FE4C0;
  if (!qword_27E2FE4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE4C0);
  }

  return result;
}

unint64_t sub_23DAB1178()
{
  result = qword_27E2FE4C8;
  if (!qword_27E2FE4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE4C8);
  }

  return result;
}

unint64_t sub_23DAB11D0()
{
  result = qword_27E2FE4D0;
  if (!qword_27E2FE4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE4D0);
  }

  return result;
}

unint64_t sub_23DAB1228()
{
  result = qword_27E2FE4D8[0];
  if (!qword_27E2FE4D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E2FE4D8);
  }

  return result;
}

double sub_23DAB127C@<D0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  result = *&xmmword_27E2FE478;
  v3 = *&qword_27E2FE488;
  *a1 = xmmword_27E2FE478;
  a1[1] = v3;
  return result;
}

double sub_23DAB12C8@<D0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  result = *&xmmword_27E2FE478;
  v3 = *&qword_27E2FE488;
  *a1 = xmmword_27E2FE478;
  a1[1] = v3;
  return result;
}

__n128 sub_23DAB1314(uint64_t a1)
{
  swift_beginAccess();
  result = *a1;
  v3 = *(a1 + 16);
  xmmword_27E2FE478 = *a1;
  *&qword_27E2FE488 = v3;
  return result;
}

void sub_23DAB1368(void *a1)
{
  sub_23DAB1BA8(319, &qword_27E2FC298, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_23DB70B7C();
      if (v3 <= 0x3F)
      {
        sub_23DB70B7C();
        if (v4 <= 0x3F)
        {
          sub_23DAB1BA8(319, &qword_27E2FE560, &type metadata for OnboardingTraits, MEMORY[0x277CE11F8]);
          if (v5 <= 0x3F)
          {
            sub_23DAB1BA8(319, &qword_27E2FE568, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
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

uint64_t sub_23DAB14D4(int *a1, unsigned int a2, void *a3)
{
  v4 = a3[2];
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(a3[3] - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  if (v6 <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = *(v5 + 84);
  }

  v11 = a3[4];
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v10 <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v10;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(*(a3[3] - 8) + 64);
  if (!v8)
  {
    ++v17;
  }

  v18 = *(v5 + 80);
  v19 = *(*(v4 - 8) + 64);
  v20 = *(v7 + 80);
  v21 = *(v12 + 80);
  if (v13)
  {
    v22 = *(*(v11 - 8) + 64);
  }

  else
  {
    v22 = *(*(v11 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v23 = v17 + v21;
  v24 = v22 + 7;
  if (v16 < a2)
  {
    v25 = ((((((((v24 + ((v23 + ((v19 + v20 + ((v18 + 48) & ~v18)) & ~v20)) & ~v21)) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    v26 = a2 - v16;
    v27 = v25 & 0xFFFFFFF8;
    if ((v25 & 0xFFFFFFF8) != 0)
    {
      v28 = 2;
    }

    else
    {
      v28 = v26 + 1;
    }

    if (v28 >= 0x10000)
    {
      v29 = 4;
    }

    else
    {
      v29 = 2;
    }

    if (v28 < 0x100)
    {
      v29 = 1;
    }

    if (v28 >= 2)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    if (v30 > 1)
    {
      if (v30 == 2)
      {
        v31 = *(a1 + v25);
        if (v31)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v31 = *(a1 + v25);
        if (v31)
        {
          goto LABEL_37;
        }
      }
    }

    else if (v30)
    {
      v31 = *(a1 + v25);
      if (v31)
      {
LABEL_37:
        v32 = v31 - 1;
        if (v27)
        {
          v32 = 0;
          v33 = *a1;
        }

        else
        {
          v33 = 0;
        }

        return v16 + (v33 | v32) + 1;
      }
    }
  }

  v34 = (((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v18 + 16) & ~v18;
  if (v6 == v16)
  {
    v35 = *(v5 + 48);

    return v35(v34, v6, v4);
  }

  v37 = (v34 + v19 + v20) & ~v20;
  if (v9 == v16)
  {
    if (v8 >= 2)
    {
      v38 = (*(v7 + 48))(v37);
      goto LABEL_59;
    }

    return 0;
  }

  v39 = (v23 + v37) & ~v21;
  if (v14 == v16)
  {
    if (v13 >= 2)
    {
      v38 = (*(v12 + 48))(v39, v13, v11);
LABEL_59:
      if (v38 >= 2)
      {
        return v38 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v40 = *(((v24 + v39) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v40 >= 0xFFFFFFFF)
  {
    LODWORD(v40) = -1;
  }

  return (v40 + 1);
}

_DWORD *sub_23DAB1808(_DWORD *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = 0;
  v6 = *(a4[2] - 8);
  v7 = *(v6 + 84);
  v8 = *(a4[3] - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v7 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = *(v6 + 84);
  }

  v12 = a4[4];
  v13 = *(v12 - 8);
  v14 = *(v13 + 84);
  v15 = *(v6 + 80);
  v16 = *(*(a4[2] - 8) + 64);
  v17 = *(v8 + 80);
  v18 = *(v13 + 80);
  if (v14)
  {
    v19 = v14 - 1;
  }

  else
  {
    v19 = 0;
  }

  if (v11 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v11;
  }

  if (v20 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  if (v9)
  {
    v21 = *(*(a4[3] - 8) + 64);
  }

  else
  {
    v21 = *(*(a4[3] - 8) + 64) + 1;
  }

  v22 = v21 + v18;
  v23 = (v21 + v18 + ((v16 + v17 + ((v15 + 48) & ~v15)) & ~v17)) & ~v18;
  if (v14)
  {
    v24 = *(*(v12 - 8) + 64);
  }

  else
  {
    v24 = *(*(v12 - 8) + 64) + 1;
  }

  v25 = v24 + 7;
  v26 = ((((((((v25 + v23) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v20 < a3)
  {
    v27 = a3 - v20;
    if (((((((((v25 + v23) & 0xFFFFFFF8) + 27) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v28 = v27 + 1;
    }

    else
    {
      v28 = 2;
    }

    if (v28 >= 0x10000)
    {
      v5 = 4;
    }

    else
    {
      v5 = 2;
    }

    if (v28 < 0x100)
    {
      v5 = 1;
    }

    if (v28 < 2)
    {
      v5 = 0;
    }
  }

  if (a2 > v20)
  {
    if (((((((((v25 + v23) & 0xFFFFFFF8) + 27) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v29 = a2 - v20;
    }

    else
    {
      v29 = 1;
    }

    if (((((((((v25 + v23) & 0xFFFFFFF8) + 27) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v30 = ~v20 + a2;
      v31 = result;
      bzero(result, v26);
      result = v31;
      *v31 = v30;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + v26) = v29;
      }

      else
      {
        *(result + v26) = v29;
      }
    }

    else if (v5)
    {
      *(result + v26) = v29;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + v26) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_50;
    }

    *(result + v26) = 0;
  }

  else if (v5)
  {
    *(result + v26) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_50;
  }

  if (!a2)
  {
    return result;
  }

LABEL_50:
  v32 = (((((result + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v15 + 16) & ~v15;
  if (v7 == v20)
  {
    v33 = *(v6 + 56);

    return v33(v32);
  }

  else
  {
    v34 = (v32 + v16 + v17) & ~v17;
    if (v10 == v20)
    {
      v35 = *(v8 + 56);
      v36 = a2 + 1;

      return v35(v34, v36, v9);
    }

    else
    {
      result = ((v22 + v34) & ~v18);
      if (v19 == v20)
      {
        v37 = *(v13 + 56);
        v38 = a2 + 1;

        return v37(result, v38, v14, v12);
      }

      else
      {
        v39 = (result + v25) & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v39 + 16) = 0;
          *v39 = a2 & 0x7FFFFFFF;
          *(v39 + 8) = 0;
        }

        else
        {
          *(v39 + 8) = a2 - 1;
        }
      }
    }
  }

  return result;
}

void sub_23DAB1BA8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for OnboardingTraits(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for OnboardingTraits(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for FramePreferenceKey(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for FramePreferenceKey(_WORD *result, int a2, int a3)
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

uint64_t sub_23DAB1D3C(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1[5];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE498, &qword_23DB7BDB0);
  type metadata accessor for AXOnboardingHeader(255, v1, v2, v3);
  sub_23DB6F2DC();
  sub_23DB70B7C();
  sub_23DB6F2DC();
  sub_23DB6F7AC();
  sub_23DB70B7C();
  sub_23DB6F2DC();
  sub_23DB6F2DC();
  swift_getTupleTypeMetadata2();
  sub_23DB706BC();
  sub_23DB70B7C();
  swift_getTupleTypeMetadata3();
  sub_23DB706BC();
  sub_23DB702AC();
  swift_getTupleTypeMetadata2();
  sub_23DB706BC();
  swift_getWitnessTable();
  sub_23DB7044C();
  sub_23DB6F2DC();
  sub_23DB6F2DC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE4A0, &qword_23DB7BDB8);
  sub_23DB6F2DC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE4A8, &qword_23DB7BDC0);
  sub_23DB6F2DC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23DA17B80(&qword_27E2FE4B0, &qword_27E2FE4A0, &qword_23DB7BDB8, MEMORY[0x277CE0328]);
  swift_getWitnessTable();
  sub_23DA17B80(&qword_27E2FE4B8, &qword_27E2FE4A8, &qword_23DB7BDC0, MEMORY[0x277CE07C8]);
  swift_getWitnessTable();
  sub_23DB6F00C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_23DB6F1CC();
  sub_23DB6F2DC();
  sub_23DB6F2DC();
  sub_23DB6F2DC();
  sub_23DB70B7C();
  swift_getTupleTypeMetadata2();
  sub_23DB706BC();
  swift_getWitnessTable();
  sub_23DB7044C();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23DAB220C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v14[0] = v2[2];
  v5 = v14[0];
  v14[1] = v6;
  v14[2] = v7;
  v14[3] = v8;
  v14[4] = v9;
  v14[5] = v10;
  v11 = *(type metadata accessor for AXOnboardingView(0, v14) - 8);
  v12 = v2 + ((*(v11 + 80) + 64) & ~*(v11 + 80));

  return sub_23DAAD8FC(a1, v12, v5, v6, v7, v8, v9, v10, a2);
}

unint64_t sub_23DAB22E0()
{
  result = qword_27E2FE578;
  if (!qword_27E2FE578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE578);
  }

  return result;
}

uint64_t objectdestroyTm_4()
{
  v1 = *(v0 + 24);
  v12[0] = *(v0 + 16);
  v2 = v12[0];
  v12[1] = v1;
  v3 = *(v0 + 48);
  v11 = *(v0 + 32);
  v13 = v11;
  v14 = v3;
  v4 = type metadata accessor for AXOnboardingView(0, v12);
  v5 = v0 + ((*(*(v4 - 1) + 80) + 64) & ~*(*(v4 - 1) + 80));

  (*(*(v2 - 8) + 8))(v5 + v4[19], v2);
  v6 = v4[20];
  v7 = *(v1 - 8);
  if (!(*(v7 + 48))(v5 + v6, 1, v1))
  {
    (*(v7 + 8))(v5 + v6, v1);
  }

  v8 = v4[21];
  v9 = *(v11 - 8);
  if (!(*(v9 + 48))(v5 + v8, 1, v11))
  {
    (*(v9 + 8))(v5 + v8, v11);
  }

  return swift_deallocObject();
}

uint64_t sub_23DAB2584(CGFloat *a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v12[0] = v1[2];
  v3 = v12[0];
  v12[1] = v4;
  v12[2] = v5;
  v12[3] = v6;
  v12[4] = v7;
  v12[5] = v8;
  v9 = *(type metadata accessor for AXOnboardingView(0, v12) - 8);
  v10 = v1 + ((*(v9 + 80) + 64) & ~*(v9 + 80));

  return sub_23DAB0CCC(a1, v10, v3, v4, v5, v6, v7, v8);
}

unint64_t sub_23DAB2648()
{
  result = qword_27E2FE590;
  if (!qword_27E2FE590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE590);
  }

  return result;
}

unint64_t sub_23DAB269C()
{
  result = qword_27E2FD1F8;
  if (!qword_27E2FD1F8)
  {
    type metadata accessor for CGRect(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FD1F8);
  }

  return result;
}

uint64_t sub_23DAB2720()
{
  v1 = *(v0 + 24);
  v17[0] = *(v0 + 16);
  v2 = v17[0];
  v17[1] = v1;
  v3 = *(v0 + 48);
  v14 = *(v0 + 32);
  v18 = v14;
  v19 = v3;
  v4 = type metadata accessor for AXOnboardingView(0, v17);
  v5 = (*(*(v4 - 1) + 80) + 64) & ~*(*(v4 - 1) + 80);
  v15 = *(*(v4 - 1) + 64);
  v16 = sub_23DB6F15C();
  v6 = *(v16 - 8);
  v7 = *(v6 + 80);
  v8 = v0 + v5;

  (*(*(v2 - 8) + 8))(v0 + v5 + v4[19], v2);
  v9 = v4[20];
  v10 = *(v1 - 8);
  if (!(*(v10 + 48))(v0 + v5 + v9, 1, v1))
  {
    (*(v10 + 8))(v8 + v9, v1);
  }

  v11 = v4[21];
  v12 = *(v14 - 8);
  if (!(*(v12 + 48))(v8 + v11, 1, v14))
  {
    (*(v12 + 8))(v8 + v11, v14);
  }

  (*(v6 + 8))(v0 + ((v5 + v15 + v7) & ~v7), v16);
  return swift_deallocObject();
}

uint64_t sub_23DAB29FC(CGFloat *a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v14[0] = v1[2];
  v3 = v14[0];
  v14[1] = v4;
  v14[2] = v5;
  v14[3] = v6;
  v14[4] = v7;
  v14[5] = v8;
  v9 = *(type metadata accessor for AXOnboardingView(0, v14) - 8);
  v10 = (*(v9 + 80) + 64) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_23DB6F15C() - 8);
  return sub_23DAB045C(a1, v1 + v10, v1 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80)), v3, v4, v5, v6, v7, v8);
}

unint64_t sub_23DAB2B4C()
{
  result = qword_27E2FE598;
  if (!qword_27E2FE598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE498, &qword_23DB7BDB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE598);
  }

  return result;
}

uint64_t sub_23DAB2C0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23DB6F55C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEF8, &qword_23DB73D60);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_23DA0E2B4(v2, &v14 - v9, &qword_27E2FBEF8, &qword_23DB73D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23DB6F25C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_23DB70ACC();
    v13 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t AXOnboardingBulletList.init(content:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEF8, &qword_23DB73D60);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for AXOnboardingBulletList(0, a2, a3, v7);
  return a1();
}

uint64_t AXOnboardingBulletList.body.getter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E2FE5A0, &qword_23DB7C0C8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_23DB7044C();
  type metadata accessor for AXOnboardingBulletListFormat(255);
  sub_23DB6F2DC();
  swift_getTupleTypeMetadata2();
  sub_23DB706BC();
  swift_getWitnessTable();
  v5 = sub_23DB7044C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v14[-v10];
  v15 = v3;
  v16 = v4;
  v17 = v1;
  sub_23DB6F68C();
  sub_23DB7043C();
  swift_getWitnessTable();
  sub_23DAAC170();
  v12 = *(v6 + 8);
  v12(v8, v5);
  sub_23DAAC170();
  return (v12)(v11, v5);
}

uint64_t sub_23DAB30F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a4;
  v7 = sub_23DB7044C();
  v34 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  type metadata accessor for AXOnboardingBulletListFormat(255);
  v10 = sub_23DB6F2DC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v32 = &v30 - v15;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2FE5A0, &qword_23DB7C0C8);
  MEMORY[0x28223BE20](v33);
  v31 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - v18;
  v21 = *(v20 + 36);
  *&v19[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEF8, &qword_23DB73D60);
  swift_storeEnumTagMultiPayload();
  *v19 = 0;
  v19[8] = 1;
  sub_23DB6F69C();
  type metadata accessor for AXOnboardingBulletList(0, a2, a3, v22);
  sub_23DAB3550();
  v36 = a2;
  v37 = a3;
  v38 = a1;
  sub_23DB7043C();
  WitnessTable = swift_getWitnessTable();
  View.bulletListFormat()(v7, WitnessTable);
  (*(v34 + 8))(v9, v7);
  v24 = sub_23DAB3FBC(&qword_27E2FE628, type metadata accessor for AXOnboardingBulletListFormat, &protocol conformance descriptor for AXOnboardingBulletListFormat);
  v42[2] = WitnessTable;
  v42[3] = v24;
  v25 = swift_getWitnessTable();
  v26 = v32;
  sub_23DAAC170();
  v27 = *(v11 + 8);
  v27(v13, v10);
  v28 = v31;
  sub_23DA0E2B4(v19, v31, qword_27E2FE5A0, &qword_23DB7C0C8);
  v42[0] = v28;
  (*(v11 + 16))(v13, v26, v10);
  v42[1] = v13;
  v41[0] = v33;
  v41[1] = v10;
  v39 = sub_23DAB3E98();
  v40 = v25;
  sub_23DAC2F38(v42, 2uLL, v41);
  v27(v26, v10);
  sub_23DAB3F54(v19);
  v27(v13, v10);
  return sub_23DAB3F54(v28);
}

double sub_23DAB3550()
{
  v0 = sub_23DB6F25C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - v5;
  sub_23DAB2C0C(&v13 - v5);
  (*(v1 + 104))(v3, *MEMORY[0x277CDFA00], v0);
  sub_23DAB3FBC(&qword_27E2FC160, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  v7 = sub_23DB7084C();
  v8 = *(v1 + 8);
  v8(v3, v0);
  if (v7)
  {
    v8(v6, v0);
    goto LABEL_4;
  }

  IsPad = AXDeviceIsPad();
  v8(v6, v0);
  if (IsPad)
  {
LABEL_4:
    v10 = AXDeviceTemplateType();
    if ((v10 - 2) > 3)
    {
      return 36.0;
    }

    else
    {
      return dbl_23DB7C160[v10 - 2];
    }
  }

  v12 = AXDeviceTemplateType();
  result = 26.0;
  if (v12 == 5)
  {
    return 22.0;
  }

  return result;
}

uint64_t sub_23DAB3734(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AXOnboardingBulletList(0, v6, v7, v8);
  sub_23DAAC170();
  sub_23DAAC170();
  return (*(v3 + 8))(v5, a2);
}

void sub_23DAB3830(uint64_t a1)
{
  sub_23DA156A4(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23DAB38B8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_23DB6F25C() - 8) + 64);
  v7 = *(*(a3 + 16) - 8);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= 0xFE)
  {
    v11 = 254;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = v6 + v9 + 1;
  if (a2 <= v11)
  {
    goto LABEL_30;
  }

  v13 = (v12 & ~v9) + v10;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v11 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_30:
      if (v8 > 0xFE)
      {
        v22 = *(*(*(a3 + 16) - 8) + 48);

        return v22((a1 + v12) & ~v9);
      }

      else
      {
        v21 = *(a1 + v6);
        if (v21 >= 2)
        {
          return (v21 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_30;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v19 = v13;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_23DAB3AB0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_23DB6F25C() - 8) + 64);
  v9 = 8;
  if (v8 > 8)
  {
    v9 = v8;
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = v9 + 1;
  v15 = v9 + 1 + v12;
  v16 = (v15 & ~v12) + *(v10 + 64);
  if (a3 <= v13)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v13 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v13 < a2)
  {
    v18 = ~v13 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_57:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v16] = 0;
LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!v17)
  {
    goto LABEL_32;
  }

  a1[v16] = 0;
  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v11 > 0xFE)
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v12, a2);
  }

  else if (a2 > 0xFE)
  {
    if (v14 <= 3)
    {
      v24 = ~(-1 << (8 * v14));
    }

    else
    {
      v24 = -1;
    }

    if (v9 != -1)
    {
      v25 = v24 & (a2 - 255);
      if (v14 <= 3)
      {
        v26 = v9 + 1;
      }

      else
      {
        v26 = 4;
      }

      bzero(a1, v14);
      if (v26 > 2)
      {
        if (v26 == 3)
        {
          *a1 = v25;
          a1[2] = BYTE2(v25);
        }

        else
        {
          *a1 = v25;
        }
      }

      else if (v26 == 1)
      {
        *a1 = v25;
      }

      else
      {
        *a1 = v25;
      }
    }
  }

  else
  {
    a1[v9] = -a2;
  }
}

uint64_t sub_23DAB3DA4(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E2FE5A0, &qword_23DB7C0C8);
  sub_23DB7044C();
  type metadata accessor for AXOnboardingBulletListFormat(255);
  sub_23DB6F2DC();
  swift_getTupleTypeMetadata2();
  sub_23DB706BC();
  swift_getWitnessTable();
  sub_23DB7044C();

  return swift_getWitnessTable();
}

unint64_t sub_23DAB3E98()
{
  result = qword_27E2FE630;
  if (!qword_27E2FE630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E2FE5A0, &qword_23DB7C0C8);
    sub_23DAB3FBC(&qword_27E2FE638, type metadata accessor for AXOnboardingTitleToListFormat, &protocol conformance descriptor for AXOnboardingTitleToListFormat);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE630);
  }

  return result;
}

uint64_t sub_23DAB3F54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2FE5A0, &qword_23DB7C0C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23DAB3FBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23DAB4004@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23DB6F55C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEF8, &qword_23DB73D60);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_23DA0E2B4(v2, &v14 - v9, &qword_27E2FBEF8, &qword_23DB73D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23DB6F25C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_23DB70ACC();
    v13 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

int *AXOnboardingBulletItem.init(iconName:title:description:iconColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  *a8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEF8, &qword_23DB73D60);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for AXOnboardingBulletItem(0);
  v17 = (a8 + result[5]);
  *v17 = a1;
  v17[1] = a2;
  v18 = (a8 + result[6]);
  *v18 = a3;
  v18[1] = a4;
  v19 = (a8 + result[7]);
  *v19 = a5;
  v19[1] = a6;
  *(a8 + result[8]) = a7;
  return result;
}

uint64_t type metadata accessor for AXOnboardingBulletItem(uint64_t a1)
{
  result = qword_27E2FE688;
  if (!qword_27E2FE688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AXOnboardingBulletItem.body.getter@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE640, &qword_23DB7C1B8);
  MEMORY[0x28223BE20](v51);
  v2 = &v40 - v1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE648, &qword_23DB7C1C0);
  v44 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v43 = &v40 - v3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE650, &qword_23DB7C1C8);
  MEMORY[0x28223BE20](v48);
  v50 = &v40 - v4;
  v5 = sub_23DB6F9FC();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE658, &qword_23DB7C1D0);
  MEMORY[0x28223BE20](v47);
  v9 = &v40 - v8;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE660, &qword_23DB7C1D8);
  v42 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v41 = &v40 - v10;
  v11 = sub_23DB6F25C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  sub_23DAB4004(&v40 - v16);
  (*(v12 + 104))(v14, *MEMORY[0x277CDFA00], v11);
  sub_23DAB4A80();
  v18 = sub_23DB7084C();
  v19 = *(v12 + 8);
  v19(v14, v11);
  if (v18)
  {
    v19(v17, v11);
  }

  else
  {
    IsPad = AXDeviceIsPad();
    v19(v17, v11);
    if ((IsPad & 1) == 0)
    {
      *v9 = sub_23DB6F69C();
      *(v9 + 1) = 0;
      v9[16] = 1;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE668, &qword_23DB7C1E0);
      sub_23DAB4AD8(&v9[*(v33 + 44)]);
      sub_23DB6F9DC();
      v34 = sub_23DA17B80(&qword_27E2FE670, &qword_27E2FE658, &qword_23DB7C1D0, MEMORY[0x277CE1198]);
      v35 = v41;
      v36 = v47;
      sub_23DB6FF8C();
      (*(v45 + 8))(v7, v46);
      sub_23DA17988(v9, &qword_27E2FE658, &qword_23DB7C1D0);
      v37 = v42;
      v38 = v49;
      (*(v42 + 16))(v50, v35, v49);
      swift_storeEnumTagMultiPayload();
      v54 = v36;
      v55 = v34;
      swift_getOpaqueTypeConformance2();
      v39 = sub_23DA17B80(&qword_27E2FE678, &qword_27E2FE640, &qword_23DB7C1B8, MEMORY[0x277CE1138]);
      v54 = v51;
      v55 = v39;
      swift_getOpaqueTypeConformance2();
      sub_23DB6F79C();
      return (*(v37 + 8))(v35, v38);
    }
  }

  if (_UISolariumEnabled())
  {
    v21 = sub_23DB6F5AC();
  }

  else
  {
    v21 = sub_23DB6F5BC();
  }

  v22 = v21;
  v23 = _UISolariumEnabled();
  v24 = 0x402C000000000000;
  if (v23)
  {
    v24 = 0x403E000000000000;
  }

  *v2 = v22;
  *(v2 + 1) = v24;
  v2[16] = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE680, &qword_23DB7C1E8);
  sub_23DAB4AD8(&v2[*(v25 + 44)]);
  sub_23DB6F9DC();
  v26 = sub_23DA17B80(&qword_27E2FE678, &qword_27E2FE640, &qword_23DB7C1B8, MEMORY[0x277CE1138]);
  v27 = v43;
  v28 = v51;
  sub_23DB6FF8C();
  (*(v45 + 8))(v7, v46);
  sub_23DA17988(v2, &qword_27E2FE640, &qword_23DB7C1B8);
  v29 = v44;
  v30 = v52;
  (*(v44 + 16))(v50, v27, v52);
  swift_storeEnumTagMultiPayload();
  v31 = sub_23DA17B80(&qword_27E2FE670, &qword_27E2FE658, &qword_23DB7C1D0, MEMORY[0x277CE1198]);
  v54 = v47;
  v55 = v31;
  swift_getOpaqueTypeConformance2();
  v54 = v28;
  v55 = v26;
  swift_getOpaqueTypeConformance2();
  sub_23DB6F79C();
  return (*(v29 + 8))(v27, v30);
}

unint64_t sub_23DAB4A80()
{
  result = qword_27E2FC160;
  if (!qword_27E2FC160)
  {
    sub_23DB6F25C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FC160);
  }

  return result;
}

uint64_t sub_23DAB4AD8@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE6B0, &unk_23DB7C270);
  MEMORY[0x28223BE20](v2 - 8);
  v26 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - v5;
  v7 = sub_23DB702CC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE6B8, &unk_23DB7CCA0);
  MEMORY[0x28223BE20](v11 - 8);
  v25 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v24 = &v24 - v14;
  v15 = type metadata accessor for AXOnboardingBulletItem(0);

  sub_23DB702DC();
  _UISolariumEnabled();
  (*(v8 + 104))(v10, *MEMORY[0x277CE0FE0], v7);
  v16 = sub_23DB702EC();
  (*(v8 + 8))(v10, v7);
  sub_23DB7062C();
  sub_23DB6F10C();

  v32 = 1;
  *&v31[38] = v35;
  *&v31[22] = v34;
  *&v31[6] = v33;
  result = *(v1 + *(v15 + 32));
  if (result)
  {
    *(v29 + 2) = *v31;
    *(&v29[1] + 2) = *&v31[16];
    *(&v29[2] + 2) = *&v31[32];
    v28 = v16;
    LOWORD(v29[0]) = v32;
    *&v29[3] = *&v31[46];
    *(&v29[3] + 1) = result;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE6C0, &unk_23DB7C280);
    sub_23DAB57C0();
    v18 = v24;
    sub_23DB6FE7C();
    v30[2] = v29[1];
    v30[3] = v29[2];
    v30[4] = v29[3];
    v30[0] = v28;
    v30[1] = v29[0];
    sub_23DA17988(v30, &qword_27E2FE6C0, &unk_23DB7C280);
    *v6 = sub_23DB6F69C();
    *(v6 + 1) = 0;
    v6[16] = 1;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE6F0, &qword_23DB7C2A0);
    sub_23DAB4F38(v1, &v6[*(v19 + 44)]);
    v20 = v25;
    sub_23DA0E2B4(v18, v25, &qword_27E2FE6B8, &unk_23DB7CCA0);
    v21 = v26;
    sub_23DAB5988(v6, v26);
    v22 = v27;
    sub_23DA0E2B4(v20, v27, &qword_27E2FE6B8, &unk_23DB7CCA0);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE6F8, &qword_23DB7C2A8);
    sub_23DAB5988(v21, v22 + *(v23 + 48));
    sub_23DA17988(v6, &qword_27E2FE6B0, &unk_23DB7C270);
    sub_23DA17988(v18, &qword_27E2FE6B8, &unk_23DB7CCA0);
    sub_23DA17988(v21, &qword_27E2FE6B0, &unk_23DB7C270);
    return sub_23DA17988(v20, &qword_27E2FE6B8, &unk_23DB7CCA0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23DAB4F38@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v63 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE700, &unk_23DB7C2B0);
  v65 = *(v3 - 8);
  v66 = v3;
  MEMORY[0x28223BE20](v3);
  v64 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v67 = &v61 - v6;
  v7 = type metadata accessor for AXOnboardingBulletItem(0);
  v8 = *(v7 + 24);
  v62 = a1;
  v9 = (a1 + v8);
  v10 = v9[1];
  v68 = *v9;
  v69 = v10;
  v11 = sub_23DA16E70();

  v61 = v11;
  v12 = sub_23DB6FD8C();
  v14 = v13;
  v16 = v15;
  if (_UISolariumEnabled())
  {
    sub_23DB6FBCC();
  }

  else
  {
    sub_23DB6FBBC();
  }

  v17 = sub_23DB6FD3C();
  v19 = v18;
  v21 = v20;

  sub_23DA16EC4(v12, v14, v16 & 1);

  LODWORD(v68) = sub_23DB6F87C();
  v22 = sub_23DB6FCEC();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_23DA16EC4(v17, v19, v21 & 1);

  v68 = v22;
  v69 = v24;
  v70 = v26 & 1;
  v71 = v28;
  v72 = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE708, &qword_23DB7D9B0);
  sub_23DAB59F8();
  sub_23DB7002C();
  sub_23DA16EC4(v22, v24, v26 & 1);

  v29 = (v62 + *(v7 + 28));
  v31 = *v29;
  v30 = v29[1];
  v32 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v32 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (v32)
  {
    v68 = v31;
    v69 = v30;

    v33 = sub_23DB6FD8C();
    v35 = v34;
    v37 = v36;
    if (_UISolariumEnabled())
    {
      sub_23DB6FBCC();
    }

    else
    {
      sub_23DB6FBBC();
    }

    v42 = sub_23DB6FD3C();
    v44 = v43;
    v46 = v45;

    sub_23DA16EC4(v33, v35, v37 & 1);

    LODWORD(v68) = sub_23DB6F89C();
    v47 = sub_23DB6FCEC();
    v38 = v48;
    v50 = v49;
    v40 = v51;
    sub_23DA16EC4(v42, v44, v46 & 1);

    v39 = v50 & 1;
    v62 = v47;
    sub_23DA6D470(v47, v38, v50 & 1);

    v41 = 256;
  }

  else
  {
    v62 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
  }

  v53 = v64;
  v52 = v65;
  v54 = *(v65 + 16);
  v55 = v66;
  v54(v64, v67, v66);
  v56 = v63;
  v54(v63, v53, v55);
  v57 = &v56[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE718, &unk_23DB7C2C0) + 48)];
  v58 = v62;
  sub_23DA6EC54(v62, v38, v39, v40);
  sub_23DA6EC98(v58, v38, v39, v40);
  *v57 = v58;
  *(v57 + 1) = v38;
  *(v57 + 2) = v39;
  *(v57 + 3) = v40;
  *(v57 + 16) = v41;
  v59 = *(v52 + 8);
  v59(v67, v55);
  sub_23DA6EC98(v58, v38, v39, v40);
  return (v59)(v53, v55);
}

uint64_t sub_23DAB53D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2FBF58, &unk_23DB73E30);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23DAB54B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2FBF58, &unk_23DB73E30);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_23DAB557C(uint64_t a1)
{
  sub_23DA156A4(319);
  if (v1 <= 0x3F)
  {
    sub_23DAB560C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23DAB560C()
{
  if (!qword_27E2FE698)
  {
    v0 = sub_23DB70B7C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2FE698);
    }
  }
}

unint64_t sub_23DAB5660()
{
  result = qword_27E2FE6A0;
  if (!qword_27E2FE6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE6A8, &qword_23DB7C268);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE658, &qword_23DB7C1D0);
    sub_23DA17B80(&qword_27E2FE670, &qword_27E2FE658, &qword_23DB7C1D0, MEMORY[0x277CE1198]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE640, &qword_23DB7C1B8);
    sub_23DA17B80(&qword_27E2FE678, &qword_27E2FE640, &qword_23DB7C1B8, MEMORY[0x277CE1138]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE6A0);
  }

  return result;
}

unint64_t sub_23DAB57C0()
{
  result = qword_27E2FE6C8;
  if (!qword_27E2FE6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE6C0, &unk_23DB7C280);
    sub_23DAB5878();
    sub_23DA17B80(&qword_27E2FC200, &qword_27E2FC208, &qword_23DB7CCC0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE6C8);
  }

  return result;
}

unint64_t sub_23DAB5878()
{
  result = qword_27E2FE6D0;
  if (!qword_27E2FE6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE6D8, &unk_23DB7CCB0);
    sub_23DAB5904();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE6D0);
  }

  return result;
}

unint64_t sub_23DAB5904()
{
  result = qword_27E2FE6E0;
  if (!qword_27E2FE6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE6E8, &unk_23DB7C290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE6E0);
  }

  return result;
}

uint64_t sub_23DAB5988(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE6B0, &unk_23DB7C270);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23DAB59F8()
{
  result = qword_27E2FE710;
  if (!qword_27E2FE710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE708, &qword_23DB7D9B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE710);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23DAB5A90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_23DAB5AD8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

double sub_23DAB5B48@<D0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v50 = a1;
  v52 = a2;
  v2 = sub_23DB6F32C();
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD208, &qword_23DB7C3F0);
  MEMORY[0x28223BE20](v51);
  v7 = &v48 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE750, &qword_23DB7C3F8);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE758, &qword_23DB7C400);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v48 - v14;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE760, &qword_23DB7C408);
  MEMORY[0x28223BE20](v49);
  v17 = &v48 - v16;
  sub_23DB6F98C();
  v18 = sub_23DB6FB3C();
  sub_23DB6EFAC();
  v19 = &v11[*(v9 + 44)];
  *v19 = v18;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  *(v19 + 3) = v22;
  *(v19 + 4) = v23;
  v19[40] = 0;
  sub_23DB7062C();
  sub_23DB6F34C();
  sub_23DA17A54(v11, v15, &qword_27E2FE750, &qword_23DB7C3F8);
  v24 = &v15[*(v13 + 44)];
  v25 = v58;
  *(v24 + 4) = v57;
  *(v24 + 5) = v25;
  *(v24 + 6) = v59;
  v26 = v54;
  *v24 = v53;
  *(v24 + 1) = v26;
  v27 = v56;
  *(v24 + 2) = v55;
  *(v24 + 3) = v27;
  v28 = *(v3 + 28);
  v29 = *MEMORY[0x277CE0118];
  v30 = sub_23DB6F63C();
  (*(*(v30 - 8) + 104))(&v5[v28], v29, v30);
  __asm { FMOV            V0.2D, #8.0 }

  *v5 = _Q0;
  v36 = sub_23DB6F99C();
  if (v50)
  {
    v37 = sub_23DB700EC();
  }

  else
  {
    if (v36)
    {
      if (qword_27E2FBBA8 != -1)
      {
        swift_once();
      }

      v37 = qword_27E30A680;
    }

    else
    {
      if (qword_27E2FBBA0 != -1)
      {
        swift_once();
      }

      v37 = qword_27E30A678;
    }
  }

  sub_23DAB698C(v5, v7);
  v38 = v51;
  *&v7[*(v51 + 52)] = v37;
  *&v7[*(v38 + 56)] = 256;
  v39 = sub_23DB7062C();
  v41 = v40;
  v42 = &v17[*(v49 + 36)];
  sub_23DA17A54(v7, v42, &qword_27E2FD208, &qword_23DB7C3F0);
  v43 = (v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE768, &qword_23DB7C410) + 36));
  *v43 = v39;
  v43[1] = v41;
  sub_23DA17A54(v15, v17, &qword_27E2FE758, &qword_23DB7C400);
  sub_23DB7062C();
  sub_23DB6F10C();
  v44 = v52;
  sub_23DA17A54(v17, v52, &qword_27E2FE760, &qword_23DB7C408);
  v45 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE770, &qword_23DB7C418) + 36));
  v46 = v61;
  *v45 = v60;
  v45[1] = v46;
  result = *&v62;
  v45[2] = v62;
  return result;
}

double sub_23DAB6010@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23DB6F68C();
  v19 = 1;
  sub_23DAB611C(a1, &v11);
  v24 = v15;
  v25 = v16;
  v26 = v17;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v27[0] = v11;
  v27[1] = v12;
  v27[2] = v13;
  v27[3] = v14;
  v27[4] = v15;
  v27[5] = v16;
  v27[6] = v17;
  sub_23DAB673C(&v20, &v10);
  sub_23DAB67AC(v27);
  *&v18[55] = v23;
  *&v18[71] = v24;
  *&v18[87] = v25;
  *&v18[103] = v26;
  *&v18[7] = v20;
  *&v18[23] = v21;
  *&v18[39] = v22;
  v5 = *&v18[80];
  *(a2 + 81) = *&v18[64];
  *(a2 + 97) = v5;
  *(a2 + 113) = *&v18[96];
  v6 = *&v18[16];
  *(a2 + 17) = *v18;
  *(a2 + 33) = v6;
  result = *&v18[32];
  v8 = *&v18[48];
  *(a2 + 49) = *&v18[32];
  v9 = v19;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v9;
  *(a2 + 128) = *&v18[111];
  *(a2 + 65) = v8;
  return result;
}

double sub_23DAB611C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23DB702CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_23DB702DC();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
  v8 = sub_23DB702EC();

  (*(v5 + 8))(v7, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDAC8, &qword_23DB7C380);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_23DB78D60;
  if (a1[4])
  {
    if (qword_27E2FBBA0 != -1)
    {
      swift_once();
    }

    *(v9 + 32) = qword_27E30A678;
  }

  else
  {
    if (qword_27E2FBBC0 != -1)
    {
      swift_once();
    }

    *(v9 + 32) = qword_27E30A698;
    v10 = qword_27E2FBBC8;

    if (v10 != -1)
    {
      swift_once();
    }
  }

  sub_23DB7071C();
  sub_23DB7070C();
  MEMORY[0x23EEF6910](v9);
  sub_23DB6F1DC();
  v11 = v18;
  v17 = 1;
  sub_23DB7062C();
  sub_23DB6F10C();
  *a2 = v8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v11;
  v12 = v20;
  *(a2 + 32) = v19;
  *(a2 + 48) = v12;
  v13 = v15[1];
  *(a2 + 64) = v15[0];
  *(a2 + 80) = v13;
  result = *&v16;
  *(a2 + 96) = v16;
  return result;
}

uint64_t sub_23DAB63F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE720, &qword_23DB7C368);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-v3];
  v5 = *(v0 + 16);
  v12[0] = *v0;
  v12[1] = v5;
  v13 = *(v0 + 32);
  v14 = v12[0];
  v6 = swift_allocObject();
  v7 = *(v0 + 16);
  *(v6 + 16) = *v0;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(v0 + 32);
  v10 = v12;
  sub_23DAB668C(&v14, v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE728, &qword_23DB7C370);
  sub_23DA17B80(&qword_27E2FE730, &qword_27E2FE728, &qword_23DB7C370, MEMORY[0x277CE1198]);
  sub_23DB703CC();
  v11[0] = v13;
  sub_23DA17B80(&qword_27E2FE738, &qword_27E2FE720, &qword_23DB7C368, MEMORY[0x277CDF028]);
  sub_23DAB66E8();
  sub_23DB6FE3C();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_23DAB661C()
{

  return swift_deallocObject();
}

unint64_t sub_23DAB66E8()
{
  result = qword_27E2FE740;
  if (!qword_27E2FE740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE740);
  }

  return result;
}

uint64_t sub_23DAB673C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE748, &qword_23DB7C378);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DAB67AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE748, &qword_23DB7C378);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for CategoryButtonStyle(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_23DAB68C4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE720, &qword_23DB7C368);
  sub_23DA17B80(&qword_27E2FE738, &qword_27E2FE720, &qword_23DB7C368, MEMORY[0x277CDF028]);
  sub_23DAB66E8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23DAB698C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23DB6F32C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23DAB69F4()
{
  result = qword_27E2FE778;
  if (!qword_27E2FE778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE770, &qword_23DB7C418);
    sub_23DAB6A80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE778);
  }

  return result;
}

unint64_t sub_23DAB6A80()
{
  result = qword_27E2FE780;
  if (!qword_27E2FE780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE760, &qword_23DB7C408);
    sub_23DAB6B38();
    sub_23DA17B80(&unk_27E2FE7A0, &qword_27E2FE768, &qword_23DB7C410, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE780);
  }

  return result;
}

unint64_t sub_23DAB6B38()
{
  result = qword_27E2FE788;
  if (!qword_27E2FE788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE758, &qword_23DB7C400);
    sub_23DAB6BC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE788);
  }

  return result;
}

unint64_t sub_23DAB6BC4()
{
  result = qword_27E2FE790;
  if (!qword_27E2FE790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE750, &qword_23DB7C3F8);
    sub_23DAB6C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE790);
  }

  return result;
}

unint64_t sub_23DAB6C50()
{
  result = qword_27E2FE798;
  if (!qword_27E2FE798)
  {
    sub_23DB6F97C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE798);
  }

  return result;
}

unint64_t AXOnboardingTypeSwift.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t *sub_23DAB6CBC@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

char *sub_23DAB6CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(type metadata accessor for ViewController());

  return sub_23DAB7510(a1, a2, a3);
}

id AXOnboardingSwiftBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AXOnboardingSwiftBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXOnboardingSwiftBridge();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_23DAB6EF8()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 sharedInstance];
  [v3 enableSoftwareKeyboard];

  v4 = OBJC_IVAR____TtC28AccessibilitySharedUISupportP33_DEAF73D7C474C94E24616C25DC2EB0AC14ViewController_dataModel;
  type metadata accessor for AXOnboardingModelVoiceControl(0);
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for AXOnboardingModelVoiceOverIOS(0);
    v21 = swift_dynamicCastClass();
    if (!v21)
    {
      goto LABEL_20;
    }

    v22 = qword_27E2FBBD0;

    if (v22 != -1)
    {
      swift_once();
    }

    if (UIAccessibilityIsVoiceOverRunning())
    {
      v23 = objc_opt_self();
      v24 = sub_23DB7087C();
      [v23 triggerEventCommand_];
    }

    if (UIAccessibilityIsVoiceOverRunning())
    {
      v25 = objc_opt_self();
      v26 = sub_23DB7087C();
      [v25 triggerEventCommand_];
    }

    v27 = *&v1[v4];
    v28 = OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_timer;
    v29 = *(v27 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_timer);

    [v29 invalidate];
    v30 = *(v27 + v28);
    *(v27 + v28) = 0;

    *(v27 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_announcementQueued) = 0;

    v31 = *(**&v1[v4] + 472);

    v31(v32);

    goto LABEL_18;
  }

  v5 = qword_27E2FBBE0;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = sub_23DB6BB30(&unk_284FE7818);
  sub_23DA17988(&unk_284FE7838, &qword_27E2FE318, &unk_23DB7BBD0);
  sub_23DAA66A8(v6);

  v7 = sub_23DB6BB30(&unk_284FE7858);
  sub_23DA17988(&unk_284FE7878, &qword_27E2FE318, &unk_23DB7BBD0);
  sub_23DAA66A8(v7);

  v8 = [v2 sharedInstance];
  v9 = [v8 getVoiceControlEnabledDefaultName];

  v10 = v9;
  v11 = v9;
  v12 = v9;
  if (!v9)
  {
    sub_23DB708BC();
    v12 = sub_23DB7087C();

    sub_23DB708BC();
    v11 = sub_23DB7087C();

    sub_23DB708BC();
    v10 = sub_23DB7087C();
  }

  v13 = objc_opt_self();
  v14 = v9;
  v15 = [v13 standardUserDefaults];
  v16 = [v15 objectForKey_];

  if (v16)
  {
    sub_23DB70BEC();
    swift_unknownObjectRelease();
    sub_23DA17988(v35, &unk_27E2FE7F0, &qword_23DB7C530);
    v17 = [v13 standardUserDefaults];
    v18 = [v17 BOOLForKey_];

    if ((v18 & 1) == 0)
    {
      v19 = [v2 sharedInstance];
      [v19 enableVoiceControl_];
    }

    v20 = [v13 standardUserDefaults];
    [v20 removeObjectForKey_];

LABEL_18:

    goto LABEL_20;
  }

  memset(v35, 0, sizeof(v35));
  v21 = sub_23DA17988(v35, &unk_27E2FE7F0, &qword_23DB7C530);
LABEL_20:
  (*&v1[OBJC_IVAR____TtC28AccessibilitySharedUISupportP33_DEAF73D7C474C94E24616C25DC2EB0AC14ViewController_dismiss])(v21);
  v33 = [v1 presentedViewController];
  if (v33)
  {
    v34 = v33;
    [v33 dismissViewControllerAnimated:0 completion:0];
  }
}

char *sub_23DAB7510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_23DB6FA6C();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC28AccessibilitySharedUISupportP33_DEAF73D7C474C94E24616C25DC2EB0AC14ViewController_navigationModel;
  sub_23DB6FA5C();
  type metadata accessor for NavigationModel(0);
  swift_allocObject();
  *&v4[v11] = sub_23DAC2518(v10, 0, 0);
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v12 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v12 = MEMORY[0x277D84FA0];
  }

  *&v4[OBJC_IVAR____TtC28AccessibilitySharedUISupportP33_DEAF73D7C474C94E24616C25DC2EB0AC14ViewController_subscribers] = v12;
  *&v4[OBJC_IVAR____TtC28AccessibilitySharedUISupportP33_DEAF73D7C474C94E24616C25DC2EB0AC14ViewController_type] = a1;
  v13 = &v4[OBJC_IVAR____TtC28AccessibilitySharedUISupportP33_DEAF73D7C474C94E24616C25DC2EB0AC14ViewController_dismiss];
  *v13 = a2;
  *(v13 + 1) = a3;
  v43 = a1;
  v44 = a3;
  if (a1)
  {
    type metadata accessor for AXOnboardingModelVoiceOverIOS(0);
    swift_allocObject();

    v14 = AXOnboardingModelVoiceOverIOS.init()();
  }

  else
  {
    type metadata accessor for AXOnboardingModelVoiceControl(0);
    swift_allocObject();

    v14 = AXOnboardingModelVoiceControl.init()();
  }

  *&v4[OBJC_IVAR____TtC28AccessibilitySharedUISupportP33_DEAF73D7C474C94E24616C25DC2EB0AC14ViewController_dataModel] = v14;
  type metadata accessor for AXOnboardingModel(0);
  sub_23DAB8804(&qword_27E2FBC50, type metadata accessor for AXOnboardingModel, &protocol conformance descriptor for AXOnboardingModel);
  swift_retain_n();

  v15 = sub_23DB6F1EC();
  v41 = v16;
  v42 = v15;
  sub_23DAB8804(&unk_27E2FE800, type metadata accessor for NavigationModel, &protocol conformance descriptor for NavigationModel);

  v17 = sub_23DB6F1EC();
  v19 = v18;
  v20 = objc_opt_self();
  [v20 getSpeakingRate];
  type metadata accessor for SpeakingRate(0);
  swift_allocObject();
  v46 = 0;
  v47 = 0xE000000000000000;
  [v20 getSpeakingRate];
  sub_23DB70A8C();
  MEMORY[0x23EEF6D00](37, 0xE100000000000000);
  v21 = v46;
  v22 = v47;
  swift_beginAccess();
  v52 = v21;
  v53 = v22;
  sub_23DB6EECC();
  swift_endAccess();
  sub_23DAB8804(&qword_27E2FBC60, type metadata accessor for SpeakingRate, &unk_23DB73704);
  v23 = sub_23DB6F1EC();
  v25 = v24;

  v46 = v42;
  v47 = v41;
  v48 = v17;
  v49 = v19;
  v50 = v23;
  v51 = v25;
  v26 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2FE810, &qword_23DB7C538));
  *&v4[OBJC_IVAR____TtC28AccessibilitySharedUISupportP33_DEAF73D7C474C94E24616C25DC2EB0AC14ViewController_contentView] = sub_23DB6F6BC();
  if (v43)
  {
    v27 = " not been implemented";
    v28 = 0xD000000000000015;
  }

  else
  {
    v29 = [objc_opt_self() sharedInstance];
    [v29 disableSoftwareKeyboard];

    v27 = "tutorial.vo.app.title";
    v28 = 0xD000000000000017;
  }

  v30 = type metadata accessor for ViewController();
  v45.receiver = v4;
  v45.super_class = v30;
  v31 = objc_msgSendSuper2(&v45, sel_initWithNibName_bundle_, 0, 0);
  v32 = *(**&v31[OBJC_IVAR____TtC28AccessibilitySharedUISupportP33_DEAF73D7C474C94E24616C25DC2EB0AC14ViewController_dataModel] + 304);
  v33 = v31;

  v32(v28, v27 | 0x8000000000000000);

  v34 = sub_23DB7087C();

  [v33 setTitle_];

  v35 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v33 action:sel_doneHandler];
  v36 = [v33 navigationItem];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE310, &unk_23DB7C540);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_23DB74310;
  *(v37 + 32) = v35;
  sub_23DAB884C();
  v38 = v35;
  v39 = sub_23DB709DC();

  [v36 setRightBarButtonItems_];

  v46 = *(*(*&v33[OBJC_IVAR____TtC28AccessibilitySharedUISupportP33_DEAF73D7C474C94E24616C25DC2EB0AC14ViewController_navigationModel] + OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__shouldShowHomeButton) + 24);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE150, &qword_23DB82C70);
  sub_23DAB88D8();
  sub_23DB6EF5C();

  swift_beginAccess();
  sub_23DB6EE3C();
  swift_endAccess();

  return v33;
}

unint64_t sub_23DAB7BD0()
{
  result = qword_27E2FE7B0;
  if (!qword_27E2FE7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE7B0);
  }

  return result;
}

void sub_23DAB7C60(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC28AccessibilitySharedUISupportP33_DEAF73D7C474C94E24616C25DC2EB0AC14ViewController_navigationModel);
    v4 = Strong;

    v5 = *(v3 + OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__shouldShowHomeButton);
    swift_beginAccess();
    if (*(v5 + 40) == 1)
    {
      v6 = sub_23DB7087C();
      v7 = [objc_opt_self() systemImageNamed_];

      swift_beginAccess();
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v23 = v8;
        type metadata accessor for ViewController();
        v9 = v7;
        v10 = sub_23DB70DAC();
      }

      else
      {
        v14 = v7;
        v10 = 0;
      }

      v15 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithImage:v7 style:0 target:v10 action:sel_homeHandler];

      swift_unknownObjectRelease();
      v16 = qword_27E2FBBF0;
      v17 = v15;
      if (v16 != -1)
      {
        swift_once();
      }

      (*(*qword_27E30A6D8 + 304))(0xD000000000000022, 0x800000023DB8B2C0);
      v18 = sub_23DB7087C();

      [v17 setAccessibilityLabel_];

      swift_beginAccess();
      v19 = swift_unknownObjectWeakLoadStrong();
      if (v19)
      {
        v20 = v19;
        v21 = [v19 navigationItem];

        v22 = v17;
        [v21 setLeftBarButtonItem_];
      }

      else
      {
      }
    }

    else
    {
      swift_beginAccess();
      v11 = swift_unknownObjectWeakLoadStrong();
      if (v11)
      {
        v12 = v11;
        v13 = [v11 navigationItem];

        [v13 setLeftBarButtonItem_];
      }
    }
  }
}

void sub_23DAB7F80()
{
  v1 = *&v0[OBJC_IVAR____TtC28AccessibilitySharedUISupportP33_DEAF73D7C474C94E24616C25DC2EB0AC14ViewController_contentView];
  v2 = objc_allocWithZone(MEMORY[0x277D75788]);
  v3 = v1;
  v4 = [v2 init];
  v15.receiver = v0;
  v15.super_class = type metadata accessor for ViewController();
  objc_msgSendSuper2(&v15, sel_viewDidLoad);
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 systemBackgroundColor];
  [v6 setBackgroundColor_];

  v8 = [v0 navigationController];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 navigationBar];

    [v10 setScrollEdgeAppearance_];
  }

  v11 = v3;
  [v0 addChildViewController_];
  v12 = [v0 view];
  if (v12)
  {
    v13 = v12;
    v14 = [v11 view];

    if (v14)
    {
      [v13 addSubview_];

      sub_23DAB8218();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_23DAB8218()
{
  v1 = OBJC_IVAR____TtC28AccessibilitySharedUISupportP33_DEAF73D7C474C94E24616C25DC2EB0AC14ViewController_contentView;
  v2 = [*&v0[OBJC_IVAR____TtC28AccessibilitySharedUISupportP33_DEAF73D7C474C94E24616C25DC2EB0AC14ViewController_contentView] view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = v2;
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];

  v4 = [*&v0[v1] view];
  if (!v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = v4;
  v6 = [v4 topAnchor];

  v7 = [v0 view];
  if (!v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = v7;
  v9 = [v7 topAnchor];

  v10 = [v6 constraintEqualToAnchor_];
  [v10 setActive_];

  v11 = [*&v0[v1] view];
  if (!v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v11;
  v13 = [v11 bottomAnchor];

  v14 = [v0 view];
  if (!v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = v14;
  v16 = [v14 bottomAnchor];

  v17 = [v13 constraintEqualToAnchor_];
  [v17 setActive_];

  v18 = [*&v0[v1] view];
  if (!v18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v19 = v18;
  v20 = [v18 leadingAnchor];

  v21 = [v0 view];
  if (!v21)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v22 = v21;
  v23 = [v21 leadingAnchor];

  v24 = [v20 constraintEqualToAnchor_];
  [v24 setActive_];

  v25 = [*&v0[v1] view];
  if (!v25)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v26 = v25;
  v27 = [v25 trailingAnchor];

  v28 = [v0 view];
  if (!v28)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v29 = v28;
  v30 = [v28 trailingAnchor];

  v31 = [v27 constraintEqualToAnchor_];
  [v31 setActive_];
}

id sub_23DAB85D0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_23DAB8688()
{
  v1 = v0;
  v2 = sub_23DB6FA6C();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC28AccessibilitySharedUISupportP33_DEAF73D7C474C94E24616C25DC2EB0AC14ViewController_navigationModel;
  sub_23DB6FA5C();
  type metadata accessor for NavigationModel(0);
  swift_allocObject();
  *(v1 + v5) = sub_23DAC2518(v4, 0, 0);
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v6 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  else
  {
    v6 = MEMORY[0x277D84FA0];
  }

  *(v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupportP33_DEAF73D7C474C94E24616C25DC2EB0AC14ViewController_subscribers) = v6;
  sub_23DB70D4C();
  __break(1u);
}

uint64_t sub_23DAB87BC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_23DAB8804(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23DAB884C()
{
  result = qword_27E2FE820;
  if (!qword_27E2FE820)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E2FE820);
  }

  return result;
}

uint64_t sub_23DAB8898()
{
  MEMORY[0x23EEF7E30](v0 + 16);

  return swift_deallocObject();
}

unint64_t sub_23DAB88D8()
{
  result = qword_27E2FE830[0];
  if (!qword_27E2FE830[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE150, &qword_23DB82C70);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E2FE830);
  }

  return result;
}

id sub_23DAB893C(double a1, double a2, double a3, double a4)
{
  v16.receiver = v4;
  v16.super_class = type metadata accessor for PlayheadView();
  v9 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  sub_23DAB9798();
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 secondaryLabelColor];
  sub_23DB700DC();
  v13 = sub_23DB70B1C();
  [v11 setBackgroundColor_];

  [v11 setAutoresizingMask_];
  v14 = [v11 layer];

  [v14 setCornerRadius_];
  return v11;
}

char *sub_23DAB8B20(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  *&v5[OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_playheadTimer] = 0;
  *&v5[OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_displayLink] = 0;
  *&v5[OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_state] = 0;
  *&v5[OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_chartDescriptor] = a1;
  v12 = objc_allocWithZone(MEMORY[0x277D756B8]);
  v13 = a1;
  v14 = [v12 initWithFrame_];
  v15 = OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_playheadLabel;
  *&v6[OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_playheadLabel] = v14;
  v16 = [objc_allocWithZone(type metadata accessor for PlayheadView()) initWithFrame_];
  v17 = OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_playheadView;
  *&v6[OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_playheadView] = v16;
  [v16 setHidden_];
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v19 = *&v6[v15];
  *&v6[v15] = v18;
  v20 = v18;

  v21 = [v20 layer];
  [v21 setCornerRadius_];

  [*&v6[v15] setAutoresizingMask_];
  [*&v6[v15] setTextAlignment_];
  [*&v6[v15] setHidden_];
  v22 = *&v6[v15];
  sub_23DAB9798();
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 labelColor];
  sub_23DB700DC();
  v26 = sub_23DB70B1C();
  [v24 setTextColor_];

  [*&v6[v15] setHidden_];
  v27 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  v28 = OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_numberFormatter;
  *&v6[OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_numberFormatter] = v27;
  [v27 setUsesSignificantDigits_];
  [*&v6[v28] setMaximumSignificantDigits_];
  [*&v6[v17] setHidden_];
  v35.receiver = v6;
  v35.super_class = type metadata accessor for ChartSonificationContainerView();
  v29 = objc_msgSendSuper2(&v35, sel_initWithFrame_, a2, a3, a4, a5);
  v30 = *&v29[OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_playheadLabel];
  v31 = v29;
  [v31 addSubview_];
  v32 = *&v31[OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_playheadView];
  [v31 addSubview_];

  v33 = *&v31[OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_playheadTimer];
  *&v31[OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_playheadTimer] = 0;

  return v31;
}

uint64_t sub_23DAB8F20(uint64_t result)
{
  if (result <= 1)
  {
    if (!result)
    {
      [*(v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_displayLink) invalidate];
      v2 = 1;
LABEL_7:
      [*(v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_playheadView) setHidden_];
      result = [*(v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_playheadLabel) setHidden_];
      goto LABEL_8;
    }

    if (result != 1)
    {
LABEL_14:
      type metadata accessor for PlaybackStatus(0);
      result = sub_23DB70DDC();
      __break(1u);
      return result;
    }

LABEL_6:
    v3 = [objc_opt_self() displayLinkWithTarget:v1 selector:sel_updatePlayhead_];
    v4 = *(v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_displayLink);
    *(v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_displayLink) = v3;

    v2 = 0;
    goto LABEL_7;
  }

  if (result != 2)
  {
    if (result != 3)
    {
      goto LABEL_14;
    }

    goto LABEL_6;
  }

LABEL_8:
  if (qword_27E30A760)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    result = sub_23DB6EF1C();
  }

  if (*(v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_state))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_23DB6EF1C();
  }

  return result;
}

id sub_23DAB912C(double a1)
{
  [v1 bounds];
  v3 = CGRectGetWidth(v11) + -20.0;
  [v1 bounds];
  Height = CGRectGetHeight(v12);
  if (v3 <= v3 * a1 + 10.0)
  {
    [*&v1[OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_playheadView] setHidden_];
    [*&v1[OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_playheadLabel] setHidden_];
  }

  [*&v1[OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_playheadView] setFrame_];
  v5 = OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_playheadLabel;
  v6 = *&v1[OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_playheadLabel];
  sub_23DAB92BC(a1);
  v7 = sub_23DB7087C();

  [v6 setText_];

  v8 = *&v1[v5];

  return [v8 sizeToFit];
}

void sub_23DAB92BC(double a1)
{
  v3 = OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_chartDescriptor;
  v4 = [*(v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_chartDescriptor) xAxis];
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 categoryOrder];
    v8 = sub_23DB709EC();

    v9 = *(v8 + 16);

    v10 = floor(v9 * a1);
    if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v10 > -9.22337204e18)
    {
      if (v10 < 9.22337204e18)
      {
        v11 = v10;
        v12 = [v6 categoryOrder];
        v13 = sub_23DB709EC();

        if ((v11 & 0x8000000000000000) == 0)
        {
          if (*(v13 + 16) > v11)
          {

            swift_unknownObjectRelease();

            return;
          }

          goto LABEL_18;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_16;
  }

  swift_unknownObjectRelease();
  v14 = [*(v1 + v3) xAxis];
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v16 = v15;
    [v15 upperBound];
    [v16 lowerBound];
    [v16 lowerBound];
    type metadata accessor for AudiographExplorerState(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = [objc_opt_self() bundleForClass_];
    sub_23DB6E9FC();

    v19 = *(v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport30ChartSonificationContainerView_numberFormatter);
    v20 = sub_23DB70A7C();
    v21 = [v19 stringFromNumber_];

    if (v21)
    {
      v22 = sub_23DB708BC();
      v24 = v23;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2B0, &qword_23DB76980);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_23DB73BA0;
      *(v25 + 56) = MEMORY[0x277D837D0];
      *(v25 + 64) = sub_23DA40598();
      *(v25 + 32) = v22;
      *(v25 + 40) = v24;
      sub_23DB7088C();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

id sub_23DAB968C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_23DAB9798()
{
  result = qword_27E2FE8E8;
  if (!qword_27E2FE8E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E2FE8E8);
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

uint64_t sub_23DAB9810(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_23DAB9858(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_23DAB98D4()
{
  v1 = sub_23DB6F55C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + 56);
  v5 = *(v0 + 48);
  v9 = v5;
  if (v10 != 1)
  {

    sub_23DB70ACC();
    v6 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA17988(&v9, &qword_27E2FCBA0, &qword_23DB76C70);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_23DAB9A34@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v98 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE8F0, &qword_23DB7C6D8);
  v100 = *(v3 - 8);
  v101 = v3;
  MEMORY[0x28223BE20](v3);
  v99 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v103 = &v97 - v6;
  v7 = *v1;
  v8 = v1[1];
  v166.n128_u64[0] = v7;
  v166.n128_u64[1] = v8;
  v9 = sub_23DA16E70();

  v102 = v9;
  v10 = sub_23DB6FD8C();
  v12 = v11;
  LOBYTE(v8) = v13;
  v15 = v14;
  sub_23DB7063C();
  sub_23DB6F34C();
  v16 = v8 & 1;
  v178 = v8 & 1;
  if (sub_23DAB98D4())
  {
    v17 = sub_23DB6FBBC();
  }

  else
  {
    v17 = sub_23DB6FBCC();
  }

  v18 = v17;
  KeyPath = swift_getKeyPath();
  v20 = swift_getKeyPath();
  v171 = *&v177[11];
  v172 = *&v177[13];
  v173 = *&v177[15];
  v174 = *&v177[17];
  v168 = *&v177[5];
  v169 = *&v177[7];
  v166.n128_u64[0] = v10;
  v166.n128_u64[1] = v12;
  v167.n128_u8[0] = v16;
  v170 = *&v177[9];
  v167.n128_u64[1] = v15;
  *&v175[0] = KeyPath;
  *(&v175[0] + 1) = v18;
  *&v175[1] = v20;
  BYTE8(v175[1]) = 0;
  sub_23DB6FBFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE8F8, &qword_23DB7C740);
  sub_23DABA614();
  sub_23DB6FE1C();
  v176[7] = v173;
  v176[8] = v174;
  *v177 = v175[0];
  *(&v177[1] + 1) = *(v175 + 9);
  v176[4] = v170;
  v176[5] = v171;
  v176[6] = v172;
  v176[0] = v166;
  v176[1] = v167;
  v176[2] = v168;
  v176[3] = v169;
  sub_23DA17988(v176, &qword_27E2FE8F8, &qword_23DB7C740);
  v21 = v2[3];
  if (v21)
  {
    v166.n128_u64[0] = v2[2];
    v166.n128_u64[1] = v21;

    v22 = sub_23DB6FD8C();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    sub_23DB7063C();
    sub_23DB6F34C();
    v29 = v26 & 1;
    v132.n128_u8[0] = v26 & 1;
    if (sub_23DAB98D4())
    {
      v30 = sub_23DB6FC7C();
    }

    else
    {
      v30 = sub_23DB6FBCC();
    }

    v37 = v30;
    v38 = swift_getKeyPath();
    v39 = swift_getKeyPath();
    v40 = sub_23DB6F89C();
    v145.n128_u64[0] = v22;
    v145.n128_u64[1] = v24;
    v146.n128_u8[0] = v29;
    v151 = v108;
    v152 = v109;
    v153 = v110;
    v147 = v104;
    v148 = v105;
    v149 = v106;
    v150 = v107;
    v146.n128_u64[1] = v28;
    v154.n128_u64[0] = v38;
    v154.n128_u64[1] = v37;
    v155.n128_u64[0] = v39;
    v155.n128_u8[8] = 0;
    v155.n128_u32[3] = v40;
    nullsub_1();
    v174 = v153;
    v175[0] = v154;
    v175[1] = v155;
    v170 = v149;
    v171 = v150;
    v172 = v151;
    v173 = v152;
    v166 = v145;
    v167 = v146;
    v168 = v147;
    v169 = v148;
    if (v2[5])
    {
      goto LABEL_14;
    }
  }

  else
  {
    sub_23DABA808(&v166);
    if (v2[5])
    {
LABEL_14:
      v41.n128_f64[0] = sub_23DA6E97C(&v156);
      goto LABEL_27;
    }
  }

  v32 = MEMORY[0x277D83B88];
  v97 = v2[4];
  v31 = v97;
  if (v97 == 1)
  {
    if (qword_27E2FBBF0 != -1)
    {
      swift_once();
    }

    v33 = qword_27E30A6D8;
    v34 = (*(*qword_27E30A6D8 + 304))(0xD000000000000016, 0x800000023DB8B5D0);
    v36 = v35;
  }

  else
  {
    if (qword_27E2FBBF0 != -1)
    {
      swift_once();
    }

    v33 = qword_27E30A6D8;
    (*(*qword_27E30A6D8 + 304))(0xD000000000000012, 0x800000023DB8B570);
    v42 = [objc_opt_self() mainBundle];
    sub_23DB6E9FC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2B0, &qword_23DB76980);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_23DB73BA0;
    *(v43 + 56) = v32;
    *(v43 + 64) = MEMORY[0x277D83C10];
    *(v43 + 32) = v31;
    v34 = sub_23DB7088C();
    v36 = v44;
  }

  if (qword_27E2FBBF0 != -1)
  {
    swift_once();
  }

  (*(*v33 + 304))(0xD000000000000019, 0x800000023DB8B590);
  v45 = [objc_opt_self() mainBundle];
  sub_23DB6E9FC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2B0, &qword_23DB76980);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_23DB73BA0;
  *(v46 + 56) = MEMORY[0x277D83B88];
  *(v46 + 64) = MEMORY[0x277D83C10];
  *(v46 + 32) = v97;
  v47 = sub_23DB7088C();
  v49 = v48;

  if (*(v2 + 41))
  {
    v50 = v49;
  }

  else
  {
    v47 = v34;
    v50 = v36;
  }

  v145.n128_u64[0] = v47;
  v145.n128_u64[1] = v50;
  v51 = sub_23DB6FD8C();
  v53 = v52;
  v55 = v54;
  if (sub_23DAB98D4())
  {
    sub_23DB6FC7C();
  }

  else
  {
    sub_23DB6FC6C();
  }

  v56 = sub_23DB6FD3C();
  v58 = v57;
  v60 = v59;
  v102 = v61;

  sub_23DA16EC4(v51, v53, v55 & 1);

  sub_23DB7063C();
  sub_23DB6F34C();
  v62 = v60 & 1;
  v121.n128_u8[0] = v60 & 1;
  v63 = swift_getKeyPath();
  v64 = sub_23DB6F88C();
  v145.n128_u64[0] = v56;
  v145.n128_u64[1] = v58;
  v146.n128_u8[0] = v62;
  v151 = v136;
  v152 = v137;
  v153 = v138;
  v147 = v132;
  v148 = v133;
  v149 = v134;
  v150 = v135;
  v146.n128_u64[1] = v102;
  v154.n128_u64[0] = v63;
  v154.n128_u8[8] = 0;
  v154.n128_u32[3] = v64;
  nullsub_1();
  v162 = v151;
  v163 = v152;
  v164 = v153;
  v165 = v154;
  v158 = v147;
  v159 = v148;
  v160 = v149;
  v161 = v150;
  v41 = v145;
  v156 = v145;
  v157 = v146;
LABEL_27:
  v66 = v99;
  v65 = v100;
  v67 = *(v100 + 16);
  v68 = v101;
  v67(v99, v103, v101, v41);
  v128 = v173;
  v129 = v174;
  v130 = v175[0];
  v131 = v175[1];
  v124 = v169;
  v125 = v170;
  v126 = v171;
  v127 = v172;
  v122 = v167;
  v123 = v168;
  v118 = v163;
  v119 = v164;
  v120 = v165;
  v121 = v166;
  v114 = v159;
  v115 = v160;
  v116 = v161;
  v117 = v162;
  v111 = v156;
  v112 = v157;
  v113 = v158;
  v69 = v98;
  (v67)(v98, v66, v68);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE930, &qword_23DB7C768);
  v71 = *(v70 + 48);
  v72 = v129;
  v73 = v128;
  v140 = v129;
  v141 = v130;
  v74 = v130;
  v75 = v111;
  v76 = v111;
  v142 = v131;
  v77 = v124;
  v136 = v125;
  v137 = v126;
  v78 = v127;
  v79 = v126;
  v138 = v127;
  v139 = v128;
  v80 = v121;
  v81 = v120;
  v132 = v121;
  v133 = v122;
  v82 = v122;
  v83 = v123;
  v134 = v123;
  v135 = v124;
  v84 = (v69 + v71);
  v84[4] = v125;
  v84[5] = v79;
  v85 = v131;
  v84[9] = v74;
  v84[10] = v85;
  v84[7] = v73;
  v84[8] = v72;
  v84[6] = v78;
  *v84 = v80;
  v84[1] = v82;
  v84[2] = v83;
  v84[3] = v77;
  v86 = *(v70 + 64);
  v87 = v118;
  v143[7] = v118;
  v143[8] = v119;
  v88 = v119;
  v143[9] = v120;
  v89 = v113;
  v90 = v114;
  v143[3] = v114;
  v143[4] = v115;
  v91 = v115;
  v92 = v116;
  v143[5] = v116;
  v143[6] = v117;
  v143[0] = v75;
  v93 = v112;
  v143[1] = v112;
  v143[2] = v113;
  v94 = (v69 + v86);
  v94[6] = v117;
  v94[7] = v87;
  v94[8] = v88;
  v94[9] = v81;
  v94[2] = v89;
  v94[3] = v90;
  v94[4] = v91;
  v94[5] = v92;
  *v94 = v76;
  v94[1] = v93;
  sub_23DA0E2B4(&v132, &v145, &qword_27E2FE938, &qword_23DB7C770);
  sub_23DA0E2B4(v143, &v145, &qword_27E2FE940, &qword_23DB7C778);
  v95 = *(v65 + 8);
  v95(v103, v68);
  v144[6] = v117;
  v144[7] = v118;
  v144[8] = v119;
  v144[9] = v120;
  v144[2] = v113;
  v144[3] = v114;
  v144[4] = v115;
  v144[5] = v116;
  v144[0] = v111;
  v144[1] = v112;
  sub_23DA17988(v144, &qword_27E2FE940, &qword_23DB7C778);
  v153 = v129;
  v154 = v130;
  v155 = v131;
  v149 = v125;
  v150 = v126;
  v151 = v127;
  v152 = v128;
  v145 = v121;
  v146 = v122;
  v147 = v123;
  v148 = v124;
  sub_23DA17988(&v145, &qword_27E2FE938, &qword_23DB7C770);
  return (v95)(v66, v68);
}

unint64_t sub_23DABA614()
{
  result = qword_27E2FE900;
  if (!qword_27E2FE900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE8F8, &qword_23DB7C740);
    sub_23DABA6CC();
    sub_23DA17B80(&qword_27E2FE920, &qword_27E2FE928, &qword_23DB7C760, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE900);
  }

  return result;
}

unint64_t sub_23DABA6CC()
{
  result = qword_27E2FE908;
  if (!qword_27E2FE908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FE910, &qword_23DB7C748);
    sub_23DABA784();
    sub_23DA17B80(&qword_27E2FC1F0, &qword_27E2FC1F8, &unk_23DB741E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE908);
  }

  return result;
}

unint64_t sub_23DABA784()
{
  result = qword_27E2FE918;
  if (!qword_27E2FE918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FDE00, &unk_23DB7C750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE918);
  }

  return result;
}

double sub_23DABA808(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

Swift::Void __swiftcall NavigationModel.goHome()()
{
  v1 = sub_23DB6EA8C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v42 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v41 = &v29 - v5;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  KeyPath = OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_initialOffset;
  v8 = Strong;
  swift_beginAccess();
  v9 = *(v8 + KeyPath);
  swift_getKeyPath();
  swift_getKeyPath();
  v32 = v8;
  if (!v9)
  {
    sub_23DB6EF0C(v47);

    v2 = *v47;
    if (!(*v47 >> 62))
    {
      if (!*((*v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_86:

        v11 = 0;
        goto LABEL_87;
      }

LABEL_11:
      if ((v2 & 0xC000000000000001) != 0)
      {
LABEL_91:
        v11 = MEMORY[0x23EEF70C0](0, v2);
      }

      else
      {
        if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v11 = *(v2 + 32);
      }

LABEL_87:
      v47[0] = 0;
      sub_23DABBAC8(v11, v47);

      goto LABEL_88;
    }

LABEL_85:
    if (!sub_23DB70C3C())
    {
      goto LABEL_86;
    }

    goto LABEL_11;
  }

  sub_23DB6EF0C(v47);

  v10 = *v47;
  if (!(*v47 >> 62))
  {
    if (*((*v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_16:

    v46 = 0;
    goto LABEL_17;
  }

  if (!sub_23DB70C3C())
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((v10 & 0xC000000000000001) != 0)
  {
    goto LABEL_83;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_85;
  }

  v46 = *(v10 + 32);

  while (1)
  {

LABEL_17:
    v10 = v32;
    v30 = *(v32 + KeyPath);
    if (v30 >= 1)
    {
      break;
    }

LABEL_82:
    __break(1u);
LABEL_83:
    v46 = MEMORY[0x23EEF70C0](0, v10);
  }

  v29 = v0;
  v39 = (v2 + 8);
  v40 = (v2 + 16);
  v12 = 1;
  v13 = v30;
  v14 = v41;
  do
  {
    if (v46)
    {
      v33 = v12;
      v15 = sub_23DAC72C0();
      v0 = v15;
      v37 = v15 >> 62;
      if (v15 >> 62)
      {
        v16 = sub_23DB70C3C();
        if (v16)
        {
LABEL_22:
          v44 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
          v45 = v0 & 0xC000000000000001;
          swift_beginAccess();
          v10 = 0;
          v35 = 0;
          v36 = 0;
          v31 = v0 + 32;
          v38 = v0 & 0xFFFFFFFFFFFFFF8;
          if (v0 < 0)
          {
            v17 = v0;
          }

          else
          {
            v17 = v0 & 0xFFFFFFFFFFFFFF8;
          }

          v34 = v17;
          v43 = v16;
LABEL_26:
          v2 = v10;
          if (v45)
          {
LABEL_27:
            v18 = MEMORY[0x23EEF70C0](v2, v0);
            v10 = v2 + 1;
            if (__OFADD__(v2, 1))
            {
              goto LABEL_78;
            }

            goto LABEL_32;
          }

          while (1)
          {
            if (v2 >= *(v38 + 16))
            {
              goto LABEL_79;
            }

            v18 = *(v0 + 8 * v2 + 32);

            v10 = v2 + 1;
            if (__OFADD__(v2, 1))
            {
              break;
            }

LABEL_32:
            v19 = v0;
            v20 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
            swift_beginAccess();
            v21 = *v40;
            (*v40)(v14, v18 + v20, v1);
            v22 = v42;
            v21(v42, v46 + v44, v1);
            KeyPath = sub_23DB6EA6C();
            v23 = *v39;
            (*v39)(v22, v1);
            v23(v14, v1);
            if (KeyPath)
            {
              if (v37)
              {
                v24 = sub_23DB70C3C();
              }

              else
              {
                v24 = *(v38 + 16);
              }

              v0 = v19;
              if (v10 < v24)
              {
                if (v45)
                {
                  MEMORY[0x23EEF70C0](v10, v19);
                }

                else
                {
                  if (v10 < 0)
                  {
                    goto LABEL_80;
                  }

                  if (v10 >= *(v38 + 16))
                  {
                    goto LABEL_81;
                  }
                }

                KeyPath = swift_getKeyPath();
                swift_getKeyPath();
                sub_23DB6EF0C(v48);

                if (LOBYTE(v48[0]) == 1)
                {
                  if (v45)
                  {
                    v27 = MEMORY[0x23EEF70C0](v10, v19);
                  }

                  else
                  {
                    v27 = *(v31 + 8 * v10);
                  }

                  goto LABEL_70;
                }

                v36 = 1;
                v35 = v10;
                goto LABEL_59;
              }
            }

            else
            {
              v0 = v19;
              if (v36)
              {
                v25 = v35;
                if ((v35 & 0x8000000000000000) == 0)
                {
                  if (v37)
                  {
                    v26 = sub_23DB70C3C();
                    v25 = v35;
                    if (v35 < v26)
                    {
LABEL_46:
                      if (v45)
                      {
                        MEMORY[0x23EEF70C0](v25, v19);
                      }

                      else
                      {
                        if (v25 >= *(v38 + 16))
                        {
                          __break(1u);
                          goto LABEL_91;
                        }
                      }

                      KeyPath = swift_getKeyPath();
                      swift_getKeyPath();
                      sub_23DB6EF0C(v48);

                      if (v48[0])
                      {
                        if (v45)
                        {
                          v27 = MEMORY[0x23EEF70C0](v35, v19);
                        }

                        else
                        {
                          v27 = *(v31 + 8 * v35);
                        }

LABEL_70:

                        v46 = v27;
LABEL_61:
                        v13 = v30;
                        goto LABEL_73;
                      }

                      ++v35;
                      v36 = 1;
LABEL_59:
                      if (v10 == v43)
                      {
LABEL_60:

                        v46 = 0;
                        goto LABEL_61;
                      }

                      goto LABEL_26;
                    }
                  }

                  else if (v35 < *(v38 + 16))
                  {
                    goto LABEL_46;
                  }
                }
              }
            }

            if (v10 == v43)
            {
              goto LABEL_60;
            }

            ++v2;
            if (v45)
            {
              goto LABEL_27;
            }
          }

LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }
      }

      else
      {
        v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_22;
        }
      }

      v46 = 0;
LABEL_73:
      v12 = v33;
      if (v33 == v13)
      {
        goto LABEL_77;
      }
    }

    else
    {
      v46 = 0;
      if (v12 == v13)
      {
        goto LABEL_77;
      }
    }
  }

  while (!__OFADD__(v12++, 1));
  __break(1u);
LABEL_77:
  LOBYTE(v48[0]) = 0;
  sub_23DABBAC8(v46, v48);

LABEL_88:
}

uint64_t sub_23DABB0B8(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v9);

  v2 = v9[0];
  if (!v9[0])
  {
    v3 = 0;
    goto LABEL_10;
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {

    v3 = 0;
    goto LABEL_10;
  }

  v3 = sub_23DAC6C5C(v1, v2);
  if (!v3)
  {
LABEL_9:

    goto LABEL_10;
  }

  v5 = sub_23DAC699C(v4);
  if (!v5)
  {

    goto LABEL_9;
  }

  v6 = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = sub_23DB6EEFC();
  sub_23DAC2434(v6);

  v7(v9, 0);

LABEL_10:
  NavigationModel.updateSelectedPage(_:)(v3);
}

uint64_t NavigationModel.__allocating_init(columnVisibility:selectedPage:dataModel:)(char *a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_23DAC2518(a1, a2, a3);

  return v6;
}

uint64_t sub_23DABB2E8@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_23DABB368(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

uint64_t sub_23DABB3DC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_23DABB420()
{
  v43 = sub_23DB6EA8C();
  v1 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v44 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v42 = v28 - v4;
  v5 = OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel_dataModel;
  swift_beginAccess();
  v37 = v0;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v7 = Strong;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v45);

  KeyPath = v45[0];
  if (v45[0] >> 62)
  {
    goto LABEL_44;
  }

  if (!*((v45[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_45:

    return 0;
  }

  while (1)
  {
    if ((KeyPath & 0xC000000000000001) != 0)
    {
      MEMORY[0x23EEF70C0](0, KeyPath);
    }

    else
    {
      if (!*((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_50;
      }
    }

    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C(v45);

    v29 = v45[0];
    if (!v45[0])
    {

      return 0;
    }

    v9 = sub_23DAC72C0();
    v5 = v9;
    if (!(v9 >> 62))
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_10;
    }

LABEL_50:
    v10 = sub_23DB70C3C();
LABEL_10:
    v28[2] = v7;
    if (!v10)
    {
      break;
    }

    v11 = 0;
    v12 = 0;
    v36 = v5 & 0xC000000000000001;
    v35 = v5 & 0xFFFFFFFFFFFFFF8;
    v13 = v29 & 0xFFFFFFFFFFFFFF8;
    v41 = v29 & 0xFFFFFFFFFFFFFF8;
    if (v29 < 0)
    {
      v13 = v29;
    }

    v28[1] = v13;
    v39 = (v1 + 16);
    v38 = (v1 + 8);
    v32 = v29 & 0xC000000000000001;
    v30 = v29 + 32;
    v34 = v29 >> 62;
    v33 = v5;
    v31 = v10;
    while (v36)
    {
      v1 = MEMORY[0x23EEF70C0](v11, v5);
      v7 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_40;
      }

LABEL_17:
      if (v34)
      {
        if (v12 >= sub_23DB70C3C())
        {
LABEL_38:

          goto LABEL_39;
        }
      }

      else if (v12 >= *(v41 + 16))
      {
        goto LABEL_38;
      }

      v40 = v7;
      swift_getKeyPath();
      v7 = swift_getKeyPath();

      sub_23DB6EF0C(&v46);

      v14 = v46;
      if (v46)
      {
        v15 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
        swift_beginAccess();
        v16 = *v39;
        KeyPath = v42;
        v5 = v43;
        (*v39)(v42, v1 + v15, v43);
        v17 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
        swift_beginAccess();
        v18 = v44;
        v16(v44, v14 + v17, v5);
        v7 = sub_23DB6EA6C();

        v19 = *v38;
        (*v38)(v18, v5);
        v19(KeyPath, v5);
        if (v7)
        {

          return v12;
        }
      }

      else
      {
      }

      if (v32)
      {
        v20 = MEMORY[0x23EEF70C0](v12, v29);
      }

      else
      {
        if (v12 < 0)
        {
          goto LABEL_42;
        }

        if (v12 >= *(v41 + 16))
        {
          goto LABEL_43;
        }

        v20 = *(v30 + 8 * v12);
      }

      v21 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
      swift_beginAccess();
      v22 = *v39;
      KeyPath = v42;
      v23 = v43;
      (*v39)(v42, v1 + v21, v43);
      v24 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
      swift_beginAccess();
      v25 = v44;
      v22(v44, v20 + v24, v23);
      v7 = sub_23DB6EA6C();

      v26 = *v38;
      (*v38)(v25, v23);
      v26(KeyPath, v23);
      v12 += v7 & 1;
      ++v11;
      v5 = v33;
      if (v40 == v31)
      {
        goto LABEL_37;
      }
    }

    if (v11 >= *(v35 + 16))
    {
      goto LABEL_41;
    }

    v1 = *(v5 + 8 * v11 + 32);

    v7 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      goto LABEL_17;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    if (!sub_23DB70C3C())
    {
      goto LABEL_45;
    }
  }

  v12 = 0;
LABEL_37:

LABEL_39:

  return v12;
}

void sub_23DABBAC8(uint64_t a1, char *a2)
{
  if (a1)
  {
    v3 = *a2;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C(v10);

    if (v10[0])
    {

      v4 = a1;
LABEL_18:
      NavigationModel.updateSelectedPage(_:)(v4);

      return;
    }

    if (v3)
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v8 = 1;
LABEL_16:
        v4 = sub_23DAC6C5C(v8, a1);

        goto LABEL_18;
      }
    }

    else
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v8 = 0;
        goto LABEL_16;
      }
    }

    v4 = 0;
    goto LABEL_18;
  }

  if (qword_27E2FBBE8 != -1)
  {
    swift_once();
  }

  v5 = sub_23DB6EBFC();
  __swift_project_value_buffer(v5, qword_27E30A6C0);
  oslog = sub_23DB6EBDC();
  v6 = sub_23DB70ABC();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_23D9FF000, oslog, v6, "Updating to nil page", v7, 2u);
    MEMORY[0x23EEF7D90](v7, -1, -1);
  }
}

uint64_t sub_23DABBCD4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return Strong;
  }

  if (swift_weakLoadStrong())
  {
    type metadata accessor for AXOnboardingModelVoiceOverIOS(0);
    if (swift_dynamicCastClass() || (type metadata accessor for AXOnboardingModelVoiceOverMac(0), swift_dynamicCastClass()))
    {
    }

    else
    {
      type metadata accessor for AXOnboardingModelVoiceControl(0);
      swift_dynamicCastClass();
    }
  }

  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_23DB7087C();

  v3 = [v1 stringForKey_];

  if (!v3)
  {
    goto LABEL_24;
  }

  v4 = sub_23DB708BC();
  v6 = v5;

  v7 = sub_23DAC72C0();
  v8 = v7;
  if (v7 >> 62)
  {
LABEL_27:
    v9 = sub_23DB70C3C();
    if (v9)
    {
      goto LABEL_9;
    }

LABEL_28:

    return 0;
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_28;
  }

LABEL_9:
  v10 = 0;
  while ((v8 & 0xC000000000000001) != 0)
  {
    Strong = MEMORY[0x23EEF70C0](v10, v8);
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_22;
    }

LABEL_13:
    v12 = (Strong + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
    swift_beginAccess();
    v13 = *v12 == v4 && v12[1] == v6;
    if (v13 || (sub_23DB70DBC() & 1) != 0)
    {
      goto LABEL_23;
    }

    ++v10;
    if (v11 == v9)
    {
      goto LABEL_28;
    }
  }

  if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_27;
  }

  Strong = *(v8 + 8 * v10 + 32);

  v11 = v10 + 1;
  if (!__OFADD__(v10, 1))
  {
    goto LABEL_13;
  }

LABEL_22:
  __break(1u);
LABEL_23:

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v15);

  if (v15 != 1)
  {
    return Strong;
  }

LABEL_24:

  return 0;
}

uint64_t sub_23DABC054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_23DB707AC();
  v16 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23DB707CC();
  v8 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DA5295C();
  v11 = sub_23DB70AEC();
  v12 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = a2;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DABB3DC;
  aBlock[3] = a3;
  v13 = _Block_copy(aBlock);

  sub_23DB707BC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23DAC2E70(&qword_27E2FE2F0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
  sub_23DA17B80(&qword_27E2FE300, &qword_27E2FCFE8, &unk_23DB7A4E0, MEMORY[0x277D83970]);
  sub_23DB70C0C();
  MEMORY[0x23EEF6EA0](0, v10, v7, v13);
  _Block_release(v13);

  (*(v16 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v15);
}

uint64_t sub_23DABC3F4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    sub_23DB6EE7C();
  }

  return result;
}

uint64_t sub_23DABC470(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();

    sub_23DB6EE7C();
  }

  return result;
}

uint64_t sub_23DABC504(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    sub_23DB6EE7C();
  }

  return result;
}

uint64_t sub_23DABC588(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    sub_23DB6EE7C();
  }

  return result;
}

uint64_t sub_23DABC604(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();

    sub_23DB6EE7C();
  }

  return result;
}

uint64_t (*sub_23DABC698(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23DABC6EC;
}

uint64_t sub_23DABC6EC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_23DABC054(&unk_284FEBD88, sub_23DAC2EB8, &block_descriptor_68);
  }

  return result;
}

uint64_t sub_23DABC744(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEB50, &qword_23DB7CAF0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  *(v2 + 40) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEB58, &qword_23DB7CAF8);
  swift_allocObject();
  v8 = sub_23DB6EE9C();
  *(v2 + 16) = v8;
  v12 = v8;
  sub_23DA17B80(&qword_27E2FEB60, &qword_27E2FEB58, &qword_23DB7CAF8, MEMORY[0x277CBCE20]);
  *(v2 + 24) = sub_23DB6EF3C();
  v12 = *(v2 + 16);

  sub_23DB6EF4C();

  sub_23DA17B80(&qword_27E2FEB68, &qword_27E2FEB50, &qword_23DB7CAF0, MEMORY[0x277CBCC08]);
  v9 = sub_23DB6EF3C();
  (*(v5 + 8))(v7, v4);
  *(v2 + 32) = v9;
  return v2;
}

uint64_t sub_23DABC940(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEB10, &qword_23DB7CAD0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  *(v2 + 40) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEB18, &qword_23DB7CAD8);
  swift_allocObject();
  v8 = sub_23DB6EE9C();
  *(v2 + 16) = v8;
  v12 = v8;
  sub_23DA17B80(&qword_27E2FEB20, &qword_27E2FEB18, &qword_23DB7CAD8, MEMORY[0x277CBCE20]);
  *(v2 + 24) = sub_23DB6EF3C();
  v12 = *(v2 + 16);

  sub_23DB6EF4C();

  sub_23DA17B80(&qword_27E2FEB28, &qword_27E2FEB10, &qword_23DB7CAD0, MEMORY[0x277CBCC08]);
  v9 = sub_23DB6EF3C();
  (*(v5 + 8))(v7, v4);
  *(v2 + 32) = v9;
  return v2;
}

uint64_t sub_23DABCB3C(float a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEB30, &qword_23DB7CAE0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  *(v1 + 40) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEB38, &qword_23DB7CAE8);
  swift_allocObject();
  v8 = sub_23DB6EE9C();
  *(v1 + 16) = v8;
  v12 = v8;
  sub_23DA17B80(&qword_27E2FEB40, &qword_27E2FEB38, &qword_23DB7CAE8, MEMORY[0x277CBCE20]);
  *(v1 + 24) = sub_23DB6EF3C();
  v12 = *(v1 + 16);

  sub_23DB6EF4C();

  sub_23DA17B80(&qword_27E2FEB48, &qword_27E2FEB30, &qword_23DB7CAE0, MEMORY[0x277CBCC08]);
  v9 = sub_23DB6EF3C();
  (*(v5 + 8))(v7, v4);
  *(v2 + 32) = v9;
  return v2;
}

uint64_t sub_23DABCD40(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEAF0, &qword_23DB7CAC0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  *(v2 + 40) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEAF8, &qword_23DB7CAC8);
  swift_allocObject();
  v8 = sub_23DB6EE9C();
  *(v2 + 16) = v8;
  v12 = v8;
  sub_23DA17B80(&qword_27E2FEB00, &qword_27E2FEAF8, &qword_23DB7CAC8, MEMORY[0x277CBCE20]);
  *(v2 + 24) = sub_23DB6EF3C();
  v12 = *(v2 + 16);

  sub_23DB6EF4C();

  sub_23DA17B80(&qword_27E2FEB08, &qword_27E2FEAF0, &qword_23DB7CAC0, MEMORY[0x277CBCC08]);
  v9 = sub_23DB6EF3C();
  (*(v5 + 8))(v7, v4);
  *(v2 + 32) = v9;
  return v2;
}

uint64_t sub_23DABCF3C(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEAD0, &qword_23DB7CAB0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  *(v2 + 40) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEAD8, &qword_23DB7CAB8);
  swift_allocObject();
  v8 = sub_23DB6EE9C();
  *(v2 + 16) = v8;
  v12 = v8;
  sub_23DA17B80(&qword_27E2FEAE0, &qword_27E2FEAD8, &qword_23DB7CAB8, MEMORY[0x277CBCE20]);
  *(v2 + 24) = sub_23DB6EF3C();
  v12 = *(v2 + 16);

  sub_23DB6EF4C();

  sub_23DA17B80(&qword_27E2FEAE8, &qword_27E2FEAD0, &qword_23DB7CAB0, MEMORY[0x277CBCC08]);
  v9 = sub_23DB6EF3C();
  (*(v5 + 8))(v7, v4);
  *(v2 + 32) = v9;
  return v2;
}

uint64_t sub_23DABD138(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEAB0, &qword_23DB7CAA0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  *(v2 + 40) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEAB8, &qword_23DB7CAA8);
  swift_allocObject();
  v8 = sub_23DB6EE9C();
  *(v2 + 16) = v8;
  v12 = v8;
  sub_23DA17B80(&qword_27E2FEAC0, &qword_27E2FEAB8, &qword_23DB7CAA8, MEMORY[0x277CBCE20]);
  *(v2 + 24) = sub_23DB6EF3C();
  v12 = *(v2 + 16);

  sub_23DB6EF4C();

  sub_23DA17B80(&qword_27E2FEAC8, &qword_27E2FEAB0, &qword_23DB7CAA0, MEMORY[0x277CBCC08]);
  v9 = sub_23DB6EF3C();
  (*(v5 + 8))(v7, v4);
  *(v2 + 32) = v9;
  return v2;
}

void *sub_23DABD334(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE9F0, &qword_23DB7CA40);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  v3[5] = a1;
  v3[6] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE9F8, &qword_23DB7CA48);
  swift_allocObject();
  v10 = sub_23DB6EE9C();
  v3[2] = v10;
  v14 = v10;
  sub_23DA17B80(&qword_27E2FEA00, &qword_27E2FE9F8, &qword_23DB7CA48, MEMORY[0x277CBCE20]);
  v3[3] = sub_23DB6EF3C();
  v14 = v3[2];

  sub_23DB6EF4C();

  sub_23DA17B80(&qword_27E2FEA08, &qword_27E2FE9F0, &qword_23DB7CA40, MEMORY[0x277CBCC08]);
  v11 = sub_23DB6EF3C();
  (*(v7 + 8))(v9, v6);
  v3[4] = v11;
  return v3;
}

uint64_t sub_23DABD534(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEA90, &qword_23DB7CA90);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  *(v2 + 40) = a1 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEA98, &qword_23DB7CA98);
  swift_allocObject();
  v8 = sub_23DB6EE9C();
  *(v2 + 16) = v8;
  v12 = v8;
  sub_23DA17B80(&qword_27E2FEAA0, &qword_27E2FEA98, &qword_23DB7CA98, MEMORY[0x277CBCE20]);
  *(v2 + 24) = sub_23DB6EF3C();
  v12 = *(v2 + 16);

  sub_23DB6EF4C();

  sub_23DA17B80(&qword_27E2FEAA8, &qword_27E2FEA90, &qword_23DB7CA90, MEMORY[0x277CBCC08]);
  v9 = sub_23DB6EF3C();
  (*(v5 + 8))(v7, v4);
  *(v2 + 32) = v9;
  return v2;
}

uint64_t sub_23DABD734(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEA70, &qword_23DB7CA80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  *(v2 + 40) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEA78, &qword_23DB7CA88);
  swift_allocObject();
  v8 = sub_23DB6EE9C();
  *(v2 + 16) = v8;
  v12 = v8;
  sub_23DA17B80(&qword_27E2FEA80, &qword_27E2FEA78, &qword_23DB7CA88, MEMORY[0x277CBCE20]);
  *(v2 + 24) = sub_23DB6EF3C();
  v12 = *(v2 + 16);

  sub_23DB6EF4C();

  sub_23DA17B80(&qword_27E2FEA88, &qword_27E2FEA70, &qword_23DB7CA80, MEMORY[0x277CBCC08]);
  v9 = sub_23DB6EF3C();
  (*(v5 + 8))(v7, v4);
  *(v2 + 32) = v9;
  return v2;
}

uint64_t sub_23DABD930(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEA50, &qword_23DB7CA70);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - v12;
  *(v4 + 40) = a1;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *(v4 + 64) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEA58, &qword_23DB7CA78);
  swift_allocObject();
  v14 = sub_23DB6EE9C();
  *(v4 + 16) = v14;
  v18 = v14;
  sub_23DA17B80(&qword_27E2FEA60, &qword_27E2FEA58, &qword_23DB7CA78, MEMORY[0x277CBCE20]);
  *(v4 + 24) = sub_23DB6EF3C();
  v18 = *(v4 + 16);

  sub_23DB6EF4C();

  sub_23DA17B80(&qword_27E2FEA68, &qword_27E2FEA50, &qword_23DB7CA70, MEMORY[0x277CBCC08]);
  v15 = sub_23DB6EF3C();
  (*(v11 + 8))(v13, v10);
  *(v5 + 32) = v15;
  return v5;
}

void *sub_23DABDB4C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEA30, &qword_23DB7CA60);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v2[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEA38, &qword_23DB7CA68);
  swift_allocObject();
  v8 = sub_23DB6EE9C();
  v2[2] = v8;
  v12 = v8;
  sub_23DA17B80(&qword_27E2FEA40, &qword_27E2FEA38, &qword_23DB7CA68, MEMORY[0x277CBCE20]);
  v2[3] = sub_23DB6EF3C();
  v12 = v2[2];

  sub_23DB6EF4C();

  sub_23DA17B80(&qword_27E2FEA48, &qword_27E2FEA30, &qword_23DB7CA60, MEMORY[0x277CBCC08]);
  v9 = sub_23DB6EF3C();
  (*(v5 + 8))(v7, v4);
  v2[4] = v9;
  return v2;
}

uint64_t sub_23DABDD48(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEA10, &qword_23DB7CA50);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  *(v2 + 40) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEA18, &qword_23DB7CA58);
  swift_allocObject();
  v8 = sub_23DB6EE9C();
  *(v2 + 16) = v8;
  v12 = v8;
  sub_23DA17B80(&qword_27E2FEA20, &qword_27E2FEA18, &qword_23DB7CA58, MEMORY[0x277CBCE20]);
  *(v2 + 24) = sub_23DB6EF3C();
  v12 = *(v2 + 16);

  sub_23DB6EF4C();

  sub_23DA17B80(&qword_27E2FEA28, &qword_27E2FEA10, &qword_23DB7CA50, MEMORY[0x277CBCC08]);
  v9 = sub_23DB6EF3C();
  (*(v5 + 8))(v7, v4);
  *(v2 + 32) = v9;
  return v2;
}

uint64_t NavigationModel.shouldShowHomeButton.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__shouldShowHomeButton);
  swift_beginAccess();
  return *(v1 + 40);
}

uint64_t NavigationDirection.hashValue.getter()
{
  v1 = *v0;
  sub_23DB70E0C();
  MEMORY[0x23EEF71C0](v1);
  return sub_23DB70E4C();
}

uint64_t focusInstructions.setter(char a1)
{
  result = swift_beginAccess();
  byte_27E2FE958 = a1;
  return result;
}

uint64_t NavigationModel.selectedPage.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v1);

  return v1;
}

uint64_t sub_23DABE19C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_23DABE21C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DB6EF0C(&v5);

  v3 = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v2;

  sub_23DB6EF1C();
  sub_23DABE3E8(v3);
}

uint64_t NavigationModel.selectedPage.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v4);

  v2 = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;

  sub_23DB6EF1C();
  sub_23DABE3E8(v2);
}

uint64_t sub_23DABE3E8(uint64_t a1)
{
  v2 = sub_23DB6EB6C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23DB6EA8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v30 = &v27 - v11;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v31);

  v13 = *&v31[0];
  if (*&v31[0])
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C(v31);

    v29 = v9;
    if (v31[0])
    {

      if (!a1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (qword_27E2FBBE8 != -1)
      {
        swift_once();
      }

      v14 = sub_23DB6EBFC();
      __swift_project_value_buffer(v14, qword_27E30A6C0);
      v15 = sub_23DB6EBDC();
      v16 = sub_23DB70ABC();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = v5;
        v18 = a1;
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_23D9FF000, v15, v16, "Trying to display hidden page!!!", v19, 2u);
        v20 = v19;
        a1 = v18;
        v5 = v17;
        MEMORY[0x23EEF7D90](v20, -1, -1);
      }

      if (!a1)
      {
        goto LABEL_14;
      }
    }

    v21 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
    swift_beginAccess();
    v27 = v2;
    v28 = v3;
    v22 = *(v7 + 16);
    v23 = v30;
    v22(v30, v13 + v21, v6);
    v24 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
    swift_beginAccess();
    v25 = v29;
    v22(v29, a1 + v24, v6);
    LOBYTE(v24) = sub_23DB6EA6C();
    v26 = *(v7 + 8);
    v26(v25, v6);
    v26(v23, v6);
    v2 = v27;
    v3 = v28;
    if (v24)
    {
    }

LABEL_13:
    sub_23DA1DD00();
LABEL_14:
    memset(v31, 0, sizeof(v31));
    sub_23DB6EB7C();
    sub_23DB6EB2C();
    result = (*(v3 + 8))(v5, v2);
    if (!v13)
    {
      return result;
    }

    sub_23DA1DF04();
  }

  if (a1)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t (*NavigationModel.selectedPage.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(a1 + 1);

  *a1 = a1[1];
  return sub_23DABE89C;
}

uint64_t sub_23DABE89C(uint64_t *a1, char a2)
{
  v4 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  if (a2)
  {

    sub_23DB6EF0C(a1 + 1);

    v5 = a1[1];
    swift_getKeyPath();
    swift_getKeyPath();
    a1[1] = v4;

    sub_23DB6EF1C();
    sub_23DABE3E8(v5);
  }

  else
  {
    sub_23DB6EF0C(a1 + 1);

    v6 = a1[1];
    swift_getKeyPath();
    swift_getKeyPath();
    a1[1] = v4;

    sub_23DB6EF1C();
    sub_23DABE3E8(v6);
  }
}

uint64_t NavigationModel.$selectedPage.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE970, &qword_23DB7C868);
  sub_23DB6EEDC();
  return swift_endAccess();
}

uint64_t sub_23DABEA9C(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE970, &qword_23DB7C868);
  sub_23DB6EEDC();
  return swift_endAccess();
}

uint64_t sub_23DABEB14(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE978, &qword_23DB7C870);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE970, &qword_23DB7C868);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t NavigationModel.$selectedPage.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE978, &qword_23DB7C870);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE970, &qword_23DB7C868);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*NavigationModel.$selectedPage.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE978, &qword_23DB7C870);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__selectedPage;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE970, &qword_23DB7C868);
  sub_23DB6EEDC();
  swift_endAccess();
  return sub_23DA107BC;
}

uint64_t sub_23DABEF40(char *a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__shouldShowHomeButton);
  swift_beginAccess();
  *(v3 + 40) = v2;

  sub_23DABC054(&unk_284FEBD88, sub_23DAC2EB8, &block_descriptor_68);
}

uint64_t NavigationModel.shouldShowHomeButton.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__shouldShowHomeButton);
  swift_beginAccess();
  *(v3 + 40) = a1;

  sub_23DABC054(&unk_284FEBD88, sub_23DAC2EB8, &block_descriptor_68);
}

uint64_t (*NavigationModel.shouldShowHomeButton.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__shouldShowHomeButton);

  *(v4 + 40) = sub_23DABC698(v4);
  return sub_23DABF0D8;
}

void sub_23DABF0D8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1, 0);

  free(v1);
}

uint64_t sub_23DABF12C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v1);

  return v1;
}

uint64_t NavigationModel.dataModel.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*NavigationModel.dataModel.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel_dataModel;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_23DABF2E0;
}

void sub_23DABF2E0(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t NavigationModel.__allocating_init()()
{
  v0 = swift_allocObject();
  NavigationModel.init()();
  return v0;
}

uint64_t NavigationModel.init()()
{
  v1 = v0;
  v2 = sub_23DB6FA6C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v22 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - v6;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE980, &qword_23DB7C878);
  v8 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE970, &qword_23DB7C868);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - v13;
  v15 = OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__selectedPage;
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE988, &unk_23DB7C880);
  sub_23DB6EECC();
  (*(v12 + 32))(v1 + v15, v14, v11);
  v16 = OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__shouldShowHomeButton;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE320, &qword_23DB7B4B8);
  swift_allocObject();
  *(v1 + v16) = sub_23DABC940(0);
  v17 = OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__expandedPages;
  v18 = MEMORY[0x277D84FA0];
  v23 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE998, &qword_23DB7C890);
  sub_23DB6EECC();
  (*(v8 + 32))(v1 + v17, v10, v21);
  swift_weakInit();
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v18 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  *(v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel_subscribers) = v18;
  sub_23DB6FA5C();
  swift_beginAccess();
  (*(v3 + 16))(v22, v7, v2);
  sub_23DB6EECC();
  (*(v3 + 8))(v7, v2);
  swift_endAccess();
  return v1;
}

uint64_t NavigationModel.init(columnVisibility:selectedPage:dataModel:)(char *a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_23DAC2518(a1, a2, a3);

  return v3;
}

void NavigationModel.updateSelectedPage(_:)(uint64_t a1)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C(v15);

    v3 = v15[0];
    v4 = *(v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__shouldShowHomeButton);
    swift_beginAccess();
    *(v4 + 40) = (v3 & 1) == 0;

    sub_23DABC054(&unk_284FEBD88, sub_23DAC2EB8, &block_descriptor_68);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C(v14);

    if ((v14[0] & 1) == 0)
    {
      v5 = [objc_opt_self() standardUserDefaults];
      swift_beginAccess();

      v6 = sub_23DB7087C();

      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        type metadata accessor for AXOnboardingModelVoiceOverIOS(0);
        if (swift_dynamicCastClass() || (type metadata accessor for AXOnboardingModelVoiceOverMac(0), swift_dynamicCastClass()))
        {
        }

        else
        {
          type metadata accessor for AXOnboardingModelVoiceControl(0);
          swift_dynamicCastClass();
        }
      }

      v10 = sub_23DB7087C();

      [v5 setObject:v6 forKey:v10];
    }

    swift_getKeyPath();
    swift_getKeyPath();

    sub_23DB6EF0C(&v13);

    v11 = v13;
    swift_getKeyPath();
    swift_getKeyPath();
    v13 = a1;

    sub_23DB6EF1C();
    sub_23DABE3E8(v11);
  }

  else
  {
    if (qword_27E2FBBE8 != -1)
    {
      swift_once();
    }

    v7 = sub_23DB6EBFC();
    __swift_project_value_buffer(v7, qword_27E30A6C0);
    oslog = sub_23DB6EBDC();
    v8 = sub_23DB70ABC();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_23D9FF000, oslog, v8, "Updating to nil page", v9, 2u);
      MEMORY[0x23EEF7D90](v9, -1, -1);
    }
  }
}