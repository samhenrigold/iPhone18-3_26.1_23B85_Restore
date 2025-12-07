uint64_t sub_25311A000(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25311A060(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25311A0C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580568, &qword_25314BDB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25311A138(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2530CD684;

  return sub_253118618(a1, v4);
}

uint64_t sub_25311A1FC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  sub_2530CAA1C(a1, a2);
  v8 = sub_25311A2D8(a1, a2);
  result = sub_2530C2478(a1, a2);
  if (!v4)
  {
    sub_253148B64();
    sub_2531490E4();
  }

  return result;
}

id sub_25311A2D8(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = sub_2531488A4();
  v8[0] = 0;
  v4 = [v2 initForReadingFromData:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_253148844();

    swift_willThrow();
  }

  return v4;
}

uint64_t HomesStore.CoreData.Configuration.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0x746C7561666544;
  a1[1] = 0xE700000000000000;
  v2 = type metadata accessor for HomesStore.CoreData.Configuration(0);
  sub_25311A4D8();
  v3 = (a1 + *(v2 + 24));
  *v3 = 0xD00000000000001ELL;
  v3[1] = 0x800000025314AA90;
  type metadata accessor for HomesStore.CoreData.Configuration.StoreType(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t HomesStore.CoreData.Configuration.modelConfigurationName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t HomesStore.CoreData.Configuration.modelConfigurationName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void sub_25311A4D8()
{
  type metadata accessor for HomesStore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  v1 = sub_253148B54();
  v2 = sub_253148B54();
  v3 = [v8 URLForResource:v1 withExtension:v2];

  if (v3)
  {
    sub_253148874();
  }

  else
  {
    sub_2531493C4();
    MEMORY[0x259BFC7D0](0xD00000000000003ALL, 0x800000025314B5E0);
    v4 = [v8 description];
    v5 = sub_253148B64();
    v7 = v6;

    MEMORY[0x259BFC7D0](v5, v7);

    sub_253149594();
    __break(1u);
  }
}

uint64_t HomesStore.CoreData.Configuration.modelFileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HomesStore.CoreData.Configuration(0) + 20);
  v4 = sub_253148884();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HomesStore.CoreData.Configuration.modelFileURL.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HomesStore.CoreData.Configuration(0) + 20);
  v4 = sub_253148884();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HomesStore.CoreData.Configuration.storeType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HomesStore.CoreData.Configuration(0) + 24);

  return sub_2530E8E34(v3, a1);
}

uint64_t HomesStore.CoreData.Configuration.storeType.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for HomesStore.CoreData.Configuration(0) + 24);

  return sub_25311A874(a1, v3);
}

uint64_t sub_25311A874(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.CoreData.Configuration.StoreType(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t HomesStore.CoreData.Configuration.init(storeType:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0x746C7561666544;
  a2[1] = 0xE700000000000000;
  v4 = type metadata accessor for HomesStore.CoreData.Configuration(0);
  sub_25311A4D8();
  v5 = (a2 + *(v4 + 24));
  *v5 = 0xD00000000000001ELL;
  v5[1] = 0x800000025314AA90;
  type metadata accessor for HomesStore.CoreData.Configuration.StoreType(0);
  swift_storeEnumTagMultiPayload();

  return sub_25311A874(a1, v5);
}

uint64_t sub_25311A9F8(uint64_t a1)
{
  result = sub_253148884();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for HomesStore.CoreData.Configuration.StoreType(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_25311AA8C(uint64_t a1)
{
  sub_25311AB00();
  if (v1 <= 0x3F)
  {
    sub_25311AB30();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_25311AB00()
{
  result = qword_27F581D38;
  if (!qword_27F581D38)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27F581D38);
  }

  return result;
}

void sub_25311AB30()
{
  if (!qword_27F581D40)
  {
    v0 = sub_253148884();
    if (!v1)
    {
      atomic_store(v0, &qword_27F581D40);
    }
  }
}

uint64_t sub_25311AB78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581E18, &qword_2531503B8);
  v3 = swift_allocObject();
  v4 = objc_opt_self();

  v5 = [v4 defaultCenter];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581E20, &qword_2531503C0);
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581E28, &qword_2531503C8);
  v8 = swift_allocObject();
  swift_defaultActor_initialize();
  v9 = MEMORY[0x277D84F90];
  *(v8 + 112) = MEMORY[0x277D84F90];
  v7[17] = 0;
  v7[18] = 0;
  v7[15] = v5;
  v7[16] = v8;
  v7[14] = a1;
  v19[4] = v6;
  v19[5] = &off_2864EB7A8;
  v19[1] = v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581E30, &qword_2531503D0);
  v11 = swift_allocObject();

  swift_defaultActor_initialize();
  v11[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581E38, &qword_2531503D8);
  v12 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v12 + 112) = v9;
  v11[17] = v12;
  v11[14] = a1;
  v11[15] = v3;
  v19[9] = v10;
  v19[10] = &off_2864EAC78;
  v19[6] = v11;
  v19[14] = v2;
  v19[15] = sub_25311BF48();
  v19[11] = v3;
  v19[0] = a1;
  sub_25311BFAC(v19, &v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581D10, &qword_253150328);
  v13 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_2530CD33C(v19, &qword_27F581E48, &qword_2531503E0);
  *(v13 + 240) = 0;
  *(v13 + 112) = v15;
  sub_2530BDB14(&v17, v13 + 120);
  sub_2530BDB14(&v16, v13 + 160);
  sub_2530BDB14(&v18, v13 + 200);
  return v13;
}

uint64_t sub_25311ADB8()
{
  v0 = sub_253148A94();
  __swift_allocate_value_buffer(v0, qword_27F581D50);
  __swift_project_value_buffer(v0, qword_27F581D50);
  return sub_253148A84();
}

id XPCServer.__allocating_init(persistentContainer:storeFileURL:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_253148884();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v8 = sub_253148B54();
  v9 = [v7 initWithMachServiceName_];

  (*(v4 + 16))(v6, a2, v3);
  _s14XPCStoreServerCMa();
  swift_allocObject();
  sub_2530D1620(v6);
  v11 = v10;

  v13 = sub_25311AB78(v12);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581D10, &qword_253150328);
  v23 = &off_2864EB3F8;
  *&v21 = v13;
  type metadata accessor for HomesStore();
  v14 = swift_allocObject();
  sub_2530BDB14(&v21, v14 + 16);
  v15 = type metadata accessor for XPCServer();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR____TtC11HomeKitCore9XPCServer_proxies] = MEMORY[0x277D84FA0];
  *&v16[OBJC_IVAR____TtC11HomeKitCore9XPCServer_listener] = v9;
  *&v16[OBJC_IVAR____TtC11HomeKitCore9XPCServer_storeServer] = v11;
  *&v16[OBJC_IVAR____TtC11HomeKitCore9XPCServer_homesStore] = v14;
  v20.receiver = v16;
  v20.super_class = v15;

  v17 = objc_msgSendSuper2(&v20, sel_init);

  (*(v4 + 8))(a2, v3);
  return v17;
}

id XPCServer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XPCServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for XPCServer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall XPCServer.start()()
{
  [*(*(v0 + OBJC_IVAR____TtC11HomeKitCore9XPCServer_storeServer) + 16) startListening];
  v1 = *(v0 + OBJC_IVAR____TtC11HomeKitCore9XPCServer_listener);
  [v1 setDelegate_];
  [v1 resume];
  if (qword_27F5802D8 != -1)
  {
    swift_once();
  }

  v2 = sub_253148A94();
  __swift_project_value_buffer(v2, qword_27F581D50);
  oslog = sub_253148A74();
  v3 = sub_253149094();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2530B8000, oslog, v3, "Started XPC server", v4, 2u);
    MEMORY[0x259BFDC60](v4, -1, -1);
  }
}

void sub_25311B354(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_27F5802D8 != -1)
    {
      swift_once();
    }

    v4 = sub_253148A94();
    __swift_project_value_buffer(v4, qword_27F581D50);
    v5 = v3;
    v6 = sub_253148A74();
    v7 = sub_253149094();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v3;
      v10 = v5;
      _os_log_impl(&dword_2530B8000, v6, v7, "Client proxy invalidated: %@", v8, 0xCu);
      sub_2530CD33C(v9, &qword_27F581E10, &qword_25314F640);
      MEMORY[0x259BFDC60](v9, -1, -1);
      MEMORY[0x259BFDC60](v8, -1, -1);
    }

    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      swift_beginAccess();
      v13 = sub_25311B590(v5);
      swift_endAccess();

      v5 = v13;
    }
  }
}

uint64_t sub_25311B590(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_253149324();

    if (v6)
    {
      v7 = sub_25311B718(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  type metadata accessor for XPCClientProxy(0);
  v10 = sub_253149184();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_253149194();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2530D8C94();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_25311B870(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_25311B718(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_2531492E4();
  v5 = swift_unknownObjectRetain();
  v6 = sub_2530D68C8(v5, v4);
  v15 = v6;

  v7 = sub_253149184();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for XPCClientProxy(0);
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_253149194();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_25311B870(v9);
  result = sub_253149194();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_25311B870(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_253149274();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_253149184();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_25311BA10(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581DF8, &qword_2531503B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F581E00, &unk_25314F540);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  aBlock[0] = a1;
  v12 = sub_2530CB1C0();
  v13 = a1;
  MEMORY[0x259BFC580](aBlock, v12);
  aBlock[0] = *(v2 + OBJC_IVAR____TtC11HomeKitCore9XPCServer_homesStore);
  v14 = type metadata accessor for HomesStore();

  MEMORY[0x259BFC580](aBlock, v14);
  v15 = type metadata accessor for XPCClientProxy(0);
  v16 = objc_allocWithZone(v15);
  (*(v9 + 16))(v16 + OBJC_IVAR____TtC11HomeKitCore14XPCClientProxy_connection, v11, v8);
  (*(v5 + 16))(v16 + OBJC_IVAR____TtC11HomeKitCore14XPCClientProxy_homesStore, v7, v4);
  v35.receiver = v16;
  v35.super_class = v15;
  v17 = objc_msgSendSuper2(&v35, sel_init);
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  if (qword_27F5802D8 != -1)
  {
    swift_once();
  }

  v18 = sub_253148A94();
  __swift_project_value_buffer(v18, qword_27F581D50);
  v19 = v17;
  v20 = sub_253148A74();
  v21 = sub_253149094();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v19;
    *v23 = v19;
    v24 = v19;
    _os_log_impl(&dword_2530B8000, v20, v21, "Accepting client: %@", v22, 0xCu);
    sub_2530CD33C(v23, &qword_27F581E10, &qword_25314F640);
    MEMORY[0x259BFDC60](v23, -1, -1);
    MEMORY[0x259BFDC60](v22, -1, -1);
  }

  if (qword_27F580250 != -1)
  {
    swift_once();
  }

  [v13 setExportedInterface_];
  [v13 setExportedObject_];
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  *(v27 + 24) = v26;
  aBlock[4] = sub_25311BF28;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25310AB2C;
  aBlock[3] = &block_descriptor_2;
  v28 = _Block_copy(aBlock);

  [v13 setInvalidationHandler_];
  _Block_release(v28);
  swift_beginAccess();
  v29 = v19;
  sub_2530D6638(&v33, v29);
  v30 = v33;
  swift_endAccess();

  [v13 resume];
  return 1;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25311BF48()
{
  result = qword_27F581E40;
  if (!qword_27F581E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F581E18, &qword_2531503B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581E40);
  }

  return result;
}

uint64_t sub_25311BFAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581E48, &qword_2531503E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_11HomeKitCore9XPCServerC5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25311C034(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25311C088(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_25311C0E4(void *result, int a2)
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

uint64_t sub_25311C114()
{
  v0 = sub_253148A94();
  __swift_allocate_value_buffer(v0, qword_27F581E50);
  __swift_project_value_buffer(v0, qword_27F581E50);
  return sub_253148A84();
}

HomeKitCore::DataSourceType_optional __swiftcall DataSourceType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_25311C1C8()
{
  result = qword_27F581E68;
  if (!qword_27F581E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581E68);
  }

  return result;
}

void *sub_25311C21C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_25311C240()
{
  result = qword_27F581E70;
  if (!qword_27F581E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F581E78, &qword_253150510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581E70);
  }

  return result;
}

uint64_t sub_25311C2C4()
{
  v1 = v0;
  v2 = *(v0 + 24);
  if (v2)
  {
  }

  else
  {
    if (qword_27F5802E0 != -1)
    {
      swift_once();
    }

    v3 = sub_253148A94();
    __swift_project_value_buffer(v3, qword_27F581E50);
    v4 = sub_253148A74();
    v5 = sub_2531490A4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2530B8000, v4, v5, "Creating XPC tunnel data source", v6, 2u);
      MEMORY[0x259BFDC60](v6, -1, -1);
    }

    v7 = sub_25311C4F0();
    v8 = type metadata accessor for XPCConnectionWrapper();
    v18[3] = v8;
    v18[4] = &off_2864EBE90;
    v18[0] = v7;
    _s14descr2864E9281O3XPCCMa();
    v2 = swift_allocObject();
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v18, v8);
    MEMORY[0x28223BE20](v9);
    v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v16 = v8;
    v17 = &off_2864EBE90;
    *&v15 = v13;
    swift_defaultActor_initialize();
    *(v2 + 152) = MEMORY[0x277D84F90];
    *(v2 + 160) = 0;
    sub_2530BDB14(&v15, v2 + 112);
    __swift_destroy_boxed_opaque_existential_0(v18);
    *(v1 + 24) = v2;
  }

  return v2;
}

uint64_t sub_25311C4F0()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2)
  {
  }

  else
  {
    if (qword_27F5802E0 != -1)
    {
      swift_once();
    }

    v3 = sub_253148A94();
    __swift_project_value_buffer(v3, qword_27F581E50);
    v4 = sub_253148A74();
    v5 = sub_2531490A4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2530B8000, v4, v5, "Creating XPC connection wrapper", v6, 2u);
      MEMORY[0x259BFDC60](v6, -1, -1);
    }

    type metadata accessor for XPCConnectionWrapper();
    v2 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v2 + 112) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F581E80, &qword_2531505B8);
    v7 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v7 + 112) = MEMORY[0x277D84F90];
    *(v2 + 120) = v7;
    *(v1 + 16) = v2;
  }

  return v2;
}

uint64_t sub_25311C654()
{
  v1 = v0;
  v2 = type metadata accessor for HomesStore.CoreData.Configuration(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 32);
  if (v5)
  {
  }

  else
  {
    if (qword_27F5802E0 != -1)
    {
      swift_once();
    }

    v6 = sub_253148A94();
    __swift_project_value_buffer(v6, qword_27F581E50);
    v7 = sub_253148A74();
    v8 = sub_2531490A4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2530B8000, v7, v8, "Creating core data data source", v9, 2u);
      MEMORY[0x259BFDC60](v9, -1, -1);
    }

    *v4 = 0x746C7561666544;
    *(v4 + 1) = 0xE700000000000000;
    sub_25311A4D8();
    v10 = &v4[*(v2 + 24)];
    *v10 = 0xD00000000000001ELL;
    *(v10 + 1) = 0x800000025314AA90;
    type metadata accessor for HomesStore.CoreData.Configuration.StoreType(0);
    swift_storeEnumTagMultiPayload();
    v11 = _s11HomeKitCore10HomesStoreC0C4DataO19PersistentContainerC13configurationAgE13ConfigurationV_tcfC_0(v4);
    v5 = sub_25311AB78(v11);
    *(v1 + 32) = v5;
  }

  return v5;
}

uint64_t sub_25311C834()
{

  return swift_deallocClassInstance();
}

uint64_t sub_25311C904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t dispatch thunk of DescriptorVisitable.visitKeyPaths<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 8))(a1, a2, a3, a4);
}

