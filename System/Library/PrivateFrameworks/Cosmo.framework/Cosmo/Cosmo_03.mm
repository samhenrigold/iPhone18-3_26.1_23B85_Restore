uint64_t sub_247D9D9F0(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_parentConnection);
  v2 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *(v1 + 16) = sub_247DA52A0;
  *(v1 + 24) = v2;

  sub_247D6A24C(v3, v4);

  if (qword_27EE732B0 != -1)
  {
    swift_once();
  }

  v5 = sub_247DD23CC();
  __swift_project_value_buffer(v5, qword_27EE73D30);

  v6 = sub_247DD23AC();
  v7 = sub_247DD2F2C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    v10 = CosmoMultiplexChannelClient.description.getter();
    v12 = sub_247D72868(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_247D56000, v6, v7, "[Start] Starting parent channel, %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x24C1BAF60](v9, -1, -1);
    MEMORY[0x24C1BAF60](v8, -1, -1);
  }

  return sub_247D765E0();
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_247D9DC0C(uint64_t a1, uint64_t a2)
{
  v5 = sub_247DD2A0C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_247DD2A2C();
  v9 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v2 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_queue);
  aBlock[4] = a1;
  v18 = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = a2;
  v12 = _Block_copy(aBlock);

  sub_247DD2A1C();
  v16 = MEMORY[0x277D84F90];
  sub_247DA4BD4(&unk_27EE73AF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D869B0(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v11, v8, v12);
  _Block_release(v12);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v15);
}

uint64_t sub_247D9DEA4(uint64_t a1)
{
  if (qword_27EE732B0 != -1)
  {
    swift_once();
  }

  v1 = sub_247DD23CC();
  __swift_project_value_buffer(v1, qword_27EE73D30);

  v2 = sub_247DD23AC();
  v3 = sub_247DD2F2C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    v6 = CosmoMultiplexChannelClient.description.getter();
    v8 = sub_247D72868(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_247D56000, v2, v3, "[Stop] Stopping parent channel, %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x24C1BAF60](v5, -1, -1);
    MEMORY[0x24C1BAF60](v4, -1, -1);
  }

  return sub_247D781D4();
}

void sub_247D9E018(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_247DD2ABC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v35[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  v9 = *(v2 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_queue);
  *v7 = v9;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v10 = v9;
  LOBYTE(v9) = sub_247DD2ADC();
  (*(v5 + 8))(v7, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_11;
  }

  if (v8)
  {
    if ((*(v2 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_terminated) & 1) == 0)
    {
      if (qword_27EE732B0 != -1)
      {
        swift_once();
      }

      v11 = sub_247DD23CC();
      __swift_project_value_buffer(v11, qword_27EE73D30);

      v12 = sub_247DD23AC();
      v13 = sub_247DD2F2C();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v35[0] = v15;
        *v14 = 136315394;
        HIBYTE(v34) = v8;
        v16 = sub_247DD2CFC();
        v18 = sub_247D72868(v16, v17, v35);

        *(v14 + 4) = v18;
        *(v14 + 12) = 2080;
        v19 = CosmoMultiplexChannelClient.description.getter();
        v21 = sub_247D72868(v19, v20, v35);

        *(v14 + 14) = v21;
        _os_log_impl(&dword_247D56000, v12, v13, "Parent channel invalidated, connection-state=%s %s", v14, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v15, -1, -1);
        MEMORY[0x24C1BAF60](v14, -1, -1);
      }

      sub_247D9E484();
      swift_beginAccess();
      v22 = *(v2 + 16);
      if (v22)
      {
        v23 = *(v2 + 24);
        HIBYTE(v34) = 1;

        v22(&v34 + 7);
        sub_247D6A24C(v22, v23);
      }
    }

    return;
  }

  *(v2 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_ready) = 1;
  if (qword_27EE732B0 != -1)
  {
    goto LABEL_18;
  }

LABEL_11:
  v24 = sub_247DD23CC();
  __swift_project_value_buffer(v24, qword_27EE73D30);

  v25 = sub_247DD23AC();
  v26 = sub_247DD2F2C();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v35[0] = v28;
    *v27 = 136315138;
    v29 = CosmoMultiplexChannelClient.description.getter();
    v31 = sub_247D72868(v29, v30, v35);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_247D56000, v25, v26, "Parent channel ready, %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    MEMORY[0x24C1BAF60](v28, -1, -1);
    MEMORY[0x24C1BAF60](v27, -1, -1);
  }

  swift_beginAccess();
  v32 = *(v2 + 16);
  if (v32)
  {
    v33 = *(v2 + 24);
    HIBYTE(v34) = 0;

    v32(&v34 + 7);
    sub_247D6A24C(v32, v33);
  }

  sub_247DA049C();
}

void sub_247D9E484()
{
  v1 = v0;
  v45 = sub_247DD2A0C();
  v2 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_247DD2A2C();
  v4 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_247DD2ABC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_queue);
  *v9 = v10;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v11 = v10;
  v12 = sub_247DD2ADC();
  v14 = *(v7 + 8);
  v13 = v7 + 8;
  v14(v9, v6);
  if (v12)
  {
    *(v1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_ready) = 0;
    *(v1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_terminated) = 1;
    v13 = OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_requestQueue;
    swift_beginAccess();
    v15 = *(v1 + v13);
    if (!(v15 >> 62))
    {
      if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return;
      }

      goto LABEL_4;
    }
  }

  else
  {
    __break(1u);
  }

  if (!sub_247DD30BC())
  {
    return;
  }

LABEL_4:
  v16 = OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_activeRequests;
  swift_beginAccess();
  v17 = *(v1 + v16);
  if (v17 >> 62)
  {
    if (!sub_247DD30BC())
    {
      return;
    }
  }

  else if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if (qword_27EE732B0 != -1)
  {
    swift_once();
  }

  v18 = sub_247DD23CC();
  __swift_project_value_buffer(v18, qword_27EE73D30);

  v19 = sub_247DD23AC();
  v20 = sub_247DD2F2C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v21 = 136315138;
    v23 = CosmoMultiplexChannelClient.description.getter();
    v25 = sub_247D72868(v23, v24, aBlock);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_247D56000, v19, v20, "Failing pending requests, %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    MEMORY[0x24C1BAF60](v22, -1, -1);
    MEMORY[0x24C1BAF60](v21, -1, -1);
  }

  v26 = *(v1 + v13);
  if (v26 >> 62)
  {
    v27 = sub_247DD30BC();
    if (!v27)
    {
      return;
    }
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v27)
    {
      return;
    }
  }

  if (v27 < 1)
  {
    __break(1u);
  }

  else
  {
    v40 = v26 & 0xC000000000000001;
    v39 = 0x8000000247DD9920;
    v38 = v48;
    v37 = (v2 + 8);
    v36 = (v4 + 8);

    v28 = 0;
    v35 = xmmword_247DD52A0;
    v41 = v26;
    do
    {
      if (v40)
      {
        v29 = MEMORY[0x24C1BA360](v28, v26);
      }

      else
      {
        v29 = *(v26 + 8 * v28 + 32);
      }

      ++v28;
      v30 = swift_allocObject();
      *(v30 + 16) = v29;
      *(v30 + 24) = 0xD00000000000001DLL;
      *(v30 + 32) = v39;
      *(v30 + 40) = v35;
      *(v30 + 56) = 2;
      v48[2] = sub_247DA52EC;
      v48[3] = v30;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v48[0] = sub_247D598D4;
      v48[1] = &block_descriptor_71;
      v31 = _Block_copy(aBlock);

      v32 = v42;
      sub_247DD2A1C();
      v46 = MEMORY[0x277D84F90];
      sub_247DA4BD4(&unk_27EE73AF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
      sub_247D869B0(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
      v34 = v44;
      v33 = v45;
      sub_247DD2FFC();
      MEMORY[0x24C1BA270](0, v32, v34, v31);
      _Block_release(v31);
      (*v37)(v34, v33);
      (*v36)(v32, v43);

      v26 = v41;
    }

    while (v27 != v28);
  }
}

uint64_t sub_247D9EB38(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v27 = a3;
  v28 = a6;
  v29 = a2;
  v31 = sub_247DD2A0C();
  v34 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_247DD2A2C();
  v32 = *(v13 - 8);
  v33 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a5 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  v30 = *(v6 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_queue);
  (*(v17 + 16))(&v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a5);
  v19 = (*(v17 + 80) + 56) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = v27;
  v22 = v28;
  *(v20 + 2) = a5;
  *(v20 + 3) = v22;
  *(v20 + 4) = v7;
  *(v20 + 5) = v21;
  *(v20 + 6) = a4;
  (*(v17 + 32))(&v20[v19], &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a5);
  v20[v19 + v18] = v29;
  aBlock[4] = sub_247D9F4FC;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = &block_descriptor_9;
  v23 = _Block_copy(aBlock);

  sub_247DD2A1C();
  v35 = MEMORY[0x277D84F90];
  sub_247DA4BD4(&unk_27EE73AF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D869B0(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
  v24 = v31;
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v16, v12, v23);
  _Block_release(v23);
  (*(v34 + 8))(v12, v24);
  (*(v32 + 8))(v16, v33);
}

void sub_247D9EEEC(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v48 = a5;
  v47 = a4;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EE73C10, &qword_247DD4330);
  v12 = sub_247DD32FC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v45 - v15);
  v17 = *(a6 - 8);
  MEMORY[0x28223BE20](v14);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_terminated))
  {
    sub_247D6AFB0();
    v20 = swift_allocError();
    *v21 = xmmword_247DD52A0;
    *(v21 + 16) = 2;
    *v16 = v20;
    swift_storeEnumTagMultiPayload();
    a2(v16);
    (*(v13 + 8))(v16, v12);
  }

  else
  {
    v46 = type metadata accessor for PendingRequest(0);
    v22 = *(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_queue);
    v23 = swift_allocObject();
    swift_weakInit();
    v24 = swift_allocObject();
    v24[2] = a6;
    v24[3] = a7;
    v24[4] = v23;
    v24[5] = a2;
    v24[6] = a3;
    (*(v17 + 16))(v19, v47, a6);
    v25 = v22;

    v26 = v48;
    v47 = a7;
    v27 = sub_247DA4AB8(v19, v48 & 1, v25, sub_247DA5220, v24, v46, a6, a7);
    v28 = swift_allocObject();
    swift_weakInit();
    v29 = v27[2];
    v30 = v27[3];
    v27[2] = sub_247DA5230;
    v27[3] = v28;

    sub_247D6A24C(v29, v30);

    if (*(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_ready) == 1 && ((v31 = OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_activeRequests, swift_beginAccess(), v32 = *(a1 + v31), v32 >> 62) ? (v33 = sub_247DD30BC()) : (v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10)), v33 < *(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_config) || (v26 & 1) != 0))
    {
      sub_247DA0CDC(v27);
    }

    else
    {
      sub_247DA0190(v27, v26 & 1);
      if (qword_27EE732B0 != -1)
      {
        swift_once();
      }

      v34 = sub_247DD23CC();
      __swift_project_value_buffer(v34, qword_27EE73D30);

      v35 = sub_247DD23AC();
      v36 = sub_247DD2F2C();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v49 = v38;
        *v37 = 136315650;
        v39 = (*(v47 + 48))(a6);
        v41 = sub_247D72868(v39, v40, &v49);

        *(v37 + 4) = v41;
        *(v37 + 12) = 1024;
        *(v37 + 14) = v26 & 1;
        *(v37 + 18) = 2080;
        v42 = CosmoMultiplexChannelClient.description.getter();
        v44 = sub_247D72868(v42, v43, &v49);

        *(v37 + 20) = v44;
        _os_log_impl(&dword_247D56000, v35, v36, "[Request] Queued request for path=%s, forceFlush=%{BOOL}d %s", v37, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v38, -1, -1);
        MEMORY[0x24C1BAF60](v37, -1, -1);
      }
    }
  }
}

uint64_t sub_247D9F434()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64) + v4;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 1, v3 | 7);
}

uint64_t sub_247D9F560(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a4;
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EE73C10, &qword_247DD4330);
  v34 = sub_247DD32FC();
  v32 = *(v34 - 8);
  v8 = MEMORY[0x28223BE20](v34);
  v10 = (&v29 - v9);
  v30 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for CosmoHttpResponseContent(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73DD8, &unk_247DD60F0);
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - v17;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_247D6BA6C(a1, v18, &unk_27EE73DD8, &unk_247DD60F0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = *v18;
      v21 = *(v18 + 1);
      v22 = v18[16];
      sub_247D6AFB0();
      v23 = swift_allocError();
      *v24 = v20;
      *(v24 + 8) = v21;
      *(v24 + 16) = v22;
      *v10 = v23;
      v25 = v34;
      swift_storeEnumTagMultiPayload();
      v33(v10);

      return (*(v32 + 8))(v10, v25);
    }

    else
    {
      sub_247DA5238(v18, v15, type metadata accessor for CosmoHttpResponseContent);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 40))(v15, AssociatedTypeWitness, AssociatedConformanceWitness);
      v27 = v30;
      (*(v30 + 16))(v10, v12, AssociatedTypeWitness);
      v28 = v34;
      swift_storeEnumTagMultiPayload();
      v33(v10);

      (*(v32 + 8))(v10, v28);
      (*(v27 + 8))(v12, AssociatedTypeWitness);
      return sub_247D9D920(v15, type metadata accessor for CosmoHttpResponseContent);
    }
  }

  return result;
}

uint64_t sub_247D9FBE0(uint64_t a1)
{
  v2 = sub_247DD20DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CosmoHttpResponseContent(0);
  MEMORY[0x28223BE20](v6);
  v8 = (v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_247D9D8B8(a1, v8, type metadata accessor for CosmoHttpResponseContent);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v12 = *v8;
    v11 = v8[1];
    sub_247D6A2E8(*v8, v11);
    v13 = sub_247DD03F8(v12, v11);
    if (v14)
    {
      v10 = v13;
      sub_247D6A1F8(v12, v11);
    }

    else
    {
      v19 = v12;
      v20 = v11;
      sub_247D6A2E8(v12, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73530, &unk_247DD4320);
      if (swift_dynamicCast())
      {
        sub_247D6B5A8(v17, v21);
        __swift_project_boxed_opaque_existential_1(v21, v22);
        v15 = sub_247DD310C();
        sub_247D6A1F8(v12, v11);
        if (v15)
        {
          __swift_project_boxed_opaque_existential_1(v21, v22);
          sub_247DD30FC();
          sub_247D6A1F8(v12, v11);
          v10 = *&v17[0];
          __swift_destroy_boxed_opaque_existential_0Tm(v21);
          return v10;
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v21);
      }

      else
      {
        sub_247D6A1F8(v12, v11);
        v18 = 0;
        memset(v17, 0, sizeof(v17));
        sub_247D6BAD4(v17, &qword_27EE73538, &qword_247DD6100);
      }

      v10 = sub_247DD0170(v12, v11);
    }

    sub_247D6A1F8(v12, v11);
    return v10;
  }

  (*(v3 + 32))(v5, v8, v2);
  v21[0] = 0x3D4C5255656C6966;
  v21[1] = 0xE800000000000000;
  v9 = sub_247DD20BC();
  MEMORY[0x24C1BA0A0](v9);

  v10 = v21[0];
  (*(v3 + 8))(v5, v2);
  return v10;
}

uint64_t sub_247D9FF0C(uint64_t a1, uint64_t a2)
{
  v3 = sub_247DD2ABC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = *(result + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_queue);
  *v6 = v9;
  (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
  v10 = v9;
  v11 = sub_247DD2ADC();
  (*(v4 + 8))(v6, v3);
  if (v11)
  {
    v12 = OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_activeRequests;
    swift_beginAccess();
    v17[1] = v12;
    v17[2] = v8;
    v3 = *(v8 + v12);
    v2 = v3 & 0xFFFFFFFFFFFFFF8;
    if (!(v3 >> 62))
    {
      v13 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }
  }

  else
  {
LABEL_21:
    __break(1u);
  }

  v13 = sub_247DD30BC();
LABEL_5:

  v14 = 0;
  while (1)
  {
    if (v13 == v14)
    {

      goto LABEL_17;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C1BA360](v14, v3);
    }

    else
    {
      if (v14 >= *(v2 + 16))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    v15 = sub_247DD221C();

    if (v15)
    {
      break;
    }

    if (__OFADD__(v14++, 1))
    {
      goto LABEL_20;
    }
  }

  swift_beginAccess();
  sub_247DC8DD4(v14);
  swift_endAccess();

LABEL_17:
  sub_247DA049C();
}

uint64_t sub_247DA0190(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_247DD2ABC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_queue);
  *v9 = v10;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v11 = v10;
  LOBYTE(v10) = sub_247DD2ADC();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((a2 & 1) == 0)
  {
LABEL_18:
    v19 = OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_requestQueue;
    swift_beginAccess();

    MEMORY[0x24C1BA170](v20);
    if (*((*(v3 + v19) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v3 + v19) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_19:
      sub_247DD2EBC();
      return swift_endAccess();
    }

LABEL_24:
    sub_247DD2E9C();
    goto LABEL_19;
  }

  v12 = OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_requestQueue;
  swift_beginAccess();
  v13 = *(v3 + v12);
  if (v13 >> 62)
  {
    v14 = sub_247DD30BC();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = 0;
  while (1)
  {
    if (v14 == v15)
    {

      goto LABEL_18;
    }

    if ((v13 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if ((*(*(v13 + 8 * v15 + 32) + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_forceFlush) & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_10:
    if (__OFADD__(v15++, 1))
    {
      goto LABEL_22;
    }
  }

  v22 = *(MEMORY[0x24C1BA360](v15, v13) + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_forceFlush);
  swift_unknownObjectRelease();
  if (v22)
  {
    goto LABEL_10;
  }

LABEL_14:

  swift_beginAccess();
  v17 = *(v3 + v12);
  if (v17 >> 62)
  {
    result = sub_247DD30BC();
    if (result >= v15)
    {
      goto LABEL_16;
    }
  }

  else
  {
    result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= v15)
    {
LABEL_16:

      sub_247DA5060(v15, v15, a1, type metadata accessor for PendingRequest);
      swift_endAccess();
    }
  }

  __break(1u);
  return result;
}

void sub_247DA049C()
{
  v2 = v0;
  v3 = sub_247DD2ABC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v2 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_queue);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
  v8 = v7;
  LOBYTE(v7) = sub_247DD2ADC();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    if (*(v2 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_ready) != 1)
    {
      return;
    }

    v1 = OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_requestQueue;
    swift_beginAccess();
    v9 = *(v2 + v1);
    if (!(v9 >> 62))
    {
      if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return;
      }

      goto LABEL_5;
    }
  }

  else
  {
LABEL_90:
    __break(1u);
  }

  if (!sub_247DD30BC())
  {
    return;
  }

LABEL_5:
  v10 = *(v2 + v1);
  v11 = v10 & 0xFFFFFFFFFFFFFF8;
  if (v10 >> 62)
  {
    v62 = *(v2 + v1);
    v12 = sub_247DD30BC();
    v10 = v62;
  }

  else
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = v10 & 0xC000000000000001;
  v14 = v10 + 32;
  v65 = v10;

  v15 = 0;
  v16 = 0;
  while (v15 != v12)
  {
    if (v13)
    {
      v20 = MEMORY[0x24C1BA360](v15, v65);
      v19 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_103;
      }

      v21 = *(v20 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_forceFlush);
      swift_unknownObjectRelease();
      if ((v21 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if ((v15 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

      if (v15 >= *(v11 + 16))
      {
        goto LABEL_82;
      }

      v19 = v15 + 1;
      if ((*(*(v14 + 8 * v15) + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_forceFlush) & 1) == 0)
      {
LABEL_15:
        v17 = 0;
        goto LABEL_9;
      }
    }

    v17 = 1;
LABEL_9:
    v15 = v19;
    v18 = __OFADD__(v16, v17);
    v16 += v17;
    if (v18)
    {
      goto LABEL_81;
    }
  }

  v22 = *(v2 + v1);
  if (v22 >> 62)
  {
    v23 = sub_247DD30BC();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = *(v2 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_config);
  v25 = OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_activeRequests;
  swift_beginAccess();
  v26 = *(v2 + v25);
  if (!(v26 >> 62))
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v28 = v24 - v27;
    if (!__OFSUB__(v24, v27))
    {
      goto LABEL_23;
    }

LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v63 = sub_247DD30BC();
  v28 = v24 - v63;
  if (__OFSUB__(v24, v63))
  {
    goto LABEL_97;
  }

LABEL_23:
  if (v28 >= v23)
  {
    v28 = v23;
  }

  if (v28 <= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = v28;
  }

  if (v14 <= 0)
  {
    if (qword_27EE732B0 != -1)
    {
      swift_once();
    }

    v54 = sub_247DD23CC();
    __swift_project_value_buffer(v54, qword_27EE73D30);

    v55 = sub_247DD23AC();
    v56 = sub_247DD2F2C();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v66[0] = v58;
      *v57 = 136315138;
      v59 = CosmoMultiplexChannelClient.description.getter();
      v61 = sub_247D72868(v59, v60, v66);

      *(v57 + 4) = v61;
      _os_log_impl(&dword_247D56000, v55, v56, "[Flush] Skipping, %s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v58);
      MEMORY[0x24C1BAF60](v58, -1, -1);
      MEMORY[0x24C1BAF60](v57, -1, -1);
    }

    return;
  }

  if (qword_27EE732B0 != -1)
  {
LABEL_98:
    swift_once();
  }

  v29 = sub_247DD23CC();
  __swift_project_value_buffer(v29, qword_27EE73D30);

  v30 = sub_247DD23AC();
  v31 = sub_247DD2F2C();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v66[0] = v33;
    *v32 = 134218242;
    *(v32 + 4) = v14;
    *(v32 + 12) = 2080;
    v34 = CosmoMultiplexChannelClient.description.getter();
    v36 = sub_247D72868(v34, v35, v66);

    *(v32 + 14) = v36;
    _os_log_impl(&dword_247D56000, v30, v31, "[Flush] Flushing count=%ld requests, %s", v32, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
    MEMORY[0x24C1BAF60](v33, -1, -1);
    MEMORY[0x24C1BAF60](v32, -1, -1);
  }

  v67 = MEMORY[0x277D84F90];
  v37 = 1;
  while (2)
  {
    swift_beginAccess();
    v38 = *(v2 + v1);
    v39 = v38 >> 62;
    if (v38 >> 62)
    {
      if (!sub_247DD30BC())
      {
        goto LABEL_104;
      }

      if (!sub_247DD30BC())
      {
        goto LABEL_105;
      }
    }

    else if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_83;
    }

    if ((v38 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C1BA360](0, v38);
      v40 = v38 & 0xFFFFFFFFFFFFFF8;
      if (v39)
      {
        goto LABEL_44;
      }

LABEL_38:
      v41 = *(v40 + 16);
      if (!v41)
      {
        goto LABEL_88;
      }
    }

    else
    {
      if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_84;
      }

      v40 = v38 & 0xFFFFFFFFFFFFFF8;
      if (!v39)
      {
        goto LABEL_38;
      }

LABEL_44:
      if (!sub_247DD30BC())
      {
        goto LABEL_88;
      }

      if (sub_247DD30BC() < 1)
      {
        goto LABEL_89;
      }

      v41 = sub_247DD30BC();
    }

    v42 = v41 - 1;
    if (__OFSUB__(v41, 1))
    {
      goto LABEL_85;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *(v2 + v1) = v38;
    if (!isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v39)
      {
        goto LABEL_54;
      }

      goto LABEL_53;
    }

    if (v39)
    {
LABEL_53:
      sub_247DD30BC();
      goto LABEL_54;
    }

    v44 = (v38 & 0xFFFFFFFFFFFFFF8);
    if (v42 > *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_54:
      v38 = sub_247DD307C();
      *(v2 + v1) = v38;
      v44 = (v38 & 0xFFFFFFFFFFFFFF8);
    }

    if (v38 >> 62)
    {
      v48 = sub_247DD30BC();
      if (__OFSUB__(v48, 1))
      {
        goto LABEL_106;
      }

      memmove(v44 + 4, v44 + 5, 8 * (v48 - 1));
      v49 = sub_247DD30BC();
      v46 = v49 - 1;
      if (__OFSUB__(v49, 1))
      {
        goto LABEL_86;
      }
    }

    else
    {
      v45 = v44[2];
      memmove(v44 + 4, v44 + 5, 8 * v45 - 8);
      v46 = v45 - 1;
      if (__OFSUB__(v45, 1))
      {
        goto LABEL_86;
      }
    }

    v44[2] = v46;
    *(v2 + v1) = v38;
    v47 = swift_endAccess();
    MEMORY[0x24C1BA170](v47);
    if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_247DD2E9C();
    }

    sub_247DD2EBC();
    if (v14 != v37)
    {
      v18 = __OFADD__(v37++, 1);
      if (v18)
      {
        goto LABEL_87;
      }

      continue;
    }

    break;
  }

  v50 = v67;
  if (v67 >> 62)
  {
    v51 = sub_247DD30BC();
    if (!v51)
    {
      goto LABEL_100;
    }

LABEL_69:
    if (v51 >= 1)
    {
      for (i = 0; i != v51; ++i)
      {
        if ((v50 & 0xC000000000000001) != 0)
        {
          v53 = MEMORY[0x24C1BA360](i, v50);
        }

        else
        {
          v53 = *(v50 + 8 * i + 32);
        }

        sub_247DA0CDC(v53);
      }

      goto LABEL_100;
    }

    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    return;
  }

  v51 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v51)
  {
    goto LABEL_69;
  }

LABEL_100:
}

void sub_247DA0CDC(uint64_t a1)
{
  v2 = v1;
  v31 = a1;
  v3 = type metadata accessor for NetworkDescriptor(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CosmoHttpConnection.Configuration(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CosmoMultiplexChannelClient.Configuration(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_247DD2ABC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v2 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_queue);
  *v15 = v16;
  (*(v13 + 104))(v15, *MEMORY[0x277D85200], v12);
  v17 = v16;
  v18 = sub_247DD2ADC();
  (*(v13 + 8))(v15, v12);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  sub_247D9D8B8(v2 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_config, v11, type metadata accessor for CosmoMultiplexChannelClient.Configuration);
  sub_247DA5238(&v11[*(v9 + 20)], v8, type metadata accessor for CosmoHttpConnection.Configuration);
  sub_247D9D8B8(v2 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_descriptor, v5, type metadata accessor for NetworkDescriptor);
  v19 = *(v2 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_parentConnection);

  v20 = sub_247D81B94(v8, v5, v19, v17);
  if (v20)
  {
    v8 = v20;
    v21 = OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_activeRequests;
    swift_beginAccess();

    MEMORY[0x24C1BA170](v22);
    if (*((*(v2 + v21) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v2 + v21) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_4:
      sub_247DD2EBC();
      swift_endAccess();
      sub_247DA1F7C(v8);

      return;
    }

LABEL_11:
    sub_247DD2E9C();
    goto LABEL_4;
  }

  if (qword_27EE732B0 != -1)
  {
    swift_once();
  }

  v23 = sub_247DD23CC();
  __swift_project_value_buffer(v23, qword_27EE73D30);

  v24 = sub_247DD23AC();
  v25 = sub_247DD2F2C();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v32 = v27;
    *v26 = 136315138;
    v28 = CosmoMultiplexChannelClient.description.getter();
    v30 = sub_247D72868(v28, v29, &v32);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_247D56000, v24, v25, "[Request] Could not create outbound request stream, %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    MEMORY[0x24C1BAF60](v27, -1, -1);
    MEMORY[0x24C1BAF60](v26, -1, -1);
  }

  v32 = 0xD000000000000021;
  v33 = 0x8000000247DD98F0;
  v34 = 0;
  sub_247DA250C(0xD000000000000021, 0x8000000247DD98F0, &v32);
  sub_247D6AD68(v32, v33, v34);
  sub_247DA049C();
}

uint64_t CosmoMultiplexChannelClient.deinit()
{
  sub_247D6A24C(*(v0 + 16), *(v0 + 24));
  sub_247D9D920(v0 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_config, type metadata accessor for CosmoMultiplexChannelClient.Configuration);

  sub_247D9D920(v0 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_descriptor, type metadata accessor for NetworkDescriptor);

  return v0;
}

uint64_t CosmoMultiplexChannelClient.__deallocating_deinit()
{
  CosmoMultiplexChannelClient.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t CosmoMultiplexChannelClient.description.getter()
{
  v1 = v0;
  v61[0] = 0x3D656D616ELL;
  v61[1] = 0xE500000000000000;
  MEMORY[0x24C1BA0A0](*(v0 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_name), *(v0 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_name + 8));
  strcpy(v61, "endpoint=");
  HIDWORD(v61[1]) = -385875968;
  v2 = NetworkDescriptor.description.getter();
  MEMORY[0x24C1BA0A0](v2);

  v56 = v61[0];
  v57 = v61[1];
  strcpy(v61, "isReady=");
  BYTE1(v61[1]) = 0;
  HIDWORD(v61[1]) = -402653184;
  if (*(v0 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_ready))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_ready))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x24C1BA0A0](v3, v4);

  v6 = v61[0];
  v5 = v61[1];
  strcpy(v61, "isTerminated=");
  HIWORD(v61[1]) = -4864;
  if (*(v0 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_terminated))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_terminated))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x24C1BA0A0](v7, v8);

  v9 = OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_requestQueue;
  swift_beginAccess();
  v58 = v5;
  v59 = v9;
  v10 = *(v0 + v9);
  v11 = v10 & 0xFFFFFFFFFFFFFF8;
  if (v10 >> 62)
  {
LABEL_53:
    v12 = sub_247DD30BC();
  }

  else
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 0;
  v14 = 0;
  while (1)
  {
    while (1)
    {
      if (v13 == v12)
      {
        goto LABEL_27;
      }

      if ((v10 & 0xC000000000000001) != 0)
      {
        break;
      }

      if ((v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      if (v13 >= *(v11 + 16))
      {
        goto LABEL_50;
      }

      v15 = *(v10 + 32 + 8 * v13++);
      v16 = *(v15 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_forceFlush);
      v17 = __OFADD__(v14, v16);
      v14 += v16;
      if (v17)
      {
LABEL_26:
        __break(1u);
LABEL_27:

        v20 = 0xE000000000000000;
        if (v14)
        {
          sub_247DD304C();

          v10 = *(v1 + v59);
          v11 = v10 & 0xFFFFFFFFFFFFFF8;
          if (v10 >> 62)
          {
            v21 = sub_247DD30BC();
          }

          else
          {
            v21 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v22 = 0;
          v23 = 0;
          while (v22 != v21)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              result = MEMORY[0x24C1BA360](v22, v10);
              v17 = __OFADD__(v22++, 1);
              if (v17)
              {
                goto LABEL_104;
              }

              v26 = *(result + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_forceFlush);
              swift_unknownObjectRelease();
              v17 = __OFADD__(v23, v26);
              v23 += v26;
              if (v17)
              {
                goto LABEL_41;
              }
            }

            else
            {
              if ((v22 & 0x8000000000000000) != 0)
              {
                goto LABEL_51;
              }

              if (v22 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_52;
              }

              v24 = *(v10 + 32 + 8 * v22++);
              v25 = *(v24 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_forceFlush);
              v17 = __OFADD__(v23, v25);
              v23 += v25;
              if (v17)
              {
LABEL_41:
                __break(1u);
                break;
              }
            }
          }

          v27 = sub_247DD321C();
          MEMORY[0x24C1BA0A0](v27);

          v20 = 0x8000000247DD9650;
          v54 = 0xD000000000000017;
        }

        else
        {
          v54 = 0;
        }

        v55 = v20;
        v28 = *(v1 + v59);
        if (v28 >> 62)
        {
          if (!sub_247DD30BC())
          {
            goto LABEL_55;
          }

LABEL_46:
          sub_247DD304C();

          if (*(v1 + v59) >> 62)
          {
            sub_247DD30BC();
          }

          v29 = sub_247DD321C();
          MEMORY[0x24C1BA0A0](v29);

          v52 = 0xD00000000000001ALL;
          v53 = 0x8000000247DD9670;
        }

        else
        {
          if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_46;
          }

LABEL_55:
          v52 = 0;
          v53 = 0xE000000000000000;
        }

        v30 = OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_activeRequests;
        swift_beginAccess();
        v60 = v30;
        v31 = *(v1 + v30);
        v32 = v31 & 0xFFFFFFFFFFFFFF8;
        if (v31 >> 62)
        {
LABEL_96:
          v33 = sub_247DD30BC();
        }

        else
        {
          v33 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v34 = 0;
        v35 = 0;
        while (v34 != v33)
        {
          if ((v31 & 0xC000000000000001) != 0)
          {
            result = MEMORY[0x24C1BA360](v34, v31);
            v17 = __OFADD__(v34++, 1);
            if (v17)
            {
              goto LABEL_103;
            }

            v38 = *(result + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_forceFlush);
            swift_unknownObjectRelease();
            v17 = __OFADD__(v35, v38);
            v35 += v38;
            if (v17)
            {
              goto LABEL_69;
            }
          }

          else
          {
            if ((v34 & 0x8000000000000000) != 0)
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

            if (v34 >= *(v32 + 16))
            {
              goto LABEL_93;
            }

            v36 = *(v31 + 32 + 8 * v34++);
            v37 = *(v36 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_forceFlush);
            v17 = __OFADD__(v35, v37);
            v35 += v37;
            if (v17)
            {
LABEL_69:
              __break(1u);
              break;
            }
          }
        }

        v39 = 0xE000000000000000;
        if (v35)
        {
          sub_247DD304C();

          v31 = *(v1 + v60);
          v32 = v31 & 0xFFFFFFFFFFFFFF8;
          if (v31 >> 62)
          {
            v40 = sub_247DD30BC();
          }

          else
          {
            v40 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v41 = 0;
          v42 = 0;
          while (v41 != v40)
          {
            if ((v31 & 0xC000000000000001) != 0)
            {
              result = MEMORY[0x24C1BA360](v41, v31);
              v17 = __OFADD__(v41++, 1);
              if (v17)
              {
                goto LABEL_105;
              }

              v45 = *(result + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_forceFlush);
              swift_unknownObjectRelease();
              v17 = __OFADD__(v42, v45);
              v42 += v45;
              if (v17)
              {
                goto LABEL_84;
              }
            }

            else
            {
              if ((v41 & 0x8000000000000000) != 0)
              {
                goto LABEL_94;
              }

              if (v41 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_95;
              }

              v43 = *(v31 + 32 + 8 * v41++);
              v44 = *(v43 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_forceFlush);
              v17 = __OFADD__(v42, v44);
              v42 += v44;
              if (v17)
              {
LABEL_84:
                __break(1u);
                break;
              }
            }
          }

          v46 = sub_247DD321C();
          MEMORY[0x24C1BA0A0](v46);

          v47 = 0xD000000000000019;
          v39 = 0x8000000247DD9690;
        }

        else
        {
          v47 = 0;
        }

        v48 = *(v1 + v60);
        if (v48 >> 62)
        {
          if (!sub_247DD30BC())
          {
            goto LABEL_98;
          }

LABEL_89:
          sub_247DD304C();

          if (*(v1 + v60) >> 62)
          {
            sub_247DD30BC();
          }

          v49 = sub_247DD321C();
          MEMORY[0x24C1BA0A0](v49);

          v50 = 0xD00000000000001CLL;
          v51 = 0x8000000247DD96B0;
        }

        else
        {
          if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_89;
          }

LABEL_98:
          v50 = 0;
          v51 = 0xE000000000000000;
        }

        sub_247DD304C();

        MEMORY[0x24C1BA0A0](32, 0xE100000000000000);
        MEMORY[0x24C1BA0A0](v56, v57);

        MEMORY[0x24C1BA0A0](v54, v55);

        MEMORY[0x24C1BA0A0](v52, v53);

        MEMORY[0x24C1BA0A0](v47, v39);

        MEMORY[0x24C1BA0A0](v50, v51);

        MEMORY[0x24C1BA0A0](32, 0xE100000000000000);
        MEMORY[0x24C1BA0A0](v6, v58);

        MEMORY[0x24C1BA0A0](32, 0xE100000000000000);
        MEMORY[0x24C1BA0A0](v61[0], v61[1]);

        return 0x3D656D616ELL;
      }
    }

    result = MEMORY[0x24C1BA360](v13, v10);
    v17 = __OFADD__(v13++, 1);
    if (v17)
    {
      break;
    }

    v19 = *(result + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_forceFlush);
    swift_unknownObjectRelease();
    v17 = __OFADD__(v14, v19);
    v14 += v19;
    if (v17)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
  return result;
}

unint64_t sub_247DA1AFC()
{
  result = qword_27EE73D78;
  if (!qword_27EE73D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73D78);
  }

  return result;
}

