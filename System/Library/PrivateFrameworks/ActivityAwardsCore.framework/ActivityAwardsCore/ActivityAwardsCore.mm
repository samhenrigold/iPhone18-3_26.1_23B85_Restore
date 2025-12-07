id ActivityAwardsQuery.init(initialAwardsHandler:addedAwardsHandler:removedAwardsHandler:updatedAwardsHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v8[OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_connection] = 0;
  sub_227781E28();
  swift_allocObject();
  *&v8[OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_lock] = sub_227781E18();
  v17 = &v8[OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_initialAwardsHandler];
  *v17 = a1;
  *(v17 + 1) = a2;
  v18 = &v8[OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_addedAwardsHandler];
  *v18 = a3;
  *(v18 + 1) = a4;
  v19 = &v8[OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_removedAwardsHandler];
  *v19 = a5;
  *(v19 + 1) = a6;
  v20 = &v8[OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_updatedAwardsHandler];
  *v20 = a7;
  *(v20 + 1) = a8;
  v22.receiver = v8;
  v22.super_class = type metadata accessor for ActivityAwardsQuery();
  return objc_msgSendSuper2(&v22, sel_init);
}

uint64_t sub_22776D974()
{
  v1 = v0;
  v2 = sub_227781F08();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227781ED8();
  v6 = sub_227781EF8();
  v7 = sub_227782008();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22776C000, v6, v7, "[ActivityAwardsQuery] activate", v8, 2u);
    MEMORY[0x22AA9AED0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = sub_227781F28();
  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  v13 = v1;
  sub_22776DB68(v9, v11, sub_22776E914, v12);
}

uint64_t sub_22776DB30()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22776DB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v7 = sub_227781F08();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x277CCAE80]) initWithMachServiceName:*MEMORY[0x277CE8DB8] options:0];
  v12 = [objc_opt_self() interfaceWithProtocol_];
  [v11 setRemoteObjectInterface_];

  v37 = sub_2277718CC;
  v38 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_22777C098;
  v36 = &block_descriptor_85;
  v13 = _Block_copy(&aBlock);
  [v11 setInvalidationHandler_];
  _Block_release(v13);
  v37 = sub_2277718D0;
  v38 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_22777C098;
  v36 = &block_descriptor_88;
  v14 = _Block_copy(&aBlock);
  [v11 setInterruptionHandler_];
  _Block_release(v14);
  [v11 resume];
  v37 = sub_2277718D4;
  v38 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_22777C0DC;
  v36 = &block_descriptor_91;
  v15 = _Block_copy(&aBlock);
  v16 = [v11 remoteObjectProxyWithErrorHandler_];
  _Block_release(v15);
  sub_227782018();
  swift_unknownObjectRelease();
  sub_22776E030(v32, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE520, &qword_227782BB8);
  if (swift_dynamicCast())
  {
    v17 = v31;
    v18 = sub_227781F18();
    v19 = swift_allocObject();
    v19[2] = v4;
    v19[3] = a1;
    v20 = v29;
    v21 = v30;
    v19[4] = a2;
    v19[5] = v20;
    v19[6] = v21;
    v37 = sub_22776E168;
    v38 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v34 = 1107296256;
    v35 = sub_22776E0DC;
    v36 = &block_descriptor_97;
    v22 = _Block_copy(&aBlock);
    v23 = v4;

    [v17 createEndpointNamed:v18 completion:v22];
    _Block_release(v22);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_227781EC8();
    v24 = sub_227781EF8();
    v25 = sub_227782008();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_22776C000, v24, v25, "Proxy does not conform to endpoint interface", v26, 2u);
      MEMORY[0x22AA9AED0](v26, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
  }

  return __swift_destroy_boxed_opaque_existential_0(v32);
}

uint64_t block_copy_helper_102(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22776E030(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

void sub_22776E0DC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_22776E198(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(id), uint64_t a7)
{
  v44 = a7;
  v13 = sub_227781F08();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  if (a1)
  {
    v43 = a6;
    v45 = v13;
    v20 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v21 = a1;
    v22 = [v20 initWithListenerEndpoint_];
    v23 = AACTransportInterface();
    [v22 setExportedInterface_];

    v24 = AACTransportInterface();
    [v22 setRemoteObjectInterface_];

    [v22 setExportedObject_];
    v25 = swift_allocObject();
    *(v25 + 16) = a4;
    *(v25 + 24) = a5;
    v50 = sub_227777E9C;
    v51 = v25;
    aBlock = MEMORY[0x277D85DD0];
    v47 = 1107296256;
    v48 = sub_22777C098;
    v49 = &block_descriptor_104;
    v26 = _Block_copy(&aBlock);

    [v22 setInvalidationHandler_];
    _Block_release(v26);
    v27 = swift_allocObject();
    *(v27 + 16) = a4;
    *(v27 + 24) = a5;
    v50 = sub_227777EA0;
    v51 = v27;
    aBlock = MEMORY[0x277D85DD0];
    v47 = 1107296256;
    v48 = sub_22777C098;
    v49 = &block_descriptor_111;
    v28 = _Block_copy(&aBlock);

    [v22 setInterruptionHandler_];
    _Block_release(v28);
    [v22 resume];
    sub_227781EC8();

    v29 = sub_227781EF8();
    v30 = sub_227782008();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      aBlock = v32;
      *v31 = 136446210;
      *(v31 + 4) = sub_22776E73C(a4, a5, &aBlock);
      _os_log_impl(&dword_22776C000, v29, v30, "XPC endpoint connection setup complete for %{public}s.", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x22AA9AED0](v32, -1, -1);
      MEMORY[0x22AA9AED0](v31, -1, -1);
    }

    (*(v14 + 8))(v19, v45);
    v43(v22);
  }

  else
  {
    sub_227781EC8();

    v33 = a2;
    v34 = sub_227781EF8();
    v35 = sub_227781FF8();

    if (os_log_type_enabled(v34, v35))
    {
      v45 = v13;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock = v38;
      *v36 = 136446466;
      *(v36 + 4) = sub_22776E73C(a4, a5, &aBlock);
      *(v36 + 12) = 2114;
      if (a2)
      {
        v39 = a2;
        v40 = _swift_stdlib_bridgeErrorToNSError();
        v41 = v40;
      }

      else
      {
        v40 = 0;
        v41 = 0;
      }

      *(v36 + 14) = v40;
      *v37 = v41;
      _os_log_impl(&dword_22776C000, v34, v35, "Unable to establish XPC endpoint connection for %{public}s. Error: %{public}@", v36, 0x16u);
      sub_227776718(v37);
      MEMORY[0x22AA9AED0](v37, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x22AA9AED0](v38, -1, -1);
      MEMORY[0x22AA9AED0](v36, -1, -1);

      (*(v14 + 8))(v17, v45);
    }

    else
    {

      (*(v14 + 8))(v17, v13);
    }
  }
}

uint64_t sub_22776E6FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_22776E73C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22776E808(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_22776E030(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_22776E808(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2277816BC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_227782058();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_22776E980(char *a1, void *a2)
{
  v5 = sub_227781F08();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE420, &qword_227782940);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v39 - v10;
  v12 = *&a1[OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_connection];
  *&a1[OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_connection] = a2;
  v13 = a2;

  aBlock[4] = sub_2277792E8;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22777C0DC;
  aBlock[3] = &block_descriptor_0;
  v14 = _Block_copy(aBlock);
  v15 = [v13 remoteObjectProxyWithErrorHandler_];
  _Block_release(v14);
  sub_227782018();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE4A8, &qword_227782C90);
  if (swift_dynamicCast())
  {
    v16 = aBlock[7];
    sub_227781FC8();
    v17 = sub_227781FE8();
    (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v16;
    v18[5] = a1;
    swift_unknownObjectRetain();
    v19 = a1;
    sub_22777E970(0, 0, v11, &unk_227782CA0, v18);

    aBlock[0] = v19;
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    v21 = swift_allocObject();
    v40 = v2;
    *(v21 + 16) = sub_227779A28;
    *(v21 + 24) = v20;
    type metadata accessor for ActivityAwardsQuery();
    sub_227781EB8();
    sub_22776F040(&qword_280DD11C8, v22, type metadata accessor for ActivityAwardsQuery, &protocol conformance descriptor for BaseQuery);
    v23 = v19;
    sub_227781E48();

    aBlock[0] = v23;
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_227779A4C;
    *(v25 + 24) = v24;
    v26 = v23;
    sub_227781E48();

    aBlock[0] = v26;
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_227770218;
    *(v28 + 24) = v27;
    v29 = v26;
    sub_227781E48();

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_227781EC8();
    v31 = sub_227781EF8();
    v32 = sub_227782008();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock[0] = v34;
      *v33 = 136446210;
      v35 = sub_227781F28();
      v37 = sub_22776E73C(v35, v36, aBlock);
      v40 = v5;
      v38 = v37;

      *(v33 + 4) = v38;
      _os_log_impl(&dword_22776C000, v31, v32, "XPC client-side connection failed to get expected proxy type for %{public}s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x22AA9AED0](v34, -1, -1);
      MEMORY[0x22AA9AED0](v33, -1, -1);

      return (*(v6 + 8))(v8, v40);
    }

    else
    {

      return (*(v6 + 8))(v8, v5);
    }
  }
}

uint64_t sub_22776EF50()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22776EF98()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
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

uint64_t sub_22776F040(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_22776F09C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22776FF20;

  return sub_22776F15C(a1, v4, v5, v7, v6);
}

uint64_t sub_22776F15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 160) = a4;
  *(v5 + 168) = a5;
  return MEMORY[0x2822009F8](sub_22776F17C, 0, 0);
}

uint64_t sub_22776F17C()
{
  v0[10] = 1;
  v1 = sub_227781E58();
  v0[22] = 0;
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = v1;
    v5 = v2;
    v3 = sub_227781DD8();
    sub_22776F3A4(v4, v5);
  }

  v0[23] = v3;
  v6 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_22777051C;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE4B0, qword_227782B10);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2277702B4;
  v0[13] = &block_descriptor_38;
  v0[14] = v7;
  [v6 transportRequest:2 data:v3 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t objectdestroy_37Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22776F3A4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22776F3B8(a1, a2);
  }

  return a1;
}

uint64_t sub_22776F3B8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_22776F5A8()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22776F5F8(uint64_t a1, const char *a2, void *a3)
{
  v6 = v3;
  v7 = sub_227781F08();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227781ED8();

  v11 = sub_227781EF8();
  v12 = sub_227782008();
  if (os_log_type_enabled(v11, v12))
  {
    v19 = a3;
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    v14 = sub_227781E98();
    if (v14 >> 62)
    {
      v18 = v14;
      v15 = sub_227782068();
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v13 + 4) = v15;

    _os_log_impl(&dword_22776C000, v11, v12, a2, v13, 0xCu);
    MEMORY[0x22AA9AED0](v13, -1, -1);

    a3 = v19;
  }

  else
  {
  }

  (*(v8 + 8))(v10, v7);
  v16 = *(v6 + *a3);
  sub_227781E98();
  v16();
}

uint64_t sub_22776F7F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE420, &qword_227782940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22776F858(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22776FD64;

  return sub_22776FAB8(a1, v4);
}

uint64_t sub_22776F910()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22776FF20;

  return sub_227770014(v2, v3, v5, v4);
}

uint64_t sub_22776F9D0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_22776FD64;

  return v6();
}

uint64_t sub_22776FAB8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22776FE28;

  return v6(a1);
}

uint64_t sub_22776FBB0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_22776FF20;

  return v7();
}

uint64_t sub_22776FC98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22776FD64;

  return sub_22776FBB0(a1, v4, v5, v6);
}

uint64_t sub_22776FD68()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22776FD64;

  return sub_22776F9D0(v2, v3, v4);
}

uint64_t sub_22776FE28()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22776FF20()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_227770014(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  if (a2)
  {
    v7 = a2;
    v8 = a4;
    v9 = sub_227781DE8();
    v11 = v10;
  }

  else
  {
    v12 = a4;
    v9 = 0;
    v11 = 0xF000000000000000;
  }

  v4[5] = v9;
  v4[6] = v11;

  return MEMORY[0x2822009F8](sub_2277700CC, 0, 0);
}

uint64_t sub_2277700CC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = sub_227781E68();
  v6 = v5;

  sub_22776F3A4(v2, v1);
  if (v6 >> 60 == 15)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v9 = sub_227781DD8();
    sub_22776F3A4(v4, v6);
    v7 = v9;
    v8 = v9;
  }

  v10 = v0[4];
  v10[2](v10, v7, 0);

  _Block_release(v10);
  v11 = v0[1];

  return v11();
}

