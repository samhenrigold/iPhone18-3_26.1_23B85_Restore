uint64_t sub_25C467638()
{
  v0 = sub_25C4C85A0();
  sub_25C4647CC(&v3, v0, v1);

  return 1;
}

uint64_t sub_25C4676EC()
{
  v0 = sub_25C4C7BD0();
  __swift_allocate_value_buffer(v0, qword_27FC0AF58);
  __swift_project_value_buffer(v0, qword_27FC0AF58);
  sub_25C4C7C80();
  return sub_25C4C7BC0();
}

uint64_t NXBluetoothAdvertiserDarwin.nearbyActionFlags.setter(int a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t NXBluetoothAdvertiserDarwin.nearbyActionType.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 36) = a1;
  return result;
}

uint64_t NXBluetoothAdvertiserDarwin.__allocating_init(dispatchQueue:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 32) = 0;
  *(result + 36) = 0;
  *(result + 16) = 0;
  *(result + 24) = a1;
  return result;
}

uint64_t NXBluetoothAdvertiserDarwin.init(dispatchQueue:)(uint64_t a1)
{
  *(v1 + 32) = 0;
  *(v1 + 36) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = a1;
  return v1;
}

Swift::Void __swiftcall NXBluetoothAdvertiserDarwin.activate()()
{
  swift_beginAccess();
  if (!*(v0 + 16))
  {
    v1 = [objc_allocWithZone(MEMORY[0x277CBDFF0]) init];
    v2 = *(v0 + 16);
    *(v0 + 16) = v1;
    v3 = v1;

    [v3 setDispatchQueue_];
    swift_beginAccess();
    [v3 setNearbyActionType_];
    swift_beginAccess();
    [v3 setNearbyActionFlags_];
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    aBlock[4] = sub_25C467DFC;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25C45BE80;
    aBlock[3] = &block_descriptor_2;
    v7 = _Block_copy(aBlock);

    [v3 activateWithCompletion_];
    _Block_release(v7);
  }
}

Swift::Void __swiftcall NXBluetoothAdvertiserDarwin.invalidate()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1)
  {
    [v1 invalidate];
    v2 = *(v0 + 16);
    *(v0 + 16) = 0;
  }
}

uint64_t NXBluetoothAdvertiserDarwin.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 37, 7);
}

uint64_t sub_25C467BE8(int a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_25C467C5C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 36) = a1;
  return result;
}

void sub_25C467CF0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1)
  {
    [v1 invalidate];
    v2 = *(v0 + 16);
    *(v0 + 16) = 0;
  }
}

uint64_t sub_25C467D4C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25C467D84()
{
  MEMORY[0x25F8886B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25C467DBC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_25C467DFC(void *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {
LABEL_6:

    return;
  }

  v5 = v4;
  swift_beginAccess();
  v6 = *(v3 + 16);
  if (!v6 || v5 != v6 || !a1)
  {

    goto LABEL_6;
  }

  v7 = a1;
  if (qword_27FC0AF50 != -1)
  {
    swift_once();
  }

  v8 = sub_25C4C7BD0();
  __swift_project_value_buffer(v8, qword_27FC0AF58);
  v9 = a1;
  v10 = sub_25C4C7BB0();
  v11 = sub_25C4C8710();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v14 = sub_25C4C8A30();
    v16 = sub_25C458990(v14, v15, &v18);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_25C452000, v10, v11, "### Bluetooth setup advertiser start failed: error=%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x25F888630](v13, -1, -1);
    MEMORY[0x25F888630](v12, -1, -1);
  }

  [v5 invalidate];
  v17 = *(v3 + 16);
  *(v3 + 16) = 0;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_25C468160(uint64_t a1, unint64_t *a2, uint64_t a3)
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

_DWORD *sub_25C4681AC@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

BOOL sub_25C46820C(_DWORD *a1, int *a2)
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

_DWORD *sub_25C46823C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
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

int *sub_25C468268@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_25C468368@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_25C4684BC(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_25C468410(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CBNearbyActionFlags(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25C4684BC(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_25C4684F8()
{
  v0 = sub_25C4C7BD0();
  __swift_allocate_value_buffer(v0, qword_27FC0B1F8);
  __swift_project_value_buffer(v0, qword_27FC0B1F8);
  sub_25C4C7C80();
  return sub_25C4C7BC0();
}

uint64_t sub_25C468564(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_weakInit();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  swift_beginAccess();
  swift_weakAssign();
  v3 = *(a1 + 16);

  *(v2 + 24) = v3;
  return v2;
}

uint64_t sub_25C4685F8()
{
  v1 = v0;
  if (qword_27FC0B1F0 != -1)
  {
    swift_once();
  }

  v2 = sub_25C4C7BD0();
  __swift_project_value_buffer(v2, qword_27FC0B1F8);
  v3 = sub_25C4C7BB0();
  v4 = sub_25C4C8700();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_25C452000, v3, v4, "deinit", v5, 2u);
    MEMORY[0x25F888630](v5, -1, -1);
  }

  swift_weakDestroy();
  sub_25C45C5F0(*(v1 + 40), *(v1 + 48));
  return v1;
}

uint64_t sub_25C4686F0()
{
  sub_25C4685F8();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_25C468724()
{
  v1 = v0;
  v2 = sub_25C4C7FF0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v6 = sub_25C4C84C0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 32);
  v10 = *(v1 + 24);
  *v9 = v10;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v11 = v10;
  LOBYTE(v10) = sub_25C4C84E0();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    if (qword_27FC0B1F0 == -1)
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
  v12 = sub_25C4C7BD0();
  __swift_project_value_buffer(v12, qword_27FC0B1F8);
  v13 = sub_25C4C7BB0();
  v14 = sub_25C4C8720();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_25C452000, v13, v14, "Activate", v15, 2u);
    MEMORY[0x25F888630](v15, -1, -1);
  }

  swift_allocObject();
  swift_weakInit();
  sub_25C4C7FE0();
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return (*(v3 + 8))(v5, v2);
  }

  v19[3] = v2;
  v19[4] = sub_25C4693DC(&qword_27FC0A3B0, 255, MEMORY[0x277D35828], MEMORY[0x277D35820]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(v3 + 16))(boxed_opaque_existential_1, v5, v2);
  sub_25C4886CC(v19, 0x6E6F6D656144584ELL, 0xE800000000000000);
  (*(v3 + 8))(v5, v2);

  return __swift_destroy_boxed_opaque_existential_0(v19);
}

uint64_t sub_25C468BD0(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A3C0, &qword_25C4CA050);
  MEMORY[0x28223BE20](v4);
  v6 = &v15[-v5];
  v7 = sub_25C4C84C0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = *(result + 24);
    *v10 = v12;
    (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
    v13 = v12;
    LOBYTE(v12) = sub_25C4C84E0();
    result = (*(v8 + 8))(v10, v7);
    if (v12)
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        NXDaemon.description.getter();
        sub_25C4C8010();
        swift_storeEnumTagMultiPayload();
        a1(v6);
      }

      else
      {
        v14 = objc_allocWithZone(sub_25C4C7B80());
        *v6 = sub_25C4C7B90();
        swift_storeEnumTagMultiPayload();
        a1(v6);
      }

      return sub_25C469448(v6);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_25C468E38()
{
  v1 = v0;
  v2 = sub_25C4C84C0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + 24);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v7 = v6;
  LOBYTE(v6) = sub_25C4C84E0();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_27FC0B1F0 == -1)
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
  v8 = sub_25C4C7BD0();
  __swift_project_value_buffer(v8, qword_27FC0B1F8);
  v9 = sub_25C4C7BB0();
  v10 = sub_25C4C8720();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_25C452000, v9, v10, "Invalidate", v11, 2u);
    MEMORY[0x25F888630](v11, -1, -1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v12 = sub_25C4C8000();
    sub_25C488F8C(v12, v13, 0x6E6F6D656144584ELL, 0xE800000000000000);
  }

  *(v1 + 32) = 1;
  return sub_25C469060();
}

uint64_t sub_25C469060()
{
  v1 = v0;
  v2 = sub_25C4C84C0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + 24);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v7 = v6;
  LOBYTE(v6) = sub_25C4C84E0();
  result = (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_4;
  }

  if (*(v1 + 32) != 1)
  {
    return result;
  }

  if (qword_27FC0B1F0 != -1)
  {
    goto LABEL_12;
  }

LABEL_4:
  v9 = sub_25C4C7BD0();
  __swift_project_value_buffer(v9, qword_27FC0B1F8);
  v10 = sub_25C4C7BB0();
  v11 = sub_25C4C8720();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_25C452000, v10, v11, "Invalidated", v12, 2u);
    MEMORY[0x25F888630](v12, -1, -1);
  }

  swift_beginAccess();
  v13 = *(v1 + 40);
  if (v13)
  {
    v14 = *(v1 + 48);

    v13(v15);
    sub_25C45C5F0(v13, v14);
    v16 = *(v1 + 40);
  }

  else
  {
    v16 = 0;
  }

  v17 = *(v1 + 48);
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  return sub_25C45C5F0(v16, v17);
}

uint64_t sub_25C4692D8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
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

uint64_t sub_25C469384(uint64_t a1, uint64_t a2)
{
  result = sub_25C4693DC(&qword_27FC0A3B8, a2, type metadata accessor for NXDiagnosticsManager, &unk_25C4C9FDC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25C4693DC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_25C469448(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A3C0, &qword_25C4CA050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25C4694B0()
{
  v0 = sub_25C4C7BD0();
  __swift_allocate_value_buffer(v0, qword_27FC0B318);
  __swift_project_value_buffer(v0, qword_27FC0B318);
  sub_25C4C7C80();
  return sub_25C4C7BC0();
}

uint64_t NXXPCConnection._entitled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_25C4695F0@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_25C45C53C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_25C45A2B8(v4, v5);
}

uint64_t sub_25C469684(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_25C45C514;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 64);
  v9 = *(v7 + 72);
  *(v7 + 64) = v6;
  *(v7 + 72) = v5;
  sub_25C45A2B8(v3, v4);
  return sub_25C45A2C8(v8, v9);
}

uint64_t NXXPCConnection.invalidationHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  sub_25C45A2B8(v1, *(v0 + 72));
  return v1;
}

uint64_t NXXPCConnection.invalidationHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 64);
  v6 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return sub_25C45A2C8(v5, v6);
}

uint64_t sub_25C469834()
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A3D0, &qword_25C4CA058);
  v34 = *(v37 - 8);
  v1 = MEMORY[0x28223BE20](v37);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v35 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A3D8, &qword_25C4CA060);
  MEMORY[0x28223BE20](v5 - 8);
  v33 = &v32 - v6;
  swift_beginAccess();
  v7 = *(v0 + 136);
  v10 = *(v7 + 64);
  v9 = v7 + 64;
  v8 = v10;
  v11 = 1 << *(*(v0 + 136) + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v36 = *(v0 + 136);
  result = swift_bridgeObjectRetain_n();
  v16 = 0;
  if (v13)
  {
    while (1)
    {
      v17 = v16;
LABEL_8:
      v18 = __clz(__rbit64(v13)) | (v17 << 6);
      v19 = v36;
      v20 = *(v36 + 48);
      v21 = sub_25C4C7B20();
      v22 = *(v21 - 8);
      v23 = v20 + *(v22 + 72) * v18;
      v24 = v35;
      (*(v22 + 16))(v35, v23, v21);
      v25 = *(*(v19 + 56) + 8 * v18);
      v26 = v37;
      *(v24 + *(v37 + 48)) = v25;
      sub_25C465DA4(v24, v3, &qword_27FC0A3D0, &qword_25C4CA058);
      v27 = *&v3[*(v26 + 48)];
      v28 = OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon_needsNetwork;
      swift_beginAccess();
      if (*(v27 + v28) == 1)
      {
        break;
      }

      v13 &= v13 - 1;

      result = sub_25C4666F8(v3, &qword_27FC0A3D0, &qword_25C4CA058);
      v16 = v17;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v30 = v33;
    sub_25C465DA4(v3, v33, &qword_27FC0A3D0, &qword_25C4CA058);
    v29 = v34;
    (*(v34 + 56))(v30, 0, 1, v37);
LABEL_12:

    v31 = (*(v29 + 48))(v30, 1, v37) != 1;
    sub_25C4666F8(v30, &qword_27FC0A3D8, &qword_25C4CA060);
    return v31;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v14)
      {

        v30 = v33;
        v29 = v34;
        (*(v34 + 56))(v33, 1, 1, v37);
        goto LABEL_12;
      }

      v13 = *(v9 + 8 * v17);
      ++v16;
      if (v13)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25C469BA4(_xpc_connection_s *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_25C469BF4(a1, a2);
  return v4;
}

uint64_t sub_25C469BF4(_xpc_connection_s *a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = 0xE000000000000000;
  *(v2 + 48) = 0;
  v5 = CUNextID64();
  *(v2 + 96) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 56) = v5;
  v6 = MEMORY[0x277D84F98];
  *(v2 + 104) = MEMORY[0x277D84F98];
  *(v2 + 112) = v6;
  *(v2 + 120) = v6;
  *(v2 + 128) = v6;
  *(v2 + 136) = v6;
  v7 = *(a2 + 16);
  *(v2 + 40) = v7;
  v8 = v7;
  *(v2 + 80) = xpc_connection_get_pid(a1);
  *(v2 + 32) = a2;
  *(v2 + 88) = a1;
  return v2;
}

uint64_t NXXPCConnection.deinit()
{
  v1 = v0;
  if (qword_27FC0B310 != -1)
  {
    swift_once();
  }

  v2 = sub_25C4C7BD0();
  __swift_project_value_buffer(v2, qword_27FC0B318);
  v3 = sub_25C4C7BB0();
  v4 = sub_25C4C8700();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_25C452000, v3, v4, "deinit", v5, 2u);
    MEMORY[0x25F888630](v5, -1, -1);
  }

  sub_25C45A2C8(*(v1 + 64), *(v1 + 72));
  swift_unknownObjectRelease();

  return v1;
}

uint64_t NXXPCConnection.__deallocating_deinit()
{
  NXXPCConnection.deinit();

  return MEMORY[0x2821FE8D8](v0, 144, 7);
}

uint64_t sub_25C469DEC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v7 = *(v2 + 16);

  MEMORY[0x25F887A50](a1, a2);
  v5 = sub_25C4C89A0();
  MEMORY[0x25F887A50](v5);

  return v7;
}

uint64_t sub_25C469EC4()
{
  v1 = v0;
  v34[1] = *MEMORY[0x277D85DE8];
  v2 = sub_25C4C84C0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + 40);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v7 = v6;
  LOBYTE(v6) = sub_25C4C84E0();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v32 = 0u;
    v33 = 0u;
    xpc_connection_get_audit_token();
    v8 = xpc_copy_entitlement_for_token();
    if (v8)
    {
      swift_unknownObjectRetain();
      sub_25C4C7C60();
      v9 = sub_25C4C8570();

      v10 = xpc_dictionary_get_BOOL(v8, (v9 + 32));

      swift_unknownObjectRelease();
      swift_beginAccess();
      *(v1 + 48) = v10;
      v11 = swift_unknownObjectRetain();
      if (xpc_dictionary_get_string(v11, "application-identifier"))
      {
        v12 = sub_25C4C85A0();
        v14 = v13;
        swift_unknownObjectRelease();
        swift_beginAccess();
        *(v1 + 16) = v12;
        *(v1 + 24) = v14;

        goto LABEL_8;
      }

      swift_unknownObjectRelease();
    }

    v15 = xpc_copy_code_signing_identity_for_token();
    if (v15)
    {
      v16 = v15;
      v17 = sub_25C4C85A0();
      v19 = v18;
      swift_beginAccess();
      *(v1 + 16) = v17;
      *(v1 + 24) = v19;

      free(v16);
    }

LABEL_8:
    if (qword_27FC0B310 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  __break(1u);
LABEL_13:
  swift_once();
LABEL_9:
  v20 = sub_25C4C7BD0();
  __swift_project_value_buffer(v20, qword_27FC0B318);

  v21 = sub_25C4C7BB0();
  v22 = sub_25C4C8720();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v34[0] = v24;
    *v23 = 136315138;
    swift_beginAccess();
    v25 = *(v1 + 24);
    v30 = *(v1 + 16);
    v31 = v25;

    MEMORY[0x25F887A50](58, 0xE100000000000000);
    v29[3] = *(v1 + 80);
    v26 = sub_25C4C89A0();
    MEMORY[0x25F887A50](v26);

    v27 = sub_25C458990(v30, v31, v34);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_25C452000, v21, v22, "XPC connection started: client=%s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x25F888630](v24, -1, -1);
    MEMORY[0x25F888630](v23, -1, -1);
  }

  return swift_unknownObjectRelease();
}

void sub_25C46A2AC()
{
  v1 = sub_25C4C84C0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 40);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
  v6 = v5;
  LOBYTE(v5) = sub_25C4C84E0();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    if ((*(v0 + 96) & 1) == 0)
    {
      xpc_connection_cancel(*(v0 + 88));
    }

    sub_25C46A3D8();
    sub_25C46A7A8();
    sub_25C46AB78();
    sub_25C46AF68();
    sub_25C46B368();
  }

  else
  {
    __break(1u);
  }
}

void sub_25C46A3D8()
{
  v41 = sub_25C4C7B20();
  v1 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v37 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A510, &qword_25C4CA238);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - v7;
  swift_beginAccess();
  v9 = *(v0 + 104);
  v10 = *(v9 + 64);
  v32 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v33 = v1 + 32;
  v34 = v1 + 16;
  v38 = v1;
  v39 = v9;
  v40 = (v1 + 8);

  v15 = 0;
  v35 = v8;
  v36 = v6;
  v16 = v37;
  if (v13)
  {
    while (1)
    {
      v17 = v15;
LABEL_12:
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v21 = v20 | (v17 << 6);
      v23 = v38;
      v22 = v39;
      v24 = v41;
      (*(v38 + 16))(v16, *(v39 + 48) + *(v38 + 72) * v21, v41);
      v25 = *(*(v22 + 56) + 8 * v21);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A518, &qword_25C4CA240);
      v27 = *(v26 + 48);
      v28 = *(v23 + 32);
      v6 = v36;
      v28(v36, v16, v24);
      *&v6[v27] = v25;
      (*(*(v26 - 8) + 56))(v6, 0, 1, v26);

      v19 = v17;
      v8 = v35;
LABEL_13:
      sub_25C465DA4(v6, v8, &qword_27FC0A510, &qword_25C4CA238);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A518, &qword_25C4CA240);
      if ((*(*(v29 - 8) + 48))(v8, 1, v29) == 1)
      {
        break;
      }

      sub_25C479898();

      (*v40)(v8, v41);
      v15 = v19;
      if (!v13)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v14 <= v15 + 1)
    {
      v18 = v15 + 1;
    }

    else
    {
      v18 = v14;
    }

    v19 = v18 - 1;
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= v14)
      {
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A518, &qword_25C4CA240);
        (*(*(v30 - 8) + 56))(v6, 1, 1, v30);
        v13 = 0;
        goto LABEL_13;
      }

      v13 = *(v32 + 8 * v17);
      ++v15;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_25C46A7A8()
{
  v41 = sub_25C4C7B20();
  v1 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v37 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A500, &qword_25C4CA228);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - v7;
  swift_beginAccess();
  v9 = *(v0 + 112);
  v10 = *(v9 + 64);
  v32 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v33 = v1 + 32;
  v34 = v1 + 16;
  v38 = v1;
  v39 = v9;
  v40 = (v1 + 8);

  v15 = 0;
  v35 = v8;
  v36 = v6;
  v16 = v37;
  if (v13)
  {
    while (1)
    {
      v17 = v15;
LABEL_12:
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v21 = v20 | (v17 << 6);
      v23 = v38;
      v22 = v39;
      v24 = v41;
      (*(v38 + 16))(v16, *(v39 + 48) + *(v38 + 72) * v21, v41);
      v25 = *(*(v22 + 56) + 8 * v21);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A508, &qword_25C4CA230);
      v27 = *(v26 + 48);
      v28 = *(v23 + 32);
      v6 = v36;
      v28(v36, v16, v24);
      *&v6[v27] = v25;
      (*(*(v26 - 8) + 56))(v6, 0, 1, v26);

      v19 = v17;
      v8 = v35;
LABEL_13:
      sub_25C465DA4(v6, v8, &qword_27FC0A500, &qword_25C4CA228);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A508, &qword_25C4CA230);
      if ((*(*(v29 - 8) + 48))(v8, 1, v29) == 1)
      {
        break;
      }

      sub_25C47F1B8();

      (*v40)(v8, v41);
      v15 = v19;
      if (!v13)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v14 <= v15 + 1)
    {
      v18 = v15 + 1;
    }

    else
    {
      v18 = v14;
    }

    v19 = v18 - 1;
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= v14)
      {
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A508, &qword_25C4CA230);
        (*(*(v30 - 8) + 56))(v6, 1, 1, v30);
        v13 = 0;
        goto LABEL_13;
      }

      v13 = *(v32 + 8 * v17);
      ++v15;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_25C46AB78()
{
  v41 = sub_25C4C7B20();
  v1 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v37 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A3D8, &qword_25C4CA060);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - v7;
  swift_beginAccess();
  v9 = *(v0 + 136);
  v10 = *(v9 + 64);
  v31 = v0;
  v32 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v33 = v1 + 32;
  v34 = v1 + 16;
  v38 = v1;
  v39 = v9;
  v40 = (v1 + 8);

  v15 = 0;
  v35 = v8;
  v36 = v6;
  v16 = v37;
  if (v13)
  {
    while (1)
    {
      v17 = v15;
LABEL_12:
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v21 = v20 | (v17 << 6);
      v23 = v38;
      v22 = v39;
      v24 = v41;
      (*(v38 + 16))(v16, *(v39 + 48) + *(v38 + 72) * v21, v41);
      v25 = *(*(v22 + 56) + 8 * v21);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A3D0, &qword_25C4CA058);
      v27 = *(v26 + 48);
      v28 = *(v23 + 32);
      v6 = v36;
      v28(v36, v16, v24);
      *&v6[v27] = v25;
      (*(*(v26 - 8) + 56))(v6, 0, 1, v26);

      v19 = v17;
      v8 = v35;
LABEL_13:
      sub_25C465DA4(v6, v8, &qword_27FC0A3D8, &qword_25C4CA060);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A3D0, &qword_25C4CA058);
      if ((*(*(v29 - 8) + 48))(v8, 1, v29) == 1)
      {
        break;
      }

      sub_25C4548F4();

      (*v40)(v8, v41);
      v15 = v19;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    *(v31 + 136) = MEMORY[0x277D84F98];

    sub_25C485248();
  }

  else
  {
LABEL_5:
    if (v14 <= v15 + 1)
    {
      v18 = v15 + 1;
    }

    else
    {
      v18 = v14;
    }

    v19 = v18 - 1;
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= v14)
      {
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A3D0, &qword_25C4CA058);
        (*(*(v30 - 8) + 56))(v6, 1, 1, v30);
        v13 = 0;
        goto LABEL_13;
      }

      v13 = *(v32 + 8 * v17);
      ++v15;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_25C46AF68()
{
  v42 = sub_25C4C7B20();
  v1 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v38 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4F0, &unk_25C4CACE0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - v7;
  swift_beginAccess();
  v9 = *(v0 + 120);
  v10 = *(v9 + 64);
  v33 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v31 = v0;
  v32 = (v11 + 63) >> 6;
  v34 = v1 + 32;
  v35 = v1 + 16;
  v39 = v1;
  v40 = v9;
  v41 = (v1 + 8);

  v14 = 0;
  v36 = v8;
  v37 = v6;
  v15 = v38;
  if (v13)
  {
    while (1)
    {
      v16 = v14;
LABEL_12:
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v20 = v19 | (v16 << 6);
      v22 = v39;
      v21 = v40;
      v23 = v42;
      (*(v39 + 16))(v15, *(v40 + 48) + *(v39 + 72) * v20, v42);
      v24 = *(*(v21 + 56) + 8 * v20);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4F8, &qword_25C4CA220);
      v26 = *(v25 + 48);
      v27 = *(v22 + 32);
      v6 = v37;
      v27(v37, v15, v23);
      *&v6[v26] = v24;
      (*(*(v25 - 8) + 56))(v6, 0, 1, v25);

      v18 = v16;
      v8 = v36;
LABEL_13:
      sub_25C465DA4(v6, v8, &qword_27FC0A4F0, &unk_25C4CACE0);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4F8, &qword_25C4CA220);
      if ((*(*(v28 - 8) + 48))(v8, 1, v28) == 1)
      {
        break;
      }

      sub_25C4C23B0(nullsub_1, 0);

      (*v41)(v8, v42);
      v14 = v18;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    *(v31 + 120) = MEMORY[0x277D84F98];
  }

  else
  {
LABEL_5:
    if (v32 <= v14 + 1)
    {
      v17 = v14 + 1;
    }

    else
    {
      v17 = v32;
    }

    v18 = v17 - 1;
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= v32)
      {
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4F8, &qword_25C4CA220);
        (*(*(v29 - 8) + 56))(v6, 1, 1, v29);
        v13 = 0;
        goto LABEL_13;
      }

      v13 = *(v33 + 8 * v16);
      ++v14;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_25C46B368()
{
  if (*(v0 + 96) == 1)
  {
    swift_beginAccess();
    if (!*(*(v0 + 104) + 16))
    {
      swift_beginAccess();
      if (!*(*(v0 + 112) + 16))
      {
        swift_beginAccess();
        if (!*(*(v0 + 120) + 16))
        {
          swift_beginAccess();
          if (!*(*(v0 + 136) + 16))
          {
            v1 = v0;
            if (qword_27FC0B310 != -1)
            {
              swift_once();
            }

            v2 = sub_25C4C7BD0();
            __swift_project_value_buffer(v2, qword_27FC0B318);
            v3 = sub_25C4C7BB0();
            v4 = sub_25C4C86F0();
            if (os_log_type_enabled(v3, v4))
            {
              v5 = swift_slowAlloc();
              *v5 = 0;
              _os_log_impl(&dword_25C452000, v3, v4, "Invalidated", v5, 2u);
              MEMORY[0x25F888630](v5, -1, -1);
            }

            v6 = v1;
            swift_beginAccess();
            v7 = *(v1 + 64);
            if (v7)
            {
              v8 = *(v1 + 72);

              v7(v9);
              v6 = v1;
              sub_25C45A2C8(v7, v8);
              v10 = *(v1 + 64);
            }

            else
            {
              v10 = 0;
            }

            v11 = *(v6 + 72);
            *(v6 + 64) = 0;
            *(v6 + 72) = 0;
            sub_25C45A2C8(v10, v11);
          }
        }
      }
    }
  }
}