uint64_t sub_247DA1BB4(uint64_t a1)
{
  result = type metadata accessor for CosmoMultiplexChannelClient.Configuration(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NetworkDescriptor(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_247DA1DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for CosmoHttpConnection.Configuration(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_247DA1E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for CosmoHttpConnection.Configuration(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_247DA1F00(uint64_t a1)
{
  result = type metadata accessor for CosmoHttpConnection.Configuration(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_247DA1F7C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_247DD2A0C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_247DD2A2C();
  v8 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v2 + 32);
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = a1;
  aBlock[4] = sub_247DA4D44;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = &block_descriptor_59;
  v12 = _Block_copy(aBlock);

  sub_247DD2A1C();
  v16 = MEMORY[0x277D84F90];
  sub_247DA4BD4(&unk_27EE73AF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D869B0(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v10, v7, v12);
  _Block_release(v12);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v15);
}

uint64_t sub_247DA2244(uint64_t a1, void *a2)
{
  *(a1 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_connection) = a2;

  v3 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v4 = a2[2];
  v5 = a2[3];
  a2[2] = sub_247DA4D4C;
  a2[3] = v3;

  sub_247D6A24C(v4, v5);

  v6 = swift_allocObject();
  swift_weakInit();
  v7 = a2[8];
  v8 = a2[9];
  a2[8] = sub_247DA4D7C;
  a2[9] = v6;

  sub_247D6A24C(v7, v8);

  v9 = swift_allocObject();
  swift_weakInit();
  v10 = a2[10];
  v11 = a2[11];
  a2[10] = sub_247DA4D84;
  a2[11] = v9;

  sub_247D6A24C(v10, v11);

  return sub_247D765E0();
}

uint64_t sub_247DA23BC(char *a1, uint64_t a2, void (*a3)(char *))
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = v4;
    a3(&v6);
  }

  return result;
}

uint64_t sub_247DA2430(unsigned __int16 *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_247DA34D4(a1);
  }

  return result;
}

uint64_t sub_247DA2490(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6[0] = v2;
    v6[1] = v3;
    v7 = v4;
    sub_247DA3C8C(v6);
  }

  return result;
}

uint64_t sub_247DA250C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_247DD2A0C();
  v21 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_247DD2A2C();
  v11 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a3;
  v14 = *(a3 + 8);
  v19 = *(v4 + 32);
  LOBYTE(a3) = *(a3 + 16);
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  *(v16 + 24) = a1;
  *(v16 + 32) = a2;
  *(v16 + 40) = v15;
  *(v16 + 48) = v14;
  *(v16 + 56) = a3;
  aBlock[4] = sub_247DA4CA4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = &block_descriptor_53;
  v17 = _Block_copy(aBlock);

  sub_247D6B69C(v15, v14, a3);
  sub_247DD2A1C();
  v22 = MEMORY[0x277D84F90];
  sub_247DA4BD4(&unk_27EE73AF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D869B0(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v13, v10, v17);
  _Block_release(v17);
  (*(v21 + 8))(v10, v8);
  (*(v11 + 8))(v13, v20);
}

uint64_t sub_247DA2804(uint64_t a1, uint64_t a2, void (*a3)(void, double), uint64_t a4, uint64_t a5, char a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73DD8, &unk_247DD60F0);
  result = MEMORY[0x28223BE20](v12);
  v15 = &v71 - v14;
  if (*(a1 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_connection))
  {
    v16 = qword_27EE732B0;

    if (v16 != -1)
    {
      swift_once();
    }

    v75 = a2;
    v17 = sub_247DD23CC();
    __swift_project_value_buffer(v17, qword_27EE73D30);

    sub_247D6B69C(a4, a5, a6);

    v18 = sub_247DD23AC();
    v19 = sub_247DD2F2C();

    sub_247D6AD68(a4, a5, a6);

    v20 = os_log_type_enabled(v18, v19);
    v76 = a3;
    v21 = a6;
    if (v20)
    {
      v22 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v80 = v74;
      *v22 = 136315906;

      v73 = v19;
      v24 = sub_247D76840(v23);
      v26 = v25;

      v27 = sub_247D72868(v24, v26, &v80);

      *(v22 + 4) = v27;
      *(v22 + 12) = 2080;
      v28 = v75;
      *(v22 + 14) = sub_247D72868(v75, v76, &v80);
      *(v22 + 22) = 2080;
      v77 = a4;
      v78 = a5;
      v79 = v21;
      sub_247D6B69C(a4, a5, v21);
      v29 = sub_247DD2CFC();
      v31 = sub_247D72868(v29, v30, &v80);

      *(v22 + 24) = v31;
      *(v22 + 32) = 2080;
      v32 = sub_247DA4208();
      v34 = sub_247D72868(v32, v33, &v80);

      *(v22 + 34) = v34;
      _os_log_impl(&dword_247D56000, v18, v73, "[Stop] Stopping channel %s, reason='%s' error=%s, %s", v22, 0x2Au);
      v35 = v74;
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v35, -1, -1);
      MEMORY[0x24C1BAF60](v22, -1, -1);
    }

    else
    {

      v28 = v75;
    }

    v64 = a1 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_stopCalledWith;
    v65 = *(a1 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_stopCalledWith);
    v66 = *(v64 + 8);
    v67 = *(v64 + 16);
    v68 = *(v64 + 24);
    v69 = v76;
    *v64 = v28;
    *(v64 + 8) = v69;
    *(v64 + 16) = a4;
    *(v64 + 24) = a5;
    v70 = *(v64 + 32);
    *(v64 + 32) = v21;

    sub_247D6B69C(a4, a5, v21);
    sub_247DA4CA8(v65, v66, v67, v68, v70);
    sub_247D781D4();
  }

  else
  {
    v76 = *(a1 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion);
    if (v76)
    {
      v36 = *(a1 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion + 8);
      v37 = qword_27EE732B0;
      v74 = (a1 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion);
      v75 = v36;

      if (v37 != -1)
      {
        swift_once();
      }

      v38 = sub_247DD23CC();
      __swift_project_value_buffer(v38, qword_27EE73D30);

      sub_247D6B69C(a4, a5, a6);

      v39 = sub_247DD23AC();
      v40 = sub_247DD2F2C();

      sub_247D6AD68(a4, a5, a6);

      v73 = v40;
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v72 = v39;
        v42 = a2;
        v43 = v41;
        v44 = swift_slowAlloc();
        v80 = v44;
        *v43 = 136315650;
        *(v43 + 4) = sub_247D72868(v42, a3, &v80);
        *(v43 + 12) = 2080;
        v77 = a4;
        v78 = a5;
        v79 = a6;
        sub_247D6B69C(a4, a5, a6);
        v45 = sub_247DD2CFC();
        v47 = a4;
        v48 = a5;
        v49 = a6;
        v50 = sub_247D72868(v45, v46, &v80);

        *(v43 + 14) = v50;
        *(v43 + 22) = 2080;
        v51 = sub_247DA4208();
        v53 = sub_247D72868(v51, v52, &v80);

        *(v43 + 24) = v53;
        a6 = v49;
        a5 = v48;
        a4 = v47;
        v39 = v72;
        _os_log_impl(&dword_247D56000, v72, v73, "[Stop] Failing, no channel stream found, reason='%s' error=%s %s", v43, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v44, -1, -1);
        MEMORY[0x24C1BAF60](v43, -1, -1);
      }

      *v15 = a4;
      *(v15 + 1) = a5;
      v15[16] = a6;
      swift_storeEnumTagMultiPayload();
      v54 = sub_247D6B69C(a4, a5, a6);
      v56 = v75;
      v55 = v76;
      v76(v15, v54);
      sub_247D6BAD4(v15, &unk_27EE73DD8, &unk_247DD60F0);
      v57 = v74;
      v58 = *v74;
      v59 = v74[1];
      *v74 = 0;
      v57[1] = 0;
      sub_247D6A24C(v58, v59);
      v60 = *(a1 + 16);
      if (v60)
      {
        v61 = *(a1 + 24);

        v60(a1);
        sub_247D6A24C(v55, v56);
        v62 = v60;
        v63 = v61;
      }

      else
      {
        v62 = v55;
        v63 = v56;
      }

      return sub_247D6A24C(v62, v63);
    }
  }

  return result;
}

uint64_t sub_247DA2E3C(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73DD8, &unk_247DD60F0);
  MEMORY[0x28223BE20](v4);
  v6 = &v67 - v5;
  v7 = sub_247DD2ABC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *a1;
  v12 = v2[4];
  *v10 = v12;
  (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
  v13 = v12;
  LOBYTE(v12) = sub_247DD2ADC();
  result = (*(v8 + 8))(v10, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_35:
    swift_once();
    goto LABEL_20;
  }

  v15 = *(v2 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_connection);
  if (!v15)
  {
    return result;
  }

  if (!v11)
  {
    v47 = qword_27EE732B0;

    if (v47 != -1)
    {
      swift_once();
    }

    v48 = sub_247DD23CC();
    __swift_project_value_buffer(v48, qword_27EE73D30);

    v49 = sub_247DD23AC();
    v50 = sub_247DD2F2C();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v79[0] = v52;
      *v51 = 136315138;
      v53 = sub_247DA4208();
      v55 = sub_247D72868(v53, v54, v79);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_247D56000, v49, v50, "Channel stream ready, sending request, %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      MEMORY[0x24C1BAF60](v52, -1, -1);
      MEMORY[0x24C1BAF60](v51, -1, -1);
    }

    v56 = (v2 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_requestMessage);
    v57 = *(v2 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_requestMessage + 24);
    v58 = v56[4];
    v59 = __swift_project_boxed_opaque_existential_1(v56, v57);
    sub_247D81480(v59, 0, 0, v15, v57, *(v58 + 8));
  }

  v78 = *(v2 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion);
  if (!v78)
  {

    v60 = v2[2];
    if (!v60)
    {
    }

    goto LABEL_31;
  }

  v76 = v4;
  v77 = v15;
  v75 = (v2 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion);
  v16 = *(v2 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion + 8);
  v17 = *(v2 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_stopCalledWith);
  v18 = *(v2 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_stopCalledWith + 8);
  v19 = *(v2 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_stopCalledWith + 16);
  v20 = *(v2 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_stopCalledWith + 24);
  v21 = 3;
  if (v18)
  {
    v21 = *(v2 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_stopCalledWith + 16);
  }

  v22 = *(v2 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_stopCalledWith + 32);
  if (v18)
  {
    v23 = *(v2 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_stopCalledWith + 24);
  }

  else
  {
    v23 = 0;
  }

  v72 = v23;
  v73 = v21;
  if (v18)
  {
    v24 = v22;
  }

  else
  {
    v24 = 2;
  }

  v71 = v24;
  if (v18)
  {
    v25 = v17;
  }

  else
  {
    v25 = 0xD00000000000002ELL;
  }

  v70 = v25;
  if (v18)
  {
    v7 = v18;
  }

  else
  {
    v7 = 0x8000000247DD98A0;
  }

  v74 = v16;
  sub_247D6ACFC(v78);
  sub_247DA4C44(v17, v18, v19, v20, v22);
  if (qword_27EE732B0 != -1)
  {
    goto LABEL_35;
  }

LABEL_20:
  v26 = sub_247DD23CC();
  __swift_project_value_buffer(v26, qword_27EE73D30);

  v27 = v7;

  v29 = v72;
  v28 = v73;
  v30 = v71;
  sub_247D6B69C(v73, v72, v71);
  v31 = sub_247DD23AC();
  v32 = sub_247DD2F2C();

  sub_247D6AD68(v28, v29, v30);

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v81 = v69;
    *v33 = 136316162;
    *(v33 + 4) = sub_247D72868(0xD00000000000001FLL, 0x8000000247DD98D0, &v81);
    *(v33 + 12) = 2080;
    LOBYTE(v79[0]) = v11;
    v34 = sub_247DD2CFC();
    v68 = v31;
    v36 = sub_247D72868(v34, v35, &v81);

    *(v33 + 14) = v36;
    *(v33 + 22) = 2080;
    v37 = sub_247D72868(v70, v27, &v81);

    *(v33 + 24) = v37;
    *(v33 + 32) = 2080;
    v79[0] = v28;
    v79[1] = v29;
    v80 = v30;
    sub_247D6B69C(v28, v29, v30);
    v38 = sub_247DD2CFC();
    v40 = sub_247D72868(v38, v39, &v81);

    *(v33 + 34) = v40;
    *(v33 + 42) = 2080;
    v41 = sub_247DA4208();
    v43 = sub_247D72868(v41, v42, &v81);

    *(v33 + 44) = v43;
    v44 = v32;
    v45 = v68;
    _os_log_impl(&dword_247D56000, v68, v44, "%s channel stream ended, state=%s reason='%s' error=%s %s", v33, 0x34u);
    v46 = v69;
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v46, -1, -1);
    MEMORY[0x24C1BAF60](v33, -1, -1);
  }

  else
  {
  }

  v61 = v74;
  *v6 = v28;
  *(v6 + 1) = v29;
  v6[16] = v30;
  swift_storeEnumTagMultiPayload();
  v62 = v78;
  v78(v6);
  sub_247D6A24C(v62, v61);
  sub_247D6BAD4(v6, &unk_27EE73DD8, &unk_247DD60F0);
  v63 = v75;
  v64 = *v75;
  v65 = v75[1];
  *v75 = 0;
  v63[1] = 0;
  sub_247D6A24C(v64, v65);
  v60 = v2[2];
  if (!v60)
  {
  }

LABEL_31:
  v66 = v2[3];

  v60(v2);
  sub_247D6A24C(v60, v66);
}

void sub_247DA34D4(unsigned __int16 *a1)
{
  v2 = v1;
  v49 = a1;
  v3 = type metadata accessor for RawHTTPResponse(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73500, &unk_247DD4310);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v45 - v7;
  v9 = sub_247DD20DC();
  v46 = *(v9 - 8);
  v47 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73DD8, &unk_247DD60F0);
  MEMORY[0x28223BE20](v48);
  v13 = &v45 - v12;
  v14 = sub_247DD2ABC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v2 + 32);
  *v17 = v18;
  (*(v15 + 104))(v17, *MEMORY[0x277D85200], v14);
  v19 = v18;
  LOBYTE(v18) = sub_247DD2ADC();
  (*(v15 + 8))(v17, v14);
  if ((v18 & 1) == 0)
  {
    __break(1u);
LABEL_27:
    swift_once();
    goto LABEL_8;
  }

  v20 = (v2 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion);
  v21 = *(v2 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion);
  if (v21)
  {
    v22 = v20[1];
    v23 = *v49;
    if (v23 > 0x193)
    {
      if (v23 == 404)
      {
        v24 = xmmword_247DD3F10;
        goto LABEL_20;
      }

      if (v23 == 500)
      {
        v24 = xmmword_247DD5EA0;
        goto LABEL_20;
      }
    }

    else
    {
      if (v23 == 200)
      {
        v39 = *(v49 + 2);
        if (v39 >> 60 != 15)
        {
          v44 = *(v49 + 1);
          *v13 = v44;
          *(v13 + 1) = v39;
          type metadata accessor for CosmoHttpResponseContent(0);
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          sub_247D6C0B0(v44, v39);
          sub_247D6C0B0(v44, v39);
          sub_247D6ACFC(v21);
          v21(v13);
          sub_247D6A24C(v21, v22);
          sub_247D6C0AC(v44, v39);
          goto LABEL_22;
        }

        sub_247D6BA6C(v49 + *(v3 + 24), v8, &unk_27EE73500, &unk_247DD4310);
        v41 = v46;
        v40 = v47;
        if ((*(v46 + 48))(v8, 1, v47) != 1)
        {
          (*(v41 + 32))(v11, v8, v40);
          (*(v41 + 16))(v13, v11, v40);
          type metadata accessor for CosmoHttpResponseContent(0);
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();

          v21(v13);
          sub_247D6A24C(v21, v22);
          sub_247D6BAD4(v13, &unk_27EE73DD8, &unk_247DD60F0);
          (*(v41 + 8))(v11, v40);
          goto LABEL_23;
        }

        sub_247D6BAD4(v8, &unk_27EE73500, &unk_247DD4310);
        *v13 = 0xD000000000000026;
        *(v13 + 1) = 0x8000000247DD9870;
        goto LABEL_15;
      }

      if (v23 == 400)
      {
        v24 = xmmword_247DD3EF0;
LABEL_20:
        *v13 = v24;
        v13[16] = 2;
        swift_storeEnumTagMultiPayload();

        goto LABEL_21;
      }
    }

    v51 = 0;
    v52 = 0xE000000000000000;

    sub_247DD304C();

    v51 = 0xD000000000000012;
    v52 = 0x8000000247DD9850;
    v50 = v23;
    v37 = sub_247DD321C();
    MEMORY[0x24C1BA0A0](v37);

    v38 = v52;
    *v13 = v51;
    *(v13 + 1) = v38;
LABEL_15:
    v13[16] = 0;
    swift_storeEnumTagMultiPayload();
LABEL_21:
    v21(v13);
    sub_247D6A24C(v21, v22);
LABEL_22:
    sub_247D6BAD4(v13, &unk_27EE73DD8, &unk_247DD60F0);
LABEL_23:
    v42 = *v20;
    v43 = v20[1];
    *v20 = 0;
    v20[1] = 0;
    sub_247D6A24C(v42, v43);
    return;
  }

  if (qword_27EE732B0 != -1)
  {
    goto LABEL_27;
  }

LABEL_8:
  v25 = sub_247DD23CC();
  __swift_project_value_buffer(v25, qword_27EE73D30);
  sub_247D9D8B8(v49, v5, type metadata accessor for RawHTTPResponse);

  v26 = sub_247DD23AC();
  v27 = sub_247DD2F0C();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v51 = v29;
    *v28 = 136315650;
    *(v28 + 4) = sub_247D72868(0xD000000000000016, 0x8000000247DD9830, &v51);
    *(v28 + 12) = 2080;
    v30 = sub_247D74A3C();
    v32 = v31;
    sub_247D9D920(v5, type metadata accessor for RawHTTPResponse);
    v33 = sub_247D72868(v30, v32, &v51);

    *(v28 + 14) = v33;
    *(v28 + 22) = 2080;
    v34 = sub_247DA4208();
    v36 = sub_247D72868(v34, v35, &v51);

    *(v28 + 24) = v36;
    _os_log_impl(&dword_247D56000, v26, v27, "%s ignoring response, no completion handler, response=%s %s", v28, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v29, -1, -1);
    MEMORY[0x24C1BAF60](v28, -1, -1);
  }

  else
  {

    sub_247D9D920(v5, type metadata accessor for RawHTTPResponse);
  }
}