uint64_t objectdestroy_7Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2277702B4(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE530, &unk_227782BC8);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = a2;
      v10 = sub_227781DE8();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0xF000000000000000;
    }

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_2277703AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22777062C(a1, a2);
  }

  return a1;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_227770404()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  sub_227781EB8();
  sub_2277703AC(v2, v3);
  v4 = sub_227781EA8();
  if (v1)
  {

    sub_227775BE8();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
  }

  else
  {
    sub_227770680(v4);
  }

  sub_22776F3A4(v2, v3);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_22777051C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_227779490;
  }

  else
  {
    v2 = sub_227770404;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22777062C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

id sub_227770754(uint64_t a1)
{
  type metadata accessor for ActivityAwardsQuery();
  sub_22776F040(&qword_280DD11C8, v2, type metadata accessor for ActivityAwardsQuery, &protocol conformance descriptor for BaseQuery);
  sub_227781E38();
  sub_227781E38();
  sub_227781E38();
  return [*(a1 + OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_connection) invalidate];
}

uint64_t sub_22777084C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2277708BC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2277708F4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22777093C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2277709A4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2277709DC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_227770A2C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_227770A68()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_227770AB4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id BaseQuery.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BaseQuery.init()(uint64_t a1, uint64_t a2)
{
  sub_227781E88();
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC18ActivityAwardsCore9BaseQuery_transportDispatchService] = sub_227781E78();
  v4.receiver = v2;
  v4.super_class = type metadata accessor for BaseQuery();
  return objc_msgSendSuper2(&v4, sel_init);
}

id BaseQuery.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseQuery();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t BaseQuery.transportRequest(_:data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_227770C30, 0, 0);
}

uint64_t sub_227770C30()
{
  v1 = sub_227781E68();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_227770DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE420, &qword_227782940);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_227771268(a3, v23 - v10);
  v12 = sub_227781FE8();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_22776F7F0(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_227781FD8();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_227781F98();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_227781F38() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_22776F7F0(a3);

    return v21;
  }

LABEL_8:
  sub_22776F7F0(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t _s18ActivityAwardsCore9BaseQueryC14transportEvent_4dataySo16AACTransportItemV_10Foundation4DataVSgtF_0(uint64_t a1)
{
  swift_getObjectType();
  v2 = sub_227781F08();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227781EE8();
  v6 = sub_227781EF8();
  v7 = sub_227781FF8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315394;
    v10 = sub_227782158();
    v12 = sub_22776E73C(v10, v11, &v15);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2048;
    *(v8 + 14) = a1;
    _os_log_impl(&dword_22776C000, v6, v7, "Unexpectedly received a transport event for query %s with item: %lu", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9AED0](v9, -1, -1);
    MEMORY[0x22AA9AED0](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
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

uint64_t sub_227771268(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE420, &qword_227782940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2277712D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22776FF20;

  return sub_22776FAB8(a1, v4);
}

void type metadata accessor for AACTransportItem()
{
  if (!qword_27D7CE428)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27D7CE428);
    }
  }
}

uint64_t sub_22777141C(const char *a1)
{
  v2 = sub_227781F08();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227781EC8();
  v6 = sub_227781EF8();
  v7 = sub_227782008();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22776C000, v6, v7, a1, v8, 2u);
    MEMORY[0x22AA9AED0](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_227771558(void *a1)
{
  v2 = sub_227781F08();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227781EC8();
  v6 = a1;
  v7 = sub_227781EF8();
  v8 = sub_227781FF8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v11 = sub_2277820D8();
    v13 = sub_22776E73C(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_22776C000, v7, v8, "Error setting up proxy; unable to obtain query endpoint: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9AED0](v10, -1, -1);
    MEMORY[0x22AA9AED0](v9, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_227771724(uint64_t a1, unint64_t a2, const char *a3, ...)
{
  v6 = sub_227781F08();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227781EC8();

  v10 = sub_227781EF8();
  v11 = sub_227782008();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_22776E73C(a1, a2, &v16);
    _os_log_impl(&dword_22776C000, v10, v11, a3, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AA9AED0](v13, -1, -1);
    MEMORY[0x22AA9AED0](v12, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t QueryError.hashValue.getter()
{
  v1 = *v0;
  sub_227782128();
  MEMORY[0x22AA9AA40](v1);
  return sub_227782148();
}

uint64_t sub_22777197C()
{
  v1 = *v0;
  sub_227782128();
  MEMORY[0x22AA9AA40](v1);
  return sub_227782148();
}

uint64_t sub_2277719F0(uint64_t a1)
{
  v2 = *v1;
  sub_227782128();
  MEMORY[0x22AA9AA40](v2);
  return sub_227782148();
}

unint64_t sub_227771A38()
{
  result = qword_27D7CE490;
  if (!qword_27D7CE490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CE490);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QueryError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for QueryError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_227771C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v7 = sub_227781F08();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x277CCAE80]) initWithMachServiceName:*MEMORY[0x277CE8DB8] options:0];
  v12 = [objc_opt_self() interfaceWithProtocol_];
  [v11 setRemoteObjectInterface_];

  v37 = sub_2277718CC;
  v38 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_22777C098;
  v36 = &block_descriptor_117;
  v13 = _Block_copy(&aBlock);
  [v11 setInvalidationHandler_];
  _Block_release(v13);
  v37 = sub_2277718D0;
  v38 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_22777C098;
  v36 = &block_descriptor_120;
  v14 = _Block_copy(&aBlock);
  [v11 setInterruptionHandler_];
  _Block_release(v14);
  [v11 resume];
  v37 = sub_2277718D4;
  v38 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_22777C0DC;
  v36 = &block_descriptor_123;
  v15 = _Block_copy(&aBlock);
  v16 = [v11 remoteObjectProxyWithErrorHandler_];
  _Block_release(v15);
  sub_227782018();
  swift_unknownObjectRelease();
  sub_22776E030(v32, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE520, &qword_227782BB8);
  if (swift_dynamicCast())
  {
    v17 = v31;
    v18 = sub_227781F18();
    v19 = swift_allocObject();
    v19[2] = v4;
    v19[3] = a1;
    v20 = v29;
    v21 = v30;
    v19[4] = a2;
    v19[5] = v20;
    v19[6] = v21;
    v37 = sub_2277767A8;
    v38 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v34 = 1107296256;
    v35 = sub_22776E0DC;
    v36 = &block_descriptor_129;
    v22 = _Block_copy(&aBlock);
    v23 = v4;

    [v17 createEndpointNamed:v18 completion:v22];
    _Block_release(v22);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_227781EC8();
    v24 = sub_227781EF8();
    v25 = sub_227782008();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_22776C000, v24, v25, "Proxy does not conform to endpoint interface", v26, 2u);
      MEMORY[0x22AA9AED0](v26, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
  }

  return __swift_destroy_boxed_opaque_existential_0(v32);
}

uint64_t sub_2277720B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v7 = sub_227781F08();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x277CCAE80]) initWithMachServiceName:*MEMORY[0x277CE8DB8] options:0];
  v12 = [objc_opt_self() interfaceWithProtocol_];
  [v11 setRemoteObjectInterface_];

  v37 = sub_2277718CC;
  v38 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_22777C098;
  v36 = &block_descriptor_56;
  v13 = _Block_copy(&aBlock);
  [v11 setInvalidationHandler_];
  _Block_release(v13);
  v37 = sub_2277718D0;
  v38 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_22777C098;
  v36 = &block_descriptor_59;
  v14 = _Block_copy(&aBlock);
  [v11 setInterruptionHandler_];
  _Block_release(v14);
  [v11 resume];
  v37 = sub_2277718D4;
  v38 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_22777C0DC;
  v36 = &block_descriptor_62;
  v15 = _Block_copy(&aBlock);
  v16 = [v11 remoteObjectProxyWithErrorHandler_];
  _Block_release(v15);
  sub_227782018();
  swift_unknownObjectRelease();
  sub_22776E030(v32, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE520, &qword_227782BB8);
  if (swift_dynamicCast())
  {
    v17 = v31;
    v18 = sub_227781F18();
    v19 = swift_allocObject();
    v19[2] = v4;
    v19[3] = a1;
    v20 = v29;
    v21 = v30;
    v19[4] = a2;
    v19[5] = v20;
    v19[6] = v21;
    v37 = sub_227776790;
    v38 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v34 = 1107296256;
    v35 = sub_22776E0DC;
    v36 = &block_descriptor_68;
    v22 = _Block_copy(&aBlock);
    v23 = v4;

    [v17 createEndpointNamed:v18 completion:v22];
    _Block_release(v22);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_227781EC8();
    v24 = sub_227781EF8();
    v25 = sub_227782008();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_22776C000, v24, v25, "Proxy does not conform to endpoint interface", v26, 2u);
      MEMORY[0x22AA9AED0](v26, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
  }

  return __swift_destroy_boxed_opaque_existential_0(v32);
}

uint64_t sub_227772550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v7 = sub_227781F08();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x277CCAE80]) initWithMachServiceName:*MEMORY[0x277CE8DB8] options:0];
  v12 = [objc_opt_self() interfaceWithProtocol_];
  [v11 setRemoteObjectInterface_];

  v37 = sub_2277718CC;
  v38 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_22777C098;
  v36 = &block_descriptor_29;
  v13 = _Block_copy(&aBlock);
  [v11 setInvalidationHandler_];
  _Block_release(v13);
  v37 = sub_2277718D0;
  v38 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_22777C098;
  v36 = &block_descriptor_32;
  v14 = _Block_copy(&aBlock);
  [v11 setInterruptionHandler_];
  _Block_release(v14);
  [v11 resume];
  v37 = sub_2277718D4;
  v38 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_22777C0DC;
  v36 = &block_descriptor_35;
  v15 = _Block_copy(&aBlock);
  v16 = [v11 remoteObjectProxyWithErrorHandler_];
  _Block_release(v15);
  sub_227782018();
  swift_unknownObjectRelease();
  sub_22776E030(v32, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE520, &qword_227782BB8);
  if (swift_dynamicCast())
  {
    v17 = v31;
    v18 = sub_227781F18();
    v19 = swift_allocObject();
    v19[2] = v4;
    v19[3] = a1;
    v20 = v29;
    v21 = v30;
    v19[4] = a2;
    v19[5] = v20;
    v19[6] = v21;
    v37 = sub_22777656C;
    v38 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v34 = 1107296256;
    v35 = sub_22776E0DC;
    v36 = &block_descriptor_41;
    v22 = _Block_copy(&aBlock);
    v23 = v4;

    [v17 createEndpointNamed:v18 completion:v22];
    _Block_release(v22);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_227781EC8();
    v24 = sub_227781EF8();
    v25 = sub_227782008();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_22776C000, v24, v25, "Proxy does not conform to endpoint interface", v26, 2u);
      MEMORY[0x22AA9AED0](v26, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
  }

  return __swift_destroy_boxed_opaque_existential_0(v32);
}

void sub_2277729F0(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(id), uint64_t a7)
{
  v44 = a7;
  v13 = sub_227781F08();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  if (a1)
  {
    v43 = a6;
    v45 = v13;
    v20 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v21 = a1;
    v22 = [v20 initWithListenerEndpoint_];
    v23 = AACTransportInterface();
    [v22 setExportedInterface_];

    v24 = AACTransportInterface();
    [v22 setRemoteObjectInterface_];

    [v22 setExportedObject_];
    v25 = swift_allocObject();
    *(v25 + 16) = a4;
    *(v25 + 24) = a5;
    v50 = sub_227777E9C;
    v51 = v25;
    aBlock = MEMORY[0x277D85DD0];
    v47 = 1107296256;
    v48 = sub_22777C098;
    v49 = &block_descriptor_136;
    v26 = _Block_copy(&aBlock);

    [v22 setInvalidationHandler_];
    _Block_release(v26);
    v27 = swift_allocObject();
    *(v27 + 16) = a4;
    *(v27 + 24) = a5;
    v50 = sub_227777EA0;
    v51 = v27;
    aBlock = MEMORY[0x277D85DD0];
    v47 = 1107296256;
    v48 = sub_22777C098;
    v49 = &block_descriptor_143;
    v28 = _Block_copy(&aBlock);

    [v22 setInterruptionHandler_];
    _Block_release(v28);
    [v22 resume];
    sub_227781EC8();

    v29 = sub_227781EF8();
    v30 = sub_227782008();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      aBlock = v32;
      *v31 = 136446210;
      *(v31 + 4) = sub_22776E73C(a4, a5, &aBlock);
      _os_log_impl(&dword_22776C000, v29, v30, "XPC endpoint connection setup complete for %{public}s.", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x22AA9AED0](v32, -1, -1);
      MEMORY[0x22AA9AED0](v31, -1, -1);
    }

    (*(v14 + 8))(v19, v45);
    v43(v22);
  }

  else
  {
    sub_227781EC8();

    v33 = a2;
    v34 = sub_227781EF8();
    v35 = sub_227781FF8();

    if (os_log_type_enabled(v34, v35))
    {
      v45 = v13;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock = v38;
      *v36 = 136446466;
      *(v36 + 4) = sub_22776E73C(a4, a5, &aBlock);
      *(v36 + 12) = 2114;
      if (a2)
      {
        v39 = a2;
        v40 = _swift_stdlib_bridgeErrorToNSError();
        v41 = v40;
      }

      else
      {
        v40 = 0;
        v41 = 0;
      }

      *(v36 + 14) = v40;
      *v37 = v41;
      _os_log_impl(&dword_22776C000, v34, v35, "Unable to establish XPC endpoint connection for %{public}s. Error: %{public}@", v36, 0x16u);
      sub_227776718(v37);
      MEMORY[0x22AA9AED0](v37, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x22AA9AED0](v38, -1, -1);
      MEMORY[0x22AA9AED0](v36, -1, -1);

      (*(v14 + 8))(v17, v45);
    }

    else
    {

      (*(v14 + 8))(v17, v13);
    }
  }
}