{
  return (*(a5 + 16))(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DescriptorVisitor.visit<A>(keyPath:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 16))(a1, a2, a3, a4);
}

{
  return (*(a5 + 32))(a1, a2, a3, a4);
}

{
  return (*(a5 + 40))(a1, a2, a3, a4);
}

{
  return (*(a5 + 72))(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DescriptorVisitor.visit<A>(keyPath:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return (*(a6 + 24))(a1, a2, a3, a4, a5);
}

{
  return (*(a6 + 48))(a1, a2, a3, a4, a5);
}

void sub_25311CAD4(id *a1@<X0>, SEL *a2@<X3>, uint64_t (*a3)(void)@<X4>, unint64_t *a4@<X5>, uint64_t (*a5)(uint64_t)@<X6>, uint64_t *a6@<X8>)
{
  v10 = [*a1 *a2];
  a3(0);
  sub_25311D1A8(a4, 255, a5, MEMORY[0x277D85378]);
  v11 = sub_253148F74();

  *a6 = v11;
}

void sub_25311CBB4(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), SEL *a8)
{
  v11 = *a2;
  a5(0);
  sub_25311D1A8(a6, 255, a7, MEMORY[0x277D85378]);
  v12 = sub_253148F64();
  [v11 *a8];
}

id HMCDHomeModel.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id HMCDHomeModel.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for HMCDHomeModel();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id HMCDHomeModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HMCDHomeModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_25311CEE8(void *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_25311CF58(v2);
  return sub_2530D0B14;
}

void (*sub_25311CF58(void *a1))(void ***a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_253148944();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[2] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
    v5[4] = v10;
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v10 = malloc(v9);
    v5[4] = v10;
    v11 = malloc(v9);
  }

  v12 = v11;
  v5[5] = v11;
  v13 = [v1 modelID];
  sub_253148924();

  (*(v8 + 32))(v12, v10, v6);
  return sub_2530D0CD8;
}

uint64_t sub_25311D0F8(uint64_t a1, uint64_t a2)
{
  result = sub_25311D1A8(&qword_27F581F08, a2, type metadata accessor for HMCDHomeModel, &protocol conformance descriptor for HMCDHomeModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25311D150@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for HMCDHomeModel();
  result = sub_2531493E4();
  *a2 = result;
  return result;
}

uint64_t sub_25311D1A8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_25311D1F0()
{
  v1 = [*v0 identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_253148B64();

  return v3;
}

uint64_t NSPersistentStore.ClientStoreMetadataKey.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_253149604();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_25311D2CC()
{
  sub_253149814();
  sub_253148BB4();
  return sub_253149844();
}

uint64_t sub_25311D340(uint64_t a1)
{
  sub_253149814();
  sub_253148BB4();
  return sub_253149844();
}

uint64_t sub_25311D394@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_253149604();

  *a2 = v3 != 0;
  return result;
}

id NSPersistentStore.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = [v2 metadata];
  if (result)
  {
    v6 = result;
    v7 = sub_253148AD4();

    if (*(v7 + 16) && (v8 = sub_25311D908(0xD000000000000032, 0x800000025314A550), (v9 & 1) != 0))
    {
      sub_2530C0304(*(v7 + 56) + 32 * v8, v11);
    }

    else
    {

      memset(v11, 0, sizeof(v11));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5818A0, &qword_25314E9C0);
    v10 = swift_dynamicCast();
    return (*(*(a1 - 8) + 56))(a2, v10 ^ 1u, 1, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t NSPersistentStore.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25311E084(a1, a2, a3);
  v4 = sub_2531491F4();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1, v4);
}

void (*NSPersistentStore.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, uint64_t a2)
{
  v6 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a3;
  v7[1] = v3;
  v9 = sub_2531491F4();
  v8[2] = v9;
  v10 = *(v9 - 8);
  v8[3] = v10;
  v11 = *(v10 + 64);
  if (v6)
  {
    v8[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v8[4] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v8[5] = v12;
  NSPersistentStore.subscript.getter(a3, v12);
  return sub_25311D6CC;
}

void sub_25311D6CC(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_25311E084(v3, v8, v7);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    sub_25311E084((*a1)[5], a2, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

unint64_t sub_25311D7B8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581960, &qword_2531507D0);
  v2 = sub_253148B04();
  return sub_25311DB48(a1, v2);
}

unint64_t sub_25311D834(uint64_t a1)
{
  sub_253148944();
  v2 = MEMORY[0x277CC95F0];
  sub_25311E374(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v3 = sub_253148B04();
  return sub_25311DE20(a1, v3, MEMORY[0x277CC95F0], &qword_27F580C40, v2, MEMORY[0x277CC9610]);
}

unint64_t sub_25311D908(uint64_t a1, uint64_t a2)
{
  sub_253149814();
  sub_253148BB4();
  v4 = sub_253149844();

  return sub_25311DC30(a1, a2, v4);
}

unint64_t sub_25311D980(uint64_t a1)
{
  v2 = sub_253149344();

  return sub_25311DCE8(a1, v2);
}

unint64_t sub_25311D9C4(uint64_t a1)
{
  v1 = a1;
  sub_253149814();
  MEMORY[0x259BFD420](v1);
  v2 = sub_253149844();

  return sub_25311DDB0(v1, v2);
}

unint64_t sub_25311DA30(uint64_t a1)
{
  sub_253148534();
  v2 = MEMORY[0x277CC8ED0];
  sub_25311E374(&qword_27F581F20, MEMORY[0x277CC8ED0], MEMORY[0x277CC8ED8]);
  v3 = sub_253148B04();
  return sub_25311DE20(a1, v3, MEMORY[0x277CC8ED0], qword_27F581F28, v2, MEMORY[0x277CC8EE0]);
}

unint64_t sub_25311DB04(uint64_t a1)
{
  v2 = sub_253149184();

  return sub_25311DFC0(a1, v2);
}

unint64_t sub_25311DB48(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581960, &qword_2531507D0);
      if (sub_253148B44())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_25311DC30(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_253149734())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25311DCE8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_25311E3BC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x259BFCF50](v9, a1);
      sub_2530FB904(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_25311DDB0(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_25311DE20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_25311E374(v23, v24, v25);
      v19 = sub_253148B44();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_25311DFC0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_25311E418();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_253149194();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_25311E084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_2531491F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  (*(v8 + 16))(&v18 - v9, a1, v7);
  v11 = *(a3 - 8);
  if ((*(v11 + 48))(v10, 1, a3) == 1)
  {
    (*(v8 + 8))(v10, v7);
    v21 = 0u;
    v22 = 0u;
  }

  else
  {
    *(&v22 + 1) = a3;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v21);
    (*(v11 + 32))(boxed_opaque_existential_0, v10, a3);
  }

  v13 = [v4 metadata];
  if (v13)
  {
    v14 = v13;
    v15 = sub_253148AD4();

    v20 = v15;
    if (*(&v22 + 1))
    {
      sub_2530C02F4(&v21, v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = v15;
      sub_25313035C(v19, 0xD000000000000032, 0x800000025314A550, isUniquelyReferenced_nonNull_native);
      if (v18)
      {
LABEL_7:
        v17 = sub_253148AC4();

LABEL_10:
        [v4 setMetadata_];

        return;
      }
    }

    else
    {
      sub_25311E464(&v21);
      sub_25312EAD4(0xD000000000000032, 0x800000025314A550, v19);
      sub_25311E464(v19);
      if (v20)
      {
        goto LABEL_7;
      }
    }

    v17 = 0;
    goto LABEL_10;
  }

  __break(1u);
}

unint64_t sub_25311E310()
{
  result = qword_27F581F18;
  if (!qword_27F581F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581F18);
  }

  return result;
}

uint64_t sub_25311E374(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25311E418()
{
  result = qword_27F5818D0;
  if (!qword_27F5818D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5818D0);
  }

  return result;
}

uint64_t sub_25311E464(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5818A0, &qword_25314E9C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25311E4CC(uint64_t a1)
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

uint64_t sub_25311E56C()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_25311E60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = *(a4 - 8);
  v7[9] = v8;
  v7[10] = *(v8 + 64);
  v7[11] = swift_task_alloc();
  v7[12] = swift_getAssociatedTypeWitness();
  v7[13] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[14] = AssociatedTypeWitness;
  v7[15] = *(AssociatedTypeWitness - 8);
  v7[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25311E7A4, 0, 0);
}

uint64_t sub_25311E7A4()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v17 = *(v0 + 40);
  v7 = *(v0 + 40);
  (*(v4 + 56))(v7, v4);
  (*(v2 + 16))(v1, v3, v7);
  v8 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v9 = swift_allocObject();
  *(v0 + 136) = v9;
  *(v9 + 16) = v17;
  *(v9 + 32) = v4;
  *(v9 + 40) = v6;
  *(v9 + 48) = v5;
  (*(v2 + 32))(v9 + v8, v1, v7);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = *(AssociatedConformanceWitness + 64);

  v18 = (v11 + *v11);
  v12 = swift_task_alloc();
  *(v0 + 144) = v12;
  *v12 = v0;
  v12[1] = sub_25311E9D4;
  v13 = *(v0 + 112);
  v14 = *(v0 + 48);
  v15 = *(v0 + 16);

  return v18(v15, sub_25311EDB0, v9, v14, v13, AssociatedConformanceWitness);
}

uint64_t sub_25311E9D4()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 152) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25311EBBC, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_25311EBBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25311EC2C(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v14 - v11;
  (*(a6 + 56))(a4, a6);
  a1(v12);
  return (*(v10 + 8))(v12, AssociatedTypeWitness);
}

uint64_t sub_25311EE08()
{
  sub_253149814();
  sub_253148BB4();
  return sub_253149844();
}

uint64_t sub_25311EE7C(uint64_t a1)
{
  sub_253149814();
  sub_253148BB4();
  return sub_253149844();
}

uint64_t sub_25311EED0@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_253149604();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_25311EF54(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  v18 = MEMORY[0x277D84FA0];
  while (1)
  {
    v8 = v2;
    if (!v6)
    {
      break;
    }

    v9 = v2;
LABEL_15:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    sub_25311E3BC(*(v1 + 48) + 40 * v12, v20);
    sub_2530C0304(*(v1 + 56) + 32 * v12, v19);
    v22 = v20[0];
    v23 = v20[1];
    *&v24 = v21;
    sub_2530C02F4(v19, (&v24 + 8));
    v2 = v9;
LABEL_16:
    v29[0] = v24;
    v29[1] = v25;
    v30 = v26;
    v27 = v22;
    v28 = v23;
    if (!*(&v23 + 1))
    {

      return v18;
    }

    sub_2530C02F4((v29 + 8), v20);
    v22 = v27;
    v23 = v28;
    *&v24 = *&v29[0];
    if (swift_dynamicCast())
    {
      v13 = sub_253149604();

      if (!v13)
      {
        sub_2530C0304(v20, &v22);
        if ((swift_dynamicCast() & 1) != 0 && LOBYTE(v19[0]) == 1)
        {
          sub_253149814();
          sub_253148BB4();
          v14 = sub_253149844();
          v15 = v14 & ~(-1 << *(v18 + 32));
          if (((*(v18 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v15) & 1) == 0)
          {
            v16 = v14 & ~(-1 << *(v18 + 32));
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v22 = v18;
            sub_2530D7E2C(v16, isUniquelyReferenced_nonNull_native);
            v18 = v22;
          }
        }
      }
    }

    result = __swift_destroy_boxed_opaque_existential_0(v20);
  }

  if (v7 <= v2 + 1)
  {
    v10 = v2 + 1;
  }

  else
  {
    v10 = v7;
  }

  v2 = v10 - 1;
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {
      v6 = 0;
      v26 = 0;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      goto LABEL_16;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25311F228()
{
  result = qword_27F581FB0;
  if (!qword_27F581FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F581FB8, qword_2531508D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581FB0);
  }

  return result;
}

unint64_t sub_25311F290()
{
  result = qword_27F581FC0;
  if (!qword_27F581FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581FC0);
  }

  return result;
}

id sub_25311F2E4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 room];
  *a2 = result;
  return result;
}

id sub_25311F334@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 appleMediaDevice];
  *a2 = result;
  return result;
}

void sub_25311F384(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_253148B64();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_25311F3E8(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = sub_253148B54();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 *a5];
}

id HMCDAccessoryModel.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id HMCDAccessoryModel.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for HMCDAccessoryModel();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id HMCDAccessoryModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HMCDAccessoryModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_25311F5E0(void *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_25311F650(v2);
  return sub_2530D0B14;
}

void (*sub_25311F650(void *a1))(void ***a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_253148944();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[2] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
    v5[4] = v10;
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v10 = malloc(v9);
    v5[4] = v10;
    v11 = malloc(v9);
  }

  v12 = v11;
  v5[5] = v11;
  v13 = [v1 modelID];
  sub_253148924();

  (*(v8 + 32))(v12, v10, v6);
  return sub_2530D0CD8;
}

unint64_t sub_25311F7E8(uint64_t a1)
{
  result = sub_25311F810();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25311F810()
{
  result = qword_27F581FC8;
  if (!qword_27F581FC8)
  {
    type metadata accessor for HMCDAccessoryModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581FC8);
  }

  return result;
}

uint64_t sub_25311F864@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for HMCDAccessoryModel();
  result = sub_2531493E4();
  *a2 = result;
  return result;
}

uint64_t sub_25311F900()
{
  v0 = sub_253148A94();
  __swift_allocate_value_buffer(v0, qword_27F581FD0);
  __swift_project_value_buffer(v0, qword_27F581FD0);
  return sub_253148A84();
}

uint64_t sub_25311F9B8(unsigned __int8 a1)
{
  sub_253149814();
  MEMORY[0x259BFD420](a1);
  return sub_253149844();
}

uint64_t sub_25311FA1C(uint64_t a1)
{
  sub_253149814();
  sub_25311F990(v3, *v1);
  return sub_253149844();
}