void sub_247DA3C8C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73DD8, &unk_247DD60F0);
  MEMORY[0x28223BE20](v4);
  v6 = v46 - v5;
  v7 = sub_247DD2ABC();
  v8 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v10 = (v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *a1;
  v11 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(v2 + 32);
  *v10 = v14;
  (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
  v15 = v14;
  LOBYTE(v14) = sub_247DD2ADC();
  v17 = *(v8 + 8);
  v16 = (v8 + 8);
  v17(v10, v7);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  LOBYTE(v10) = v13;
  v7 = (v2 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion);
  v16 = *(v2 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion);
  if (v16)
  {
    v18 = qword_27EE732B0;
    v47 = v7[1];
    v48 = v13;

    if (v18 == -1)
    {
LABEL_4:
      v19 = sub_247DD23CC();
      __swift_project_value_buffer(v19, qword_27EE73D30);
      sub_247DA4C1C(v12, v11, v10);

      v20 = sub_247DD23AC();
      v21 = sub_247DD2F0C();
      sub_247D82AF0(v12, v11, v10);

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v46[1] = v4;
        v23 = v22;
        v46[0] = swift_slowAlloc();
        v52 = v46[0];
        *v23 = 136315394;
        v49 = v12;
        v50 = v11;
        v51 = v10;
        sub_247DA4C1C(v12, v11, v10);
        v24 = sub_247DD2CFC();
        v25 = v21;
        v27 = sub_247D72868(v24, v26, &v52);

        *(v23 + 4) = v27;
        *(v23 + 12) = 2080;
        v28 = sub_247DA4208();
        v30 = sub_247D72868(v28, v29, &v52);

        *(v23 + 14) = v30;
        _os_log_impl(&dword_247D56000, v20, v25, "Encountered error while receiving HTTP response, error=%s %s", v23, 0x16u);
        v31 = v46[0];
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v31, -1, -1);
        MEMORY[0x24C1BAF60](v23, -1, -1);
      }

      *v6 = qword_247DD6108[v48];
      *(v6 + 1) = 0;
      v6[16] = 2;
      swift_storeEnumTagMultiPayload();
      v32 = v47;
      v16(v6);
      sub_247D6A24C(v16, v32);
      sub_247D6BAD4(v6, &unk_27EE73DD8, &unk_247DD60F0);
      v33 = *v7;
      v34 = v7[1];
      *v7 = 0;
      v7[1] = 0;
      sub_247D6A24C(v33, v34);
      return;
    }

LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  if (qword_27EE732B0 != -1)
  {
    swift_once();
  }

  v35 = sub_247DD23CC();
  __swift_project_value_buffer(v35, qword_27EE73D30);
  sub_247DA4C1C(v12, v11, v13);

  v36 = sub_247DD23AC();
  v37 = sub_247DD2F0C();
  sub_247D82AF0(v12, v11, v13);

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v52 = v39;
    *v38 = 136315650;
    *(v38 + 4) = sub_247D72868(0xD00000000000001DLL, 0x8000000247DD9810, &v52);
    *(v38 + 12) = 2080;
    v49 = v12;
    v50 = v11;
    v51 = v13;
    sub_247DA4C1C(v12, v11, v13);
    v40 = sub_247DD2CFC();
    v42 = sub_247D72868(v40, v41, &v52);

    *(v38 + 14) = v42;
    *(v38 + 22) = 2080;
    v43 = sub_247DA4208();
    v45 = sub_247D72868(v43, v44, &v52);

    *(v38 + 24) = v45;
    _os_log_impl(&dword_247D56000, v36, v37, "%s ignoring error, no completion handler, error=%s %s", v38, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v39, -1, -1);
    MEMORY[0x24C1BAF60](v38, -1, -1);
  }
}

uint64_t sub_247DA4208()
{
  v1 = sub_247DA43CC(v0);
  v3 = v2;
  sub_247DD304C();

  sub_247DD225C();
  sub_247DA4BD4(&unk_27EE73510, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v4 = sub_247DD321C();
  MEMORY[0x24C1BA0A0](v4);

  MEMORY[0x24C1BA0A0](v1, v3);

  MEMORY[0x24C1BA0A0](0x662D6563726F6620, 0xED00003D6873756CLL);
  if (*(v0 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_forceFlush))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_forceFlush))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x24C1BA0A0](v5, v6);

  MEMORY[0x24C1BA0A0](0x74656C706D6F6320, 0xEB000000003D6465);
  v7 = *(v0 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion);
  if (v7)
  {
    v8 = 0x65736C6166;
  }

  else
  {
    v8 = 1702195828;
  }

  if (v7)
  {
    v9 = 0xE500000000000000;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  MEMORY[0x24C1BA0A0](v8, v9);

  return 4023401;
}

uint64_t sub_247DA43CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73500, &unk_247DD4310);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v32 - v3;
  v5 = sub_247DD20DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_247DD304C();

  v35 = 0x3D6874617020;
  v36 = 0xE600000000000000;
  v9 = (a1 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_requestMessage);
  v10 = *(a1 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_requestMessage + 24);
  v11 = *(a1 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_requestMessage + 32);
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v12 = _s5Cosmo0A11HttpRequestPAAE12instancePathSSvg_0(v10, v11);
  MEMORY[0x24C1BA0A0](v12);

  MEMORY[0x24C1BA0A0](0x3D646F6874656D20, 0xE800000000000000);
  v13 = v9[3];
  v14 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v13);
  v15 = _s5Cosmo0A11HttpRequestPAAE14instanceMethodSSvg_0(v13, v14);
  MEMORY[0x24C1BA0A0](v15);

  v17 = v9[3];
  v16 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v17);
  v18 = (*(*(v16 + 8) + 16))(v17);
  if (v19 >> 60 == 15)
  {
    v21 = v9[3];
    v20 = v9[4];
    __swift_project_boxed_opaque_existential_1(v9, v21);
    (*(*(v20 + 8) + 24))(v21);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_247D6BAD4(v4, &unk_27EE73500, &unk_247DD4310);
    }

    else
    {
      (*(v6 + 32))(v8, v4, v5);
      v33 = 0x3D656C696620;
      v34 = 0xE600000000000000;
      sub_247DA4BD4(&qword_27EE735C0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v27 = sub_247DD321C();
      MEMORY[0x24C1BA0A0](v27);

      MEMORY[0x24C1BA0A0](v33, v34);

      (*(v6 + 8))(v8, v5);
    }

    return v35;
  }

  v22 = v18;
  v23 = v19;
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_247DD304C();

  v33 = 0xD000000000000016;
  v34 = 0x8000000247DD97F0;
  v25 = v23 >> 62;
  if ((v23 >> 62) > 1)
  {
    v26 = 0;
    if (v25 != 2)
    {
      goto LABEL_14;
    }

    v29 = *(v22 + 16);
    v28 = *(v22 + 24);
    v30 = __OFSUB__(v28, v29);
    v26 = v28 - v29;
    if (!v30)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  else if (!v25)
  {
    v26 = BYTE6(v23);
LABEL_14:
    v32[1] = v26;
    v31 = sub_247DD321C();
    MEMORY[0x24C1BA0A0](v31);

    MEMORY[0x24C1BA0A0](v33, v34);

    sub_247D6C0AC(v22, v23);
    return v35;
  }

  LODWORD(v26) = HIDWORD(v22) - v22;
  if (!__OFSUB__(HIDWORD(v22), v22))
  {
    v26 = v26;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_247DA47E4()
{
  sub_247D6A24C(*(v0 + 16), *(v0 + 24));

  v1 = OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_id;
  v2 = sub_247DD225C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_requestMessage));

  sub_247D6A24C(*(v0 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion), *(v0 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion + 8));
  sub_247DA4CA8(*(v0 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_stopCalledWith), *(v0 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_stopCalledWith + 8), *(v0 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_stopCalledWith + 16), *(v0 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_stopCalledWith + 24), *(v0 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_stopCalledWith + 32));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_247DA4908(uint64_t a1)
{
  result = sub_247DD225C();
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

uint64_t sub_247DA4A18(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_247DD30BC();
LABEL_9:
  result = sub_247DD307C();
  *v2 = result;
  return result;
}

void *sub_247DA4AB8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a7;
  v22 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a1, a7);
  type metadata accessor for PendingRequest(0);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  sub_247DD224C();
  *(v15 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_connection) = 0;
  v16 = (v15 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion);
  *v16 = 0;
  v16[1] = 0;
  v17 = v15 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_stopCalledWith;
  v17[32] = 0;
  *v17 = 0u;
  *(v17 + 1) = 0u;
  sub_247D6B5A8(&v20, v15 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_requestMessage);
  *(v15 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_forceFlush) = a2;
  v15[4] = a3;
  v18 = (v15 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion);
  *v18 = a4;
  v18[1] = a5;
  return v15;
}

uint64_t sub_247DA4BD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_247DA4C1C(void *a1, id a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
    v3 = a1;
  }

  else if (!a3)
  {
  }
}

double sub_247DA4C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a2)
  {

    return sub_247D6B69C(a3, a4, a5);
  }

  return result;
}

void sub_247DA4CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a2)
  {

    sub_247D6AD68(a3, a4, a5);
  }
}

uint64_t sub_247DA4D04()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_247DA4DA4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_247DA4E7C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_247D98724(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_247DA4DA4(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_247DA4F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = a4;
  v5 = a3;
  v8 = a2;
  v13 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v10 = v6 + 4;
  v7 = &v6[a1 + 4];
  a5(0);
  result = swift_arrayDestroy();
  v15 = __OFSUB__(v5, v12);
  v12 = v5 - v12;
  if (v15)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v12)
  {
    v11 = v13 >> 62;
    if (!(v13 >> 62))
    {
      result = v6[2];
      v16 = result - v8;
      if (!__OFSUB__(result, v8))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_247DD30BC();
    v16 = result - v8;
    if (!__OFSUB__(result, v8))
    {
LABEL_6:
      v17 = &v7[v5];
      v18 = &v10[v8];
      if (v17 != v18 || v17 >= &v18[8 * v16])
      {
        memmove(v17, v18, 8 * v16);
      }

      if (v11)
      {
        result = sub_247DD30BC();
      }

      else
      {
        result = v6[2];
      }

      if (!__OFADD__(result, v12))
      {
        v6[2] = result + v12;
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
  if (v5 > 0)
  {
    *v7 = v9;

    if (v5 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_247DA5060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a4;
    v7 = a3;
    v8 = a2;
    v9 = a1;
    v10 = *v6;
    v11 = *v6 >> 62;
    if (!v11)
    {
      result = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_247DD30BC();
  if (result < v8)
  {
    goto LABEL_13;
  }

LABEL_4:
  v13 = v8 - v9;
  if (__OFSUB__(v8, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = 1 - v13;
  if (__OFSUB__(1, v13))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v11)
  {
    v15 = sub_247DD30BC();
  }

  else
  {
    v15 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = __OFADD__(v15, v14);
  result = v15 + v14;
  if (!v16)
  {
    sub_247DA4A18(result, 1);
    return sub_247DA4F3C(v9, v8, 1, v7, v5);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t objectdestroy_49Tm()
{

  sub_247D6AD68(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_247DA51A8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_247DA51E0()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_247DA5238(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_247DA530C(__int16 a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_247DD2A0C();
  v23 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_247DD2A2C();
  v15 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v6 + 48);
  v18 = swift_allocObject();
  *(v18 + 16) = v6;
  *(v18 + 24) = a4;
  *(v18 + 32) = a5;
  *(v18 + 40) = a1;
  *(v18 + 48) = a2;
  *(v18 + 56) = a3;
  aBlock[4] = sub_247DBAEE0;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = &block_descriptor_172;
  v19 = _Block_copy(aBlock);

  sub_247D6A2E8(a2, a3);
  sub_247DD2A1C();
  v24 = MEMORY[0x277D84F90];
  sub_247DBAE20(&unk_27EE73AF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D6AE30(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0, MEMORY[0x277D83970]);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v17, v14, v19);
  _Block_release(v19);
  (*(v23 + 8))(v14, v12);
  (*(v15 + 8))(v17, v22);
}

uint64_t sub_247DA5614(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_247DD2A0C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_247DD2A2C();
  v14 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v5 + 48);
  v17 = swift_allocObject();
  v17[2] = v5;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a1;
  v17[6] = a2;
  aBlock[4] = sub_247DBB058;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = &block_descriptor_185;
  v18 = _Block_copy(aBlock);

  sub_247D6A2E8(a1, a2);
  sub_247DD2A1C();
  v22 = MEMORY[0x277D84F90];
  sub_247DBAE20(&unk_27EE73AF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D6AE30(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0, MEMORY[0x277D83970]);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v16, v13, v18);
  _Block_release(v18);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v21);
}

uint64_t sub_247DA5910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_247DD2A0C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_247DD2A2C();
  v14 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v5 + 48);
  v17 = swift_allocObject();
  v17[2] = v5;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a1;
  v17[6] = a2;
  aBlock[4] = sub_247DBB1E8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = &block_descriptor_196;
  v18 = _Block_copy(aBlock);

  sub_247DD2A1C();
  v22 = MEMORY[0x277D84F90];
  sub_247DBAE20(&unk_27EE73AF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D6AE30(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0, MEMORY[0x277D83970]);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v16, v13, v18);
  _Block_release(v18);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v21);
}

uint64_t sub_247DA5C08(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6)
{
  v31 = a4;
  v32 = a5;
  v33 = a6;
  if (*(a1 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_terminated) == 1)
  {
    v29 = xmmword_247DD52A0;
    LOWORD(v30) = 258;
    a2(&v29);
    return sub_247D868B0(v29, *(&v29 + 1), v30, SBYTE1(v30));
  }

  else
  {
    sub_247DD1F8C();
    swift_allocObject();
    sub_247DD1F7C();
    sub_247DBAF04();
    v9 = sub_247DD1F6C();
    v11 = v10;

    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = a2;
    v13[4] = a3;
    v14 = OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_requestQueue;
    swift_beginAccess();
    v15 = *(a1 + v14);

    sub_247D6A2E8(v9, v11);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v14) = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_247D98724(0, *(v15 + 2) + 1, 1, v15);
      *(a1 + v14) = v15;
    }

    v18 = *(v15 + 2);
    v17 = *(v15 + 3);
    if (v18 >= v17 >> 1)
    {
      v15 = sub_247D98724((v17 > 1), v18 + 1, 1, v15);
    }

    *(v15 + 2) = v18 + 1;
    v19 = &v15[40 * v18];
    *(v19 + 8) = 1;
    *(v19 + 5) = v9;
    *(v19 + 6) = v11;
    *(v19 + 7) = sub_247DBAF58;
    *(v19 + 8) = v13;
    *(a1 + v14) = v15;
    swift_endAccess();
    if (*(a1 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_isReady))
    {
      sub_247D8EB14(v9, v11, 1);
    }

    else
    {
      if (qword_27EE732A0 != -1)
      {
        swift_once();
      }

      v21 = sub_247DD23CC();
      __swift_project_value_buffer(v21, qword_27EE739E0);

      v22 = sub_247DD23AC();
      v23 = sub_247DD2F2C();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *&v29 = v25;
        *v24 = 136315138;
        v26 = sub_247D86568();
        v28 = sub_247D72868(v26, v27, &v29);

        *(v24 + 4) = v28;
        _os_log_impl(&dword_247D56000, v22, v23, "[Request] Queueing, %s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v25);
        MEMORY[0x24C1BAF60](v25, -1, -1);
        MEMORY[0x24C1BAF60](v24, -1, -1);
      }
    }

    sub_247D6A1F8(v9, v11);
  }
}

uint64_t sub_247DA61C0(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v31 = a5;
  if (*(a1 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_terminated) == 1)
  {
    v28 = xmmword_247DD52A0;
    v29 = 258;
    a2(&v28);
    return sub_247D868B0(v28, *(&v28 + 1), v29, SHIBYTE(v29));
  }

  else
  {
    sub_247DD1F8C();
    swift_allocObject();
    sub_247DD1F7C();
    sub_247DBB070();
    v8 = sub_247DD1F6C();
    v10 = v9;

    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = a2;
    v12[4] = a3;
    v13 = OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_requestQueue;
    swift_beginAccess();
    v14 = *(a1 + v13);

    sub_247D6A2E8(v8, v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v13) = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = sub_247D98724(0, *(v14 + 2) + 1, 1, v14);
      *(a1 + v13) = v14;
    }

    v17 = *(v14 + 2);
    v16 = *(v14 + 3);
    if (v17 >= v16 >> 1)
    {
      v14 = sub_247D98724((v16 > 1), v17 + 1, 1, v14);
    }

    *(v14 + 2) = v17 + 1;
    v18 = &v14[40 * v17];
    *(v18 + 8) = 3;
    *(v18 + 5) = v8;
    *(v18 + 6) = v10;
    *(v18 + 7) = sub_247DBB0C4;
    *(v18 + 8) = v12;
    *(a1 + v13) = v14;
    swift_endAccess();
    if (*(a1 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_isReady))
    {
      sub_247D8EB14(v8, v10, 3);
    }

    else
    {
      if (qword_27EE732A0 != -1)
      {
        swift_once();
      }

      v20 = sub_247DD23CC();
      __swift_project_value_buffer(v20, qword_27EE739E0);

      v21 = sub_247DD23AC();
      v22 = sub_247DD2F2C();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *&v28 = v24;
        *v23 = 136315138;
        v25 = sub_247D86568();
        v27 = sub_247D72868(v25, v26, &v28);

        *(v23 + 4) = v27;
        _os_log_impl(&dword_247D56000, v21, v22, "[Request] Queueing, %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v24);
        MEMORY[0x24C1BAF60](v24, -1, -1);
        MEMORY[0x24C1BAF60](v23, -1, -1);
      }
    }

    sub_247D6A1F8(v8, v10);
  }
}

uint64_t sub_247DA6758(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a4;
  v32 = a5;
  if (*(a1 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_terminated) == 1)
  {
    v28 = xmmword_247DD52A0;
    v29 = xmmword_247DD52A0;
    v30 = 1;
    a2(&v28);
    return sub_247DBB26C(v28, *(&v28 + 1), v29, *(&v29 + 1), v30);
  }

  else
  {
    sub_247DD1F8C();
    swift_allocObject();
    sub_247DD1F7C();
    sub_247DBB218();
    v8 = sub_247DD1F6C();
    v10 = v9;

    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = a2;
    v12[4] = a3;
    v13 = OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_requestQueue;
    swift_beginAccess();
    v14 = *(a1 + v13);

    sub_247D6A2E8(v8, v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v13) = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = sub_247D98724(0, *(v14 + 2) + 1, 1, v14);
      *(a1 + v13) = v14;
    }

    v17 = *(v14 + 2);
    v16 = *(v14 + 3);
    if (v17 >= v16 >> 1)
    {
      v14 = sub_247D98724((v16 > 1), v17 + 1, 1, v14);
    }

    *(v14 + 2) = v17 + 1;
    v18 = &v14[40 * v17];
    *(v18 + 8) = 5;
    *(v18 + 5) = v8;
    *(v18 + 6) = v10;
    *(v18 + 7) = sub_247DBB2BC;
    *(v18 + 8) = v12;
    *(a1 + v13) = v14;
    swift_endAccess();
    if (*(a1 + OBJC_IVAR____TtC5Cosmo24CosmoSerialChannelClient_isReady))
    {
      sub_247D8EB14(v8, v10, 5);
    }

    else
    {
      if (qword_27EE732A0 != -1)
      {
        swift_once();
      }

      v20 = sub_247DD23CC();
      __swift_project_value_buffer(v20, qword_27EE739E0);

      v21 = sub_247DD23AC();
      v22 = sub_247DD2F2C();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *&v28 = v24;
        *v23 = 136315138;
        v25 = sub_247D86568();
        v27 = sub_247D72868(v25, v26, &v28);

        *(v23 + 4) = v27;
        _os_log_impl(&dword_247D56000, v21, v22, "[Request] Queueing, %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v24);
        MEMORY[0x24C1BAF60](v24, -1, -1);
        MEMORY[0x24C1BAF60](v23, -1, -1);
      }
    }

    sub_247D6A1F8(v8, v10);
  }
}

uint64_t sub_247DA6CE8(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, void (*a5)(__int128 *), uint64_t a6, uint64_t (*a7)(void), uint64_t a8, uint64_t (*a9)(void, void, void, void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((a3 & 0x100) != 0)
    {
      *&v17 = a1;
      *(&v17 + 1) = a2;
      LOBYTE(v18) = a3;
      HIBYTE(v18) = 1;
      v15 = sub_247D6B69C(a1, a2, a3);
      (a5)(&v17, v15);

      return a9(v17, *(&v17 + 1), v18, HIBYTE(v18));
    }

    else
    {
      sub_247DD1F5C();
      swift_allocObject();
      sub_247DD1F4C();
      a7();
      sub_247DD1F3C();

      v17 = v16;
      v18 = 0;
      sub_247D6A2E8(v16, *(&v16 + 1));
      a5(&v17);

      a9(v17, *(&v17 + 1), v18, HIBYTE(v18));
      return sub_247D6A1F8(v16, *(&v16 + 1));
    }
  }

  return result;
}

uint64_t sub_247DA71D4(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, void (*a5)(__int128 *))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((a3 & 0x100) != 0)
    {
      *&v13 = a1;
      *(&v13 + 1) = a2;
      v14 = a3;
      LOBYTE(v15) = 1;
      v10 = sub_247D6B69C(a1, a2, a3);
      (a5)(&v13, v10);

      return sub_247DBB26C(v13, *(&v13 + 1), v14, *(&v14 + 1), v15);
    }

    else
    {
      sub_247DD1F5C();
      swift_allocObject();
      sub_247DD1F4C();
      sub_247DBB2E4();
      sub_247DD1F3C();

      v13 = v11;
      v14 = v12;
      LOBYTE(v15) = 0;

      a5(&v13);

      sub_247DBB26C(v13, *(&v13 + 1), v14, *(&v14 + 1), v15);
    }
  }

  return result;
}

uint64_t sub_247DA76B4(char a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_247DD2A0C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_247DD2A2C();
  v14 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v5 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_queue);
  v17 = swift_allocObject();
  *(v17 + 16) = v5;
  *(v17 + 24) = a3;
  *(v17 + 32) = a4;
  *(v17 + 40) = a1;
  *(v17 + 41) = a2;
  aBlock[4] = sub_247DBB4D8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = &block_descriptor_223;
  v18 = _Block_copy(aBlock);

  sub_247DD2A1C();
  v22 = MEMORY[0x277D84F90];
  sub_247DBAE20(&unk_27EE73AF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D6AE30(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0, MEMORY[0x277D83970]);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v16, v13, v18);
  _Block_release(v18);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v21);
}

uint64_t sub_247DA79B4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a5;
  v23 = a6;
  v7 = v6;
  v11 = sub_247DD2A0C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_247DD2A2C();
  v15 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v7 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_queue);
  v18 = swift_allocObject();
  *(v18 + 16) = v7;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a1;
  aBlock[4] = v22;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = v23;
  v19 = _Block_copy(aBlock);

  sub_247DD2A1C();
  v26 = MEMORY[0x277D84F90];
  sub_247DBAE20(&unk_27EE73AF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D6AE30(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0, MEMORY[0x277D83970]);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v17, v14, v19);
  _Block_release(v19);
  (*(v12 + 8))(v14, v11);
  (*(v15 + 8))(v17, v25);
}

uint64_t sub_247DA7CA0(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v24 = a3;
  v25 = a2;
  v8 = sub_247DD2A0C();
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_247DD2A2C();
  v11 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FileRequest(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v5 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_queue);
  sub_247DBAB44(a1, v17, type metadata accessor for FileRequest);
  v18 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v19 = v18 + v16;
  v20 = swift_allocObject();
  v21 = v24;
  v20[2] = v5;
  v20[3] = v21;
  v20[4] = a4;
  sub_247DBAA04(v17, v20 + v18, type metadata accessor for FileRequest);
  *(v20 + v19) = v25;
  aBlock[4] = sub_247DBAD44;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = &block_descriptor_159;
  v22 = _Block_copy(aBlock);

  sub_247DD2A1C();
  v29 = MEMORY[0x277D84F90];
  sub_247DBAE20(&unk_27EE73AF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D6AE30(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0, MEMORY[0x277D83970]);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v13, v10, v22);
  _Block_release(v22);
  (*(v28 + 8))(v10, v8);
  (*(v11 + 8))(v13, v27);
}

uint64_t sub_247DA806C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v24 = a3;
  v25 = a2;
  v8 = sub_247DD2A0C();
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_247DD2A2C();
  v11 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RejectFileRequest(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v5 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_queue);
  sub_247DBAB44(a1, v17, type metadata accessor for RejectFileRequest);
  v18 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v19 = v18 + v16;
  v20 = swift_allocObject();
  v21 = v24;
  v20[2] = v5;
  v20[3] = v21;
  v20[4] = a4;
  sub_247DBAA04(v17, v20 + v18, type metadata accessor for RejectFileRequest);
  *(v20 + v19) = v25;
  aBlock[4] = sub_247DBABC4;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = &block_descriptor_143;
  v22 = _Block_copy(aBlock);

  sub_247DD2A1C();
  v29 = MEMORY[0x277D84F90];
  sub_247DBAE20(&unk_27EE73AF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D6AE30(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0, MEMORY[0x277D83970]);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v13, v10, v22);
  _Block_release(v22);
  (*(v28 + 8))(v10, v8);
  (*(v11 + 8))(v13, v27);
}

void sub_247DA8438(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, char a4)
{
  if (*(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_terminated) == 1)
  {
    sub_247D6AFB0();
    v6 = swift_allocError();
    *v7 = xmmword_247DD52A0;
    *(v7 + 16) = 2;
    *&v33 = v6;
    BYTE8(v33) = 1;
    a2(&v33);
    sub_247D6B9F8(v33, SBYTE8(v33));
  }

  else
  {
    v10 = *(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_queue);
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    *(v12 + 2) = v11;
    *(v12 + 3) = a2;
    *(v12 + 4) = a3;
    v34 = &type metadata for CloseRequest;
    v35 = sub_247DBA9B0();
    type metadata accessor for PendingRequest(0);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v14 = v10;

    sub_247DD224C();
    *(v13 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_connection) = 0;
    v15 = (v13 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion);
    *v15 = 0;
    v15[1] = 0;
    v16 = v13 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_stopCalledWith;
    v16[32] = 0;
    *v16 = 0u;
    *(v16 + 1) = 0u;
    sub_247D6B5A8(&v33, v13 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_requestMessage);
    *(v13 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_forceFlush) = a4 & 1;
    v13[4] = v14;
    v17 = (v13 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion);
    *v17 = sub_247DBA968;
    v17[1] = v12;
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = v13[2];
    v20 = v13[3];
    v13[2] = sub_247DA5230;
    v13[3] = v18;

    sub_247D6A24C(v19, v20);

    if (*(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_ready) & 1) != 0 && ((v21 = OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_activeRequests, swift_beginAccess(), v22 = *(a1 + v21), v22 >> 62) ? (v23 = sub_247DD30BC()) : (v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10)), v23 < *(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_config) || (a4))
    {
      sub_247DA0CDC(v13);
    }

    else
    {
      sub_247DA0190(v13, a4 & 1);
      if (qword_27EE732B0 != -1)
      {
        swift_once();
      }

      v24 = sub_247DD23CC();
      __swift_project_value_buffer(v24, qword_27EE73D30);

      v25 = sub_247DD23AC();
      v26 = sub_247DD2F2C();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v32 = v28;
        *v27 = 136315650;
        *(v27 + 4) = sub_247D72868(0x65736F6C632FLL, 0xE600000000000000, &v32);
        *(v27 + 12) = 1024;
        *(v27 + 14) = a4 & 1;
        *(v27 + 18) = 2080;
        v29 = CosmoMultiplexChannelClient.description.getter();
        v31 = sub_247D72868(v29, v30, &v32);

        *(v27 + 20) = v31;
        _os_log_impl(&dword_247D56000, v25, v26, "[Request] Queued request for path=%s, forceFlush=%{BOOL}d %s", v27, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v28, -1, -1);
        MEMORY[0x24C1BAF60](v27, -1, -1);
      }
    }
  }
}

void sub_247DA8870(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, char a4)
{
  if (*(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_terminated) == 1)
  {
    sub_247D6AFB0();
    v6 = swift_allocError();
    *v7 = xmmword_247DD52A0;
    *(v7 + 16) = 2;
    *&v33 = v6;
    v34 = 1;
    a2(&v33);
    sub_247DBB490(v33, *(&v33 + 1), v34);
  }

  else
  {
    v10 = *(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_queue);
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    *(v12 + 2) = v11;
    *(v12 + 3) = a2;
    *(v12 + 4) = a3;
    v35 = &type metadata for FileListRequest;
    v36 = sub_247DBB43C();
    type metadata accessor for PendingRequest(0);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v14 = v10;

    sub_247DD224C();
    *(v13 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_connection) = 0;
    v15 = (v13 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion);
    *v15 = 0;
    v15[1] = 0;
    v16 = v13 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_stopCalledWith;
    v16[32] = 0;
    *v16 = 0u;
    *(v16 + 1) = 0u;
    sub_247D6B5A8(&v33, v13 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_requestMessage);
    *(v13 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_forceFlush) = a4 & 1;
    v13[4] = v14;
    v17 = (v13 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion);
    *v17 = sub_247DBB430;
    v17[1] = v12;
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = v13[2];
    v20 = v13[3];
    v13[2] = sub_247DBB680;
    v13[3] = v18;

    sub_247D6A24C(v19, v20);

    if (*(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_ready) & 1) != 0 && ((v21 = OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_activeRequests, swift_beginAccess(), v22 = *(a1 + v21), v22 >> 62) ? (v23 = sub_247DD30BC()) : (v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10)), v23 < *(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_config) || (a4))
    {
      sub_247DA0CDC(v13);
    }

    else
    {
      sub_247DA0190(v13, a4 & 1);
      if (qword_27EE732B0 != -1)
      {
        swift_once();
      }

      v24 = sub_247DD23CC();
      __swift_project_value_buffer(v24, qword_27EE73D30);

      v25 = sub_247DD23AC();
      v26 = sub_247DD2F2C();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v32 = v28;
        *v27 = 136315650;
        *(v27 + 4) = sub_247D72868(0x73656C69662FLL, 0xE600000000000000, &v32);
        *(v27 + 12) = 1024;
        *(v27 + 14) = a4 & 1;
        *(v27 + 18) = 2080;
        v29 = CosmoMultiplexChannelClient.description.getter();
        v31 = sub_247D72868(v29, v30, &v32);

        *(v27 + 20) = v31;
        _os_log_impl(&dword_247D56000, v25, v26, "[Request] Queued request for path=%s, forceFlush=%{BOOL}d %s", v27, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v28, -1, -1);
        MEMORY[0x24C1BAF60](v27, -1, -1);
      }
    }
  }
}