void sub_227772F54(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(id), uint64_t a7)
{
  v44 = a7;
  v13 = sub_227781F08();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  if (a1)
  {
    v43 = a6;
    v45 = v13;
    v20 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v21 = a1;
    v22 = [v20 initWithListenerEndpoint_];
    v23 = AACTransportInterface();
    [v22 setExportedInterface_];

    v24 = AACTransportInterface();
    [v22 setRemoteObjectInterface_];

    [v22 setExportedObject_];
    v25 = swift_allocObject();
    *(v25 + 16) = a4;
    *(v25 + 24) = a5;
    v50 = sub_227777E9C;
    v51 = v25;
    aBlock = MEMORY[0x277D85DD0];
    v47 = 1107296256;
    v48 = sub_22777C098;
    v49 = &block_descriptor_75;
    v26 = _Block_copy(&aBlock);

    [v22 setInvalidationHandler_];
    _Block_release(v26);
    v27 = swift_allocObject();
    *(v27 + 16) = a4;
    *(v27 + 24) = a5;
    v50 = sub_227777EA0;
    v51 = v27;
    aBlock = MEMORY[0x277D85DD0];
    v47 = 1107296256;
    v48 = sub_22777C098;
    v49 = &block_descriptor_82;
    v28 = _Block_copy(&aBlock);

    [v22 setInterruptionHandler_];
    _Block_release(v28);
    [v22 resume];
    sub_227781EC8();

    v29 = sub_227781EF8();
    v30 = sub_227782008();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      aBlock = v32;
      *v31 = 136446210;
      *(v31 + 4) = sub_22776E73C(a4, a5, &aBlock);
      _os_log_impl(&dword_22776C000, v29, v30, "XPC endpoint connection setup complete for %{public}s.", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x22AA9AED0](v32, -1, -1);
      MEMORY[0x22AA9AED0](v31, -1, -1);
    }

    (*(v14 + 8))(v19, v45);
    v43(v22);
  }

  else
  {
    sub_227781EC8();

    v33 = a2;
    v34 = sub_227781EF8();
    v35 = sub_227781FF8();

    if (os_log_type_enabled(v34, v35))
    {
      v45 = v13;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock = v38;
      *v36 = 136446466;
      *(v36 + 4) = sub_22776E73C(a4, a5, &aBlock);
      *(v36 + 12) = 2114;
      if (a2)
      {
        v39 = a2;
        v40 = _swift_stdlib_bridgeErrorToNSError();
        v41 = v40;
      }

      else
      {
        v40 = 0;
        v41 = 0;
      }

      *(v36 + 14) = v40;
      *v37 = v41;
      _os_log_impl(&dword_22776C000, v34, v35, "Unable to establish XPC endpoint connection for %{public}s. Error: %{public}@", v36, 0x16u);
      sub_227776718(v37);
      MEMORY[0x22AA9AED0](v37, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x22AA9AED0](v38, -1, -1);
      MEMORY[0x22AA9AED0](v36, -1, -1);

      (*(v14 + 8))(v17, v45);
    }

    else
    {

      (*(v14 + 8))(v17, v13);
    }
  }
}

void sub_2277734B8(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(id), uint64_t a7)
{
  v44 = a7;
  v13 = sub_227781F08();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  if (a1)
  {
    v43 = a6;
    v45 = v13;
    v20 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v21 = a1;
    v22 = [v20 initWithListenerEndpoint_];
    v23 = AACTransportInterface();
    [v22 setExportedInterface_];

    v24 = AACTransportInterface();
    [v22 setRemoteObjectInterface_];

    [v22 setExportedObject_];
    v25 = swift_allocObject();
    *(v25 + 16) = a4;
    *(v25 + 24) = a5;
    v50 = sub_227776780;
    v51 = v25;
    aBlock = MEMORY[0x277D85DD0];
    v47 = 1107296256;
    v48 = sub_22777C098;
    v49 = &block_descriptor_47;
    v26 = _Block_copy(&aBlock);

    [v22 setInvalidationHandler_];
    _Block_release(v26);
    v27 = swift_allocObject();
    *(v27 + 16) = a4;
    *(v27 + 24) = a5;
    v50 = sub_227776788;
    v51 = v27;
    aBlock = MEMORY[0x277D85DD0];
    v47 = 1107296256;
    v48 = sub_22777C098;
    v49 = &block_descriptor_53;
    v28 = _Block_copy(&aBlock);

    [v22 setInterruptionHandler_];
    _Block_release(v28);
    [v22 resume];
    sub_227781EC8();

    v29 = sub_227781EF8();
    v30 = sub_227782008();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      aBlock = v32;
      *v31 = 136446210;
      *(v31 + 4) = sub_22776E73C(a4, a5, &aBlock);
      _os_log_impl(&dword_22776C000, v29, v30, "XPC endpoint connection setup complete for %{public}s.", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x22AA9AED0](v32, -1, -1);
      MEMORY[0x22AA9AED0](v31, -1, -1);
    }

    (*(v14 + 8))(v19, v45);
    v43(v22);
  }

  else
  {
    sub_227781EC8();

    v33 = a2;
    v34 = sub_227781EF8();
    v35 = sub_227781FF8();

    if (os_log_type_enabled(v34, v35))
    {
      v45 = v13;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock = v38;
      *v36 = 136446466;
      *(v36 + 4) = sub_22776E73C(a4, a5, &aBlock);
      *(v36 + 12) = 2114;
      if (a2)
      {
        v39 = a2;
        v40 = _swift_stdlib_bridgeErrorToNSError();
        v41 = v40;
      }

      else
      {
        v40 = 0;
        v41 = 0;
      }

      *(v36 + 14) = v40;
      *v37 = v41;
      _os_log_impl(&dword_22776C000, v34, v35, "Unable to establish XPC endpoint connection for %{public}s. Error: %{public}@", v36, 0x16u);
      sub_227776718(v37);
      MEMORY[0x22AA9AED0](v37, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x22AA9AED0](v38, -1, -1);
      MEMORY[0x22AA9AED0](v36, -1, -1);

      (*(v14 + 8))(v17, v45);
    }

    else
    {

      (*(v14 + 8))(v17, v13);
    }
  }
}

id ActivityAwardsDateQuery.__allocating_init(dateComponents:initialAwardsHandler:updateHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v5);
  *&v12[OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_connection] = 0;
  v12[OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_isActive] = 0;
  sub_227781E28();
  swift_allocObject();
  *&v12[OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_lock] = sub_227781E18();
  v13 = OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_dateComponents;
  v14 = sub_227781DB8();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v12[v13], a1, v14);
  v16 = &v12[OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_initialAwardsHandler];
  *v16 = a2;
  v16[1] = a3;
  v17 = &v12[OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_updateAwardsHandler];
  *v17 = a4;
  v17[1] = a5;
  v20.receiver = v12;
  v20.super_class = v6;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  (*(v15 + 8))(a1, v14);
  return v18;
}

id ActivityAwardsDateQuery.init(dateComponents:initialAwardsHandler:updateHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  *&v5[OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_connection] = 0;
  v5[OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_isActive] = 0;
  sub_227781E28();
  swift_allocObject();
  *&v5[OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_lock] = sub_227781E18();
  v12 = OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_dateComponents;
  v13 = sub_227781DB8();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v6[v12], a1, v13);
  v15 = &v6[OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_initialAwardsHandler];
  *v15 = a2;
  *(v15 + 1) = a3;
  v16 = &v6[OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_updateAwardsHandler];
  *v16 = a4;
  *(v16 + 1) = a5;
  v19.receiver = v6;
  v19.super_class = type metadata accessor for ActivityAwardsDateQuery(0);
  v17 = objc_msgSendSuper2(&v19, sel_init);
  (*(v14 + 8))(a1, v13);
  return v17;
}

uint64_t type metadata accessor for ActivityAwardsDateQuery(uint64_t a1)
{
  result = qword_280DD1190;
  if (!qword_280DD1190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227773D14()
{
  v1 = OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_dateComponents;
  v2 = sub_227781DB8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

id ActivityAwardsDateQuery.__deallocating_deinit()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE5B0, qword_227782AF0);
  sub_227781E08();

  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityAwardsDateQuery(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_227773FE4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_227781DB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227781DA8();
  v9 = ACHYearMonthDayStringFromDateComponents();

  if (v9)
  {

    (*(v5 + 16))(v7, a1, v4);
    v10 = OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_dateComponents;
    swift_beginAccess();
    (*(v5 + 40))(&v2[v10], v7, v4);
    result = swift_endAccess();
    v12 = OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_isActive;
    if (v2[OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_isActive] == 1)
    {
      MEMORY[0x28223BE20](result);
      *(&v19 - 2) = v2;
      sub_227781E08();
      v13 = sub_227781F28();
      v15 = v14;
      v16 = swift_allocObject();
      *(v16 + 16) = v2;
      v17 = v2;
      sub_227771C10(v13, v15, sub_227775D00, v16);

      v2[v12] = 1;
    }
  }

  else
  {
    sub_227775BE8();
    swift_allocError();
    *v18 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_227774250()
{
  v1[26] = v0;
  v2 = sub_227781DB8();
  v1[27] = v2;
  v1[28] = *(v2 - 8);
  v1[29] = swift_task_alloc();
  v3 = sub_227781F08();
  v1[30] = v3;
  v1[31] = *(v3 - 8);
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227774378, 0, 0);
}

uint64_t sub_227774378(uint64_t a1)
{
  sub_227781EC8();
  v2 = sub_227781EF8();
  v3 = sub_227782008();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22776C000, v2, v3, "Running query immediately.", v4, 2u);
    MEMORY[0x22AA9AED0](v4, -1, -1);
  }

  v5 = v1[33];
  v6 = v1[30];
  v7 = v1[31];
  v8 = v1[26];

  v9 = *(v7 + 8);
  v9(v5, v6);
  v10 = swift_task_alloc();
  v10[2] = v8;
  v10[3] = sub_227774BCC;
  v10[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE4A8, &qword_227782C90);
  sub_227781E08();
  v35 = v9;

  v36 = v1[25];
  v1[34] = v36;
  sub_227781EC8();
  v13 = sub_227781EF8();
  v14 = sub_227782008();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_22776C000, v13, v14, "Obtained proxy for query run. Sending transport request.", v15, 2u);
    MEMORY[0x22AA9AED0](v15, -1, -1);
  }

  v16 = v1[32];
  v18 = v1[29];
  v17 = v1[30];
  v20 = v1[27];
  v19 = v1[28];
  v21 = v1[26];

  v35(v16, v17);
  v22 = OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_dateComponents;
  swift_beginAccess();
  (*(v19 + 16))(v18, v21 + v22, v20);
  v23 = sub_227781DA8();
  (*(v19 + 8))(v18, v20);
  v24 = ACHYearMonthDayStringFromDateComponents();

  if (v24)
  {
    v25 = sub_227781F28();
    v27 = v26;

    v1[21] = v25;
    v1[22] = v27;
    v28 = sub_227781E58();
    v1[35] = 0;
    v1[36] = v28;
    v1[37] = v29;
    v31 = v29;
    v32 = v28;

    if (v31 >> 60 == 15)
    {
      v33 = 0;
    }

    else
    {
      sub_22777062C(v32, v31);
      v33 = sub_227781DD8();
      sub_22776F3A4(v32, v31);
    }

    v1[38] = v33;
    v1[2] = v1;
    v1[7] = v1 + 23;
    v1[3] = sub_227774844;
    v34 = swift_continuation_init();
    v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE4B0, qword_227782B10);
    v1[10] = MEMORY[0x277D85DD0];
    v1[11] = 1107296256;
    v1[12] = sub_2277702B4;
    v1[13] = &block_descriptor;
    v1[14] = v34;
    [v36 transportRequest:7 data:v33 completion:v1 + 10];

    return MEMORY[0x282200938](v1 + 2);
  }

  else
  {
    sub_227775BE8();
    swift_allocError();
    *v30 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();

    v11 = v1[1];

    return v11();
  }
}

uint64_t sub_227774844()
{
  v1 = *(*v0 + 48);
  *(*v0 + 312) = v1;
  if (v1)
  {
    v2 = sub_227774B1C;
  }

  else
  {
    v2 = sub_227774954;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227774954()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);

  sub_227781EB8();
  sub_2277703AC(v2, v3);
  sub_227781EA8();
  v5 = *(v0 + 288);
  v4 = *(v0 + 296);
  if (v1)
  {

    sub_227775BE8();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
    sub_22776F3A4(v2, v3);
    sub_22776F3A4(v5, v4);
    swift_unknownObjectRelease();

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v10 = sub_227781E98();

    sub_22776F3A4(v2, v3);
    sub_22776F3A4(v5, v4);
    swift_unknownObjectRelease();

    v9 = *(v0 + 8);

    return v9(v10);
  }
}

uint64_t sub_227774B1C()
{
  v1 = v0[38];
  v2 = v0[36];
  v3 = v0[37];
  swift_willThrow();
  sub_22776F3A4(v2, v3);
  swift_unknownObjectRelease();

  v4 = v0[1];

  return v4();
}