uint64_t sub_25311FA5C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v51 = a2;
  v4 = *(*v2 + 88);
  v5 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = sub_2531491F4();
  v7 = *(v54 - 8);
  v8 = MEMORY[0x28223BE20](v54);
  v10 = &v49 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v8);
  v13 = &v49 - v12;
  v14 = *(v4 + 48);
  v53 = a1;
  v14(v5, v4);
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    (*(v7 + 8))(v10, v54);
    _s20ManagedObjectDecoderC5ErrorOMa(0, v5, v4, v15);
    swift_getWitnessTable();
    swift_allocError();
    *v16 = 1;
    return swift_willThrow();
  }

  (*(v11 + 32))(v13, v10, AssociatedTypeWitness);
  if (qword_27F5802E8 != -1)
  {
    swift_once();
  }

  v54 = v13;
  v50 = v11;
  v18 = sub_253148A94();
  v19 = __swift_project_value_buffer(v18, qword_27F581FD0);
  swift_unknownObjectRetain();
  v49 = v19;
  v20 = sub_253148A74();
  v21 = sub_2531490A4();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    v24 = (*(v4 + 40))(v5, v4);
    *(v22 + 4) = v24;
    *v23 = v24;
    _os_log_impl(&dword_2530B8000, v20, v21, "Checking for a match for %@", v22, 0xCu);
    sub_2530E9CB0(v23);
    MEMORY[0x259BFDC60](v23, -1, -1);
    MEMORY[0x259BFDC60](v22, -1, -1);
  }

  v25 = 0;
  v52 = v4 + 40;
  while (1)
  {
    v26 = byte_2864E9AE0[v25 + 32];
    if (v26 > 3)
    {
      if (byte_2864E9AE0[v25 + 32] > 5u)
      {
        if (v26 == 6)
        {
          v27 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice(0);
          v28 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice;
          v29 = &protocol conformance descriptor for HomesStore.Accessory.AppleMediaDevice;
          v30 = &qword_27F5806F0;
        }

        else
        {
          v27 = type metadata accessor for HomesStore.User.SharedSettings(0);
          v28 = type metadata accessor for HomesStore.User.SharedSettings;
          v29 = &protocol conformance descriptor for HomesStore.User.SharedSettings;
          v30 = &unk_27F5806E8;
        }
      }

      else if (v26 == 4)
      {
        v27 = type metadata accessor for HomesStore.User(0);
        v28 = type metadata accessor for HomesStore.User;
        v29 = &protocol conformance descriptor for HomesStore.User;
        v30 = &qword_27F580700;
      }

      else
      {
        v27 = type metadata accessor for HomesStore.Zone(0);
        v28 = type metadata accessor for HomesStore.Zone;
        v29 = &protocol conformance descriptor for HomesStore.Zone;
        v30 = &qword_27F5806F8;
      }
    }

    else if (byte_2864E9AE0[v25 + 32] > 1u)
    {
      if (v26 == 2)
      {
        v27 = type metadata accessor for HomesStore.Home(0);
        v28 = type metadata accessor for HomesStore.Home;
        v29 = &protocol conformance descriptor for HomesStore.Home;
        v30 = &qword_27F580710;
      }

      else
      {
        v27 = type metadata accessor for HomesStore.HomesRelationshipModel(0);
        v28 = type metadata accessor for HomesStore.HomesRelationshipModel;
        v29 = &protocol conformance descriptor for HomesStore.HomesRelationshipModel;
        v30 = &qword_27F580708;
      }
    }

    else if (byte_2864E9AE0[v25 + 32])
    {
      v27 = type metadata accessor for HomesStore.Room(0);
      v28 = type metadata accessor for HomesStore.Room;
      v29 = &protocol conformance descriptor for HomesStore.Room;
      v30 = &qword_27F580718;
    }

    else
    {
      v27 = type metadata accessor for HomesStore.Accessory(0);
      v28 = type metadata accessor for HomesStore.Accessory;
      v29 = &protocol conformance descriptor for HomesStore.Accessory;
      v30 = &qword_27F580720;
    }

    sub_2530F5D1C(v30, v28, v29);
    v31 = dynamic_cast_existential_2_conditional(v27, v27, &protocol descriptor for CoreDataRepresentable, &protocol descriptor for HomesStore.Model);
    if (!v31)
    {
      goto LABEL_8;
    }

    v34 = sub_2530EB040(v31, v32);
    v36 = v35;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v38 = (*(AssociatedConformanceWitness + 48))(v34, v36, AssociatedTypeWitness, AssociatedConformanceWitness);

    if (!v38)
    {
      goto LABEL_8;
    }

    v39 = (*(v4 + 40))(v5, v4);
    v40 = [v39 isKindOfEntity_];

    if (v40)
    {
      break;
    }

LABEL_8:
    if (++v25 == 8)
    {
      _s20ManagedObjectDecoderC5ErrorOMa(0, v5, v4, v33);
      swift_getWitnessTable();
      swift_allocError();
      *v41 = 0;
      swift_willThrow();
      return (*(v50 + 8))(v54, AssociatedTypeWitness);
    }
  }

  v42 = v38;
  v43 = sub_253148A74();
  v44 = sub_2531490A4();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v45 = 138412290;
    *(v45 + 4) = v42;
    *v46 = v38;
    v47 = v42;
    _os_log_impl(&dword_2530B8000, v43, v44, "Found known entity description %@", v45, 0xCu);
    sub_2530E9CB0(v46);
    MEMORY[0x259BFDC60](v46, -1, -1);
    MEMORY[0x259BFDC60](v45, -1, -1);
  }

  else
  {
    v47 = v43;
    v43 = v42;
  }

  v48 = v51;

  result = (*(v50 + 8))(v54, AssociatedTypeWitness);
  *v48 = v26;
  return result;
}

uint64_t sub_25312027C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  result = sub_25311FA5C(a1, v20);
  if (!v3)
  {
    v7 = HomesStore.ModelType.metaType.getter();
    v8 = dynamic_cast_existential_2_conditional(v7, v7, &protocol descriptor for CoreDataRepresentable, &protocol descriptor for HomesStore.Model);
    if (v8)
    {
      v21 = v8;
      v22 = v9;
      v23 = v10;
      v12 = v8;
      v13 = v9;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
      sub_25312041C(v12, v13, boxed_opaque_existential_0);
      v16 = v21;
      v17 = v23;
      v18 = __swift_project_boxed_opaque_existential_1(v20, v21);
      a2[3] = v16;
      a2[4] = v17;
      v19 = __swift_allocate_boxed_opaque_existential_0(a2);
      (*(*(v16 - 8) + 16))(v19, v18, v16);
      return __swift_destroy_boxed_opaque_existential_0(v20);
    }

    else
    {
      _s20ManagedObjectDecoderC5ErrorOMa(0, *(v5 + 80), *(v5 + 88), v11);
      swift_getWitnessTable();
      swift_allocError();
      *v15 = 0;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_25312041C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v18 = a3;
  v6 = *v3;
  v7 = sub_2531491F4();
  v17 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(v6 + 88);
  v12 = *(v6 + 80);
  (*(v11 + 56))(&v19, AssociatedTypeWitness, AssociatedTypeWitness, v12, v11);
  if (!v19)
  {
    goto LABEL_4;
  }

  (*(a2 + 32))(v19, a1, a2);
  v14 = *(a1 - 8);
  if ((*(v14 + 48))(v9, 1, a1) == 1)
  {
    (*(v17 + 8))(v9, v7);
LABEL_4:
    _s20ManagedObjectDecoderC5ErrorOMa(0, v12, v11, v13);
    swift_getWitnessTable();
    swift_allocError();
    *v15 = 0;
    return swift_willThrow();
  }

  return (*(v14 + 32))(v18, v9, a1);
}

uint64_t __swift_deallocate_boxed_opaque_existential_2(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x259BFDC60);
  }

  return result;
}

uint64_t HomesStore.Home.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_253148944();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HomesStore.Home.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for HomesStore.Home(0) + 20));

  return v1;
}

uint64_t type metadata accessor for HomesStore.Home(uint64_t a1)
{
  result = qword_28151F508;
  if (!qword_28151F508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HomesStore.Home.legacyUniqueIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HomesStore.Home(0) + 24);
  v4 = sub_253148944();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t static HomesStore.Home.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for HomesStore.Home(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v5 == *v7 && v6 == v7[1];
  if (!v8 && (sub_253149734() & 1) == 0)
  {
    return 0;
  }

  return _s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0();
}

unint64_t sub_2531209A0()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_2531209EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_253121C8C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_253120A14(uint64_t a1)
{
  v2 = sub_253120C88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_253120A50(uint64_t a1)
{
  v2 = sub_253120C88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomesStore.Home.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582108, &qword_253150BA8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_253120C88();
  sub_253149894();
  v11 = 0;
  sub_253148944();
  sub_253121A88(&qword_27F580630, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2531496D4();
  if (!v1)
  {
    type metadata accessor for HomesStore.Home(0);
    v10 = 1;
    sub_2531496B4();
    v9 = 2;
    sub_2531496D4();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_253120C88()
{
  result = qword_27F582110;
  if (!qword_27F582110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582110);
  }

  return result;
}

uint64_t HomesStore.Home.hash(into:)(uint64_t a1)
{
  sub_253148944();
  sub_253121A88(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253148B14();
  type metadata accessor for HomesStore.Home(0);
  sub_253148BB4();
  return sub_253148B14();
}

uint64_t HomesStore.Home.hashValue.getter()
{
  sub_253149814();
  sub_253148944();
  sub_253121A88(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253148B14();
  type metadata accessor for HomesStore.Home(0);
  sub_253148BB4();
  sub_253148B14();
  return sub_253149844();
}

uint64_t HomesStore.Home.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_253148944();
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v31 = (&v23 - v8);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582118, &qword_253150BB0);
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v10 = &v23 - v9;
  v11 = type metadata accessor for HomesStore.Home(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_253120C88();
  sub_253149884();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25 = v11;
  v26 = a1;
  v24 = v7;
  v14 = v28;
  v35 = 0;
  v15 = sub_253121A88(&qword_27F5805E8, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v16 = v29;
  sub_253149664();
  v23 = v15;
  v17 = *(v14 + 32);
  v17(v13, v31, v16);
  v34 = 1;
  v18 = sub_253149644();
  v31 = v17;
  v19 = v25;
  v20 = &v13[*(v25 + 20)];
  *v20 = v18;
  v20[1] = v21;
  v33 = 2;
  sub_253149664();
  (*(v30 + 8))(v10, v32);
  v31(&v13[*(v19 + 24)], v24, v16);
  sub_2531214D0(v13, v27);
  __swift_destroy_boxed_opaque_existential_0(v26);
  return sub_253121534(v13);
}

uint64_t sub_253121298(uint64_t a1)
{
  sub_253149814();
  sub_253148944();
  sub_253121A88(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253148B14();
  sub_253148BB4();
  sub_253148B14();
  return sub_253149844();
}

uint64_t sub_25312135C(uint64_t a1, uint64_t a2)
{
  sub_253148944();
  sub_253121A88(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253148B14();
  sub_253148BB4();
  return sub_253148B14();
}

uint64_t sub_253121410(uint64_t a1, uint64_t a2)
{
  sub_253149814();
  sub_253148944();
  sub_253121A88(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253148B14();
  sub_253148BB4();
  sub_253148B14();
  return sub_253149844();
}

uint64_t sub_2531214D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.Home(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_253121534(uint64_t a1)
{
  v2 = type metadata accessor for HomesStore.Home(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_253121590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_253149734() & 1) == 0)
  {
    return 0;
  }

  return _s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0();
}

uint64_t sub_253121664(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582180, &unk_253150F00);
  swift_allocObject();

  v3 = sub_253142DEC(v2);

  qword_27F5820E8 = v3;
  return result;
}

uint64_t sub_2531216F8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582178, qword_253150EC0);
  swift_allocObject();

  v3 = sub_253143230(v2);

  qword_27F5820F0 = v3;
  return result;
}

uint64_t static PartialModelRelationshipDescriptor<>.rooms.getter()
{
  return sub_2530EABF8(&qword_27F5802F8, &qword_27F5820F0, sub_2531216F8);
}

{
  if (qword_27F580320 != -1)
  {
    swift_once();
  }
}

uint64_t sub_25312178C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582170, &unk_253150E88);
  swift_allocObject();

  v3 = sub_25314326C(v2);

  qword_27F5820F8 = v3;
  return result;
}

uint64_t sub_253121820(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582168, &unk_253150E50);
  swift_allocObject();

  v3 = sub_2531432A8(v2);

  qword_27F582100 = v3;
  return result;
}

uint64_t sub_2531218B4(void *a1)
{
  a1[1] = sub_253121A88(&qword_28151F518, type metadata accessor for HomesStore.Home, &protocol conformance descriptor for HomesStore.Home);
  a1[2] = sub_253121A88(&qword_27F582128, type metadata accessor for HomesStore.Home, &protocol conformance descriptor for HomesStore.Home);
  a1[3] = sub_253121A88(&qword_27F582130, type metadata accessor for HomesStore.Home, &protocol conformance descriptor for HomesStore.Home);
  a1[4] = sub_253121A88(&qword_27F582138, type metadata accessor for HomesStore.Home, &protocol conformance descriptor for HomesStore.Home);
  result = sub_253121A88(&qword_27F582140, type metadata accessor for HomesStore.Home, &protocol conformance descriptor for HomesStore.Home);
  a1[5] = result;
  return result;
}

uint64_t sub_253121A88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_253121AF8(uint64_t a1)
{
  result = sub_253148944();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_253121B88()
{
  result = qword_27F582150;
  if (!qword_27F582150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582150);
  }

  return result;
}

unint64_t sub_253121BE0()
{
  result = qword_27F582158;
  if (!qword_27F582158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582158);
  }

  return result;
}

unint64_t sub_253121C38()
{
  result = qword_27F582160;
  if (!qword_27F582160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582160);
  }

  return result;
}

uint64_t sub_253121C8C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_253149734() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_253149734() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x800000025314B480 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_253149734();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

id sub_253121DA4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 accessory];
  *a2 = result;
  return result;
}

void sub_253121DF4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 idsDestination];
  if (v3)
  {
    v4 = v3;
    v5 = sub_253148B64();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_253121E5C(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = sub_253148B54();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setIdsDestination_];
}

id HMCDAppleMediaDeviceModel.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id HMCDAppleMediaDeviceModel.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for HMCDAppleMediaDeviceModel();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id HMCDAppleMediaDeviceModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HMCDAppleMediaDeviceModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_253122054(void *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_2531220C4(v2);
  return sub_2530D0B14;
}

void (*sub_2531220C4(void *a1))(void ***a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_253148944();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[2] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
    v5[4] = v10;
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v10 = malloc(v9);
    v5[4] = v10;
    v11 = malloc(v9);
  }

  v12 = v11;
  v5[5] = v11;
  v13 = [v1 modelID];
  sub_253148924();

  (*(v8 + 32))(v12, v10, v6);
  return sub_2530D0CD8;
}

unint64_t sub_25312225C(uint64_t a1)
{
  result = sub_253122284();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_253122284()
{
  result = qword_27F582188;
  if (!qword_27F582188)
  {
    type metadata accessor for HMCDAppleMediaDeviceModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582188);
  }

  return result;
}

uint64_t sub_2531222D8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for HMCDAppleMediaDeviceModel();
  result = sub_2531493E4();
  *a2 = result;
  return result;
}