xpc_object_t sub_25C46B534(void *a1)
{
  v2 = v1;
  v4 = sub_25C4C80B0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = xpc_dictionary_create_reply(a1);
  if (!result)
  {
    swift_getObjectType();
    (*(v5 + 104))(v7, *MEMORY[0x277D35858], v4);
    sub_25C4C80A0();
    (*(v5 + 8))(v7, v4);
    v9 = sub_25C4C86C0();
    v11 = v10;

    if (v11)
    {
      v12 = v9;
    }

    else
    {
      v12 = 7104878;
    }

    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0xE300000000000000;
    }

    if (qword_27FC0B310 != -1)
    {
      swift_once();
    }

    v14 = sub_25C4C7BD0();
    __swift_project_value_buffer(v14, qword_27FC0B318);

    v15 = sub_25C4C7BB0();
    v16 = sub_25C4C8710();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v18;
      *v17 = 136315394;
      v19 = sub_25C458990(v12, v13, &v26);

      *(v17 + 4) = v19;
      *(v17 + 12) = 2080;
      swift_beginAccess();
      v20 = *(v2 + 24);
      v24 = *(v2 + 16);
      v25 = v20;

      MEMORY[0x25F887A50](58, 0xE100000000000000);
      v23[3] = *(v2 + 80);
      v21 = sub_25C4C89A0();
      MEMORY[0x25F887A50](v21);

      v22 = sub_25C458990(v24, v25, &v26);

      *(v17 + 14) = v22;
      _os_log_impl(&dword_25C452000, v15, v16, "### XPC create reply failed: requestType='%s', client=%s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F888630](v18, -1, -1);
      MEMORY[0x25F888630](v17, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return result;
}

void sub_25C46B864(void *a1)
{
  v2 = v1;
  v4 = sub_25C4C84C0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x25F888910](a1);
  if (v8 == sub_25C4C7BF0())
  {
    sub_25C46BDC4(a1);
  }

  else
  {
    swift_getObjectType();
    v9 = sub_25C4C7C00();
    swift_unknownObjectRelease();
    if (v9 == a1)
    {
      if (qword_27FC0B310 != -1)
      {
        swift_once();
      }

      v20 = sub_25C4C7BD0();
      __swift_project_value_buffer(v20, qword_27FC0B318);

      v21 = sub_25C4C7BB0();
      v22 = sub_25C4C8720();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v36 = v24;
        *v23 = 136315138;
        swift_beginAccess();
        v25 = *(v2 + 24);
        v34 = *(v2 + 16);
        v35 = v25;

        MEMORY[0x25F887A50](58, 0xE100000000000000);
        v33 = *(v2 + 80);
        v26 = sub_25C4C89A0();
        MEMORY[0x25F887A50](v26);

        v27 = sub_25C458990(v34, v35, &v36);

        *(v23 + 4) = v27;
        _os_log_impl(&dword_25C452000, v21, v22, "XPC connection ended: client=%s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x25F888630](v24, -1, -1);
        MEMORY[0x25F888630](v23, -1, -1);
      }

      *(v2 + 96) = 1;
      v28 = *(v2 + 40);
      *v7 = v28;
      (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
      v29 = v28;
      LOBYTE(v28) = sub_25C4C84E0();
      (*(v5 + 8))(v7, v4);
      if (v28)
      {
        if ((*(v2 + 96) & 1) == 0)
        {
          xpc_connection_cancel(*(v2 + 88));
        }

        sub_25C46A3D8();
        sub_25C46A7A8();
        sub_25C46AB78();
        sub_25C46AF68();
        sub_25C46B368();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      if (qword_27FC0B310 != -1)
      {
        swift_once();
      }

      v10 = sub_25C4C7BD0();
      __swift_project_value_buffer(v10, qword_27FC0B318);

      swift_unknownObjectRetain();
      v32 = sub_25C4C7BB0();
      v11 = sub_25C4C8710();

      swift_unknownObjectRelease();
      if (os_log_type_enabled(v32, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v36 = v13;
        *v12 = 136315394;
        v14 = sub_25C4C8690();
        v16 = sub_25C458990(v14, v15, &v36);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2080;
        swift_beginAccess();
        v17 = *(v2 + 24);
        v34 = *(v2 + 16);
        v35 = v17;

        MEMORY[0x25F887A50](58, 0xE100000000000000);
        v33 = *(v2 + 80);
        v18 = sub_25C4C89A0();
        MEMORY[0x25F887A50](v18);

        v19 = sub_25C458990(v34, v35, &v36);

        *(v12 + 14) = v19;
        _os_log_impl(&dword_25C452000, v32, v11, "### XPC connection error: xpc=%s, client=%s", v12, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F888630](v13, -1, -1);
        MEMORY[0x25F888630](v12, -1, -1);
      }

      else
      {
        v30 = v32;
      }
    }
  }
}

uint64_t sub_25C46BDC4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A478, &qword_25C4CA1E0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v45 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v47 = &v44 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - v9;
  v11 = sub_25C4C80B0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v12 + 104))(v14, *MEMORY[0x277D35858], v11);
  sub_25C4C80A0();
  (*(v12 + 8))(v14, v11);
  v44 = a1;
  v15 = sub_25C4C86C0();
  v17 = v16;

  if (!v17)
  {
    v23 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    return swift_willThrow();
  }

  sub_25C4C7D40();
  swift_beginAccess();
  v18 = v10;
  if (*(v2 + 48) & 1) != 0 || (v19 = *(v2 + 32), swift_beginAccess(), (*(v19 + 24)))
  {
    v20 = v46;
    v21 = v47;
    if (v46)
    {
LABEL_5:
      sub_25C4666F8(v18, &qword_27FC0A478, &qword_25C4CA1E0);
    }
  }

  else
  {
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_25C4C88F0();

    v49 = v15;
    v50 = v17;
    MEMORY[0x25F887A50](0xD000000000000017, 0x800000025C4D0980);
    v24 = sub_25C4C7C60();
    MEMORY[0x25F887A50](v24);

    v25 = objc_allocWithZone(sub_25C4C7B80());
    v20 = sub_25C4C7B90();
    swift_willThrow();
    v21 = v47;
    if (v20)
    {
      goto LABEL_5;
    }
  }

  v26 = v2;
  sub_25C478584(v18, v21);
  v27 = sub_25C4C7D60();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v21, 1, v27) == 1)
  {
    goto LABEL_9;
  }

  v31 = v45;
  sub_25C478584(v21, v45);
  v32 = (*(v28 + 88))(v31, v27);
  if (v32 == *MEMORY[0x277D356C8])
  {

    sub_25C46CB9C(v44);
LABEL_14:
    sub_25C4666F8(v18, &qword_27FC0A478, &qword_25C4CA1E0);
    v30 = v21;
    return sub_25C4666F8(v30, &qword_27FC0A478, &qword_25C4CA1E0);
  }

  if (v32 == *MEMORY[0x277D356B0])
  {

    sub_25C46D730(v44);
    goto LABEL_14;
  }

  if (v32 != *MEMORY[0x277D356C0] && v32 != *MEMORY[0x277D356F8])
  {
    if (v32 == *MEMORY[0x277D35718])
    {

      sub_25C46FDD0(v44);
      goto LABEL_14;
    }

    if (v32 == *MEMORY[0x277D35728])
    {

      sub_25C470CF4(v44);
      goto LABEL_14;
    }

    if (v32 == *MEMORY[0x277D35720])
    {

      sub_25C4715BC(v44);
      goto LABEL_14;
    }

    if (v32 == *MEMORY[0x277D35710])
    {

      sub_25C471D78(v44);
      goto LABEL_14;
    }

    if (v32 == *MEMORY[0x277D35738])
    {

      sub_25C4726F8(v44);
      goto LABEL_14;
    }

    if (v32 == *MEMORY[0x277D35730])
    {

      sub_25C472E7C(v44);
      goto LABEL_14;
    }

    v33 = *MEMORY[0x277D35740];
    v46 = v18;
    if (v32 == v33)
    {

      if (qword_27FC0B310 != -1)
      {
        swift_once();
      }

      v34 = sub_25C4C7BD0();
      __swift_project_value_buffer(v34, qword_27FC0B318);

      v35 = sub_25C4C7BB0();
      v36 = sub_25C4C8720();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v53 = v38;
        *v37 = 136315138;
        swift_beginAccess();
        v39 = *(v26 + 24);
        v51 = *(v26 + 16);
        v52 = v39;

        MEMORY[0x25F887A50](58, 0xE100000000000000);
        v48 = *(v26 + 80);
        v40 = sub_25C4C89A0();
        MEMORY[0x25F887A50](v40);

        v41 = sub_25C458990(v51, v52, &v53);

        *(v37 + 4) = v41;
        _os_log_impl(&dword_25C452000, v35, v36, "XPC Ping: client=%s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x25F888630](v38, -1, -1);
        MEMORY[0x25F888630](v37, -1, -1);
      }

      v42 = sub_25C46B534(v44);
      if (v42)
      {
        xpc_connection_send_message(*(v26 + 88), v42);
        swift_unknownObjectRelease();
      }

LABEL_45:
      v18 = v46;
      v21 = v47;
      goto LABEL_14;
    }

    if (v32 == *MEMORY[0x277D356D0])
    {

      v43 = v20;
      sub_25C46DCF0(v44);
      goto LABEL_43;
    }

    if (v32 == *MEMORY[0x277D356E0])
    {

      v43 = v20;
      sub_25C473818(v44);
      goto LABEL_43;
    }

    if (v32 == *MEMORY[0x277D356B8])
    {

      v43 = v20;
      sub_25C47481C(v44);
      goto LABEL_43;
    }

    v18 = v46;
    v21 = v47;
    if (v32 != *MEMORY[0x277D356D8])
    {
      if (v32 == *MEMORY[0x277D35708])
      {

        v43 = v20;
        sub_25C46EC18(v44);
        goto LABEL_43;
      }

      if (v32 == *MEMORY[0x277D356F0])
      {

        v43 = v20;
        sub_25C46F810(v44);
        goto LABEL_43;
      }

      v18 = v46;
      v21 = v47;
      if (v32 != *MEMORY[0x277D35700])
      {
        if (v32 == *MEMORY[0x277D356E8])
        {

          v43 = v20;
          sub_25C46E520(v44);
LABEL_43:
          if (v43)
          {
            sub_25C4666F8(v46, &qword_27FC0A478, &qword_25C4CA1E0);
            v30 = v47;
            return sub_25C4666F8(v30, &qword_27FC0A478, &qword_25C4CA1E0);
          }

          goto LABEL_45;
        }

        (*(v28 + 8))(v45, v27);
        v18 = v46;
        v21 = v47;
      }
    }
  }

LABEL_9:
  sub_25C4666F8(v21, &qword_27FC0A478, &qword_25C4CA1E0);
  v49 = 0;
  v50 = 0xE000000000000000;
  sub_25C4C88F0();

  v49 = 0xD00000000000001BLL;
  v50 = 0x800000025C4D0690;
  MEMORY[0x25F887A50](v15, v17);

  MEMORY[0x25F887A50](39, 0xE100000000000000);
  v29 = objc_allocWithZone(sub_25C4C7B80());
  sub_25C4C7B90();
  swift_willThrow();
  v30 = v18;
  return sub_25C4666F8(v30, &qword_27FC0A478, &qword_25C4CA1E0);
}