void sub_247DA8CA8(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, char a4, char a5)
{
  if (*(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_terminated) == 1)
  {
    sub_247D6AFB0();
    v7 = swift_allocError();
    *v8 = xmmword_247DD52A0;
    *(v8 + 16) = 2;
    *&v35 = v7;
    LOBYTE(v37) = 1;
    a2(&v35);
    sub_247DBB5A8(v35, *(&v35 + 1), v36, v37);
  }

  else
  {
    v12 = *(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_queue);
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    *(v14 + 2) = v13;
    *(v14 + 3) = a2;
    *(v14 + 4) = a3;
    v37 = &type metadata for LeaseRequest;
    v38 = sub_247DBB554();
    LOBYTE(v35) = a4;
    type metadata accessor for PendingRequest(0);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v16 = v12;

    sub_247DD224C();
    *(v15 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_connection) = 0;
    v17 = (v15 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion);
    *v17 = 0;
    v17[1] = 0;
    v18 = v15 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_stopCalledWith;
    v18[32] = 0;
    *v18 = 0u;
    *(v18 + 1) = 0u;
    sub_247D6B5A8(&v35, v15 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_requestMessage);
    *(v15 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_forceFlush) = a5 & 1;
    v15[4] = v16;
    v19 = (v15 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion);
    *v19 = sub_247DBB548;
    v19[1] = v14;
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = v15[2];
    v22 = v15[3];
    v15[2] = sub_247DBB680;
    v15[3] = v20;

    sub_247D6A24C(v21, v22);

    if (*(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_ready) & 1) != 0 && ((v23 = OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_activeRequests, swift_beginAccess(), v24 = *(a1 + v23), v24 >> 62) ? (v25 = sub_247DD30BC()) : (v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10)), v25 < *(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_config) || (a5))
    {
      sub_247DA0CDC(v15);
    }

    else
    {
      sub_247DA0190(v15, a5 & 1);
      if (qword_27EE732B0 != -1)
      {
        swift_once();
      }

      v26 = sub_247DD23CC();
      __swift_project_value_buffer(v26, qword_27EE73D30);

      v27 = sub_247DD23AC();
      v28 = sub_247DD2F2C();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v34 = v30;
        *v29 = 136315650;
        *(v29 + 4) = sub_247D72868(0x657361656C2FLL, 0xE600000000000000, &v34);
        *(v29 + 12) = 1024;
        *(v29 + 14) = a5 & 1;
        *(v29 + 18) = 2080;
        v31 = CosmoMultiplexChannelClient.description.getter();
        v33 = sub_247D72868(v31, v32, &v34);

        *(v29 + 20) = v33;
        _os_log_impl(&dword_247D56000, v27, v28, "[Request] Queued request for path=%s, forceFlush=%{BOOL}d %s", v29, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v30, -1, -1);
        MEMORY[0x24C1BAF60](v29, -1, -1);
      }
    }
  }
}

void sub_247DA90EC(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, char a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73F10, &unk_247DD6588);
  MEMORY[0x28223BE20](v10);
  v12 = (&v38 - v11);
  if (*(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_terminated) == 1)
  {
    sub_247D6AFB0();
    v13 = swift_allocError();
    *v14 = xmmword_247DD52A0;
    *(v14 + 16) = 2;
    *v12 = v13;
    swift_storeEnumTagMultiPayload();
    a2(v12);
    sub_247D6BAD4(v12, &qword_27EE73F10, &unk_247DD6588);
  }

  else
  {
    v15 = *(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_queue);
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    *(v17 + 2) = v16;
    *(v17 + 3) = a2;
    *(v17 + 4) = a3;
    v40 = type metadata accessor for FileRequest(0);
    v41 = sub_247DBAE20(&qword_27EE73F18, type metadata accessor for FileRequest, &protocol conformance descriptor for FileRequest);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v39);
    sub_247DBAB44(a4, boxed_opaque_existential_1, type metadata accessor for FileRequest);
    type metadata accessor for PendingRequest(0);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v20 = v15;

    sub_247DD224C();
    *(v19 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_connection) = 0;
    v21 = (v19 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion);
    *v21 = 0;
    v21[1] = 0;
    v22 = v19 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_stopCalledWith;
    v22[32] = 0;
    *v22 = 0u;
    *(v22 + 1) = 0u;
    sub_247D6B5A8(&v39, v19 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_requestMessage);
    *(v19 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_forceFlush) = a5 & 1;
    v19[4] = v20;
    v23 = (v19 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion);
    *v23 = sub_247DBAE14;
    v23[1] = v17;
    v24 = swift_allocObject();
    swift_weakInit();
    v25 = v19[2];
    v26 = v19[3];
    v19[2] = sub_247DBB680;
    v19[3] = v24;

    sub_247D6A24C(v25, v26);

    if (*(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_ready) & 1) != 0 && ((v27 = OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_activeRequests, swift_beginAccess(), v28 = *(a1 + v27), v28 >> 62) ? (v29 = sub_247DD30BC()) : (v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10)), v29 < *(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_config) || (a5))
    {
      sub_247DA0CDC(v19);
    }

    else
    {
      sub_247DA0190(v19, a5 & 1);
      if (qword_27EE732B0 != -1)
      {
        swift_once();
      }

      v30 = sub_247DD23CC();
      __swift_project_value_buffer(v30, qword_27EE73D30);

      v31 = sub_247DD23AC();
      v32 = sub_247DD2F2C();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v38 = v34;
        *v33 = 136315650;
        *(v33 + 4) = sub_247D72868(0x656C69662FLL, 0xE500000000000000, &v38);
        *(v33 + 12) = 1024;
        *(v33 + 14) = a5 & 1;
        *(v33 + 18) = 2080;
        v35 = CosmoMultiplexChannelClient.description.getter();
        v37 = sub_247D72868(v35, v36, &v38);

        *(v33 + 20) = v37;
        _os_log_impl(&dword_247D56000, v31, v32, "[Request] Queued request for path=%s, forceFlush=%{BOOL}d %s", v33, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v34, -1, -1);
        MEMORY[0x24C1BAF60](v33, -1, -1);
      }
    }
  }
}

void sub_247DA95E4(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4, char a5)
{
  if (*(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_terminated) == 1)
  {
    sub_247D6AFB0();
    v7 = swift_allocError();
    *v8 = xmmword_247DD52A0;
    *(v8 + 16) = 2;
    *&v36 = v7;
    BYTE8(v36) = 1;
    a2(&v36);
    sub_247D6B9F8(v36, SBYTE8(v36));
  }

  else
  {
    v12 = *(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_queue);
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    *(v14 + 2) = v13;
    *(v14 + 3) = a2;
    *(v14 + 4) = a3;
    v37 = type metadata accessor for RejectFileRequest(0);
    v38 = sub_247DBAE20(&qword_27EE73F00, type metadata accessor for RejectFileRequest, &protocol conformance descriptor for RejectFileRequest);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
    sub_247DBAB44(a4, boxed_opaque_existential_1, type metadata accessor for RejectFileRequest);
    type metadata accessor for PendingRequest(0);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v17 = v12;

    sub_247DD224C();
    *(v16 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_connection) = 0;
    v18 = (v16 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion);
    *v18 = 0;
    v18[1] = 0;
    v19 = v16 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_stopCalledWith;
    v19[32] = 0;
    *v19 = 0u;
    *(v19 + 1) = 0u;
    sub_247D6B5A8(&v36, v16 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_requestMessage);
    *(v16 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_forceFlush) = a5 & 1;
    v16[4] = v17;
    v20 = (v16 + OBJC_IVAR____TtC5CosmoP33_53B1A2E2A23EBDAF1F157FD9DF690B8514PendingRequest_responseCompletion);
    *v20 = sub_247DBABF0;
    v20[1] = v14;
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = v16[2];
    v23 = v16[3];
    v16[2] = sub_247DBB680;
    v16[3] = v21;

    sub_247D6A24C(v22, v23);

    if (*(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_ready) & 1) != 0 && ((v24 = OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_activeRequests, swift_beginAccess(), v25 = *(a1 + v24), v25 >> 62) ? (v26 = sub_247DD30BC()) : (v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10)), v26 < *(a1 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_config) || (a5))
    {
      sub_247DA0CDC(v16);
    }

    else
    {
      sub_247DA0190(v16, a5 & 1);
      if (qword_27EE732B0 != -1)
      {
        swift_once();
      }

      v27 = sub_247DD23CC();
      __swift_project_value_buffer(v27, qword_27EE73D30);

      v28 = sub_247DD23AC();
      v29 = sub_247DD2F2C();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v35 = v31;
        *v30 = 136315650;
        *(v30 + 4) = sub_247D72868(0x467463656A65722FLL, 0xEB00000000656C69, &v35);
        *(v30 + 12) = 1024;
        *(v30 + 14) = a5 & 1;
        *(v30 + 18) = 2080;
        v32 = CosmoMultiplexChannelClient.description.getter();
        v34 = sub_247D72868(v32, v33, &v35);

        *(v30 + 20) = v34;
        _os_log_impl(&dword_247D56000, v28, v29, "[Request] Queued request for path=%s, forceFlush=%{BOOL}d %s", v30, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v31, -1, -1);
        MEMORY[0x24C1BAF60](v30, -1, -1);
      }
    }
  }
}

void sub_247DA9A84(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *))
{
  v5 = type metadata accessor for CosmoHttpResponseContent(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73DD8, &unk_247DD60F0);
  MEMORY[0x28223BE20](v8);
  v10 = v16 - v9;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_247D6BA6C(a1, v10, &unk_27EE73DD8, &unk_247DD60F0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v11 = *v10;
      v12 = *(v10 + 1);
      v13 = v10[16];
      sub_247D6AFB0();
      v14 = swift_allocError();
      *v15 = v11;
      *(v15 + 8) = v12;
      *(v15 + 16) = v13;
      v19 = v14;
      v21 = 1;
      a3(&v19);

      sub_247DBB490(v19, v20, v21);
    }

    else
    {
      sub_247DBAA04(v10, v7, type metadata accessor for CosmoHttpResponseContent);
      sub_247D6DB68(v7);
      v19 = v17;
      v20 = v18;
      v21 = 0;

      a3(&v19);

      sub_247DBB490(v19, v20, v21);

      sub_247DBAA6C(v7, type metadata accessor for CosmoHttpResponseContent);
    }
  }
}

void sub_247DA9F28(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *))
{
  v5 = type metadata accessor for CosmoHttpResponseContent(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73DD8, &unk_247DD60F0);
  MEMORY[0x28223BE20](v8);
  v10 = v16 - v9;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_247D6BA6C(a1, v10, &unk_27EE73DD8, &unk_247DD60F0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v11 = *v10;
      v12 = *(v10 + 1);
      v13 = v10[16];
      sub_247D6AFB0();
      v14 = swift_allocError();
      *v15 = v11;
      *(v15 + 8) = v12;
      *(v15 + 16) = v13;
      v20 = v14;
      v23 = 1;
      a3(&v20);

      sub_247DBB5A8(v20, v21, v22, v23);
    }

    else
    {
      sub_247DBAA04(v10, v7, type metadata accessor for CosmoHttpResponseContent);
      sub_247D6D9E8(v7);
      v20 = v17;
      v21 = v18;
      v22 = v19;
      v23 = 0;

      a3(&v20);

      sub_247DBB5A8(v20, v21, v22, v23);

      sub_247DBAA6C(v7, type metadata accessor for CosmoHttpResponseContent);
    }
  }
}

uint64_t sub_247DAA3DC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *))
{
  v23 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73F10, &unk_247DD6588);
  MEMORY[0x28223BE20](v4);
  v6 = (&v22 - v5);
  v7 = type metadata accessor for CosmoFileHttpResponse(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CosmoHttpResponseContent(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73DD8, &unk_247DD60F0);
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - v14;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_247D6BA6C(a1, v15, &unk_27EE73DD8, &unk_247DD60F0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v17 = *v15;
      v18 = *(v15 + 1);
      v19 = v15[16];
      sub_247D6AFB0();
      v20 = swift_allocError();
      *v21 = v17;
      *(v21 + 8) = v18;
      *(v21 + 16) = v19;
      *v6 = v20;
      swift_storeEnumTagMultiPayload();
      v23(v6);

      return sub_247D6BAD4(v6, &qword_27EE73F10, &unk_247DD6588);
    }

    else
    {
      sub_247DBAA04(v15, v12, type metadata accessor for CosmoHttpResponseContent);
      static CosmoFileHttpResponse._create(from:)(v12, v9);
      sub_247DBAB44(v9, v6, type metadata accessor for CosmoFileHttpResponse);
      swift_storeEnumTagMultiPayload();
      v23(v6);

      sub_247D6BAD4(v6, &qword_27EE73F10, &unk_247DD6588);
      sub_247DBAA6C(v9, type metadata accessor for CosmoFileHttpResponse);
      return sub_247DBAA6C(v12, type metadata accessor for CosmoHttpResponseContent);
    }
  }

  return result;
}

uint64_t sub_247DAA99C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, void (*a5)(uint64_t *__return_ptr, char *), uint64_t (*a6)(uint64_t, void))
{
  v10 = type metadata accessor for CosmoHttpResponseContent(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73DD8, &unk_247DD60F0);
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - v14;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_247D6BA6C(a1, v15, &unk_27EE73DD8, &unk_247DD60F0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v17 = *v15;
      v18 = *(v15 + 1);
      v19 = v15[16];
      sub_247D6AFB0();
      v20 = swift_allocError();
      *v21 = v17;
      *(v21 + 8) = v18;
      *(v21 + 16) = v19;
      v24 = v20;
      v25 = 1;
      a3(&v24);

      return a6(v24, v25);
    }

    else
    {
      sub_247DBAA04(v15, v12, type metadata accessor for CosmoHttpResponseContent);
      a5(&v23, v12);
      v24 = v23;
      v25 = 0;
      a3(&v24);

      a6(v24, v25);
      return sub_247DBAA6C(v12, type metadata accessor for CosmoHttpResponseContent);
    }
  }

  return result;
}

uint64_t TransferClient.FileDescriptor.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_247DD225C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TransferClient.FileDescriptor.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for TransferClient.FileDescriptor(0) + 20));

  return v1;
}

uint64_t TransferClient.FileDescriptor.description.getter()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
  [v2 setCountStyle_];
  result = type metadata accessor for TransferClient.FileDescriptor(0);
  if ((*(v0 + *(result + 24)) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v5 = [v2 stringFromByteCount_];
    v6 = sub_247DD2CAC();
    v8 = v7;

    sub_247DD304C();

    sub_247DD225C();
    sub_247DBAE20(&unk_27EE73510, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v9 = sub_247DD321C();
    MEMORY[0x24C1BA0A0](v9);

    MEMORY[0x24C1BA0A0](0x3D656D616E202CLL, 0xE700000000000000);
    MEMORY[0x24C1BA0A0](*(v1 + *(v4 + 20)), *(v1 + *(v4 + 20) + 8));
    MEMORY[0x24C1BA0A0](0x3D657A6973202CLL, 0xE700000000000000);
    MEMORY[0x24C1BA0A0](v6, v8);

    MEMORY[0x24C1BA0A0](41, 0xE100000000000000);

    return 0xD000000000000012;
  }

  return result;
}

uint64_t sub_247DAB108@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_247DD225C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

unint64_t TransferClient.State.description.getter()
{
  result = 0x6C616974696E69;
  switch(*v0)
  {
    case 1:
    case 2:
      result = 0xD000000000000021;
      break;
    case 3:
      result = 0xD000000000000020;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0xD00000000000001ELL;
      break;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 7:
      result = 0xD000000000000020;
      break;
    case 8:
      result = 0xD000000000000020;
      break;
    case 9:
      result = 0xD000000000000025;
      break;
    case 0xA:
    case 0xB:
      result = 0xD000000000000023;
      break;
    case 0xC:
      result = 0xD000000000000022;
      break;
    case 0xD:
      result = 0xD00000000000001FLL;
      break;
    case 0xE:
      result = 0xD000000000000024;
      break;
    case 0xF:
      result = 0xD00000000000001ALL;
      break;
    case 0x10:
    case 0x11:
      result = 0x656E6E6F63736964;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t TransferClient.State.hashValue.getter()
{
  v1 = *v0;
  sub_247DD32BC();
  MEMORY[0x24C1BA5C0](v1);
  return sub_247DD32EC();
}

Cosmo::TransferClient::AttestationResult_optional __swiftcall TransferClient.AttestationResult.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_247DD312C();

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

  *v2 = v5;
  return result;
}

uint64_t TransferClient.AttestationResult.rawValue.getter()
{
  if (*v0)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_247DAB500(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6572756C696166;
  }

  else
  {
    v2 = 0x73736563637573;
  }

  if (*a2)
  {
    v3 = 0x6572756C696166;
  }

  else
  {
    v3 = 0x73736563637573;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_247DD322C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_247DAB588()
{
  sub_247DD32BC();
  sub_247DD2D7C();

  return sub_247DD32EC();
}

uint64_t sub_247DAB600(uint64_t a1)
{
  sub_247DD2D7C();
}

uint64_t sub_247DAB65C(uint64_t a1)
{
  sub_247DD32BC();
  sub_247DD2D7C();

  return sub_247DD32EC();
}

uint64_t sub_247DAB6D0@<X0>(char *a2@<X8>)
{
  v3 = sub_247DD312C();

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

void sub_247DAB730(uint64_t *a1@<X8>)
{
  v2 = 0x73736563637573;
  if (*v1)
  {
    v2 = 0x6572756C696166;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

double TransferClient.config.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = result;
  return result;
}

uint64_t sub_247DAB77C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_247DD241C();

  *a2 = v4;
  return result;
}

uint64_t sub_247DAB7FC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_247DD242C();
}

uint64_t sub_247DAB878()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_247DD241C();

  return v1;
}

uint64_t sub_247DAB8F4(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73DF0, &qword_247DD6198);
  sub_247DD23FC();
  return swift_endAccess();
}

uint64_t sub_247DAB96C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73EF0, &qword_247DD6578);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73DF0, &qword_247DD6198);
  sub_247DD240C();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_247DABAF0()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73DF0, &qword_247DD6198);
  sub_247DD23FC();
  return swift_endAccess();
}

uint64_t TransferClient.__allocating_init(delegate:queue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0x3FF0000000000000;
  type metadata accessor for TransferClient(0);
  v6 = swift_allocObject();
  TransferClient.init(delegate:config:queue:)(a1, a2, &v8, a3);
  return v6;
}

uint64_t TransferClient.__allocating_init(delegate:config:queue:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  TransferClient.init(delegate:config:queue:)(a1, a2, a3, a4);
  return v8;
}

uint64_t TransferClient.init(delegate:config:queue:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v26 = a2;
  v7 = sub_247DD2F6C();
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x28223BE20](v7);
  v23 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_247DD2F3C();
  MEMORY[0x28223BE20](v9);
  v10 = sub_247DD2A2C();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73DF0, &qword_247DD6198);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - v13;
  v15 = *a3;
  v16 = OBJC_IVAR____TtC5Cosmo14TransferClient__fileTransfers;
  v28 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73DF8, &unk_247DD61A0);
  sub_247DD23EC();
  (*(v12 + 32))(v4 + v16, v14, v11);
  v17 = v4 + OBJC_IVAR____TtC5Cosmo14TransferClient_delegate;
  *(v17 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC5Cosmo14TransferClient_stateAtDisconnect) = 18;
  *(v4 + OBJC_IVAR____TtC5Cosmo14TransferClient_usePinlessPair) = 0;
  *(v4 + OBJC_IVAR____TtC5Cosmo14TransferClient_sharedSecret) = xmmword_247DD3EC0;
  *(v4 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationBrowser) = 0;
  *(v4 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationChannel) = 0;
  v18 = (v4 + OBJC_IVAR____TtC5Cosmo14TransferClient_onAttestationChannelConnected);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v4 + OBJC_IVAR____TtC5Cosmo14TransferClient_pinCode);
  *v19 = 0;
  v19[1] = 0;
  *(v4 + OBJC_IVAR____TtC5Cosmo14TransferClient_spake2Verifier) = 0;
  *(v4 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationResult) = 2;
  *(v4 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationCount) = 0;
  *(v4 + OBJC_IVAR____TtC5Cosmo14TransferClient_fileTransferBrowser) = 0;
  *(v4 + OBJC_IVAR____TtC5Cosmo14TransferClient_localSecIdentity) = 0;
  *(v4 + OBJC_IVAR____TtC5Cosmo14TransferClient_localPublicKey) = xmmword_247DD3EC0;
  *(v4 + OBJC_IVAR____TtC5Cosmo14TransferClient_remotePublicKey) = xmmword_247DD3EC0;
  v20 = OBJC_IVAR____TtC5Cosmo14TransferClient_fileTransferServiceUUID;
  v21 = sub_247DD225C();
  (*(*(v21 - 8) + 56))(v4 + v20, 1, 1, v21);
  *(v4 + OBJC_IVAR____TtC5Cosmo14TransferClient_fileTransferClient) = 0;
  *(v4 + OBJC_IVAR____TtC5Cosmo14TransferClient_filesRequestedCount) = 0;
  *(v4 + OBJC_IVAR____TtC5Cosmo14TransferClient_filesReceivedCount) = 0;
  swift_beginAccess();
  *(v17 + 8) = v26;
  swift_unknownObjectWeakAssign();
  *(v4 + 24) = v15;
  if (!a4)
  {
    sub_247D6A0F4();
    sub_247DD2A1C();
    v27 = MEMORY[0x277D84F90];
    sub_247DBAE20(&unk_27EE73390, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE739B0, &unk_247DD3F70);
    sub_247D6AE30(&qword_27EE733A0, &unk_27EE739B0, &unk_247DD3F70, MEMORY[0x277D83970]);
    sub_247DD2FFC();
    (*(v24 + 104))(v23, *MEMORY[0x277D85260], v25);
    a4 = sub_247DD2F8C();
  }

  swift_unknownObjectRelease();
  *(v4 + 16) = a4;
  *(v4 + OBJC_IVAR____TtC5Cosmo14TransferClient_state) = 0;
  return v4;
}

void sub_247DAC1A4(char *a1)
{
  v4 = sub_247DD2ABC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *a1;
  v9 = *(v1 + 16);
  *v7 = v9;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v10 = v9;
  LOBYTE(v9) = sub_247DD2ADC();
  (*(v5 + 8))(v7, v4);
  if (v9)
  {
    v2 = *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
    *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_state) = v8;
    if (qword_27EE73290 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = sub_247DD23CC();
  __swift_project_value_buffer(v11, qword_27EE7B908);
  v12 = sub_247DD23AC();
  v13 = sub_247DD2F2C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136315394;
    v22[7] = v2;
    v16 = TransferClient.State.description.getter();
    v18 = sub_247D72868(v16, v17, &v23);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v22[6] = v8;
    v19 = TransferClient.State.description.getter();
    v21 = sub_247D72868(v19, v20, &v23);

    *(v14 + 14) = v21;
    _os_log_impl(&dword_247D56000, v12, v13, "[State] Updated, old-state='%s' new-state='%s'", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v15, -1, -1);
    MEMORY[0x24C1BAF60](v14, -1, -1);
  }
}

uint64_t TransferClient.deinit()
{
  v1 = OBJC_IVAR____TtC5Cosmo14TransferClient__fileTransfers;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73DF0, &qword_247DD6198);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_247D6A1D0(v0 + OBJC_IVAR____TtC5Cosmo14TransferClient_delegate);
  sub_247D6A25C(*(v0 + OBJC_IVAR____TtC5Cosmo14TransferClient_sharedSecret), *(v0 + OBJC_IVAR____TtC5Cosmo14TransferClient_sharedSecret + 8));

  sub_247D6A24C(*(v0 + OBJC_IVAR____TtC5Cosmo14TransferClient_onAttestationChannelConnected), *(v0 + OBJC_IVAR____TtC5Cosmo14TransferClient_onAttestationChannelConnected + 8));

  swift_unknownObjectRelease();
  sub_247D6A25C(*(v0 + OBJC_IVAR____TtC5Cosmo14TransferClient_localPublicKey), *(v0 + OBJC_IVAR____TtC5Cosmo14TransferClient_localPublicKey + 8));
  sub_247D6A25C(*(v0 + OBJC_IVAR____TtC5Cosmo14TransferClient_remotePublicKey), *(v0 + OBJC_IVAR____TtC5Cosmo14TransferClient_remotePublicKey + 8));
  sub_247D6BAD4(v0 + OBJC_IVAR____TtC5Cosmo14TransferClient_fileTransferServiceUUID, &qword_27EE733A8, &unk_247DD61B0);

  return v0;
}