uint64_t sub_227774BCC(void *a1)
{
  v2 = sub_227781F08();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227781EC8();
  v6 = a1;
  v7 = sub_227781EF8();
  v8 = sub_227781FF8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v11 = sub_2277820D8();
    v13 = sub_22776E73C(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_22776C000, v7, v8, "Unable to get proxy: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9AED0](v10, -1, -1);
    MEMORY[0x22AA9AED0](v9, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_227774D98()
{
  v1 = sub_227781F28();
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v5 = v0;
  sub_227771C10(v1, v3, sub_227777F00, v4);

  v5[OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_isActive] = 1;
  return result;
}

uint64_t sub_227774E4C(char *a1, void *a2)
{
  v4 = sub_227781F08();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE420, &qword_227782940);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - v9;
  v11 = *&a1[OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_connection];
  *&a1[OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_connection] = a2;
  v12 = a2;

  aBlock[4] = sub_2277752F8;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22777C0DC;
  aBlock[3] = &block_descriptor_146;
  v13 = _Block_copy(aBlock);
  v14 = [v12 remoteObjectProxyWithErrorHandler_];
  _Block_release(v13);
  sub_227782018();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE4A8, &qword_227782C90);
  if (swift_dynamicCast())
  {
    v15 = aBlock[7];
    sub_227781FC8();
    v16 = sub_227781FE8();
    (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v15;
    v17[5] = a1;
    swift_unknownObjectRetain();
    v18 = a1;
    sub_22777E970(0, 0, v10, &unk_227782BE0, v17);

    aBlock[0] = v18;
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_22777689C;
    *(v20 + 24) = v19;
    type metadata accessor for ActivityAwardsDateQuery(0);
    sub_227781EB8();
    sub_2277768A4(&qword_27D7CE548, type metadata accessor for ActivityAwardsDateQuery, &protocol conformance descriptor for BaseQuery);
    v21 = v18;
    sub_227781E48();

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_227781EC8();
    v23 = sub_227781EF8();
    v24 = sub_227782008();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock[0] = v26;
      *v25 = 136446210;
      v27 = sub_227781F28();
      v31 = v4;
      v29 = sub_22776E73C(v27, v28, aBlock);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_22776C000, v23, v24, "XPC client-side connection failed to get expected proxy type for %{public}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x22AA9AED0](v26, -1, -1);
      MEMORY[0x22AA9AED0](v25, -1, -1);

      return (*(v5 + 8))(v7, v31);
    }

    else
    {

      return (*(v5 + 8))(v7, v4);
    }
  }
}

uint64_t sub_2277752F8()
{
  v0 = sub_227781F08();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227781EC8();
  v4 = sub_227781EF8();
  v5 = sub_227782008();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v8 = sub_227781F28();
    v10 = sub_22776E73C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_22776C000, v4, v5, "XPC client-side connection failed to get proxy for %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA9AED0](v7, -1, -1);
    MEMORY[0x22AA9AED0](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_2277754A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  v6 = sub_227781DB8();
  v5[27] = v6;
  v5[28] = *(v6 - 8);
  v5[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227775560, 0, 0);
}

uint64_t sub_227775560()
{
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_dateComponents;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  v6 = sub_227781DA8();
  (*(v2 + 8))(v1, v3);
  v7 = ACHYearMonthDayStringFromDateComponents();

  if (v7)
  {
    v8 = sub_227781F28();
    v10 = v9;

    v0[23] = v8;
    v0[24] = v10;
    v11 = sub_227781E58();
    v13 = v12;
    v0[30] = 0;

    if (v13 >> 60 == 15)
    {
      v14 = 0;
    }

    else
    {
      v14 = sub_227781DD8();
      sub_22776F3A4(v11, v13);
    }

    v0[31] = v14;
    v18 = v0[25];
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_227775818;
    v19 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE4B0, qword_227782B10);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2277702B4;
    v0[13] = &block_descriptor_162;
    v0[14] = v19;
    [v18 transportRequest:7 data:v14 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    sub_227775BE8();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_227775818()
{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {
    v2 = sub_227775A90;
  }

  else
  {
    v2 = sub_227775928;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227775928()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);

  sub_227781EB8();
  sub_2277703AC(v2, v3);
  sub_227781EA8();
  if (v1)
  {

    sub_227775BE8();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
  }

  else
  {
    v6 = *(v0 + 208);
    v7 = sub_227781E98();
    sub_227777640(v7);
    v9 = v8;

    (*(v6 + OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_initialAwardsHandler))(v9);
  }

  sub_22776F3A4(v2, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_227775A90()
{
  v1 = *(v0 + 248);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_227775B08(uint64_t a1, uint64_t a2)
{
  v3 = sub_227781E98();
  sub_227777640(v3);
  v5 = v4;

  (*(a2 + OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_updateAwardsHandler))(v5);
}

unint64_t sub_227775BE8()
{
  result = qword_27D7CE4A0;
  if (!qword_27D7CE4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CE4A0);
  }

  return result;
}

id sub_227775C3C(uint64_t a1)
{
  type metadata accessor for ActivityAwardsDateQuery(0);
  sub_2277768A4(&qword_27D7CE548, type metadata accessor for ActivityAwardsDateQuery, &protocol conformance descriptor for BaseQuery);
  sub_227781E38();
  return [*(a1 + OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_connection) invalidate];
}

void sub_227775D04(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_227781F28();
  sub_22777C144(v8, v9);

  v10 = *(a1 + OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_connection);
  if (v10)
  {
    aBlock[4] = a2;
    aBlock[5] = a3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22777C0DC;
    aBlock[3] = &block_descriptor_114;
    v11 = _Block_copy(aBlock);
    v12 = v10;

    v13 = [v12 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v11);
    sub_227782018();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE4A8, &qword_227782C90);
    if (swift_dynamicCast())
    {

      *a4 = v18;
    }

    else
    {
      v16 = sub_227781DF8();
      sub_2277768A4(&qword_27D7CE538, MEMORY[0x277CE8E10], MEMORY[0x277CE8E18]);
      swift_allocError();
      (*(*(v16 - 8) + 104))(v17, *MEMORY[0x277CE8E00], v16);
      swift_willThrow();
    }
  }

  else
  {
    v14 = sub_227781DF8();
    sub_2277768A4(&qword_27D7CE538, MEMORY[0x277CE8E10], MEMORY[0x277CE8E18]);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277CE8E08], v14);
    swift_willThrow();
  }
}

id ActivityAwardsDateQuery.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_227776068(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_227776128(uint64_t a1)
{
  result = sub_227781DB8();
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

uint64_t dispatch thunk of ActivityAwardsDateQuery.runQueryImmediately()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x100);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_227776384;

  return v5();
}

uint64_t sub_227776384(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

id sub_22777650C@<X0>(BOOL *a1@<X8>)
{
  v3 = *(*(v1 + 16) + OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_connection);
  if (v3)
  {
    result = [v3 invalidate];
  }

  *a1 = v3 == 0;
  return result;
}

char *sub_227776584(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE550, &qword_227782BE8);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_227776690(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE578, &qword_227782C00);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_227776718(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE528, &qword_227782BC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2277767DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22776FF20;

  return sub_2277754A0(a1, v4, v5, v7, v6);
}

uint64_t sub_2277768A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2277768EC(uint64_t a1, uint64_t a2)
{
  sub_227782128();
  sub_227781F48();
  v4 = sub_227782148();

  return sub_227776FBC(a1, a2, v4);
}

uint64_t sub_227776964(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_227776A10(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_227782068();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_227782068();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_227776B00(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2277771E0(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_227776B00(uint64_t a1, char a2)
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

  sub_227782068();
LABEL_9:
  result = sub_227782048();
  *v2 = result;
  return result;
}

uint64_t sub_227776BA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE558, &unk_227782BF0);
  v35 = v4;
  result = sub_227782088();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_227782128();
      sub_227781F48();
      result = sub_227782148();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_227776E44(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2277768EC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_227776BA0(v16, a4 & 1);
      v11 = sub_2277768EC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_2277820C8();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_227777074();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

unint64_t sub_227776FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2277820A8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

id sub_227777074()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE558, &unk_227782BF0);
  v2 = *v0;
  v3 = sub_227782078();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_2277771E0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_227782068();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_227782068();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_227777D80();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE600, qword_227782C20);
            v9 = sub_227777360(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_227777D34();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_227777360(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AA9A940](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2277773E0;
  }

  __break(1u);
  return result;
}

void *sub_2277773E8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_22777753C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE558, &unk_227782BF0);
    v3 = sub_227782098();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2277768EC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_227777640(unint64_t a1)
{
  v64 = MEMORY[0x277D84F90];
  v2 = sub_22777753C(MEMORY[0x277D84F90]);
  if (a1 >> 62)
  {
    goto LABEL_50;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_51;
  }

LABEL_3:
  v4 = 0;
  v60 = a1 & 0xC000000000000001;
  v56 = v2;
  v57 = a1 & 0xFFFFFFFFFFFFFF8;
  v61 = MEMORY[0x277D84F90];
  v58 = MEMORY[0x277D84F90];
  v59 = v3;
  v55 = a1;
  do
  {
    if (v60)
    {
      v5 = MEMORY[0x22AA9A940](v4, a1);
    }

    else
    {
      if (v4 >= *(v57 + 16))
      {
        goto LABEL_49;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      while (1)
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        v3 = sub_227782068();
        if (v3)
        {
          goto LABEL_3;
        }

LABEL_51:
        v58 = MEMORY[0x277D84F90];
        v47 = *(v2 + 16);
        if (!v47)
        {
          goto LABEL_52;
        }

LABEL_46:
        v48 = sub_227776690(v47, 0);
        v49 = sub_2277773E8(&v62, v48 + 4, v47, v2);
        a1 = v62;

        sub_227777CD0(a1);
        if (v49 == v47)
        {
          goto LABEL_53;
        }

        __break(1u);
      }
    }

    v8 = [v5 template];
    v9 = [v8 uniqueName];

    if (v9)
    {
      v2 = sub_227781F28();
      v12 = v11;
    }

    else
    {
      v2 = 0;
      v12 = 0xE000000000000000;
    }

    v62 = v2;
    v63 = v12;
    MEMORY[0x28223BE20](v10);
    v51 = &v62;
    v13 = sub_227776964(sub_227777CB4, v50, &unk_283ADFD50);
    v14 = v13;
    v62 = v2;
    v63 = v12;
    MEMORY[0x28223BE20](v13);
    v51 = &v62;
    v15 = sub_227776964(sub_227777F1C, v50, &unk_283ADFDA0);
    if (v14)
    {
      v62 = v2;
      v63 = v12;
      MEMORY[0x28223BE20](v15);
      v51 = &v62;
      v16 = v61;
      if (sub_227776964(sub_227777F1C, v50, v61))
      {

        goto LABEL_5;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_227776584(0, *(v16 + 2) + 1, 1, v16);
      }

      v20 = *(v18 + 2);
      v19 = *(v18 + 3);
      v61 = v18;
      if (v20 >= v19 >> 1)
      {
        v61 = sub_227776584((v19 > 1), v20 + 1, 1, v61);
      }

      v21 = v61;
      *(v61 + 2) = v20 + 1;
      v22 = &v21[16 * v20];
      *(v22 + 4) = v2;
      *(v22 + 5) = v12;
      goto LABEL_33;
    }

    if ((v15 & 1) == 0)
    {

LABEL_33:
      v45 = v6;
      MEMORY[0x22AA9A870]();
      if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_227781F78();
        a1 = v55;
      }

      sub_227781F88();

      v58 = v64;
      goto LABEL_5;
    }

    v23 = [v6 relevantEarnedInstance];
    if (!v23)
    {

      goto LABEL_5;
    }

    v24 = v23;
    v25 = [v23 value];
    if (!v25)
    {

LABEL_40:

      goto LABEL_5;
    }

    v26 = v25;
    v27 = [v6 template];
    v28 = [v27 canonicalUnit];

    if (!v28)
    {
      __break(1u);
LABEL_55:
      __break(1u);
      return;
    }

    [v26 doubleValueForUnit_];
    v30 = v29;

    a1 = v55;
    v31 = v56;
    if (!*(v56 + 16) || (v32 = sub_2277768EC(v2, v12), (v33 & 1) == 0))
    {
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v62 = v31;
      sub_227776E44(v6, v2, v12, v46);
      goto LABEL_38;
    }

    v56 = v31;
    v34 = *(*(v31 + 56) + 8 * v32);
    v35 = [v34 relevantEarnedInstance];
    if (v35)
    {
      v36 = v35;
      v37 = [v35 value];
      if (!v37)
      {

        goto LABEL_40;
      }

      v52 = v37;
      v53 = v36;
      v54 = v34;
      v38 = [v6 template];
      v39 = [v38 canonicalUnit];

      if (!v39)
      {
        goto LABEL_55;
      }

      v40 = v52;
      [v52 doubleValueForUnit_];
      v42 = v41;

      a1 = v55;
      if (v42 < v30)
      {
        v43 = v56;
        v44 = swift_isUniquelyReferenced_nonNull_native();
        v62 = v43;
        sub_227776E44(v6, v2, v12, v44);

LABEL_38:

        v56 = v62;
        goto LABEL_5;
      }
    }

    else
    {
    }

LABEL_5:
    ++v4;
  }

  while (v7 != v59);

  v2 = v56;
  v47 = *(v56 + 16);
  if (v47)
  {
    goto LABEL_46;
  }

LABEL_52:
  v48 = MEMORY[0x277D84F90];
LABEL_53:
  v62 = v58;
  sub_227776A10(v48);
}

uint64_t sub_227777CD8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2277820A8() & 1;
  }
}

unint64_t sub_227777D34()
{
  result = qword_27D7CE560;
  if (!qword_27D7CE560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7CE560);
  }

  return result;
}