uint64_t sub_253122330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580568, &qword_25314BDB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_25311A0C8(a3, v22 - v9);
  v11 = sub_253148DE4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_2530CD33C(v10, &qword_27F580568, &qword_25314BDB0);
  }

  else
  {
    sub_253148DD4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_253148D84();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_253148B94() + 32;

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

      sub_2530CD33C(a3, &qword_27F580568, &qword_25314BDB0);

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

  sub_2530CD33C(a3, &qword_27F580568, &qword_25314BDB0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2531225CC()
{
  v0 = sub_253148A94();
  __swift_allocate_value_buffer(v0, qword_27F582190);
  __swift_project_value_buffer(v0, qword_27F582190);
  return sub_253148A84();
}

id sub_253122680()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for XPCClientProxy(uint64_t a1)
{
  result = qword_27F5821B8;
  if (!qword_27F5821B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2531227D0(uint64_t a1)
{
  sub_2531228D4(319, &qword_27F5821C8, sub_2530CB1C0);
  if (v1 <= 0x3F)
  {
    sub_2531228D4(319, &qword_27F5821D0, type metadata accessor for HomesStore);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2531228D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2531489A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_253122928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_25312294C, 0, 0);
}

uint64_t sub_25312294C()
{
  v25 = v0;
  HomesStore.ModelType.init(rawValue:)(*(v0 + 72), v24);
  v1 = v24[0];
  if (v24[0] == 8)
  {
    sub_253126A1C();
    swift_allocError();
    *v2 = 0;
    v2[1] = 0;
    swift_willThrow();
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    if (qword_27F580310 != -1)
    {
      swift_once();
    }

    v5 = sub_253148A94();
    *(v0 + 88) = __swift_project_value_buffer(v5, qword_27F582190);
    v6 = sub_253148A74();
    v7 = sub_253149094();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v24 = v9;
      v10 = 0xE900000000000079;
      v11 = 0x726F737365636341;
      *v8 = 136315138;
      v12 = 0x800000025314AB30;
      v13 = 0xD000000000000012;
      if (v1 == 6)
      {
        v13 = 0xD000000000000010;
      }

      else
      {
        v12 = 0x800000025314AB10;
      }

      v14 = 1919251285;
      if (v1 != 4)
      {
        v14 = 1701736282;
      }

      if (v1 <= 5)
      {
        v13 = v14;
        v12 = 0xE400000000000000;
      }

      v15 = 0xE400000000000000;
      v16 = 0xD000000000000016;
      if (v1 == 2)
      {
        v16 = 1701670728;
      }

      else
      {
        v15 = 0x800000025314AB50;
      }

      if (v1)
      {
        v11 = 1836019538;
        v10 = 0xE400000000000000;
      }

      if (v1 > 1)
      {
        v11 = v16;
        v10 = v15;
      }

      if (v1 <= 3)
      {
        v17 = v11;
      }

      else
      {
        v17 = v13;
      }

      if (v1 <= 3)
      {
        v18 = v10;
      }

      else
      {
        v18 = v12;
      }

      v19 = sub_253146498(v17, v18, v24);

      *(v8 + 4) = v19;
      _os_log_impl(&dword_2530B8000, v6, v7, "Fetch models: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x259BFDC60](v9, -1, -1);
      MEMORY[0x259BFDC60](v8, -1, -1);
    }

    *(v0 + 136) = v1;
    v20 = HomesStore.ModelType.metaType.getter();
    v22 = v21;
    *(v0 + 96) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581DF8, &qword_2531503B0);
    sub_253148994();
    *(v0 + 104) = *(v0 + 56);
    v23 = swift_task_alloc();
    *(v0 + 112) = v23;
    *v23 = v0;
    v23[1] = sub_253122CA4;

    return sub_2531132A0(v20, v20, v22);
  }
}

uint64_t sub_253122CA4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_253123168;
  }

  else
  {

    *(v4 + 128) = a1;
    v5 = sub_253122DD4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_253122DD4()
{
  v36 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581378, &unk_25314D910);
  v4 = sub_253149534();

  v5 = sub_253148A74();
  v6 = sub_2531490A4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v1 = swift_slowAlloc();
    v35 = v1;
    *v7 = 136315138;
    v8 = MEMORY[0x259BFC8A0](v4, v3);
    v3 = v9;
    v2 = sub_253146498(v8, v9, &v35);

    *(v7 + 4) = v2;
    _os_log_impl(&dword_2530B8000, v5, v6, "Got models: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v1);
    MEMORY[0x259BFDC60](v1, -1, -1);
    MEMORY[0x259BFDC60](v7, -1, -1);
  }

  v10 = *(v4 + 16);
  v11 = v34;
  if (v10)
  {
    v35 = MEMORY[0x277D84F90];
    sub_2530F4F38(0, v10, 0);
    v12 = *(v4 + 16);
    if (!v12)
    {
      goto LABEL_23;
    }

    v13 = v35;
    v14 = v34[15];
    sub_2530C25FC(v4 + 32, (v34 + 2));
    v15 = v34[5];
    v16 = v34[6];
    __swift_project_boxed_opaque_existential_1(v34 + 2, v15);
    v17 = sub_253110940(v15, *(v16 + 16));
    if (v14)
    {

      __swift_destroy_boxed_opaque_existential_0(v34 + 2);

      v19 = v34[1];
      goto LABEL_13;
    }

    v1 = v18;
    v2 = v17;
    __swift_destroy_boxed_opaque_existential_0(v34 + 2);
    v6 = *(v13 + 16);
    v12 = *(v13 + 24);
    v3 = v6 + 1;
    v20 = v13;
    if (v6 >= v12 >> 1)
    {
      goto LABEL_24;
    }

    while (1)
    {
      *(v20 + 16) = v3;
      v21 = v20 + 16 * v6;
      *(v21 + 32) = v2;
      *(v21 + 40) = v1;
      if (v10 == 1)
      {
        break;
      }

      v1 = (v4 + 72);
      v23 = 1;
      v11 = v34;
      while (1)
      {
        v12 = *(v4 + 16);
        if (v23 >= v12)
        {
          break;
        }

        v24 = v20;
        v25 = v4;
        v26 = v10;
        sub_2530C25FC(v1, (v11 + 2));
        v27 = v11[5];
        v28 = v11[6];
        __swift_project_boxed_opaque_existential_1(v11 + 2, v27);
        v2 = sub_253110940(v27, *(v28 + 16));
        v30 = v29;
        __swift_destroy_boxed_opaque_existential_0(v11 + 2);
        v20 = v24;
        v35 = v24;
        v6 = *(v24 + 16);
        v31 = *(v20 + 24);
        v3 = v6 + 1;
        if (v6 >= v31 >> 1)
        {
          sub_2530F4F38((v31 > 1), v6 + 1, 1);
          v20 = v35;
        }

        ++v23;
        *(v20 + 16) = v3;
        v32 = v20 + 16 * v6;
        *(v32 + 32) = v2;
        *(v32 + 40) = v30;
        v1 += 5;
        v10 = v26;
        v33 = v26 == v23;
        v4 = v25;
        v11 = v34;
        if (v33)
        {
          goto LABEL_11;
        }
      }

LABEL_23:
      __break(1u);
LABEL_24:
      sub_2530F4F38((v12 > 1), v3, 1);
      v20 = v35;
    }

    v11 = v34;
LABEL_11:
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
  }

  *v11[8] = v20;
  v19 = v11[1];
LABEL_13:

  return v19();
}

uint64_t sub_253123168()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_25312347C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_253148C84();
    if (a2)
    {
LABEL_3:
      v6 = sub_253148834();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_253123514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v3[13] = a1;
  v4 = sub_253148944();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2531235D8, 0, 0);
}

uint64_t sub_2531235D8()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  *(v0 + 152) = v2;
  v3 = MEMORY[0x277D84F98];
  if (!v2)
  {
LABEL_17:
    **(v0 + 104) = v3;

    v7 = *(v0 + 8);

    return v7();
  }

  v4 = 0;
  *(v0 + 160) = *MEMORY[0x277CCA308];
  v5 = v1 + 32;
  while (1)
  {
    *(v0 + 176) = v4;
    *(v0 + 184) = v3;
    *(v0 + 168) = v3;
    v6 = *(v5 + 8 * v4);
    if (v6 > 3)
    {
      break;
    }

    if (v6 > 1)
    {
      if (v6 == 2)
      {
        v9 = type metadata accessor for HomesStore.Home(0);
        v10 = &qword_27F580710;
        v11 = type metadata accessor for HomesStore.Home;
        v12 = &protocol conformance descriptor for HomesStore.Home;
      }

      else
      {
        v9 = type metadata accessor for HomesStore.HomesRelationshipModel(0);
        v10 = &qword_27F580708;
        v11 = type metadata accessor for HomesStore.HomesRelationshipModel;
        v12 = &protocol conformance descriptor for HomesStore.HomesRelationshipModel;
      }

      goto LABEL_24;
    }

    if (!v6)
    {
      v9 = type metadata accessor for HomesStore.Accessory(0);
      v10 = &qword_27F580720;
      v11 = type metadata accessor for HomesStore.Accessory;
      v12 = &protocol conformance descriptor for HomesStore.Accessory;
      goto LABEL_24;
    }

    if (v6 == 1)
    {
      v9 = type metadata accessor for HomesStore.Room(0);
      v10 = &qword_27F580718;
      v11 = type metadata accessor for HomesStore.Room;
      v12 = &protocol conformance descriptor for HomesStore.Room;
      goto LABEL_24;
    }

LABEL_3:
    if (v2 == ++v4)
    {
      goto LABEL_17;
    }
  }

  if (v6 > 5)
  {
    if (v6 == 6)
    {
      v9 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice(0);
      v10 = &qword_27F5806F0;
      v11 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice;
      v12 = &protocol conformance descriptor for HomesStore.Accessory.AppleMediaDevice;
      goto LABEL_24;
    }

    if (v6 == 7)
    {
      v9 = type metadata accessor for HomesStore.User.SharedSettings(0);
      v10 = &unk_27F5806E8;
      v11 = type metadata accessor for HomesStore.User.SharedSettings;
      v12 = &protocol conformance descriptor for HomesStore.User.SharedSettings;
      goto LABEL_24;
    }

    goto LABEL_3;
  }

  if (v6 == 4)
  {
    v9 = type metadata accessor for HomesStore.User(0);
    v10 = &qword_27F580700;
    v11 = type metadata accessor for HomesStore.User;
    v12 = &protocol conformance descriptor for HomesStore.User;
  }

  else
  {
    v9 = type metadata accessor for HomesStore.Zone(0);
    v10 = &qword_27F5806F8;
    v11 = type metadata accessor for HomesStore.Zone;
    v12 = &protocol conformance descriptor for HomesStore.Zone;
  }

LABEL_24:
  v13 = sub_253126C64(v10, v11, v12);
  *(v0 + 192) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581DF8, &qword_2531503B0);
  sub_253148994();
  *(v0 + 200) = *(v0 + 80);
  v14 = swift_task_alloc();
  *(v0 + 208) = v14;
  *v14 = v0;
  v14[1] = sub_253123980;

  return sub_2531132A0(v9, v9, v13);
}

uint64_t sub_253123980(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {

    v5 = sub_253124474;
  }

  else
  {
    *(v4 + 224) = a1;
    v5 = sub_253123AC4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

unint64_t sub_253123AC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581378, &unk_25314D910);
  v1 = sub_253149534();

  v2 = *(v1 + 16);
  v91 = v0;
  if (!v2)
  {

    v29 = MEMORY[0x277D84F90];
LABEL_14:
    v30 = v0[21];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v0[12] = v30;
    v32 = v0;
    v33 = v29[2];
    v90 = v29;
    if (!v33)
    {
      v35 = v32[21];
      goto LABEL_30;
    }

    v34 = isUniquelyReferenced_nonNull_native;
    v35 = v32[21];
    v37 = v29[6];
    v36 = v29[7];
    v39 = v29[4];
    v38 = v29[5];

    sub_2530CAA1C(v37, v36);
    if (!v38)
    {
      goto LABEL_30;
    }

    result = sub_25311D908(v39, v38);
    v41 = v35[2];
    v42 = (v40 & 1) == 0;
    v43 = __OFADD__(v41, v42);
    v44 = v41 + v42;
    if (v43)
    {
LABEL_64:
      __break(1u);
    }

    else
    {
      v45 = v40;
      if (v35[3] >= v44)
      {
        if ((v34 & 1) == 0)
        {
          v47 = result;
          sub_25312C758();
          result = v47;
        }
      }

      else
      {
        sub_25312E3F0(v44, v34);
        result = sub_25311D908(v39, v38);
        if ((v45 & 1) != (v46 & 1))
        {
LABEL_19:

          return sub_253149784();
        }
      }

      v35 = v91[12];
      if (v45)
      {
        v48 = result;

        v49 = (v35[7] + 16 * v48);
        v50 = *v49;
        v51 = v49[1];
        *v49 = v37;
        v49[1] = v36;
        sub_2530C2478(v50, v51);
        v52 = v33 - 1;
        if (v52)
        {
LABEL_45:
          v60 = v90 + 11;
          do
          {
            v66 = *(v60 - 1);
            v65 = *v60;
            v68 = *(v60 - 3);
            v67 = *(v60 - 2);

            sub_2530CAA1C(v66, v65);
            if (!v67)
            {
              break;
            }

            result = sub_25311D908(v68, v67);
            v70 = v35[2];
            v71 = (v69 & 1) == 0;
            v43 = __OFADD__(v70, v71);
            v72 = v70 + v71;
            if (v43)
            {
              goto LABEL_64;
            }

            v73 = v69;
            if (v35[3] < v72)
            {
              sub_25312E3F0(v72, 1);
              result = sub_25311D908(v68, v67);
              if ((v73 & 1) != (v74 & 1))
              {
                goto LABEL_19;
              }
            }

            v35 = v91[12];
            if (v73)
            {
              v61 = result;

              v62 = (v35[7] + 16 * v61);
              v63 = *v62;
              v64 = v62[1];
              *v62 = v66;
              v62[1] = v65;
              sub_2530C2478(v63, v64);
            }

            else
            {
              v35[(result >> 6) + 8] |= 1 << result;
              v75 = (v35[6] + 16 * result);
              *v75 = v68;
              v75[1] = v67;
              v76 = (v35[7] + 16 * result);
              *v76 = v66;
              v76[1] = v65;
              v77 = v35[2];
              v43 = __OFADD__(v77, 1);
              v78 = v77 + 1;
              if (v43)
              {
                goto LABEL_65;
              }

              v35[2] = v78;
            }

            v60 += 4;
          }

          while (--v52);
        }

LABEL_30:

        v57 = v91[22] + 5;
        v58 = 1 - v91[19];
        while (1)
        {
          while (1)
          {
            if (v58 + v57 == 5)
            {
              *v91[13] = v35;

              v28 = v91[1];
              goto LABEL_11;
            }

            v91[22] = v57 - 4;
            v91[23] = v35;
            v91[21] = v35;
            v59 = *(v91[14] + 8 * v57++);
            if (v59 > 3)
            {
              break;
            }

            if (v59 > 1)
            {
              if (v59 == 2)
              {
                v79 = type metadata accessor for HomesStore.Home(0);
                v80 = &qword_27F580710;
                v81 = type metadata accessor for HomesStore.Home;
                v82 = &protocol conformance descriptor for HomesStore.Home;
              }

              else
              {
                v79 = type metadata accessor for HomesStore.HomesRelationshipModel(0);
                v80 = &qword_27F580708;
                v81 = type metadata accessor for HomesStore.HomesRelationshipModel;
                v82 = &protocol conformance descriptor for HomesStore.HomesRelationshipModel;
              }

              goto LABEL_60;
            }

            if (!v59)
            {
              v79 = type metadata accessor for HomesStore.Accessory(0);
              v80 = &qword_27F580720;
              v81 = type metadata accessor for HomesStore.Accessory;
              v82 = &protocol conformance descriptor for HomesStore.Accessory;
              goto LABEL_60;
            }

            if (v59 == 1)
            {
              v79 = type metadata accessor for HomesStore.Room(0);
              v80 = &qword_27F580718;
              v81 = type metadata accessor for HomesStore.Room;
              v82 = &protocol conformance descriptor for HomesStore.Room;
              goto LABEL_60;
            }
          }

          if (v59 <= 5)
          {
            break;
          }

          if (v59 == 6)
          {
            v79 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice(0);
            v80 = &qword_27F5806F0;
            v81 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice;
            v82 = &protocol conformance descriptor for HomesStore.Accessory.AppleMediaDevice;
            goto LABEL_60;
          }

          if (v59 == 7)
          {
            v79 = type metadata accessor for HomesStore.User.SharedSettings(0);
            v80 = &unk_27F5806E8;
            v81 = type metadata accessor for HomesStore.User.SharedSettings;
            v82 = &protocol conformance descriptor for HomesStore.User.SharedSettings;
            goto LABEL_60;
          }
        }

        if (v59 == 4)
        {
          v79 = type metadata accessor for HomesStore.User(0);
          v80 = &qword_27F580700;
          v81 = type metadata accessor for HomesStore.User;
          v82 = &protocol conformance descriptor for HomesStore.User;
        }

        else
        {
          v79 = type metadata accessor for HomesStore.Zone(0);
          v80 = &qword_27F5806F8;
          v81 = type metadata accessor for HomesStore.Zone;
          v82 = &protocol conformance descriptor for HomesStore.Zone;
        }

LABEL_60:
        v83 = sub_253126C64(v80, v81, v82);
        v91[24] = v79;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581DF8, &qword_2531503B0);
        sub_253148994();
        v91[25] = v91[10];
        v84 = swift_task_alloc();
        v91[26] = v84;
        *v84 = v91;
        v84[1] = sub_253123980;

        return sub_2531132A0(v79, v79, v83);
      }

      v35[(result >> 6) + 8] |= 1 << result;
      v53 = (v35[6] + 16 * result);
      *v53 = v39;
      v53[1] = v38;
      v54 = (v35[7] + 16 * result);
      *v54 = v37;
      v54[1] = v36;
      v55 = v35[2];
      v43 = __OFADD__(v55, 1);
      v56 = v55 + 1;
      if (!v43)
      {
        v35[2] = v56;
        v52 = v33 - 1;
        if (v52)
        {
          goto LABEL_45;
        }

        goto LABEL_30;
      }
    }

LABEL_65:
    __break(1u);
    return result;
  }

  v0[11] = MEMORY[0x277D84F90];
  sub_2530F4F58(0, v2, 0);
  v3 = 0;
  v4 = v0[11];
  result = v1 + 32;
  v6 = v0[27];
  v85 = v2;
  v86 = v1;
  while (1)
  {
    if (v3 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_64;
    }

    v88 = result;
    v89 = v4;
    sub_2530C25FC(result, (v0 + 2));
    v8 = v0[5];
    v7 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
    v9 = sub_253110940(v8, *(v7 + 16));
    if (v6)
    {
      break;
    }

    v11 = v9;
    v12 = v10;
    v14 = v0[17];
    v13 = v0[18];
    v15 = v0[16];
    v16 = v0[5];
    v17 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v16);
    sub_2530D2104(v16, v17);
    __swift_project_boxed_opaque_existential_1(v91 + 2, v0[5]);
    sub_2530CAA1C(v11, v12);
    v0 = v91;
    sub_2531493D4();
    v18 = sub_2531488F4();
    v87 = v19;
    (*(v14 + 8))(v13, v15);
    *(v91 + 56) = v92;
    v91[8] = v11;
    v91[9] = v12;
    v20 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
    sub_253148B64();
    sub_253126F04();
    sub_2531490D4();

    [v20 finishEncoding];
    v21 = [v20 encodedData];
    v22 = sub_2531488B4();
    v24 = v23;
    sub_2530C2478(v11, v12);
    sub_2530C2478(v11, v12);

    __swift_destroy_boxed_opaque_existential_0(v91 + 2);
    v4 = v89;
    v91[11] = v89;
    v26 = v89[2];
    v25 = v89[3];
    if (v26 >= v25 >> 1)
    {
      sub_2530F4F58((v25 > 1), v26 + 1, 1);
      v4 = v91[11];
    }

    v6 = 0;
    ++v3;
    v4[2] = v26 + 1;
    v27 = &v4[4 * v26];
    v27[4] = v18;
    v27[5] = v87;
    v27[6] = v22;
    v27[7] = v24;
    result = v88 + 40;
    v1 = v86;
    if (v85 == v3)
    {
      v29 = v4;

      goto LABEL_14;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v28 = v0[1];
LABEL_11:

  return v28();
}