xpc_object_t sub_25C46C7C4(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_25C4C80B0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FC0B310 != -1)
  {
    swift_once();
  }

  v10 = sub_25C4C7BD0();
  __swift_project_value_buffer(v10, qword_27FC0B318);
  swift_unknownObjectRetain();

  v11 = a2;
  v12 = sub_25C4C7BB0();
  v13 = sub_25C4C8710();

  swift_unknownObjectRelease();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v38 = v34;
    *v14 = 136315650;
    swift_getObjectType();
    (*(v7 + 104))(v9, *MEMORY[0x277D35858], v6);
    v33 = v12;
    sub_25C4C80A0();
    HIDWORD(v32) = v13;
    (*(v7 + 8))(v9, v6);
    v15 = sub_25C4C86C0();
    v17 = v16;

    if (v17)
    {
      v18 = v15;
    }

    else
    {
      v18 = 7104878;
    }

    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0xE300000000000000;
    }

    v20 = sub_25C458990(v18, v19, &v38);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    swift_beginAccess();
    v21 = *(v3 + 24);
    v36 = *(v3 + 16);
    v37 = v21;

    MEMORY[0x25F887A50](58, 0xE100000000000000);
    v35 = *(v3 + 80);
    v22 = sub_25C4C89A0();
    MEMORY[0x25F887A50](v22);

    v23 = sub_25C458990(v36, v37, &v38);

    *(v14 + 14) = v23;
    *(v14 + 22) = 2080;
    swift_getErrorValue();
    v24 = sub_25C4C8A30();
    v26 = sub_25C458990(v24, v25, &v38);

    *(v14 + 24) = v26;
    v27 = v33;
    _os_log_impl(&dword_25C452000, v33, BYTE4(v32), "### XPC error reply: requestType='%s', client=%s, error=%s", v14, 0x20u);
    v28 = v34;
    swift_arrayDestroy();
    MEMORY[0x25F888630](v28, -1, -1);
    MEMORY[0x25F888630](v14, -1, -1);
  }

  else
  {
  }

  result = xpc_dictionary_expects_reply();
  if (result)
  {
    result = sub_25C46B534(a1);
    if (result)
    {
      v30 = result;
      v31 = sub_25C4C7A80();
      CUXPCEncodeNSErrorStd(v30, v31);

      xpc_connection_send_message(*(v3 + 88), v30);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_25C46CB9C(void *a1)
{
  v102 = sub_25C4C7C50();
  v98 = *(v102 - 8);
  v2 = MEMORY[0x28223BE20](v102);
  v97 = v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v94 = v89 - v5;
  MEMORY[0x28223BE20](v4);
  v105 = v89 - v6;
  v7 = sub_25C4C80B0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v99 = (v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v12 = v89 - v11;
  v13 = sub_25C4C7B20();
  v14 = *(v13 - 8);
  v108 = v13;
  v109 = v14;
  v15 = MEMORY[0x28223BE20](v13);
  v96 = v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v89 - v18;
  v95 = v20;
  MEMORY[0x28223BE20](v17);
  v107 = v89 - v21;
  v22 = *MEMORY[0x277D358C8];
  v104 = *(v8 + 104);
  v104(v12, v22, v7);
  v23 = sub_25C4C80A0();
  v25 = v24;
  v27 = *(v8 + 8);
  v26 = v8 + 8;
  v100 = v7;
  v28 = v7;
  v29 = v27;
  v27(v12, v28);
  ObjectType = swift_getObjectType();
  v103 = a1;
  v30 = sub_25C4C86D0();
  if (v30)
  {
    v92 = v29;
    v31 = v106;
    v91 = v30;
    sub_25C4C7B00();

    v33 = v109 + 32;
    v32 = *(v109 + 32);
    v34 = v107;
    v35 = v19;
    v36 = v108;
    v32(v107, v35, v108);
    swift_beginAccess();
    if (*(v31[13] + 16) && (sub_25C458F84(v34), (v37 & 1) != 0))
    {
      swift_endAccess();
      v113 = 0;
      v114 = 0xE000000000000000;
      sub_25C4C88F0();

      v113 = 0xD00000000000001DLL;
      v114 = 0x800000025C4D06B0;
      sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v38 = sub_25C4C89A0();
      MEMORY[0x25F887A50](v38);

      v39 = objc_allocWithZone(sub_25C4C7B80());
      sub_25C4C7B90();
      swift_willThrow();
      return (*(v109 + 8))(v34, v36);
    }

    else
    {
      v89[1] = v33;
      v90 = v32;
      swift_endAccess();
      v41 = v99;
      v42 = v100;
      v104(v99, *MEMORY[0x277D358D0], v100);
      swift_unknownObjectRetain();
      sub_25C4C80A0();
      v43 = v92;
      v99 = v26;
      v92(v41, v42);
      v44 = v101;
      sub_25C4C7C20();
      if (v44)
      {
        return (*(v109 + 8))(v107, v108);
      }

      else
      {
        v89[0] = 0;
        v104(v12, *MEMORY[0x277D35860], v42);
        sub_25C4C80A0();
        v43(v12, v42);
        v104 = sub_25C4C86C0();
        v100 = v46;

        v47 = v106;
        swift_beginAccess();
        v48 = v47[3];
        v111 = v47[2];
        v112 = v48;

        MEMORY[0x25F887A50](58, 0xE100000000000000);
        v110 = *(v47 + 20);
        v49 = sub_25C4C89A0();
        MEMORY[0x25F887A50](v49);

        v50 = v112;
        v99 = v111;
        if (qword_27FC0B310 != -1)
        {
          swift_once();
        }

        v51 = sub_25C4C7BD0();
        __swift_project_value_buffer(v51, qword_27FC0B318);
        v52 = v98;
        v53 = v94;
        v54 = v105;
        v55 = v102;
        ObjectType = *(v98 + 16);
        ObjectType(v94, v105, v102);

        v56 = sub_25C4C7BB0();
        v57 = sub_25C4C8720();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = v52;
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v111 = v60;
          *v59 = 136315394;
          sub_25C478A8C(&qword_27FC0A480, 255, MEMORY[0x277D35630], MEMORY[0x277D35648]);
          LODWORD(v92) = v57;
          v61 = sub_25C4C89A0();
          v63 = v62;
          v101 = *(v58 + 8);
          v101(v53, v102);
          v64 = sub_25C458990(v61, v63, &v111);
          v55 = v102;

          *(v59 + 4) = v64;
          *(v59 + 12) = 2080;
          v65 = v99;
          *(v59 + 14) = sub_25C458990(v99, v50, &v111);
          _os_log_impl(&dword_25C452000, v56, v92, "ClientStart: endpoint=%s, client=%s", v59, 0x16u);
          swift_arrayDestroy();
          v66 = v60;
          v54 = v105;
          MEMORY[0x25F888630](v66, -1, -1);
          MEMORY[0x25F888630](v59, -1, -1);
        }

        else
        {

          v101 = *(v52 + 8);
          v101(v53, v55);
          v65 = v99;
        }

        type metadata accessor for NXClientDaemon(0);
        v67 = v97;
        ObjectType(v97, v54, v55);
        v68 = v106;
        v69 = v106[2];
        v70 = v106[3];
        v71 = v106[4];
        v72 = v106[11];

        swift_unknownObjectRetain();
        v99 = v72;
        v73 = sub_25C478BC4(v67, v69, v70, v91, v65, v50, v71, v104, v100, v72);
        v74 = swift_allocObject();
        swift_weakInit();
        v75 = v108;
        v76 = v109 + 16;
        v77 = v96;
        v78 = v107;
        (*(v109 + 16))(v96, v107, v108);
        v79 = (*(v76 + 64) + 24) & ~*(v76 + 64);
        v80 = swift_allocObject();
        *(v80 + 16) = v74;
        v90(v80 + v79, v77, v75);
        v81 = (v73 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon_invalidationHandler);
        swift_beginAccess();
        v82 = *v81;
        v83 = v81[1];
        *v81 = sub_25C478630;
        v81[1] = v80;

        sub_25C45A2C8(v82, v83);

        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v115 = v68[13];
        v68[13] = 0x8000000000000000;
        sub_25C477AD0(v73, v78, isUniquelyReferenced_nonNull_native, &qword_27FC0A488, &qword_25C4CA1E8);
        v68[13] = v115;
        swift_endAccess();
        v85 = v89[0];
        sub_25C478F18();
        if (v85)
        {

          v101(v105, v102);
          return (*(v109 + 8))(v78, v75);
        }

        else
        {
          v86 = v109;
          v87 = v99;
          v88 = sub_25C46B534(v103);
          if (v88)
          {
            xpc_connection_send_message(v87, v88);

            swift_unknownObjectRelease();
          }

          else
          {
          }

          v101(v105, v102);
          return (*(v86 + 8))(v78, v75);
        }
      }
    }
  }

  else
  {
    v113 = 2125646;
    v114 = 0xE300000000000000;
    MEMORY[0x25F887A50](v23, v25);
    v45 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
  }
}

uint64_t sub_25C46D730(void *a1)
{
  v2 = sub_25C4C80B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25C4C7B20();
  v42 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v39 - v10;
  (*(v3 + 104))(v5, *MEMORY[0x277D358C8], v2);
  v12 = sub_25C4C80A0();
  v14 = v13;
  (*(v3 + 8))(v5, v2);
  swift_getObjectType();
  v15 = a1;
  if (sub_25C4C86D0())
  {
    v16 = v41;
    sub_25C4C7B00();

    v17 = v42;
    (*(v42 + 32))(v11, v9, v6);
    swift_beginAccess();
    v18 = *(v16 + 104);
    v19 = v6;
    v20 = v17;
    if (*(v18 + 16) && (v21 = sub_25C458F84(v11), (v22 & 1) != 0))
    {
      v23 = *(*(v18 + 56) + 8 * v21);
      swift_endAccess();
      v24 = qword_27FC0B310;

      if (v24 != -1)
      {
        swift_once();
      }

      v25 = sub_25C4C7BD0();
      __swift_project_value_buffer(v25, qword_27FC0B318);

      v26 = sub_25C4C7BB0();
      v27 = sub_25C4C8720();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v39[1] = v23;
        v40 = v11;
        v29 = v28;
        v30 = swift_slowAlloc();
        v48 = v30;
        *v29 = 136315138;
        swift_beginAccess();
        v31 = *(v16 + 24);
        v44 = *(v16 + 16);
        v45 = v31;

        MEMORY[0x25F887A50](58, 0xE100000000000000);
        v43 = *(v16 + 80);
        v32 = sub_25C4C89A0();
        MEMORY[0x25F887A50](v32);

        v33 = sub_25C458990(v44, v45, &v48);

        *(v29 + 4) = v33;
        _os_log_impl(&dword_25C452000, v26, v27, "ClientStop: client=%s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v30);
        MEMORY[0x25F888630](v30, -1, -1);
        v11 = v40;
        v20 = v42;
        MEMORY[0x25F888630](v29, -1, -1);
      }

      sub_25C479898();
      v34 = sub_25C46B534(v15);
      if (v34)
      {
        xpc_connection_send_message(*(v16 + 88), v34);

        swift_unknownObjectRelease();
        return (*(v20 + 8))(v11, v19);
      }

      else
      {
        (*(v20 + 8))(v11, v19);
      }
    }

    else
    {
      swift_endAccess();
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_25C4C88F0();

      v46 = 0xD00000000000001DLL;
      v47 = 0x800000025C4D06D0;
      sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v36 = sub_25C4C89A0();
      MEMORY[0x25F887A50](v36);

      v37 = objc_allocWithZone(sub_25C4C7B80());
      sub_25C4C7B90();
      swift_willThrow();
      return (*(v17 + 8))(v11, v19);
    }
  }

  else
  {
    v46 = 2125646;
    v47 = 0xE300000000000000;
    MEMORY[0x25F887A50](v12, v14);
    v38 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
  }
}

uint64_t sub_25C46DCF0(uint64_t a1)
{
  v2 = sub_25C4C80B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25C4C7B20();
  v7 = *(v6 - 8);
  v74 = v6;
  v75 = v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v62 - v11;
  v13 = *MEMORY[0x277D358C8];
  v14 = *(v3 + 104);
  v72 = v3 + 104;
  v69 = v14;
  v14(v5, v13, v2);
  v15 = sub_25C4C80A0();
  v17 = v16;
  v19 = *(v3 + 8);
  v18 = v3 + 8;
  v70 = v2;
  v20 = v2;
  v21 = v19;
  v19(v5, v20);
  ObjectType = swift_getObjectType();
  v71 = a1;
  if (!sub_25C4C86D0())
  {
    v79 = 2125646;
    v80 = 0xE300000000000000;
    MEMORY[0x25F887A50](v15, v17);
    v42 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
  }

  v22 = v73;
  sub_25C4C7B00();

  v24 = v74;
  v23 = v75;
  (*(v75 + 32))(v12, v10, v74);
  swift_beginAccess();
  v25 = *(v22 + 104);
  if (!*(v25 + 16) || (v26 = sub_25C458F84(v12), (v27 & 1) == 0))
  {
    swift_endAccess();
    v79 = 0;
    v80 = 0xE000000000000000;
    sub_25C4C88F0();

    v79 = 0xD00000000000001DLL;
    v80 = 0x800000025C4D06D0;
    sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v39 = sub_25C4C89A0();
    MEMORY[0x25F887A50](v39);

    v40 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    return (*(v23 + 8))(v12, v24);
  }

  v67 = v12;
  v28 = *(*(v25 + 56) + 8 * v26);
  swift_endAccess();
  v29 = v18;
  v30 = v69;
  v31 = v70;
  v69(v5, *MEMORY[0x277D35850], v70);
  v66 = v28;

  sub_25C4C80A0();
  v64 = v29;
  v21(v5, v31);
  v32 = sub_25C4C86C0();
  v34 = v33;

  v65 = v34;
  if (!v34)
  {
    v43 = objc_allocWithZone(sub_25C4C7B80());
    goto LABEL_11;
  }

  v63 = v32;
  v30(v5, *MEMORY[0x277D35848], v31);
  sub_25C4C80A0();
  v21(v5, v31);
  v35 = sub_25C4C86A0();
  v37 = v36;

  if (v37 >> 60 != 15)
  {
    v72 = v35;
    v44 = v67;
    if (qword_27FC0B310 != -1)
    {
      swift_once();
    }

    v45 = sub_25C4C7BD0();
    __swift_project_value_buffer(v45, qword_27FC0B318);
    v46 = v65;

    v47 = v73;

    v48 = sub_25C4C7BB0();
    v49 = sub_25C4C8720();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v81 = v70;
      *v50 = 136315394;
      v51 = v63;
      *(v50 + 4) = sub_25C458990(v63, v46, &v81);
      *(v50 + 12) = 2080;
      swift_beginAccess();
      v52 = *(v47 + 24);
      v77 = *(v47 + 16);
      v78 = v52;

      MEMORY[0x25F887A50](58, 0xE100000000000000);
      v76 = *(v47 + 80);
      v53 = sub_25C4C89A0();
      MEMORY[0x25F887A50](v53);

      v54 = sub_25C458990(v77, v78, &v81);

      *(v50 + 14) = v54;
      v55 = v51;
      _os_log_impl(&dword_25C452000, v48, v49, "Send request: requestName=%s, client=%s", v50, 0x16u);
      v56 = v70;
      swift_arrayDestroy();
      MEMORY[0x25F888630](v56, -1, -1);
      v57 = v50;
      v44 = v67;
      MEMORY[0x25F888630](v57, -1, -1);
    }

    else
    {

      v55 = v63;
    }

    v58 = swift_allocObject();
    swift_weakInit();
    v59 = swift_allocObject();
    v60 = v71;
    *(v59 + 16) = v58;
    *(v59 + 24) = v60;

    swift_unknownObjectRetain();
    v61 = v72;
    sub_25C47A2D0(v55, v46, v72, v37, sub_25C47864C, v59);
    (*(v75 + 8))(v44, v74);

    sub_25C45A5B8(v61, v37);
  }

  v38 = objc_allocWithZone(sub_25C4C7B80());
LABEL_11:
  sub_25C4C7B90();
  swift_willThrow();

  return (*(v75 + 8))(v67, v74);
}

uint64_t sub_25C46E520(void *a1)
{
  v2 = sub_25C4C80B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = sub_25C4C7B20();
  v57 = *(v55 - 8);
  v6 = MEMORY[0x28223BE20](v55);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v46 - v9;
  v11 = *MEMORY[0x277D358C8];
  v12 = *(v3 + 104);
  v49 = v3 + 104;
  v50 = v12;
  v12(v5, v11, v2);
  v13 = sub_25C4C80A0();
  v15 = v14;
  v16 = *(v3 + 8);
  v51 = v5;
  v52 = v3 + 8;
  v53 = v2;
  v16(v5, v2);
  swift_getObjectType();
  v54 = a1;
  if (!sub_25C4C86D0())
  {
    v61 = 2125646;
    v62 = 0xE300000000000000;
    MEMORY[0x25F887A50](v13, v15);
    v43 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
  }

  v17 = v56;
  sub_25C4C7B00();

  v18 = v55;
  (*(v57 + 32))(v10, v8, v55);
  swift_beginAccess();
  v19 = v17;
  v20 = *(v17 + 104);
  if (!*(v20 + 16) || (v21 = sub_25C458F84(v10), (v22 & 1) == 0))
  {
    swift_endAccess();
    v61 = 0;
    v62 = 0xE000000000000000;
    sub_25C4C88F0();

    v61 = 0xD00000000000001DLL;
    v62 = 0x800000025C4D06D0;
    sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v40 = sub_25C4C89A0();
    MEMORY[0x25F887A50](v40);

    v41 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    return (*(v57 + 8))(v10, v18);
  }

  v47 = v10;
  v23 = *(*(v20 + 56) + 8 * v21);
  swift_endAccess();
  v24 = v51;
  v25 = v53;
  v50(v51, *MEMORY[0x277D358D8], v53);

  sub_25C4C80A0();
  v16(v24, v25);
  v26 = sub_25C4C86C0();
  v28 = v27;

  if (v28)
  {
    v52 = v23;
    v53 = v26;
    v29 = v18;
    v30 = v57;
    if (qword_27FC0B310 != -1)
    {
      swift_once();
    }

    v31 = sub_25C4C7BD0();
    __swift_project_value_buffer(v31, qword_27FC0B318);

    v32 = sub_25C4C7BB0();
    v33 = sub_25C4C8720();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v63 = v51;
      *v34 = 136315138;
      swift_beginAccess();
      v35 = *(v19 + 24);
      v59 = *(v19 + 16);
      v60 = v35;

      MEMORY[0x25F887A50](58, 0xE100000000000000);
      v58 = *(v19 + 80);
      v36 = sub_25C4C89A0();
      MEMORY[0x25F887A50](v36);

      v37 = sub_25C458990(v59, v60, &v63);

      *(v34 + 4) = v37;
      _os_log_impl(&dword_25C452000, v32, v33, "Try password: client=%s", v34, 0xCu);
      v38 = v51;
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x25F888630](v38, -1, -1);
      MEMORY[0x25F888630](v34, -1, -1);
    }

    v39 = v48;
    sub_25C47A8D0(v53, v28);
    if (v39)
    {
      (*(v30 + 8))(v47, v29);
    }

    v45 = sub_25C46B534(v54);
    if (v45)
    {
      xpc_connection_send_message(*(v19 + 88), v45);

      swift_unknownObjectRelease();
      return (*(v30 + 8))(v47, v29);
    }

    else
    {
      (*(v30 + 8))(v47, v29);
    }
  }

  else
  {
    v44 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();

    return (*(v57 + 8))(v47, v18);
  }
}

uint64_t sub_25C46EC18(void *a1)
{
  v94 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A490, &qword_25C4CA1F0);
  MEMORY[0x28223BE20](v1 - 8);
  v90 = (&v77 - v2);
  v88 = sub_25C4C7F70();
  v84 = *(v88 - 8);
  v3 = MEMORY[0x28223BE20](v88);
  v82 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v83 = &v77 - v5;
  v6 = sub_25C4C80B0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v86 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v77 - v10;
  v12 = sub_25C4C7B20();
  v92 = *(v12 - 8);
  v93 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v81 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v77 - v16;
  v80 = v18;
  MEMORY[0x28223BE20](v15);
  v91 = &v77 - v19;
  v20 = *(v7 + 104);
  v20(v11, *MEMORY[0x277D358C8], v6);
  v21 = sub_25C4C80A0();
  v23 = v22;
  v24 = *(v7 + 8);
  v24(v11, v6);
  ObjectType = swift_getObjectType();
  v25 = sub_25C4C86D0();
  if (v25)
  {
    v78 = v25;
    sub_25C4C7B00();

    v26 = v92 + 32;
    v79 = *(v92 + 32);
    v79(v91, v17, v93);
    v27 = v86;
    v20(v86, *MEMORY[0x277D358B0], v6);
    sub_25C4C80A0();
    v24(v27, v6);
    sub_25C4C7A10();
    swift_allocObject();
    v98 = sub_25C4C7A00();
    sub_25C478A8C(&qword_27FC0A498, 255, MEMORY[0x277D357E8], MEMORY[0x277D357F0]);
    sub_25C478A8C(&qword_27FC0A4A0, 255, MEMORY[0x277CC8710], MEMORY[0x277CC86F0]);
    v28 = v87;
    v29 = v88;
    sub_25C4C8680();
    if (v28)
    {

      return (*(v92 + 8))(v91, v93);
    }

    else
    {
      v87 = v26;
      v32 = v93;

      v33 = v84;
      if ((*(v84 + 48))(v90, 1, v29) == 1)
      {
        sub_25C4666F8(v90, &qword_27FC0A490, &qword_25C4CA1F0);
        v98 = 0;
        v99 = 0xE000000000000000;
        sub_25C4C88F0();

        v98 = 0xD000000000000027;
        v99 = 0x800000025C4D06F0;
        sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v34 = v91;
        v35 = sub_25C4C89A0();
        MEMORY[0x25F887A50](v35);

        v36 = objc_allocWithZone(sub_25C4C7B80());
        sub_25C4C7B90();
        swift_willThrow();
        return (*(v92 + 8))(v34, v32);
      }

      else
      {
        v37 = v83;
        (*(v33 + 32))(v83, v90, v29);
        v38 = v89;
        swift_beginAccess();
        if (*(v38[14] + 16) && (v39 = v32, sub_25C458F84(v91), (v40 & 1) != 0))
        {
          swift_endAccess();
          v98 = 0;
          v99 = 0xE000000000000000;
          sub_25C4C88F0();

          v98 = 0xD000000000000027;
          v99 = 0x800000025C4D0720;
          sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v41 = v91;
          v42 = sub_25C4C89A0();
          MEMORY[0x25F887A50](v42);

          v43 = objc_allocWithZone(sub_25C4C7B80());
          sub_25C4C7B90();
          swift_willThrow();
          (*(v33 + 8))(v37, v29);
          return (*(v92 + 8))(v41, v39);
        }

        else
        {
          swift_endAccess();
          swift_beginAccess();
          v44 = v38[3];
          v96 = v38[2];
          v97 = v44;

          MEMORY[0x25F887A50](58, 0xE100000000000000);
          v95 = *(v38 + 20);
          v45 = sub_25C4C89A0();
          MEMORY[0x25F887A50](v45);

          v47 = v96;
          v46 = v97;
          if (qword_27FC0B310 != -1)
          {
            swift_once();
          }

          v48 = sub_25C4C7BD0();
          __swift_project_value_buffer(v48, qword_27FC0B318);

          v49 = sub_25C4C7BB0();
          v50 = sub_25C4C8720();

          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            v96 = v52;
            *v51 = 136315138;
            v53 = sub_25C458990(v47, v46, &v96);

            *(v51 + 4) = v53;
            _os_log_impl(&dword_25C452000, v49, v50, "DiscoveryStart: client=%s", v51, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v52);
            v54 = v52;
            v55 = v92;
            MEMORY[0x25F888630](v54, -1, -1);
            MEMORY[0x25F888630](v51, -1, -1);

            v56 = v89;
          }

          else
          {

            v56 = v89;
            v55 = v92;
          }

          type metadata accessor for NXDiscoveryDaemon(0);
          v57 = v82;
          (*(v84 + 16))(v82, v83, v88);
          v58 = v56[4];
          v59 = v56[11];

          swift_unknownObjectRetain();
          v90 = v59;
          v60 = sub_25C47AD44(v57, v78, v58, v59);
          v61 = swift_allocObject();
          swift_weakInit();
          v63 = v55 + 16;
          v62 = *(v55 + 16);
          v64 = v81;
          v65 = v91;
          v66 = v93;
          v62(v81, v91, v93);
          v67 = (*(v63 + 64) + 24) & ~*(v63 + 64);
          v68 = swift_allocObject();
          *(v68 + 16) = v61;
          v79(v68 + v67, v64, v66);
          v69 = (v60 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon_invalidationHandler);
          swift_beginAccess();
          v70 = *v69;
          v71 = v69[1];
          *v69 = sub_25C478730;
          v69[1] = v68;

          sub_25C45A2C8(v70, v71);

          swift_beginAccess();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v100 = v56[14];
          v56[14] = 0x8000000000000000;
          sub_25C477AD0(v60, v65, isUniquelyReferenced_nonNull_native, &qword_27FC0A4A8, &qword_25C4CA1F8);
          v56[14] = v100;
          swift_endAccess();
          sub_25C47B034();
          v73 = v90;
          v74 = v92;
          v75 = sub_25C46B534(v94);
          if (v75)
          {
            xpc_connection_send_message(v73, v75);

            swift_unknownObjectRelease();
          }

          else
          {
          }

          v76 = v93;
          (*(v84 + 8))(v83, v88);
          return (*(v74 + 8))(v65, v76);
        }
      }
    }
  }

  else
  {
    v98 = 2125646;
    v99 = 0xE300000000000000;
    MEMORY[0x25F887A50](v21, v23);
    v31 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
  }
}

uint64_t sub_25C46F810(void *a1)
{
  v2 = sub_25C4C80B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25C4C7B20();
  v42 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v39 - v10;
  (*(v3 + 104))(v5, *MEMORY[0x277D358C8], v2);
  v12 = sub_25C4C80A0();
  v14 = v13;
  (*(v3 + 8))(v5, v2);
  swift_getObjectType();
  v15 = a1;
  if (sub_25C4C86D0())
  {
    v16 = v41;
    sub_25C4C7B00();

    v17 = v42;
    (*(v42 + 32))(v11, v9, v6);
    swift_beginAccess();
    v18 = *(v16 + 112);
    v19 = v6;
    v20 = v17;
    if (*(v18 + 16) && (v21 = sub_25C458F84(v11), (v22 & 1) != 0))
    {
      v23 = *(*(v18 + 56) + 8 * v21);
      swift_endAccess();
      v24 = qword_27FC0B310;

      if (v24 != -1)
      {
        swift_once();
      }

      v25 = sub_25C4C7BD0();
      __swift_project_value_buffer(v25, qword_27FC0B318);

      v26 = sub_25C4C7BB0();
      v27 = sub_25C4C8720();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v39[1] = v23;
        v40 = v11;
        v29 = v28;
        v30 = swift_slowAlloc();
        v48 = v30;
        *v29 = 136315138;
        swift_beginAccess();
        v31 = *(v16 + 24);
        v44 = *(v16 + 16);
        v45 = v31;

        MEMORY[0x25F887A50](58, 0xE100000000000000);
        v43 = *(v16 + 80);
        v32 = sub_25C4C89A0();
        MEMORY[0x25F887A50](v32);

        v33 = sub_25C458990(v44, v45, &v48);

        *(v29 + 4) = v33;
        _os_log_impl(&dword_25C452000, v26, v27, "DiscoveryStop: client=%s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v30);
        MEMORY[0x25F888630](v30, -1, -1);
        v11 = v40;
        v20 = v42;
        MEMORY[0x25F888630](v29, -1, -1);
      }

      sub_25C47F1B8();
      v34 = sub_25C46B534(v15);
      if (v34)
      {
        xpc_connection_send_message(*(v16 + 88), v34);

        swift_unknownObjectRelease();
        return (*(v20 + 8))(v11, v19);
      }

      else
      {
        (*(v20 + 8))(v11, v19);
      }
    }

    else
    {
      swift_endAccess();
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_25C4C88F0();

      v46 = 0xD00000000000001DLL;
      v47 = 0x800000025C4D06D0;
      sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v36 = sub_25C4C89A0();
      MEMORY[0x25F887A50](v36);

      v37 = objc_allocWithZone(sub_25C4C7B80());
      sub_25C4C7B90();
      swift_willThrow();
      return (*(v17 + 8))(v11, v19);
    }
  }

  else
  {
    v46 = 2125646;
    v47 = 0xE300000000000000;
    MEMORY[0x25F887A50](v12, v14);
    v38 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
  }
}

uint64_t sub_25C46FDD0(uint64_t a1)
{
  v132 = sub_25C4C7B20();
  v129 = *(v132 - 8);
  v2 = *(v129 + 64);
  v3 = MEMORY[0x28223BE20](v132);
  v124 = &v110 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v3);
  v123 = &v110 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v121 = &v110 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v125 = &v110 - v9;
  MEMORY[0x28223BE20](v8);
  v128 = &v110 - v10;
  v11 = sub_25C4C80B0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v127 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v134 = &v110 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v110 - v17;
  v19 = sub_25C4C7C50();
  v130 = *(v19 - 8);
  v131 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v122 = &v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v110 - v22;
  v24 = *MEMORY[0x277D358D0];
  v135 = *(v12 + 104);
  v135(v18, v24, v11);
  swift_unknownObjectRetain();
  sub_25C4C80A0();
  v25 = *(v12 + 8);
  v133 = v11;
  v136 = v25;
  v25(v18, v11);
  v26 = v137;
  result = sub_25C4C7C20();
  if (!v26)
  {
    v118 = v2;
    v120 = v23;
    v119 = 0;
    swift_getObjectType();
    v29 = v133;
    v28 = v134;
    v30 = v135;
    v135(v134, *MEMORY[0x277D35860], v133);
    sub_25C4C80A0();
    v136(v28, v29);
    v117 = sub_25C4C86C0();
    v137 = v31;

    v30(v28, *MEMORY[0x277D35880], v29);
    sub_25C4C80A0();
    v136(v28, v29);
    v32 = sub_25C4C86C0();
    v34 = v33;

    if (!v34)
    {

      v58 = objc_allocWithZone(sub_25C4C7B80());
      sub_25C4C7B90();
      swift_willThrow();
      return (*(v130 + 8))(v120, v131);
    }

    v35 = a1;
    v36 = v34;
    v114 = v32;
    v37 = *MEMORY[0x277D35840];
    v38 = v127;
    v115 = v12 + 104;
    v135(v127, v37, v29);
    v39 = sub_25C4C80A0();
    v41 = v40;
    v42 = v29;
    v127 = (v12 + 8);
    v43 = v136;
    v136(v38, v42);
    v44 = sub_25C4C86D0();
    v45 = v120;
    if (v44)
    {
      v46 = v43;
      v47 = v120;
      v48 = v46;
      v116 = v36;
      v113 = v35;
      v49 = v126;
      v50 = v125;
      v111 = v44;
      sub_25C4C7B00();

      v52 = v128;
      v51 = v129;
      v53 = *(v129 + 32);
      v125 = (v129 + 32);
      v112 = v53;
      v53(v128, v50, v132);
      swift_beginAccess();
      if (*(*(v49 + 120) + 16))
      {
        sub_25C458F84(v52);
        if (v54)
        {
          swift_endAccess();

          v140 = 0;
          v141 = 0xE000000000000000;
          sub_25C4C88F0();

          v140 = 0xD000000000000020;
          v141 = 0x800000025C4D0790;
          sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v55 = v132;
          v56 = sub_25C4C89A0();
          MEMORY[0x25F887A50](v56);

          v57 = objc_allocWithZone(sub_25C4C7B80());
          sub_25C4C7B90();
          swift_willThrow();
          (*(v51 + 8))(v52, v55);
          return (*(v130 + 8))(v47, v131);
        }
      }

      swift_endAccess();
      v60 = v133;
      v59 = v134;
      v135(v134, *MEMORY[0x277D358A8], v133);
      sub_25C4C80A0();
      v48(v59, v60);
      v61 = sub_25C4C86A0();
      v63 = v62;

      if (v63 >> 60 == 15)
      {

        v140 = 0;
        v141 = 0xE000000000000000;
        sub_25C4C88F0();

        v140 = 0xD00000000000001ELL;
        v141 = 0x800000025C4D0770;
        sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v64 = v132;
        v65 = sub_25C4C89A0();
        MEMORY[0x25F887A50](v65);

        v66 = objc_allocWithZone(sub_25C4C7B80());
        sub_25C4C7B90();
        swift_willThrow();
        (*(v129 + 8))(v52, v64);
        return (*(v130 + 8))(v120, v131);
      }

      v134 = v61;
      v135 = v63;
      v68 = v129;
      if (qword_27FC0B310 != -1)
      {
        swift_once();
      }

      v69 = sub_25C4C7BD0();
      __swift_project_value_buffer(v69, qword_27FC0B318);
      v70 = *(v68 + 16);
      v71 = v121;
      v136 = (v68 + 16);
      v133 = v70;
      v70(v121, v128, v132);
      v72 = v116;

      v73 = v126;

      v74 = sub_25C4C7BB0();
      v75 = sub_25C4C8720();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v138 = v77;
        *v76 = 136315650;
        *(v76 + 4) = sub_25C458990(v114, v72, &v138);
        *(v76 + 12) = 2080;
        sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v78 = sub_25C4C89A0();
        v80 = v79;
        v127 = *(v129 + 8);
        (v127)(v71, v132);
        v81 = sub_25C458990(v78, v80, &v138);

        *(v76 + 14) = v81;
        *(v76 + 22) = 2080;
        v73 = v126;
        swift_beginAccess();
        v82 = *(v73 + 24);
        v140 = *(v73 + 16);
        v141 = v82;

        MEMORY[0x25F887A50](58, 0xE100000000000000);
        LODWORD(v142) = *(v73 + 80);
        v83 = sub_25C4C89A0();
        MEMORY[0x25F887A50](v83);

        v84 = sub_25C458990(v140, v141, &v138);

        *(v76 + 24) = v84;
        _os_log_impl(&dword_25C452000, v74, v75, "Operation start: operationName=%s, operationUUID=%s, client=%s", v76, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x25F888630](v77, -1, -1);
        v85 = v76;
        v86 = v120;
        MEMORY[0x25F888630](v85, -1, -1);

        v87 = v130;
        v88 = v131;
        v89 = v123;
        v90 = v122;
      }

      else
      {

        v127 = *(v129 + 8);
        (v127)(v71, v132);
        v87 = v130;
        v88 = v131;
        v89 = v123;
        v90 = v122;
        v86 = v120;
      }

      type metadata accessor for NXOperationDaemon(0);
      (*(v87 + 16))(v90, v86, v88);
      swift_beginAccess();
      v91 = *(v73 + 24);
      v138 = *(v73 + 16);
      v139 = v91;

      v92 = v90;
      MEMORY[0x25F887A50](58, 0xE100000000000000);
      LODWORD(v142) = *(v73 + 80);
      v93 = sub_25C4C89A0();
      MEMORY[0x25F887A50](v93);

      v94 = v138;
      v95 = v139;
      v96 = v128;
      v97 = v133;
      v133(v89, v128, v132);
      v98 = *(v73 + 32);
      v99 = *(v73 + 88);

      swift_unknownObjectRetain();
      v100 = sub_25C4BDCC4(v92, v94, v95, v117, v137, v114, v116, v111, v89, v98, v99);
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v142 = *(v73 + 120);
      *(v73 + 120) = 0x8000000000000000;
      sub_25C477AD0(v100, v96, isUniquelyReferenced_nonNull_native, &qword_27FC0A4B0, &qword_25C4CACD0);
      *(v73 + 120) = v142;
      swift_endAccess();
      v102 = swift_allocObject();
      swift_weakInit();
      v103 = v124;
      v104 = v132;
      v97(v124, v96, v132);
      v105 = (*(v129 + 80) + 24) & ~*(v129 + 80);
      v106 = (v118 + v105 + 7) & 0xFFFFFFFFFFFFFFF8;
      v107 = swift_allocObject();
      *(v107 + 16) = v102;
      v112(v107 + v105, v103, v104);
      *(v107 + v106) = v113;
      swift_unknownObjectRetain();

      v109 = v134;
      v108 = v135;
      sub_25C4BE3F0(v134, v135, sub_25C4787C4, v107);

      sub_25C45A5B8(v109, v108);

      (v127)(v128, v104);
      (*(v130 + 8))(v120, v131);
    }

    else
    {
      v140 = 2125646;
      v141 = 0xE300000000000000;
      MEMORY[0x25F887A50](v39, v41);
      v67 = objc_allocWithZone(sub_25C4C7B80());
      sub_25C4C7B90();
      swift_willThrow();
      (*(v130 + 8))(v45, v131);
    }
  }

  return result;
}