uint64_t TransferClient.__deallocating_deinit()
{
  TransferClient.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t TransferClient.connect(secret:onConnect:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_247DD2A0C();
  v21 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_247DD2A2C();
  v11 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = a1[1];
  v16 = swift_allocObject();
  v16[2] = v4;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = v14;
  v16[6] = v15;
  aBlock[4] = sub_247DACE14;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = &block_descriptor_6;
  v17 = _Block_copy(aBlock);

  sub_247D6A2E8(v14, v15);
  sub_247DD2A1C();
  v22 = MEMORY[0x277D84F90];
  sub_247DBAE20(&unk_27EE73AF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D6AE30(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0, MEMORY[0x277D83970]);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v13, v10, v17);
  _Block_release(v17);
  (*(v21 + 8))(v10, v8);
  (*(v11 + 8))(v13, v20);
}

void sub_247DAC8DC(uint64_t a1, void (*a2)(void *, uint64_t), void (*a3)(void *, uint64_t), uint64_t a4, unint64_t a5)
{
  v8 = OBJC_IVAR____TtC5Cosmo14TransferClient_state;
  if (!*(a1 + OBJC_IVAR____TtC5Cosmo14TransferClient_state))
  {
    v21 = (a1 + OBJC_IVAR____TtC5Cosmo14TransferClient_sharedSecret);
    v22 = *(a1 + OBJC_IVAR____TtC5Cosmo14TransferClient_sharedSecret);
    v23 = *(a1 + OBJC_IVAR____TtC5Cosmo14TransferClient_sharedSecret + 8);
    *v21 = a4;
    v21[1] = a5;
    sub_247D6A2E8(a4, a5);
    sub_247D6A25C(v22, v23);
    v24 = (a1 + OBJC_IVAR____TtC5Cosmo14TransferClient_onAttestationChannelConnected);
    v25 = *(a1 + OBJC_IVAR____TtC5Cosmo14TransferClient_onAttestationChannelConnected);
    v26 = *(a1 + OBJC_IVAR____TtC5Cosmo14TransferClient_onAttestationChannelConnected + 8);
    *v24 = a2;
    v24[1] = a3;

    sub_247D6A24C(v25, v26);
    v51.n128_u64[0] = a4;
    v51.n128_u64[1] = a5;
    v27 = SharedSecret.protocolVersion.getter();
    v28 = (v27 & 0x100) == 0;
    if ((v27 & 0xFE) == 0)
    {
      v28 = 0;
    }

    v29 = OBJC_IVAR____TtC5Cosmo14TransferClient_usePinlessPair;
    *(a1 + OBJC_IVAR____TtC5Cosmo14TransferClient_usePinlessPair) = v28;
    if (qword_27EE73290 != -1)
    {
      swift_once();
    }

    v30 = sub_247DD23CC();
    __swift_project_value_buffer(v30, qword_27EE7B908);
    sub_247D6A2E8(a4, a5);

    v31 = sub_247DD23AC();
    v32 = sub_247DD2F2C();
    sub_247D6A1F8(a4, a5);
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v54 = v50;
      *v33 = 67109634;
      *(v33 + 4) = *(a1 + v29);

      *(v33 + 8) = 2080;
      v34 = sub_247D94008(a4, a5);
      v36 = v35;
      v37 = sub_247DD2D8C();
      if (v37)
      {
        v38 = v37;
        v39 = sub_247D993D8(v37, 0);

        v40 = sub_247D99310(&v51, v39 + 4, v38, v34, v36);

        if (v40 != v38)
        {
          __break(1u);
          return;
        }
      }

      else
      {

        v39 = MEMORY[0x277D84F90];
      }

      v41 = v39[2];
      v42 = v41 - 5;
      if (v41 < 5)
      {
        v42 = 0;
      }

      v51.n128_u64[0] = v39;
      v51.n128_u64[1] = (v39 + 4);
      v52 = v42;
      v53 = (2 * v41) | 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73F80, &unk_247DD65B0);
      sub_247D6AE30(&qword_27EE73520, &unk_27EE73F80, &unk_247DD65B0, MEMORY[0x277D83FB0]);
      v43 = sub_247DD2E3C();
      v45 = sub_247D72868(v43, v44, &v54);

      *(v33 + 10) = v45;
      *(v33 + 18) = 2080;
      v51.n128_u64[0] = a4;
      v51.n128_u64[1] = a5;
      if ((SharedSecret.protocolVersion.getter() & 0x100) != 0)
      {
        v48 = 0xE300000000000000;
        v46 = 7104878;
      }

      else
      {
        v46 = sub_247DD2CFC();
        v48 = v47;
      }

      v49 = sub_247D72868(v46, v48, &v54);

      *(v33 + 20) = v49;
      _os_log_impl(&dword_247D56000, v31, v32, "[Connect] Using pinless-pair=%{BOOL}d, shared-secret=%s, protocol-version=%s", v33, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v50, -1, -1);
      MEMORY[0x24C1BAF60](v33, -1, -1);
    }

    else
    {
    }

    sub_247DACE3C();
    return;
  }

  if (qword_27EE73290 != -1)
  {
    swift_once();
  }

  v9 = sub_247DD23CC();
  __swift_project_value_buffer(v9, qword_27EE7B908);

  v10 = sub_247DD23AC();
  v11 = sub_247DD2F2C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v51.n128_u64[0] = v13;
    *v12 = 136315138;
    LOBYTE(v54) = *(a1 + v8);
    v14 = TransferClient.State.description.getter();
    v16 = sub_247D72868(v14, v15, &v51);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_247D56000, v10, v11, "[Connect] Must be invoked while in the initial state, state=%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x24C1BAF60](v13, -1, -1);
    MEMORY[0x24C1BAF60](v12, -1, -1);
  }

  sub_247D6ADD0();
  v17 = swift_allocError();
  *v18 = xmmword_247DD3ED0;
  a2(v17, 1);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_247DACE3C()
{
  v1 = type metadata accessor for NetworkDescriptor(0);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v24[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v6 = &v24[-v5];
  v7 = sub_247DD2ABC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v0 + 16);
  *v10 = v11;
  (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
  v12 = v11;
  v13 = sub_247DD2ADC();
  result = (*(v8 + 8))(v10, v7);
  if (v13)
  {
    v15 = (v0 + OBJC_IVAR____TtC5Cosmo14TransferClient_sharedSecret);
    v16 = *(v0 + OBJC_IVAR____TtC5Cosmo14TransferClient_sharedSecret + 8);
    if (v16 >> 60 != 15)
    {
      v17 = *v15;
      *v6 = *v15;
      *(v6 + 1) = v16;
      v6[16] = 0;
      swift_storeEnumTagMultiPayload();
      sub_247DBAB44(v6, v4, type metadata accessor for NetworkDescriptor);
      type metadata accessor for CosmoBrowser(0);
      v18 = swift_allocObject();
      *(v18 + 24) = 0;
      *(v18 + 16) = 0;
      *(v18 + OBJC_IVAR____TtC5Cosmo12CosmoBrowser_browser) = 0;
      sub_247DBAB44(v4, v18 + OBJC_IVAR____TtC5Cosmo12CosmoBrowser_descriptor, type metadata accessor for NetworkDescriptor);
      sub_247D6B278(v17, v16);
      v19 = v12;
      sub_247D6B278(v17, v16);
      sub_247DBAA6C(v4, type metadata accessor for NetworkDescriptor);
      *(v18 + OBJC_IVAR____TtC5Cosmo12CosmoBrowser_queue) = v19;
      v20 = OBJC_IVAR____TtC5Cosmo14TransferClient_attestationBrowser;
      *(v0 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationBrowser) = v18;

      v21 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v22 = *(v18 + 16);
      v23 = *(v18 + 24);
      *(v18 + 16) = sub_247DBB5C8;
      *(v18 + 24) = v21;

      sub_247D6A24C(v22, v23);

      v25 = 1;
      sub_247DAC1A4(&v25);
      if (*(v0 + v20))
      {

        sub_247D9A43C();
      }

      sub_247D6A25C(v17, v16);
      return sub_247DBAA6C(v6, type metadata accessor for NetworkDescriptor);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_247DAD1AC(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (v2)
    {
      if (qword_27EE73290 != -1)
      {
        swift_once();
      }

      v4 = sub_247DD23CC();
      __swift_project_value_buffer(v4, qword_27EE7B908);

      v5 = sub_247DD23AC();
      v6 = sub_247DD2F2C();

      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_13;
      }

      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v17 = v8;
      *v7 = 136315138;
      v9 = TransferClient.State.description.getter();
      v11 = sub_247D72868(v9, v10, &v17);

      *(v7 + 4) = v11;
      v12 = "[AttestationSetup] Advertised attestation-endpoint removed, state=%s";
LABEL_12:
      _os_log_impl(&dword_247D56000, v5, v6, v12, v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x24C1BAF60](v8, -1, -1);
      MEMORY[0x24C1BAF60](v7, -1, -1);
LABEL_13:

      return;
    }

    if (*(Strong + OBJC_IVAR____TtC5Cosmo14TransferClient_state) > 1u)
    {
      if (qword_27EE73290 != -1)
      {
        swift_once();
      }

      v13 = sub_247DD23CC();
      __swift_project_value_buffer(v13, qword_27EE7B908);

      v5 = sub_247DD23AC();
      v6 = sub_247DD2F2C();

      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_13;
      }

      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v17 = v8;
      *v7 = 136315138;
      v14 = TransferClient.State.description.getter();
      v16 = sub_247D72868(v14, v15, &v17);

      *(v7 + 4) = v16;
      v12 = "[AttestationSetup] Ignoring add of file-transfer-endpoint, state=%s";
      goto LABEL_12;
    }

    sub_247DAD45C();
  }
}

uint64_t sub_247DAD45C()
{
  v1 = v0;
  v2 = type metadata accessor for NetworkDescriptor(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v42 - v6;
  v8 = sub_247DD225C();
  v47 = *(v8 - 8);
  v48 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_247DD2ABC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v1 + 16);
  *v14 = v15;
  (*(v12 + 104))(v14, *MEMORY[0x277D85200], v11);
  v16 = v15;
  v17 = sub_247DD2ADC();
  v19 = *(v12 + 8);
  v18 = v12 + 8;
  result = v19(v14, v11);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_4;
  }

  v21 = (v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_sharedSecret);
  v17 = *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_sharedSecret + 8);
  if (v17 >> 60 == 15)
  {
    return result;
  }

  v46 = v2;
  v18 = *v21;
  sub_247D6A2E8(*v21, v17);
  if (qword_27EE73290 != -1)
  {
    goto LABEL_11;
  }

LABEL_4:
  v45 = v16;
  v22 = sub_247DD23CC();
  __swift_project_value_buffer(v22, qword_27EE7B908);
  sub_247D6A2E8(v18, v17);
  v23 = sub_247DD23AC();
  v24 = sub_247DD2F2C();
  sub_247D6A25C(v18, v17);
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v42 = v25;
    v44 = swift_slowAlloc();
    v49[1] = v17;
    v50 = v44;
    *v25 = 136315138;
    v49[0] = v18;
    v43 = v24;
    SharedSecret.advertisementIdentifer.getter(v10);
    sub_247DBAE20(&unk_27EE73510, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v26 = v48;
    v27 = sub_247DD321C();
    v28 = v5;
    v30 = v29;
    (*(v47 + 8))(v10, v26);
    v31 = sub_247D72868(v27, v30, &v50);
    v5 = v28;

    v32 = v42;
    *(v42 + 1) = v31;
    v33 = v32;
    _os_log_impl(&dword_247D56000, v23, v43, "[Connect] Starting attestation-channel with Bonjour attestationServiceUUID=%s", v32, 0xCu);
    v34 = v44;
    __swift_destroy_boxed_opaque_existential_0Tm(v44);
    MEMORY[0x24C1BAF60](v34, -1, -1);
    MEMORY[0x24C1BAF60](v33, -1, -1);
  }

  *v7 = v18;
  *(v7 + 1) = v17;
  v7[16] = 0;
  swift_storeEnumTagMultiPayload();
  sub_247DBAB44(v7, v5, type metadata accessor for NetworkDescriptor);
  type metadata accessor for CosmoSerialChannelClient(0);
  swift_allocObject();
  v35 = v45;
  v36 = v45;
  sub_247D6B278(v18, v17);
  v37 = sub_247D845FC(0xD000000000000013, 0x8000000247DDA1B0, v5, v35);
  v38 = OBJC_IVAR____TtC5Cosmo14TransferClient_attestationChannel;
  *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationChannel) = v37;

  v39 = swift_allocObject();
  swift_weakInit();
  v40 = v37[2];
  v41 = v37[3];
  v37[2] = sub_247DBB5D0;
  v37[3] = v39;

  sub_247D6A24C(v40, v41);

  LOBYTE(v49[0]) = 2;
  sub_247DAC1A4(v49);
  if (*(v1 + v38))
  {

    sub_247D84AFC();
  }

  sub_247D6A25C(v18, v17);
  return sub_247DBAA6C(v7, type metadata accessor for NetworkDescriptor);
}

uint64_t sub_247DAD9AC(char a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_247DADA0C(a1 & 1);
  }

  return result;
}

void sub_247DADA0C(char a1)
{
  v3 = v1;
  v5 = sub_247DD2ABC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v3 + 16);
  *v8 = v9;
  (*(v6 + 104))(v8, *MEMORY[0x277D85200], v5);
  v10 = v9;
  LOBYTE(v9) = sub_247DD2ADC();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    swift_once();
    goto LABEL_8;
  }

  if (!*(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationChannel))
  {
    return;
  }

  v2 = OBJC_IVAR____TtC5Cosmo14TransferClient_state;
  v11 = *(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
  if (v11 <= 0xF)
  {
    if (a1)
    {
      if (v11 <= 0xB)
      {
        BYTE6(v25) = 2;
        sub_247DAEE90(&v25 + 6, 0xD00000000000001FLL, 0x8000000247DDA1D0);
      }
    }

    else
    {
      BYTE5(v25) = 3;
      sub_247DAC1A4(&v25 + 5);
      v20 = (v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_onAttestationChannelConnected);
      v21 = *(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_onAttestationChannelConnected);
      if (v21)
      {
        v22 = v20[1];

        v21(0, 0);
        sub_247D6A24C(v21, v22);
        v23 = *v20;
      }

      else
      {
        v23 = 0;
      }

      v24 = v20[1];
      *v20 = 0;
      v20[1] = 0;
      sub_247D6A24C(v23, v24);
      sub_247DADD20();
    }

    return;
  }

  if (qword_27EE73290 != -1)
  {
    goto LABEL_17;
  }

LABEL_8:
  v12 = sub_247DD23CC();
  __swift_project_value_buffer(v12, qword_27EE7B908);

  v13 = sub_247DD23AC();
  v14 = sub_247DD2F2C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = v16;
    *v15 = 136315138;
    HIBYTE(v25) = *(v3 + v2);
    v17 = TransferClient.State.description.getter();
    v19 = sub_247D72868(v17, v18, &v26);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_247D56000, v13, v14, "Disconnect: Ignoring attestation-channel state change, state=%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x24C1BAF60](v16, -1, -1);
    MEMORY[0x24C1BAF60](v15, -1, -1);
  }
}

void sub_247DADD20()
{
  v1 = v0;
  v2 = sub_247DD235C();
  v127 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v126 = &v117 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_247DD2C1C();
  v125 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_247DD2B3C();
  v124 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_247DD2ABC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v1 + 16);
  *v13 = v14;
  (*(v11 + 104))(v13, *MEMORY[0x277D85200], v10);
  v15 = v14;
  v16 = sub_247DD2ADC();
  (*(v11 + 8))(v13, v10);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_52:
    swift_once();
LABEL_31:
    v81 = sub_247DD23CC();
    __swift_project_value_buffer(v81, qword_27EE7B908);
    v22 = sub_247DD23AC();
    v23 = sub_247DD2F0C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v129[0] = v25;
      *v24 = 136315138;
      v82 = sub_247DB0BB0();
      v84 = sub_247D72868(v82, v83, v129);

      *(v24 + 4) = v84;
      v29 = "[Initiate SPAKE2] Unexpected state, %s";
      goto LABEL_33;
    }

LABEL_34:

    return;
  }

  v17 = *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
  if (v17 == 3)
  {
LABEL_5:

    goto LABEL_6;
  }

  if (v17 != 7)
  {

    goto LABEL_30;
  }

  v18 = *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationResult);
  if (v18 == 2)
  {
    goto LABEL_5;
  }

  if ((v18 & 1) == 0)
  {

    swift_bridgeObjectRelease_n();
    goto LABEL_30;
  }

  v60 = sub_247DD322C();

  swift_bridgeObjectRelease_n();
  if (v60)
  {
LABEL_30:
    if (qword_27EE73290 == -1)
    {
      goto LABEL_31;
    }

    goto LABEL_52;
  }

LABEL_6:
  v123 = v2;
  v19 = *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationChannel);
  if (!v19)
  {
    if (qword_27EE73290 != -1)
    {
      swift_once();
    }

    v21 = sub_247DD23CC();
    __swift_project_value_buffer(v21, qword_27EE7B908);
    v22 = sub_247DD23AC();
    v23 = sub_247DD2F2C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v129[0] = v25;
      *v24 = 136315138;
      v26 = sub_247DB0BB0();
      v28 = sub_247D72868(v26, v27, v129);

      *(v24 + 4) = v28;
      v29 = "[Initiate SPAKE2] Could not find attestation-channel, %s";
LABEL_33:
      _os_log_impl(&dword_247D56000, v22, v23, v29, v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x24C1BAF60](v25, -1, -1);
      MEMORY[0x24C1BAF60](v24, -1, -1);

      goto LABEL_50;
    }

    goto LABEL_34;
  }

  if (*(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_usePinlessPair) == 1)
  {
    v20 = *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_sharedSecret + 8);
    if (v20 >> 60 == 15)
    {
      LOBYTE(v129[0]) = 0;

      sub_247DAEE90(v129, 0xD000000000000037, 0x8000000247DD8A10);
LABEL_49:

      goto LABEL_50;
    }

    v61 = OBJC_IVAR____TtC5Cosmo14TransferClient_attestationCount;
    v62 = *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationCount);
    v32 = __OFADD__(v62, 1);
    v63 = v62 + 1;
    if (v32)
    {
      __break(1u);
    }

    else
    {
      v16 = *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_sharedSecret);
      *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationCount) = v63;
      v122 = v19;

      sub_247D6B278(v16, v20);
      if (qword_27EE73290 == -1)
      {
LABEL_27:
        v64 = sub_247DD23CC();
        __swift_project_value_buffer(v64, qword_27EE7B908);
        sub_247D6A2E8(v16, v20);
        v65 = sub_247DD23AC();
        v66 = sub_247DD2F2C();
        sub_247D6A25C(v16, v20);
        v67 = v65;
        if (os_log_type_enabled(v65, v66))
        {
          v68 = swift_slowAlloc();
          LODWORD(v124) = v66;
          v69 = v68;
          v125 = swift_slowAlloc();
          v129[0] = v125;
          *v69 = 136315394;
          v70 = sub_247DC2028(v16, v20);
          v72 = v71;
          v73 = sub_247DD216C();
          v75 = v74;
          sub_247D6A1F8(v70, v72);
          v76 = sub_247D72868(v73, v75, v129);

          *(v69 + 4) = v76;
          *(v69 + 12) = 2080;
          v77 = sub_247DB0BB0();
          v79 = sub_247D72868(v77, v78, v129);

          *(v69 + 14) = v79;
          v65 = v67;
          _os_log_impl(&dword_247D56000, v67, v124, "[Initiate SPAKE2] password=%s, %s", v69, 0x16u);
          v80 = v125;
          swift_arrayDestroy();
          MEMORY[0x24C1BAF60](v80, -1, -1);
          MEMORY[0x24C1BAF60](v69, -1, -1);
        }

        v59 = v126;
        v58 = v127;
        v94 = *(v1 + v61);
        sub_247D6A2E8(v16, v20);
        v95 = sub_247DC2028(v16, v20);
        v97 = v96;
        sub_247D6A25C(v16, v20);
        type metadata accessor for Spake2Verifier(0);
        swift_allocObject();
        v98 = sub_247DBFFD4(v95, v97, v94);
        v57 = v122;
        if (!v98)
        {
          LOBYTE(v129[0]) = 0;
          sub_247DAEE90(v129, 0xD00000000000001FLL, 0x8000000247DD9E30);
          sub_247D6A25C(v16, v20);
          goto LABEL_49;
        }

        v56 = v98;
        sub_247D6A25C(v16, v20);
        goto LABEL_41;
      }
    }

    swift_once();
    goto LABEL_27;
  }

  v30 = *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_pinCode + 8);
  if (v30)
  {
    v31 = *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationCount);
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      __break(1u);
    }

    else
    {
      v13 = *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_pinCode);
      v121 = OBJC_IVAR____TtC5Cosmo14TransferClient_attestationCount;
      *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationCount) = v33;
      v34 = qword_27EE73290;

      if (v34 == -1)
      {
LABEL_18:
        v35 = sub_247DD23CC();
        __swift_project_value_buffer(v35, qword_27EE7B908);

        v36 = sub_247DD23AC();
        v37 = sub_247DD2F2C();

        v118 = v37;
        v38 = os_log_type_enabled(v36, v37);
        v122 = v19;
        if (v38)
        {
          v39 = swift_slowAlloc();
          v119 = v13;
          v40 = v39;
          v41 = swift_slowAlloc();
          v129[0] = v41;
          *v40 = 136315394;

          v42 = sub_247D72868(v119, v30, v129);
          v117 = v36;
          v43 = v42;

          *(v40 + 4) = v43;
          *(v40 + 12) = 2080;
          v44 = sub_247DB0BB0();
          v46 = v30;
          v47 = sub_247D72868(v44, v45, v129);

          *(v40 + 14) = v47;
          v30 = v46;
          v36 = v117;
          _os_log_impl(&dword_247D56000, v117, v118, "[Initiate SPAKE2] pin=%s, %s", v40, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C1BAF60](v41, -1, -1);
          v48 = v40;
          v13 = v119;
          MEMORY[0x24C1BAF60](v48, -1, -1);
        }

        v49 = *(v1 + v121);
        v120 = v30;
        v121 = v49;

        v50 = sub_247D97644(v13, v30);
        v52 = v51;
        sub_247DBAE20(&qword_27EE73AC0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
        sub_247DD2B1C();
        sub_247D6A2E8(v50, v52);
        sub_247DB9ECC(v50, v52, v6);
        sub_247D6A1F8(v50, v52);
        sub_247DD2B0C();
        sub_247D6A1F8(v50, v52);
        (*(v125 + 8))(v6, v4);
        sub_247DD2B2C();
        (*(v124 + 8))(v9, v7);

        v53 = v129[0];
        v54 = v129[1];
        type metadata accessor for Spake2Verifier(0);
        swift_allocObject();
        v55 = sub_247DBFFD4(v53, v54, v121);
        if (!v55)
        {
          LOBYTE(v129[0]) = 0;
          sub_247DAEE90(v129, 0xD00000000000001FLL, 0x8000000247DD9E30);
          goto LABEL_49;
        }

        v56 = v55;
        v57 = v122;
        v59 = v126;
        v58 = v127;
LABEL_41:
        *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_spake2Verifier) = v56;
        swift_retain_n();

        v99 = OBJC_IVAR____TtC5Cosmo14Spake2Verifier_verifier;
        swift_beginAccess();
        v100 = v123;
        (*(v58 + 16))(v59, v56 + v99, v123);
        v101 = sub_247DD234C();
        v103 = v102;

        (*(v58 + 8))(v59, v100);
        if (qword_27EE73290 != -1)
        {
          swift_once();
        }

        v104 = sub_247DD23CC();
        __swift_project_value_buffer(v104, qword_27EE7B908);
        sub_247D6A2E8(v101, v103);
        v105 = sub_247DD23AC();
        v106 = sub_247DD2F2C();
        sub_247D6A1F8(v101, v103);
        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          v122 = v57;
          v109 = v108;
          v128 = v108;
          *v107 = 136315650;
          v110 = sub_247DD216C();
          v112 = sub_247D72868(v110, v111, &v128);

          *(v107 + 4) = v112;
          *(v107 + 12) = 537002240;
          *(v107 + 16) = 8;
          v113 = sub_247DB0BB0();
          v115 = sub_247D72868(v113, v114, &v128);

          *(v107 + 17) = v115;
          _os_log_impl(&dword_247D56000, v105, v106, "[SPAKE2 Share] Sending shareV=%s, protocol-version=%hhu, %s", v107, 0x19u);
          swift_arrayDestroy();
          MEMORY[0x24C1BAF60](v109, -1, -1);
          MEMORY[0x24C1BAF60](v107, -1, -1);
        }

        v116 = swift_allocObject();
        swift_weakInit();
        sub_247DA530C(2, v101, v103, sub_247DBAE68, v116);

        LOBYTE(v128) = 4;
        sub_247DAC1A4(&v128);

        sub_247D6A1F8(v101, v103);
        goto LABEL_50;
      }
    }

    swift_once();
    goto LABEL_18;
  }

  v85 = qword_27EE73290;

  if (v85 != -1)
  {
    swift_once();
  }

  v86 = sub_247DD23CC();
  __swift_project_value_buffer(v86, qword_27EE7B908);
  v87 = sub_247DD23AC();
  v88 = sub_247DD2F2C();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v129[0] = v90;
    *v89 = 136315138;
    v91 = sub_247DB0BB0();
    v93 = sub_247D72868(v91, v92, v129);

    *(v89 + 4) = v93;
    _os_log_impl(&dword_247D56000, v87, v88, "[Initiate SPAKE2] Skipping, waiting for auth() to called first, %s", v89, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v90);
    MEMORY[0x24C1BAF60](v90, -1, -1);
    MEMORY[0x24C1BAF60](v89, -1, -1);

    goto LABEL_49;
  }

LABEL_50:
}

uint64_t sub_247DAEE90(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = sub_247DD2A7C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v57 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v58 = &v50 - v12;
  v54 = sub_247DD2A0C();
  MEMORY[0x28223BE20](v54);
  v56 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_247DD2ABC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *a1;
  v19 = *(v4 + 16);
  *v17 = v19;
  (*(v15 + 104))(v17, *MEMORY[0x277D85200], v14);
  v55 = v19;
  LOBYTE(v19) = sub_247DD2ADC();
  v21 = *(v15 + 8);
  v20 = v15 + 8;
  result = v21(v17, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_4;
  }

  v20 = OBJC_IVAR____TtC5Cosmo14TransferClient_state;
  if (*(v4 + OBJC_IVAR____TtC5Cosmo14TransferClient_state) > 0xFu)
  {
    return result;
  }

  v50 = v9;
  v53 = a2;
  if (qword_27EE73290 != -1)
  {
    goto LABEL_14;
  }

LABEL_4:
  v23 = sub_247DD23CC();
  __swift_project_value_buffer(v23, qword_27EE7B908);

  v24 = sub_247DD23AC();
  v25 = sub_247DD2F2C();

  v26 = os_log_type_enabled(v24, v25);
  v51 = v8;
  v52 = a3;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v27 = 136315394;
    *(v27 + 4) = sub_247D72868(v53, a3, aBlock);
    *(v27 + 12) = 2080;
    LOBYTE(v59) = *(v4 + v20);
    v29 = TransferClient.State.description.getter();
    v31 = sub_247D72868(v29, v30, aBlock);

    *(v27 + 14) = v31;
    _os_log_impl(&dword_247D56000, v24, v25, "[Close] Closing, reason='%s', state=%s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v28, -1, -1);
    MEMORY[0x24C1BAF60](v27, -1, -1);
  }

  LOBYTE(aBlock[0]) = 16;
  sub_247DAC1A4(aBlock);
  if (*(v4 + OBJC_IVAR____TtC5Cosmo14TransferClient_fileTransferClient) && v18 == 3)
  {

    v32 = sub_247DD23AC();
    v33 = sub_247DD2F2C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      aBlock[0] = v35;
      *v34 = 136315138;
      LOBYTE(v59) = *(v4 + v20);
      v36 = TransferClient.State.description.getter();
      v38 = sub_247D72868(v36, v37, aBlock);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_247D56000, v32, v33, "[Close] Sending request to TransferHost, state=%s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      MEMORY[0x24C1BAF60](v35, -1, -1);
      MEMORY[0x24C1BAF60](v34, -1, -1);
    }

    v39 = v52;
    v40 = swift_allocObject();
    swift_weakInit();
    v41 = swift_allocObject();
    *(v41 + 16) = v40;
    *(v41 + 24) = 3;
    v42 = v53;
    *(v41 + 32) = v53;
    *(v41 + 40) = v39;
    aBlock[4] = sub_247DBA8B8;
    aBlock[5] = v41;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_247D598D4;
    aBlock[3] = &block_descriptor_116;
    _Block_copy(aBlock);
    v59 = MEMORY[0x277D84F90];
    sub_247DBAE20(&unk_27EE73AF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
    sub_247D6AE30(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0, MEMORY[0x277D83970]);
    sub_247DD2FFC();
    sub_247DD2AAC();
    swift_allocObject();
    v43 = sub_247DD2A8C();

    v44 = v57;
    sub_247DD2A6C();
    v45 = v58;
    sub_247DD2ACC();
    v46 = v51;
    v47 = *(v50 + 8);
    v47(v44, v51);
    sub_247DD2F5C();
    v47(v45, v46);
    v48 = swift_allocObject();
    swift_weakInit();
    v49 = swift_allocObject();
    *(v49 + 16) = v48;
    *(v49 + 24) = v43;
    *(v49 + 32) = 3;
    *(v49 + 40) = v42;
    *(v49 + 48) = v39;

    sub_247DA79B4(1, sub_247DBA910, v49, &unk_2859E6240, sub_247DBA93C, &block_descriptor_126);
  }

  else
  {
    LOBYTE(aBlock[0]) = v18;
    return sub_247DBA4B0(aBlock);
  }
}

void sub_247DAF62C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_247DD2ABC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v8 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 17);
  v12 = *(v2 + 16);
  *v7 = v12;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v13 = v12;
  LOBYTE(v12) = sub_247DD2ADC();
  (*(v5 + 8))(v7, v4);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_32:
    swift_once();
LABEL_12:
    v28 = sub_247DD23CC();
    __swift_project_value_buffer(v28, qword_27EE7B908);
    v29 = sub_247DD23AC();
    v30 = sub_247DD2F2C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v68[0] = v32;
      *v31 = 136315138;
      v33 = sub_247DB0BB0();
      v35 = sub_247D72868(v33, v34, v68);

      *(v31 + 4) = v35;
      v36 = "[SPAKE2 Share Response] Disconnect detected, ignoring, %s";
LABEL_18:
      _os_log_impl(&dword_247D56000, v29, v30, v36, v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      MEMORY[0x24C1BAF60](v32, -1, -1);
      MEMORY[0x24C1BAF60](v31, -1, -1);

LABEL_19:

      return;
    }