uint64_t sub_253124474()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_2531247AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_253148AC4();
    if (a2)
    {
LABEL_3:
      v6 = sub_253148834();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_253124854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580568, &qword_25314BDB0);
  v4[14] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807D8, &unk_25314D920);
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580770, &qword_25314C4D8);
  v4[18] = v6;
  v7 = *(v6 - 8);
  v4[19] = v7;
  v4[20] = *(v7 + 64);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v8 = type metadata accessor for HomesStore.AnyChanges(0);
  v4[23] = v8;
  v9 = *(v8 - 8);
  v4[24] = v9;
  v4[25] = *(v9 + 64);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253124A48, 0, 0);
}

uint64_t sub_253124A48()
{
  if (qword_27F580310 != -1)
  {
    swift_once();
  }

  v1 = sub_253148A94();
  __swift_project_value_buffer(v1, qword_27F582190);
  v2 = sub_253148A74();
  v3 = sub_253149094();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2530B8000, v2, v3, "Registering subscriber", v4, 2u);
    MEMORY[0x259BFDC60](v4, -1, -1);
  }

  v5 = *(v0 + 88);

  v6 = *(v5 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
LABEL_29:
    v48 = *(v0 + 200);
    v46 = *(v0 + 208);
    v47 = *(v0 + 192);
    v20 = *(v0 + 176);
    v44 = *(v0 + 216);
    v45 = *(v0 + 184);
    v51 = *(v0 + 168);
    v21 = *(v0 + 152);
    v43 = *(v0 + 144);
    v22 = *(v0 + 128);
    v23 = *(v0 + 136);
    v24 = *(v0 + 120);
    v41 = *(v0 + 112);
    v49 = *(v0 + 104);
    v50 = *(v0 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581DF8, &qword_2531503B0);
    sub_253148994();
    v25 = *(v0 + 72);
    type metadata accessor for AnyModelStateChange(0);
    (*(v22 + 104))(v23, *MEMORY[0x277D858A0], v24);
    v40 = v20;
    sub_253148ED4();
    (*(v22 + 8))(v23, v24);
    v26 = sub_253148DE4();
    v42 = *(*(v26 - 8) + 56);
    v42(v41, 1, 1, v26);
    sub_2530C25FC(v25 + 16, v0 + 16);
    (*(v21 + 16))(v51, v20, v43);
    v27 = (*(v21 + 80) + 80) & ~*(v21 + 80);
    v28 = swift_allocObject();
    *(v28 + 2) = 0;
    *(v28 + 3) = 0;
    *(v28 + 4) = v7;
    sub_2530E8468((v0 + 16), (v28 + 40));
    (*(v21 + 32))(&v28[v27], v51, v43);
    v29 = sub_253112858(0, 0, v41, &unk_25314D930, v28);

    (*(v21 + 8))(v40, v43);
    *(v44 + *(v45 + 20)) = v29;
    v42(v41, 1, 1, v26);
    sub_253126A70(v44, v46);
    v30 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = 0;
    sub_253126BFC(v46, v31 + v30, type metadata accessor for HomesStore.AnyChanges);
    *(v31 + ((v48 + v30 + 7) & 0xFFFFFFFFFFFFFFF8)) = v49;
    swift_unknownObjectRetain();
    v32 = sub_253122330(0, 0, v41, &unk_253150FF0, v31);
    v33 = type metadata accessor for XPCPublisher();
    v34 = objc_allocWithZone(v33);
    v35 = &v34[OBJC_IVAR____TtC11HomeKitCore12XPCPublisher_cancelationHandler];
    *v35 = sub_253126BF4;
    v35[1] = v32;
    *(v0 + 56) = v34;
    *(v0 + 64) = v33;
    v36 = objc_msgSendSuper2((v0 + 56), sel_init);
    sub_253126CAC(v44, type metadata accessor for HomesStore.AnyChanges);
    *v50 = v36;

    v37 = *(v0 + 8);
    goto LABEL_30;
  }

  v8 = *(v0 + 88);
  v52 = MEMORY[0x277D84F90];
  sub_2530F4E54(0, v6, 0);
  v9 = (v8 + 32);
  v7 = v52;
  while (1)
  {
    v11 = *v9++;
    v10 = v11;
    if (v11 > 3)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v12 = type metadata accessor for HomesStore.Home(0);
        v13 = type metadata accessor for HomesStore.Home;
        v14 = &protocol conformance descriptor for HomesStore.Home;
        v15 = &qword_27F580710;
      }

      else
      {
        if (v10 != 3)
        {
          goto LABEL_33;
        }

        v12 = type metadata accessor for HomesStore.HomesRelationshipModel(0);
        v13 = type metadata accessor for HomesStore.HomesRelationshipModel;
        v14 = &protocol conformance descriptor for HomesStore.HomesRelationshipModel;
        v15 = &qword_27F580708;
      }
    }

    else if (v10)
    {
      if (v10 != 1)
      {
        goto LABEL_33;
      }

      v12 = type metadata accessor for HomesStore.Room(0);
      v13 = type metadata accessor for HomesStore.Room;
      v14 = &protocol conformance descriptor for HomesStore.Room;
      v15 = &qword_27F580718;
    }

    else
    {
      v12 = type metadata accessor for HomesStore.Accessory(0);
      v13 = type metadata accessor for HomesStore.Accessory;
      v14 = &protocol conformance descriptor for HomesStore.Accessory;
      v15 = &qword_27F580720;
    }

LABEL_26:
    v16 = sub_253126C64(v15, v13, v14);
    v18 = *(v52 + 16);
    v17 = *(v52 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_2530F4E54((v17 > 1), v18 + 1, 1);
    }

    *(v52 + 16) = v18 + 1;
    v19 = v52 + 16 * v18;
    *(v19 + 32) = v12;
    *(v19 + 40) = v16;
    if (!--v6)
    {
      goto LABEL_29;
    }
  }

  if (v10 <= 5)
  {
    if (v10 == 4)
    {
      v12 = type metadata accessor for HomesStore.User(0);
      v13 = type metadata accessor for HomesStore.User;
      v14 = &protocol conformance descriptor for HomesStore.User;
      v15 = &qword_27F580700;
    }

    else
    {
      if (v10 != 5)
      {
        goto LABEL_33;
      }

      v12 = type metadata accessor for HomesStore.Zone(0);
      v13 = type metadata accessor for HomesStore.Zone;
      v14 = &protocol conformance descriptor for HomesStore.Zone;
      v15 = &qword_27F5806F8;
    }

    goto LABEL_26;
  }

  if (v10 == 6)
  {
    v12 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice(0);
    v13 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice;
    v14 = &protocol conformance descriptor for HomesStore.Accessory.AppleMediaDevice;
    v15 = &qword_27F5806F0;
    goto LABEL_26;
  }

  if (v10 == 7)
  {
    v12 = type metadata accessor for HomesStore.User.SharedSettings(0);
    v13 = type metadata accessor for HomesStore.User.SharedSettings;
    v14 = &protocol conformance descriptor for HomesStore.User.SharedSettings;
    v15 = &unk_27F5806E8;
    goto LABEL_26;
  }

LABEL_33:
  sub_253126A1C();
  swift_allocError();
  *v39 = 0;
  v39[1] = 0;
  swift_willThrow();

  v37 = *(v0 + 8);
LABEL_30:

  return v37();
}

uint64_t sub_253125264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = type metadata accessor for AnyModelStateChange(0);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5821E0, &qword_253150FF8);
  v5[8] = swift_task_alloc();
  v7 = type metadata accessor for XPCModelStateChange(0);
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807B0, &qword_25314D460);
  v5[12] = swift_task_alloc();
  v5[13] = type metadata accessor for HomesStore.AnyChanges.AsyncIterator(0);
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253125420, 0, 0);
}

uint64_t sub_253125420()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807C8, &qword_25314D940);
  sub_253148E54();
  *(v1 + *(v2 + 20)) = *(v3 + *(type metadata accessor for HomesStore.AnyChanges(0) + 20));
  v0[15] = *MEMORY[0x277CCA308];
  v4 = sub_253126C64(&qword_27F581380, type metadata accessor for HomesStore.AnyChanges.AsyncIterator, &protocol conformance descriptor for HomesStore.AnyChanges.AsyncIterator);

  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_253125558;
  v6 = v0[13];
  v7 = v0[12];

  return MEMORY[0x282200308](v7, v6, v4);
}

uint64_t sub_253125558()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_253125A38;
  }

  else
  {
    v2 = sub_25312566C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25312566C()
{
  v1 = v0[12];
  v2 = (*(v0[6] + 48))(v1, 1, v0[5]);
  v3 = v0[7];
  v4 = v0[8];
  if (v2 == 1)
  {
    sub_253126CAC(v0[14], type metadata accessor for HomesStore.AnyChanges.AsyncIterator);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[9];
    v8 = v0[10];
    sub_253126BFC(v1, v0[7], type metadata accessor for AnyModelStateChange);
    sub_2530C03E0(v3, v4);
    if ((*(v8 + 48))(v4, 1, v7) == 1)
    {
      sub_2530CD33C(v0[8], &qword_27F5821E0, &qword_253150FF8);
    }

    else
    {
      v9 = v0[17];
      sub_253126BFC(v0[8], v0[11], type metadata accessor for XPCModelStateChange);
      v10 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
      sub_253148B64();
      sub_253126C64(&qword_27F5821E8, type metadata accessor for XPCModelStateChange, &unk_25314BEA4);
      sub_2531490D4();
      v11 = v0[11];
      if (v9)
      {
      }

      else
      {
        v12 = v0[4];

        [v10 finishEncoding];
        v13 = [v10 encodedData];
        v14 = sub_2531488B4();
        v16 = v15;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581668, &qword_25314E458);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_25314D290;
        *(v17 + 32) = v14;
        *(v17 + 40) = v16;
        sub_2530CAA1C(v14, v16);
        v18 = sub_253148C84();

        [v12 modelStatesDidUpdate_];

        sub_2530C2478(v14, v16);
      }

      sub_253126CAC(v11, type metadata accessor for XPCModelStateChange);
    }

    v19 = sub_253126C64(&qword_27F581380, type metadata accessor for HomesStore.AnyChanges.AsyncIterator, &protocol conformance descriptor for HomesStore.AnyChanges.AsyncIterator);
    v20 = swift_task_alloc();
    v0[16] = v20;
    *v20 = v0;
    v20[1] = sub_253125558;
    v21 = v0[13];
    v22 = v0[12];

    return MEMORY[0x282200308](v22, v21, v19);
  }
}

uint64_t sub_253125A38()
{
  *(v0 + 16) = *(v0 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580730, &qword_25314F190);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_253125ACC, 0, 0);
}

uint64_t sub_253125ACC()
{
  sub_253126CAC(*(v0 + 112), type metadata accessor for HomesStore.AnyChanges.AsyncIterator);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_253125B88(uint64_t a1)
{
  if (qword_27F580310 != -1)
  {
    swift_once();
  }

  v1 = sub_253148A94();
  __swift_project_value_buffer(v1, qword_27F582190);
  v2 = sub_253148A74();
  v3 = sub_253149094();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2530B8000, v2, v3, "Subscription terminated", v4, 2u);
    MEMORY[0x259BFDC60](v4, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580730, &qword_25314F190);

  return sub_253148EA4();
}

void sub_253125FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_253148834();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_253126054(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581DF8, &qword_2531503B0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2530CD684;

  return sub_253124854(a1, v6, v1 + v5, v7);
}

uint64_t sub_25312617C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v7[5] = v8;
  *v8 = v7;
  v8[1] = sub_253126270;

  return v10(v7 + 2);
}

uint64_t sub_253126270()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_253127198;
  }

  else
  {
    v2 = sub_25312719C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_253126384(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v7[5] = v8;
  *v8 = v7;
  v8[1] = sub_253126478;

  return v10(v7 + 2);
}

uint64_t sub_253126478()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_253127198;
  }

  else
  {
    v2 = sub_25312658C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25312658C()
{
  v5 = v0;
  v1 = v0[3];
  v4 = v0[2];

  v1(&v4, 0);
  swift_bridgeObjectRelease_n();
  v2 = v0[1];

  return v2();
}

uint64_t sub_25312661C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v7[5] = v8;
  *v8 = v7;
  v8[1] = sub_253126710;

  return v10(v7 + 2);
}