uint64_t sub_25C470CF4(uint64_t a1)
{
  v2 = sub_25C4C80B0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v70 = &v64[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v7 = &v64[-v6];
  v75 = sub_25C4C7B20();
  v73 = *(v75 - 8);
  v8 = MEMORY[0x28223BE20](v75);
  v67 = &v64[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v64[-v11];
  MEMORY[0x28223BE20](v10);
  v14 = &v64[-v13];
  v15 = *MEMORY[0x277D35840];
  v69 = *(v3 + 104);
  v69(v7, v15, v2);
  v16 = sub_25C4C80A0();
  v18 = v17;
  v19 = *(v3 + 8);
  v71 = v2;
  v68 = v19;
  v19(v7, v2);
  swift_getObjectType();
  v72 = a1;
  if (sub_25C4C86D0())
  {
    v20 = v74;
    sub_25C4C7B00();

    v21 = v73;
    v22 = v12;
    v23 = v75;
    (*(v73 + 32))(v14, v22, v75);
    swift_beginAccess();
    v24 = *(v20 + 120);
    if (!*(v24 + 16) || (v25 = sub_25C458F84(v14), (v26 & 1) == 0))
    {
      swift_endAccess();
      v79 = 0;
      v80 = 0xE000000000000000;
      sub_25C4C88F0();

      v79 = 0xD00000000000001ALL;
      v80 = 0x800000025C4D07C0;
      sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v36 = sub_25C4C89A0();
      MEMORY[0x25F887A50](v36);

      v37 = objc_allocWithZone(sub_25C4C7B80());
      sub_25C4C7B90();
      swift_willThrow();
      return (*(v21 + 8))(v14, v23);
    }

    v27 = *(*(v24 + 56) + 8 * v25);
    swift_endAccess();
    v28 = v70;
    v29 = v71;
    v69(v70, *MEMORY[0x277D358A8], v71);
    v30 = v27;

    sub_25C4C80A0();
    v68(v28, v29);
    v31 = v72;
    v70 = sub_25C4C86A0();
    v33 = v32;

    v71 = v33;
    if (v33 >> 60 == 15)
    {
      v79 = 0;
      v80 = 0xE000000000000000;
      sub_25C4C88F0();

      v79 = 0xD00000000000001FLL;
      v80 = 0x800000025C4D07E0;
      sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v23 = v75;
      v34 = sub_25C4C89A0();
      MEMORY[0x25F887A50](v34);

      v35 = objc_allocWithZone(sub_25C4C7B80());
      sub_25C4C7B90();
      swift_willThrow();

      return (*(v21 + 8))(v14, v23);
    }

    v69 = v30;
    v40 = v21;
    v41 = v75;
    if (qword_27FC0B310 != -1)
    {
      swift_once();
    }

    v42 = sub_25C4C7BD0();
    __swift_project_value_buffer(v42, qword_27FC0B318);
    v43 = *(v21 + 16);
    v44 = v67;
    v68 = v14;
    v43(v67, v14, v41);
    v45 = v74;

    v46 = sub_25C4C7BB0();
    v47 = sub_25C4C8720();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v81 = v66;
      *v48 = 136315394;
      sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v65 = v47;
      v49 = sub_25C4C89A0();
      v50 = v44;
      v51 = v49;
      v53 = v52;
      v54 = *(v40 + 8);
      v54(v50, v41);
      v55 = sub_25C458990(v51, v53, &v81);

      *(v48 + 4) = v55;
      *(v48 + 12) = 2080;
      swift_beginAccess();
      v56 = *(v45 + 24);
      v77 = *(v45 + 16);
      v78 = v56;

      MEMORY[0x25F887A50](58, 0xE100000000000000);
      v76 = *(v45 + 80);
      v57 = sub_25C4C89A0();
      MEMORY[0x25F887A50](v57);

      v58 = sub_25C458990(v77, v78, &v81);

      *(v48 + 14) = v58;
      _os_log_impl(&dword_25C452000, v46, v65, "Operation update: operationUUID=%s, client=%s", v48, 0x16u);
      v59 = v66;
      swift_arrayDestroy();
      MEMORY[0x25F888630](v59, -1, -1);
      MEMORY[0x25F888630](v48, -1, -1);
    }

    else
    {

      v54 = *(v40 + 8);
      v54(v44, v41);
    }

    v60 = swift_allocObject();
    swift_weakInit();
    v61 = swift_allocObject();
    *(v61 + 16) = v60;
    *(v61 + 24) = v31;

    swift_unknownObjectRetain();
    v63 = v70;
    v62 = v71;
    sub_25C4C1D5C(v70, v71, sub_25C4787DC, v61);
    v54(v68, v41);

    sub_25C45A5B8(v63, v62);
  }

  else
  {
    v79 = 2125646;
    v80 = 0xE300000000000000;
    MEMORY[0x25F887A50](v16, v18);
    v39 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
  }
}

uint64_t sub_25C4715BC(uint64_t a1)
{
  v2 = sub_25C4C80B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25C4C7B20();
  v70 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v68 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v66 = &v58 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v58 - v12;
  v67 = v14;
  MEMORY[0x28223BE20](v11);
  v16 = &v58 - v15;
  (*(v3 + 104))(v5, *MEMORY[0x277D35840], v2);
  v17 = sub_25C4C80A0();
  v19 = v18;
  (*(v3 + 8))(v5, v2);
  swift_getObjectType();
  v69 = a1;
  if (sub_25C4C86D0())
  {
    v20 = v71;
    sub_25C4C7B00();

    v21 = v70;
    v65 = *(v70 + 32);
    v65(v16, v13, v6);
    swift_beginAccess();
    v22 = *(v20 + 120);
    v23 = v6;
    v24 = v16;
    if (*(v22 + 16) && (v25 = sub_25C458F84(v16), (v26 & 1) != 0))
    {
      v27 = *(*(v22 + 56) + 8 * v25);
      swift_endAccess();
      v28 = qword_27FC0B310;
      v64 = v27;

      if (v28 != -1)
      {
        swift_once();
      }

      v29 = sub_25C4C7BD0();
      __swift_project_value_buffer(v29, qword_27FC0B318);
      v30 = v66;
      v63 = *(v21 + 16);
      v63(v66, v24, v6);

      v31 = sub_25C4C7BB0();
      v32 = sub_25C4C8720();

      v33 = os_log_type_enabled(v31, v32);
      v61 = v24;
      if (v33)
      {
        v34 = swift_slowAlloc();
        v58 = v34;
        v60 = swift_slowAlloc();
        v77 = v60;
        *v34 = 136315394;
        sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v59 = v32;
        v35 = v20;
        v36 = sub_25C4C89A0();
        v38 = v37;
        v39 = *(v21 + 8);
        v62 = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v66 = v39;
        (v39)(v30, v23);
        v40 = sub_25C458990(v36, v38, &v77);

        v41 = v58;
        *(v58 + 1) = v40;
        *(v41 + 6) = 2080;
        swift_beginAccess();
        v42 = *(v35 + 24);
        v73 = *(v35 + 16);
        v74 = v42;

        MEMORY[0x25F887A50](58, 0xE100000000000000);
        v72 = *(v35 + 80);
        v43 = sub_25C4C89A0();
        MEMORY[0x25F887A50](v43);

        v44 = sub_25C458990(v73, v74, &v77);

        *(v41 + 14) = v44;
        _os_log_impl(&dword_25C452000, v31, v59, "Operation cancel: operationUUID=%s, client=%s", v41, 0x16u);
        v45 = v60;
        swift_arrayDestroy();
        MEMORY[0x25F888630](v45, -1, -1);
        MEMORY[0x25F888630](v41, -1, -1);
      }

      else
      {

        v50 = *(v21 + 8);
        v62 = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v66 = v50;
        (v50)(v30, v23);
      }

      v51 = swift_allocObject();
      swift_weakInit();
      v52 = v68;
      v53 = v61;
      v63(v68, v61, v23);
      v54 = (*(v21 + 80) + 24) & ~*(v21 + 80);
      v55 = v23;
      v56 = (v67 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
      v57 = swift_allocObject();
      *(v57 + 16) = v51;
      v65((v57 + v54), v52, v55);
      *(v57 + v56) = v69;

      swift_unknownObjectRetain();
      sub_25C4C23B0(sub_25C478980, v57);

      (v66)(v53, v55);
    }

    else
    {
      swift_endAccess();
      v75 = 0;
      v76 = 0xE000000000000000;
      sub_25C4C88F0();

      v75 = 0xD00000000000001ALL;
      v76 = 0x800000025C4D07C0;
      sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v46 = sub_25C4C89A0();
      MEMORY[0x25F887A50](v46);

      v47 = objc_allocWithZone(sub_25C4C7B80());
      sub_25C4C7B90();
      swift_willThrow();
      return (*(v21 + 8))(v16, v6);
    }
  }

  else
  {
    v75 = 2125646;
    v76 = 0xE300000000000000;
    MEMORY[0x25F887A50](v17, v19);
    v49 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
  }
}

uint64_t sub_25C471D78(void *a1)
{
  v85 = a1;
  v1 = sub_25C4C7E50();
  v75 = *(v1 - 8);
  v76 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v72 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v78 = &v68 - v4;
  v5 = sub_25C4C80B0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4B8, &qword_25C4CA200);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v68 - v10;
  v12 = sub_25C4C7B20();
  v82 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v73 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v81 = &v68 - v15;
  swift_getObjectType();
  v16 = *MEMORY[0x277D35888];
  v79 = *(v6 + 104);
  v79(v8, v16, v5);
  sub_25C4C80A0();
  v17 = *(v6 + 8);
  v80 = v5;
  v18 = v5;
  v19 = v17;
  v17(v8, v18);
  sub_25C4C86B0();
  v20 = v82;

  if ((*(v20 + 48))(v11, 1, v12) == 1)
  {
    sub_25C4666F8(v11, &qword_27FC0A4B8, &qword_25C4CA200);
    v21 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    return swift_willThrow();
  }

  else
  {
    v23 = v81;
    v24 = v11;
    v25 = v12;
    (*(v20 + 32))(v81, v24, v12);
    v26 = v80;
    v79(v8, *MEMORY[0x277D35898], v80);
    v27 = v20;
    sub_25C4C80A0();
    v19(v8, v26);
    v28 = sub_25C4C8570();

    v29 = xpc_dictionary_get_value(v85, (v28 + 32));

    if (v29)
    {
      swift_unknownObjectRetain();
      v30 = v77;
      v31 = v78;
      sub_25C4C7E40();
      if (v30)
      {
        (*(v20 + 8))(v23, v25);
        return swift_unknownObjectRelease();
      }

      else
      {
        v33 = v74;
        swift_beginAccess();
        v34 = *(v33 + 128);
        if (*(v34 + 16) && (v35 = sub_25C458F84(v23), (v36 & 1) != 0))
        {
          v37 = *(v34 + 56) + 16 * v35;
          v38 = *v37;
          v80 = *(v37 + 8);
          swift_endAccess();
          v39 = qword_27FC0B310;
          v85 = v38;
          swift_unknownObjectRetain();
          v40 = v75;
          if (v39 != -1)
          {
            swift_once();
          }

          v41 = sub_25C4C7BD0();
          __swift_project_value_buffer(v41, qword_27FC0B318);
          (*(v27 + 16))(v73, v23, v25);
          v42 = v72;
          (*(v40 + 16))(v72, v31, v76);
          v43 = sub_25C4C7BB0();
          LODWORD(v77) = sub_25C4C8720();
          v44 = os_log_type_enabled(v43, v77);
          v71 = v25;
          if (v44)
          {
            v45 = swift_slowAlloc();
            v74 = swift_slowAlloc();
            v83 = v74;
            *v45 = 136315394;
            sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v70 = v43;
            v46 = v73;
            v47 = sub_25C4C89A0();
            v49 = v48;
            v69 = *(v82 + 8);
            v69(v46, v25);
            v50 = sub_25C458990(v47, v49, &v83);

            *(v45 + 4) = v50;
            *(v45 + 12) = 2080;
            sub_25C478A8C(&unk_27FC0AA60, 255, MEMORY[0x277D35798], MEMORY[0x277D357A0]);
            v51 = v72;
            v52 = v76;
            v53 = sub_25C4C89A0();
            v55 = v54;
            v79 = *(v75 + 8);
            (v79)(v51, v52);
            v56 = v53;
            v57 = v69;
            v58 = sub_25C458990(v56, v55, &v83);
            v31 = v78;

            *(v45 + 14) = v58;
            v59 = v70;
            _os_log_impl(&dword_25C452000, v70, v77, "Server operation event: uuid=%s, event:%s", v45, 0x16u);
            v60 = v74;
            swift_arrayDestroy();
            MEMORY[0x25F888630](v60, -1, -1);
            MEMORY[0x25F888630](v45, -1, -1);
          }

          else
          {

            v79 = *(v40 + 8);
            (v79)(v42, v76);
            v63 = v25;
            v57 = *(v82 + 8);
            v57(v73, v63);
          }

          swift_getObjectType();
          v64 = sub_25C4C7F10();
          if (v64)
          {
            v66 = v64;
            v67 = v65;
            v64(v31);
            sub_25C45A2C8(v66, v67);
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          (v79)(v31, v76);
          return (v57)(v23, v71);
        }

        else
        {
          swift_endAccess();
          v83 = 0;
          v84 = 0xE000000000000000;
          sub_25C4C88F0();

          v83 = 0xD000000000000029;
          v84 = 0x800000025C4D0840;
          sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v61 = sub_25C4C89A0();
          MEMORY[0x25F887A50](v61);

          v62 = objc_allocWithZone(sub_25C4C7B80());
          sub_25C4C7B90();
          swift_willThrow();
          swift_unknownObjectRelease();
          (*(v75 + 8))(v31, v76);
          return (*(v27 + 8))(v23, v25);
        }
      }
    }

    else
    {
      v32 = objc_allocWithZone(sub_25C4C7B80());
      sub_25C4C7B90();
      swift_willThrow();
      return (*(v20 + 8))(v23, v25);
    }
  }
}

uint64_t sub_25C4726F8(uint64_t a1)
{
  v2 = sub_25C4C80B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4B8, &qword_25C4CA200);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v52 - v7;
  v61 = sub_25C4C7B20();
  v63 = *(v61 - 8);
  v9 = MEMORY[0x28223BE20](v61);
  v53 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v60 = &v52 - v11;
  swift_getObjectType();
  v12 = *MEMORY[0x277D35888];
  v56 = *(v3 + 104);
  (v56)(v5, v12, v2);
  sub_25C4C80A0();
  v13 = *(v3 + 8);
  v57 = (v3 + 8);
  v58 = v2;
  v55 = v13;
  v13(v5, v2);
  v59 = a1;
  sub_25C4C86B0();
  v14 = v63;
  v15 = v61;

  if ((*(v14 + 48))(v8, 1, v15) == 1)
  {
    sub_25C4666F8(v8, &qword_27FC0A4B8, &qword_25C4CA200);
    v16 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    return swift_willThrow();
  }

  else
  {
    v18 = v60;
    (*(v14 + 32))(v60, v8, v15);
    v19 = v58;
    (v56)(v5, *MEMORY[0x277D358E0], v58);
    sub_25C4C80A0();
    v55(v5, v19);
    v20 = sub_25C4C86A0();
    v22 = v21;

    if (v22 >> 60 == 15)
    {
      v23 = objc_allocWithZone(sub_25C4C7B80());
      sub_25C4C7B90();
      swift_willThrow();
      return (*(v14 + 8))(v18, v15);
    }

    else
    {
      v24 = v54;
      swift_beginAccess();
      v25 = *(v24 + 128);
      v26 = v18;
      if (*(v25 + 16) && (v27 = sub_25C458F84(v18), (v28 & 1) != 0))
      {
        v29 = (*(v25 + 56) + 16 * v27);
        v30 = *v29;
        v58 = v29[1];
        swift_endAccess();
        v31 = qword_27FC0B310;
        v59 = v30;
        swift_unknownObjectRetain();
        if (v31 != -1)
        {
          swift_once();
        }

        v32 = sub_25C4C7BD0();
        __swift_project_value_buffer(v32, qword_27FC0B318);
        v33 = v63;
        v34 = v53;
        (*(v63 + 16))(v53, v18, v15);
        v35 = sub_25C4C7BB0();
        v36 = sub_25C4C8720();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v56 = v37;
          v57 = swift_slowAlloc();
          v62[0] = v57;
          *v37 = 136315138;
          sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v38 = sub_25C4C89A0();
          v39 = v15;
          v41 = v40;
          v42 = *(v33 + 8);
          v42(v34, v39);
          v43 = sub_25C458990(v38, v41, v62);
          v15 = v39;
          v26 = v60;

          v44 = v56;
          *(v56 + 1) = v43;
          _os_log_impl(&dword_25C452000, v35, v36, "Server operation provider event: uuid=%s", v44, 0xCu);
          v45 = v57;
          __swift_destroy_boxed_opaque_existential_0(v57);
          MEMORY[0x25F888630](v45, -1, -1);
          MEMORY[0x25F888630](v44, -1, -1);
        }

        else
        {

          v42 = *(v33 + 8);
          v42(v34, v15);
        }

        swift_getObjectType();
        v48 = sub_25C4C7EF0();
        if (v48)
        {
          v50 = v48;
          v51 = v49;
          v48(v20, v22);
          sub_25C45A2C8(v50, v51);
        }

        sub_25C45A5B8(v20, v22);
        swift_unknownObjectRelease();
        return (v42)(v26, v15);
      }

      else
      {
        swift_endAccess();
        v62[0] = 0;
        v62[1] = 0xE000000000000000;
        sub_25C4C88F0();
        MEMORY[0x25F887A50](0xD000000000000032, 0x800000025C4D08A0);
        sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v46 = sub_25C4C89A0();
        MEMORY[0x25F887A50](v46);

        v47 = objc_allocWithZone(sub_25C4C7B80());
        sub_25C4C7B90();
        swift_willThrow();
        sub_25C45A5B8(v20, v22);
        return (*(v63 + 8))(v18, v15);
      }
    }
  }
}