LABEL_20:

    return;
  }

  v14 = *(v2 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
  if (v14 > 0xF)
  {
    v27 = qword_27EE73290;

    if (v27 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

  if (v14 != 4)
  {
    v37 = qword_27EE73290;

    if (v37 != -1)
    {
      swift_once();
    }

    v38 = sub_247DD23CC();
    __swift_project_value_buffer(v38, qword_27EE7B908);
    v29 = sub_247DD23AC();
    v30 = sub_247DD2F0C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v68[0] = v32;
      *v31 = 136315138;
      v39 = sub_247DB0BB0();
      v41 = sub_247D72868(v39, v40, v68);

      *(v31 + 4) = v41;
      v36 = "[SPAKE2 Share Response] Unexpected state, %s";
      goto LABEL_18;
    }

    goto LABEL_20;
  }

  if (!*(v2 + OBJC_IVAR____TtC5Cosmo14TransferClient_spake2Verifier))
  {
    LOBYTE(v68[0]) = 0;

    sub_247DAEE90(v68, 0xD000000000000038, 0x8000000247DD9E80);
    goto LABEL_19;
  }

  if (v11)
  {
    v15 = qword_27EE73290;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = sub_247DD23CC();
    __swift_project_value_buffer(v16, qword_27EE7B908);
    sub_247D6B69C(v9, v8, v10);
    v17 = sub_247DD23AC();
    v18 = sub_247DD2F0C();
    sub_247D868B0(v9, v8, v10, 1);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v70 = v20;
      *v19 = 136315394;
      v68[0] = v9;
      v68[1] = v8;
      v69 = v10;
      sub_247D6B69C(v9, v8, v10);
      v21 = sub_247DD2CFC();
      v23 = sub_247D72868(v21, v22, &v70);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      v24 = sub_247DB0BB0();
      v26 = sub_247D72868(v24, v25, &v70);

      *(v19 + 14) = v26;
      _os_log_impl(&dword_247D56000, v17, v18, "[SPAKE2 Share Response] Failed to receive Spake2Share-response, error=%s %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v20, -1, -1);
      MEMORY[0x24C1BAF60](v19, -1, -1);
    }

    LOBYTE(v68[0]) = 2;
    sub_247DAEE90(v68, 0xD00000000000001CLL, 0x8000000247DD9EC0);

    goto LABEL_19;
  }

  LOBYTE(v68[0]) = 5;

  sub_247DAC1A4(v68);
  if (qword_27EE73290 != -1)
  {
    swift_once();
  }

  v42 = sub_247DD23CC();
  __swift_project_value_buffer(v42, qword_27EE7B908);
  sub_247D6A2E8(v9, v8);
  v43 = sub_247DD23AC();
  v44 = sub_247DD2F2C();
  sub_247D868B0(v9, v8, v10, 0);
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v68[0] = v67;
    *v45 = 136315394;
    v46 = sub_247DD216C();
    v48 = sub_247D72868(v46, v47, v68);

    *(v45 + 4) = v48;
    *(v45 + 12) = 2080;
    v49 = sub_247DB0BB0();
    v51 = sub_247D72868(v49, v50, v68);

    *(v45 + 14) = v51;
    _os_log_impl(&dword_247D56000, v43, v44, "[SPAKE2 Share Response] shareP=%s, %s", v45, 0x16u);
    v52 = v67;
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v52, -1, -1);
    MEMORY[0x24C1BAF60](v45, -1, -1);
  }

  swift_beginAccess();
  v53 = sub_247DD232C();
  v55 = v54;
  swift_endAccess();
  sub_247D6A2E8(v53, v55);
  v56 = sub_247DD23AC();
  v57 = sub_247DD2F2C();
  sub_247D6A1F8(v53, v55);
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v68[0] = v59;
    *v58 = 136315394;
    v60 = sub_247DD216C();
    v62 = sub_247D72868(v60, v61, v68);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2080;
    v63 = sub_247DB0BB0();
    v65 = sub_247D72868(v63, v64, v68);

    *(v58 + 14) = v65;
    _os_log_impl(&dword_247D56000, v56, v57, "[SPAKE2 Confirm] Sending confirmV=%s %s", v58, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v59, -1, -1);
    MEMORY[0x24C1BAF60](v58, -1, -1);
  }

  if (*(v2 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationChannel))
  {
    v66 = swift_allocObject();
    swift_weakInit();

    sub_247DA5614(v53, v55, sub_247DBAFE0, v66);
  }

  LOBYTE(v68[0]) = 6;
  sub_247DAC1A4(v68);

  sub_247D6A1F8(v53, v55);
}

uint64_t sub_247DB00D4(uint64_t *a1, uint64_t a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *(a1 + 17);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9[0] = v4;
    v9[1] = v5;
    v10 = v6;
    v11 = v7;
    a3(v9);
  }

  return result;
}

void sub_247DB0160(uint64_t a1)
{
  v2 = v1;
  v4 = sub_247DD2ABC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v65[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v8 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 17);
  v12 = *(v2 + 16);
  *v7 = v12;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v13 = v12;
  LOBYTE(v12) = sub_247DD2ADC();
  (*(v5 + 8))(v7, v4);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_32:
    swift_once();
    goto LABEL_13;
  }

  v14 = *(v2 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
  if (v14 <= 0xF)
  {
    if (v14 == 6)
    {
      v15 = *(v2 + OBJC_IVAR____TtC5Cosmo14TransferClient_spake2Verifier);
      if (v15)
      {
        if (v11)
        {
          v16 = qword_27EE73290;

          if (v16 != -1)
          {
            swift_once();
          }

          v17 = sub_247DD23CC();
          __swift_project_value_buffer(v17, qword_27EE7B908);
          sub_247D6B69C(v9, v8, v10);
          v18 = sub_247DD23AC();
          v19 = sub_247DD2F0C();
          sub_247D868B0(v9, v8, v10, 1);
          if (os_log_type_enabled(v18, v19))
          {
            v20 = swift_slowAlloc();
            v21 = swift_slowAlloc();
            v67 = v21;
            *v20 = 136315394;
            v65[0] = v9;
            v65[1] = v8;
            v66 = v10;
            sub_247D6B69C(v9, v8, v10);
            v22 = sub_247DD2CFC();
            v24 = sub_247D72868(v22, v23, &v67);

            *(v20 + 4) = v24;
            *(v20 + 12) = 2080;
            v25 = sub_247DB0BB0();
            v27 = sub_247D72868(v25, v26, &v67);

            *(v20 + 14) = v27;
            _os_log_impl(&dword_247D56000, v18, v19, "[SPAKE2 Share Confirm] Failed to receive Spake2Confirm-response, error=%s %s", v20, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x24C1BAF60](v21, -1, -1);
            MEMORY[0x24C1BAF60](v20, -1, -1);
          }

          LOBYTE(v65[0]) = 2;
          sub_247DAEE90(v65, 0xD00000000000001ELL, 0x8000000247DD9F50);
        }

        else
        {
          LOBYTE(v65[0]) = 7;

          sub_247DAC1A4(v65);
          if (qword_27EE73290 != -1)
          {
            swift_once();
          }

          v43 = sub_247DD23CC();
          __swift_project_value_buffer(v43, qword_27EE7B908);
          sub_247D6A2E8(v9, v8);
          v44 = sub_247DD23AC();
          v45 = sub_247DD2F2C();
          sub_247D868B0(v9, v8, v10, 0);
          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            v65[0] = v47;
            *v46 = 136315394;
            v48 = sub_247DD216C();
            v64 = v15;
            v50 = sub_247D72868(v48, v49, v65);

            *(v46 + 4) = v50;
            *(v46 + 12) = 2080;
            v51 = sub_247DB0BB0();
            v53 = sub_247D72868(v51, v52, v65);

            *(v46 + 14) = v53;
            _os_log_impl(&dword_247D56000, v44, v45, "[SPAKE2 Confirm Response] confirmP=%s, %s", v46, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x24C1BAF60](v47, -1, -1);
            MEMORY[0x24C1BAF60](v46, -1, -1);
          }

          sub_247DC0588(v9, v8);
          *(v2 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationResult) = 0;
          v54 = sub_247DD23AC();
          v55 = sub_247DD2F2C();
          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            v57 = swift_slowAlloc();
            v65[0] = v57;
            *v56 = 136315138;
            v58 = sub_247DB0BB0();
            v60 = sub_247D72868(v58, v59, v65);

            *(v56 + 4) = v60;
            _os_log_impl(&dword_247D56000, v54, v55, "[SPAKE2 Confirm Response] Seed validated, %s", v56, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v57);
            MEMORY[0x24C1BAF60](v57, -1, -1);
            MEMORY[0x24C1BAF60](v56, -1, -1);
          }

          sub_247DB0CA8();
          v61 = v2 + OBJC_IVAR____TtC5Cosmo14TransferClient_delegate;
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v62 = *(v61 + 8);
            ObjectType = swift_getObjectType();
            (*(v62 + 8))(v2, ObjectType, v62);

            swift_unknownObjectRelease();
            goto LABEL_20;
          }
        }
      }

      else
      {
        LOBYTE(v65[0]) = 0;

        sub_247DAEE90(v65, 0xD00000000000003ALL, 0x8000000247DD9F10);
      }

LABEL_20:

      return;
    }

    v38 = qword_27EE73290;

    if (v38 != -1)
    {
      swift_once();
    }

    v39 = sub_247DD23CC();
    __swift_project_value_buffer(v39, qword_27EE7B908);
    v30 = sub_247DD23AC();
    v31 = sub_247DD2F0C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v65[0] = v33;
      *v32 = 136315138;
      v40 = sub_247DB0BB0();
      v42 = sub_247D72868(v40, v41, v65);

      *(v32 + 4) = v42;
      v37 = "[SPAKE2 Confirm Response] Unexpected state, %s";
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  v28 = qword_27EE73290;

  if (v28 != -1)
  {
    goto LABEL_32;
  }

LABEL_13:
  v29 = sub_247DD23CC();
  __swift_project_value_buffer(v29, qword_27EE7B908);
  v30 = sub_247DD23AC();
  v31 = sub_247DD2F2C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v65[0] = v33;
    *v32 = 136315138;
    v34 = sub_247DB0BB0();
    v36 = sub_247D72868(v34, v35, v65);

    *(v32 + 4) = v36;
    v37 = "[SPAKE2 Confirm Response] Disconnect detected, ignoring, %s";
LABEL_19:
    _os_log_impl(&dword_247D56000, v30, v31, v37, v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
    MEMORY[0x24C1BAF60](v33, -1, -1);
    MEMORY[0x24C1BAF60](v32, -1, -1);

    goto LABEL_20;
  }

LABEL_21:
}

uint64_t sub_247DB0BB0()
{
  sub_247DD304C();

  v0 = sub_247DD321C();
  MEMORY[0x24C1BA0A0](v0);

  MEMORY[0x24C1BA0A0](0x3D657461747320, 0xE700000000000000);
  v1 = TransferClient.State.description.getter();
  MEMORY[0x24C1BA0A0](v1);

  return 0x612D747365747461;
}

uint64_t sub_247DB0CA8()
{
  v3 = v0;
  v4 = sub_247DD2ABC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v3 + 16);
  *v7 = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v9 = v8;
  v10 = sub_247DD2ADC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_4;
  }

  v1 = *(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_spake2Verifier);
  if (!v1)
  {
    LOBYTE(v64[0]) = 0;
    return sub_247DAEE90(v64, 0xD000000000000037, 0x8000000247DD9F70);
  }

  v11 = *MEMORY[0x277CDC040];

  KeyPair = createKeyPair(v11, 256);
  v12 = secIdentityFromKeyPair(KeyPair);
  *(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_localSecIdentity) = v12;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v62 = v12;
  v13 = publicKeyFromIdentity(v12);
  v2 = sub_247DD217C();
  v10 = v14;

  v15 = (v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_localPublicKey);
  v16 = *(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_localPublicKey);
  v17 = *(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_localPublicKey + 8);
  *v15 = v2;
  v15[1] = v10;
  sub_247D6A2E8(v2, v10);
  sub_247D6A25C(v16, v17);
  if (qword_27EE73290 != -1)
  {
    goto LABEL_20;
  }

LABEL_4:
  v18 = sub_247DD23CC();
  __swift_project_value_buffer(v18, qword_27EE7B908);
  sub_247D6A2E8(v2, v10);

  v19 = sub_247DD23AC();
  v20 = sub_247DD2F2C();
  sub_247D6A1F8(v2, v10);

  v21 = os_log_type_enabled(v19, v20);
  v60 = v1;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v64[0] = v23;
    *v22 = 136315394;
    v24 = sub_247DD216C();
    v26 = v10;
    v27 = sub_247D72868(v24, v25, v64);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2080;
    LOBYTE(v63) = *(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
    v28 = TransferClient.State.description.getter();
    v30 = sub_247D72868(v28, v29, v64);

    *(v22 + 14) = v30;
    v10 = v26;
    _os_log_impl(&dword_247D56000, v19, v20, "[FileTransferSetup] Generated localPublicKey=%s, state=%s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v23, -1, -1);
    MEMORY[0x24C1BAF60](v22, -1, -1);
  }

  v31 = sub_247DBF19C(v2, v10);
  if (v32 >> 60 == 15)
  {

    v34 = sub_247DD23AC();
    v35 = sub_247DD2F0C();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = v10;
      v38 = swift_slowAlloc();
      v64[0] = v38;
      *v36 = 136315138;
      LOBYTE(v63) = *(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
      v39 = TransferClient.State.description.getter();
      v41 = sub_247D72868(v39, v40, v64);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_247D56000, v34, v35, "[FileTransferSetup] Spake2Verifier.encrypt() returned nil, %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      v42 = v38;
      v10 = v37;
      MEMORY[0x24C1BAF60](v42, -1, -1);
      MEMORY[0x24C1BAF60](v36, -1, -1);
    }

    LOBYTE(v64[0]) = 0;
    sub_247DAEE90(v64, 0xD000000000000025, 0x8000000247DD9FE0);

    swift_unknownObjectRelease();
    v43 = v2;
    v44 = v10;
  }

  else
  {
    v59 = v10;
    v45 = v31;
    v46 = v32;
    v47 = sub_247DD216C();
    v49 = v48;

    sub_247D6A25C(v45, v46);

    v50 = sub_247DD23AC();
    v51 = sub_247DD2F2C();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v64[0] = v53;
      *v52 = 136315394;
      *(v52 + 4) = sub_247D72868(v47, v49, v64);
      *(v52 + 12) = 2080;
      LOBYTE(v63) = *(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
      v54 = TransferClient.State.description.getter();
      v56 = sub_247D72868(v54, v55, v64);

      *(v52 + 14) = v56;
      _os_log_impl(&dword_247D56000, v50, v51, "[FileTransferSetup] Sending encryptedLocalPublicKey=%s, state=%s", v52, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v53, -1, -1);
      MEMORY[0x24C1BAF60](v52, -1, -1);
    }

    if (*(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationChannel))
    {
      v57 = swift_allocObject();
      swift_weakInit();

      sub_247DA5910(v47, v49, sub_247DBB198, v57);
    }

    else
    {
    }

    LOBYTE(v64[0]) = 8;
    sub_247DAC1A4(v64);

    swift_unknownObjectRelease();
    v43 = v2;
    v44 = v59;
  }

  sub_247D6A1F8(v43, v44);
}

uint64_t sub_247DB157C(__int128 *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v2 = *(a1 + 32);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6[0] = v4;
    v6[1] = v5;
    v7 = v2;
    sub_247DB15F8(v6);
  }

  return result;
}

void sub_247DB15F8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE733A8, &unk_247DD61B0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v145[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v145[-v8];
  v10 = sub_247DD225C();
  v156 = *(v10 - 8);
  v157 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v145[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v155 = &v145[-v14];
  v15 = sub_247DD2ABC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v145[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *(a1 + 8);
  v159 = *a1;
  v160 = v19;
  v20 = *(a1 + 24);
  v158 = *(a1 + 16);
  v21 = *(a1 + 32);
  v22 = *(v2 + 16);
  *v18 = v22;
  (*(v16 + 104))(v18, *MEMORY[0x277D85200], v15);
  v23 = v22;
  v24 = sub_247DD2ADC();
  v26 = *(v16 + 8);
  v25 = v16 + 8;
  v26(v18, v15);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_54;
  }

  v18 = OBJC_IVAR____TtC5Cosmo14TransferClient_state;
  v27 = *(v2 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
  if (v27 > 0xF)
  {
    if (qword_27EE73290 != -1)
    {
      swift_once();
    }

    v46 = sub_247DD23CC();
    __swift_project_value_buffer(v46, qword_27EE7B908);

    v47 = sub_247DD23AC();
    v48 = sub_247DD2F2C();

    if (!os_log_type_enabled(v47, v48))
    {
      goto LABEL_20;
    }

    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v161[0] = v50;
    *v49 = 136315138;
    LOBYTE(v163[0]) = *(v18 + v2);
    v51 = TransferClient.State.description.getter();
    v53 = sub_247D72868(v51, v52, v161);

    *(v49 + 4) = v53;
    v54 = "[FileTransferSetup Response] Disconnect detected, ignoring, state=%s";
    goto LABEL_19;
  }

  if (v27 != 8)
  {
    if (qword_27EE73290 != -1)
    {
      swift_once();
    }

    v55 = sub_247DD23CC();
    __swift_project_value_buffer(v55, qword_27EE7B908);

    v47 = sub_247DD23AC();
    v48 = sub_247DD2F0C();

    if (!os_log_type_enabled(v47, v48))
    {
      goto LABEL_20;
    }

    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v161[0] = v50;
    *v49 = 136315138;
    LOBYTE(v163[0]) = *(v18 + v2);
    v56 = TransferClient.State.description.getter();
    v58 = sub_247D72868(v56, v57, v161);

    *(v49 + 4) = v58;
    v54 = "[FileTransferSetup Response] Unexpected state, state=%s";
LABEL_19:
    _os_log_impl(&dword_247D56000, v47, v48, v54, v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v50);
    MEMORY[0x24C1BAF60](v50, -1, -1);
    MEMORY[0x24C1BAF60](v49, -1, -1);
LABEL_20:

    return;
  }

  if (!*(v2 + OBJC_IVAR____TtC5Cosmo14TransferClient_spake2Verifier))
  {
    LOBYTE(v161[0]) = 0;
    sub_247DAEE90(v161, 0xD000000000000046, 0x8000000247DDA010);
    return;
  }

  if (v21)
  {
    v28 = qword_27EE73290;

    if (v28 != -1)
    {
      swift_once();
    }

    v29 = sub_247DD23CC();
    __swift_project_value_buffer(v29, qword_27EE7B908);

    v30 = v159;
    v31 = v160;
    v32 = v158;
    sub_247DBB338(v159, v160, v158, v20, 1);
    v33 = v30;
    v34 = sub_247DD23AC();
    v35 = sub_247DD2F0C();
    sub_247DBB26C(v33, v31, v32, v20, 1);

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v163[0] = v37;
      *v36 = 136315394;
      v161[0] = v33;
      v161[1] = v31;
      v162 = v32;
      sub_247D6B69C(v33, v31, v32);
      v38 = sub_247DD2CFC();
      v40 = sub_247D72868(v38, v39, v163);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2080;
      LOBYTE(v161[0]) = *(v18 + v2);
      v41 = TransferClient.State.description.getter();
      v43 = sub_247D72868(v41, v42, v163);

      *(v36 + 14) = v43;
      _os_log_impl(&dword_247D56000, v34, v35, "[FileTransferSetup Response] Failed to receive file-transfer-setup-response, error=%s state=%s", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v37, -1, -1);
      MEMORY[0x24C1BAF60](v36, -1, -1);
    }

    LOBYTE(v161[0]) = 2;
    v44 = 0xD000000000000022;
    v45 = 0x8000000247DDA060;
LABEL_28:
    sub_247DAEE90(v161, v44, v45);
LABEL_46:

    return;
  }

  LOBYTE(v161[0]) = 9;

  sub_247DAC1A4(v161);
  v59 = sub_247DD210C();
  v153 = v60;
  if (v60 >> 60 == 15)
  {
    if (qword_27EE73290 != -1)
    {
      swift_once();
    }

    v61 = sub_247DD23CC();
    __swift_project_value_buffer(v61, qword_27EE7B908);
    v62 = sub_247DD23AC();
    v63 = sub_247DD2F0C();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_247D56000, v62, v63, "FileTransferSetup Response] Failed to deserialize encryptedRemotePublicKey from base64", v64, 2u);
      MEMORY[0x24C1BAF60](v64, -1, -1);
    }

    LOBYTE(v161[0]) = 1;
    v45 = 0x8000000247DD8B60;
    v44 = 0xD00000000000002DLL;
    goto LABEL_28;
  }

  v65 = v59;
  v66 = sub_247DD210C();
  if (v67 >> 60 == 15)
  {
    v68 = v65;
    if (qword_27EE73290 != -1)
    {
      swift_once();
    }

    v69 = sub_247DD23CC();
    __swift_project_value_buffer(v69, qword_27EE7B908);
    v70 = sub_247DD23AC();
    v71 = sub_247DD2F0C();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_247D56000, v70, v71, "FileTransferSetup Response] Failed to deserialize fileTransferServiceUUID from base64", v72, 2u);
      MEMORY[0x24C1BAF60](v72, -1, -1);
    }

    LOBYTE(v161[0]) = 1;
    sub_247DAEE90(v161, 0xD00000000000002DLL, 0x8000000247DD8B60);
    v73 = v68;
    goto LABEL_45;
  }

  v150 = v66;
  v151 = v67;
  if (qword_27EE73290 != -1)
  {
    swift_once();
  }

  v74 = sub_247DD23CC();
  v75 = __swift_project_value_buffer(v74, qword_27EE7B908);
  v76 = v160;

  v149 = v75;
  v77 = sub_247DD23AC();
  v78 = sub_247DD2F2C();

  v148 = v20;

  v146 = v78;
  v147 = v77;
  v79 = os_log_type_enabled(v77, v78);
  v152 = v65;
  if (v79)
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v161[0] = v81;
    *v80 = 136315650;
    *(v80 + 4) = sub_247D72868(v159, v76, v161);
    *(v80 + 12) = 2080;
    v82 = v148;
    *(v80 + 14) = sub_247D72868(v158, v148, v161);
    *(v80 + 22) = 2080;
    LOBYTE(v163[0]) = *(v18 + v2);
    v83 = TransferClient.State.description.getter();
    v85 = sub_247D72868(v83, v84, v161);

    *(v80 + 24) = v85;
    v86 = v147;
    _os_log_impl(&dword_247D56000, v147, v146, "[FileTransferSetup Response] Received response, encryptedRemotePublicKey=%s encryptedServiceUUID=%s state=%s", v80, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v81, -1, -1);
    v87 = v80;
    v65 = v152;
    MEMORY[0x24C1BAF60](v87, -1, -1);
  }

  else
  {

    v82 = v148;
  }

  v88 = sub_247DBF6AC(v65, v153);
  if (v89 >> 60 == 15)
  {
    goto LABEL_41;
  }

  v147 = v88;
  v148 = v89;
  v98 = sub_247DBF6AC(v150, v151);
  v100 = v147;
  if (v99 >> 60 == 15)
  {
    sub_247D6A25C(v147, v148);
LABEL_41:
    v90 = v160;

    v91 = sub_247DD23AC();
    v92 = sub_247DD2F0C();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v161[0] = v94;
      *v93 = 136315650;
      *(v93 + 4) = sub_247D72868(v159, v90, v161);
      *(v93 + 12) = 2080;
      *(v93 + 14) = sub_247D72868(v158, v82, v161);
      *(v93 + 22) = 2080;
      LOBYTE(v163[0]) = *(v18 + v2);
      v95 = TransferClient.State.description.getter();
      v97 = sub_247D72868(v95, v96, v161);

      *(v93 + 24) = v97;
      _os_log_impl(&dword_247D56000, v91, v92, "[FileTransferSetup Response] Spake2Verifier.decrypt() returned nil for encryptedRemotePublicKey=%s encryptedServiceUUID=%s state=%s", v93, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v94, -1, -1);
      MEMORY[0x24C1BAF60](v93, -1, -1);
    }

    LOBYTE(v161[0]) = 0;
    sub_247DAEE90(v161, 0xD000000000000025, 0x8000000247DDA0C0);
LABEL_44:
    sub_247D6A25C(v150, v151);
    v73 = v152;
LABEL_45:
    sub_247D6A25C(v73, v153);
    goto LABEL_46;
  }

  v25 = v98;
  v21 = v99;
  sub_247D6B278(v147, v148);
  sub_247D6B278(v25, v21);
  sub_247D94680(v25, v21, v9);
  v15 = v156;
  v20 = v100;
  v24 = v157;
  if ((*(v156 + 48))(v9, 1, v157) == 1)
  {
    sub_247D6BAD4(v9, &qword_27EE733A8, &unk_247DD61B0);

    sub_247D6B278(v25, v21);
    v101 = sub_247DD23AC();
    v102 = sub_247DD2F0C();
    sub_247D6A25C(v25, v21);

    v103 = v25;
    if (os_log_type_enabled(v101, v102))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v161[0] = v105;
      *v104 = 136315394;
      v106 = sub_247DD216C();
      v108 = sub_247D72868(v106, v107, v161);

      *(v104 + 4) = v108;
      *(v104 + 12) = 2080;
      LOBYTE(v163[0]) = *(v18 + v2);
      v109 = TransferClient.State.description.getter();
      v111 = sub_247D72868(v109, v110, v161);

      *(v104 + 14) = v111;
      _os_log_impl(&dword_247D56000, v101, v102, "[FileTransferSetup Response] Could not initialize UUID from decryptedServiceUUIDData=%s state=%s", v104, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v105, -1, -1);
      MEMORY[0x24C1BAF60](v104, -1, -1);
    }

    LOBYTE(v161[0]) = 0;
    sub_247DAEE90(v161, 0xD00000000000001ELL, 0x8000000247DDA0F0);
    v113 = v147;
    v112 = v148;
    sub_247D6A25C(v147, v148);
    sub_247D6A25C(v113, v112);
    sub_247D6A25C(v103, v21);
    goto LABEL_44;
  }

LABEL_54:
  v114 = v20;
  v115 = v148;
  sub_247D6A25C(v114, v148);
  sub_247D6A25C(v25, v21);
  v116 = v155;
  (*(v15 + 32))(v155, v9, v24);
  v117 = (v2 + OBJC_IVAR____TtC5Cosmo14TransferClient_remotePublicKey);
  v118 = v15;
  v120 = *(v2 + OBJC_IVAR____TtC5Cosmo14TransferClient_remotePublicKey);
  v119 = *(v2 + OBJC_IVAR____TtC5Cosmo14TransferClient_remotePublicKey + 8);
  v121 = v147;
  *v117 = v147;
  v117[1] = v115;
  sub_247D6A2E8(v121, v115);
  sub_247D6A25C(v120, v119);
  v122 = *(v118 + 16);
  v122(v7, v116, v24);
  (*(v118 + 56))(v7, 0, 1, v24);
  v123 = v147;
  v124 = OBJC_IVAR____TtC5Cosmo14TransferClient_fileTransferServiceUUID;
  swift_beginAccess();
  sub_247DBB388(v7, v2 + v124);
  swift_endAccess();
  v122(v13, v116, v24);
  v125 = v148;

  sub_247D6B278(v123, v125);
  v126 = sub_247DD23AC();
  v127 = sub_247DD2F2C();
  sub_247D6A25C(v123, v125);

  if (os_log_type_enabled(v126, v127))
  {
    v128 = swift_slowAlloc();
    v160 = swift_slowAlloc();
    v161[0] = v160;
    *v128 = 136315650;
    v129 = sub_247DD216C();
    v131 = sub_247D72868(v129, v130, v161);

    *(v128 + 4) = v131;
    *(v128 + 12) = 2080;
    sub_247DBAE20(&unk_27EE73510, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v132 = v157;
    v133 = sub_247DD321C();
    v135 = v134;
    LODWORD(v159) = v127;
    v136 = *(v156 + 8);
    v137 = v13;
    v138 = v132;
    v136(v137, v132);
    v139 = sub_247D72868(v133, v135, v161);
    v125 = v148;

    *(v128 + 14) = v139;
    *(v128 + 22) = 2080;
    LOBYTE(v163[0]) = *(v18 + v2);
    v140 = TransferClient.State.description.getter();
    v142 = sub_247D72868(v140, v141, v161);

    *(v128 + 24) = v142;
    _os_log_impl(&dword_247D56000, v126, v159, "[FileTransferSetup Response] Finished decryption, remotePublicKey=%s fileTransferServiceUUID=%s state=%s", v128, 0x20u);
    v143 = v160;
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v143, -1, -1);
    v123 = v147;
    MEMORY[0x24C1BAF60](v128, -1, -1);
  }

  else
  {

    v136 = *(v156 + 8);
    v144 = v13;
    v138 = v157;
    v136(v144, v157);
  }

  sub_247DB2964();
  sub_247D6A25C(v150, v151);
  sub_247D6A25C(v152, v153);

  sub_247D6A25C(v123, v125);
  v136(v155, v138);
}