uint64_t sub_253126710()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_2531268B4;
  }

  else
  {
    v2 = sub_253126824;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_253126824(uint64_t a1, uint64_t a2)
{
  v7 = v2;
  v3 = v2[3];
  v6 = v2[2];
  swift_unknownObjectRetain();
  v3(&v6, 0);
  swift_unknownObjectRelease_n();
  v4 = v2[1];

  return v4();
}

uint64_t sub_2531268B4()
{
  v7 = v0;
  v1 = v0[6];
  v2 = v0[3];
  v6 = 0;
  v3 = v1;
  v2(&v6, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_253126948(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2530CD684;

  return sub_25312661C(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_253126A1C()
{
  result = qword_27F5821D8;
  if (!qword_27F5821D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5821D8);
  }

  return result;
}

uint64_t sub_253126A70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.AnyChanges(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_253126AD4(uint64_t a1)
{
  v4 = *(type metadata accessor for HomesStore.AnyChanges(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2530CD684;

  return sub_253125264(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_253126BFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_253126C64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_253126CAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_253126D40(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581DF8, &qword_2531503B0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2530CD684;

  return sub_253123514(a1, v6, v1 + v5);
}

uint64_t sub_253126E30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2530CD684;

  return sub_253126384(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_253126F04()
{
  result = qword_27F5821F0;
  if (!qword_27F5821F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5821F0);
  }

  return result;
}

uint64_t sub_253126F8C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581DF8, &qword_2531503B0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2530BF218;

  return sub_253122928(a1, v6, v1 + v5);
}

uint64_t objectdestroy_12Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2531270C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2530CD684;

  return sub_25312617C(a1, v4, v5, v6, v7, v9, v8);
}

void sub_2531271A0(uint64_t a1)
{
  sub_25312A810(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

BOOL sub_25312723C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = sub_253149804();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_2531272E4()
{
  v0 = sub_253148A94();
  __swift_allocate_value_buffer(v0, qword_27F5821F8);
  __swift_project_value_buffer(v0, qword_27F5821F8);
  return sub_253148A84();
}

void sub_253127364(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v5 = *(*a1 + 112);
  v6 = sub_2531491F4();
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581608, &qword_25314E3D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  sub_25312AC38(v3 + *(*v3 + 184), &v19 - v10);
  v12 = sub_253148944();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    __break(1u);
  }

  else
  {
    v14 = ModelRelationshipDescriptor.predicate(for:)();
    (*(v13 + 8))(v11, v12);
    v15 = v22;
    v16 = sub_2531317D4(v5, v14, v5, a2);

    if (!v15)
    {
      v23 = v16;
      sub_253148D64();
      swift_getWitnessTable();
      sub_253149034();
      v17 = *(v5 - 8);
      if ((*(v17 + 48))(v8, 1, v5) == 1)
      {
        (*(v19 + 8))(v8, v20);

        sub_2530F5D8C();
        swift_allocError();
        *v18 = 0;
        swift_willThrow();
      }

      else
      {
        (*(v17 + 32))(v21, v8, v5);
      }
    }
  }
}

uint64_t sub_253127668(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581608, &qword_25314E3D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  sub_25312AC38(v2 + *(*v2 + 184), v14 - v6);
  v8 = sub_253148944();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v11 = *(*(v4 + 112) + 16);
    v12 = ModelRelationshipDescriptor.predicate(for:)();
    (*(v9 + 8))(v7, v8);
    v13 = sub_2531317D4(v11, v12, v11, a2);

    return v13;
  }

  return result;
}

void sub_253127808(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15[1] = a3;
  v6 = *a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581608, &qword_25314E3D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v15 - v8;
  sub_25312AC38(v3 + *(*v3 + 184), v15 - v8);
  v10 = sub_253148944();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    __break(1u);
  }

  else
  {
    v12 = *(*(v6 + 112) + 16);
    v13 = ModelRelationshipDescriptor.predicate(for:)();
    (*(v11 + 8))(v9, v10);
    v14 = sub_2531317D4(v12, v13, v12, a2);

    if (!v4)
    {
      v15[3] = v14;
      sub_253148D64();
      swift_getWitnessTable();
      sub_253149034();
    }
  }
}

void sub_2531279FC(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18[0] = a4;
  v7 = *a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581608, &qword_25314E3D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - v9;
  sub_25312AC38(v4 + *(*v4 + 184), v18 - v9);
  v11 = sub_253148944();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    __break(1u);
  }

  else
  {
    v13 = *(v7 + 112);
    v14 = ModelRelationshipDescriptor.predicate(for:)();
    v15 = (*(v12 + 8))(v10, v11);
    v16 = v18[1];
    v17 = sub_25312A2EC(v15, v14, a2, v13, a3);

    if (!v16)
    {
      v18[3] = v17;
      sub_253148D64();
      swift_getWitnessTable();
      sub_253149034();
    }
  }
}

uint64_t sub_253127BEC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581608, &qword_25314E3D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  sub_25312AC38(v3 + *(*v3 + 184), &v17 - v8);
  v10 = sub_253148944();
  v11 = *(v10 - 8);
  result = (*(v11 + 48))(v9, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v13 = *(*(v6 + 112) + 16);
    v14 = ModelRelationshipDescriptor.predicate(for:)();
    v15 = (*(v11 + 8))(v9, v10);
    v16 = sub_25312A2EC(v15, v14, a2, v13, a3);

    return v16;
  }

  return result;
}

void sub_253127D90(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18[0] = a4;
  v7 = *a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581608, &qword_25314E3D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - v9;
  sub_25312AC38(v4 + *(*v4 + 184), v18 - v9);
  v11 = sub_253148944();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    __break(1u);
  }

  else
  {
    v13 = *(*(v7 + 112) + 16);
    v14 = ModelRelationshipDescriptor.predicate(for:)();
    v15 = (*(v12 + 8))(v10, v11);
    v16 = v18[1];
    v17 = sub_25312A2EC(v15, v14, a2, v13, a3);

    if (!v16)
    {
      v18[3] = v17;
      sub_253148D64();
      swift_getWitnessTable();
      sub_253149034();
    }
  }
}

void sub_253127F84(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a4;
  v31 = a2;
  v28 = a5;
  v6 = *a1;
  v34 = a3;
  v7 = sub_2531491F4();
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x28223BE20](v7);
  v29 = &v26 - v8;
  v36 = *(v6 + 112);
  v9 = sub_253148974();
  v30 = sub_2531491F4();
  v10 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581608, &qword_25314E3D0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v26 - v14;
  sub_25312AC38(v5 + *(*v5 + 184), &v26 - v14);
  v16 = sub_253148944();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    __break(1u);
  }

  else
  {
    v18 = ModelRelationshipDescriptor.predicate(for:)();
    (*(v17 + 8))(v15, v16);
    (*(*(v9 - 8) + 56))(v12, 1, 1, v9);
    v19 = v33;
    v20 = v34;
    sub_25312919C(v31, v18, v12, v34, v32);
    if (v19)
    {
      (*(v10 + 8))(v12, v30);
    }

    else
    {
      v22 = v21;
      (*(v10 + 8))(v12, v30);

      v35 = v22;
      sub_253148D64();
      swift_getWitnessTable();
      v23 = v29;
      sub_253149034();
      v24 = *(v20 - 8);
      if ((*(v24 + 48))(v23, 1, v20) == 1)
      {
        (*(v26 + 8))(v23, v27);

        sub_2530F5D8C();
        swift_allocError();
        *v25 = 0;
        swift_willThrow();
      }

      else
      {
        (*(v24 + 32))(v28, v23, v20);
      }
    }
  }
}

uint64_t sub_25312839C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v20 = a2;
  v21 = a3;
  v23 = *(*(*a1 + 112) + 16);
  v5 = sub_253148974();
  v19 = sub_2531491F4();
  v6 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581608, &qword_25314E3D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  sub_25312AC38(v4 + *(*v4 + 184), &v18 - v10);
  v12 = sub_253148944();
  v13 = *(v12 - 8);
  result = (*(v13 + 48))(v11, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v15 = ModelRelationshipDescriptor.predicate(for:)();
    (*(v13 + 8))(v11, v12);
    (*(*(v5 - 8) + 56))(v8, 1, 1, v5);
    sub_25312919C(v20, v15, v8, v21, v22);
    v17 = v16;
    (*(v6 + 8))(v8, v19);

    return v17;
  }

  return result;
}

void sub_253128604(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a4;
  v24 = a3;
  v21 = a2;
  v19[1] = a5;
  v26 = *(*(*a1 + 112) + 16);
  v6 = sub_253148974();
  v20 = sub_2531491F4();
  v7 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v9 = v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581608, &qword_25314E3D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v19 - v11;
  sub_25312AC38(v5 + *(*v5 + 184), v19 - v11);
  v13 = sub_253148944();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    __break(1u);
  }

  else
  {
    v15 = ModelRelationshipDescriptor.predicate(for:)();
    (*(v14 + 8))(v12, v13);
    (*(*(v6 - 8) + 56))(v9, 1, 1, v6);
    v16 = v23;
    sub_25312919C(v21, v15, v9, v24, v22);
    if (v16)
    {
      (*(v7 + 8))(v9, v20);
    }

    else
    {
      v18 = v17;
      (*(v7 + 8))(v9, v20);

      v25 = v18;
      sub_253148D64();
      swift_getWitnessTable();
      sub_253149034();
    }
  }
}

void sub_2531288E4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a5;
  v27 = a4;
  v21 = a6;
  v22 = a3;
  v24 = a2;
  v29 = *(*a1 + 112);
  v7 = sub_253148974();
  v23 = sub_2531491F4();
  v8 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581608, &qword_25314E3D0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  sub_25312AC38(v6 + *(*v6 + 184), &v21 - v12);
  v14 = sub_253148944();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    __break(1u);
  }

  else
  {
    v16 = ModelRelationshipDescriptor.predicate(for:)();
    (*(v15 + 8))(v13, v14);
    v17 = *(v7 - 8);
    (*(v17 + 16))(v10, v22, v7);
    (*(v17 + 56))(v10, 0, 1, v7);
    v18 = v26;
    sub_25312919C(v24, v16, v10, v27, v25);
    if (v18)
    {
      (*(v8 + 8))(v10, v23);
    }

    else
    {
      v20 = v19;
      (*(v8 + 8))(v10, v23);

      v28 = v20;
      sub_253148D64();
      swift_getWitnessTable();
      sub_253149034();
    }
  }
}

uint64_t sub_253128BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v22 = a2;
  v23 = a4;
  v20 = a3;
  v25 = *(*(*a1 + 112) + 16);
  v6 = sub_253148974();
  v21 = sub_2531491F4();
  v7 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581608, &qword_25314E3D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  sub_25312AC38(v5 + *(*v5 + 184), &v20 - v11);
  v13 = sub_253148944();
  v14 = *(v13 - 8);
  result = (*(v14 + 48))(v12, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v16 = ModelRelationshipDescriptor.predicate(for:)();
    (*(v14 + 8))(v12, v13);
    v17 = *(v6 - 8);
    (*(v17 + 16))(v9, v20, v6);
    (*(v17 + 56))(v9, 0, 1, v6);
    sub_25312919C(v22, v16, v9, v23, v24);
    v19 = v18;
    (*(v7 + 8))(v9, v21);

    return v19;
  }

  return result;
}

void sub_253128E8C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a5;
  v27 = a4;
  v21 = a6;
  v22 = a3;
  v24 = a2;
  v29 = *(*(*a1 + 112) + 16);
  v7 = sub_253148974();
  v23 = sub_2531491F4();
  v8 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581608, &qword_25314E3D0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  sub_25312AC38(v6 + *(*v6 + 184), &v21 - v12);
  v14 = sub_253148944();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    __break(1u);
  }

  else
  {
    v16 = ModelRelationshipDescriptor.predicate(for:)();
    (*(v15 + 8))(v13, v14);
    v17 = *(v7 - 8);
    (*(v17 + 16))(v10, v22, v7);
    (*(v17 + 56))(v10, 0, 1, v7);
    v18 = v26;
    sub_25312919C(v24, v16, v10, v27, v25);
    if (v18)
    {
      (*(v8 + 8))(v10, v23);
    }

    else
    {
      v20 = v19;
      (*(v8 + 8))(v10, v23);

      v28 = v20;
      sub_253148D64();
      swift_getWitnessTable();
      sub_253149034();
    }
  }
}