uint64_t sub_25C472E7C(uint64_t a1)
{
  v2 = sub_25C4C80B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4B8, &qword_25C4CA200);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v70 - v7;
  v9 = sub_25C4C7B20();
  v85 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v75 = v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v82 = v70 - v12;
  swift_getObjectType();
  v13 = *MEMORY[0x277D35888];
  v76 = *(v3 + 104);
  v77 = (v3 + 104);
  v76(v5, v13, v2);
  sub_25C4C80A0();
  v15 = *(v3 + 8);
  v14 = v3 + 8;
  v78 = v5;
  v79 = v2;
  v16 = v2;
  v17 = v15;
  v15(v5, v16);
  v80 = a1;
  sub_25C4C86B0();
  v18 = v85;
  v19 = v9;

  if ((*(v18 + 48))(v8, 1, v9) == 1)
  {
    sub_25C4666F8(v8, &qword_27FC0A4B8, &qword_25C4CA200);
    v20 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    return swift_willThrow();
  }

  v22 = v82;
  (*(v18 + 32))(v82, v8, v19);
  v23 = v81;
  swift_beginAccess();
  v24 = *(v23 + 128);
  if (!*(v24 + 16) || (v25 = sub_25C458F84(v22), (v26 & 1) == 0))
  {
    swift_endAccess();
    v83 = 0;
    v84 = 0xE000000000000000;
    sub_25C4C88F0();

    v83 = 0xD000000000000029;
    v84 = 0x800000025C4D0840;
    sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v39 = sub_25C4C89A0();
    MEMORY[0x25F887A50](v39);

    v40 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    return (*(v85 + 8))(v22, v19);
  }

  v74 = v19;
  v27 = (*(v24 + 56) + 16 * v25);
  v28 = *v27;
  v70[1] = v27[1];
  swift_endAccess();
  v29 = v78;
  v30 = v79;
  v31 = v76;
  v76(v78, *MEMORY[0x277D35850], v79);
  v73 = v28;
  swift_unknownObjectRetain();
  sub_25C4C80A0();
  v72 = v14;
  v17(v29, v30);
  v32 = v80;
  v70[0] = sub_25C4C86C0();
  v34 = v33;

  if (!v34)
  {
    v41 = objc_allocWithZone(sub_25C4C7B80());
    goto LABEL_10;
  }

  v71 = v34;
  v31(v29, *MEMORY[0x277D35848], v30);
  sub_25C4C80A0();
  v17(v29, v30);
  v35 = sub_25C4C86A0();
  v37 = v36;

  if (v37 >> 60 == 15)
  {

    v38 = objc_allocWithZone(sub_25C4C7B80());
LABEL_10:
    sub_25C4C7B90();
    swift_willThrow();
    swift_unknownObjectRelease();
    return (*(v85 + 8))(v82, v74);
  }

  v79 = v35;
  swift_getObjectType();
  v42 = sub_25C4C7ED0();
  v44 = v74;
  if (v42)
  {
    v76 = v43;
    v77 = v42;
    v78 = v37;
    if (qword_27FC0B310 != -1)
    {
      swift_once();
    }

    v45 = sub_25C4C7BD0();
    __swift_project_value_buffer(v45, qword_27FC0B318);
    v46 = v85;
    v47 = v75;
    (*(v85 + 16))(v75, v82, v44);
    v48 = v71;

    v49 = v48;
    v50 = sub_25C4C7BB0();
    v51 = sub_25C4C8720();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v83 = v53;
      *v52 = 136315394;
      v54 = v70[0];
      *(v52 + 4) = sub_25C458990(v70[0], v49, &v83);
      *(v52 + 12) = 2080;
      sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v55 = sub_25C4C89A0();
      v56 = v47;
      v58 = v57;
      v85 = *(v46 + 8);
      (v85)(v56, v74);
      v59 = v54;
      v60 = sub_25C458990(v55, v58, &v83);
      v44 = v74;

      *(v52 + 14) = v60;
      v49 = v71;
      _os_log_impl(&dword_25C452000, v50, v51, "Send operation request: requestName=%s, uuid=%s", v52, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F888630](v53, -1, -1);
      v61 = v52;
      v32 = v80;
      MEMORY[0x25F888630](v61, -1, -1);
    }

    else
    {

      v85 = *(v46 + 8);
      (v85)(v47, v44);
      v59 = v70[0];
    }

    v63 = swift_allocObject();
    swift_weakInit();
    v64 = swift_allocObject();
    *(v64 + 16) = v63;
    *(v64 + 24) = v32;

    swift_unknownObjectRetain();
    v65 = v49;
    v66 = v78;
    v67 = v79;
    v68 = v76;
    v69 = v77;
    v77(v59, v65, v79, v78, sub_25C478B4C, v64);
    sub_25C45A2C8(v69, v68);

    sub_25C45A5B8(v67, v66);

    swift_unknownObjectRelease();
    (v85)(v82, v44);
  }

  else
  {

    v62 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    sub_25C45A5B8(v79, v37);
    swift_unknownObjectRelease();
    return (*(v85 + 8))(v82, v44);
  }
}

uint64_t sub_25C473818(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4C0, &qword_25C4CA208);
  MEMORY[0x28223BE20](v2 - 8);
  v123 = &v104 - v3;
  v129 = sub_25C4C7D10();
  v120 = *(v129 - 8);
  v4 = MEMORY[0x28223BE20](v129);
  v118 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v117 = &v104 - v7;
  MEMORY[0x28223BE20](v6);
  v124 = &v104 - v8;
  v9 = sub_25C4C80B0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v121 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v104 - v13;
  v15 = sub_25C4C7B20();
  v133 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v104 - v19;
  v21 = *MEMORY[0x277D358C8];
  v131 = *(v10 + 104);
  v132 = v10 + 104;
  v131(v14, v21, v9);
  v22 = sub_25C4C80A0();
  v24 = v23;
  v26 = *(v10 + 8);
  v25 = (v10 + 8);
  v126 = v14;
  v127 = v9;
  v125 = v26;
  v26(v14, v9);
  ObjectType = swift_getObjectType();
  v128 = a1;
  v28 = sub_25C4C86D0();
  if (!v28)
  {
    v137 = 2125646;
    v138 = 0xE300000000000000;
    MEMORY[0x25F887A50](v22, v24);
    v45 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
  }

  v29 = v28;
  v119 = ObjectType;
  v30 = v130;
  sub_25C4C7B00();

  v31 = v133;
  (*(v133 + 32))(v20, v18, v15);
  swift_beginAccess();
  if (*(*(v30 + 136) + 16))
  {
    sub_25C458F84(v20);
    if (v32)
    {
      swift_endAccess();
      v137 = 0;
      v138 = 0xE000000000000000;
      sub_25C4C88F0();

      v137 = 0xD00000000000001DLL;
      v138 = 0x800000025C4D0940;
      sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v33 = sub_25C4C89A0();
      MEMORY[0x25F887A50](v33);

      v34 = objc_allocWithZone(sub_25C4C7B80());
      sub_25C4C7B90();
      swift_willThrow();
      return (*(v31 + 8))(v20, v15);
    }
  }

  v112 = v29;
  v116 = v20;
  v115 = v15;
  swift_endAccess();
  v37 = v126;
  v36 = v127;
  v38 = v131;
  v131(v126, *MEMORY[0x277D35860], v127);
  sub_25C4C80A0();
  v39 = v125;
  v125(v37, v36);
  v111 = sub_25C4C86C0();
  v114 = v40;

  v41 = v121;
  v38(v121, *MEMORY[0x277D358B8], v36);
  v113 = sub_25C4C80A0();
  v121 = v25;
  v39(v41, v36);
  sub_25C4C7A10();
  swift_allocObject();
  v137 = sub_25C4C7A00();
  sub_25C478A8C(&qword_27FC0A4C8, 255, MEMORY[0x277D35678], MEMORY[0x277D35680]);
  sub_25C478A8C(&qword_27FC0A4A0, 255, MEMORY[0x277CC8710], MEMORY[0x277CC86F0]);
  v42 = v122;
  v43 = v123;
  v44 = v129;
  sub_25C4C8680();
  if (v42)
  {

    return (*(v133 + 8))(v116, v115);
  }

  v122 = 0;

  v46 = v120;
  v47 = *(v120 + 48);
  if (v47(v43, 1, v44) == 1)
  {
    (*(v46 + 104))(v124, *MEMORY[0x277D35668], v44);
    v48 = v47(v43, 1, v44);
    v50 = v126;
    v49 = v127;
    v51 = v131;
    if (v48 != 1)
    {
      sub_25C4666F8(v43, &qword_27FC0A4C0, &qword_25C4CA208);
    }
  }

  else
  {
    (*(v46 + 32))(v124, v43, v44);
    v50 = v126;
    v49 = v127;
    v51 = v131;
  }

  v51(v50, *MEMORY[0x277D35870], v49);
  sub_25C4C80A0();
  v52 = v125;
  v125(v50, v49);
  v53 = sub_25C4C8670();

  if (!v53)
  {

    v87 = objc_allocWithZone(sub_25C4C7B80());
LABEL_20:
    sub_25C4C7B90();
    swift_willThrow();
    (*(v120 + 8))(v124, v129);
    return (*(v133 + 8))(v116, v115);
  }

  v123 = v53;
  v131(v50, *MEMORY[0x277D358A0], v49);
  sub_25C4C80A0();
  v52(v50, v49);
  v54 = sub_25C4C8670();

  if (!v54)
  {

    v88 = objc_allocWithZone(sub_25C4C7B80());
    goto LABEL_20;
  }

  v55 = v130;
  swift_beginAccess();
  v56 = *(v55 + 24);
  v135 = *(v55 + 16);
  v136 = v56;

  MEMORY[0x25F887A50](58, 0xE100000000000000);
  LODWORD(v134) = *(v55 + 80);
  v57 = sub_25C4C89A0();
  MEMORY[0x25F887A50](v57);

  v58 = v136;
  v113 = v135;
  v59 = v120;
  if (qword_27FC0B310 != -1)
  {
    swift_once();
  }

  v60 = sub_25C4C7BD0();
  __swift_project_value_buffer(v60, qword_27FC0B318);
  v61 = v117;
  v62 = v129;
  v110 = *(v59 + 16);
  v109 = v59 + 16;
  v110(v117, v124, v129);
  v63 = v123;

  v64 = sub_25C4C7BB0();
  v65 = sub_25C4C8720();

  v106 = v65;
  v108 = v64;
  v66 = os_log_type_enabled(v64, v65);
  v107 = v58;
  if (v66)
  {
    v67 = v58;
    v68 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v135 = v105;
    *v68 = 136315906;
    sub_25C478A8C(&qword_27FC0A4D0, 255, MEMORY[0x277D35678], MEMORY[0x277D35688]);
    v69 = v67;
    v70 = sub_25C4C89A0();
    v72 = v71;
    v119 = *(v120 + 8);
    v119(v61, v62);
    v73 = sub_25C458990(v70, v72, &v135);

    *(v68 + 4) = v73;
    *(v68 + 12) = 2080;
    v134 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4D8, &qword_25C4CA210);
    sub_25C478AD4();
    v74 = sub_25C4C8520();
    v76 = sub_25C458990(v74, v75, &v135);

    *(v68 + 14) = v76;
    *(v68 + 22) = 2080;
    v134 = v54;
    v55 = v130;
    v77 = v127;
    v78 = sub_25C4C8520();
    v80 = sub_25C458990(v78, v79, &v135);

    *(v68 + 24) = v80;
    *(v68 + 32) = 2080;
    v81 = v54;
    v82 = v113;
    *(v68 + 34) = sub_25C458990(v113, v69, &v135);
    v83 = v108;
    _os_log_impl(&dword_25C452000, v108, v106, "ServerStart: mode=%s, requests=[%s], operations=[%s], client=%s", v68, 0x2Au);
    v84 = v105;
    swift_arrayDestroy();
    MEMORY[0x25F888630](v84, -1, -1);
    v85 = v68;
    v86 = v125;
    MEMORY[0x25F888630](v85, -1, -1);
  }

  else
  {

    v119 = *(v59 + 8);
    v119(v61, v62);
    v77 = v127;
    v86 = v125;
    v81 = v54;
    v82 = v113;
  }

  type metadata accessor for NXServerDaemon(0);
  v89 = v118;
  v110(v118, v124, v129);
  v90 = *(v55 + 32);

  v91 = sub_25C4535A8(v111, v114, v89, v63, v81, v112, v82, v107, v90, v55);
  v92 = v126;
  v131(v126, *MEMORY[0x277D35868], v77);
  sub_25C4C80A0();
  v93 = v55;
  v86(v92, v77);
  v94 = sub_25C4C8570();

  v95 = v128;
  v96 = xpc_dictionary_get_BOOL(v128, (v94 + 32));

  v97 = OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon_needsNetwork;
  swift_beginAccess();
  *(v91 + v97) = v96;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v139 = *(v93 + 136);
  *(v93 + 136) = 0x8000000000000000;
  v99 = v116;
  sub_25C477AD0(v91, v116, isUniquelyReferenced_nonNull_native, &qword_27FC0A4E8, &qword_25C4CA218);
  *(v93 + 136) = v139;
  swift_endAccess();
  v100 = v122;
  sub_25C4536F0();
  if (!v100)
  {
    v101 = v124;
    v102 = v129;
    v103 = sub_25C46B534(v95);
    if (v103)
    {
      xpc_connection_send_message(*(v93 + 88), v103);
      sub_25C485248();

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v119(v101, v102);
    return (*(v133 + 8))(v116, v115);
  }

  v119(v124, v129);
  return (*(v133 + 8))(v99, v115);
}

uint64_t sub_25C47481C(void *a1)
{
  v2 = sub_25C4C80B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25C4C7B20();
  v44 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v39 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  (*(v3 + 104))(v5, *MEMORY[0x277D358C8], v2);
  v14 = sub_25C4C80A0();
  v16 = v15;
  (*(v3 + 8))(v5, v2);
  swift_getObjectType();
  v42 = a1;
  if (sub_25C4C86D0())
  {
    v17 = v43;
    sub_25C4C7B00();

    v18 = v44;
    (*(v44 + 32))(v13, v11, v6);
    swift_beginAccess();
    v19 = v6;
    v20 = v18;
    if (*(*(v17 + 136) + 16) && (sub_25C458F84(v13), (v21 & 1) != 0))
    {
      swift_endAccess();
      v22 = qword_27FC0B310;

      if (v22 != -1)
      {
        swift_once();
      }

      v23 = sub_25C4C7BD0();
      __swift_project_value_buffer(v23, qword_27FC0B318);

      v24 = sub_25C4C7BB0();
      v25 = sub_25C4C8720();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v40 = v13;
        v27 = v26;
        v28 = swift_slowAlloc();
        v48 = v28;
        *v27 = 136315138;
        swift_beginAccess();
        v29 = *(v17 + 24);
        v46 = *(v17 + 16);
        v47 = v29;

        MEMORY[0x25F887A50](58, 0xE100000000000000);
        v45 = *(v17 + 80);
        v30 = sub_25C4C89A0();
        v31 = v17;
        MEMORY[0x25F887A50](v30);

        v32 = sub_25C458990(v46, v47, &v48);

        *(v27 + 4) = v32;
        v17 = v31;
        _os_log_impl(&dword_25C452000, v24, v25, "ServerStop: client=%s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v28);
        MEMORY[0x25F888630](v28, -1, -1);
        v13 = v40;
        v20 = v44;
        MEMORY[0x25F888630](v27, -1, -1);
      }

      v33 = v41;
      (*(v20 + 16))(v41, v13, v19);
      swift_beginAccess();
      sub_25C475138(0, v33, &qword_27FC0A4E8, &qword_25C4CA218);
      swift_endAccess();
      sub_25C4548F4();
      v34 = sub_25C46B534(v42);
      if (v34)
      {
        xpc_connection_send_message(*(v17 + 88), v34);
        sub_25C485248();

        swift_unknownObjectRelease();
        return (*(v20 + 8))(v13, v19);
      }

      else
      {
        (*(v20 + 8))(v13, v19);
      }
    }

    else
    {
      swift_endAccess();
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_25C4C88F0();

      v46 = 0xD00000000000001DLL;
      v47 = 0x800000025C4D0960;
      sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v36 = sub_25C4C89A0();
      MEMORY[0x25F887A50](v36);

      v37 = objc_allocWithZone(sub_25C4C7B80());
      sub_25C4C7B90();
      swift_willThrow();
      return (*(v18 + 8))(v13, v19);
    }
  }

  else
  {
    v46 = 2125646;
    v47 = 0xE300000000000000;
    MEMORY[0x25F887A50](v14, v16);
    v38 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
  }
}

uint64_t sub_25C474E64(uint64_t a1, uint64_t a2)
{
  v3 = sub_25C4C7B20();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    if (qword_27FC0B310 != -1)
    {
      swift_once();
    }

    v9 = sub_25C4C7BD0();
    __swift_project_value_buffer(v9, qword_27FC0B318);

    v10 = sub_25C4C7BB0();
    v11 = sub_25C4C8720();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v19 = a2;
      v13 = v12;
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315138;
      swift_beginAccess();
      v15 = *(v8 + 24);
      v22 = *(v8 + 16);
      v23 = v15;

      MEMORY[0x25F887A50](58, 0xE100000000000000);
      v20 = *(v8 + 80);
      v16 = sub_25C4C89A0();
      MEMORY[0x25F887A50](v16);

      v17 = sub_25C458990(v22, v23, &v21);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_25C452000, v10, v11, "ClientStopped: client=%s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x25F888630](v14, -1, -1);
      v18 = v13;
      a2 = v19;
      MEMORY[0x25F888630](v18, -1, -1);
    }

    (*(v4 + 16))(v6, a2, v3);
    swift_beginAccess();
    sub_25C475138(0, v6, &qword_27FC0A488, &qword_25C4CA1E8);
    swift_endAccess();
    sub_25C46B368();
  }

  return result;
}

uint64_t sub_25C475138(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v4;
    sub_25C477AD0(a1, a2, isUniquelyReferenced_nonNull_native, a3, a4);
    v11 = sub_25C4C7B20();
    result = (*(*(v11 - 8) + 8))(a2, v11);
    *v4 = v24;
  }

  else
  {
    v13 = sub_25C458F84(a2);
    if (v14)
    {
      v15 = v13;
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v4;
      v25 = *v7;
      if (!v16)
      {
        sub_25C478010(a3, a4);
        v17 = v25;
      }

      v18 = *(v17 + 48);
      v19 = sub_25C4C7B20();
      v20 = *(v19 - 8);
      v21 = *(v20 + 8);
      v21(v18 + *(v20 + 72) * v15, v19);

      sub_25C477488(v15, v17);
      result = (v21)(a2, v19);
      *v7 = v17;
    }

    else
    {
      v22 = sub_25C4C7B20();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t sub_25C47531C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_25C477CAC(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    v9 = sub_25C4C7B20();
    result = (*(*(v9 - 8) + 8))(a3, v9);
    *v3 = v22;
  }

  else
  {
    v11 = sub_25C458F84(a3);
    if (v12)
    {
      v13 = v11;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      v23 = *v4;
      if (!v14)
      {
        sub_25C478288();
        v15 = v23;
      }

      v16 = *(v15 + 48);
      v17 = sub_25C4C7B20();
      v18 = *(v17 - 8);
      v19 = *(v18 + 8);
      v19(v16 + *(v18 + 72) * v13, v17);
      swift_unknownObjectRelease();
      sub_25C4777AC(v13, v15);
      result = (v19)(a3, v17);
      *v4 = v15;
    }

    else
    {
      v20 = sub_25C4C7B20();
      v21 = *(*(v20 - 8) + 8);

      return v21(a3, v20);
    }
  }

  return result;
}

uint64_t sub_25C4754E8(uint64_t a1, uint64_t a2)
{
  v3 = sub_25C4C7B20();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    if (qword_27FC0B310 != -1)
    {
      swift_once();
    }

    v9 = sub_25C4C7BD0();
    __swift_project_value_buffer(v9, qword_27FC0B318);

    v10 = sub_25C4C7BB0();
    v11 = sub_25C4C8720();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v19 = a2;
      v13 = v12;
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315138;
      swift_beginAccess();
      v15 = *(v8 + 24);
      v22 = *(v8 + 16);
      v23 = v15;

      MEMORY[0x25F887A50](58, 0xE100000000000000);
      v20 = *(v8 + 80);
      v16 = sub_25C4C89A0();
      MEMORY[0x25F887A50](v16);

      v17 = sub_25C458990(v22, v23, &v21);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_25C452000, v10, v11, "DiscoveryStopped: client=%s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x25F888630](v14, -1, -1);
      v18 = v13;
      a2 = v19;
      MEMORY[0x25F888630](v18, -1, -1);
    }

    (*(v4 + 16))(v6, a2, v3);
    swift_beginAccess();
    sub_25C475138(0, v6, &qword_27FC0A4A8, &qword_25C4CA1F8);
    swift_endAccess();
    sub_25C46B368();
  }

  return result;
}