unint64_t sub_227777D80()
{
  result = qword_27D7CE570;
  if (!qword_27D7CE570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D7CE600, qword_227782C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CE570);
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

id ActivityAwardsQuery.__allocating_init(initialAwardsHandler:addedAwardsHandler:removedAwardsHandler:updatedAwardsHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = objc_allocWithZone(v8);
  *&v16[OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_connection] = 0;
  sub_227781E28();
  swift_allocObject();
  *&v16[OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_lock] = sub_227781E18();
  v17 = &v16[OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_initialAwardsHandler];
  *v17 = a1;
  *(v17 + 1) = a2;
  v18 = &v16[OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_addedAwardsHandler];
  *v18 = a3;
  *(v18 + 1) = a4;
  v19 = &v16[OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_removedAwardsHandler];
  *v19 = a5;
  *(v19 + 1) = a6;
  v20 = &v16[OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_updatedAwardsHandler];
  *v20 = a7;
  *(v20 + 1) = a8;
  v23.receiver = v16;
  v23.super_class = v8;
  return objc_msgSendSuper2(&v23, sel_init);
}

uint64_t sub_227778064()
{
}

id ActivityAwardsQuery.__deallocating_deinit()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE5B0, qword_227782AF0);
  sub_227781E08();

  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityAwardsQuery();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22777831C()
{
  v1[3] = v0;
  v2 = sub_227781F08();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2277783DC, 0, 0);
}

uint64_t sub_2277783DC(uint64_t a1)
{
  sub_227781ED8();
  v2 = sub_227781EF8();
  v3 = sub_227782008();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22776C000, v2, v3, "Running query immediately.", v4, 2u);
    MEMORY[0x22AA9AED0](v4, -1, -1);
  }

  v6 = v1[5];
  v5 = v1[6];
  v8 = v1[3];
  v7 = v1[4];

  (*(v6 + 8))(v5, v7);
  v9 = swift_task_alloc();
  v1[7] = v9;
  *(v9 + 16) = v8;
  v10 = swift_task_alloc();
  v1[8] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE600, qword_227782C20);
  *v10 = v1;
  v10[1] = sub_227778580;

  return MEMORY[0x2822008A0](v1 + 2, 0, 0, 0xD000000000000015, 0x80000002277830A0, sub_227778F38, v9, v11);
}

uint64_t sub_227778580()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_227778708;
  }

  else
  {

    v2 = sub_22777869C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22777869C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_227778708()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227778774(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v45 = sub_227781F08();
  v44 = *(v45 - 8);
  v3 = MEMORY[0x28223BE20](v45);
  v41 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v40 = &v34 - v6;
  MEMORY[0x28223BE20](v5);
  v42 = (&v34 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE5C0, qword_227782CB0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v39 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  v14 = *(v9 + 16);
  v47 = a1;
  v14(&v34 - v12, a1, v8);
  v15 = *(v9 + 80);
  v16 = swift_allocObject();
  v17 = *(v9 + 32);
  v46 = v8;
  v17(v16 + ((v15 + 16) & ~v15), v13, v8);
  v48 = v43;
  v49 = sub_227779A70;
  v50 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE4A8, &qword_227782C90);
  sub_227781E08();
  v36 = v17;
  v37 = v10;
  v38 = v15;
  v42 = v14;
  v43 = (v15 + 16) & ~v15;
  v18 = v40;

  v19 = aBlock[0];
  aBlock[0] = 1;
  v20 = sub_227781E58();
  v22 = v21;
  v41 = v20;
  v35 = v19;
  sub_227781ED8();
  v23 = sub_227781EF8();
  v24 = sub_227782008();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_22776C000, v23, v24, "Obtained proxy for query run. Sending transport request.", v25, 2u);
    MEMORY[0x22AA9AED0](v25, -1, -1);
  }

  (*(v44 + 8))(v18, v45);
  v26 = v36;
  if (v22 >> 60 == 15)
  {
    v27 = 0;
  }

  else
  {
    v27 = sub_227781DD8();
  }

  v28 = v39;
  v29 = v43;
  v30 = v46;
  v42(v39, v47, v46);
  v31 = swift_allocObject();
  v26(v31 + v29, v28, v30);
  aBlock[4] = sub_227779BA0;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22777EC0C;
  aBlock[3] = &block_descriptor_48;
  v32 = _Block_copy(aBlock);

  [v35 transportRequest:2 data:v27 completion:v32];
  _Block_release(v32);

  sub_22776F3A4(v41, v22);
  return swift_unknownObjectRelease();
}

uint64_t sub_227778F40(void *a1, uint64_t a2)
{
  v4 = sub_227781F08();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227781EC8();
  v8 = a1;
  v9 = sub_227781EF8();
  v10 = sub_227781FF8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v19 = a2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136446210;
    swift_getErrorValue();
    v14 = sub_2277820D8();
    v16 = sub_22776E73C(v14, v15, &v20);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_22776C000, v9, v10, "Unable to get proxy: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AA9AED0](v13, -1, -1);
    MEMORY[0x22AA9AED0](v12, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v20 = a1;
  v17 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE5C0, qword_227782CB0);
  return sub_227781FA8();
}

uint64_t sub_227779148(uint64_t a1, unint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    if (a2 >> 60 != 15)
    {
      sub_227781EB8();
      sub_2277703AC(a1, a2);
      sub_22777062C(a1, a2);
      sub_227781EA8();
      sub_227781E98();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE5C0, qword_227782CB0);
      sub_227781FB8();
      sub_22776F3A4(a1, a2);
    }

    sub_227775BE8();
    swift_allocError();
    *v4 = 2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE5C0, qword_227782CB0);
  return sub_227781FA8();
}

uint64_t sub_2277792E8()
{
  v0 = sub_227781F08();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227781EC8();
  v4 = sub_227781EF8();
  v5 = sub_227782008();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v8 = sub_227781F28();
    v10 = sub_22776E73C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_22776C000, v4, v5, "XPC client-side connection failed to get proxy for %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA9AED0](v7, -1, -1);
    MEMORY[0x22AA9AED0](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_227779490(uint64_t a1)
{
  v2 = *(v1 + 184);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

void sub_227779500(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_227781F28();
  sub_22777C5D0(v8, v9);

  v10 = *(a1 + OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_connection);
  if (v10)
  {
    aBlock[4] = a2;
    aBlock[5] = a3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22777C0DC;
    aBlock[3] = &block_descriptor_51;
    v11 = _Block_copy(aBlock);
    v12 = v10;

    v13 = [v12 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v11);
    sub_227782018();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE4A8, &qword_227782C90);
    if (swift_dynamicCast())
    {

      *a4 = v18;
    }

    else
    {
      v16 = sub_227781DF8();
      sub_22776F040(&qword_27D7CE538, 255, MEMORY[0x277CE8E10], MEMORY[0x277CE8E18]);
      swift_allocError();
      (*(*(v16 - 8) + 104))(v17, *MEMORY[0x277CE8E00], v16);
      swift_willThrow();
    }
  }

  else
  {
    v14 = sub_227781DF8();
    sub_22776F040(&qword_27D7CE538, 255, MEMORY[0x277CE8E10], MEMORY[0x277CE8E18]);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277CE8E08], v14);
    swift_willThrow();
  }
}

id ActivityAwardsQuery.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t dispatch thunk of ActivityAwardsQuery.runQueryImmediately()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xC8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_227776384;

  return v5();
}

_BYTE **sub_227779998(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_2277799A8(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

id sub_2277799C8@<X0>(BOOL *a1@<X8>)
{
  v3 = *(*(v1 + 16) + OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_connection);
  if (v3)
  {
    result = [v3 invalidate];
  }

  *a1 = v3 == 0;
  return result;
}

uint64_t sub_227779A70(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE5C0, qword_227782CB0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_227778F40(a1, v4);
}

uint64_t objectdestroy_41Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE5C0, qword_227782CB0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_227779BA0(uint64_t a1, unint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE5C0, qword_227782CB0);

  return sub_227779148(a1, a2, a3);
}

id ActivityAwardsTemplateNamesQuery.__allocating_init(templateNames:initialAwardsHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_connection] = 0;
  v7[OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_isActive] = 0;
  sub_227781E28();
  swift_allocObject();
  *&v7[OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_lock] = sub_227781E18();
  *&v7[OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_templateNames] = a1;
  v8 = &v7[OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_initialAwardsHandler];
  *v8 = a2;
  v8[1] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id ActivityAwardsTemplateNamesQuery.init(templateNames:initialAwardsHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_connection] = 0;
  v3[OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_isActive] = 0;
  sub_227781E28();
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_lock] = sub_227781E18();
  *&v3[OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_templateNames] = a1;
  v7 = &v3[OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_initialAwardsHandler];
  *v7 = a2;
  v7[1] = a3;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for ActivityAwardsTemplateNamesQuery();
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_227779DF8()
{
}

id ActivityAwardsTemplateNamesQuery.__deallocating_deinit()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE5B0, qword_227782AF0);
  sub_227781E08();

  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityAwardsTemplateNamesQuery();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22777A018()
{
  v1[3] = v0;
  v2 = sub_227781F08();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22777A0D8, 0, 0);
}

uint64_t sub_22777A0D8(uint64_t a1)
{
  sub_227781EC8();
  v2 = sub_227781EF8();
  v3 = sub_227782008();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22776C000, v2, v3, "Running query immediately.", v4, 2u);
    MEMORY[0x22AA9AED0](v4, -1, -1);
  }

  v6 = v1[5];
  v5 = v1[6];
  v8 = v1[3];
  v7 = v1[4];

  (*(v6 + 8))(v5, v7);
  v9 = swift_task_alloc();
  v1[7] = v9;
  *(v9 + 16) = v8;
  v10 = swift_task_alloc();
  v1[8] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE600, qword_227782C20);
  *v10 = v1;
  v10[1] = sub_227778580;

  return MEMORY[0x2822008A0](v1 + 2, 0, 0, 0xD000000000000015, 0x80000002277830A0, sub_22777AAB4, v9, v11);
}

uint64_t sub_22777A27C(uint64_t a1, uint64_t a2)
{
  v47 = sub_227781F08();
  v46 = *(v47 - 8);
  v4 = MEMORY[0x28223BE20](v47);
  v44 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v43 = &v34 - v7;
  MEMORY[0x28223BE20](v6);
  v45 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE5C0, qword_227782CB0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v42 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  v15 = *(v10 + 16);
  v49 = a1;
  v41 = v15;
  v15(&v34 - v13, a1, v9);
  v16 = *(v10 + 80);
  v17 = swift_allocObject();
  v18 = *(v10 + 32);
  v48 = v9;
  v18(v17 + ((v16 + 16) & ~v16), v14, v9);
  v50 = a2;
  v51 = sub_22777BF7C;
  v52 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE4A8, &qword_227782C90);
  sub_227781E08();
  v35 = v18;
  v36 = v10 + 32;
  v37 = v16;
  v38 = v11;
  v39 = v10 + 16;
  v40 = (v16 + 16) & ~v16;
  v19 = v43;

  v45 = aBlock[0];
  aBlock[0] = *(a2 + OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_templateNames);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE610, &qword_227782D58);
  sub_22777BE74();
  sub_22777BEF8(&qword_280DD1170, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_22777BEF8(&unk_280DD1178, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  v20 = sub_227781E58();
  v22 = v21;
  sub_227781ED8();
  v23 = sub_227781EF8();
  v24 = sub_227782008();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_22776C000, v23, v24, "Obtained proxy for query run. Sending transport request.", v25, 2u);
    MEMORY[0x22AA9AED0](v25, -1, -1);
  }

  (*(v46 + 8))(v19, v47);
  v26 = v42;
  v27 = v40;
  v28 = v35;
  if (v22 >> 60 == 15)
  {
    v29 = 0;
  }

  else
  {
    v29 = sub_227781DD8();
  }

  v30 = v48;
  v41(v26, v49, v48);
  v31 = swift_allocObject();
  v28(v31 + v27, v26, v30);
  aBlock[4] = sub_227779BA0;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22777EC0C;
  aBlock[3] = &block_descriptor_36;
  v32 = _Block_copy(aBlock);

  [v45 transportRequest:10 data:v29 completion:v32];
  _Block_release(v32);

  sub_22776F3A4(v20, v22);
  return swift_unknownObjectRelease();
}

uint64_t sub_22777AABC(void *a1, uint64_t a2)
{
  v4 = sub_227781F08();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227781EC8();
  v8 = a1;
  v9 = sub_227781EF8();
  v10 = sub_227781FF8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v19 = a2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136446210;
    swift_getErrorValue();
    v14 = sub_2277820D8();
    v16 = sub_22776E73C(v14, v15, &v20);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_22776C000, v9, v10, "Unable to get proxy: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AA9AED0](v13, -1, -1);
    MEMORY[0x22AA9AED0](v12, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v20 = a1;
  v17 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE5C0, qword_227782CB0);
  return sub_227781FA8();
}

uint64_t sub_22777ACC4()
{
  v1 = sub_227781F28();
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v5 = v0;
  sub_2277720B0(v1, v3, sub_22777BAEC, v4);

  v5[OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_isActive] = 1;
  return result;
}