void sub_25312919C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v139 = a3;
  v127 = a2;
  v135 = *v5;
  v9 = v135;
  v122 = *(a4 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v132 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v134 = &v119 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581608, &qword_25314E3D0);
  MEMORY[0x28223BE20](v13 - 8);
  v133 = &v119 - v14;
  v140 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v137 = *(AssociatedTypeWitness - 8);
  v121 = *(v137 + 64);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v142 = &v119 - v17;
  v138 = v16;
  v147 = v16;
  v18 = sub_253148974();
  v19 = sub_2531491F4();
  v128 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v126 = (&v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v119 - v23;
  v25 = *(v18 - 8);
  v26 = MEMORY[0x28223BE20](v22);
  v124 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v125 = &v119 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v123 = &v119 - v31;
  MEMORY[0x28223BE20](v30);
  v130 = &v119 - v32;
  v33 = *(v9 + 192);
  swift_beginAccess();
  v141 = v5;
  if (sub_25312723C(a1, *(v5 + v33)))
  {
    sub_25312ACF4();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v136 = a4;
  swift_beginAccess();
  v131 = v33;
  sub_2530D6200(&v146, a1);
  swift_endAccess();
  v34 = v128;
  v35 = *(v128 + 16);
  v35(v24, v139, v19);
  v36 = *(v25 + 48);
  v37 = v36(v24, 1, v18);
  v120 = v25;
  if (v37 == 1)
  {
    (*(v34 + 8))(v24, v19);
    v38 = v138;
  }

  else
  {
    (*(v25 + 32))(v130, v24, v18);
    v39 = v25;
    v38 = v138;
    v40 = v127;
    if (v127)
    {
      v41 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5813C8, &qword_25314DA00);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_25314EC30;
      *(v42 + 32) = v40;
      v43 = v123;
      v44 = v130;
      (*(v41 + 16))(v123, v130, v18);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v46 = v40;
      v47 = v129;
      sub_2530FD73C(v43, v38, AssociatedConformanceWitness);
      if (v47)
      {

        *(v42 + 16) = 0;

        v79 = 0;
        v119 = v18;
        if (qword_27F580318 != -1)
        {
          swift_once();
        }

        v80 = sub_253148A94();
        __swift_project_value_buffer(v80, qword_27F5821F8);
        v81 = v47;
        v82 = sub_253148A74();
        v83 = sub_253149094();

        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          v139 = 0;
          v85 = AssociatedConformanceWitness;
          v86 = v44;
          v87 = v46;
          v88 = v84;
          v89 = swift_slowAlloc();
          *v88 = 138412290;
          v90 = v47;
          v91 = _swift_stdlib_bridgeErrorToNSError();
          *(v88 + 4) = v91;
          *v89 = v91;
          _os_log_impl(&dword_2530B8000, v82, v83, "Failed to fetch models with error: %@, filtering in-memory instead.", v88, 0xCu);
          sub_2530CD33C(v89, &qword_27F581E10, &qword_25314F640);
          MEMORY[0x259BFDC60](v89, -1, -1);
          v92 = v88;
          v46 = v87;
          v44 = v86;
          AssociatedConformanceWitness = v85;
          v79 = v139;
          MEMORY[0x259BFDC60](v92, -1, -1);
        }

        v93 = sub_2531317D4(v38, v46, v38, AssociatedConformanceWitness);
        if (v79)
        {
          (*(v120 + 8))(v44, v119);

          return;
        }

        v143[0] = v93;
        sub_253148D64();
        swift_getWitnessTable();
        v55 = sub_253148C04();

        (*(v120 + 8))(v44, v119);
        v50 = v140;
      }

      else
      {
        *(v42 + 40) = v48;
        sub_25312ACA8();
        v77 = sub_253148C84();

        v78 = [objc_opt_self() andPredicateWithSubpredicates_];

        v95 = sub_2531317D4(v38, v78, v38, AssociatedConformanceWitness);
        (*(v120 + 8))(v44, v18);
        v50 = v140;
        v55 = v95;
      }

      goto LABEL_32;
    }

    (*(v39 + 8))(v130, v18);
  }

  v49 = v126;
  v35(v126, v139, v19);
  if (v36(v49, 1, v18) != 1)
  {
    v56 = v120;
    v57 = v125;
    (*(v120 + 32))(v125, v49, v18);
    v58 = *(v56 + 16);
    v59 = v124;
    v119 = v18;
    v58(v124, v57, v18);
    v50 = v140;
    v60 = swift_getAssociatedConformanceWitness();
    v61 = v129;
    sub_2530FD73C(v59, v38, v60);
    if (v61)
    {
      if (qword_27F580318 != -1)
      {
        swift_once();
      }

      v67 = sub_253148A94();
      __swift_project_value_buffer(v67, qword_27F5821F8);
      v68 = v61;
      v69 = sub_253148A74();
      v70 = sub_253149094();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        *v71 = 138412290;
        v73 = v61;
        v74 = _swift_stdlib_bridgeErrorToNSError();
        *(v71 + 4) = v74;
        *v72 = v74;
        _os_log_impl(&dword_2530B8000, v69, v70, "Failed to fetch models with error: %@, filtering in-memory instead.", v71, 0xCu);
        sub_2530CD33C(v72, &qword_27F581E10, &qword_25314F640);
        v75 = v72;
        v50 = v140;
        MEMORY[0x259BFDC60](v75, -1, -1);
        v76 = v71;
        v57 = v125;
        MEMORY[0x259BFDC60](v76, -1, -1);
      }

      v143[0] = sub_253131590(v38, v38, v60);
      sub_253148D64();
      swift_getWitnessTable();
      v55 = sub_253148C04();

      (*(v120 + 8))(v57, v119);
    }

    else
    {
      v66 = v62;
      v94 = sub_2531317D4(v38, v62, v38, v60);
      (*(v120 + 8))(v57, v119);

      v55 = v94;
    }

    goto LABEL_32;
  }

  (*(v34 + 8))(v49, v19);
  v50 = v140;
  v51 = v127;
  if (v127)
  {
    v52 = swift_getAssociatedConformanceWitness();
    v53 = v51;
    v54 = v129;
    v55 = sub_2531317D4(v38, v53, v38, v52);

    if (!v54)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v63 = swift_getAssociatedConformanceWitness();
    v64 = v129;
    v65 = sub_253131590(v38, v38, v63);
    if (!v64)
    {
      v55 = v65;
LABEL_32:
      v146 = sub_253148AA4();
      if (!sub_253148D44())
      {
LABEL_43:

        return;
      }

      v96 = 0;
      v130 = (v137 + 16);
      v128 = v137 + 8;
      v127 = (v50 + 24);
      v126 = (v122 + 16);
      v125 = (v122 + 8);
      v129 = v55;
      while (1)
      {
        v97 = sub_253148CF4();
        sub_253148CC4();
        if (v97)
        {
          (*(v137 + 16))(v142, v55 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + *(v137 + 72) * v96, v38);
          v98 = v96 + 1;
          if (__OFADD__(v96, 1))
          {
            goto LABEL_42;
          }
        }

        else
        {
          v118 = sub_2531493F4();
          if (v121 != 8)
          {
            __break(1u);
            return;
          }

          v143[0] = v118;
          (*v130)(v142, v143, v38);
          swift_unknownObjectRelease();
          v98 = v96 + 1;
          if (__OFADD__(v96, 1))
          {
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }
        }

        v138 = v98;
        v99 = *(v135 + 152);
        v100 = *(v135 + 168);
        v101 = swift_getAssociatedConformanceWitness();
        v143[0] = v99;
        v143[1] = v38;
        v143[2] = v100;
        v144 = v101;
        v102 = _s15ComposableProxyCMa(0, v143);
        v103 = *(*v141 + 112);
        v104 = v38;
        v105 = v141;
        v106 = *(*v141 + 104);
        v107 = *(v141 + v131);

        v139 = 0;
        v108 = v133;
        v109 = v142;
        sub_2531493D4();
        (*v128)(v109, v104);
        v110 = sub_253148944();
        (*(*(v110 - 8) + 56))(v108, 0, 1, v110);
        v111 = v105 + v106;
        v112 = v136;
        v113 = sub_25312ABB8(v105 + v103, v111, v107, v108);
        v144 = v102;
        v114 = v140;
        WitnessTable = swift_getWitnessTable();
        v143[0] = v113;
        v115 = *(v114 + 24);

        v116 = v134;
        v117 = v139;
        v115(v143, v112, v114);
        if (v117)
        {

          return;
        }

        (*v126)(v132, v116, v112);
        sub_253148D64();
        sub_253148D34();

        (*v125)(v116, v112);
        v55 = v129;
        ++v96;
        v38 = v104;
        if (v138 == sub_253148D44())
        {
          goto LABEL_43;
        }
      }
    }
  }
}

uint64_t sub_25312A2EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35[5] = a4;
  v10 = sub_253148974();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v35 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5813C8, &qword_25314DA00);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_25314EC30;
  *(v14 + 32) = a2;
  v15 = *(v11 + 16);
  v35[1] = a3;
  v15(v13, a3, v10);
  v16 = a5;
  v17 = a2;
  sub_2530FD73C(v13, a4, v16);
  if (v5)
  {

    *(v14 + 16) = 0;

    if (qword_27F580318 != -1)
    {
      swift_once();
    }

    v21 = sub_253148A94();
    __swift_project_value_buffer(v21, qword_27F5821F8);
    v22 = v5;
    v23 = sub_253148A74();
    v24 = sub_253149094();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = v16;
      v26 = swift_slowAlloc();
      v27 = v17;
      v28 = swift_slowAlloc();
      *v26 = 138412290;
      v29 = v5;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&dword_2530B8000, v23, v24, "Failed to fetch models with error: %@, filtering in-memory instead.", v26, 0xCu);
      sub_2530CD33C(v28, &qword_27F581E10, &qword_25314F640);
      v31 = v28;
      v17 = v27;
      MEMORY[0x259BFDC60](v31, -1, -1);
      v32 = v26;
      v16 = v25;
      MEMORY[0x259BFDC60](v32, -1, -1);
    }

    v35[3] = sub_2531317D4(a4, v17, a4, v16);
    sub_253148D64();
    swift_getWitnessTable();
    v34 = sub_253148C04();
  }

  else
  {
    *(v14 + 40) = v18;
    sub_25312ACA8();
    v19 = sub_253148C84();

    v20 = [objc_opt_self() andPredicateWithSubpredicates_];

    v34 = sub_2531317D4(a4, v20, a4, v16);
  }

  return v34;
}

uint64_t sub_25312A6CC()
{
  sub_2530CD33C(v0 + *(*v0 + 184), &qword_27F581608, &qword_25314E3D0);
}

uint64_t sub_25312A734()
{
  v0 = sub_25313142C();
  sub_2530CD33C(v0 + *(*v0 + 184), &qword_27F581608, &qword_25314E3D0);

  return v0;
}

uint64_t sub_25312A7A4()
{
  sub_25312A734();

  return swift_deallocClassInstance();
}

void sub_25312A810(uint64_t a1)
{
  if (!qword_27F582290)
  {
    sub_253148944();
    v1 = sub_2531491F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F582290);
    }
  }
}

uint64_t sub_25312AA68(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  sub_253149814();
  sub_253148BB4();
  v2 = sub_253149844() & ~(-1 << *(a1 + 32));
  return (*(a1 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v2) & 1;
}

char *sub_25312AB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25312AC38(a4, v4 + *(*v4 + 184));
  *(v4 + *(*v4 + 192)) = a3;
  sub_2530C25FC(a2, v11);
  v9 = sub_25313266C(a1, v11);
  sub_2530CD33C(a4, &qword_27F581608, &qword_25314E3D0);
  return v9;
}

char *sub_25312ABB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 168);
  v11[0] = *(v4 + 152);
  v11[1] = v9;
  _s15ComposableProxyCMa(0, v11);
  swift_allocObject();
  return sub_25312AB04(a1, a2, a3, a4);
}

uint64_t sub_25312AC38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581608, &qword_25314E3D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25312ACA8()
{
  result = qword_27F581968;
  if (!qword_27F581968)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F581968);
  }

  return result;
}

unint64_t sub_25312ACF4()
{
  result = qword_27F582298;
  if (!qword_27F582298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582298);
  }

  return result;
}

uint64_t sub_25312ADA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_2530BDB14(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_25312F6CC(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_2530CD33C(a1, &qword_27F580DD0, &qword_25314D448);
    v7 = sub_25311D9C4(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_25312B704();
        v11 = v13;
      }

      sub_2530BDB14((*(v11 + 56) + 40 * v9), v14);
      sub_25312EB78(v9, v11);
      *v3 = v11;
    }

    else
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
    }

    return sub_2530CD33C(v14, &qword_27F580DD0, &qword_25314D448);
  }

  return result;
}

uint64_t sub_25312AEB4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_2530BDB14(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_25312F7FC(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = sub_253148944();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_2530CD33C(a1, &qword_27F5806E0, &qword_25314D900);
    sub_25312E748(a2, v9);
    v7 = sub_253148944();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_2530CD33C(v9, &qword_27F5806E0, &qword_25314D900);
  }

  return result;
}

void sub_25312AFD0(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5818C8, &unk_25314E9F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_2530CD33C(a1, &qword_27F5818C8, &unk_25314E9F0);
    sub_25312E980(a2, v7);

    sub_2530CD33C(v7, &qword_27F5818C8, &unk_25314E9F0);
  }

  else
  {
    sub_253131220(a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_253130208(v10, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v14;
  }
}

double sub_25312B174@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_253148944();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2531493D4();
  if (*(a2 + 16) && (v10 = sub_25311D834(v9), (v11 & 1) != 0))
  {
    sub_2530C25FC(*(a2 + 56) + 40 * v10, a3);
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    (*(v7 + 8))(v9, v6);
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_25312B2C0(uint64_t a1, uint64_t a2)
{
  v23 = sub_253148944();
  MEMORY[0x28223BE20](v23);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  v12 = (v4 + 8);
  v24 = a1;

  v14 = 0;
  if (v10)
  {
    while (1)
    {
      v15 = v14;
LABEL_8:
      sub_2530C25FC(*(v24 + 56) + 40 * (__clz(__rbit64(v10)) | (v15 << 6)), v33);
      sub_2530BDB14(v33, v30);
      __swift_project_boxed_opaque_existential_1(v30, v31);
      sub_2531493D4();
      if (!*(a2 + 16) || (v16 = sub_25311D834(v6), (v17 & 1) == 0))
      {

        (*v12)(v6, v23);
        goto LABEL_16;
      }

      sub_2530C25FC(*(a2 + 56) + 40 * v16, v26);
      (*v12)(v6, v23);
      sub_2530BDB14(v26, v27);
      v18 = v31;
      v19 = v32;
      __swift_project_boxed_opaque_existential_1(v30, v31);
      sub_253133AC0(v18, v19);
      v20 = LOBYTE(v26[0]);
      v21 = v28;
      v22 = v29;
      __swift_project_boxed_opaque_existential_1(v27, v28);
      sub_2530D2104(v21, v22);
      if (v20 != v25)
      {
        break;
      }

      v10 &= v10 - 1;
      __swift_destroy_boxed_opaque_existential_0(v27);
      result = __swift_destroy_boxed_opaque_existential_0(v30);
      v14 = v15;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v27);
LABEL_16:
    __swift_destroy_boxed_opaque_existential_0(v30);
    return 0;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v11)
      {

        return 1;
      }

      v10 = *(v7 + 8 * v15);
      ++v14;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25312B58C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253148944();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2531493D4();
  v12[3] = a2;
  v12[4] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, a1, a2);
  return sub_25312AEB4(v12, v8);
}

uint64_t sub_25312B678(uint64_t a1)
{
  v3 = *v1;

  v4 = sub_253130FA8(v3, a1);

  *v1 = v4;
  return result;
}

void *sub_25312B704()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5822C8, &qword_253151138);
  v2 = *v0;
  v3 = sub_2531495B4();
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
        v18 = *(*(v2 + 48) + v17);
        sub_2530C25FC(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_2530BDB14(v19, *(v4 + 56) + 40 * v17);
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

void *sub_25312B8AC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(_BYTE *, unint64_t))
{
  v35 = a3;
  v6 = v3;
  v34 = sub_253148944();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *v3;
  v9 = sub_2531495B4();
  v10 = v9;
  if (*(v8 + 16))
  {
    v32[0] = v6;
    result = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v8 + 64 + 8 * v13)
    {
      result = memmove(result, (v8 + 64), 8 * v13);
    }

    v15 = 0;
    v16 = *(v8 + 16);
    v36 = v10;
    *(v10 + 16) = v16;
    v17 = 1 << *(v8 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v8 + 64);
    v20 = (v17 + 63) >> 6;
    v32[1] = v37 + 32;
    v32[2] = v37 + 16;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = v37;
        v26 = *(v37 + 72) * v24;
        v27 = v33;
        v28 = v34;
        (*(v37 + 16))(v33, *(v8 + 48) + v26, v34);
        v24 *= 40;
        sub_2530C25FC(*(v8 + 56) + v24, v39);
        v29 = v8;
        v30 = v36;
        (*(v25 + 32))(*(v36 + 48) + v26, v27, v28);
        v31 = *(v30 + 56);
        v8 = v29;
        result = v35(v39, v31 + v24);
        v19 = v38;
      }

      while (v38);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v32[0];
        v10 = v36;
        goto LABEL_21;
      }

      v23 = *(v12 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v38 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }

  return result;
}

char *sub_25312BB44()
{
  v1 = v0;
  v39 = sub_253148534();
  v41 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5819A8, &qword_25314F198);
  v3 = *v0;
  v4 = sub_2531495B4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v40 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = v40;
    v34 = v41 + 32;
    v35 = v41 + 16;
    v36 = v14;
    v37 = v3;
    v16 = v41;
    if (v13)
    {
      do
      {
        v17 = __clz(__rbit64(v13));
        v42 = (v13 - 1) & v13;
LABEL_14:
        v20 = v17 | (v9 << 6);
        v21 = *(v16 + 72) * v20;
        v23 = v38;
        v22 = v39;
        (*(v16 + 16))(v38, *(v3 + 48) + v21, v39);
        v20 *= 24;
        v24 = *(v3 + 56) + v20;
        v26 = *v24;
        v25 = *(v24 + 8);
        v27 = *(v24 + 16);
        (*(v16 + 32))(*(v15 + 48) + v21, v23, v22);
        v28 = (*(v15 + 56) + v20);
        *v28 = v26;
        v28[1] = v25;
        v28[2] = v27;
        v29 = v27;
        v30 = v26;
        result = v25;
        v14 = v36;
        v3 = v37;
        v13 = v42;
      }

      while (v42);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v32;
        v5 = v40;
        goto LABEL_18;
      }

      v19 = *(v33 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v42 = (v19 - 1) & v19;
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

id sub_25312BDDC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5822A0, &qword_253151110);
  v2 = *v0;
  v3 = sub_2531495B4();
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

void *sub_25312BF48()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5822A8, &qword_253151118);
  v2 = *v0;
  v3 = sub_2531495B4();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_25312C0C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5822C0, &qword_253151130);
  v2 = *v0;
  v3 = sub_2531495B4();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v21 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 16 * v17) = v21;
        v19 = v18;
        v20 = v21;
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

id sub_25312C244()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5822B8, &qword_253151128);
  v2 = *v0;
  v3 = sub_2531495B4();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

id sub_25312C3A4()
{
  v1 = v0;
  v2 = type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete(0);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5822D0, &qword_253151140);
  v5 = *v0;
  v6 = sub_2531495B4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v24 + 72) * v20;
        sub_2530FBB74(*(v5 + 56) + v22, v4);
        *(*(v7 + 48) + 8 * v20) = v21;
        sub_253131220(v4, *(v7 + 56) + v22);
        result = v21;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
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