void sub_25C4757BC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_25C4C7B20();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (a1)
    {
      (*(v8 + 16))(v10, a3, v7);
      swift_beginAccess();
      v13 = a1;
      sub_25C475138(0, v10, &qword_27FC0A4B0, &qword_25C4CACD0);
      swift_endAccess();
      sub_25C46C7C4(a4, a1);
    }

    else
    {
      v14 = sub_25C46B534(a4);
      if (v14)
      {
        xpc_connection_send_message(*(v12 + 88), v14);
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_25C47595C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_25C4C7B20();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    (*(v8 + 16))(v10, a3, v7);
    swift_beginAccess();
    sub_25C475138(0, v10, &qword_27FC0A4B0, &qword_25C4CACD0);
    swift_endAccess();
    if (a1)
    {
      v13 = a1;
      sub_25C46C7C4(a4, a1);
    }

    else
    {
      v14 = sub_25C46B534(a4);
      if (v14)
      {
        xpc_connection_send_message(*(v12 + 88), v14);
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_25C475AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_25C4C84C0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v4 + 40);
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v13 = v12;
  LOBYTE(v12) = sub_25C4C84E0();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    swift_beginAccess();
    if (*(*(v4 + 128) + 16) && (sub_25C458F84(a1), (v15 & 1) != 0))
    {
      swift_endAccess();
      v20 = 0;
      v21 = 0xE000000000000000;
      sub_25C4C88F0();

      v20 = 0xD00000000000002ALL;
      v21 = 0x800000025C4D0540;
      sub_25C4C7B20();
      sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v16 = sub_25C4C89A0();
      MEMORY[0x25F887A50](v16);

      v17 = objc_allocWithZone(sub_25C4C7B80());
      sub_25C4C7B90();
      return swift_willThrow();
    }

    else
    {
      swift_endAccess();
      swift_beginAccess();
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *(v4 + 128);
      *(v4 + 128) = 0x8000000000000000;
      sub_25C477CAC(a2, a3, a1, isUniquelyReferenced_nonNull_native);
      *(v4 + 128) = v22;
      return swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25C475DA4(uint64_t a1)
{
  v3 = sub_25C4C7B20();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25C4C84C0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v1 + 40);
  *v10 = v11;
  (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
  v12 = v11;
  LOBYTE(v11) = sub_25C4C84E0();
  result = (*(v8 + 8))(v10, v7);
  if (v11)
  {
    (*(v4 + 16))(v6, a1, v3);
    swift_beginAccess();
    sub_25C47531C(0, 0, v6);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_25C475F88(uint64_t a1, uint64_t a2)
{
  v5 = sub_25C4C7E50();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v49[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_25C4C7B20();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v49[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v49[-v14];
  swift_beginAccess();
  v16 = *(v2 + 128);
  if (*(v16 + 16) && (v17 = sub_25C458F84(a2), (v18 & 1) != 0))
  {
    v19 = (*(v16 + 56) + 16 * v17);
    v20 = *v19;
    v53 = v19[1];
    v54 = a1;
    swift_endAccess();
    v21 = qword_27FC0B310;
    swift_unknownObjectRetain();
    if (v21 != -1)
    {
      swift_once();
    }

    v22 = sub_25C4C7BD0();
    __swift_project_value_buffer(v22, qword_27FC0B318);
    (*(v10 + 16))(v15, a2, v9);
    (*(v6 + 16))(v8, v54, v5);
    v23 = sub_25C4C7BB0();
    v24 = sub_25C4C8720();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v52 = v20;
      v26 = v25;
      v51 = swift_slowAlloc();
      v55[0] = v51;
      *v26 = 136315394;
      sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v27 = sub_25C4C89A0();
      v50 = v24;
      v29 = v28;
      (*(v10 + 8))(v15, v9);
      v30 = sub_25C458990(v27, v29, v55);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      sub_25C478A8C(&unk_27FC0AA60, 255, MEMORY[0x277D35798], MEMORY[0x277D357A0]);
      v31 = sub_25C4C89A0();
      v33 = v32;
      (*(v6 + 8))(v8, v5);
      v34 = sub_25C458990(v31, v33, v55);

      *(v26 + 14) = v34;
      _os_log_impl(&dword_25C452000, v23, v50, "Server operation event: uuid=%s, event:%s", v26, 0x16u);
      v35 = v51;
      swift_arrayDestroy();
      MEMORY[0x25F888630](v35, -1, -1);
      MEMORY[0x25F888630](v26, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
      (*(v10 + 8))(v15, v9);
    }

    swift_getObjectType();
    v45 = sub_25C4C7F10();
    if (v45)
    {
      v47 = v45;
      v48 = v46;
      v45(v54);
      sub_25C45A2C8(v47, v48);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    swift_endAccess();
    if (qword_27FC0B310 != -1)
    {
      swift_once();
    }

    v36 = sub_25C4C7BD0();
    __swift_project_value_buffer(v36, qword_27FC0B318);
    (*(v10 + 16))(v13, a2, v9);
    v37 = sub_25C4C7BB0();
    v38 = sub_25C4C8720();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v55[0] = v40;
      *v39 = 136315138;
      sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v41 = sub_25C4C89A0();
      v43 = v42;
      (*(v10 + 8))(v13, v9);
      v44 = sub_25C458990(v41, v43, v55);

      *(v39 + 4) = v44;
      _os_log_impl(&dword_25C452000, v37, v38, "Server operation handler not found: uuid=%s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x25F888630](v40, -1, -1);
      MEMORY[0x25F888630](v39, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v13, v9);
    }
  }
}

uint64_t sub_25C4765C8(void *a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  v8 = sub_25C4C80B0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a3)
    {
      sub_25C46C7C4(a5, a1);
    }

    else
    {
      v13 = sub_25C46B534(a5);
      if (v13)
      {
        v14 = v13;
        (*(v9 + 104))(v11, *MEMORY[0x277D35878], v8);
        sub_25C4C80A0();
        (*(v9 + 8))(v11, v8);
        v15 = sub_25C4C7AC0();
        v16 = sub_25C4C8570();

        xpc_dictionary_set_value(v14, (v16 + 32), v15);
        swift_unknownObjectRelease();

        v17 = swift_unknownObjectRetain();
        xpc_connection_send_message(v17, v14);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

void sub_25C4767A8(uint64_t a1)
{
  v42 = a1;
  v43 = sub_25C4C7B20();
  v2 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v38 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A3D8, &qword_25C4CA060);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  swift_beginAccess();
  v10 = *(v1 + 136);
  v11 = *(v10 + 64);
  v33 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v32 = (v12 + 63) >> 6;
  v34 = v2 + 32;
  v35 = v2 + 16;
  v39 = v2;
  v40 = v10;
  v41 = (v2 + 8);

  v15 = 0;
  v36 = v9;
  v37 = v7;
  v16 = v38;
  if (v14)
  {
    while (1)
    {
      v17 = v15;
LABEL_12:
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v21 = v20 | (v17 << 6);
      v23 = v39;
      v22 = v40;
      v24 = v43;
      (*(v39 + 16))(v16, *(v40 + 48) + *(v39 + 72) * v21, v43);
      v25 = *(*(v22 + 56) + 8 * v21);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A3D0, &qword_25C4CA058);
      v27 = *(v26 + 48);
      v28 = *(v23 + 32);
      v7 = v37;
      v28(v37, v16, v24);
      *&v7[v27] = v25;
      (*(*(v26 - 8) + 56))(v7, 0, 1, v26);

      v19 = v17;
      v9 = v36;
LABEL_13:
      sub_25C465DA4(v7, v9, &qword_27FC0A3D8, &qword_25C4CA060);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A3D0, &qword_25C4CA058);
      if ((*(*(v29 - 8) + 48))(v9, 1, v29) == 1)
      {
        break;
      }

      sub_25C45558C(v42);

      (*v41)(v9, v43);
      v15 = v19;
      if (!v14)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v32 <= v15 + 1)
    {
      v18 = v15 + 1;
    }

    else
    {
      v18 = v32;
    }

    v19 = v18 - 1;
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= v32)
      {
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A3D0, &qword_25C4CA058);
        (*(*(v30 - 8) + 56))(v7, 1, 1, v30);
        v14 = 0;
        goto LABEL_13;
      }

      v14 = *(v33 + 8 * v17);
      ++v15;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t NXXPCConnection.hashValue.getter()
{
  sub_25C4C8A60();
  MEMORY[0x25F887F30](v0);
  return sub_25C4C8A90();
}

uint64_t sub_25C476C04()
{
  v1 = *v0;
  sub_25C4C8A60();
  MEMORY[0x25F887F30](v1);
  return sub_25C4C8A90();
}

uint64_t sub_25C476C78(uint64_t a1)
{
  v2 = *v1;
  sub_25C4C8A60();
  MEMORY[0x25F887F30](v2);
  return sub_25C4C8A90();
}

uint64_t sub_25C476CCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = sub_25C4C7B20();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v43 = v8;
  result = sub_25C4C8970();
  v15 = result;
  if (*(v13 + 16))
  {
    v47 = v12;
    v39 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = (v10 + 16);
    v41 = v13;
    v42 = v10;
    v44 = (v10 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v46 = *(v42 + 72);
      v29 = v28 + v46 * v27;
      if (v43)
      {
        (*v44)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v40)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      sub_25C478A8C(&unk_27FC0A960, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_25C4C8510();
      v30 = -1 << *(v15 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v22 + 8 * v32);
          if (v36 != -1)
          {
            v23 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v15 + 48) + v46 * v23, v47, v9);
      *(*(v15 + 56) + 8 * v23) = v45;
      ++*(v15 + 16);
      v13 = v41;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v7 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v13 + 32);
    v7 = v39;
    if (v37 >= 64)
    {
      bzero(v17, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v37;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

uint64_t sub_25C4770AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_25C4C7B20();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A460, &qword_25C4CA1D8);
  v38 = v4;
  result = sub_25C4C8970();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v34 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v38)
      {
        (*v39)(v42, v25, v43);
        v40 = *(*(v9 + 56) + 16 * v23);
      }

      else
      {
        (*v35)(v42, v25, v43);
        v40 = *(*(v9 + 56) + 16 * v23);
        swift_unknownObjectRetain();
      }

      sub_25C478A8C(&unk_27FC0A960, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_25C4C8510();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v39)(*(v11 + 48) + v41 * v19, v42, v43);
      *(*(v11 + 56) + 16 * v19) = v40;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

unint64_t sub_25C477488(int64_t a1, uint64_t a2)
{
  v40 = sub_25C4C7B20();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_25C4C8810();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_25C478A8C(&unk_27FC0A960, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_25C4C8510();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_25C4777AC(int64_t a1, uint64_t a2)
{
  v40 = sub_25C4C7B20();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_25C4C8810();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_25C478A8C(&unk_27FC0A960, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_25C4C8510();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 16 * a1);
          v30 = (v28 + 16 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_25C477AD0(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v26 = a4;
  v27 = a5;
  v6 = v5;
  v10 = sub_25C4C7B20();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = sub_25C458F84(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_25C478010(v26, v27);
      goto LABEL_7;
    }

    sub_25C476CCC(v19, a3 & 1, v26, v27);
    v24 = sub_25C458F84(a2);
    if ((v20 & 1) == (v25 & 1))
    {
      v16 = v24;
      v22 = *v6;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v13, a2, v10);
      return sub_25C4598E4(v16, v13, a1, v22);
    }

LABEL_15:
    result = sub_25C4C8A20();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v6;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v22[7] + 8 * v16) = a1;
}

uint64_t sub_25C477CAC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v28 = a1;
  v9 = sub_25C4C7B20();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_25C458F84(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_25C478288();
      goto LABEL_9;
    }

    sub_25C4770AC(v18, a4 & 1);
    v21 = sub_25C458F84(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_25C4C8A20();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v28;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    *v25 = v28;
    v25[1] = a2;

    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return sub_25C477F50(v15, v12, v23, a2, v24);
  }
}

uint64_t sub_25C477F18()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25C477F50(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_25C4C7B20();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

void *sub_25C478010(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v35 = sub_25C4C7B20();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v7 = *v2;
  v8 = sub_25C4C8960();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v30 = v5;
    v31 = (v7 + 64);
    if (v9 != v7 || result >= v7 + 64 + 8 * v11)
    {
      result = memmove(result, v31, 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v36 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = v37;
        v24 = *(v37 + 72) * v22;
        v26 = v34;
        v25 = v35;
        (*(v37 + 16))(v34, *(v7 + 48) + v24, v35);
        v27 = *(*(v7 + 56) + 8 * v22);
        v28 = v36;
        (*(v23 + 32))(*(v36 + 48) + v24, v26, v25);
        *(*(v28 + 56) + 8 * v22) = v27;

        v17 = v38;
      }

      while (v38);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v30;
        v9 = v36;
        goto LABEL_21;
      }

      v21 = *(v31 + v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v38 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }

  return result;
}

void *sub_25C478288()
{
  v1 = v0;
  v30 = sub_25C4C7B20();
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A460, &qword_25C4CA1D8);
  v3 = *v0;
  v4 = sub_25C4C8960();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v31 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v3 + 64;
    for (i = v32 + 32; v12; result = swift_unknownObjectRetain())
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = v32;
      v19 = *(v32 + 72) * v17;
      v20 = v29;
      v21 = v30;
      (*(v32 + 16))(v29, *(v3 + 48) + v19, v30);
      v17 *= 16;
      v22 = v31;
      v23 = *(v31 + 48);
      v24 = *(v18 + 32);
      v33 = *(*(v3 + 56) + v17);
      v24(v23 + v19, v20, v21);
      *(*(v22 + 56) + v17) = v33;
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

        v1 = v25;
        v5 = v31;
        goto LABEL_18;
      }

      v16 = *(v26 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void CUXPCEncodeNSErrorStd(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  CUXPCEncodeNSError();
}

uint64_t sub_25C478584(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A478, &qword_25C4CA1E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25C4785F4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroy_10Tm()
{
  v1 = sub_25C4C7B20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25C478748(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(sub_25C4C7B20() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

void sub_25C4787DC(void *a1)
{
  v3 = *(v1 + 24);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a1)
    {
      v4 = a1;
      sub_25C46C7C4(v3, a1);
    }

    else
    {
      v5 = sub_25C46B534(v3);
      if (v5)
      {
        v6 = v5;
        v7 = swift_unknownObjectRetain();
        xpc_connection_send_message(v7, v6);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

uint64_t objectdestroy_22Tm()
{
  v1 = sub_25C4C7B20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_25C478998(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v4 = *(sub_25C4C7B20() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v6, v2 + v5, v7);
}

uint64_t objectdestroy_14Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25C478A8C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_25C478AD4()
{
  result = qword_27FC0A4E0;
  if (!qword_27FC0A4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC0A4D8, &qword_25C4CA210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC0A4E0);
  }

  return result;
}

uint64_t sub_25C478B50()
{
  v0 = sub_25C4C7BD0();
  __swift_allocate_value_buffer(v0, qword_27FC0B538);
  __swift_project_value_buffer(v0, qword_27FC0B538);
  sub_25C4C7C80();
  return sub_25C4C7BC0();
}

void *sub_25C478BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();
  v17[5] = 0;
  v17[6] = 0;
  *(v17 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__invalidateCalled) = 0;
  v18 = (v17 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon_invalidationHandler);
  *v18 = 0;
  v18[1] = 0;
  *(v17 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__session) = 0;
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v19 = *(a7 + 16);
  v17[7] = a7;
  v17[8] = v19;
  v20 = OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__endpoint;
  v21 = sub_25C4C7C50();
  (*(*(v21 - 8) + 32))(v17 + v20, a1, v21);
  v22 = (v17 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__idsServiceID);
  *v22 = a8;
  v22[1] = a9;
  v23 = (v17 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon_label);
  *v23 = a5;
  v23[1] = a6;
  *(v17 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__xpcConnection) = a10;
  v24 = v19;
  return v17;
}

uint64_t sub_25C478CFC()
{
  v1 = v0;
  if (qword_27FC0B530 != -1)
  {
    swift_once();
  }

  v2 = sub_25C4C7BD0();
  __swift_project_value_buffer(v2, qword_27FC0B538);
  v3 = sub_25C4C7BB0();
  v4 = sub_25C4C8700();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_25C452000, v3, v4, "deinit", v5, 2u);
    MEMORY[0x25F888630](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__session;
  v7 = *(v1 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__session);
  if (v7)
  {
    v8 = v7;
    sub_25C497730(v1, &off_286E22D60, 0);
  }

  sub_25C45A2C8(*(v1 + 40), *(v1 + 48));

  v9 = OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__endpoint;
  v10 = sub_25C4C7C50();
  (*(*(v10 - 8) + 8))(v1 + v9, v10);

  sub_25C45A2C8(*(v1 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon_invalidationHandler), *(v1 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon_invalidationHandler + 8));

  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_25C478EC0()
{
  sub_25C478CFC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_25C478F18()
{
  v2 = v0;
  v3 = sub_25C4C7C50();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25C4C84C0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + 64);
  *v10 = v11;
  (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
  v12 = v11;
  LOBYTE(v11) = sub_25C4C84E0();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    v40 = v6;
    if (qword_27FC0B530 == -1)
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
  v13 = sub_25C4C7BD0();
  __swift_project_value_buffer(v13, qword_27FC0B538);

  v14 = sub_25C4C7BB0();
  v15 = sub_25C4C8720();

  v16 = qword_27FC0AF58 + 168;
  if (os_log_type_enabled(v14, v15))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v37 = v1;
    v38 = v18;
    v19 = v18;
    *v17 = 136315394;
    sub_25C47AAA4(&qword_27FC0A480, MEMORY[0x277D35630], MEMORY[0x277D35648]);
    v20 = sub_25C4C89A0();
    v22 = sub_25C458990(v20, v21, &v38);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_25C458990(*(v2 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon_label), *(v2 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon_label + 8), &v38);
    _os_log_impl(&dword_25C452000, v14, v15, "Activate: endpoint=%s, client=%s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F888630](v19, -1, -1);
    v23 = v17;
    v16 = &qword_27FC0AF58[21];
    MEMORY[0x25F888630](v23, -1, -1);
  }

  v24 = v40;
  (*(v4 + 16))(v40, v2 + v16[172], v3);
  v25 = (*(v4 + 88))(v24, v3);
  if (v25 == *MEMORY[0x277D35620])
  {
    goto LABEL_6;
  }

  if (v25 == *MEMORY[0x277D355F0] || v25 == *MEMORY[0x277D35628])
  {
    goto LABEL_10;
  }

  if (v25 != *MEMORY[0x277D35608] && v25 != *MEMORY[0x277D355F8] && v25 != *MEMORY[0x277D35610])
  {
    if (v25 == *MEMORY[0x277D35600])
    {
      (*(v4 + 96))(v24, v3);
      v36 = sub_25C4C8170();
      (*(*(v36 - 8) + 8))(v24, v36);
      goto LABEL_11;
    }

    if (v25 == *MEMORY[0x277D35618])
    {
      return;
    }

LABEL_10:
    (*(v4 + 8))(v24, v3);
LABEL_11:
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_25C4C88F0();

    v38 = 0xD000000000000016;
    v39 = 0x800000025C4D09B0;
    v34 = sub_25C4C7C10();
    MEMORY[0x25F887A50](v34);

    v35 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    return;
  }

LABEL_6:
  (*(v4 + 8))(v24, v3);
  v26 = OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__session;
  if (!*(v2 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__session))
  {
    v27 = sub_25C48988C(v2 + v16[172], *(v2 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__idsServiceID), *(v2 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__idsServiceID + 8));
    v28 = swift_allocObject();
    swift_weakInit();
    v29 = &v27[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_invalidationHandler];
    swift_beginAccess();
    v30 = *v29;
    v31 = v29[1];
    *v29 = sub_25C47AC70;
    v29[1] = v28;

    sub_25C45A2C8(v30, v31);

    v32 = *(v2 + v26);
    *(v2 + v26) = v27;
    v33 = v27;

    sub_25C494DD4(v2, &off_286E22D60);
  }
}

uint64_t sub_25C479530()
{
  v1 = sub_25C4C84C0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v24[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0[8];
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
  v6 = v5;
  LOBYTE(v5) = sub_25C4C84E0();
  result = (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_5;
  }

  if (*(v0 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__invalidateCalled) != 1 || *(v0 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__session))
  {
    return result;
  }

  if (qword_27FC0B530 != -1)
  {
    goto LABEL_13;
  }

LABEL_5:
  v8 = sub_25C4C7BD0();
  __swift_project_value_buffer(v8, qword_27FC0B538);

  v9 = sub_25C4C7BB0();
  v10 = sub_25C4C8720();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25[0] = v12;
    *v11 = 136315394;
    sub_25C4C7C50();
    sub_25C47AAA4(&qword_27FC0A480, MEMORY[0x277D35630], MEMORY[0x277D35648]);
    v13 = sub_25C4C89A0();
    v15 = sub_25C458990(v13, v14, v25);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_25C458990(*(v0 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon_label), *(v0 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon_label + 8), v25);
    _os_log_impl(&dword_25C452000, v9, v10, "Invalidated: endpoint=%s, client=%s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F888630](v12, -1, -1);
    MEMORY[0x25F888630](v11, -1, -1);
  }

  swift_beginAccess();
  v16 = v0[5];
  v17 = v0[6];
  v0[5] = 0;
  v0[6] = 0;
  sub_25C45A2C8(v16, v17);
  v18 = (v0 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon_invalidationHandler);
  swift_beginAccess();
  v19 = *v18;
  if (*v18)
  {
    v20 = v18[1];

    v19(v21);
    sub_25C45A2C8(v19, v20);
    v22 = *v18;
  }

  else
  {
    v22 = 0;
  }

  v23 = v18[1];
  *v18 = 0;
  v18[1] = 0;
  return sub_25C45A2C8(v22, v23);
}

uint64_t sub_25C479898()
{
  v1 = v0;
  v2 = sub_25C4C84C0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + 64);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v7 = v6;
  LOBYTE(v6) = sub_25C4C84E0();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_27FC0B530 == -1)
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
  v8 = sub_25C4C7BD0();
  __swift_project_value_buffer(v8, qword_27FC0B538);

  v9 = sub_25C4C7BB0();
  v10 = sub_25C4C8720();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315394;
    sub_25C4C7C50();
    sub_25C47AAA4(&qword_27FC0A480, MEMORY[0x277D35630], MEMORY[0x277D35648]);
    v13 = sub_25C4C89A0();
    v15 = sub_25C458990(v13, v14, &v20);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_25C458990(*(v1 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon_label), *(v1 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon_label + 8), &v20);
    _os_log_impl(&dword_25C452000, v9, v10, "Invalidate: endpoint=%s, client=%s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F888630](v12, -1, -1);
    MEMORY[0x25F888630](v11, -1, -1);
  }

  *(v1 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__invalidateCalled) = 1;
  v16 = *(v1 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__session);
  if (v16)
  {
    v17 = v16;
    sub_25C497730(v1, &off_286E22D60, 1);
  }

  return sub_25C479530();
}

void sub_25C479B98(uint64_t a1)
{
  v61 = a1;
  v2 = sub_25C4C7D30();
  v55 = *(v2 - 8);
  v56 = v2;
  MEMORY[0x28223BE20](v2);
  v54 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_25C4C7D60();
  v4 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25C4C80B0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v62 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v53 - v11;
  v13 = sub_25C4C84C0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = v1;
  v17 = *(v1 + 64);
  *v16 = v17;
  (*(v14 + 104))(v16, *MEMORY[0x277D85200], v13);
  v18 = v17;
  v19 = sub_25C4C84E0();
  (*(v14 + 8))(v16, v13);
  if (v19)
  {
    empty = xpc_dictionary_create_empty();
    v20 = *MEMORY[0x277D35858];
    v21 = *(v8 + 104);
    v58 = v8 + 104;
    v59 = v21;
    v22 = v7;
    v21(v12, v20, v7);
    sub_25C4C80A0();
    v57 = *(v8 + 8);
    v57(v12, v7);
    v23 = v6;
    v24 = v6;
    v25 = v60;
    (*(v4 + 104))(v24, *MEMORY[0x277D356C0], v60);
    sub_25C4C7D50();
    (*(v4 + 8))(v23, v25);
    v26 = sub_25C4C8570();

    v27 = sub_25C4C8570();

    v28 = empty;
    xpc_dictionary_set_string(empty, (v26 + 32), (v27 + 32));

    v29 = v59;
    v59(v12, *MEMORY[0x277D358C8], v7);
    sub_25C4C80A0();
    v30 = v57;
    v57(v12, v22);
    v31 = *(v63 + 32);
    v32 = sub_25C4C8570();

    xpc_dictionary_set_uint64(v28, (v32 + 32), v31);

    v33 = v62;
    v29(v62, *MEMORY[0x277D358C0], v22);
    sub_25C4C80A0();
    v30(v33, v22);
    v50 = sub_25C4C7D20();
    v51 = sub_25C4C8570();

    v52 = empty;
    xpc_dictionary_set_value(empty, (v51 + 32), v50);
    swift_unknownObjectRelease();

    xpc_connection_send_message(*(v63 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__xpcConnection), v52);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
    swift_once();
    v34 = sub_25C4C7BD0();
    __swift_project_value_buffer(v34, qword_27FC0B538);
    v36 = v54;
    v35 = v55;
    v37 = v56;
    (*(v55 + 16))(v54, v19, v56);
    v38 = v4;
    v39 = sub_25C4C7BB0();
    v40 = sub_25C4C8710();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v65[0] = v42;
      *v41 = 136315394;
      sub_25C47AAA4(&qword_27FC0A528, MEMORY[0x277D356A0], MEMORY[0x277D356A8]);
      v43 = sub_25C4C89A0();
      v45 = v44;
      (*(v35 + 8))(v36, v37);
      v46 = sub_25C458990(v43, v45, v65);

      *(v41 + 4) = v46;
      *(v41 + 12) = 2080;
      swift_getErrorValue();
      v47 = sub_25C4C8A30();
      v49 = sub_25C458990(v47, v48, v65);

      *(v41 + 14) = v49;
      _os_log_impl(&dword_25C452000, v39, v40, "### Handle client event failed: event=%s, error=%s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F888630](v42, -1, -1);
      MEMORY[0x25F888630](v41, -1, -1);
    }

    else
    {

      (*(v35 + 8))(v36, v37);
    }
  }
}

void sub_25C47A2D0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v51 = a6;
  v47 = a4;
  v48 = a5;
  v45 = a2;
  v46 = a3;
  v44 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A1B0, &qword_25C4C9B00);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v40 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v39 = v38 - v11;
  v12 = sub_25C4C7E00();
  v42 = *(v12 - 8);
  v43 = v12;
  MEMORY[0x28223BE20](v12);
  v41 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25C4C7C50();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25C4C84C0();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = (v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v7 + 64);
  *v21 = v22;
  (*(v19 + 104))(v21, *MEMORY[0x277D85200], v18);
  v23 = v22;
  LOBYTE(v22) = sub_25C4C84E0();
  (*(v19 + 8))(v21, v18);
  if (v22)
  {
    (*(v15 + 16))(v17, v7 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__endpoint, v14);
    v24 = (*(v15 + 88))(v17, v14);
    if (v24 == *MEMORY[0x277D35620])
    {
LABEL_3:
      (*(v15 + 8))(v17, v14);
      v25 = *(v7 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__session);
      if (v25)
      {
        v26 = v25;
        sub_25C49F4C8(v44, v45, v46, v47, v48, v51);

        return;
      }

      v30 = objc_allocWithZone(sub_25C4C7B80());
      goto LABEL_10;
    }

    v27 = v24;
    if (v24 == *MEMORY[0x277D355F0] || v24 == *MEMORY[0x277D35628])
    {
      goto LABEL_7;
    }

    if (v24 == *MEMORY[0x277D35608] || v24 == *MEMORY[0x277D355F8] || v24 == *MEMORY[0x277D35610])
    {
      goto LABEL_3;
    }

    if (v24 == *MEMORY[0x277D35600])
    {
      (*(v15 + 96))(v17, v14);
      v31 = sub_25C4C8170();
      (*(*(v31 - 8) + 8))(v17, v31);
      goto LABEL_8;
    }

    if (v24 != *MEMORY[0x277D35618])
    {
LABEL_7:
      (*(v15 + 8))(v17, v14);
LABEL_8:
      v49 = 0;
      v50 = 0xE000000000000000;
      sub_25C4C88F0();

      v49 = 0xD000000000000016;
      v50 = 0x800000025C4D09B0;
      v28 = sub_25C4C7C10();
      MEMORY[0x25F887A50](v28);

      v29 = objc_allocWithZone(sub_25C4C7B80());
LABEL_10:
      sub_25C4C7B90();
      swift_willThrow();
      return;
    }

    v32 = *(v7 + 56);
    v38[0] = *(v15 + 104);
    v38[1] = v32;
    v33 = v39;
    (v38[0])(v39, v24, v14);
    v34 = *(v15 + 56);
    v34(v33, 0, 1, v14);
    v35 = v40;
    (v38[0])(v40, v27, v14);
    v34(v35, 0, 1, v14);

    v36 = v41;
    sub_25C4C7DC0();
    v37 = sub_25C4880B8();
    sub_25C4892D0(v44, v45, v46, v47, v36, v37 & 1, v48, v51);
    (*(v42 + 8))(v36, v43);
  }

  else
  {
    __break(1u);
  }
}

void sub_25C47A8D0(uint64_t a1, uint64_t a2)
{
  v5 = sub_25C4C84C0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + 64);
  *v8 = v9;
  (*(v6 + 104))(v8, *MEMORY[0x277D85200], v5);
  v10 = v9;
  LOBYTE(v9) = sub_25C4C84E0();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v11 = *(v2 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__session);
    if (v11)
    {
      v12 = v11;
      sub_25C4B42D4(a1, a2);
    }

    else
    {
      v13 = objc_allocWithZone(sub_25C4C7B80());
      sub_25C4C7B90();
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25C47AA68()
{
  v1 = *(v0 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon_label);

  return v1;
}

uint64_t sub_25C47AAA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for NXClientDaemon(uint64_t a1)
{
  result = qword_27FC0B578;
  if (!qword_27FC0B578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25C47AB40(uint64_t a1)
{
  result = sub_25C4C7C50();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_25C47AC38()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25C47AC70()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__session);
    *(result + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__session) = 0;

    sub_25C479530();
  }

  return result;
}

uint64_t sub_25C47ACD8()
{
  v0 = sub_25C4C7BD0();
  __swift_allocate_value_buffer(v0, qword_27FC0B590);
  __swift_project_value_buffer(v0, qword_27FC0B590);
  sub_25C4C7C80();
  return sub_25C4C7BC0();
}

uint64_t sub_25C47AD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__discoveryResults) = MEMORY[0x277D84F98];
  *(v8 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__invalidateCalled) = 0;
  v9 = (v8 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon_invalidationHandler);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v8 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__nanSubscriber);
  *v10 = 0;
  v10[1] = 0;
  *(v8 + 24) = a2;
  v11 = OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__configuration;
  v12 = sub_25C4C7F70();
  (*(*(v12 - 8) + 32))(v8 + v11, a1, v12);
  *(v8 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__daemon) = a3;
  v13 = *(a3 + 16);
  *(v8 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__dispatchQueue) = v13;
  *(v8 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__xpcConnection) = a4;
  v14 = v13;
  return v8;
}

uint64_t sub_25C47AE50()
{
  v1 = v0;
  if (qword_27FC0B588 != -1)
  {
    swift_once();
  }

  v2 = sub_25C4C7BD0();
  __swift_project_value_buffer(v2, qword_27FC0B590);
  v3 = sub_25C4C7BB0();
  v4 = sub_25C4C8700();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_25C452000, v3, v4, "deinit", v5, 2u);
    MEMORY[0x25F888630](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__configuration;
  v7 = sub_25C4C7F70();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);

  sub_25C45C5F0(*(v1 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon_invalidationHandler), *(v1 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon_invalidationHandler + 8));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_25C47AFDC()
{
  sub_25C47AE50();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_25C47B034()
{
  v2 = v0;
  v3 = sub_25C4C7F70();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25C4C84C0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__dispatchQueue);
  *v10 = v11;
  (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
  v12 = v11;
  LOBYTE(v11) = sub_25C4C84E0();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    if (qword_27FC0B588 == -1)
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
  v13 = sub_25C4C7BD0();
  __swift_project_value_buffer(v13, qword_27FC0B590);

  v14 = sub_25C4C7BB0();
  v15 = sub_25C4C8720();

  v16 = &unk_27FC0C000;
  if (os_log_type_enabled(v14, v15))
  {
    v17 = swift_slowAlloc();
    v32 = v4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v29[1] = v1;
    v30 = v19;
    v20 = v19;
    *v18 = 136315138;
    sub_25C481670(&qword_27FC0A530, MEMORY[0x277D357E8], MEMORY[0x277D357F8]);
    v21 = sub_25C4C89A0();
    v23 = sub_25C458990(v21, v22, &v30);
    v16 = &unk_27FC0C000;

    *(v18 + 4) = v23;
    _os_log_impl(&dword_25C452000, v14, v15, "Activate: configuration=%s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x25F888630](v20, -1, -1);
    v24 = v18;
    v4 = v32;
    MEMORY[0x25F888630](v24, -1, -1);
  }

  (*(v4 + 16))(v6, v2 + v16[67], v3);
  v25 = (*(v4 + 88))(v6, v3);
  if (v25 == *MEMORY[0x277D357E0])
  {
    return sub_25C47B4B0();
  }

  if (v25 == *MEMORY[0x277D357D8])
  {
    return sub_25C47B7D4();
  }

  v30 = 0;
  v31 = 0xE000000000000000;
  sub_25C4C88F0();

  v30 = 0xD000000000000029;
  v31 = 0x800000025C4D0A80;
  sub_25C481670(&qword_27FC0A530, MEMORY[0x277D357E8], MEMORY[0x277D357F8]);
  v27 = sub_25C4C89A0();
  MEMORY[0x25F887A50](v27);

  v28 = objc_allocWithZone(sub_25C4C7B80());
  sub_25C4C7B90();
  swift_willThrow();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_25C47B4B0()
{
  v1 = sub_25C4C83A0();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  if (*(v0 + 16))
  {

    sub_25C4C8440();
  }

  *v7 = sub_25C4C7CB0();
  *(v7 + 1) = v8;
  *(v7 + 1) = xmmword_25C4CA310;
  (*(v2 + 104))(v7, *MEMORY[0x277CD90D8], v1);
  (*(v2 + 16))(v5, v7, v1);
  sub_25C4C8350();
  sub_25C4C8340();
  sub_25C4C8450();
  swift_allocObject();
  *(v0 + 16) = sub_25C4C83D0();
  swift_retain_n();

  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;

  sub_25C4C83C0();

  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  swift_weakInit();

  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v13;

  sub_25C4C83B0();

  sub_25C4C83F0();

  return (*(v2 + 8))(v7, v1);
}

uint64_t sub_25C47B7D4()
{
  v1 = sub_25C4C7B30();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__nanSubscriber);
  swift_beginAccess();
  if (*v5)
  {
    v6 = v5[1];
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 112);
    swift_unknownObjectRetain();
    v8(ObjectType, v6);
    swift_unknownObjectRelease();
  }

  (*(v2 + 16))(v4, *(v0 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__daemon) + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_environment, v1);
  v9 = CUEnvironmentValues.createNANSubscriber.getter();
  (*(v2 + 8))(v4, v1);
  v10 = (v9)(*(v0 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__dispatchQueue));
  v12 = v11;

  *v5 = v10;
  v5[1] = v12;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRelease();
  v13 = swift_getObjectType();
  v14 = sub_25C4C7CA0();
  (*(v12 + 88))(v14);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 24) = v12;
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = v16;
  v18 = *(v12 + 16);

  v18(sub_25C4816F0, v17, v13, v12);

  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  *(v20 + 24) = v12;
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 24) = v20;
  v22 = *(v12 + 40);

  v22(sub_25C481708, v21, v13, v12);

  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  *(v24 + 24) = v12;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  *(v25 + 24) = v24;
  v26 = *(v12 + 64);

  v26(sub_25C481810, v25, v13, v12);

  (*(v12 + 104))(v13, v12);
  return swift_unknownObjectRelease();
}

uint64_t sub_25C47BC24(uint64_t a1)
{
  v243 = sub_25C4C7D90();
  v242 = *(v243 - 8);
  MEMORY[0x28223BE20](v243);
  v241 = &v196[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A558, &unk_25C4CA3D8);
  MEMORY[0x28223BE20](v3 - 8);
  v210 = &v196[-v4];
  v240 = sub_25C4C7F60();
  v248 = *(v240 - 8);
  v5 = MEMORY[0x28223BE20](v240);
  v206 = &v196[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v5);
  v221 = &v196[-v8];
  MEMORY[0x28223BE20](v7);
  v232 = &v196[-v9];
  v238 = sub_25C4C7EA0();
  v10 = *(v238 - 8);
  v11 = MEMORY[0x28223BE20](v238);
  v205 = &v196[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v209 = &v196[-v14];
  v15 = MEMORY[0x28223BE20](v13);
  v208 = &v196[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v224 = &v196[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v234 = &v196[-v20];
  MEMORY[0x28223BE20](v19);
  v236 = &v196[-v21];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A1B0, &qword_25C4C9B00);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v214 = &v196[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = MEMORY[0x28223BE20](v23);
  v213 = &v196[-v26];
  v27 = MEMORY[0x28223BE20](v25);
  v247 = &v196[-v28];
  MEMORY[0x28223BE20](v27);
  v253 = &v196[-v29];
  v260 = sub_25C4C7C50();
  v30 = *(v260 - 8);
  v31 = MEMORY[0x28223BE20](v260);
  v207 = &v196[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = MEMORY[0x28223BE20](v31);
  v216 = &v196[-v34];
  v35 = MEMORY[0x28223BE20](v33);
  v220 = &v196[-v36];
  v37 = MEMORY[0x28223BE20](v35);
  v230 = &v196[-v38];
  MEMORY[0x28223BE20](v37);
  v233 = &v196[-v39];
  v40 = sub_25C4C8430();
  v41 = *(v40 - 1);
  v42 = MEMORY[0x28223BE20](v40);
  v222 = &v196[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = MEMORY[0x28223BE20](v42);
  v219 = &v196[-v45];
  v46 = MEMORY[0x28223BE20](v44);
  v246 = &v196[-v47];
  v48 = MEMORY[0x28223BE20](v46);
  v50 = &v196[-v49];
  MEMORY[0x28223BE20](v48);
  v252 = &v196[-v51];
  v52 = sub_25C4C8410();
  v53 = *(v52 - 8);
  v54 = MEMORY[0x28223BE20](v52);
  MEMORY[0x28223BE20](v54);
  v265 = &v196[-v56];
  v57 = a1 + 56;
  v58 = a1;
  v59 = 1 << *(a1 + 32);
  v60 = -1;
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  v61 = v60 & *(a1 + 56);
  v237 = OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__discoveryResults;
  v62 = (v59 + 63) >> 6;
  v263 = v53 + 32;
  v264 = v53 + 16;
  v262 = v53 + 88;
  v261 = *MEMORY[0x277CD9130];
  v251 = *MEMORY[0x277CD9140];
  v245 = *MEMORY[0x277CD9138];
  v244 = *MEMORY[0x277CD9148];
  v239 = (v53 + 8);
  v256 = (v41 + 32);
  v257 = (v53 + 96);
  v258 = (v41 + 16);
  v255 = (v30 + 48);
  v231 = (v30 + 32);
  v228 = (v30 + 16);
  v235 = (v10 + 16);
  v204 = *MEMORY[0x277D357C8];
  v227 = (v248 + 104);
  v226 = v248 + 32;
  v217 = v10 + 32;
  v215 = v10 + 40;
  v212 = *MEMORY[0x277D357D0];
  v225 = (v10 + 8);
  v229 = (v30 + 8);
  v63 = v55;
  v254 = (v41 + 8);
  v218 = *MEMORY[0x277D357C0];
  v223 = v10;
  v211 = (v10 + 56);
  v64 = v50;
  v266 = v58;

  v65 = 0;
  v250 = MEMORY[0x277D84F90];
  v259 = v63;
  while (v61)
  {
LABEL_11:
    v71 = __clz(__rbit64(v61));
    v61 &= v61 - 1;
    v72 = v265;
    (*(v53 + 16))(v265, *(v266 + 48) + *(v53 + 72) * (v71 | (v65 << 6)), v52);
    (*(v53 + 32))(v63, v72, v52);
    v73 = (*(v53 + 88))(v63, v52);
    if (v73 == v261)
    {
      (*v257)(v63, v52);
      v66 = v252;
      (*v256)(v252, v63, v40);
      (*v258)(v64, v66, v40);
      v67 = v253;
      sub_25C47F41C(v64, v253);
      v68 = (*v255)(v67, 1, v260);
      v69 = v66;
      if (v68 == 1)
      {
        goto LABEL_5;
      }

      v202 = v64;
      v203 = v40;
      v94 = v233;
      v95 = v260;
      (*v231)(v233, v253, v260);
      (*v228)(v230, v94, v95);
      sub_25C4C7C10();
      sub_25C4C7C40();
      v96 = v236;
      sub_25C4C7E90();
      v201 = sub_25C4C7E80();
      v200 = v97;
      v98 = v249;
      v99 = v237;
      swift_beginAccess();
      v100 = *v235;
      (*v235)(v234, v96, v238);
      LODWORD(v199) = swift_isUniquelyReferenced_nonNull_native();
      v267 = *(v98 + v99);
      v101 = v267;
      *(v98 + v99) = 0x8000000000000000;
      v102 = v200;
      v103 = v201;
      v105 = sub_25C462EC0(v201, v200);
      v106 = v101[2];
      v107 = (v104 & 1) == 0;
      v108 = v106 + v107;
      if (__OFADD__(v106, v107))
      {
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        result = sub_25C4C8A20();
        __break(1u);
        return result;
      }

      v198 = v100;
      if (v101[3] >= v108)
      {
        v40 = v203;
        if (v199)
        {
          if ((v104 & 1) == 0)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v199 = v105;
          v197 = v104;
          sub_25C4813F0();
          v105 = v199;
          if ((v197 & 1) == 0)
          {
            goto LABEL_54;
          }
        }
      }

      else
      {
        v109 = v104;
        sub_25C480C54(v108, v199);
        v110 = sub_25C462EC0(v103, v102);
        v112 = v111 & 1;
        v113 = v109;
        v114 = (v109 & 1) == v112;
        v40 = v203;
        if (!v114)
        {
          goto LABEL_77;
        }

        v105 = v110;
        if ((v113 & 1) == 0)
        {
LABEL_54:
          v119 = v267;
          v267[(v105 >> 6) + 8] |= 1 << v105;
          v162 = (v119[6] + 16 * v105);
          *v162 = v103;
          v162[1] = v102;
          (*(v223 + 32))(v119[7] + *(v223 + 72) * v105, v234, v238);
          v163 = v119[2];
          v164 = __OFADD__(v163, 1);
          v165 = v163 + 1;
          if (v164)
          {
            goto LABEL_74;
          }

          v119[2] = v165;
          v121 = v238;
          goto LABEL_56;
        }
      }

      v118 = v105;

      v119 = v267;
      v120 = v267[7] + *(v223 + 72) * v118;
      v121 = v238;
      (*(v223 + 40))(v120, v234, v238);
LABEL_56:
      *(v249 + v237) = v119;

      swift_endAccess();
      v166 = v232;
      v198(v232, v236, v121);
      (*v227)(v166, v218, v240);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v250 = sub_25C480568(0, v250[2] + 1, 1, v250);
      }

      v168 = v250[2];
      v167 = v250[3];
      v64 = v202;
      if (v168 >= v167 >> 1)
      {
        v250 = sub_25C480568((v167 > 1), v168 + 1, 1, v250);
      }

      (*v225)(v236);
      (*v229)(v233, v260);
      (*v254)(v252, v40);
      v169 = v250;
      v250[2] = v168 + 1;
      (*(v248 + 32))(v169 + ((*(v248 + 80) + 32) & ~*(v248 + 80)) + *(v248 + 72) * v168, v232, v240);
LABEL_61:
      v63 = v259;
    }

    else if (v73 == v251)
    {
      (*v257)(v63, v52);
      v74 = v64;
      v75 = v246;
      (*v256)(v246, v63, v40);
      (*v258)(v74, v75, v40);
      v67 = v247;
      sub_25C47F41C(v74, v247);
      v76 = (*v255)(v67, 1, v260);
      v69 = v75;
      v64 = v74;
      if (v76 != 1)
      {
        v203 = v40;
        v77 = v220;
        v78 = v260;
        (*v231)(v220, v247, v260);
        (*v228)(v230, v77, v78);
        sub_25C4C7C10();
        v202 = v79;
        sub_25C4C7C40();
        sub_25C4C7E90();
        v202 = sub_25C4C7E80();
        v81 = v80;
        v82 = v237;
        swift_beginAccess();
        v83 = v202;
        v202 = v81;
        v84 = sub_25C462EC0(v83, v81);
        if (v85)
        {
          v201 = v84;
          v86 = v249;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v88 = *(v86 + v82);
          v267 = v88;
          *(v86 + v82) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_25C4813F0();
            v88 = v267;
          }

          v89 = v201;

          v90 = *(v88 + 56) + *(v223 + 72) * v89;
          v91 = v210;
          v92 = v238;
          (*(v223 + 32))(v210, v90, v238);
          sub_25C480FD4(v201, v88);
          v93 = 0;
          *(v249 + v237) = v88;
        }

        else
        {
          v93 = 1;
          v91 = v210;
          v92 = v238;
        }

        (*v211)(v91, v93, 1, v92);

        sub_25C4666F8(v91, &unk_27FC0A558, &unk_25C4CA3D8);
        swift_endAccess();
        v122 = v221;
        (*v235)(v221, v224, v92);
        (*v227)(v122, v212, v240);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v250 = sub_25C480568(0, v250[2] + 1, 1, v250);
        }

        v124 = v250[2];
        v123 = v250[3];
        v125 = v238;
        v40 = v203;
        v64 = v74;
        if (v124 >= v123 >> 1)
        {
          v161 = sub_25C480568((v123 > 1), v124 + 1, 1, v250);
          v125 = v238;
          v250 = v161;
        }

        (*v225)(v224, v125);
        (*v229)(v220, v260);
        (*v254)(v246, v40);
        v126 = v250;
        v250[2] = v124 + 1;
        (*(v248 + 32))(v126 + ((*(v248 + 80) + 32) & ~*(v248 + 80)) + *(v248 + 72) * v124, v221, v240);
        goto LABEL_61;
      }

LABEL_5:
      (*v254)(v69, v40);
      sub_25C4666F8(v67, &qword_27FC0A1B0, &qword_25C4C9B00);
      v63 = v259;
    }

    else if (v73 == v245)
    {
      (*v257)(v63, v52);
      v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A568, &qword_25C4CA3E8);
      v202 = *(v201 + 48);
      v203 = *v256;
      v115 = v219;
      (v203)(v219, v63, v40);
      (v203)(v222, v259 + v202, v40);
      v203 = *v258;
      (v203)(v64, v115, v40);
      v116 = v213;
      sub_25C47F41C(v64, v213);
      v202 = *v255;
      if ((v202)(v116, 1, v260) == 1)
      {
        v203 = *v254;
        (v203)(v222, v40);
        (v203)(v219, v40);
        v117 = v116;
LABEL_40:
        sub_25C4666F8(v117, &qword_27FC0A1B0, &qword_25C4C9B00);
        goto LABEL_66;
      }

      v200 = *v231;
      (v200)(v216, v116, v260);
      (v203)(v64, v222, v40);
      v127 = v214;
      sub_25C47F41C(v64, v214);
      v128 = v127;
      v129 = v260;
      if ((v202)(v128, 1, v260) == 1)
      {
        (*v229)(v216, v129);
        v130 = *v254;
        (*v254)(v222, v40);
        (v130)(v219, v40);
        v117 = v214;
        goto LABEL_40;
      }

      v202 = v64;
      v203 = v40;
      (v200)(v207, v214, v129);
      v131 = *v228;
      (*v228)(v230, v216, v129);
      v200 = sub_25C4C7C10();
      v199 = v132;
      sub_25C4C7C40();
      v133 = v230;
      sub_25C4C7E90();
      v131(v133, v207, v260);
      sub_25C4C7C10();
      v200 = v134;
      sub_25C4C7C40();
      sub_25C4C7E90();
      v200 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A570, &qword_25C4CA3F0) + 48);
      v135 = *v235;
      v136 = v206;
      v137 = v238;
      (*v235)(v206, v208, v238);
      v138 = &v136[v200];
      v200 = v135;
      v135(v138, v209, v137);
      (*v227)(v136, v204, v240);
      v139 = v250;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v139 = sub_25C480568(0, v139[2] + 1, 1, v139);
      }

      v141 = v139[2];
      v140 = v139[3];
      v250 = v139;
      if (v141 >= v140 >> 1)
      {
        v250 = sub_25C480568((v140 > 1), v141 + 1, 1, v250);
      }

      v40 = v203;
      v142 = v250;
      v250[2] = v141 + 1;
      (*(v248 + 32))(v142 + ((*(v248 + 80) + 32) & ~*(v248 + 80)) + *(v248 + 72) * v141, v206, v240);
      v143 = v209;
      v203 = sub_25C4C7E80();
      v199 = v144;
      v145 = v249;
      v146 = v237;
      swift_beginAccess();
      (v200)(v205, v143, v238);
      LODWORD(v200) = swift_isUniquelyReferenced_nonNull_native();
      v267 = *(v145 + v146);
      v147 = v267;
      *(v145 + v146) = 0x8000000000000000;
      v148 = v199;
      v149 = v203;
      v151 = sub_25C462EC0(v203, v199);
      v152 = v147[2];
      v153 = (v150 & 1) == 0;
      v154 = v152 + v153;
      if (__OFADD__(v152, v153))
      {
        goto LABEL_75;
      }

      if (v147[3] >= v154)
      {
        if (v200)
        {
          if ((v150 & 1) == 0)
          {
            goto LABEL_63;
          }
        }

        else
        {
          v200 = v151;
          LODWORD(v198) = v150;
          sub_25C4813F0();
          v151 = v200;
          if ((v198 & 1) == 0)
          {
            goto LABEL_63;
          }
        }
      }

      else
      {
        LODWORD(v198) = v150;
        sub_25C480C54(v154, v200);
        v155 = sub_25C462EC0(v149, v148);
        if ((v198 & 1) != (v156 & 1))
        {
          goto LABEL_77;
        }

        v151 = v155;
        if ((v198 & 1) == 0)
        {
LABEL_63:
          v158 = v267;
          v267[(v151 >> 6) + 8] |= 1 << v151;
          v170 = (v158[6] + 16 * v151);
          *v170 = v149;
          v170[1] = v148;
          (*(v223 + 32))(v158[7] + *(v223 + 72) * v151, v205, v238);
          v171 = v158[2];
          v164 = __OFADD__(v171, 1);
          v172 = v171 + 1;
          if (v164)
          {
            goto LABEL_76;
          }

          v158[2] = v172;
          v160 = v238;
          goto LABEL_65;
        }
      }

      v157 = v151;

      v158 = v267;
      v159 = v267[7] + *(v223 + 72) * v157;
      v160 = v238;
      (*(v223 + 40))(v159, v205, v238);
LABEL_65:
      *(v249 + v237) = v158;

      swift_endAccess();
      v173 = *v225;
      (*v225)(v209, v160);
      (v173)(v208, v160);
      v174 = *v229;
      v175 = v260;
      (*v229)(v207, v260);
      v174(v216, v175);
      v176 = *v254;
      (*v254)(v222, v40);
      (v176)(v219, v40);
      v64 = v202;
LABEL_66:
      v177 = *(v201 + 64);
      v178 = sub_25C4C8400();
      v179 = v259 + v177;
      v63 = v259;
      (*(*(v178 - 8) + 8))(v179, v178);
    }

    else if (v73 != v244)
    {
      (*v239)(v63, v52);
    }
  }

  while (1)
  {
    v70 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
      __break(1u);
      goto LABEL_72;
    }

    if (v70 >= v62)
    {
      break;
    }

    v61 = *(v57 + 8 * v70);
    ++v65;
    if (v61)
    {
      v65 = v70;
      goto LABEL_11;
    }
  }

  if (qword_27FC0B588 == -1)
  {
    goto LABEL_68;
  }

LABEL_72:
  swift_once();
LABEL_68:
  v180 = sub_25C4C7BD0();
  __swift_project_value_buffer(v180, qword_27FC0B590);
  v181 = sub_25C4C7BB0();
  v182 = sub_25C4C86F0();
  v183 = os_log_type_enabled(v181, v182);
  v184 = v250;
  if (v183)
  {
    v185 = swift_slowAlloc();
    v186 = swift_slowAlloc();
    v268 = v186;
    *v185 = 136315138;

    v188 = MEMORY[0x25F887AA0](v187, v240);
    v190 = v189;

    v191 = sub_25C458990(v188, v190, &v268);

    *(v185 + 4) = v191;
    _os_log_impl(&dword_25C452000, v181, v182, "Results changed: changes=%s", v185, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v186);
    MEMORY[0x25F888630](v186, -1, -1);
    MEMORY[0x25F888630](v185, -1, -1);
  }

  v192 = v243;
  v193 = v242;
  v194 = v241;
  *v241 = v184;
  (*(v193 + 104))(v194, *MEMORY[0x277D35768], v192);

  sub_25C47FEA0(v194);
  (*(v193 + 8))(v194, v192);
}

void sub_25C47D9BC(uint64_t a1)
{
  v3 = sub_25C4C8390();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v62 = (&v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v60 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v60 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v60 - v13;
  v15 = sub_25C4C83E0();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18, a1, v15);
  v19 = (*(v16 + 88))(v18, v15);
  if (v19 == *MEMORY[0x277CD9108])
  {
    (*(v16 + 96))(v18, v15);
    (*(v4 + 32))(v14, v18, v3);
    if (qword_27FC0B588 != -1)
    {
      swift_once();
    }

    v20 = sub_25C4C7BD0();
    __swift_project_value_buffer(v20, qword_27FC0B590);
    (*(v4 + 16))(v12, v14, v3);
    v21 = sub_25C4C7BB0();
    v22 = sub_25C4C8710();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v63 = v62;
      *v23 = 136315138;
      sub_25C481670(&qword_27FC0A550, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
      v24 = sub_25C4C8A30();
      v26 = v25;
      v27 = *(v4 + 8);
      v27(v12, v3);
      v28 = sub_25C458990(v24, v26, &v63);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_25C452000, v21, v22, "Bonjour browser failed: error=%s", v23, 0xCu);
      v29 = v62;
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x25F888630](v29, -1, -1);
      MEMORY[0x25F888630](v23, -1, -1);

      v27(v14, v3);
    }

    else
    {

      v45 = *(v4 + 8);
      v45(v12, v3);
      v45(v14, v3);
    }
  }

  else if (v19 == *MEMORY[0x277CD9110])
  {
    (*(v16 + 96))(v18, v15);
    v30 = v4;
    v31 = v9;
    (*(v4 + 32))(v9, v18, v3);
    if (qword_27FC0B588 != -1)
    {
      swift_once();
    }

    v32 = sub_25C4C7BD0();
    __swift_project_value_buffer(v32, qword_27FC0B590);
    v33 = *(v4 + 16);
    v34 = v62;
    v33(v62, v9, v3);
    v35 = sub_25C4C7BB0();
    v36 = sub_25C4C8720();
    v37 = v30;
    if (os_log_type_enabled(v35, v36))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v63 = v39;
      *v38 = 136315138;
      sub_25C481670(&qword_27FC0A550, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
      v40 = sub_25C4C8A30();
      v42 = v41;
      v61 = v31;
      v43 = *(v37 + 8);
      v43(v34, v3);
      v44 = sub_25C458990(v40, v42, &v63);

      *(v38 + 4) = v44;
      _os_log_impl(&dword_25C452000, v35, v36, "Bonjour browser waiting: error=%s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x25F888630](v39, -1, -1);
      MEMORY[0x25F888630](v38, -1, -1);

      v43(v61, v3);
    }

    else
    {

      v50 = *(v30 + 8);
      v50(v34, v3);
      v50(v31, v3);
    }
  }

  else if (v19 != *MEMORY[0x277CD9100])
  {
    if (v19 == *MEMORY[0x277CD90F8])
    {
      if (qword_27FC0B588 != -1)
      {
        swift_once();
      }

      v46 = sub_25C4C7BD0();
      __swift_project_value_buffer(v46, qword_27FC0B590);
      v47 = sub_25C4C7BB0();
      v48 = sub_25C4C8720();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_25C452000, v47, v48, "Bonjour browser ready", v49, 2u);
        MEMORY[0x25F888630](v49, -1, -1);
      }
    }

    else if (v19 == *MEMORY[0x277CD9118])
    {
      v51 = v1;
      if (qword_27FC0B588 != -1)
      {
        swift_once();
      }

      v52 = sub_25C4C7BD0();
      __swift_project_value_buffer(v52, qword_27FC0B590);
      v53 = sub_25C4C7BB0();
      v54 = sub_25C4C8720();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_25C452000, v53, v54, "Bonjour browser cancelled", v55, 2u);
        MEMORY[0x25F888630](v55, -1, -1);
      }

      *(v51 + 16) = 0;

      sub_25C47EF4C();
    }

    else
    {
      if (qword_27FC0B588 != -1)
      {
        swift_once();
      }

      v56 = sub_25C4C7BD0();
      __swift_project_value_buffer(v56, qword_27FC0B590);
      v57 = sub_25C4C7BB0();
      v58 = sub_25C4C8720();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_25C452000, v57, v58, "Bonjour browser unknown state", v59, 2u);
        MEMORY[0x25F888630](v59, -1, -1);
      }

      (*(v16 + 8))(v18, v15);
    }
  }
}

uint64_t sub_25C47E27C(uint64_t *a1)
{
  v2 = sub_25C4C7D90();
  v68 = *(v2 - 8);
  v69 = v2;
  MEMORY[0x28223BE20](v2);
  v67 = (&v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A558, &unk_25C4CA3D8);
  MEMORY[0x28223BE20](v4 - 8);
  v63 = &v59 - v5;
  v73 = sub_25C4C7F60();
  v62 = *(v73 - 8);
  v6 = MEMORY[0x28223BE20](v73);
  v61 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v59 = &v59 - v8;
  v9 = sub_25C4C7EA0();
  v72 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v60 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v59 - v12;
  v14 = sub_25C4C7C50();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = (&v59 - v19);
  v21 = *a1;
  v22 = a1[1];
  *v20 = *a1;
  v20[1] = v22;
  (*(v15 + 104))(&v59 - v19, *MEMORY[0x277D35610], v14);
  v64 = v20;
  v65 = v15;
  v23 = *(v15 + 16);
  v66 = v14;
  v23(v18, v20, v14);
  swift_bridgeObjectRetain_n();

  v74 = v13;
  v24 = v9;
  sub_25C4C7E90();
  v25 = OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__discoveryResults;
  v26 = v71;
  swift_beginAccess();
  v27 = *(v26 + v25);
  v28 = *(v27 + 16);
  v70 = v24;
  if (v28 && (v29 = sub_25C462EC0(v21, v22), (v30 & 1) != 0))
  {
    v31 = *(v72 + 16);
    v32 = v60;
    v31(v60, *(v27 + 56) + *(v72 + 72) * v29, v24);
    swift_endAccess();
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A570, &qword_25C4CA3F0) + 48);
    v34 = v59;
    v31(v59, v32, v24);
    v31(&v34[v33], v74, v24);
    v35 = v62;
    v36 = v34;
    (*(v62 + 104))(v34, *MEMORY[0x277D357C8], v73);
    v37 = sub_25C480568(0, 1, 1, MEMORY[0x277D84F90]);
    v39 = v37[2];
    v38 = v37[3];
    v40 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      v37 = sub_25C480568((v38 > 1), v39 + 1, 1, v37);
    }

    (*(v72 + 8))(v60, v70);
  }

  else
  {
    swift_endAccess();
    v31 = *(v72 + 16);
    v36 = v61;
    v31(v61, v74, v24);
    v35 = v62;
    (*(v62 + 104))(v36, *MEMORY[0x277D357C0], v73);
    v37 = sub_25C480568(0, 1, 1, MEMORY[0x277D84F90]);
    v39 = v37[2];
    v41 = v37[3];
    v40 = v39 + 1;
    if (v39 >= v41 >> 1)
    {
      v37 = sub_25C480568((v41 > 1), v39 + 1, 1, v37);
    }
  }

  v37[2] = v40;
  (*(v35 + 32))(v37 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v39, v36, v73);
  v42 = v63;
  v43 = v70;
  v31(v63, v74, v70);
  v44 = v72;
  (*(v72 + 56))(v42, 0, 1, v43);
  swift_beginAccess();

  sub_25C47FCC8(v42, v21, v22);
  swift_endAccess();
  if (qword_27FC0B588 != -1)
  {
    swift_once();
  }

  v45 = sub_25C4C7BD0();
  __swift_project_value_buffer(v45, qword_27FC0B590);
  v46 = sub_25C4C7BB0();
  v47 = sub_25C4C86F0();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v75[0] = v49;
    *v48 = 136315138;

    v51 = MEMORY[0x25F887AA0](v50, v73);
    v53 = v52;

    v54 = sub_25C458990(v51, v53, v75);
    v43 = v70;

    *(v48 + 4) = v54;
    _os_log_impl(&dword_25C452000, v46, v47, "NAN found: changes=%s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x25F888630](v49, -1, -1);
    MEMORY[0x25F888630](v48, -1, -1);
  }

  v56 = v67;
  v55 = v68;
  *v67 = v37;
  v57 = v69;
  (*(v55 + 104))(v56, *MEMORY[0x277D35768], v69);

  sub_25C47FEA0(v56);
  (*(v55 + 8))(v56, v57);
  (*(v44 + 8))(v74, v43);
  (*(v65 + 8))(v64, v66);
}