uint64_t sub_22777AD78(char *a1, void *a2)
{
  v4 = sub_227781F08();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE420, &qword_227782940);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v11 = *&a1[OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_connection];
  *&a1[OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_connection] = a2;
  v12 = a2;

  aBlock[4] = sub_22777B130;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22777C0DC;
  aBlock[3] = &block_descriptor_1;
  v13 = _Block_copy(aBlock);
  v14 = [v12 remoteObjectProxyWithErrorHandler_];
  _Block_release(v13);
  sub_227782018();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE4A8, &qword_227782C90);
  if (swift_dynamicCast())
  {
    v15 = aBlock[7];
    sub_227781FC8();
    v16 = sub_227781FE8();
    (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v15;
    v17[5] = a1;
    v18 = a1;
    sub_22777E970(0, 0, v10, &unk_227782D50, v17);
  }

  else
  {
    sub_227781EC8();
    v20 = sub_227781EF8();
    v21 = sub_227782008();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      aBlock[0] = v23;
      *v22 = 136446210;
      v24 = sub_227781F28();
      v28 = v4;
      v26 = sub_22776E73C(v24, v25, aBlock);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_22776C000, v20, v21, "XPC client-side connection failed to get expected proxy type for %{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x22AA9AED0](v23, -1, -1);
      MEMORY[0x22AA9AED0](v22, -1, -1);

      return (*(v5 + 8))(v7, v28);
    }

    else
    {

      return (*(v5 + 8))(v7, v4);
    }
  }
}

uint64_t sub_22777B130()
{
  v0 = sub_227781F08();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227781EC8();
  v4 = sub_227781EF8();
  v5 = sub_227782008();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v8 = sub_227781F28();
    v10 = sub_22776E73C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_22776C000, v4, v5, "XPC client-side connection failed to get proxy for %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA9AED0](v7, -1, -1);
    MEMORY[0x22AA9AED0](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_22777B2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 160) = a4;
  *(v5 + 168) = a5;
  return MEMORY[0x2822009F8](sub_22777B2F8, 0, 0);
}

uint64_t sub_22777B2F8()
{
  v0[10] = *(v0[21] + OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_templateNames);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE610, &qword_227782D58);
  sub_22777BE74();
  sub_22777BEF8(&qword_280DD1170, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_22777BEF8(&unk_280DD1178, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  v1 = sub_227781E58();
  v0[22] = 0;
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = v1;
    v5 = v2;
    v3 = sub_227781DD8();
    sub_22776F3A4(v4, v5);
  }

  v0[23] = v3;
  v6 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_22777B538;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE4B0, qword_227782B10);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2277702B4;
  v0[13] = &block_descriptor_26;
  v0[14] = v7;
  [v6 transportRequest:10 data:v3 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22777B538()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_227779490;
  }

  else
  {
    v2 = sub_22777B648;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22777B648()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  sub_227781EB8();
  sub_2277703AC(v2, v3);
  sub_227781EA8();
  if (v1)
  {

    sub_227775BE8();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
  }

  else
  {
    v6 = *(*(v0 + 168) + OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_initialAwardsHandler);
    sub_227781E98();
    v6();
  }

  sub_22776F3A4(v2, v3);
  v5 = *(v0 + 8);

  return v5();
}

void sub_22777B808(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_227781F28();
  sub_22777CA5C(v8, v9);

  v10 = *(a1 + OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_connection);
  if (v10)
  {
    aBlock[4] = a2;
    aBlock[5] = a3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22777C0DC;
    aBlock[3] = &block_descriptor_39;
    v11 = _Block_copy(aBlock);
    v12 = v10;

    v13 = [v12 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v11);
    sub_227782018();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE4A8, &qword_227782C90);
    if (swift_dynamicCast())
    {

      *a4 = v18;
    }

    else
    {
      v16 = sub_227781DF8();
      sub_22777C018();
      swift_allocError();
      (*(*(v16 - 8) + 104))(v17, *MEMORY[0x277CE8E00], v16);
      swift_willThrow();
    }
  }

  else
  {
    v14 = sub_227781DF8();
    sub_22777C018();
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277CE8E08], v14);
    swift_willThrow();
  }
}

id ActivityAwardsTemplateNamesQuery.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t dispatch thunk of ActivityAwardsTemplateNamesQuery.runQueryImmediately()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xD8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_227776384;

  return v5();
}

id sub_22777BD38@<X0>(BOOL *a1@<X8>)
{
  v3 = *(*(v1 + 16) + OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_connection);
  if (v3)
  {
    result = [v3 invalidate];
  }

  *a1 = v3 == 0;
  return result;
}

uint64_t sub_22777BDB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22776FF20;

  return sub_22777B2D8(a1, v4, v5, v7, v6);
}

unint64_t sub_22777BE74()
{
  result = qword_280DD1188;
  if (!qword_280DD1188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D7CE610, &qword_227782D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DD1188);
  }

  return result;
}

uint64_t sub_22777BEF8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D7CE610, &qword_227782D58);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22777BF7C(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE5C0, qword_227782CB0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_22777AABC(a1, v4);
}

unint64_t sub_22777C018()
{
  result = qword_27D7CE538;
  if (!qword_27D7CE538)
  {
    sub_227781DF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CE538);
  }

  return result;
}

uint64_t sub_22777C098(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_22777C0DC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_22777C144(uint64_t a1, uint64_t a2)
{
  v5 = sub_227781F08();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x277CCAE80]) initWithMachServiceName:*MEMORY[0x277CE8DB8] options:0];
  v10 = [objc_opt_self() interfaceWithProtocol_];
  [v9 setRemoteObjectInterface_];

  v30 = sub_2277718CC;
  v31 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_22777C098;
  v29 = &block_descriptor_133;
  v11 = _Block_copy(&aBlock);
  [v9 setInvalidationHandler_];
  _Block_release(v11);
  v30 = sub_2277718D0;
  v31 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_22777C098;
  v29 = &block_descriptor_136_0;
  v12 = _Block_copy(&aBlock);
  [v9 setInterruptionHandler_];
  _Block_release(v12);
  [v9 resume];
  v30 = sub_2277718D4;
  v31 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_22777C0DC;
  v29 = &block_descriptor_139;
  v13 = _Block_copy(&aBlock);
  v14 = [v9 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v13);
  sub_227782018();
  swift_unknownObjectRelease();
  sub_22776E030(v25, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE520, &qword_227782BB8);
  if (swift_dynamicCast())
  {
    v15 = v24[1];
    v16 = sub_227781F18();
    v17 = swift_allocObject();
    v17[2] = v2;
    v17[3] = a1;
    v17[4] = a2;
    v30 = sub_227781CB8;
    v31 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v27 = 1107296256;
    v28 = sub_22776E0DC;
    v29 = &block_descriptor_145;
    v18 = _Block_copy(&aBlock);
    v19 = v2;

    [v15 createEndpointNamed:v16 completion:v18];
    _Block_release(v18);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_227781EC8();
    v20 = sub_227781EF8();
    v21 = sub_227782008();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_22776C000, v20, v21, "Proxy does not conform to endpoint interface", v22, 2u);
      MEMORY[0x22AA9AED0](v22, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }

  return __swift_destroy_boxed_opaque_existential_0(v25);
}

uint64_t sub_22777C5D0(uint64_t a1, uint64_t a2)
{
  v5 = sub_227781F08();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x277CCAE80]) initWithMachServiceName:*MEMORY[0x277CE8DB8] options:0];
  v10 = [objc_opt_self() interfaceWithProtocol_];
  [v9 setRemoteObjectInterface_];

  v30 = sub_2277718CC;
  v31 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_22777C098;
  v29 = &block_descriptor_104_0;
  v11 = _Block_copy(&aBlock);
  [v9 setInvalidationHandler_];
  _Block_release(v11);
  v30 = sub_2277718D0;
  v31 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_22777C098;
  v29 = &block_descriptor_107;
  v12 = _Block_copy(&aBlock);
  [v9 setInterruptionHandler_];
  _Block_release(v12);
  [v9 resume];
  v30 = sub_2277718D4;
  v31 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_22777C0DC;
  v29 = &block_descriptor_110;
  v13 = _Block_copy(&aBlock);
  v14 = [v9 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v13);
  sub_227782018();
  swift_unknownObjectRelease();
  sub_22776E030(v25, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE520, &qword_227782BB8);
  if (swift_dynamicCast())
  {
    v15 = v24[1];
    v16 = sub_227781F18();
    v17 = swift_allocObject();
    v17[2] = v2;
    v17[3] = a1;
    v17[4] = a2;
    v30 = sub_227781C6C;
    v31 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v27 = 1107296256;
    v28 = sub_22776E0DC;
    v29 = &block_descriptor_116;
    v18 = _Block_copy(&aBlock);
    v19 = v2;

    [v15 createEndpointNamed:v16 completion:v18];
    _Block_release(v18);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_227781EC8();
    v20 = sub_227781EF8();
    v21 = sub_227782008();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_22776C000, v20, v21, "Proxy does not conform to endpoint interface", v22, 2u);
      MEMORY[0x22AA9AED0](v22, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }

  return __swift_destroy_boxed_opaque_existential_0(v25);
}

uint64_t sub_22777CA5C(uint64_t a1, uint64_t a2)
{
  v5 = sub_227781F08();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x277CCAE80]) initWithMachServiceName:*MEMORY[0x277CE8DB8] options:0];
  v10 = [objc_opt_self() interfaceWithProtocol_];
  [v9 setRemoteObjectInterface_];

  v30 = sub_2277718CC;
  v31 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_22777C098;
  v29 = &block_descriptor_75_0;
  v11 = _Block_copy(&aBlock);
  [v9 setInvalidationHandler_];
  _Block_release(v11);
  v30 = sub_2277718D0;
  v31 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_22777C098;
  v29 = &block_descriptor_78;
  v12 = _Block_copy(&aBlock);
  [v9 setInterruptionHandler_];
  _Block_release(v12);
  [v9 resume];
  v30 = sub_2277718D4;
  v31 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_22777C0DC;
  v29 = &block_descriptor_81;
  v13 = _Block_copy(&aBlock);
  v14 = [v9 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v13);
  sub_227782018();
  swift_unknownObjectRelease();
  sub_22776E030(v25, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE520, &qword_227782BB8);
  if (swift_dynamicCast())
  {
    v15 = v24[1];
    v16 = sub_227781F18();
    v17 = swift_allocObject();
    v17[2] = v2;
    v17[3] = a1;
    v17[4] = a2;
    v30 = sub_227781C60;
    v31 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v27 = 1107296256;
    v28 = sub_22776E0DC;
    v29 = &block_descriptor_87;
    v18 = _Block_copy(&aBlock);
    v19 = v2;

    [v15 createEndpointNamed:v16 completion:v18];
    _Block_release(v18);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_227781EC8();
    v20 = sub_227781EF8();
    v21 = sub_227782008();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_22776C000, v20, v21, "Proxy does not conform to endpoint interface", v22, 2u);
      MEMORY[0x22AA9AED0](v22, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }

  return __swift_destroy_boxed_opaque_existential_0(v25);
}

uint64_t sub_22777CEE8(uint64_t a1, uint64_t a2)
{
  v5 = sub_227781F08();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x277CCAE80]) initWithMachServiceName:*MEMORY[0x277CE8DB8] options:0];
  v10 = [objc_opt_self() interfaceWithProtocol_];
  [v9 setRemoteObjectInterface_];

  v30 = sub_2277718CC;
  v31 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_22777C098;
  v29 = &block_descriptor_37;
  v11 = _Block_copy(&aBlock);
  [v9 setInvalidationHandler_];
  _Block_release(v11);
  v30 = sub_2277718D0;
  v31 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_22777C098;
  v29 = &block_descriptor_40;
  v12 = _Block_copy(&aBlock);
  [v9 setInterruptionHandler_];
  _Block_release(v12);
  [v9 resume];
  v30 = sub_2277718D4;
  v31 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_22777C0DC;
  v29 = &block_descriptor_43;
  v13 = _Block_copy(&aBlock);
  v14 = [v9 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v13);
  sub_227782018();
  swift_unknownObjectRelease();
  sub_22776E030(v25, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE520, &qword_227782BB8);
  if (swift_dynamicCast())
  {
    v15 = v24[1];
    v16 = sub_227781F18();
    v17 = swift_allocObject();
    v17[2] = v2;
    v17[3] = a1;
    v17[4] = a2;
    v30 = sub_227781A8C;
    v31 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v27 = 1107296256;
    v28 = sub_22776E0DC;
    v29 = &block_descriptor_49;
    v18 = _Block_copy(&aBlock);
    v19 = v2;

    [v15 createEndpointNamed:v16 completion:v18];
    _Block_release(v18);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_227781EC8();
    v20 = sub_227781EF8();
    v21 = sub_227782008();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_22776C000, v20, v21, "Proxy does not conform to endpoint interface", v22, 2u);
      MEMORY[0x22AA9AED0](v22, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }

  return __swift_destroy_boxed_opaque_existential_0(v25);
}