void *sub_25312C5B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581A08, &qword_25314F1F8);
  v2 = *v0;
  v3 = sub_2531495B4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_2530C0304(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_2530C02F4(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_25312C758()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5822B0, &qword_253151120);
  v2 = *v0;
  v3 = sub_2531495B4();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_2530CAA1C(v22, *(&v22 + 1));
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

uint64_t sub_25312C904(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5822C8, &qword_253151138);
  result = sub_2531495C4();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = (*(v5 + 56) + 40 * v19);
      if (v4)
      {
        sub_2530BDB14(v21, v30);
      }

      else
      {
        sub_2530C25FC(v21, v30);
      }

      sub_253149814();
      MEMORY[0x259BFD420](v20);
      result = sub_253149844();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      result = sub_2530BDB14(v30, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_25312CBCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(unint64_t, _BYTE *))
{
  v46 = a5;
  v8 = v5;
  v9 = a2;
  v10 = sub_253148944();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v44 = v9;
  result = sub_2531495C4();
  v16 = result;
  if (*(v14 + 16))
  {
    v48 = v13;
    v49 = v10;
    v40 = v5;
    v17 = 0;
    v18 = (v14 + 64);
    v19 = 1 << *(v14 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v14 + 64);
    v22 = (v19 + 63) >> 6;
    v41 = (v11 + 16);
    v42 = v11;
    v45 = (v11 + 32);
    v23 = result + 64;
    v43 = v14;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_15:
      v28 = v25 | (v17 << 6);
      v29 = *(v14 + 48);
      v47 = *(v11 + 72);
      v30 = v29 + v47 * v28;
      if (v44)
      {
        (*v45)(v48, v30, v49);
        v46(*(v14 + 56) + 40 * v28, v50);
      }

      else
      {
        (*v41)(v48, v30, v49);
        sub_2530C25FC(*(v14 + 56) + 40 * v28, v50);
      }

      sub_2531311D8(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_253148B04();
      v31 = -1 << *(v16 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v23 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v11 = v42;
        v14 = v43;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v23 + 8 * v33);
          if (v37 != -1)
          {
            v24 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v32) & ~*(v23 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v11 = v42;
      v14 = v43;
LABEL_7:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v45)((*(v16 + 48) + v47 * v24), v48, v49);
      result = (v46)(v50, *(v16 + 56) + 40 * v24);
      ++*(v16 + 16);
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v8 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v14 + 32);
    v8 = v40;
    if (v38 >= 64)
    {
      bzero(v18, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v38;
    }

    *(v14 + 16) = 0;
  }

LABEL_34:
  *v8 = v16;
  return result;
}

uint64_t sub_25312CFC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_253148534();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5819A8, &qword_25314F198);
  v50 = v4;
  result = sub_2531495C4();
  v11 = result;
  if (*(v9 + 16))
  {
    v56 = v8;
    v46 = v2;
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
    v47 = (v6 + 16);
    v48 = v9;
    v49 = v6;
    v51 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v23 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v26 = v23 | (v12 << 6);
      v27 = *(v9 + 48);
      v55 = *(v49 + 72);
      v28 = v27 + v55 * v26;
      if (v50)
      {
        (*v51)(v56, v28, v5);
        v29 = (*(v9 + 56) + 24 * v26);
        v30 = *v29;
        v54 = v29[1];
        v31 = v29[2];
        v52 = v30;
        v53 = v31;
      }

      else
      {
        (*v47)(v56, v28, v5);
        v32 = *(v9 + 56) + 24 * v26;
        v33 = *v32;
        v34 = *(v32 + 8);
        v53 = *(v32 + 16);
        v35 = v53;
        v52 = v33;
        v54 = v34;
        v36 = v34;
      }

      sub_2531311D8(&qword_27F581F20, MEMORY[0x277CC8ED0], MEMORY[0x277CC8ED8]);
      result = sub_253148B04();
      v37 = -1 << *(v11 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v18 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v18 + 8 * v39);
          if (v43 != -1)
          {
            v19 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v38) & ~*(v18 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v51)(*(v11 + 48) + v55 * v19, v56, v5);
      v20 = (*(v11 + 56) + 24 * v19);
      v21 = v53;
      v22 = v54;
      *v20 = v52;
      v20[1] = v22;
      v20[2] = v21;
      ++*(v11 + 16);
      v9 = v48;
    }

    v24 = v12;
    while (1)
    {
      v12 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v25 = v13[v12];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v16 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v50 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_34;
    }

    v44 = 1 << *(v9 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v13, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v44;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_25312D3E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5822A0, &qword_253151110);
  v35 = v4;
  result = sub_2531495C4();
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

      sub_253149814();
      sub_253148BB4();
      result = sub_253149844();
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

uint64_t sub_25312D684(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5822A8, &qword_253151118);
  v37 = v4;
  result = sub_2531495C4();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_253149814();
      sub_253148BB4();
      result = sub_253149844();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25312D944(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5822C0, &qword_253151130);
  result = sub_2531495C4();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v32 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
        v21 = v20;
        v22 = v32;
      }

      result = sub_253149184();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v32;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_25312DBC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5822B8, &qword_253151128);
  result = sub_2531495C4();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_253149184();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_25312DE2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete(0);
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5822D0, &qword_253151140);
  v38 = v4;
  result = sub_2531495C4();
  v10 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v37 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v38)
      {
        sub_253131220(v25, v7);
      }

      else
      {
        sub_2530FBB74(v25, v7);
        v26 = v23;
      }

      result = sub_253149184();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      result = sub_253131220(v7, *(v10 + 56) + v24 * v18);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero((v8 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_25312E138(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581A08, &qword_25314F1F8);
  v33 = v4;
  result = sub_2531495C4();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_2530C02F4(v24, v34);
      }

      else
      {
        sub_2530C0304(v24, v34);
      }

      sub_253149814();
      sub_253148BB4();
      result = sub_253149844();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_2530C02F4(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_25312E3F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5822B0, &qword_253151120);
  v33 = v4;
  result = sub_2531495C4();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        sub_2530CAA1C(v34, *(&v34 + 1));
      }

      sub_253149814();
      sub_253148BB4();
      result = sub_253149844();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t *sub_25312E6AC(unint64_t *result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_253130B94(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

double sub_25312E748@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_25311D834(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25312B8AC(&qword_27F580728, &qword_25314C488, sub_2530BDB14);
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_253148944();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_2530BDB14((*(v9 + 56) + 40 * v7), a2);
    sub_25312ED18(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void sub_25312E850(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_25311DB04(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v10 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25312C0C0();
      v9 = v10;
    }

    *a2 = *(*(v9 + 56) + 16 * v7);
    sub_25312F03C(v7, v9);
    *v3 = v9;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }
}

void sub_25312E8E8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = sub_25311DB04(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v10 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25312C244();
      v9 = v10;
    }

    *a2 = *(*(v9 + 56) + 8 * v7);
    sub_25312F1C8(v7, v9);
    *v3 = v9;
  }

  else
  {
    *a2 = 0;
  }
}

uint64_t sub_25312E980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_25311DB04(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25312C3A4();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete(0);
    v18 = *(v11 - 8);
    sub_253131220(v10 + *(v18 + 72) * v7, a2);
    sub_25312F354(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete(0);
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

double sub_25312EAD4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_25311D908(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25312C5B4();
      v10 = v12;
    }

    sub_2530C02F4((*(v10 + 56) + 32 * v8), a3);
    sub_25312F51C(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_25312EB78(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_253149274() + 1) & ~v5;
    do
    {
      v11 = *(*(a2 + 48) + v6);
      sub_253149814();
      MEMORY[0x259BFD420](v11);
      result = sub_253149844();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + v3);
        v15 = (v13 + v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_25312ED18(int64_t a1, uint64_t a2)
{
  v42 = sub_253148944();
  v4 = *(v42 - 8);
  result = MEMORY[0x28223BE20](v42);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v43 = v6;
    v12 = sub_253149274();
    v13 = v42;
    v6 = v43;
    v14 = v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v39 = (v12 + 1) & v11;
    v40 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    v38 = a2 + 64;
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v41;
      v21 = v14;
      v22 = v15;
      v40(v41, *(v6 + 48) + v17 * v10, v13);
      sub_2531311D8(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_253148B04();
      result = (*v37)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v39)
      {
        if (v24 >= v39 && a1 >= v24)
        {
LABEL_15:
          v6 = v43;
          v27 = *(v43 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v43;
            v17 = v18;
            v14 = v21;
            v8 = v38;
          }

          else
          {
            v8 = v38;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v43;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = v28 + 40 * a1;
          v30 = (v28 + 40 * v10);
          if (a1 != v10 || v29 >= v30 + 40)
          {
            v31 = *v30;
            v32 = v30[1];
            *(v29 + 32) = *(v30 + 4);
            *v29 = v31;
            *(v29 + 16) = v32;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v39 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v38;
      v17 = v18;
      v6 = v43;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(v6 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v35;
    ++*(v6 + 36);
  }

  return result;
}

void sub_25312F03C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_253149274() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_253149184();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 16 * v3);
          v19 = (v17 + 16 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

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
}

void sub_25312F1C8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_253149274() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_253149184();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

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
}

void sub_25312F354(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_253149274() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_253149184();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = *(a2 + 48);
      v15 = (v14 + 8 * v3);
      v16 = (v14 + 8 * v6);
      if (v3 != v6 || v15 >= v16 + 1)
      {
        *v15 = *v16;
      }

      v17 = *(a2 + 56);
      v18 = *(*(type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete(0) - 8) + 72);
      v19 = v18 * v3;
      v20 = v17 + v18 * v3;
      v21 = v18 * v6;
      v22 = v17 + v18 * v6 + v18;
      if (v19 < v21 || v20 >= v22)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v21)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }
}

uint64_t sub_25312F51C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_253149274() + 1) & ~v5;
    do
    {
      sub_253149814();

      sub_253148BB4();
      v10 = sub_253149844();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25312F6CC(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_25311D9C4(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_25312B704();
      v9 = v17;
      goto LABEL_8;
    }

    sub_25312C904(v14, a3 & 1);
    v9 = sub_25311D9C4(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_253149784();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 40 * v9);
    __swift_destroy_boxed_opaque_existential_0(v20);

    return sub_2530BDB14(a1, v20);
  }

  else
  {

    return sub_2531304AC(v9, a2, a1, v19);
  }
}

uint64_t sub_25312F7FC(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_253148944();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_25311D834(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_25312B8AC(&qword_27F580728, &qword_25314C488, sub_2530BDB14);
      goto LABEL_7;
    }

    sub_25312CBCC(v17, a3 & 1, &qword_27F580728, &qword_25314C488, sub_2530BDB14);
    v23 = sub_25311D834(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_253130518(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_253149784();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 40 * v14);
  __swift_destroy_boxed_opaque_existential_0(v21);

  return sub_2530BDB14(a1, v21);
}

void sub_25312FA20(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v30 = a1;
  v31 = a2;
  v10 = sub_253148534();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = sub_25311DA30(a4);
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
  if (v21 < v19 || (a5 & 1) == 0)
  {
    if (v21 >= v19 && (a5 & 1) == 0)
    {
      sub_25312BB44();
      goto LABEL_9;
    }

    sub_25312CFC8(v19, a5 & 1);
    v22 = sub_25311DA30(a4);
    if ((v20 & 1) == (v23 & 1))
    {
      v16 = v22;
      goto LABEL_9;
    }

LABEL_15:
    sub_253149784();
    __break(1u);
    return;
  }

LABEL_9:
  v24 = v31;
  v25 = *v6;
  if (v20)
  {
    v26 = v25[7] + 24 * v16;
    v27 = *v26;
    v28 = *(v26 + 8);
    v31 = *(v26 + 16);
    *v26 = v30;
    *(v26 + 8) = v24;
    *(v26 + 16) = a3;

    v29 = v31;
  }

  else
  {
    (*(v11 + 16))(v13, a4, v10);
    sub_2531305DC(v16, v13, v30, v24, a3, v25);
  }
}

void sub_25312FC20(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25311D908(a2, a3);
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
      sub_25312D3E0(v16, a4 & 1);
      v11 = sub_25311D908(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_253149784();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_25312BDDC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

uint64_t sub_25312FD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_25311D908(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_25312D684(v18, a5 & 1);
      v13 = sub_25311D908(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_253149784();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_25312BF48();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

void sub_25312FF20(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_25311DB04(a3);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 < v15 || (a4 & 1) != 0)
    {
      sub_25312D944(v15, a4 & 1);
      v10 = sub_25311DB04(a3);
      if ((v16 & 1) != (v19 & 1))
      {
LABEL_18:
        sub_25311E418();
        sub_253149784();
        __break(1u);
_objc_retain_x1:
        MEMORY[0x2821F9840]();
        return;
      }
    }

    else
    {
      v18 = v10;
      sub_25312C0C0();
      v10 = v18;
    }
  }

  v20 = *v5;
  if ((v16 & 1) == 0)
  {
    v20[(v10 >> 6) + 8] |= 1 << v10;
    *(v20[6] + 8 * v10) = a3;
    v22 = (v20[7] + 16 * v10);
    *v22 = a1;
    v22[1] = a2;
    v23 = v20[2];
    v14 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v14)
    {
      v20[2] = v24;

      goto _objc_retain_x1;
    }

    goto LABEL_17;
  }

  v21 = v20[7] + 16 * v10;
  v26 = *v21;
  *v21 = a1;
  *(v21 + 8) = a2;
}

void sub_2531300A0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_25311DB04(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_25312DBC4(v13, a3 & 1);
      v8 = sub_25311DB04(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_25311E418();
        sub_253149784();
        __break(1u);
_objc_retain_x1:
        MEMORY[0x2821F9840]();
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_25312C244();
      v8 = v16;
    }
  }

  v18 = *v4;
  if ((v14 & 1) == 0)
  {
    v18[(v8 >> 6) + 8] |= 1 << v8;
    *(v18[6] + 8 * v8) = a2;
    *(v18[7] + 8 * v8) = a1;
    v21 = v18[2];
    v12 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v12)
    {
      v18[2] = v22;

      goto _objc_retain_x1;
    }

    goto LABEL_17;
  }

  v19 = v18[7];
  v20 = *(v19 + 8 * v8);
  *(v19 + 8 * v8) = a1;
}

id sub_253130208(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = sub_25311DB04(a2);
  v10 = v7[2];
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8;
  v14 = v7[3];
  if (v14 < v12 || (a3 & 1) == 0)
  {
    if (v14 >= v12 && (a3 & 1) == 0)
    {
      sub_25312C3A4();
      goto LABEL_7;
    }

    sub_25312DE2C(v12, a3 & 1);
    v19 = sub_25311DB04(a2);
    if ((v13 & 1) == (v20 & 1))
    {
      v9 = v19;
      v15 = *v4;
      if (v13)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_25311E418();
    result = sub_253149784();
    __break(1u);
    return result;
  }

LABEL_7:
  v15 = *v4;
  if (v13)
  {
LABEL_8:
    v16 = v15[7];
    v17 = v16 + *(*(type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete(0) - 8) + 72) * v9;

    return sub_253131284(a1, v17);
  }

LABEL_13:
  sub_2531306B0(v9, a2, a1, v15);

  return a2;
}

_OWORD *sub_25313035C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25311D908(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_25312C5B4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_25312E138(v16, a4 & 1);
    v11 = sub_25311D908(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_253149784();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_2530C02F4(a1, v22);
  }

  else
  {
    sub_253130744(v11, a2, a3, a1, v21);
  }
}