uint64_t sub_25C47EA80(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_25C4C7D90();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v41 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A558, &unk_25C4CA3D8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v38 - v8;
  v10 = sub_25C4C7EA0();
  v42 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = a1[1];
  v15 = OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__discoveryResults;
  swift_beginAccess();
  v16 = *(v2 + v15);
  if (!*(v16 + 16))
  {
    return swift_endAccess();
  }

  v17 = sub_25C462EC0(v13, v14);
  if ((v18 & 1) == 0)
  {
    return swift_endAccess();
  }

  v39 = v5;
  v40 = v4;
  v19 = *(v16 + 56);
  v20 = v42;
  v21 = *(v42 + 16);
  v21(v12, v19 + *(v42 + 72) * v17, v10);
  swift_endAccess();
  (*(v20 + 56))(v9, 1, 1, v10);
  swift_beginAccess();

  sub_25C47FCC8(v9, v13, v14);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A590, &qword_25C4CA400);
  v22 = sub_25C4C7F60();
  v23 = *(v22 - 8);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_25C4CA320;
  v21((v25 + v24), v12, v10);
  (*(v23 + 104))(v25 + v24, *MEMORY[0x277D357D0], v22);
  if (qword_27FC0B588 != -1)
  {
    swift_once();
  }

  v26 = sub_25C4C7BD0();
  __swift_project_value_buffer(v26, qword_27FC0B590);

  v27 = sub_25C4C7BB0();
  v28 = sub_25C4C86F0();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v43[0] = v30;
    *v29 = 136315138;
    v31 = MEMORY[0x25F887AA0](v25, v22);
    v33 = sub_25C458990(v31, v32, v43);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_25C452000, v27, v28, "NAN lost: changes=%s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x25F888630](v30, -1, -1);
    MEMORY[0x25F888630](v29, -1, -1);
  }

  v35 = v39;
  v34 = v40;
  v36 = v41;
  *v41 = v25;
  (*(v35 + 104))(v36, *MEMORY[0x277D35768], v34);
  sub_25C47FEA0(v36);
  (*(v35 + 8))(v36, v34);
  return (*(v42 + 8))(v12, v10);
}