uint64_t sub_22777D374(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = sub_227781F08();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v41 - v15;
  if (a1)
  {
    v42 = v10;
    v17 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v41 = a1;
    v18 = [v17 initWithListenerEndpoint_];
    v19 = AACTransportInterface();
    [v18 setExportedInterface_];

    v20 = AACTransportInterface();
    [v18 setRemoteObjectInterface_];

    [v18 setExportedObject_];
    v21 = swift_allocObject();
    *(v21 + 16) = a4;
    *(v21 + 24) = a5;
    v47 = sub_227777E9C;
    v48 = v21;
    aBlock = MEMORY[0x277D85DD0];
    v44 = 1107296256;
    v45 = sub_22777C098;
    v46 = &block_descriptor_152;
    v22 = _Block_copy(&aBlock);

    [v18 setInvalidationHandler_];
    _Block_release(v22);
    v23 = swift_allocObject();
    *(v23 + 16) = a4;
    *(v23 + 24) = a5;
    v47 = sub_227777EA0;
    v48 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v44 = 1107296256;
    v45 = sub_22777C098;
    v46 = &block_descriptor_159;
    v24 = _Block_copy(&aBlock);

    [v18 setInterruptionHandler_];
    _Block_release(v24);
    [v18 resume];
    v25 = *(a3 + OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_connection);
    *(a3 + OBJC_IVAR____TtC18ActivityAwardsCore23ActivityAwardsDateQuery_connection) = v18;
    v26 = v18;

    sub_227781EC8();

    v27 = sub_227781EF8();
    v28 = sub_227782008();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock = v30;
      *v29 = 136446210;
      *(v29 + 4) = sub_22776E73C(a4, a5, &aBlock);
      _os_log_impl(&dword_22776C000, v27, v28, "XPC endpoint setup complete for %{public}s.", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AA9AED0](v30, -1, -1);
      MEMORY[0x22AA9AED0](v29, -1, -1);
    }

    else
    {
    }

    return (*(v11 + 8))(v16, v42);
  }

  else
  {
    sub_227781EC8();

    v31 = a2;
    v32 = sub_227781EF8();
    v33 = sub_227781FF8();

    if (os_log_type_enabled(v32, v33))
    {
      v42 = v10;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      aBlock = v36;
      *v34 = 136446466;
      *(v34 + 4) = sub_22776E73C(a4, a5, &aBlock);
      *(v34 + 12) = 2114;
      if (a2)
      {
        v37 = a2;
        v38 = _swift_stdlib_bridgeErrorToNSError();
        v39 = v38;
      }

      else
      {
        v38 = 0;
        v39 = 0;
      }

      *(v34 + 14) = v38;
      *v35 = v39;
      _os_log_impl(&dword_22776C000, v32, v33, "Unable to establish XPC endpoint connection for %{public}s. Error: %{public}@", v34, 0x16u);
      sub_227781BE8(v35, &qword_27D7CE528, &qword_227782BC0);
      MEMORY[0x22AA9AED0](v35, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x22AA9AED0](v36, -1, -1);
      MEMORY[0x22AA9AED0](v34, -1, -1);

      return (*(v11 + 8))(v14, v42);
    }

    else
    {

      return (*(v11 + 8))(v14, v10);
    }
  }
}

uint64_t sub_22777D8F4(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = sub_227781F08();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v41 - v15;
  if (a1)
  {
    v42 = v10;
    v17 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v41 = a1;
    v18 = [v17 initWithListenerEndpoint_];
    v19 = AACTransportInterface();
    [v18 setExportedInterface_];

    v20 = AACTransportInterface();
    [v18 setRemoteObjectInterface_];

    [v18 setExportedObject_];
    v21 = swift_allocObject();
    *(v21 + 16) = a4;
    *(v21 + 24) = a5;
    v47 = sub_227777E9C;
    v48 = v21;
    aBlock = MEMORY[0x277D85DD0];
    v44 = 1107296256;
    v45 = sub_22777C098;
    v46 = &block_descriptor_123_0;
    v22 = _Block_copy(&aBlock);

    [v18 setInvalidationHandler_];
    _Block_release(v22);
    v23 = swift_allocObject();
    *(v23 + 16) = a4;
    *(v23 + 24) = a5;
    v47 = sub_227777EA0;
    v48 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v44 = 1107296256;
    v45 = sub_22777C098;
    v46 = &block_descriptor_130;
    v24 = _Block_copy(&aBlock);

    [v18 setInterruptionHandler_];
    _Block_release(v24);
    [v18 resume];
    v25 = *(a3 + OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_connection);
    *(a3 + OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_connection) = v18;
    v26 = v18;

    sub_227781EC8();

    v27 = sub_227781EF8();
    v28 = sub_227782008();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock = v30;
      *v29 = 136446210;
      *(v29 + 4) = sub_22776E73C(a4, a5, &aBlock);
      _os_log_impl(&dword_22776C000, v27, v28, "XPC endpoint setup complete for %{public}s.", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AA9AED0](v30, -1, -1);
      MEMORY[0x22AA9AED0](v29, -1, -1);
    }

    else
    {
    }

    return (*(v11 + 8))(v16, v42);
  }

  else
  {
    sub_227781EC8();

    v31 = a2;
    v32 = sub_227781EF8();
    v33 = sub_227781FF8();

    if (os_log_type_enabled(v32, v33))
    {
      v42 = v10;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      aBlock = v36;
      *v34 = 136446466;
      *(v34 + 4) = sub_22776E73C(a4, a5, &aBlock);
      *(v34 + 12) = 2114;
      if (a2)
      {
        v37 = a2;
        v38 = _swift_stdlib_bridgeErrorToNSError();
        v39 = v38;
      }

      else
      {
        v38 = 0;
        v39 = 0;
      }

      *(v34 + 14) = v38;
      *v35 = v39;
      _os_log_impl(&dword_22776C000, v32, v33, "Unable to establish XPC endpoint connection for %{public}s. Error: %{public}@", v34, 0x16u);
      sub_227781BE8(v35, &qword_27D7CE528, &qword_227782BC0);
      MEMORY[0x22AA9AED0](v35, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x22AA9AED0](v36, -1, -1);
      MEMORY[0x22AA9AED0](v34, -1, -1);

      return (*(v11 + 8))(v14, v42);
    }

    else
    {

      return (*(v11 + 8))(v14, v10);
    }
  }
}

uint64_t sub_22777DE74(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = sub_227781F08();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v41 - v15;
  if (a1)
  {
    v42 = v10;
    v17 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v41 = a1;
    v18 = [v17 initWithListenerEndpoint_];
    v19 = AACTransportInterface();
    [v18 setExportedInterface_];

    v20 = AACTransportInterface();
    [v18 setRemoteObjectInterface_];

    [v18 setExportedObject_];
    v21 = swift_allocObject();
    *(v21 + 16) = a4;
    *(v21 + 24) = a5;
    v47 = sub_227777E9C;
    v48 = v21;
    aBlock = MEMORY[0x277D85DD0];
    v44 = 1107296256;
    v45 = sub_22777C098;
    v46 = &block_descriptor_94;
    v22 = _Block_copy(&aBlock);

    [v18 setInvalidationHandler_];
    _Block_release(v22);
    v23 = swift_allocObject();
    *(v23 + 16) = a4;
    *(v23 + 24) = a5;
    v47 = sub_227777EA0;
    v48 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v44 = 1107296256;
    v45 = sub_22777C098;
    v46 = &block_descriptor_101;
    v24 = _Block_copy(&aBlock);

    [v18 setInterruptionHandler_];
    _Block_release(v24);
    [v18 resume];
    v25 = *(a3 + OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_connection);
    *(a3 + OBJC_IVAR____TtC18ActivityAwardsCore32ActivityAwardsTemplateNamesQuery_connection) = v18;
    v26 = v18;

    sub_227781EC8();

    v27 = sub_227781EF8();
    v28 = sub_227782008();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock = v30;
      *v29 = 136446210;
      *(v29 + 4) = sub_22776E73C(a4, a5, &aBlock);
      _os_log_impl(&dword_22776C000, v27, v28, "XPC endpoint setup complete for %{public}s.", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AA9AED0](v30, -1, -1);
      MEMORY[0x22AA9AED0](v29, -1, -1);
    }

    else
    {
    }

    return (*(v11 + 8))(v16, v42);
  }

  else
  {
    sub_227781EC8();

    v31 = a2;
    v32 = sub_227781EF8();
    v33 = sub_227781FF8();

    if (os_log_type_enabled(v32, v33))
    {
      v42 = v10;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      aBlock = v36;
      *v34 = 136446466;
      *(v34 + 4) = sub_22776E73C(a4, a5, &aBlock);
      *(v34 + 12) = 2114;
      if (a2)
      {
        v37 = a2;
        v38 = _swift_stdlib_bridgeErrorToNSError();
        v39 = v38;
      }

      else
      {
        v38 = 0;
        v39 = 0;
      }

      *(v34 + 14) = v38;
      *v35 = v39;
      _os_log_impl(&dword_22776C000, v32, v33, "Unable to establish XPC endpoint connection for %{public}s. Error: %{public}@", v34, 0x16u);
      sub_227781BE8(v35, &qword_27D7CE528, &qword_227782BC0);
      MEMORY[0x22AA9AED0](v35, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x22AA9AED0](v36, -1, -1);
      MEMORY[0x22AA9AED0](v34, -1, -1);

      return (*(v11 + 8))(v14, v42);
    }

    else
    {

      return (*(v11 + 8))(v14, v10);
    }
  }
}

uint64_t sub_22777E3F4(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = sub_227781F08();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v41 - v15;
  if (a1)
  {
    v42 = v10;
    v17 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v41 = a1;
    v18 = [v17 initWithListenerEndpoint_];
    v19 = AACTransportInterface();
    [v18 setExportedInterface_];

    v20 = AACTransportInterface();
    [v18 setRemoteObjectInterface_];

    [v18 setExportedObject_];
    v21 = swift_allocObject();
    *(v21 + 16) = a4;
    *(v21 + 24) = a5;
    v47 = sub_227776780;
    v48 = v21;
    aBlock = MEMORY[0x277D85DD0];
    v44 = 1107296256;
    v45 = sub_22777C098;
    v46 = &block_descriptor_55;
    v22 = _Block_copy(&aBlock);

    [v18 setInvalidationHandler_];
    _Block_release(v22);
    v23 = swift_allocObject();
    *(v23 + 16) = a4;
    *(v23 + 24) = a5;
    v47 = sub_227776788;
    v48 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v44 = 1107296256;
    v45 = sub_22777C098;
    v46 = &block_descriptor_61;
    v24 = _Block_copy(&aBlock);

    [v18 setInterruptionHandler_];
    _Block_release(v24);
    [v18 resume];
    v25 = *(a3 + OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_connection);
    *(a3 + OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_connection) = v18;
    v26 = v18;

    sub_227781EC8();

    v27 = sub_227781EF8();
    v28 = sub_227782008();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock = v30;
      *v29 = 136446210;
      *(v29 + 4) = sub_22776E73C(a4, a5, &aBlock);
      _os_log_impl(&dword_22776C000, v27, v28, "XPC endpoint setup complete for %{public}s.", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AA9AED0](v30, -1, -1);
      MEMORY[0x22AA9AED0](v29, -1, -1);
    }

    else
    {
    }

    return (*(v11 + 8))(v16, v42);
  }

  else
  {
    sub_227781EC8();

    v31 = a2;
    v32 = sub_227781EF8();
    v33 = sub_227781FF8();

    if (os_log_type_enabled(v32, v33))
    {
      v42 = v10;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      aBlock = v36;
      *v34 = 136446466;
      *(v34 + 4) = sub_22776E73C(a4, a5, &aBlock);
      *(v34 + 12) = 2114;
      if (a2)
      {
        v37 = a2;
        v38 = _swift_stdlib_bridgeErrorToNSError();
        v39 = v38;
      }

      else
      {
        v38 = 0;
        v39 = 0;
      }

      *(v34 + 14) = v38;
      *v35 = v39;
      _os_log_impl(&dword_22776C000, v32, v33, "Unable to establish XPC endpoint connection for %{public}s. Error: %{public}@", v34, 0x16u);
      sub_227781BE8(v35, &qword_27D7CE528, &qword_227782BC0);
      MEMORY[0x22AA9AED0](v35, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x22AA9AED0](v36, -1, -1);
      MEMORY[0x22AA9AED0](v34, -1, -1);

      return (*(v11 + 8))(v14, v42);
    }

    else
    {

      return (*(v11 + 8))(v14, v10);
    }
  }
}

uint64_t sub_22777E970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE420, &qword_227782940);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_227771268(a3, v22 - v9);
  v11 = sub_227781FE8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_227781BE8(v10, &qword_27D7CE420, &qword_227782940);
  }

  else
  {
    sub_227781FD8();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_227781F98();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_227781F38() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_227781BE8(a3, &qword_27D7CE420, &qword_227782940);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_227781BE8(a3, &qword_27D7CE420, &qword_227782940);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_22777EC0C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_227781DE8();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_22776F3A4(v4, v8);
}

id ActivityAwardsMonthlyChallengeQuery.__allocating_init(dateComponents:initialAwardsHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v3);
  *&v8[OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_connection] = 0;
  v8[OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_isActive] = 0;
  sub_227781E28();
  swift_allocObject();
  *&v8[OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_lock] = sub_227781E18();
  v9 = OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_dateComponents;
  v10 = sub_227781DB8();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v8[v9], a1, v10);
  v12 = &v8[OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_initialAwardsHandler];
  *v12 = a2;
  v12[1] = a3;
  v15.receiver = v8;
  v15.super_class = v4;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  (*(v11 + 8))(a1, v10);
  return v13;
}