void sub_247DB2964()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733B0, &unk_247DD3F80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v31 - v3;
  v5 = type metadata accessor for NetworkDescriptor(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  v12 = sub_247DD2ABC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v1 + 16);
  *v15 = v16;
  (*(v13 + 104))(v15, *MEMORY[0x277D85200], v12);
  v32 = v16;
  LOBYTE(v16) = sub_247DD2ADC();
  (*(v13 + 8))(v15, v12);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  sub_247DB2E94(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_247D6BAD4(v4, &unk_27EE733B0, &unk_247DD3F80);
    if (qword_27EE73290 == -1)
    {
LABEL_4:
      v17 = sub_247DD23CC();
      __swift_project_value_buffer(v17, qword_27EE7B908);

      v18 = sub_247DD23AC();
      v19 = sub_247DD2F0C();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v33[0] = v21;
        *v20 = 136315138;
        v34 = *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
        v22 = TransferClient.State.description.getter();
        v24 = sub_247D72868(v22, v23, v33);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_247D56000, v18, v19, "[FileTransferSetup] Failed to setup file-transfer-browser, state=%s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v21);
        MEMORY[0x24C1BAF60](v21, -1, -1);
        MEMORY[0x24C1BAF60](v20, -1, -1);
      }

      return;
    }

LABEL_11:
    swift_once();
    goto LABEL_4;
  }

  sub_247DBAA04(v4, v11, type metadata accessor for NetworkDescriptor);
  sub_247DBAB44(v11, v9, type metadata accessor for NetworkDescriptor);
  type metadata accessor for CosmoBrowser(0);
  v25 = swift_allocObject();
  *(v25 + 24) = 0;
  *(v25 + 16) = 0;
  *(v25 + OBJC_IVAR____TtC5Cosmo12CosmoBrowser_browser) = 0;
  sub_247DBAB44(v9, v25 + OBJC_IVAR____TtC5Cosmo12CosmoBrowser_descriptor, type metadata accessor for NetworkDescriptor);
  v26 = v32;
  sub_247DBAA6C(v9, type metadata accessor for NetworkDescriptor);
  *(v25 + OBJC_IVAR____TtC5Cosmo12CosmoBrowser_queue) = v26;
  v27 = OBJC_IVAR____TtC5Cosmo14TransferClient_fileTransferBrowser;
  *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_fileTransferBrowser) = v25;

  v28 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v29 = *(v25 + 16);
  v30 = *(v25 + 24);
  *(v25 + 16) = sub_247DBB3F8;
  *(v25 + 24) = v28;

  sub_247D6A24C(v29, v30);

  v34 = 10;
  sub_247DAC1A4(&v34);
  if (*(v1 + v27))
  {

    sub_247D9A43C();
  }

  sub_247DBAA6C(v11, type metadata accessor for NetworkDescriptor);
}

uint64_t sub_247DB2E94@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE733A8, &unk_247DD61B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v38 - v5;
  v7 = sub_247DD225C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_247DD2ABC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v2 + 16);
  *v14 = v15;
  (*(v12 + 104))(v14, *MEMORY[0x277D85200], v11);
  v16 = v15;
  LOBYTE(v15) = sub_247DD2ADC();
  (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_8;
  }

  v17 = *(v2 + OBJC_IVAR____TtC5Cosmo14TransferClient_localSecIdentity);
  if (v17)
  {
    v18 = *(v2 + OBJC_IVAR____TtC5Cosmo14TransferClient_localPublicKey + 8);
    if (v18 >> 60 != 15)
    {
      v19 = *(v2 + OBJC_IVAR____TtC5Cosmo14TransferClient_remotePublicKey + 8);
      if (v19 >> 60 != 15)
      {
        v20 = *(v2 + OBJC_IVAR____TtC5Cosmo14TransferClient_remotePublicKey);
        v39 = *(v2 + OBJC_IVAR____TtC5Cosmo14TransferClient_localPublicKey);
        v40 = v20;
        v21 = OBJC_IVAR____TtC5Cosmo14TransferClient_fileTransferServiceUUID;
        swift_beginAccess();
        sub_247D6BA6C(v2 + v21, v6, &qword_27EE733A8, &unk_247DD61B0);
        if ((*(v8 + 48))(v6, 1, v7) != 1)
        {
          v32 = *(v8 + 32);
          v32(v10, v6, v7);
          v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73580, &qword_247DD4348);
          v34 = *(v33 + 96);
          v35 = *(v33 + 112);
          *a1 = 0;
          v36 = v39;
          *(a1 + 8) = v40;
          *(a1 + 16) = v19;
          *(a1 + 24) = v36;
          *(a1 + 32) = v18;
          *(a1 + 40) = v17;
          v32((a1 + v34), v10, v7);
          *(a1 + v35) = 1;
          v37 = type metadata accessor for NetworkDescriptor(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v37 - 8) + 56))(a1, 0, 1, v37);
          swift_unknownObjectRetain();
          sub_247D6B278(v36, v18);
          return sub_247D6B278(v40, v19);
        }

        sub_247D6BAD4(v6, &qword_27EE733A8, &unk_247DD61B0);
      }
    }
  }

  if (qword_27EE73290 != -1)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = sub_247DD23CC();
  __swift_project_value_buffer(v22, qword_27EE7B908);

  v23 = sub_247DD23AC();
  v24 = sub_247DD2F0C();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v42 = v26;
    *v25 = 136315138;
    v41 = *(v2 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
    v27 = TransferClient.State.description.getter();
    v29 = sub_247D72868(v27, v28, &v42);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_247D56000, v23, v24, "[FileTransferSetup] Unexpected, missing needed value, state=%s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    MEMORY[0x24C1BAF60](v26, -1, -1);
    MEMORY[0x24C1BAF60](v25, -1, -1);
  }

  v30 = type metadata accessor for NetworkDescriptor(0);
  return (*(*(v30 - 8) + 56))(a1, 1, 1, v30);
}

void sub_247DB3398(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (v2)
    {
      if (qword_27EE73290 != -1)
      {
        swift_once();
      }

      v4 = sub_247DD23CC();
      __swift_project_value_buffer(v4, qword_27EE7B908);

      v5 = sub_247DD23AC();
      v6 = sub_247DD2F2C();

      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_13;
      }

      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v17 = v8;
      *v7 = 136315138;
      v9 = TransferClient.State.description.getter();
      v11 = sub_247D72868(v9, v10, &v17);

      *(v7 + 4) = v11;
      v12 = "[FileTransferSetup] Advertised file-transfer-endpoint removed, state=%s";
LABEL_12:
      _os_log_impl(&dword_247D56000, v5, v6, v12, v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x24C1BAF60](v8, -1, -1);
      MEMORY[0x24C1BAF60](v7, -1, -1);
LABEL_13:

      return;
    }

    if (*(Strong + OBJC_IVAR____TtC5Cosmo14TransferClient_state) > 0xAu)
    {
      if (qword_27EE73290 != -1)
      {
        swift_once();
      }

      v13 = sub_247DD23CC();
      __swift_project_value_buffer(v13, qword_27EE7B908);

      v5 = sub_247DD23AC();
      v6 = sub_247DD2F2C();

      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_13;
      }

      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v17 = v8;
      *v7 = 136315138;
      v14 = TransferClient.State.description.getter();
      v16 = sub_247D72868(v14, v15, &v17);

      *(v7 + 4) = v16;
      v12 = "[FileTransferSetup] Ignoring add of file-transfer-endpoint, state=%s";
      goto LABEL_12;
    }

    sub_247DB3648();
  }
}

void sub_247DB3648()
{
  v1 = v0;
  v2 = sub_247DD249C();
  MEMORY[0x28223BE20](v2 - 8);
  v62 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for CosmoHttpConnection.Configuration(0);
  v4 = MEMORY[0x28223BE20](v59);
  v63 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v64 = &v58 - v6;
  v58 = type metadata accessor for CosmoMultiplexChannelClient.Configuration(0);
  MEMORY[0x28223BE20](v58);
  v65 = (&v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733B0, &unk_247DD3F80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v58 - v9;
  v11 = type metadata accessor for NetworkDescriptor(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v61 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v58 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v58 - v19;
  MEMORY[0x28223BE20](v18);
  v66 = &v58 - v21;
  v22 = sub_247DD2ABC();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = (&v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *(v1 + 16);
  *v25 = v26;
  (*(v23 + 104))(v25, *MEMORY[0x277D85200], v22);
  v60 = v26;
  LOBYTE(v26) = sub_247DD2ADC();
  (*(v23 + 8))(v25, v22);
  if ((v26 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  sub_247DB2E94(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_247D6BAD4(v10, &unk_27EE733B0, &unk_247DD3F80);
    if (qword_27EE73290 == -1)
    {
LABEL_4:
      v27 = sub_247DD23CC();
      __swift_project_value_buffer(v27, qword_27EE7B908);

      v28 = sub_247DD23AC();
      v29 = sub_247DD2F0C();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v68[0] = v31;
        *v30 = 136315138;
        v67[1] = *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
        v32 = TransferClient.State.description.getter();
        v34 = sub_247D72868(v32, v33, v68);

        *(v30 + 4) = v34;
        _os_log_impl(&dword_247D56000, v28, v29, "[FileTransferSetup] Failed to setup file-transfer-client, state=%s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v31);
        MEMORY[0x24C1BAF60](v31, -1, -1);
        MEMORY[0x24C1BAF60](v30, -1, -1);
      }

      return;
    }

LABEL_11:
    swift_once();
    goto LABEL_4;
  }

  v35 = v66;
  sub_247DBAA04(v10, v66, type metadata accessor for NetworkDescriptor);
  v36 = [objc_opt_self() defaultManager];
  v37 = [v36 temporaryDirectory];

  v38 = (v65 + v58[5]);
  v39 = v65;
  sub_247DD20AC();

  *v38 = 15;
  *v39 = 5;
  sub_247DBAB44(v35, v20, type metadata accessor for NetworkDescriptor);
  type metadata accessor for CosmoMultiplexChannelClient(0);
  v40 = swift_allocObject();
  *(v40 + 24) = 0;
  *(v40 + 16) = 0;
  v59 = v40 + 16;
  *(v40 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_ready) = 0;
  *(v40 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_terminated) = 0;
  v41 = MEMORY[0x277D84F90];
  *(v40 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_requestQueue) = MEMORY[0x277D84F90];
  *(v40 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_activeRequests) = v41;
  sub_247DBAB44(v39, v40 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_config, type metadata accessor for CosmoMultiplexChannelClient.Configuration);
  v42 = (v40 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_name);
  *v42 = 0xD000000000000014;
  v42[1] = 0x8000000247DDA110;
  v43 = v60;
  *(v40 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_queue) = v60;
  sub_247DBAB44(v20, v40 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_descriptor, type metadata accessor for NetworkDescriptor);
  v44 = v64;
  sub_247DBAB44(v38, v64, type metadata accessor for CosmoHttpConnection.Configuration);
  sub_247DBAB44(v20, v17, type metadata accessor for NetworkDescriptor);
  v58 = v43;
  sub_247D873E8(v62);
  sub_247D879F4();
  sub_247DD26FC();
  swift_allocObject();
  v45 = sub_247DD265C();
  v46 = v63;
  sub_247DBAB44(v44, v63, type metadata accessor for CosmoHttpConnection.Configuration);
  v47 = v61;
  sub_247DBAB44(v17, v61, type metadata accessor for NetworkDescriptor);
  type metadata accessor for CosmoHttpConnection(0);
  swift_allocObject();
  v48 = sub_247D755C4(v46, v47, 1, v45, v43);

  sub_247DBAA6C(v20, type metadata accessor for NetworkDescriptor);
  sub_247DBAA6C(v65, type metadata accessor for CosmoMultiplexChannelClient.Configuration);
  sub_247DBAA6C(v17, type metadata accessor for NetworkDescriptor);
  sub_247DBAA6C(v44, type metadata accessor for CosmoHttpConnection.Configuration);
  *(v40 + OBJC_IVAR____TtC5Cosmo27CosmoMultiplexChannelClient_parentConnection) = v48;
  v49 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v50 = *(v48 + 2);
  v51 = *(v48 + 3);
  *(v48 + 2) = sub_247DBB400;
  *(v48 + 3) = v49;

  sub_247D6A24C(v50, v51);

  v52 = OBJC_IVAR____TtC5Cosmo14TransferClient_fileTransferClient;
  *(v1 + OBJC_IVAR____TtC5Cosmo14TransferClient_fileTransferClient) = v40;

  v53 = swift_allocObject();
  swift_weakInit();
  v54 = v59;
  swift_beginAccess();
  v55 = *v54;
  v56 = v54;
  v57 = *(v40 + 24);
  *v56 = sub_247DBB408;
  *(v40 + 24) = v53;

  sub_247D6A24C(v55, v57);

  v67[0] = 11;
  sub_247DAC1A4(v67);
  if (*(v1 + v52))
  {

    sub_247D9D9D0();
  }

  sub_247DBAA6C(v66, type metadata accessor for NetworkDescriptor);
}

uint64_t sub_247DB3F8C(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = v2;
    sub_247DB3FF8(&v4);
  }

  return result;
}

void sub_247DB3FF8(char *a1)
{
  v3 = v1;
  v5 = sub_247DD2ABC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v56[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v10 = *(v3 + 16);
  *v8 = v10;
  (*(v6 + 104))(v8, *MEMORY[0x277D85200], v5);
  v11 = v10;
  LOBYTE(v10) = sub_247DD2ADC();
  (*(v6 + 8))(v8, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v12 = OBJC_IVAR____TtC5Cosmo14TransferClient_fileTransferClient;
  if (!*(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_fileTransferClient))
  {
    return;
  }

  v2 = OBJC_IVAR____TtC5Cosmo14TransferClient_state;
  if (*(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_state) > 0xFu)
  {
    if (qword_27EE73290 == -1)
    {
LABEL_7:
      v15 = sub_247DD23CC();
      __swift_project_value_buffer(v15, qword_27EE7B908);

      v16 = sub_247DD23AC();
      v17 = sub_247DD2EEC();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v56[0] = v19;
        *v18 = 136315138;
        v57 = *(v3 + v2);
        v20 = TransferClient.State.description.getter();
        v22 = sub_247D72868(v20, v21, v56);

        *(v18 + 4) = v22;
        _os_log_impl(&dword_247D56000, v16, v17, "Disconnect detected, ignoring file-transfer-client state change, state=%s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v19);
        MEMORY[0x24C1BAF60](v19, -1, -1);
        MEMORY[0x24C1BAF60](v18, -1, -1);
      }

      return;
    }

LABEL_33:
    swift_once();
    goto LABEL_7;
  }

  if (v9)
  {
    LOBYTE(v56[0]) = 2;
    v13 = 0xD000000000000020;
    v14 = 0x8000000247DDA130;
LABEL_30:
    sub_247DAEE90(v56, v13, v14);
    return;
  }

  LOBYTE(v56[0]) = 12;
  sub_247DAC1A4(v56);
  v23 = *(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_stateAtDisconnect);
  if (v23 != 18)
  {
    if (qword_27EE73290 != -1)
    {
      swift_once();
    }

    v44 = sub_247DD23CC();
    __swift_project_value_buffer(v44, qword_27EE7B908);

    v45 = sub_247DD23AC();
    v46 = sub_247DD2F2C();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v56[0] = v48;
      *v47 = 136315394;
      v57 = v23;
      v49 = TransferClient.State.description.getter();
      v51 = sub_247D72868(v49, v50, v56);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2080;
      v57 = *(v3 + v2);
      v52 = TransferClient.State.description.getter();
      v54 = sub_247D72868(v52, v53, v56);

      *(v47 + 14) = v54;
      _os_log_impl(&dword_247D56000, v45, v46, "Client invoked disconnect in state=%s, satisfying now, state=%s", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v48, -1, -1);
      MEMORY[0x24C1BAF60](v47, -1, -1);
    }

    LOBYTE(v56[0]) = 3;
    v14 = 0x8000000247DD9D70;
    v13 = 0xD00000000000001ALL;
    goto LABEL_30;
  }

  sub_247DB47B4();
  v24 = *(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_sharedSecret + 8);
  if (v24 >> 60 == 15 || (v56[0] = *(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_sharedSecret), v56[1] = v24, v25 = SharedSecret.protocolVersion.getter(), (v25 & 0x100) != 0))
  {
    v25 = 2;
  }

  if (qword_27EE73290 != -1)
  {
    swift_once();
  }

  v26 = sub_247DD23CC();
  __swift_project_value_buffer(v26, qword_27EE7B908);

  v27 = sub_247DD23AC();
  v28 = sub_247DD2F2C();

  v29 = os_log_type_enabled(v27, v28);
  HIDWORD(v55) = v25;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v56[0] = v31;
    *v30 = 16777730;
    *(v30 + 4) = v25;
    *(v30 + 5) = 2080;
    v57 = *(v3 + v2);
    v32 = TransferClient.State.description.getter();
    v34 = sub_247D72868(v32, v33, v56);

    *(v30 + 7) = v34;
    _os_log_impl(&dword_247D56000, v27, v28, "[Lease] Sending lease-request with version=%hhu, state=%s", v30, 0xFu);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    MEMORY[0x24C1BAF60](v31, -1, -1);
    MEMORY[0x24C1BAF60](v30, -1, -1);
  }

  if (*(v3 + v12))
  {
    v35 = swift_allocObject();
    swift_weakInit();

    sub_247DA76B4(SBYTE4(v55), 0, sub_247DBB410, v35);
  }

  v36 = sub_247DD23AC();
  v37 = sub_247DD2F2C();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v56[0] = v39;
    *v38 = 136315138;
    v57 = *(v3 + v2);
    v40 = TransferClient.State.description.getter();
    v42 = sub_247D72868(v40, v41, v56);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_247D56000, v36, v37, "[FileList] Requesting list, state=%s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    MEMORY[0x24C1BAF60](v39, -1, -1);
    MEMORY[0x24C1BAF60](v38, -1, -1);
  }

  if (*(v3 + v12))
  {
    v43 = swift_allocObject();
    swift_weakInit();

    sub_247DA79B4(0, sub_247DBB418, v43, &unk_2859E65B0, sub_247DBB420, &block_descriptor_211);
  }

  LOBYTE(v56[0]) = 13;
  sub_247DAC1A4(v56);
}

uint64_t sub_247DB47B4()
{
  v3 = v0;
  v4 = sub_247DD2ABC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v3 + 16);
  *v7 = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v9 = v8;
  LOBYTE(v8) = sub_247DD2ADC();
  result = (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_5;
  }

  v2 = OBJC_IVAR____TtC5Cosmo14TransferClient_attestationBrowser;
  if (!*(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationBrowser))
  {
    return result;
  }

  v1 = OBJC_IVAR____TtC5Cosmo14TransferClient_attestationChannel;
  if (!*(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationChannel))
  {
    return result;
  }

  v11 = qword_27EE73290;

  if (v11 != -1)
  {
    goto LABEL_10;
  }

LABEL_5:
  v12 = sub_247DD23CC();
  __swift_project_value_buffer(v12, qword_27EE7B908);
  v13 = sub_247DD23AC();
  v14 = sub_247DD2F2C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_247D56000, v13, v14, "[Attestation] Closing Browser and attestation-channel", v15, 2u);
    MEMORY[0x24C1BAF60](v15, -1, -1);
  }

  sub_247D9B824();
  *(v3 + v2) = 0;

  sub_247D84D74();

  *(v3 + v1) = 0;
}

uint64_t sub_247DB49E4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7[0] = v2;
    v7[1] = v3;
    v7[2] = v4;
    v8 = v5;
    sub_247DB4A68(v7);
  }

  return result;
}

void sub_247DB4A68(uint64_t a1)
{
  v2 = v1;
  v4 = sub_247DD2ABC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(v2 + 16);
  *v7 = v12;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v13 = v12;
  LOBYTE(v12) = sub_247DD2ADC();
  v15 = *(v5 + 8);
  v14 = v5 + 8;
  v15(v7, v4);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_10;
  }

  v14 = OBJC_IVAR____TtC5Cosmo14TransferClient_state;
  if (*(v2 + OBJC_IVAR____TtC5Cosmo14TransferClient_state) <= 0xFu)
  {
    if (v11)
    {
      if (qword_27EE73290 != -1)
      {
        swift_once();
      }

      v16 = sub_247DD23CC();
      __swift_project_value_buffer(v16, qword_27EE7B908);
      sub_247DBB5B8(v8, v9, v10, 1);

      v17 = sub_247DD23AC();
      v18 = sub_247DD2F0C();
      sub_247DBB5A8(v8, v9, v10, 1);

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v46 = v8;
        v47 = v20;
        *v19 = 136315394;
        v21 = v8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73C10, &qword_247DD4330);
        v22 = sub_247DD2CFC();
        v24 = sub_247D72868(v22, v23, &v47);

        *(v19 + 4) = v24;
        *(v19 + 12) = 2080;
        LOBYTE(v46) = *(v2 + v14);
        v25 = TransferClient.State.description.getter();
        v27 = sub_247D72868(v25, v26, &v47);

        *(v19 + 14) = v27;
        _os_log_impl(&dword_247D56000, v17, v18, "[Lease] Failed to receive response, error=%s, state=%s", v19, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v20, -1, -1);
        MEMORY[0x24C1BAF60](v19, -1, -1);
      }

      LOBYTE(v47) = 2;
      sub_247DAEE90(&v47, 0xD000000000000016, 0x8000000247DDA190);
    }

    else
    {
      if (v10)
      {
        v36 = v9;
        v37 = v10;
      }

      else
      {
        sub_247DBB5A8(v8, v9, 0, 0);
        v37 = 0xE200000000000000;
        v36 = 16718;
      }

      sub_247DBB5B8(v8, v9, v10, 0);
      if (qword_27EE73290 != -1)
      {
        swift_once();
      }

      v38 = sub_247DD23CC();
      __swift_project_value_buffer(v38, qword_27EE7B908);

      v39 = sub_247DD23AC();
      v40 = sub_247DD2F2C();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v47 = v42;
        *v41 = 136315394;
        *(v41 + 4) = sub_247D72868(v36, v37, &v47);
        *(v41 + 12) = 2080;
        LOBYTE(v46) = *(v2 + v14);
        v43 = TransferClient.State.description.getter();
        v45 = sub_247D72868(v43, v44, &v47);

        *(v41 + 14) = v45;
        _os_log_impl(&dword_247D56000, v39, v40, "[Lease] Remote TransferHost ended lease with reason=%s, state=%s", v41, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v42, -1, -1);
        MEMORY[0x24C1BAF60](v41, -1, -1);
      }

      LOBYTE(v47) = 5;
      sub_247DAEE90(&v47, v36, v37);
    }

    return;
  }

  if (qword_27EE73290 != -1)
  {
    goto LABEL_22;
  }

LABEL_10:
  v28 = sub_247DD23CC();
  __swift_project_value_buffer(v28, qword_27EE7B908);

  v29 = sub_247DD23AC();
  v30 = sub_247DD2F2C();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v47 = v32;
    *v31 = 136315138;
    LOBYTE(v46) = *(v2 + v14);
    v33 = TransferClient.State.description.getter();
    v35 = sub_247D72868(v33, v34, &v47);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_247D56000, v29, v30, "[Lease] Disconnect detected, ignoring, state=%s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    MEMORY[0x24C1BAF60](v32, -1, -1);
    MEMORY[0x24C1BAF60](v31, -1, -1);
  }
}

uint64_t sub_247DB5074(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6[0] = v2;
    v6[1] = v3;
    v7 = v4;
    sub_247DB50F0(v6);
  }

  return result;
}