uint64_t sub_25C47EF4C()
{
  v1 = sub_25C4C84C0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__dispatchQueue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
  v6 = v5;
  v7 = sub_25C4C84E0();
  result = (*(v2 + 8))(v4, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_6;
  }

  if (*(v0 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__invalidateCalled) != 1)
  {
    return result;
  }

  if (*(v0 + 16))
  {
    return result;
  }

  v9 = OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__nanSubscriber;
  result = swift_beginAccess();
  if (*(v0 + v9))
  {
    return result;
  }

  v7 = v0;
  if (qword_27FC0B588 != -1)
  {
    goto LABEL_14;
  }

LABEL_6:
  v10 = sub_25C4C7BD0();
  __swift_project_value_buffer(v10, qword_27FC0B590);
  v11 = sub_25C4C7BB0();
  v12 = sub_25C4C8720();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_25C452000, v11, v12, "Invalidated", v13, 2u);
    MEMORY[0x25F888630](v13, -1, -1);
  }

  v14 = (v7 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon_invalidationHandler);
  swift_beginAccess();
  v15 = *v14;
  if (*v14)
  {
    v16 = v14[1];

    v15(v17);
    sub_25C45C5F0(v15, v16);
    v18 = *v14;
  }

  else
  {
    v18 = 0;
  }

  v19 = v14[1];
  *v14 = 0;
  v14[1] = 0;
  return sub_25C45C5F0(v18, v19);
}

uint64_t sub_25C47F1B8()
{
  v1 = v0;
  v2 = sub_25C4C84C0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__dispatchQueue);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v7 = v6;
  LOBYTE(v6) = sub_25C4C84E0();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_27FC0B588 == -1)
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
  v8 = sub_25C4C7BD0();
  __swift_project_value_buffer(v8, qword_27FC0B590);
  v9 = sub_25C4C7BB0();
  v10 = sub_25C4C8720();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_25C452000, v9, v10, "Invalidate", v11, 2u);
    MEMORY[0x25F888630](v11, -1, -1);
  }

  *(v1 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__invalidateCalled) = 1;
  if (*(v1 + 16))
  {

    sub_25C4C8440();
  }

  v12 = (v1 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__nanSubscriber);
  swift_beginAccess();
  if (*v12)
  {
    v13 = v12[1];
    ObjectType = swift_getObjectType();
    v15 = *(v13 + 112);
    swift_unknownObjectRetain();
    v15(ObjectType, v13);
    swift_unknownObjectRelease();
  }

  return sub_25C47EF4C();
}

uint64_t sub_25C47F41C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = sub_25C4C7AB0();
  v69 = *(v3 - 8);
  v70 = v3;
  MEMORY[0x28223BE20](v3);
  v68 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A538, &qword_25C4CA330);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v72 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v71 = &v67 - v8;
  v9 = sub_25C4C8160();
  v74 = *(v9 - 8);
  v75 = v9;
  MEMORY[0x28223BE20](v9);
  v73 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25C4C8120();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25C4C8170();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_25C4C7C50();
  v76 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = (&v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v24 = (&v67 - v23);
  v77 = a1;
  sub_25C4C8420();
  v25 = (*(v16 + 88))(v18, v15);
  if (v25 == *MEMORY[0x277CD8B08])
  {
    (*(v16 + 96))(v18, v15);
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0AA00, &qword_25C4CA340) + 48);
    (*(v12 + 32))(v14, v18, v11);
    v27 = v74;
    v28 = v75;
    v29 = v18 + v26;
    v30 = v73;
    (v74[4])(v73, v29, v75);
    v79 = 0;
    v80 = 0xE000000000000000;
    sub_25C4C8920();
    MEMORY[0x25F887A50](58, 0xE100000000000000);
    sub_25C4C8920();
    v31 = v79;
    v32 = v80;
    v33 = sub_25C4C8430();
    (*(*(v33 - 8) + 8))(v77, v33);
    (v27[1])(v30, v28);
    (*(v12 + 8))(v14, v11);
    *v24 = v31;
    v24[1] = v32;
LABEL_3:
    v34 = v76;
    (*(v76 + 104))(v24, *MEMORY[0x277D355F8], v19);
LABEL_13:
    v57 = v78;
    (*(v34 + 32))(v78, v24, v19);
    v56 = 0;
    return (*(v34 + 56))(v57, v56, 1, v19);
  }

  v74 = v24;
  v75 = v19;
  v35 = v77;
  if (v25 == *MEMORY[0x277CD8B00])
  {
    (*(v16 + 96))(v18, v15);
    v36 = *v18;
    v37 = v18[1];
    v38 = v18[2];
    v73 = v18[3];
    v39 = v18[4];
    v69 = v18[5];
    v70 = v39;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A540, &qword_25C4CA338);
    v41 = v71;
    sub_25C480740(v18 + *(v40 + 80), v71);
    v42 = v72;
    sub_25C4807B0(v41, v72);
    v43 = sub_25C4C8240();
    v44 = *(v43 - 8);
    if ((*(v44 + 48))(v42, 1, v43) == 1)
    {
      v45 = sub_25C4C8430();
      (*(*(v45 - 8) + 8))(v35, v45);
      sub_25C4666F8(v41, &qword_27FC0A538, &qword_25C4CA330);
      sub_25C4666F8(v42, &qword_27FC0A538, &qword_25C4CA330);
      v46 = 0;
      v47 = 0;
    }

    else
    {
      v46 = sub_25C4C8230();
      v68 = v38;
      v58 = v37;
      v59 = v36;
      v60 = v42;
      v47 = v61;
      v62 = sub_25C4C8430();
      (*(*(v62 - 8) + 8))(v35, v62);
      sub_25C4666F8(v41, &qword_27FC0A538, &qword_25C4CA330);
      v63 = v60;
      v36 = v59;
      v37 = v58;
      v38 = v68;
      (*(v44 + 8))(v63, v43);
    }

    *v22 = v36;
    v22[1] = v37;
    v64 = v73;
    v22[2] = v38;
    v22[3] = v64;
    v65 = v69;
    v22[4] = v70;
    v22[5] = v65;
    v22[6] = v46;
    v22[7] = v47;
    v19 = v75;
    v34 = v76;
    (*(v76 + 104))(v22, *MEMORY[0x277D35620], v75);
    v24 = v74;
    (*(v34 + 32))(v74, v22, v19);
    goto LABEL_13;
  }

  if (v25 != *MEMORY[0x277CD8AF0] && v25 == *MEMORY[0x277CD8AD0])
  {
    (*(v16 + 96))(v18, v15);
    v49 = v68;
    v48 = v69;
    v50 = v70;
    (*(v69 + 32))(v68, v18, v70);
    v51 = sub_25C4C7AA0();
    v53 = v52;
    v54 = sub_25C4C8430();
    (*(*(v54 - 8) + 8))(v35, v54);
    (*(v48 + 8))(v49, v50);
    v24 = v74;
    v19 = v75;
    *v74 = v51;
    v24[1] = v53;
    goto LABEL_3;
  }

  v55 = sub_25C4C8430();
  (*(*(v55 - 8) + 8))(v35, v55);
  (*(v16 + 8))(v18, v15);
  v56 = 1;
  v57 = v78;
  v19 = v75;
  v34 = v76;
  return (*(v34 + 56))(v57, v56, 1, v19);
}

uint64_t sub_25C47FCC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A558, &unk_25C4CA3D8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_25C4C7EA0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_25C4666F8(a1, &unk_27FC0A558, &unk_25C4CA3D8);
    sub_25C480AE4(a2, a3, v9);

    return sub_25C4666F8(v9, &unk_27FC0A558, &unk_25C4CA3D8);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_25C4811C0(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_25C47FEA0(uint64_t a1)
{
  v31 = a1;
  v30 = sub_25C4C7D90();
  v26[2] = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v26[1] = v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_25C4C7D60();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25C4C80B0();
  v28 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  empty = xpc_dictionary_create_empty();
  v10 = *MEMORY[0x277D35858];
  v32 = *(v7 + 104);
  v32(v9, v10, v6);
  sub_25C4C80A0();
  v29 = *(v7 + 8);
  v29(v9, v6);
  (*(v3 + 104))(v5, *MEMORY[0x277D35700], v2);
  sub_25C4C7D50();
  (*(v3 + 8))(v5, v2);
  v11 = empty;
  v12 = sub_25C4C8570();

  v13 = sub_25C4C8570();

  xpc_dictionary_set_string(v11, (v12 + 32), (v13 + 32));

  v14 = *MEMORY[0x277D358C8];
  v15 = v28;
  v26[0] = v7 + 104;
  v32(v9, v14, v28);
  v16 = v15;
  v17 = v29;
  sub_25C4C80A0();
  v17(v9, v15);
  v18 = *(v33 + 24);
  v19 = sub_25C4C8570();

  xpc_dictionary_set_uint64(v11, (v19 + 32), v18);

  sub_25C4C7A40();
  swift_allocObject();
  sub_25C4C7A30();
  sub_25C481670(&qword_27FC0A578, MEMORY[0x277D35770], MEMORY[0x277D35778]);
  v20 = sub_25C4C7A20();
  v22 = v21;

  v32(v9, *MEMORY[0x277D358E0], v16);
  sub_25C4C80A0();
  v17(v9, v16);
  v23 = sub_25C4C7AC0();
  v24 = sub_25C4C8570();

  xpc_dictionary_set_value(v11, (v24 + 32), v23);
  swift_unknownObjectRelease();

  xpc_connection_send_message(*(v33 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__xpcConnection), v11);
  sub_25C45A004(v20, v22);
  return swift_unknownObjectRelease();
}

void *sub_25C480568(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A590, &qword_25C4CA400);
  v10 = *(sub_25C4C7F60() - 8);
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
  v15 = *(sub_25C4C7F60() - 8);
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

uint64_t sub_25C480740(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A538, &qword_25C4CA330);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25C4807B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A538, &qword_25C4CA330);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for NXDiscoveryDaemon(uint64_t a1)
{
  result = qword_27FC0B5B8;
  if (!qword_27FC0B5B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25C480874(uint64_t a1)
{
  result = sub_25C4C7F70();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_25C480960()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25C480998(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      if (Strong == *(v4 + 16))
      {
        sub_25C47BC24(a2);
      }
    }
  }

  return result;
}

uint64_t sub_25C480A40(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      if (Strong == *(v3 + 16))
      {
        sub_25C47D9BC(a1);
      }
    }
  }

  return result;
}

uint64_t sub_25C480AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_25C462EC0(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25C4813F0();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_25C4C7EA0();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_25C480FD4(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_25C4C7EA0();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_25C480C54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_25C4C7EA0();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A588, &qword_25C4CA3F8);
  v42 = v4;
  result = sub_25C4C8970();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_25C4C8A60();
      sub_25C4C8580();
      result = sub_25C4C8A90();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

unint64_t sub_25C480FD4(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25C4C8810() + 1) & ~v5;
    while (1)
    {
      sub_25C4C8A60();

      sub_25C4C8580();
      v9 = sub_25C4C8A90();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_25C4C7EA0() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void sub_25C4811C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_25C462EC0(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_25C4813F0();
      goto LABEL_7;
    }

    sub_25C480C54(v15, a4 & 1);
    v25 = sub_25C462EC0(a2, a3);
    if ((v16 & 1) == (v26 & 1))
    {
      v12 = v25;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_25C4C8A20();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_25C4C7EA0();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    v22(v24, a1, v23);
    return;
  }

LABEL_13:
  sub_25C481340(v12, a2, a3, a1, v18);
}

uint64_t sub_25C481340(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_25C4C7EA0();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void sub_25C4813F0()
{
  v1 = v0;
  v35 = sub_25C4C7EA0();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A588, &qword_25C4CA3F8);
  v3 = *v0;
  v4 = sub_25C4C8960();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

uint64_t sub_25C481670(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25C4816B8()
{
  MEMORY[0x25F8886B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}