id ActivityAwardsMonthlyChallengeQuery.init(dateComponents:initialAwardsHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_connection] = 0;
  v3[OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_isActive] = 0;
  sub_227781E28();
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_lock] = sub_227781E18();
  v8 = OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_dateComponents;
  v9 = sub_227781DB8();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v4[v8], a1, v9);
  v11 = &v4[OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_initialAwardsHandler];
  *v11 = a2;
  *(v11 + 1) = a3;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for ActivityAwardsMonthlyChallengeQuery(0);
  v12 = objc_msgSendSuper2(&v14, sel_init);
  (*(v10 + 8))(a1, v9);
  return v12;
}

uint64_t type metadata accessor for ActivityAwardsMonthlyChallengeQuery(uint64_t a1)
{
  result = qword_280DD11D0;
  if (!qword_280DD11D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22777EF70()
{
  v1 = OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_dateComponents;
  v2 = sub_227781DB8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

id ActivityAwardsMonthlyChallengeQuery.__deallocating_deinit()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE5B0, qword_227782AF0);
  sub_227781E08();

  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityAwardsMonthlyChallengeQuery(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22777F200(uint64_t a1)
{
  v2 = v1;
  v4 = sub_227781DB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227781DA8();
  v9 = ACHYearMonthDayStringFromDateComponents();

  if (v9)
  {

    (*(v5 + 16))(v7, a1, v4);
    v10 = OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_dateComponents;
    swift_beginAccess();
    (*(v5 + 40))(&v2[v10], v7, v4);
    result = swift_endAccess();
    v12 = OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_isActive;
    if (v2[OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_isActive] == 1)
    {
      MEMORY[0x28223BE20](result);
      *(&v19 - 2) = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE5B0, qword_227782AF0);
      sub_227781E08();
      v13 = sub_227781F28();
      v15 = v14;
      v16 = swift_allocObject();
      *(v16 + 16) = v2;
      v17 = v2;
      sub_227772550(v13, v15, sub_227780ED8, v16);

      v2[v12] = 1;
    }
  }

  else
  {
    sub_227775BE8();
    swift_allocError();
    *v18 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22777F480()
{
  v1[3] = v0;
  v2 = sub_227781F08();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22777F540, 0, 0);
}

uint64_t sub_22777F540(uint64_t a1)
{
  sub_227781EC8();
  v2 = sub_227781EF8();
  v3 = sub_227782008();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22776C000, v2, v3, "Running query immediately.", v4, 2u);
    MEMORY[0x22AA9AED0](v4, -1, -1);
  }

  v6 = v1[5];
  v5 = v1[6];
  v8 = v1[3];
  v7 = v1[4];

  (*(v6 + 8))(v5, v7);
  v9 = swift_task_alloc();
  v1[7] = v9;
  *(v9 + 16) = v8;
  v10 = swift_task_alloc();
  v1[8] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE600, qword_227782C20);
  *v10 = v1;
  v10[1] = sub_227778580;

  return MEMORY[0x2822008A0](v1 + 2, 0, 0, 0xD000000000000015, 0x80000002277830A0, sub_227780EDC, v9, v11);
}

uint64_t sub_22777F6E4(uint64_t a1, uint64_t a2)
{
  v74 = sub_227781F08();
  v73 = *(v74 - 8);
  v4 = MEMORY[0x28223BE20](v74);
  v67 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v65 = v61 - v7;
  MEMORY[0x28223BE20](v6);
  v71 = v61 - v8;
  v69 = sub_227781DB8();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v66 = v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE5C0, qword_227782CB0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v64 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v61 - v14;
  v16 = *(v11 + 16);
  v75 = a1;
  v16(v61 - v14, a1, v10);
  v17 = *(v11 + 80);
  v18 = swift_allocObject();
  v19 = *(v11 + 32);
  v72 = v10;
  v19(v18 + ((v17 + 16) & ~v17), v15, v10);
  v70 = a2;
  v76 = a2;
  v77 = sub_22778156C;
  v78 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE4A8, &qword_227782C90);
  sub_227781E08();
  v61[0] = v19;
  v61[1] = v17;
  v62 = v16;
  v63 = v12;
  v71 = ((v17 + 16) & ~v17);
  v20 = v65;
  v21 = v67;

  v22 = aBlock;
  v23 = OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_dateComponents;
  v24 = v70;
  swift_beginAccess();
  v25 = v68;
  v26 = v24 + v23;
  v27 = v66;
  v28 = v69;
  (*(v68 + 16))(v66, v26, v69);
  v29 = sub_227781DA8();
  (*(v25 + 8))(v27, v28);
  v30 = ACHYearMonthDayStringFromDateComponents();

  if (v30)
  {
    v31 = sub_227781F28();
    v33 = v32;

    aBlock = v31;
    v80 = v33;
    v34 = sub_227781E58();
    v46 = v45;
    v70 = v34;

    sub_227781ED8();
    v47 = sub_227781EF8();
    v48 = sub_227782008();
    if (os_log_type_enabled(v47, v48))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_22776C000, v47, v48, "Obtained proxy for query run. Sending transport request.", v50, 2u);
      MEMORY[0x22AA9AED0](v50, -1, -1);
    }

    (*(v73 + 8))(v20, v74);
    v51 = v71;
    if (v46 >> 60 == 15)
    {
      v52 = 0;
      v53 = v64;
      v54 = v62;
      v55 = v70;
    }

    else
    {
      v56 = v70;
      v52 = sub_227781DD8();
      v53 = v64;
      v55 = v56;
      v54 = v62;
    }

    v57 = v72;
    v54(v53, v75, v72);
    v58 = swift_allocObject();
    (v61[0])(&v51[v58], v53, v57);
    v83 = sub_227779BA0;
    v84 = v58;
    aBlock = MEMORY[0x277D85DD0];
    v80 = 1107296256;
    v81 = sub_22777EC0C;
    v82 = &block_descriptor_2;
    v59 = _Block_copy(&aBlock);

    [v22 transportRequest:9 data:v52 completion:v59];
    _Block_release(v59);

    sub_22776F3A4(v55, v46);
  }

  else
  {
    sub_227775BE8();
    v35 = swift_allocError();
    *v36 = 0;
    swift_willThrow();
    sub_227781EC8();
    v37 = v35;
    v38 = sub_227781EF8();
    v39 = sub_227781FF8();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      aBlock = v41;
      *v40 = 136446210;
      swift_getErrorValue();
      v42 = sub_2277820D8();
      v44 = sub_22776E73C(v42, v43, &aBlock);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_22776C000, v38, v39, "Invalid data: %{public}s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x22AA9AED0](v41, -1, -1);
      MEMORY[0x22AA9AED0](v40, -1, -1);
    }

    (*(v73 + 8))(v21, v74);
    aBlock = v35;
    sub_227781FA8();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_227780040(void *a1, uint64_t a2)
{
  v4 = sub_227781F08();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227781EC8();
  v8 = a1;
  v9 = sub_227781EF8();
  v10 = sub_227781FF8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v19 = a2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136446210;
    swift_getErrorValue();
    v14 = sub_2277820D8();
    v16 = sub_22776E73C(v14, v15, &v20);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_22776C000, v9, v10, "Unable to get proxy: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AA9AED0](v13, -1, -1);
    MEMORY[0x22AA9AED0](v12, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v20 = a1;
  v17 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE5C0, qword_227782CB0);
  return sub_227781FA8();
}

uint64_t sub_227780248()
{
  v1 = sub_227781F28();
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v5 = v0;
  sub_227772550(v1, v3, sub_227781D8C, v4);

  v5[OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_isActive] = 1;
  return result;
}

uint64_t sub_2277802FC(char *a1, void *a2)
{
  v4 = sub_227781F08();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE420, &qword_227782940);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v11 = *&a1[OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_connection];
  *&a1[OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_connection] = a2;
  v12 = a2;

  aBlock[4] = sub_2277806B4;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22777C0DC;
  aBlock[3] = &block_descriptor_64;
  v13 = _Block_copy(aBlock);
  v14 = [v12 remoteObjectProxyWithErrorHandler_];
  _Block_release(v13);
  sub_227782018();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE4A8, &qword_227782C90);
  if (swift_dynamicCast())
  {
    v15 = aBlock[7];
    sub_227781FC8();
    v16 = sub_227781FE8();
    (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v15;
    v17[5] = a1;
    v18 = a1;
    sub_22777E970(0, 0, v10, &unk_227782E38, v17);
  }

  else
  {
    sub_227781EC8();
    v20 = sub_227781EF8();
    v21 = sub_227782008();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      aBlock[0] = v23;
      *v22 = 136446210;
      v24 = sub_227781F28();
      v28 = v4;
      v26 = sub_22776E73C(v24, v25, aBlock);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_22776C000, v20, v21, "XPC client-side connection failed to get expected proxy type for %{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x22AA9AED0](v23, -1, -1);
      MEMORY[0x22AA9AED0](v22, -1, -1);

      return (*(v5 + 8))(v7, v28);
    }

    else
    {

      return (*(v5 + 8))(v7, v4);
    }
  }
}

uint64_t sub_2277806B4()
{
  v0 = sub_227781F08();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227781EC8();
  v4 = sub_227781EF8();
  v5 = sub_227782008();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v8 = sub_227781F28();
    v10 = sub_22776E73C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_22776C000, v4, v5, "XPC client-side connection failed to get proxy for %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA9AED0](v7, -1, -1);
    MEMORY[0x22AA9AED0](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_22778085C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  v6 = sub_227781DB8();
  v5[27] = v6;
  v5[28] = *(v6 - 8);
  v5[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22778091C, 0, 0);
}

uint64_t sub_22778091C()
{
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_dateComponents;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  v6 = sub_227781DA8();
  (*(v2 + 8))(v1, v3);
  v7 = ACHYearMonthDayStringFromDateComponents();

  if (v7)
  {
    v8 = sub_227781F28();
    v10 = v9;

    v0[23] = v8;
    v0[24] = v10;
    v11 = sub_227781E58();
    v13 = v12;
    v0[30] = 0;

    if (v13 >> 60 == 15)
    {
      v14 = 0;
    }

    else
    {
      v14 = sub_227781DD8();
      sub_22776F3A4(v11, v13);
    }

    v0[31] = v14;
    v18 = v0[25];
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_227780BD4;
    v19 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE4B0, qword_227782B10);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2277702B4;
    v0[13] = &block_descriptor_71;
    v0[14] = v19;
    [v18 transportRequest:9 data:v14 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    sub_227775BE8();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_227780BD4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {
    v2 = sub_227775A90;
  }

  else
  {
    v2 = sub_227780CE4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227780CE4()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);

  sub_227781EB8();
  sub_2277703AC(v2, v3);
  sub_227781EA8();
  if (v1)
  {

    sub_227775BE8();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
  }

  else
  {
    v6 = *(*(v0 + 208) + OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_initialAwardsHandler);
    sub_227781E98();
    v6();
  }

  sub_22776F3A4(v2, v3);

  v5 = *(v0 + 8);

  return v5();
}

void sub_227780EE4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_227781F28();
  sub_22777CEE8(v8, v9);

  v10 = *(a1 + OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_connection);
  if (v10)
  {
    aBlock[4] = a2;
    aBlock[5] = a3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22777C0DC;
    aBlock[3] = &block_descriptor_34;
    v11 = _Block_copy(aBlock);
    v12 = v10;

    v13 = [v12 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v11);
    sub_227782018();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE4A8, &qword_227782C90);
    if (swift_dynamicCast())
    {

      *a4 = v18;
    }

    else
    {
      v16 = sub_227781DF8();
      sub_22777C018();
      swift_allocError();
      (*(*(v16 - 8) + 104))(v17, *MEMORY[0x277CE8E00], v16);
      swift_willThrow();
    }
  }

  else
  {
    v14 = sub_227781DF8();
    sub_22777C018();
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277CE8E08], v14);
    swift_willThrow();
  }
}

id ActivityAwardsMonthlyChallengeQuery.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_22778123C(uint64_t a1)
{
  result = sub_227781DB8();
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

uint64_t dispatch thunk of ActivityAwardsMonthlyChallengeQuery.runQueryImmediately()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xE8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_227776384;

  return v5();
}

id sub_22778150C@<X0>(BOOL *a1@<X8>)
{
  v3 = *(*(v1 + 16) + OBJC_IVAR____TtC18ActivityAwardsCore35ActivityAwardsMonthlyChallengeQuery_connection);
  if (v3)
  {
    result = [v3 invalidate];
  }

  *a1 = v3 == 0;
  return result;
}

uint64_t sub_22778156C(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE5C0, qword_227782CB0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_227780040(a1, v4);
}

uint64_t sub_227781608(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

uint64_t sub_227781660(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_22776E73C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

void *sub_2277816BC(uint64_t a1, unint64_t a2)
{
  v3 = sub_227781708(a1, a2);
  sub_227781838(&unk_283ADFD28);
  return v3;
}

void *sub_227781708(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_227781924(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_227782058();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_227781F58();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_227781924(v10, 0);
        result = sub_227782028();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_227781838(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_227781998(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_227781924(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE620, &qword_227782E28);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_227781998(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE620, &qword_227782E28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_227781A98(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_227781B28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22776FF20;

  return sub_22778085C(a1, v4, v5, v7, v6);
}

uint64_t sub_227781BE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_45Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}