void sub_247DB50F0(uint64_t a1)
{
  v3 = v1;
  v5 = sub_247DD2ABC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  v9 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(v3 + 16);
  *v8 = v12;
  (*(v6 + 104))(v8, *MEMORY[0x277D85200], v5);
  v13 = v12;
  LOBYTE(v12) = sub_247DD2ADC();
  (*(v6 + 8))(v8, v5);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v2 = OBJC_IVAR____TtC5Cosmo14TransferClient_state;
  v14 = *(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
  if (v14 > 0xF)
  {
    if (qword_27EE73290 == -1)
    {
LABEL_11:
      v27 = sub_247DD23CC();
      __swift_project_value_buffer(v27, qword_27EE7B908);

      v28 = sub_247DD23AC();
      v29 = sub_247DD2F2C();

      if (!os_log_type_enabled(v28, v29))
      {
LABEL_18:

        return;
      }

      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v59 = v31;
      *v30 = 136315138;
      LOBYTE(v58) = *(v3 + v2);
      v32 = TransferClient.State.description.getter();
      v34 = sub_247D72868(v32, v33, &v59);

      *(v30 + 4) = v34;
      v35 = "[FileList] Disconnect detected, ignoring, state=%s";
LABEL_17:
      _os_log_impl(&dword_247D56000, v28, v29, v35, v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      MEMORY[0x24C1BAF60](v31, -1, -1);
      MEMORY[0x24C1BAF60](v30, -1, -1);
      goto LABEL_18;
    }

LABEL_30:
    swift_once();
    goto LABEL_11;
  }

  if (v14 != 13)
  {
    if (qword_27EE73290 != -1)
    {
      swift_once();
    }

    v36 = sub_247DD23CC();
    __swift_project_value_buffer(v36, qword_27EE7B908);

    v28 = sub_247DD23AC();
    v29 = sub_247DD2F0C();

    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_18;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v59 = v31;
    *v30 = 136315138;
    LOBYTE(v58) = *(v3 + v2);
    v37 = TransferClient.State.description.getter();
    v39 = sub_247D72868(v37, v38, &v59);

    *(v30 + 4) = v39;
    v35 = "[FileList] Unexpected state, state=%s";
    goto LABEL_17;
  }

  if (v11)
  {
    if (qword_27EE73290 != -1)
    {
      swift_once();
    }

    v15 = sub_247DD23CC();
    __swift_project_value_buffer(v15, qword_27EE7B908);

    sub_247DBB4A0(v10, v9, 1);
    v16 = sub_247DD23AC();
    v17 = sub_247DD2F0C();
    sub_247DBB490(v10, v9, 1);

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v58 = v10;
      v59 = v19;
      *v18 = 136315394;
      v20 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73C10, &qword_247DD4330);
      v21 = sub_247DD2CFC();
      v23 = sub_247D72868(v21, v22, &v59);

      *(v18 + 4) = v23;
      *(v18 + 12) = 2080;
      LOBYTE(v58) = *(v3 + v2);
      v24 = TransferClient.State.description.getter();
      v26 = sub_247D72868(v24, v25, &v59);

      *(v18 + 14) = v26;
      _os_log_impl(&dword_247D56000, v16, v17, "[FileList] Failed to receive file-list-request-response, error=%s state=%s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v19, -1, -1);
      MEMORY[0x24C1BAF60](v18, -1, -1);
    }

    LOBYTE(v59) = 2;
    sub_247DAEE90(&v59, 0xD000000000000024, 0x8000000247DDA160);
    return;
  }

  LOBYTE(v59) = 14;
  sub_247DAC1A4(&v59);
  v40 = *(v9 + 16);
  if (!v40)
  {
    if (qword_27EE73290 != -1)
    {
      swift_once();
    }

    v53 = sub_247DD23CC();
    __swift_project_value_buffer(v53, qword_27EE7B908);

    v28 = sub_247DD23AC();
    v29 = sub_247DD2F0C();

    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_18;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v59 = v31;
    *v30 = 136315138;
    LOBYTE(v58) = *(v3 + v2);
    v54 = TransferClient.State.description.getter();
    v56 = sub_247D72868(v54, v55, &v59);

    *(v30 + 4) = v56;
    v35 = "[FileList] Received empty-list, state=%s";
    goto LABEL_17;
  }

  if (qword_27EE73290 != -1)
  {
    swift_once();
  }

  v41 = sub_247DD23CC();
  __swift_project_value_buffer(v41, qword_27EE7B908);

  sub_247DBB4A0(v10, v9, 0);
  v42 = sub_247DD23AC();
  v43 = sub_247DD2F2C();
  sub_247DBB490(v10, v9, 0);

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v59 = v45;
    *v44 = 134218498;
    *(v44 + 4) = v40;
    *(v44 + 12) = 2080;
    sub_247DD225C();
    sub_247DBAE20(&qword_27EE738D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v46 = sub_247DD2C4C();
    v48 = sub_247D72868(v46, v47, &v59);

    *(v44 + 14) = v48;
    *(v44 + 22) = 2080;
    LOBYTE(v58) = *(v3 + v2);
    v49 = TransferClient.State.description.getter();
    v51 = sub_247D72868(v49, v50, &v59);

    *(v44 + 24) = v51;
    _os_log_impl(&dword_247D56000, v42, v43, "[FileList] Received list, count=%ld list=%s, state=%s", v44, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v45, -1, -1);
    MEMORY[0x24C1BAF60](v44, -1, -1);
  }

  v52 = sub_247DB593C(v9);
  swift_getKeyPath();
  swift_getKeyPath();
  v59 = v52;

  sub_247DD242C();
}

unint64_t sub_247DB593C(uint64_t a1)
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73F60, &qword_247DD6598);
  v3 = MEMORY[0x28223BE20](v62);
  v55 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v54 = &v47 - v5;
  v6 = type metadata accessor for TransferClient.FileDescriptor(0);
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v47 = v1;
  v63 = MEMORY[0x277D84F90];
  sub_247DBA1AC(0, v9, 0);
  v10 = v63;
  v11 = a1 + 64;
  result = sub_247DD300C();
  v13 = result;
  v14 = 0;
  v15 = *(a1 + 36);
  v48 = a1 + 72;
  v49 = v9;
  v50 = v15;
  v51 = a1 + 64;
  v61 = a1;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
  {
    if ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_22;
    }

    if (v15 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v57 = 1 << v13;
    v58 = v13 >> 6;
    v56 = v14;
    v17 = v54;
    v18 = v8;
    v19 = &v54[*(v62 + 48)];
    v20 = *(a1 + 48);
    v21 = sub_247DD225C();
    v22 = *(v21 - 8);
    v23 = v22;
    v24 = v20 + *(v22 + 72) * v13;
    v60 = v10;
    v25 = *(v22 + 16);
    v25(v17, v24, v21);
    v26 = (*(v61 + 56) + 24 * v13);
    v27 = *v26;
    v28 = v26[1];
    v29 = v26[2];
    *v19 = v27;
    *(v19 + 1) = v28;
    *(v19 + 2) = v29;
    v30 = *(v23 + 32);
    v59 = v13;
    v31 = v55;
    v30(v55, v17, v21);
    v32 = (v31 + *(v62 + 48));
    v34 = *v19;
    v33 = *(v19 + 1);
    v35 = *(v19 + 2);
    *v32 = v34;
    v32[1] = v33;
    v32[2] = v35;
    v25(v18, v31, v21);
    v10 = v60;
    v36 = v53;
    v37 = (v18 + *(v53 + 20));
    *v37 = v34;
    v37[1] = v33;
    *(v18 + *(v36 + 24)) = v35;
    v8 = v18;

    sub_247D6BAD4(v31, &qword_27EE73F60, &qword_247DD6598);
    v63 = v10;
    v39 = *(v10 + 16);
    v38 = *(v10 + 24);
    if (v39 >= v38 >> 1)
    {
      sub_247DBA1AC((v38 > 1), v39 + 1, 1);
      v10 = v63;
    }

    *(v10 + 16) = v39 + 1;
    sub_247DBAA04(v18, v10 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v39, type metadata accessor for TransferClient.FileDescriptor);
    a1 = v61;
    v16 = 1 << *(v61 + 32);
    result = v59;
    if (v59 >= v16)
    {
      goto LABEL_24;
    }

    v11 = v51;
    v40 = *(v51 + 8 * v58);
    if ((v40 & v57) == 0)
    {
      goto LABEL_25;
    }

    LODWORD(v15) = v50;
    if (v50 != *(v61 + 36))
    {
      goto LABEL_26;
    }

    v41 = v40 & (-2 << (v59 & 0x3F));
    if (v41)
    {
      v16 = __clz(__rbit64(v41)) | v59 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v42 = v58 << 6;
      v43 = v58 + 1;
      v44 = (v48 + 8 * v58);
      while (v43 < (v16 + 63) >> 6)
      {
        v46 = *v44++;
        v45 = v46;
        v42 += 64;
        ++v43;
        if (v46)
        {
          result = sub_247DBB4B0(v59, v50, 0);
          v16 = __clz(__rbit64(v45)) + v42;
          goto LABEL_4;
        }
      }

      result = sub_247DBB4B0(v59, v50, 0);
    }

LABEL_4:
    v14 = v56 + 1;
    v13 = v16;
    if (v56 + 1 == v49)
    {
      return v10;
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
LABEL_26:
  __break(1u);
  return result;
}

Cosmo::PinCode __swiftcall TransferClient.auth()()
{
  static PinCode.random(length:)(4, v5);
  v4[0] = v5[0];
  v4[1] = v5[1];
  v0.value._countAndFlagsBits = v4;
  TransferClient.auth(pinCode:)(v0);

  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Cosmo::PinCode __swiftcall TransferClient.auth(pinCode:)(Cosmo::PinCode pinCode)
{
  countAndFlagsBits = pinCode.value._countAndFlagsBits;
  v22 = v1;
  v4 = sub_247DD2A0C();
  v21 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_247DD2A2C();
  v7 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *countAndFlagsBits;
  v11 = countAndFlagsBits[1];
  v18 = *(v2 + 16);
  v19 = v10;
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = v10;
  v12[4] = v11;
  aBlock[4] = sub_247DB686C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = &block_descriptor_8_0;
  v13 = _Block_copy(aBlock);

  sub_247DD2A1C();
  v23 = MEMORY[0x277D84F90];
  sub_247DBAE20(&unk_27EE73AF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D6AE30(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0, MEMORY[0x277D83970]);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v9, v6, v13);
  _Block_release(v13);
  (*(v21 + 8))(v6, v4);
  (*(v7 + 8))(v9, v20);

  v14 = v22;
  *v22 = v19;
  v14[1] = v11;

  result.value._object = v16;
  result.value._countAndFlagsBits = v15;
  return result;
}

void sub_247DB6150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a1 + OBJC_IVAR____TtC5Cosmo14TransferClient_pinCode);
  *v6 = a2;
  v6[1] = a3;

  v7 = OBJC_IVAR____TtC5Cosmo14TransferClient_attestationResult;
  v8 = *(a1 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationResult);
  if (v8 == 2)
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  else
  {
    sub_247DD304C();

    v40 = 0xD000000000000018;
    v41 = 0x8000000247DD9E10;
    if (v8)
    {
      v11 = 0x6572756C696166;
    }

    else
    {
      v11 = 0x73736563637573;
    }

    MEMORY[0x24C1BA0A0](v11, 0xE700000000000000);

    MEMORY[0x24C1BA0A0](41, 0xE100000000000000);
    v9 = v40;
    v10 = v41;
  }

  sub_247DD304C();

  v40 = 0x3D6E69702D77656ELL;
  v41 = 0xE800000000000000;
  MEMORY[0x24C1BA0A0](a2, a3);
  MEMORY[0x24C1BA0A0](0x756F697665727020, 0xEE003D6E69702D73);
  if (v6[1])
  {

    v12 = sub_247DD2CFC();
    v14 = v13;
  }

  else
  {

    v14 = 0xE300000000000000;
    v12 = 7104878;
  }

  MEMORY[0x24C1BA0A0](v12, v14);

  MEMORY[0x24C1BA0A0](32, 0xE100000000000000);
  MEMORY[0x24C1BA0A0](v9, v10);

  MEMORY[0x24C1BA0A0](0x3D657461747320, 0xE700000000000000);
  v15 = OBJC_IVAR____TtC5Cosmo14TransferClient_state;
  v16 = TransferClient.State.description.getter();
  MEMORY[0x24C1BA0A0](v16);

  v18 = v40;
  v17 = v41;
  v19 = *(a1 + v15);
  if (v19 > 2)
  {
    if (v19 == 3)
    {
LABEL_20:

      sub_247DADD20();
      return;
    }

    if (v19 == 7)
    {
      v28 = *(a1 + v7);
      if (v28 == 2)
      {
        goto LABEL_20;
      }

      if ((v28 & 1) == 0)
      {
LABEL_34:
        if (qword_27EE73290 != -1)
        {
          swift_once();
        }

        v38 = sub_247DD23CC();
        __swift_project_value_buffer(v38, qword_27EE7B908);

        v30 = sub_247DD23AC();
        v31 = sub_247DD2F2C();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v40 = v33;
          *v32 = 136315138;
          v39 = sub_247D72868(v18, v17, &v40);

          *(v32 + 4) = v39;
          v35 = "[Auth] Ignoring, %s";
          goto LABEL_38;
        }

        goto LABEL_39;
      }

      if ((sub_247DD322C() & 1) == 0)
      {
        goto LABEL_20;
      }

      v19 = *(a1 + v15);
    }

    if (v19 - 4 <= 2)
    {
      if (*(a1 + OBJC_IVAR____TtC5Cosmo14TransferClient_usePinlessPair) == 1)
      {
        goto LABEL_12;
      }

      if (qword_27EE73290 != -1)
      {
        swift_once();
      }

      v36 = sub_247DD23CC();
      __swift_project_value_buffer(v36, qword_27EE7B908);

      v30 = sub_247DD23AC();
      v31 = sub_247DD2F2C();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v40 = v33;
        *v32 = 136315138;
        v37 = sub_247D72868(v18, v17, &v40);

        *(v32 + 4) = v37;
        v35 = "[Auth] Queuing PIN in case we need to re-attest, %s";
        goto LABEL_38;
      }

LABEL_39:

      goto LABEL_40;
    }

    goto LABEL_34;
  }

  if (*(a1 + OBJC_IVAR____TtC5Cosmo14TransferClient_usePinlessPair) != 1)
  {
    if (qword_27EE73290 != -1)
    {
      swift_once();
    }

    v29 = sub_247DD23CC();
    __swift_project_value_buffer(v29, qword_27EE7B908);

    v30 = sub_247DD23AC();
    v31 = sub_247DD2F2C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v40 = v33;
      *v32 = 136315138;
      v34 = sub_247D72868(v18, v17, &v40);

      *(v32 + 4) = v34;
      v35 = "[Auth] Queuing PIN until attestation-channel is available, %s";
LABEL_38:
      _os_log_impl(&dword_247D56000, v30, v31, v35, v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      MEMORY[0x24C1BAF60](v33, -1, -1);
      MEMORY[0x24C1BAF60](v32, -1, -1);
LABEL_40:

      return;
    }

    goto LABEL_39;
  }

LABEL_12:

  if (qword_27EE73290 != -1)
  {
    swift_once();
  }

  v20 = sub_247DD23CC();
  __swift_project_value_buffer(v20, qword_27EE7B908);

  v21 = sub_247DD23AC();
  v22 = sub_247DD2F2C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v40 = v24;
    *v23 = 136315138;
    v25 = TransferClient.State.description.getter();
    v27 = sub_247D72868(v25, v26, &v40);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_247D56000, v21, v22, "[Auth] Ignoring, using PIN-less pair, state=%s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    MEMORY[0x24C1BAF60](v24, -1, -1);
    MEMORY[0x24C1BAF60](v23, -1, -1);
  }
}

void sub_247DB68A0(uint64_t a1, void (*a2)(uint64_t *), unint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73F08, &qword_247DD6580);
  MEMORY[0x28223BE20](v8);
  v10 = (&v68 - v9);
  v11 = type metadata accessor for FileRequest(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TransferClient.FileDescriptor(0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v68 - v19;
  v21 = *(a1 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
  if (v21 > 0xF)
  {
    return;
  }

  v70 = v13;
  v71 = OBJC_IVAR____TtC5Cosmo14TransferClient_state;
  v72 = a2;
  if ((~v21 & 0xE) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_247DD241C();

    v22 = v73[2];

    if (v22)
    {
      v68 = v8;
      v69 = a3;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_247DD241C();

      v23 = 0;
      v24 = v73;
      v25 = v73[2];
      do
      {
        if (v25 == v23)
        {

          v73 = 0;
          v74 = 0xE000000000000000;
          sub_247DD304C();
          MEMORY[0x24C1BA0A0](0xD00000000000003BLL, 0x8000000247DD9D90);
          sub_247DD225C();
          sub_247DBAE20(&unk_27EE73510, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v56 = sub_247DD321C();
          MEMORY[0x24C1BA0A0](v56);

          v57 = v73;
          v58 = v74;
          sub_247D6ADD0();
          v59 = swift_allocError();
          *v60 = v57;
          v60[1] = v58;
          *v10 = v59;
          swift_storeEnumTagMultiPayload();
          v72(v10);
          goto LABEL_18;
        }

        if (v23 >= *(v24 + 16))
        {
          __break(1u);
          goto LABEL_25;
        }

        sub_247DBAB44(v24 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v23++, v20, type metadata accessor for TransferClient.FileDescriptor);
        v26 = sub_247DD221C();
        sub_247DBAA6C(v20, type metadata accessor for TransferClient.FileDescriptor);
      }

      while ((v26 & 1) == 0);

      v27 = OBJC_IVAR____TtC5Cosmo14TransferClient_filesRequestedCount;
      v28 = *(a1 + OBJC_IVAR____TtC5Cosmo14TransferClient_filesRequestedCount);
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        __break(1u);
      }

      else
      {
        *(a1 + OBJC_IVAR____TtC5Cosmo14TransferClient_filesRequestedCount) = v30;
        v23 = v69;
        if (*(a1 + v71) != 15)
        {
          LOBYTE(v73) = 15;
          sub_247DAC1A4(&v73);
        }

        if (qword_27EE73290 == -1)
        {
          goto LABEL_12;
        }
      }

      swift_once();
LABEL_12:
      v31 = sub_247DD23CC();
      __swift_project_value_buffer(v31, qword_27EE7B908);
      sub_247DBAB44(a4, v18, type metadata accessor for TransferClient.FileDescriptor);
      swift_retain_n();
      v32 = sub_247DD23AC();
      v33 = sub_247DD2F2C();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v35 = v73;
        *v34 = 136315650;
        v36 = TransferClient.FileDescriptor.description.getter();
        v38 = v37;
        sub_247DBAA6C(v18, type metadata accessor for TransferClient.FileDescriptor);
        v39 = sub_247D72868(v36, v38, &v73);

        *(v34 + 4) = v39;
        *(v34 + 12) = 2048;
        v40 = *(a1 + v27);

        *(v34 + 14) = v40;

        *(v34 + 22) = 2080;
        v75 = *(a1 + v71);
        v41 = TransferClient.State.description.getter();
        v43 = sub_247D72868(v41, v42, &v73);

        *(v34 + 24) = v43;
        _os_log_impl(&dword_247D56000, v32, v33, "[Request] Requesting file=%s, files-requested-count=%ld state=%s", v34, 0x20u);
        swift_arrayDestroy();
        v44 = v35;
        v23 = v69;
        MEMORY[0x24C1BAF60](v44, -1, -1);
        MEMORY[0x24C1BAF60](v34, -1, -1);
      }

      else
      {

        sub_247DBAA6C(v18, type metadata accessor for TransferClient.FileDescriptor);
      }

      v61 = v72;
      v62 = v70;
      if (*(a1 + OBJC_IVAR____TtC5Cosmo14TransferClient_fileTransferClient))
      {
        v63 = sub_247DD225C();
        (*(*(v63 - 8) + 16))(v62, a4, v63);
        v64 = v61;
        v65 = swift_allocObject();
        swift_weakInit();
        v66 = v62;
        v67 = swift_allocObject();
        v67[2] = v65;
        v67[3] = v64;
        v67[4] = v23;

        sub_247DA7CA0(v66, 0, sub_247DBAC38, v67);

        sub_247DBAA6C(v66, type metadata accessor for FileRequest);
      }

      return;
    }
  }

  if (qword_27EE73290 != -1)
  {
LABEL_25:
    swift_once();
  }

  v45 = sub_247DD23CC();
  __swift_project_value_buffer(v45, qword_27EE7B908);

  v46 = sub_247DD23AC();
  v47 = sub_247DD2F0C();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v73 = v49;
    *v48 = 136315138;
    v75 = *(a1 + v71);
    v50 = TransferClient.State.description.getter();
    v52 = sub_247D72868(v50, v51, &v73);

    *(v48 + 4) = v52;
    _os_log_impl(&dword_247D56000, v46, v47, "[Request] Must be invoked after having received the file-list, state=%s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v49);
    MEMORY[0x24C1BAF60](v49, -1, -1);
    MEMORY[0x24C1BAF60](v48, -1, -1);
  }

  v53 = v72;
  sub_247D6ADD0();
  v54 = swift_allocError();
  *v55 = xmmword_247DD3ED0;
  *v10 = v54;
  swift_storeEnumTagMultiPayload();
  v53(v10);
LABEL_18:
  sub_247D6BAD4(v10, &qword_27EE73F08, &qword_247DD6580);
}

uint64_t sub_247DB715C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v63 = a3;
  v6 = type metadata accessor for CosmoFileHttpResponse(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v62 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73F10, &unk_247DD6588);
  MEMORY[0x28223BE20](v12);
  v14 = (v62 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73F08, &qword_247DD6580);
  MEMORY[0x28223BE20](v15);
  v17 = (v62 - v16);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_247D6ADD0();
    v39 = swift_allocError();
    *v40 = 0xD000000000000017;
    v40[1] = 0x8000000247DD9DD0;
    *v17 = v39;
    swift_storeEnumTagMultiPayload();
    v63(v17);
    return sub_247D6BAD4(v17, &qword_27EE73F08, &qword_247DD6580);
  }

  v19 = Strong;
  v62[0] = a4;
  v62[1] = v15;
  sub_247D6BA6C(a1, v14, &qword_27EE73F10, &unk_247DD6588);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v14;
    v21 = qword_27EE73290;

    if (v21 != -1)
    {
      swift_once();
    }

    v22 = sub_247DD23CC();
    __swift_project_value_buffer(v22, qword_27EE7B908);

    v23 = v20;
    v24 = sub_247DD23AC();
    v25 = sub_247DD2F0C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v64 = v20;
      v65 = v27;
      *v26 = 136315650;
      v28 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73C10, &qword_247DD4330);
      v29 = sub_247DD2CFC();
      v31 = sub_247D72868(v29, v30, &v65);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2080;
      v32 = sub_247DB78CC();
      v34 = sub_247D72868(v32, v33, &v65);

      *(v26 + 14) = v34;
      *(v26 + 22) = 2080;
      LOBYTE(v64) = *(v19 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
      v35 = TransferClient.State.description.getter();
      v37 = sub_247D72868(v35, v36, &v65);

      *(v26 + 24) = v37;
      _os_log_impl(&dword_247D56000, v24, v25, "[Request] Received error=%s, %s state=%s", v26, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v27, -1, -1);
      MEMORY[0x24C1BAF60](v26, -1, -1);
    }

    *v17 = v20;
    swift_storeEnumTagMultiPayload();
    v38 = v20;
    v63(v17);

    return sub_247D6BAD4(v17, &qword_27EE73F08, &qword_247DD6580);
  }

  sub_247DBAA04(v14, v11, type metadata accessor for CosmoFileHttpResponse);
  v42 = *(v19 + OBJC_IVAR____TtC5Cosmo14TransferClient_filesReceivedCount);
  v43 = __OFADD__(v42, 1);
  v44 = v42 + 1;
  if (v43)
  {
    __break(1u);
    goto LABEL_17;
  }

  *(v19 + OBJC_IVAR____TtC5Cosmo14TransferClient_filesReceivedCount) = v44;
  v45 = qword_27EE73290;

  if (v45 != -1)
  {
LABEL_17:
    swift_once();
  }

  v46 = sub_247DD23CC();
  __swift_project_value_buffer(v46, qword_27EE7B908);
  sub_247DBAB44(v11, v9, type metadata accessor for CosmoFileHttpResponse);

  v47 = sub_247DD23AC();
  v48 = sub_247DD2F2C();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v65 = v50;
    *v49 = 136315650;
    sub_247DD20DC();
    sub_247DBAE20(&qword_27EE735C0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v51 = sub_247DD321C();
    v53 = v52;
    sub_247DBAA6C(v9, type metadata accessor for CosmoFileHttpResponse);
    v54 = sub_247D72868(v51, v53, &v65);

    *(v49 + 4) = v54;
    *(v49 + 12) = 2080;
    v55 = sub_247DB78CC();
    v57 = sub_247D72868(v55, v56, &v65);

    *(v49 + 14) = v57;
    *(v49 + 22) = 2080;
    LOBYTE(v64) = *(v19 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
    v58 = TransferClient.State.description.getter();
    v60 = sub_247D72868(v58, v59, &v65);

    *(v49 + 24) = v60;
    _os_log_impl(&dword_247D56000, v47, v48, "[Request] Received file-response at file=%s, %s state=%s", v49, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v50, -1, -1);
    MEMORY[0x24C1BAF60](v49, -1, -1);
  }

  else
  {

    sub_247DBAA6C(v9, type metadata accessor for CosmoFileHttpResponse);
  }

  v61 = sub_247DD20DC();
  (*(*(v61 - 8) + 16))(v17, v11, v61);
  swift_storeEnumTagMultiPayload();
  v63(v17);

  sub_247D6BAD4(v17, &qword_27EE73F08, &qword_247DD6580);
  return sub_247DBAA6C(v11, type metadata accessor for CosmoFileHttpResponse);
}

unint64_t sub_247DB78CC()
{
  sub_247DD304C();

  v0 = sub_247DD321C();
  MEMORY[0x24C1BA0A0](v0);

  MEMORY[0x24C1BA0A0](0xD000000000000016, 0x8000000247DD9DF0);
  v1 = sub_247DD321C();
  MEMORY[0x24C1BA0A0](v1);

  return 0xD000000000000016;
}

uint64_t sub_247DB7A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a6;
  v25 = a2;
  v26 = a5;
  v7 = v6;
  v10 = sub_247DD2A0C();
  v31 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_247DD2A2C();
  v29 = *(v13 - 8);
  v30 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TransferClient.FileDescriptor(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v7 + 16);
  sub_247DBAB44(a1, v19, type metadata accessor for TransferClient.FileDescriptor);
  v20 = (*(v17 + 80) + 40) & ~*(v17 + 80);
  v21 = swift_allocObject();
  v22 = v25;
  v21[2] = v7;
  v21[3] = v22;
  v21[4] = a3;
  sub_247DBAA04(v19, v21 + v20, type metadata accessor for TransferClient.FileDescriptor);
  aBlock[4] = v26;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = v28;
  v23 = _Block_copy(aBlock);

  sub_247DD2A1C();
  v32 = MEMORY[0x277D84F90];
  sub_247DBAE20(&unk_27EE73AF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D6AE30(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0, MEMORY[0x277D83970]);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v15, v12, v23);
  _Block_release(v23);
  (*(v31 + 8))(v12, v10);
  (*(v29 + 8))(v15, v30);
}

void sub_247DB7DA0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for RejectFileRequest(0);
  MEMORY[0x28223BE20](v8 - 8);
  v71 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TransferClient.FileDescriptor(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v66 - v14;
  MEMORY[0x28223BE20](v13);
  v18 = &v66 - v17;
  v19 = OBJC_IVAR____TtC5Cosmo14TransferClient_state;
  v20 = *(a1 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
  if (v20 <= 0xF)
  {
    v70 = v16;
    v72 = a1;
    if ((~v20 & 0xE) != 0 || (swift_getKeyPath(), swift_getKeyPath(), sub_247DD241C(), , , v21 = v73[2], , !v21))
    {
      v15 = v19;
      if (qword_27EE73290 != -1)
      {
LABEL_23:
        swift_once();
      }

      v43 = sub_247DD23CC();
      __swift_project_value_buffer(v43, qword_27EE7B908);
      v44 = v72;

      v45 = sub_247DD23AC();
      v46 = sub_247DD2F0C();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = a2;
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v73 = v49;
        *v48 = 136315138;
        v75 = v15[v44];
        v50 = TransferClient.State.description.getter();
        v52 = sub_247D72868(v50, v51, &v73);

        *(v48 + 4) = v52;
        _os_log_impl(&dword_247D56000, v45, v46, "[Reject] Ignoring, no file-list received, state=%s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v49);
        MEMORY[0x24C1BAF60](v49, -1, -1);
        v53 = v48;
        a2 = v47;
        MEMORY[0x24C1BAF60](v53, -1, -1);
      }

      sub_247D6ADD0();
      v54 = swift_allocError();
      *v55 = xmmword_247DD3ED0;
      (a2)(v54, 1);
LABEL_16:
    }

    else
    {
      v67 = v19;
      v68 = a2;
      v69 = a3;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_247DD241C();

      a2 = 0;
      v22 = v73;
      v23 = v73[2];
      do
      {
        if (v23 == a2)
        {

          v73 = 0;
          v74 = 0xE000000000000000;
          sub_247DD304C();
          MEMORY[0x24C1BA0A0](0xD00000000000003BLL, 0x8000000247DD9D90);
          sub_247DD225C();
          sub_247DBAE20(&unk_27EE73510, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v56 = sub_247DD321C();
          MEMORY[0x24C1BA0A0](v56);

          v57 = v73;
          v58 = v74;
          sub_247D6ADD0();
          v54 = swift_allocError();
          *v59 = v57;
          v59[1] = v58;
          v68(v54, 1);
          goto LABEL_16;
        }

        if (a2 >= *(v22 + 16))
        {
          __break(1u);
          goto LABEL_23;
        }

        v24 = *(v11 + 80);
        sub_247DBAB44(v22 + ((v24 + 32) & ~v24) + *(v11 + 72) * a2++, v18, type metadata accessor for TransferClient.FileDescriptor);
        v25 = sub_247DD221C();
        sub_247DBAA6C(v18, type metadata accessor for TransferClient.FileDescriptor);
      }

      while ((v25 & 1) == 0);

      if (qword_27EE73290 != -1)
      {
        swift_once();
      }

      v26 = sub_247DD23CC();
      __swift_project_value_buffer(v26, qword_27EE7B908);
      sub_247DBAB44(a4, v15, type metadata accessor for TransferClient.FileDescriptor);
      v27 = v72;

      v28 = sub_247DD23AC();
      v29 = sub_247DD2F2C();

      v30 = os_log_type_enabled(v28, v29);
      v31 = v69;
      if (v30)
      {
        v32 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v73 = v66;
        *v32 = 136315394;
        v33 = v29;
        v34 = TransferClient.FileDescriptor.description.getter();
        v36 = v35;
        sub_247DBAA6C(v15, type metadata accessor for TransferClient.FileDescriptor);
        v37 = sub_247D72868(v34, v36, &v73);

        *(v32 + 4) = v37;
        *(v32 + 12) = 2080;
        v75 = *(v27 + v67);
        v38 = TransferClient.State.description.getter();
        v40 = sub_247D72868(v38, v39, &v73);

        *(v32 + 14) = v40;
        v41 = v33;
        v31 = v69;
        _os_log_impl(&dword_247D56000, v28, v41, "[Reject] Rejecting file=%s, state=%s", v32, 0x16u);
        v42 = v66;
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v42, -1, -1);
        MEMORY[0x24C1BAF60](v32, -1, -1);
      }

      else
      {

        sub_247DBAA6C(v15, type metadata accessor for TransferClient.FileDescriptor);
      }

      v60 = v70;
      if (*(v27 + OBJC_IVAR____TtC5Cosmo14TransferClient_fileTransferClient))
      {
        v61 = sub_247DD225C();
        v62 = v71;
        (*(*(v61 - 8) + 16))(v71, a4, v61);
        v63 = swift_allocObject();
        swift_weakInit();
        sub_247DBAB44(a4, v60, type metadata accessor for TransferClient.FileDescriptor);
        v64 = swift_allocObject();
        v65 = v68;
        v64[2] = v63;
        v64[3] = v65;
        v64[4] = v31;
        sub_247DBAA04(v60, v64 + ((v24 + 40) & ~v24), type metadata accessor for TransferClient.FileDescriptor);

        sub_247DA806C(v62, 0, sub_247DBAACC, v64);

        sub_247DBAA6C(v62, type metadata accessor for RejectFileRequest);
      }
    }
  }
}